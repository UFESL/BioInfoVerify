// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

/*
 * Insert copyright notice
 */

/**
 * @file GenerateDNAOccCountTable_harness.c
 * @brief Implements the proof harness for GenerateDNAOccCountTable function.
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
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <stdint.h>
#include <errno.h>
#include "QSufSort.h"

void GenerateDNAOccCountTable(unsigned int *dnaDecodeTable);

void harness(void)
{

  /* Insert argument declarations */
  unsigned int *dnaDecodeTable;
  GenerateDNAOccCountTable(dnaDecodeTable);
}
