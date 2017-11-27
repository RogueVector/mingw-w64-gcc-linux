mingw-w64 from source
=====================

A collection of source distributions, and a shell script to extract and build.
Builds mingw-w64-i686-g++ cross compiler, for use on linux, targetting windows.

Additionally there is a script to run "update-alternatives" and add it to your
path.

Configuration Summary
---------------------

- Targetting win64
- gcc 7.2.0 / mingw 5.0.3
- Posix threads
- SEH exceptions
- No multilib

See script for more details.

Pre-reqs
-----

Texinfo
```
sudo apt-get install texinfo
```

libz-dev
```
sudo apt-get install libz-dev
```

Usage
-----

First, inspect `config.sh`, and modify it you wish to install to a system directory or something, or try to build a different target.

Both `build.sh` and `update-alternatives.sh` will source `config.sh` before they run.

Now, to build everything:

```
./build.sh
```

This will *try* to run to completion without manual intervention, but you should be prepared for manual intervention.
See code comments and links to guides in `build.sh`.

After it's finished, to link to your path, run

```
./update-alternatives.sh
```

Where I got these tarballs
--------------------------

- gcc:        http://ftp.gnu.org/gnu/gcc/gcc-7.2.0/
- binutils:   http://ftp.gnu.org/gnu/binutils/
- mingw-w64:  https://sourceforge.net/projects/mingw-w64/files/mingw-w64/mingw-w64-release/mingw-w64-v5.0.3.tar.bz2
- gmp:        https://gmplib.org/
- mpfr:       http://www.mpfr.org/mpfr-current/
- mpc:        http://www.multiprecision.org/index.php?prog=mpc&page=download
