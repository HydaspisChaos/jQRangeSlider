#!/bin/bash
MINDIR=../
SRCDIR=../

BASE=${SRCDIR}jQRangeSlider.js
BASEMIN=${MINDIR}jQRangeSlider-min.js
DATE=${SRCDIR}jQDateRangeSlider.js
DATEMIN=${SRCDIR}jQDateRangeSlider-min.js
EDIT=${SRCDIR}jQEditRangeSlider.js
EDITMIN=${SRCDIR}jQEditRangeSlider-min.js
ALLMIN=${MINDIR}jQAllRangeSliders-min.js

if [ ! -d "${MINDIR}" ]; then
	mkdir ${MINDIR}
fi

./compress.sh jQRangeSlider "${BASEMIN}" "${BASE}"

echo -----

./compress.sh jQDateRangeSlider "${DATEMIN}" "${DATE}"

echo -----


./compress.sh jQEditRangeSlider "${EDITMIN}" "${EDIT}"

echo -----

./compress.sh jQAllRangeSliders "${ALLMIN}" "${BASE}" "${DATE}" "${EDIT}"