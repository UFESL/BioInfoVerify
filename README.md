# BioVerifyLib: Formal Verification of Bioinformatics Libraries

## Introduction

While there is explosive growth in the creation of biological data, researchers often rely on ad-hoc verification methods, such as testing with small simulated datasets. Due to their importance in biology and biomedicine, it is critical to verify these algorithms and their implementations to ensure that the results and conclusions are trustworthy. This repository explores an effective combination of model checking, static analysis, and theorem proving for bioinformatics software.

---

## Directory Structure

This repository is divided into three subdirectories, each focusing on a specific verification methodology:

### 1. Static Analysis
- **What it does**: Detects generic vulnerabilities in bioinformatics libraries.
- **Tools used**: CBMC (C Bounded Model Checker).
- **Applications/Libraries**: 
  - BiopLib ([Porter 2015](https://github.com/porterinhand/bioplib))
  - BWA ([Li 2009](https://github.com/lh3/bwa))
- **How to run**: 
  1. Install CBMC using [installation guide](https://www.cprover.org/cbmc/).
  2. Navigate to the `static_analysis` directory.
  3. Run the following commands:
     ```bash
     cbmc --function name_of_function path/to/source_file.c
     ```
  4. Example command for BWA:
     ```bash
     cbmc --function bwa_mem bwa.c
     ```
  For more details, refer to the CBMC [documentation](https://www.cprover.org/cbmc/documentation/).

---

### 2. Property Checking
- **What it does**: Performs property-based verification for bioinformatics libraries.
- **Tools used**: RapidCheck (property-based testing library for C++).
- **Applications/Libraries**: 
  - BWA ([Li 2009](https://github.com/lh3/bwa))
  - Jellyfish ([Marçais 2011](https://github.com/gmarcais/Jellyfish))
  - Dashing ([Baker 2019](https://github.com/dnbaker/dashing))
  - SPAdes ([Prjibelski 2020](https://github.com/ablab/spades))
  - MUMmer ([Marçais 2018](https://github.com/mummer4/mummer))

#### How to run:
1. **Install RapidCheck**:  
   Follow the [RapidCheck installation guide](https://github.com/emil-e/rapidcheck). Make sure you have a working C++ compiler and CMake installed.

2. **Set up the build environment**:
   - Navigate to the `property_checking` directory.
   - Run the following commands:
     ```bash
     mkdir build && cd build
     cmake ..
     make
     ```

3. **Run existing tests**:  
   After the build is complete, you can execute the default test binaries. For example:
     ```bash
     ./test_property_based
     ```

4. **Add your own tests**:  
   To test the **BWA library**, follow these steps:

   - **Create a new test file**: Add a file named `BwaTests.cpp` to the `test` directory.
     ```cpp
     // Example: test/bwa_property_test.cpp
     #include <rapidcheck.h>
     #include "bwa/bwa.h"  // Include the BWA header files here

     RC_GTEST_PROP(BWA, bwa_mem_test, (const std::string &input)) {
         auto output = bwa_mem(input.c_str());  // Replace with actual BWA function
         RC_ASSERT(output != nullptr);         // Example property to verify
     }
     ```

   - **Update `CMakeLists.txt`**:  
     Modify the `CMakeLists.txt` file in the `property_checking` directory to include your new test file:
     ```cmake
     # Add a new test executable
     add_executable(bwa_property_test test/BwaTests.cpp)

     # Link necessary libraries (RapidCheck and BWA)
     target_include_directories(bwa_property_test PRIVATE src/bwa)
     target_link_libraries(bwa_property_test PRIVATE bwa rapidcheck)
     ```

   - **Rebuild the project**:
     ```bash
     cd build
     make
     ```

   - **Run your new tests**:
     ```bash
     ./bwa_property_test
     ```

---

### 3. Theorem Proving
- **What it does**: Performs theorem proving for specific functionalities in bioinformatics software.
- **Tools used**: Rosette (formal verification language).
- **Applications/Libraries**: 
  - DNA Sequencing (abstract functionality)
  - Seeding Alignment (abstract functionality)
- **How to run**:
  1. Install Rosette by following the [installation instructions](https://github.com/emina/rosette).
  2. Navigate to the `theorem_proving` directory.
  3. Run the provided Rosette model using Racket:
     ```bash
     racket dna_sequencing_model.rkt
     racket seeding_alignment_model.rkt
     ```
  Example command for DNA Sequencing:
     ```bash
     racket dna_sequencing_model.rkt
     ```

---

## References
- [CBMC](https://www.cprover.org/cbmc/)
- [RapidCheck](https://github.com/emil-e/rapidcheck)
- [Rosette](https://github.com/emina/rosette)
- Libraries:
  - BiopLib ([Porter 2015](https://github.com/porterinhand/bioplib))
  - BWA ([Li 2009](https://github.com/lh3/bwa))
  - Jellyfish ([Marçais 2011](https://github.com/gmarcais/Jellyfish))
  - Dashing ([Baker 2019](https://github.com/dnbaker/dashing))
  - SPAdes ([Prjibelski 2020](https://github.com/ablab/spades))
  - MUMmer ([Marçais 2018](https://github.com/mummer4/mummer))

---

## License
This repository is distributed under the [MIT License](LICENSE).

## Acknowledgments
Special thanks to the contributors and researchers for advancing the field of formal verification in bioinformatics.
