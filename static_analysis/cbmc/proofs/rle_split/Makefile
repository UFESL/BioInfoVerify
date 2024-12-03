HARNESS_ENTRY = harness
HARNESS_FILE = rle_split_harness

# This should be a unique identifier for this proof, and will appear on the
# Litani dashboard. It can be human-readable and contain spaces if you wish.
PROOF_UID = rle_split

DEFINES +=
INCLUDES += -I/Users/hasini-local/Documents/Research/bioinfomatics/bwa

REMOVE_FUNCTION_BODY +=
UNWINDSET +=

PROOF_SOURCES += $(PROOFDIR)/$(HARNESS_FILE).c
PROJECT_SOURCES += $(SRCDIR)/rle.c

# If this proof is found to consume huge amounts of RAM, you can set the
# EXPENSIVE variable. With new enough versions of the proof tools, this will
# restrict the number of EXPENSIVE CBMC jobs running at once. See the
# documentation in Makefile.common under the "Job Pools" heading for details.
# EXPENSIVE = true

# If you require access to a file-local ("static") function or object to conduct
# your proof, set the following (and do not include the original source file
# ("rle.c") in PROJECT_SOURCES).
# REWRITTEN_SOURCES = $(PROOFDIR)/<__SOURCE_FILE_BASENAME__>.i
# include ../Makefile.common
# $(PROOFDIR)/<__SOURCE_FILE_BASENAME__>.i_SOURCE = $(SRCDIR)/rle.c
# $(PROOFDIR)/<__SOURCE_FILE_BASENAME__>.i_FUNCTIONS = foo bar
# $(PROOFDIR)/<__SOURCE_FILE_BASENAME__>.i_OBJECTS = baz
# Care is required with variables on the left-hand side: REWRITTEN_SOURCES must
# be set before including Makefile.common, but any use of variables on the
# left-hand side requires those variables to be defined. Hence, _SOURCE,
# _FUNCTIONS, _OBJECTS is set after including Makefile.common.

# # CBMC_FLAG_MALLOC_MAY_FAIL ?= --malloc-may-fail
# # CBMC_FLAG_MALLOC_FAIL_NULL ?= --malloc-fail-null
# CBMC_FLAG_BOUNDS_CHECK = 
# # CBMC_FLAG_CONVERSION_CHECK ?= --conversion-check
# # CBMC_FLAG_DIV_BY_ZERO_CHECK ?= --div-by-zero-check
# # CBMC_FLAG_FLOAT_OVERFLOW_CHECK ?= --float-overflow-check
# CBMC_FLAG_NAN_CHECK = 
# # CBMC_FLAG_POINTER_CHECK ?= --pointer-check
# # CBMC_FLAG_POINTER_OVERFLOW_CHECK ?= --pointer-overflow-check
# # CBMC_FLAG_POINTER_PRIMITIVE_CHECK ?= --pointer-primitive-check
# # CBMC_FLAG_SIGNED_OVERFLOW_CHECK ?= --signed-overflow-check
# # CBMC_FLAG_UNDEFINED_SHIFT_CHECK ?= --undefined-shift-check
# # CBMC_FLAG_UNSIGNED_OVERFLOW_CHECK ?= --unsigned-overflow-check
# # CBMC_FLAG_UNWINDING_ASSERTIONS ?= --unwinding-assertions
# CBMC_DEFAULT_UNWIND = 
# CBMC_FLAG_FLUSH = 

include ../Makefile.common
