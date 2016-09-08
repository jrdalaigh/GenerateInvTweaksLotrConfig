#!/bin/sh
# @(#) CategorizeLotrData.sh v1.01 (2015-09-26) / Hubert Tournier

. Config.sh

> ${CATEGORIZED_LOTR_ITEMS}
> ${UNCATEGORIZED_LOTR_ITEMS}

cat ${LOTR_ITEMS} \
| while read ITEM
do
	case "${ITEM}" in
		*battleaxe*)		echo "${ITEM} /equipment/weapon/melee/battleaxe" ;;				# NEW CATEGORY
		*dagger*Poisoned)	echo "${ITEM} /equipment/weapon/melee/dagger/poisoned" ;;			# NEW CATEGORY
		*dagger*)		echo "${ITEM} /equipment/weapon/melee/dagger" ;;				# NEW CATEGORY
		*sting*)		echo "${ITEM} /equipment/weapon/melee/dagger" ;;				# NEW CATEGORY
		*[sS]word*)		echo "${ITEM} /equipment/weapon/melee/sword" ;;					# NEW CATEGORY
		*Blade*)		echo "${ITEM} /equipment/weapon/melee/sword" ;;					# NEW CATEGORY
		*scimitar*)		echo "${ITEM} /equipment/weapon/melee/sword/scimitar" ;;			# NEW CATEGORY
		*anduril*)		echo "${ITEM} /equipment/weapon/melee/sword" ;;					# NEW CATEGORY
		*Trident*)		echo "${ITEM} /equipment/weapon/melee" ;;					# NEW CATEGORY
		*Club*)			echo "${ITEM} /equipment/weapon/melee" ;;					# NEW CATEGORY
		*[Hh]ammer*)		echo "${ITEM} /equipment/weapon/melee/hammer" ;;				# NEW CATEGORY
		*[Mm]ace*)		echo "${ITEM} /equipment/weapon/melee/mace" ;;					# NEW CATEGORY
		*Staff*)		echo "${ITEM} /equipment/weapon/melee/staff" ;;					# NEW CATEGORY
		*Whip*)			echo "${ITEM} /equipment/weapon/melee" ;;					# NEW CATEGORY

		*Bow*)			echo "${ITEM} /equipment/weapon/ranged/bow" ;;					# NEW CATEGORY
		*Crossbow*)		echo "${ITEM} /equipment/weapon/ranged/crossbow" ;;				# NEW CATEGORY
		*sling*)		echo "${ITEM} /equipment/weapon/ranged" ;;					# NEW CATEGORY

		*chestnut)		echo "${ITEM} /equipment/weapon/throwing" ;;					# NEW CATEGORY
		*termite)		echo "${ITEM} /equipment/weapon/throwing" ;;					# NEW CATEGORY
		*:plate)		echo "${ITEM} /equipment/weapon/throwing" ;;					# NEW CATEGORY
		*spear*)		echo "${ITEM} /equipment/weapon/throwing/spear" ;;				# NEW CATEGORY
		*throwingAxe*)		echo "${ITEM} /equipment/weapon/throwing/throwingAxe" ;;			# NEW CATEGORY

		*crossbowBolt*)		echo "${ITEM} /equipment/weapon/munition" ;;
		*pebble*)		echo "${ITEM} /equipment/weapon/munition" ;;

		*pickaxe*)		echo "${ITEM} /equipment/tool/pickaxe" ;;
		*axe*)			echo "${ITEM} /equipment/tool/axe" ;;
		*hoe*)			echo "${ITEM} /equipment/tool/hoe" ;;
		*shovel*)		echo "${ITEM} /equipment/tool/shovel" ;;
		*mattock*)		echo "${ITEM} /equipment/tool/mattock" ;;					# NEW CATEGORY

		*helmet*)		echo "${ITEM} /equipment/armor/helmet" ;;
		*Hat*)			echo "${ITEM} /equipment/armor/helmet" ;;
		*body*)			echo "${ITEM} /equipment/armor/chestplate" ;;
		*legs*)			echo "${ITEM} /equipment/armor/leggings" ;;
		*boots*)		echo "${ITEM} /equipment/armor/boots" ;;

		*rock)			echo "${ITEM} /block/naturalBlock/stones" ;;
		*Dirt)			echo "${ITEM} /block/naturalBlock/dirts" ;;
		*wood)			echo "${ITEM} /block/naturalBlock/wood" ;;
		*wood[0-9])		echo "${ITEM} /block/naturalBlock/wood" ;;
		*fruitWood)		echo "${ITEM} /block/naturalBlock/wood" ;;
		*Log)			echo "${ITEM} /block/naturalBlock/wood" ;;
		*hearth)		echo "${ITEM} /block/naturalBlock" ;;
		*quagmire)		echo "${ITEM} /block/naturalBlock" ;;
		*Grass)			echo "${ITEM} /block/naturalBlock" ;;
		*mordorGravel)		echo "${ITEM} /block/naturalBlock" ;;
		*mobSpawner)		echo "${ITEM} /block/naturalBlock" ;;
		*Portal)		echo "${ITEM} /block/naturalBlock" ;;
		*stalactite)		echo "${ITEM} /block/naturalBlock" ;;
		*termiteMound)		echo "${ITEM} /block/naturalBlock" ;;
		*utumnoPillar)		echo "${ITEM} /block/naturalBlock" ;;
		*utumnoReturn*)		echo "${ITEM} /block/naturalBlock" ;;
		*spawnerChest)		echo "${ITEM} /block/naturalBlock" ;;
		*webUngoliant)		echo "${ITEM} /block/naturalBlock" ;;
		*marshLights)		echo "${ITEM} /block/naturalBlock" ;;
		*remains)		echo "${ITEM} /block/naturalBlock" ;;
		*ancientParts)		echo "${ITEM} /block/naturalBlock" ;;
		*ancient)		echo "${ITEM} /block/naturalBlock" ;;
		*mysteryWeb)		echo "${ITEM} /block/naturalBlock" ;;
		*beacon)		echo "${ITEM} /block/manufacturedBlock" ;;
		*mallornLadder)		echo "${ITEM} /block/manufacturedBlock/constructionBlock" ;;
		*mallornStick)		echo "${ITEM} /block/manufacturedBlock/constructionBlock" ;;
		*thatch)		echo "${ITEM} /block/manufacturedBlock/constructionBlock" ;;
		*thatchFloor)		echo "${ITEM} /block/manufacturedBlock/constructionBlock" ;;
		*pillar)		echo "${ITEM} /block/manufacturedBlock/constructionBlock" ;;
		*Storage*)		echo "${ITEM} /block/manufacturedBlock/constructionBlock/oreBlock" ;;
		*:ore*)			echo "${ITEM} /block/naturalBlock/oreBlock" ;;
		*fence*)		echo "${ITEM} /block/manufacturedBlock/fence" ;;
		*wallStone*)		echo "${ITEM} /block/manufacturedBlock/stoneWall" ;;
		*planks*)		echo "${ITEM} /block/manufacturedBlock/constructionBlock/woodenPlank" ;;
		*brick*)		echo "${ITEM} /block/manufacturedBlock/constructionBlock/bricks" ;;
		*guldurilBrick*)	echo "${ITEM} /block/manufacturedBlock/constructionBlock/bricks" ;;
		*utumnoBrick*)		echo "${ITEM} /block/manufacturedBlock/constructionBlock/bricks" ;;
		*Bars*)			echo "${ITEM} /block/manufacturedBlock/constructionBlock/bars" ;;		# NEW CATEGORY
		*stairs*Brick*)		echo "${ITEM} /block/manufacturedBlock/constructionBlock/stairs" ;;
		*stairs*)		echo "${ITEM} /block/manufacturedBlock/constructionBlock/stairs/woodenStairs" ;;
		*slabSingle*)		echo "${ITEM} /block/manufacturedBlock/constructionBlock/slabs" ;;
		*woodSlabSingle*)	echo "${ITEM} /block/manufacturedBlock/constructionBlock/slabs/woodenSlabs" ;;
		*slabDouble*)		echo "${ITEM} /block/manufacturedBlock/constructionBlock/slabs/doubleSlab" ;;
		*woodSlabDouble*)	echo "${ITEM} /block/manufacturedBlock/constructionBlock/slabs/doubleSlab/woodenDoubleSlabs" ;;
		*pressurePlate*)	echo "${ITEM} /block/mechanism/pressurePlates" ;;
		*button*)		echo "${ITEM} /block/mechanism/buttons" ;;

		*Torch*)		echo "${ITEM} /block/mechanism/lighting" ;
					echo "${ITEM} /item/utility/torch" ;;
		*Door*)			echo "${ITEM} /block/mechanism/doors" ;
					echo "${ITEM} /item/decoration/door" ;;
		*barrel*)		echo "${ITEM} /block/mechanism" ;
					echo "${ITEM} /item/vehicle" ;
					echo "${ITEM} /item/decoration" ;;

		*copper)		echo "${ITEM} /resources/miningResources/ingots" ;;				# NEW CATEGORY
		*tin)			echo "${ITEM} /resources/miningResources/ingots" ;;				# NEW CATEGORY
		*bronze)		echo "${ITEM} /resources/miningResources/ingots" ;;				# NEW CATEGORY
		*silver)		echo "${ITEM} /resources/miningResources/ingots" ;;				# NEW CATEGORY
		*mithril)		echo "${ITEM} /resources/miningResources/ingots" ;;				# NEW CATEGORY
		*galvorn)		echo "${ITEM} /resources/miningResources/ingots" ;;				# NEW CATEGORY
		*Steel)			echo "${ITEM} /resources/miningResources/ingots" ;;				# NEW CATEGORY
		*naurite)		echo "${ITEM} /resources/miningResources/crystals" ;;				# NEW CATEGORY
		*quenditeCrystal)	echo "${ITEM} /resources/miningResources/crystals" ;;				# NEW CATEGORY
		*guldurilCrystal)	echo "${ITEM} /resources/miningResources/crystals" ;;				# NEW CATEGORY
		*sulfur)		echo "${ITEM} /resources/miningResources/crystals" ;;				# NEW CATEGORY
		*saltpeter)		echo "${ITEM} /resources/miningResources/crystals" ;;				# NEW CATEGORY
		*Bone*)			echo "${ITEM} /resources/huntingResources/bones" ;;				# NEW CATEGORY
		*Nugget*)		echo "${ITEM} /resources/huntingResources/nugget" ;;				# NEW CATEGORY
		*wargFur)		echo "${ITEM} /resources/huntingResources" ;;
		*wargskinRug)		echo "${ITEM} /resources/huntingResources" ;;
		*trollStatue)		echo "${ITEM} /resources/huntingResources" ;;
		*lionFur)		echo "${ITEM} /resources/huntingResources" ;;
		*gemsbokHide)		echo "${ITEM} /resources/huntingResources" ;;
		*gemsbokHorn)		echo "${ITEM} /resources/huntingResources" ;;
		*rhinoHorn)		echo "${ITEM} /resources/huntingResources" ;;
		*swanFeather)		echo "${ITEM} /resources/huntingResources" ;;
		*bossTrophy)		echo "${ITEM} /resources/huntingResources" ;;
		*trollTotem)		echo "${ITEM} /resources/huntingResources" ;;
		*utumnoKey)		echo "${ITEM} /resources/huntingResources" ;;
		*flax)			echo "${ITEM} /resources/farmingResources" ;;
		*pipeweedLeaf)		echo "${ITEM} /resources/farmingResources" ;;
		*pipeweed)		echo "${ITEM} /resources/farmingResources" ;;
		*bottlePoison)		echo "${ITEM} /resources/farmingResources" ;;
		*dye)			echo "${ITEM} /resources/dye" ;;

		*Bed*)			echo "${ITEM} /item/utility/bed" ;						# NEW CATEGORY
					echo "${ITEM} /item/decoration/bed" ;;						# NEW CATEGORY
		*Book*)			echo "${ITEM} /item/utility" ;;
		*CraftingTable*)	echo "${ITEM} /item/utility/craftingTable" ;;					# NEW CATEGORY
		*Forge*)		echo "${ITEM} /item/utility/forge" ;;						# NEW CATEGORY
		*Oven*)			echo "${ITEM} /item/utility" ;;
		*unsmeltery*)		echo "${ITEM} /item/utility" ;;
		*armorStand)		echo "${ITEM} /item/utility" ;;
		*commandTable)		echo "${ITEM} /item/utility" ;;
		*entJar)		echo "${ITEM} /item/utility" ;;
		*butterflyJar)		echo "${ITEM} /item/utility" ;;
		*banner)		echo "${ITEM} /item/utility" ;;
		*commandHorn)		echo "${ITEM} /item/utility" ;;
		*sulfurMatch)		echo "${ITEM} /item/utility" ;;
		*orcBomb)		echo "${ITEM} /item/utility" ;;
		*conquestHorn)		echo "${ITEM} /item/utility" ;;
		*spawnEgg)		echo "${ITEM} /item/utility" ;;
		*structureSpawner)		echo "${ITEM} /item/utility" ;;
		*horseArmor*)		echo "${ITEM} /item/utility/horseArmor" ;;
		*wargArmor*)		echo "${ITEM} /item/utility/wargArmor" ;;					# NEW CATEGORY
		*elkArmor*)		echo "${ITEM} /item/utility" ;;
		*rhinoArmor*)		echo "${ITEM} /item/utility" ;;

		*Ring*)			echo "${ITEM} /item/decoration/rings" ;;					# NEW CATEGORY
		*chandelier)		echo "${ITEM} /item/decoration" ;;
		*flowerPot)		echo "${ITEM} /item/decoration" ;;
		*mug)			echo "${ITEM} /item/decoration" ;;
		*goran)			echo "${ITEM} /item/decoration" ;;
		*hobbitPipe)		echo "${ITEM} /item/decoration" ;;
		*clayMug)		echo "${ITEM} /item/decoration" ;;
		*pouch)			echo "${ITEM} /item/decoration" ;;
		*coin)			echo "${ITEM} /item/decoration" ;;
		*clayPlate)		echo "${ITEM} /item/decoration" ;;
		*featherDyed)		echo "${ITEM} /item/decoration" ;;

		*lembas)		echo "${ITEM} /item/food/edibleFood" ;;
		*gammon)		echo "${ITEM} /item/food/edibleFood" ;;
		*rabbitStew)		echo "${ITEM} /item/food/edibleFood" ;;
		*hobbitPancake)		echo "${ITEM} /item/food/edibleFood" ;;
		*bananaBread)		echo "${ITEM} /item/food/edibleFood" ;;
		*mapleSyrup)		echo "${ITEM} /item/food/edibleFood" ;;
		*torogStew)		echo "${ITEM} /item/food/edibleFood" ;;
		*cram)			echo "${ITEM} /item/food/edibleFood" ;;
		*appleCrumble)		echo "${ITEM} /item/food/edibleFood/cakes" ;;					# NEW CATEGORY
		*cherryPie)		echo "${ITEM} /item/food/edibleFood/cakes" ;;					# NEW CATEGORY
		*bananaCake)		echo "${ITEM} /item/food/edibleFood/cakes" ;;					# NEW CATEGORY
		*dalishPastry)		echo "${ITEM} /item/food/edibleFood/cakes" ;;					# NEW CATEGORY
		*berryPie)		echo "${ITEM} /item/food/edibleFood/cakes" ;;					# NEW CATEGORY
		*hobbitPancakeMapleS*)	echo "${ITEM} /item/food/edibleFood/cakes" ;;					# NEW CATEGORY
		*chestnutRoast)		echo "${ITEM} /item/food/edibleFood/cakes" ;;					# NEW CATEGORY
		*banana)		echo "${ITEM} /item/food/edibleFood/fruits" ;;					# NEW CATEGORY
		*date)			echo "${ITEM} /item/food/edibleFood/fruits" ;;					# NEW CATEGORY
		*appleGreen)		echo "${ITEM} /item/food/edibleFood/fruits" ;;					# NEW CATEGORY
		*pear)			echo "${ITEM} /item/food/edibleFood/fruits" ;;					# NEW CATEGORY
		*cherry)		echo "${ITEM} /item/food/edibleFood/fruits" ;;					# NEW CATEGORY
		*mallornNut)		echo "${ITEM} /item/food/edibleFood/fruits" ;;					# NEW CATEGORY
		*mango)			echo "${ITEM} /item/food/edibleFood/fruits" ;;					# NEW CATEGORY
		*blueberry)		echo "${ITEM} /item/food/edibleFood/fruits" ;;					# NEW CATEGORY
		*blackberry)		echo "${ITEM} /item/food/edibleFood/fruits" ;;					# NEW CATEGORY
		*raspberry)		echo "${ITEM} /item/food/edibleFood/fruits" ;;					# NEW CATEGORY
		*cranberry)		echo "${ITEM} /item/food/edibleFood/fruits" ;;					# NEW CATEGORY
		*elderberry)		echo "${ITEM} /item/food/edibleFood/fruits" ;;					# NEW CATEGORY
		*lettuce)		echo "${ITEM} /item/food/edibleFood/vegetables" ;;				# NEW CATEGORY
		*rabbitCooked)		echo "${ITEM} /item/food/edibleFood/cookedFood" ;;
		*lionCooked)		echo "${ITEM} /item/food/edibleFood/cookedFood" ;;
		*zebraCooked)		echo "${ITEM} /item/food/edibleFood/cookedFood" ;;
		*rhinoCooked)		echo "${ITEM} /item/food/edibleFood/cookedFood" ;;
		*rabbitRaw)		echo "${ITEM} /item/food/edibleFood/rawFood" ;;
		*lionRaw)		echo "${ITEM} /item/food/edibleFood/rawFood" ;;
		*zebraRaw)		echo "${ITEM} /item/food/edibleFood/rawFood" ;;
		*rhinoRaw)		echo "${ITEM} /item/food/edibleFood/rawFood" ;;
		*maggotyBread)		echo "${ITEM} /item/food/poisonedFood" ;;
		*mug[A-Z]*)		echo "${ITEM} /item/food/edibleFood/drinks" ;;					# NEW CATEGORY
		*asphodel)		echo "${ITEM} /item/plant/flower" ;;
		*bluebell)		echo "${ITEM} /item/plant/flower" ;;
		*doubleFlower)		echo "${ITEM} /item/plant/flower/doublePlant" ;;
		*elanor)		echo "${ITEM} /item/plant/flower" ;;
		*haradFlower)		echo "${ITEM} /item/plant/flower" ;;
		*niphredil)		echo "${ITEM} /item/plant/flower" ;;
		*simbelmyne)		echo "${ITEM} /item/plant/flower" ;;
		*shireHeather)		echo "${ITEM} /item/plant/flower" ;;
		*morgulShroom*)		echo "${ITEM} /item/plant/mushroom" ;;
		*[Ss]apling*)		echo "${ITEM} /item/plant/sapling" ;;
		*corruptMallorn)	echo "${ITEM} /item/plant/sapling" ;;
		*fallenLeaves*)		echo "${ITEM} /item/plant/leaves/fallen" ;;					# NEW CATEGORY
		*[Ll]eaves*)		echo "${ITEM} /item/plant/leaves" ;;
		*Seeds*)		echo "${ITEM} /item/plant/seed" ;;
		*athelas)		echo "${ITEM} /item/plant" ;;
		*berryBush)		echo "${ITEM} /item/plant" ;;
		*clover)		echo "${ITEM} /item/plant" ;;
		*dwarfHerb)		echo "${ITEM} /item/plant" ;;
		*fangornPlant)		echo "${ITEM} /item/plant" ;;
		*fangornRiverweed)	echo "${ITEM} /item/plant" ;;
		*flaxPlant)		echo "${ITEM} /item/plant" ;;
		*mordorThorn)		echo "${ITEM} /item/plant" ;;
		*mordorMoss)		echo "${ITEM} /item/plant" ;;
		*pipeweedPlant)		echo "${ITEM} /item/plant" ;;
		*deadMarshPlant)	echo "${ITEM} /item/plant" ;;

		*entDraught)		echo "${ITEM} /item/potion/drinkablePotion/positivePotion" ;;

		*)			echo "${ITEM}" >> ${UNCATEGORIZED_ITEMS} ;;
	esac
done \
| sort -t" " -k 2 \
> ${CATEGORIZED_LOTR_ITEMS}

NB_CATEGORIZED=`wc -l ${CATEGORIZED_LOTR_ITEMS} | sed -e "s/^ *//" -e "s/ .*//g"`
NB_UNCATEGORIZED=`wc -l ${UNCATEGORIZED_LOTR_ITEMS} | sed -e "s/^ *//" -e "s/ .*//g"`
PC_CATEGORIZED=`bc << EOF
(${NB_CATEGORIZED} * 100) / (${NB_CATEGORIZED} + ${NB_UNCATEGORIZED})
`

echo "${NB_CATEGORIZED} blocks & items categorized out of `expr ${NB_CATEGORIZED} + ${NB_UNCATEGORIZED}` (${PC_CATEGORIZED}%)"

