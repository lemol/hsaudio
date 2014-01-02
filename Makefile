CABAL = cabal
GHC 	= ghc

.PHONY: all test clean

all:
	$(CABAL) configure
	$(CABAL) build

test:
	$(CABAL) configure --enable-tests
	$(CABAL) build
	$(CABAL) test

clean:
	$(RMDIR) dist
