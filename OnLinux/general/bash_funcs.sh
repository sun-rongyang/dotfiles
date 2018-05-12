#
# Author: Rongyang Sun <sun-rongyang@outlook.com>
# Creation Date: 2018-05-13 06:03
# 
# Description: Useful bash functions collection.
#


# run something until it fails.
looptest() {
  EXIT_CODE=0
  COUNT=0
  while [[ ${EXIT_CODE} -eq 0 ]]; do
    "$@"
    EXIT_CODE=$?
    COUNT=`expr ${COUNT} + 1`
    echo "execution times: " ${COUNT}
  done
}
