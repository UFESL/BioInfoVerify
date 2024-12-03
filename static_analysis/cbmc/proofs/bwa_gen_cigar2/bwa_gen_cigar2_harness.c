// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

/*
 * Insert copyright notice
 */

/**
 * @file bwa_gen_cigar2_harness.c
 * @brief Implements the proof harness for bwa_gen_cigar2 function.
 */

/*
 * Insert project header files that
 *   - include the declaration of the function
 *   - include the types needed to declare function arguments
 */

/**
 * @brief Starting point for formal analysis
 * 
 */
#include <string.h>
#include <stdio.h>
#include <zlib.h>
#include <assert.h>
#include "bntseq.h"
#include "bwa.h"
#include "ksw.h"
#include "utils.h"
#include "kstring.h"
#include "kvec.h"

uint32_t *bwa_gen_cigar2(const int8_t mat[25], int o_del, int e_del, int o_ins, int e_ins, int w_, int64_t l_pac, const uint8_t *pac, int l_query, uint8_t *query, int64_t rb, int64_t re, int *score, int *n_cigar, int *NM);

void harness(void)
{

  /* Insert argument declarations */
  const int8_t mat[25]; 
  int o_del;
  int e_del;
  int o_ins; 
  int e_ins; 
  int w_;
  int64_t l_pa;
  const uint8_t *pac;
  int l_query;
  uint8_t *query;
  int64_t rb;
  int64_t re;
  int *score;
  int *n_cigar;
  int *NM;

  bwa_gen_cigar2(mat[25], o_del, e_del, o_ins, e_ins, w_, l_pa, pac, l_query, query, rb, re, score, n_cigar, NM);
}
