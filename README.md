# The Isabelle Cabal Demo Package

This repository contains a package demonstrating how to use [The Isabelle Cabal](https://github.com/fkj/isabelle-cabal).

The package contains an Isabelle theory (`Sort.thy`) implementing quicksort (as the function `sort_list`) and proving that this function actually sorts lists.
Additionally, the theory exports the function into Haskell code.
The theory is part of an Isabelle session defined in the `ROOT` file.

Alongside this Isabelle session is a small application (in the `app` directory) which prints a list, sorts it, then prints the sorted list.
The sorting in this application is done using the `sort_list` function from the `Sort` module.

The Isabelle Cabal is used to wire these two pieces together.
The `Setup.hs` file instructs the Cabal build system to use The Isabelle Cabal instead of the usual build procedure.
More configuration (with comments) of The Isabelle Cabal and Cabal is done in the package description (`isabelle-cabal-demo.cabal`).

Since The Isabelle Cabal is not currently available on Hackage, The Isabelle Cabal is obtained via git.
This is set up in the `cabal.project` file.

For more information, please see either the files themselves or the README of [The Isabelle Cabal](https://github.com/fkj/isabelle-cabal).
