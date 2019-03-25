// Purpose: Adds Red Rock to the Industrial Grinder.

val dustCalcite = <techreborn:dust:8>;
val dustClay = <techreborn:dust:12>;
val dustFlint = <techreborn:dust:22>;

mods.techreborn.industrialGrinder.addRecipe(dustCalcite*2, dustClay, dustFlint, null, <traverse:red_rock>*4, null, <fluid:water>*1000, 100, 64).setUseOreDict(false);
mods.techreborn.industrialGrinder.addRecipe(dustCalcite*2, dustClay, dustFlint, null, <traverse:red_rock_cobblestone>*4, null, <fluid:water>*1000, 100, 64).setUseOreDict(false);
