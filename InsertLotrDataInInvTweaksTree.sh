#!/bin/sh
# @(#) InsertLotrDataInInvTweaksTree.sh v1.01 (2015-09-26) / Hubert Tournier

. Config.sh

ChangeDuplicateIds( )
{
	sed	-e "s/<fence id=\"lotr:tile.lotr:fence\"\/>/<fence1 id=\"lotr:tile.lotr:fence\"\/>/" \
		-e "s/<brick id=\"lotr:tile.lotr:brick\"\/>/<brick1 id=\"lotr:tile.lotr:brick\"\/>/" \
		-e "s/<beacon id=\"lotr:tile.lotr:beacon\"\/>/<beacon1 id=\"lotr:tile.lotr:beacon\"\/>/" \
		-e "s/<flowerPot id=\"lotr:tile.lotr:flowerPot\"\/>/<flowerPot1 id=\"lotr:tile.lotr:flowerPot\"\/>/"
}

RemoveMovedVanillaItems( )
{
	awk '
		/^            <sword>/					{ next }
		/^                <ironSword id="iron_sword"\/>/	{ next }
		/^                <diamondSword id="diamond_sword"\/>/	{ next }
		/^                <stoneSword id="stone_sword"\/>/	{ next }
		/^                <goldSword id="golden_sword"\/>/	{ next }
		/^                <woodSword id="wooden_sword"\/>/	{ next }
		/^            <\/sword>/				{ next }
		/^                <bow id="bow"\/>/			{ next }
		/^                <ironBars id="iron_bars"\/>/		{ next }
		/^            <gold id="gold_ingot"\/>/			{ next }
		/^            <iron id="iron_ingot"\/>/			{ next }
		/^            <bone id="bone"\/>/			{ next }
		/^            <goldNugget id="gold_nugget"\/>/		{ next }
		/^            <torch id="torch"\/>/			{ next }
		/^            <craftingTable id="crafting_table"\/>/	{ next }
		/^            <furnace id="furnace"\/>/			{ next }
		/^            <furnaceBurning id="lit_furnace"\/>/	{ next }
		/^            <bed id="bed"\/>/				{ next }
									{ print }
	'
}


if [ ! -f "${CATEGORIZED_LOTR_ITEMS}" ]
then	echo "You need to run CategorizeLotrData.sh first!"
	exit 1
fi

cp ${CATEGORIZED_LOTR_ITEMS} ${CATEGORIZED_LOTR_ITEMS}.TMP
cp ${CATEGORIZED_VANILLA_ITEMS} ${CATEGORIZED_VANILLA_ITEMS}.TMP

cat ${INV_TWEAKS_CONF} \
| awk -v "TAB=${TAB}" '
	BEGIN				{
						IN_STUFF=0
						TREEPATH=""
					}
	/<stuff treeVersion/		{
						IN_STUFF=1
						print
						next
					}
	/<\/stuff>/			{
						IN_STUFF=0
					}
	/ id=".*\/>/			{
						if (IN_STUFF == 1)
						{
							print
							next
						}
					}
	/ oreDictName="/		{
						if (IN_STUFF == 1)
						{
							print
							next
						}
					}
	/<!--/				{
						if (IN_STUFF == 1)
						{
							print
							next
						}
					}
	/<\//				{
						if (IN_STUFF == 1)
						{
							INDENT=$0
							gsub(/<.*/, "", INDENT)
							INDENT=INDENT TAB

							COMMAND = "PrintLevel.sh " TREEPATH " \"" INDENT "\""
							system(COMMAND)

							gsub(/\/[A-Za-z0-9_]*$/, "", TREEPATH)
							print
							next
						}
					}
	/<[A-Za-z]/			{
						if (IN_STUFF == 1)
						{
							LEVEL=$0
							gsub(/ id=\"[a-zA-Z0-9_]*\"/, "", LEVEL)
							gsub(/[ <>]/, "", LEVEL)
							TREEPATH=TREEPATH "/" LEVEL
							print
							next
						}
					}
					{
						print
					}
' \
| ChangeDuplicateIds \
| RemoveMovedVanillaItems \
> ${INV_TWEAKS_NEW_CONF}

rm ${CATEGORIZED_LOTR_ITEMS}.TMP
rm ${CATEGORIZED_VANILLA_ITEMS}.TMP

exit 0
