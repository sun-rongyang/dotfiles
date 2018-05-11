# run something until it fails.
looptest() {
  i=0; while [ $i -eq 0 ]; do "$@"; i=$?; done
}
