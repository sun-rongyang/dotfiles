#!/usr/bin/env bash
#
# Author: Rongyang Sun <sun-rongyang@outlook.com>
# Creation Date: 2019-01-31 15:55
# 
# Description: Build googletest on MACOS X system. Refer to
#              https://gist.github.com/butuzov/e7df782c31171f9563057871d0ae444a
#


# Current directory
__THIS_DIR=$(pwd)
# googletest version
GOOGLETEST_VERSION="1.8.1"
# Installation prefix
INSTALL_PREFIX="/usr/local"


# Downloads the ${GOOGLETEST_VERSION} to disc
function dl {
    printf "\n  Downloading Google Test Archive\n\n"
    curl -LO https://github.com/google/googletest/archive/release-${GOOGLETEST_VERSION}.tar.gz
    tar xf release-${GOOGLETEST_VERSION}.tar.gz
}


# Unpack and Build
function build {
    printf "\n  Building GTest and Gmock\n\n"
    cd googletest-release-${GOOGLETEST_VERSION}
    mkdir build 
    cd $_
    cmake -Dgtest_build_tests=ON \
          -Dgmock_build_tests=ON \
          -DCMAKE_INSTALL_PREFIX=${INSTALL_PREFIX} ../
    make
    make test
    make install
}


# Final Clean up.
function cleanup {
    printf "\n  Running Cleanup\n\n"

    cd $__THIS_DIR
    rm -rf $(pwd)/googletest-release-${GOOGLETEST_VERSION}
    unlink $(pwd)/release-${GOOGLETEST_VERSION}.tar.gz
}


# Main function.
function main() {
  dl
  build
  cleanup
}

main
