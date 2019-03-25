// Purpose: Prevents dupes with obsidian returning 9 plates instead of 4.

val plateObsidian = <techreborn:plates:9>;

mods.techreborn.compressor.removeInputRecipe(<minecraft:obsidian>);
mods.techreborn.compressor.addRecipe(plateObsidian*4, <minecraft:obsidian>, 300, 5);
