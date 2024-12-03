// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

/*
 * Insert copyright notice
 */

/**
 * @file mp_destroy_harness.c
 * @brief Implements the proof harness for mp_destroy function.
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
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <stdio.h>
#include <zlib.h>
#include "rle.h"
#include "rope.h"

static void mp_destroy(mempool_t *mp);
void harness(void)
{

  /* Insert argument declarations */
  mempool_t *mp;
  mp_destroy(mp);
}
