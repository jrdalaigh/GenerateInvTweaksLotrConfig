About GenerateInvTweaksLotrConfig
=================================
A small utility to generate an Inventory Tweaks Minecraft mod configuration file supporting the Lord of the Rings Minecraft Mod items.


Installation
============
No need to install this software. Run it once from where you unpacked it.


Usage
=====
Type "CategorizeLotrData.sh", then "InsertLotrDataInInvTweaksTree.sh".
Get the result in "InvTweaksTree-lotr.txt".

The list of LOTR mod items can be produced with another of my Minecraft utilities:
"ShowLocalMinecraftIds.sh -m lotr -i | cut -d";" -f3 > lotr244.items" (assuming the level.dat of your world is in the same directory)


Caveats
=======
Developed and tested only on FreeBSD 10.1.


Versions and changelog
======================
1.01    2015-09-26      Distinguish between melee, ranged and throwing weapons

1.00    2015-09-25      Initial release


License
=======
This open source software is distributed under a BSD license (see the "License" file for details).


Credits
=======
SamwiseFilmore on the Lord of the Rings Minecraft mod Wiki, for the original idea, suggestions and testing
http://lotrminecraftmod.wikia.com/wiki/User:SamwiseFilmore


Author
======
Hubert Tournier
September, 26 2015
