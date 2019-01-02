#!/bin/bash
# Wrapper over stanly
name=$(basename $0)

# Arg checking
[ $# -ne 1 ] && {
  echo "Usage: ${name} path-to-codebase-to-check"
  exit 1
}
[ ! -d $1 ] && {
  echo "${name}: path-to-codebase-to-check \"$1\" invalid?"
  exit 1
}

mkdir -p reports 2>/dev/null
LOGFILE=reports/results_$(date +%a_%d%b%Y_%H%M)_$(basename $1).txt
touch ${LOGFILE}
./stanly $1 | tee --append ${LOGFILE}

#--- Post process the report file
sed -i.bkp "/###\:\:\:/d" ${LOGFILE}  # get rid of the signature line
sed -i "s/\x1b.....//g" ${LOGFILE}  # get rid of the ^[(B^[[m characters !
      # '\x1b' is ESC ! Find it, and then delete it and the following 5 chars
      # (the five .'s that follow specify this)
sed -i '$ d' ${LOGFILE}               # delete last line

echo "stanly is done, report here:"
ls -lh ${LOGFILE}
