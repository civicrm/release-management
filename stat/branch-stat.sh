#!/bin/bash
set -e

## Generate a CSV file with some high-level stats about each release branch and subsequent patch releases

VARS="BRANCH FIRST_COMMIT MAIN_RANGE MAIN_PSLOC MAIN_MSLOC MAIN_NETSLOC MAIN_COMMITS MAIN_MERGES MAIN_NONMERGES MAIN_RN MAIN_REF MAIN_NFC MAIN_AUTHORS PATREL_RANGE PATREL_LAST PATREL_CNT PATREL_RN PATREL_MERGES PATREL_COMMITS PATREL_AUTHORS TOTAL_RANGE TOTAL_AUTHORS"

############################################################
CSV="$1"
shift 1
if [ -z "$CSV" ]; then
  echo "usage: $0 <csv-file> <branch-name...>"
  exit 1
fi

BRANCHES=$( seq 0 17 | sed 's/^/5./' )

############################################################
echo "$VARS" | sed 's/ /,/g' > "$CSV"

for BRANCH in $BRANCHES ; do
  ./bin/givi checkout "${BRANCH}"

  [ "${BRANCH}" = "5.0" ] && ALPHA_NAME="4.7.32" || ALPHA_NAME="${BRANCH}.alpha1"
  FIRST_COMMIT=$(git log --oneline xml/version.xml | grep "Set version to $ALPHA_NAME" | cut -f1 -d\  )
  FIRST_RELEASE="${BRANCH}.0"

  MAIN_RANGE="${FIRST_COMMIT}..${FIRST_RELEASE}"

  MAIN_PSLOC=$( git diff "$MAIN_RANGE" -U0 | grep '^+' | wc -l )
  MAIN_MSLOC=$( git diff "$MAIN_RANGE" -U0 | grep '^-' | wc -l )
  MAIN_NETSLOC=$(( $MAIN_PSLOC - $MAIN_MSLOC ))
  MAIN_COMMITS=$(git log --oneline "$MAIN_RANGE" | wc -l)
  MAIN_MERGES=$(git log --oneline --merges "$MAIN_RANGE" | wc -l)
  MAIN_NONMERGES=$(git log --oneline --no-merges "$MAIN_RANGE" | wc -l)
  MAIN_REF=$(git log --oneline --no-merges "$MAIN_RANGE" | grep 'REF' | wc -l)
  MAIN_NFC=$(git log --oneline --no-merges "$MAIN_RANGE" | grep 'NFC' | wc -l)
  MAIN_RN=$( grep '^- ' "release-notes/$FIRST_RELEASE.md" | grep -v '](#' | wc -l )
  MAIN_AUTHORS=$( git log "$MAIN_RANGE" --pretty=format:%aN | sort -u | wc -l )

  PATREL_CNT=$(( $(git tag |grep "^${BRANCH}\." | wc -l) - 1 ))
  PATREL_LAST=$(git tag |grep "^${BRANCH}\." | tail -n1)
  PATREL_RANGE="${FIRST_RELEASE}..${PATREL_LAST}"
  PATREL_RN=$(( $( grep '^- ' "release-notes/${BRANCH}".*.md | grep -v '](#' | wc -l ) - $MAIN_RN ))
  PATREL_MERGES=$(git log --oneline --merges "$PATREL_RANGE" | wc -l)
  PATREL_COMMITS=$(git log --oneline "$PATREL_RANGE" | wc -l)
  PATREL_AUTHORS=$( git log "$PATREL_RANGE" --pretty=format:%aN | sort -u | wc -l )

  TOTAL_RANGE="${FIRST_COMMIT}..${PATREL_LAST}"
  TOTAL_AUTHORS=$( git log "$TOTAL_RANGE" --pretty=format:%aN | sort -u | wc -l )

  for var in $VARS
  do
    eval "val=\$$var"
    echo "$var=\"$val\""
    echo -n "$val," >> "$CSV"
  done
  echo "" >> "$CSV"

done

echo
echo "Generated $CSV"
