#!/bin/sh
# @(#) PrintLevel.sh v1.01 (2015-09-26) / Hubert Tournier

. Config.sh

# Add moved vanilla Minecraft items:
grep " ${1}$" ${CATEGORIZED_VANILLA_ITEMS}.TMP | cut -d" " -f1,2 | sed "s/\([A-Za-z0-9_]*\) \([A-Za-z0-9_]*\)/${2}<\1 id=\"\2\"\/>/"

# Add LOTR items:
grep " ${1}$" ${CATEGORIZED_LOTR_ITEMS}.TMP | cut -d" " -f1 | sed "s/\(lotr:[a-z]*.lotr:\)\([A-Za-z0-9_]*$\)/${2}<\2 id=\"\1\2\"\/>/"

# Remove processed item:
grep -v " ${1}$" ${CATEGORIZED_VANILLA_ITEMS}.TMP > ${CATEGORIZED_VANILLA_ITEMS}.TMP2
mv ${CATEGORIZED_VANILLA_ITEMS}.TMP2 ${CATEGORIZED_VANILLA_ITEMS}.TMP
grep -v " ${1}$" ${CATEGORIZED_LOTR_ITEMS}.TMP > ${CATEGORIZED_LOTR_ITEMS}.TMP2
mv ${CATEGORIZED_LOTR_ITEMS}.TMP2 ${CATEGORIZED_LOTR_ITEMS}.TMP

# Add eventual new categories:
grep " ${1}/[a-zA-Z0-9_]*$" ${CATEGORIZED_LOTR_ITEMS}.TMP | cut -d" " -f2 | sort | uniq \
| while read FULL_CATEGORY
do	CATEGORY=`basename ${FULL_CATEGORY}`

	echo "${2}<${CATEGORY}>"
		PrintLevel.sh "${1}/${CATEGORY}" "${2}${TAB}"
	echo "${2}</${CATEGORY}>"
done

