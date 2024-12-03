// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

/*
 * Insert copyright notice
 */

/**
 * @file rle_split_harness.c
 * @brief Implements the proof harness for rle_split function.
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
#include <assert.h>
#include <stdlib.h>
#include <stdio.h>
#include "rle.h"

void rle_split(uint8_t *block, uint8_t *new_block);
void harness(void)
{

  /* Insert argument declarations */
  uint8_t *block;
  uint8_t *new_block;

  __CPROVER_assume(block != NULL);
  __CPROVER_assume(new_block != NULL);

  rle_split(block, new_block);
}
