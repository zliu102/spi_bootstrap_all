# contrib/reservoir_sampling/Makefile

MODULE_big = spi_bootstrap_all
OBJS = spi_bootstrap_all.o $(WIN32RES)
EXTENSION = spi_bootstrap_all
DATA = spi_bootstrap_all--1.0.sql
PGFILEDESC = "spi_bootstrap_all - binary search for integer arrays"
PG_CFLAGS += -ggdb -O0

REGRESS = spi_bootstrap_all

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/spi_bootstrap_all
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif
