MODULE_big	= alder_optimizer
OBJS = \
	$(WIN32RES) \
    alder_optimizer.o

EXTENSION = alder_optimizer
DATA = alder_optimizer--1.0.sql
PGFILEDESC = "alder-optimizer - Alder Query Performance Optimizer"

REGRESS = check

override CFLAGS += -I$(shell $(PG_CONFIG) --includedir)
override LDFLAGS += -L$(shell $(PG_CONFIG) --libdir) -lpq

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/alder_optimizer
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif
