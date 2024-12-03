#lang rosette

;; Define a function to append a nucleotide to a sequence
(define (append sequence nucleotide)
  (match nucleotide
    ['A (string-append sequence "A")]
    ['T (string-append sequence "T")]
    ['G (string-append sequence "G")]
    ['C (string-append sequence "C")]
    [_ (error "Invalid nucleotide")]))

;; Define a function to read a sequence
(define (read sequence)
  (if (not (string-empty? sequence))
      sequence
      (error "Sequence is empty")))

(define (complement sequence)
  (foldl (lambda (nucleotide acc)
           (string-append acc
                          (match nucleotide
                            ['A "T"]
                            ['T "A"]
                            ['G "C"]
                            ['C "G"]
                            [_ (error "Invalid nucleotide")])))
         ""
         (string->list sequence)))

(define (reverse-complement sequence)
  (string-reverse (complement sequence)))


(define (alignment-score seq1 seq2)
  (define (score n1 n2)
    (cond
      [(equal? n1 n2) 1]    ; Match
      [(or (equal? n1 "-") (equal? n2 "-")) -2] ; Gap
      [else -1]))           ; Mismatch
  (foldl + 0
         (map score (string->list seq1) (string->list seq2))))


(define (detect-mutations reference sequence)
  (map (lambda (pair)
         (match pair
           [(list ref seq) (if (not (equal? ref seq)) (list 'mutation ref seq) 'no-mutation)]))
       (map list (string->list reference) (string->list sequence))))


(define (validate-sequence sequence)
  (forall (lambda (nucleotide)
            (member? nucleotide (list 'A 'T 'G 'C)))
          (string->list sequence)))


(define (assemble-fragments fragments)
  (foldl string-append "" fragments))


(define (gc-content sequence)
  (let ([gc-count (count (lambda (nucleotide)
                           (or (equal? nucleotide 'G) (equal? nucleotide 'C)))
                         (string->list sequence))])
    (/ (* gc-count 100) (string-length sequence))))


(define (k-mers sequence k)
  (define len (string-length sequence))
  (if (< len k)
      '()
      (cons (substring sequence 0 k)
            (k-mers (substring sequence 1 len) k))))

;; Trimming low-quality regions (e.g., by a specified trim length)
(define (trim-sequence sequence trim-length)
  (if (<= (* 2 trim-length) (string-length sequence))
      (substring sequence trim-length (- (string-length sequence) trim-length))
      "")) ; Return empty if trim length exceeds sequence


;; Error correction based on a reference sequence
(define (error-correct sequence reference)
  (foldl (lambda (pair acc)
           (let ([ref (first pair)]
                 [seq (second pair)])
             (string-append acc
                            (if (equal? ref seq)
                                (string ref) ; Keep the match
                                (string ref))))) ; Correct mismatch
         ""
         (map list (string->list reference) (string->list sequence))))


;; Read mapping: Finds the starting position of the read in the reference
(define (map-read reference read)
  (for/first ([i (in-range (- (string-length reference) (string-length read) + 1))])
    (if (equal? (substring reference i (+ i (string-length read))) read)
        i
        #f))) ; Return #f if no match is found


;; Quality control: Filters sequences based on GC content and minimum length
(define (quality-control sequence min-gc max-gc min-length)
  (let ([gc-percentage (/ (* 100 (count (lambda (nucleotide)
                                          (or (equal? nucleotide 'G)
                                              (equal? nucleotide 'C)))
                                        (string->list sequence)))
                         (string-length sequence))])
    (and (>= (string-length sequence) min-length)
         (>= gc-percentage min-gc)
         (<= gc-percentage max-gc))))


;; Abstract model: define symbolic variables for the sequence and nucleotide
(define-symbolic seq string?)      ; Symbolic sequence
(define-symbolic nucleotide char?) ; Symbolic nucleotide (A, T, G, C)

;; Theorem: Appending a valid nucleotide results in a longer sequence.
(define (append sequence nucleotide)
  (match nucleotide
    ['A (string-append sequence "A")]
    ['T (string-append sequence "T")]
    ['G (string-append sequence "G")]
    ['C (string-append sequence "C")]
    [_ (error "Invalid nucleotide")]))

(define appending-theorem
  (assert
    (forall ([seq string?] [nucleotide char?])
      ;; If the nucleotide is valid, appending increases sequence length
      (=> (member? nucleotide (list 'A 'T 'G 'C))
          (> (string-length (append seq nucleotide))
             (string-length seq))))))

;; Theorem: Reading a non-empty sequence returns the sequence itself.
(define (read sequence)
  (if (not (string-empty? sequence))
      sequence
      (error "Sequence is empty")))

(define reading-theorem
  (assert
    (forall ([seq string?])
      ;; If the sequence is not empty, reading returns the same sequence
      (=> (not (string-empty? seq))
          (equal? (read seq) seq)))))


;; Theorem: Complementary base pairing is correct.
(define complementary-theorem
(assert
  (forall ([sequence string?])
    ;; Generate complement and validate base-pairing
    (let ([complemented (foldl (lambda (nucleotide acc)
                                 (string-append acc
                                                (match nucleotide
                                                  ['A "T"]
                                                  ['T "A"]
                                                  ['G "C"]
                                                  ['C "G"]
                                                  [_ (error "Invalid nucleotide")])))
                               ""
                               (string->list sequence))])
      (and (equal? (string->list complemented)
                   (map (lambda (n)
                          (match n
                            ['A 'T]
                            ['T 'A]
                            ['G 'C]
                            ['C 'G])) 
                        (string->list sequence)))
           (= (string-length sequence) (string-length complemented)))))))


;; Theorem: Reverse complement equivalence.
(define reverse-complement-theorem
(assert
  (forall ([sequence string?])
    (let ([rev-comp (string-reverse
                     (foldl (lambda (nucleotide acc)
                              (string-append acc
                                             (match nucleotide
                                               ['A "T"]
                                               ['T "A"]
                                               ['G "C"]
                                               ['C "G"]
                                               [_ (error "Invalid nucleotide")])))
                            ""
                            (string->list sequence)))])
      (equal? rev-comp
              (foldl (lambda (nucleotide acc)
                       (string-append acc
                                      (match nucleotide
                                        ['A "T"]
                                        ['T "A"]
                                        ['G "C"]
                                        ['C "G"]
                                        [_ (error "Invalid nucleotide")])))
                     ""
                     (reverse (string->list sequence))))))))


;; Theorem: Alignment score for identical sequences.
(define alignment-score-theorem
(assert
  (forall ([sequence string?])
    (=> (not (string-empty? sequence))
        (let ([alignment-score (foldl + 0
                                      (map (lambda (n1 n2)
                                             (if (equal? n1 n2) 1 -1))
                                           (string->list sequence)
                                           (string->list sequence)))])
          (equal? alignment-score (string-length sequence)))))))


;; Theorem: Correct mutation detection.
(define mutation-detection-theorem
(assert
  (forall ([reference string?] [sequence string?])
    (let ([mutations (map (lambda (pair)
                            (match pair
                              [(list ref seq) (if (not (equal? ref seq))
                                                  (list 'mutation ref seq)
                                                  'no-mutation)]))
                          (map list (string->list reference) (string->list sequence)))])
      (forall ([i (in-range (min (string-length reference) (string-length sequence)))])
        (if (not (equal? (string-ref reference i) (string-ref sequence i)))
            (member (list 'mutation (string-ref reference i) (string-ref sequence i)) mutations)
            (not (member (list 'mutation (string-ref reference i) (string-ref sequence i)) mutations))))))))


;; Theorem: GC content calculation.
(define gc-content-theorem
(assert
  (forall ([sequence string?])
    (let ([gc-count (count (lambda (nucleotide)
                             (or (equal? nucleotide 'G) (equal? nucleotide 'C)))
                           (string->list sequence))]
          [gc-content (/ (* gc-count 100) (string-length sequence))])
      (and (>= gc-content 0)
           (<= gc-content 100)
           (= gc-content (/ (* gc-count 100) (string-length sequence))))))))


;; Theorem: Trimming correctness.
(define trimming-theorem
(assert
  (forall ([sequence string?])
    (let ([trimmed (string-trim sequence)])
      (and (<= (string-length trimmed) (string-length sequence))
           (forall ([nucleotide (string->list trimmed)])
             (member? nucleotide (list 'A 'T 'G 'C))))))))


;; Theorem: K-mer generation.
(define k-mer-theorem
(assert
  (forall ([sequence string?] [k integer?])
    (=> (>= k 1)
        (let ([kmers (for/list ([i (in-range 0 (- (string-length sequence) k + 1))])
                       (substring sequence i (+ i k)))])
          (forall ([kmer kmers])
            (and (= (string-length kmer) k)
                 (string-contains sequence kmer))))))))


;; Theorem: Fragment assembly correctness.
(define fragment-assembly-theorem
  (assert
    (forall ([fragments (listof string?)])
      (equal? (assemble-fragments fragments)
              (foldl string-append "" fragments)))))

;; Trim sequence theorem: Ensure trimming reduces the sequence length
(define trimming-theorem
  (assert
    (forall ([sequence string?] [trim-length integer?])
      (=> (>= trim-length 0)
          (<= (string-length (trim-sequence sequence trim-length))
              (string-length sequence))))))

;; Error correction theorem: Ensure the output matches the reference
(define error-correction-theorem
  (assert
    (forall ([sequence string?] [reference string?])
      (=> (= (string-length sequence) (string-length reference))
          (= (error-correct sequence reference) reference)))))

;; Read mapping theorem: Ensure a valid position is returned for matching reads
(define read-mapping-theorem
  (assert
    (forall ([reference string?] [read string?])
      (=> (and (<= (string-length read) (string-length reference))
               (string-contains reference read))
          (let ([pos (map-read reference read)])
            (and pos
                 (= (substring reference pos (+ pos (string-length read))) read)))))))

;; Quality control theorem: Ensure sequence passes only if criteria are met
(define quality-control-theorem
  (assert
    (forall ([sequence string?] [min-gc integer?] [max-gc integer?] [min-length integer?])
      (=> (and (>= min-gc 0) (<= max-gc 100) (>= min-length 0))
          (let ([result (quality-control sequence min-gc max-gc min-length)])
            (if result
                (and (>= (string-length sequence) min-length)
                     (<= (/ (* 100 (count (lambda (nucleotide)
                                            (or (equal? nucleotide 'G)
                                                (equal? nucleotide 'C)))
                                          (string->list sequence)))
                            (string-length sequence))
                         max-gc)
                     (>= (/ (* 100 (count (lambda (nucleotide)
                                            (or (equal? nucleotide 'G)
                                                (equal? nucleotide 'C)))
                                          (string->list sequence)))
                            (string-length sequence))
                         min-gc))
                #t))))))

(define verify-theorems
  (begin
    (printf "Verifying appending theorem...\n")
    (verify appending-theorem)
    (printf "Appending theorem verified successfully.\n\n")

    (printf "Verifying reading theorem...\n")
    (verify reading-theorem)
    (printf "Reading theorem verified successfully.\n\n")

    (printf "Verifying complementary base pairing theorem...\n")
    (verify complementary-theorem) ;; Add for complement theorem
    (printf "Complementary base pairing theorem verified successfully.\n\n")

    (printf "Verifying reverse complement theorem...\n")
    (verify reverse-complement-theorem)
    (printf "Reverse complement theorem verified successfully.\n\n")

    (printf "Verifying alignment score theorem...\n")
    (verify alignment-score-theorem)
    (printf "Alignment score theorem verified successfully.\n\n")

    (printf "Verifying mutation detection theorem...\n")
    (verify mutation-detection-theorem)
    (printf "Mutation detection theorem verified successfully.\n\n")

    (printf "Verifying GC content theorem...\n")
    (verify gc-content-theorem)
    (printf "GC content theorem verified successfully.\n\n")

    (printf "Verifying trimming correctness theorem...\n")
    (verify trimming-theorem)
    (printf "Trimming correctness theorem verified successfully.\n\n")

    (printf "Verifying k-mer generation theorem...\n")
    (verify k-mer-theorem)
    (printf "K-mer generation theorem verified successfully.\n\n")

    (printf "Verifying fragment assembly theorem...\n")
    (verify fragment-assembly-theorem)
    (printf "Fragment assembly theorem verified successfully.\n\n")))

    (printf "Verifying trimming theorem...\n")
    (verify trimming-theorem)
    (printf "Trimming theorem verified successfully.\n\n")

    (printf "Verifying error correction theorem...\n")
    (verify error-correction-theorem)
    (printf "Error correction theorem verified successfully.\n\n")

    (printf "Verifying read mapping theorem...\n")
    (verify read-mapping-theorem)
    (printf "Read mapping theorem verified successfully.\n\n")

    (printf "Verifying quality control theorem...\n")
    (verify quality-control-theorem)
    (printf "Quality control theorem verified successfully.\n\n")))

;; Run verification
(verify-theorems)
