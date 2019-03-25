val dustSteel = <thermalfoundation:material:96>;
val dustSmallSteel = <techreborn:smalldust:51>;
val ingotSteel = <thermalfoundation:material:160>;

mods.techreborn.blastFurnace.removeInputRecipe(dustSteel);
mods.techreborn.blastFurnace.removeInputRecipe(dustSmallSteel*4);

mods.techreborn.blastFurnace.addRecipe(ingotSteel, null, dustSteel, null, 100, 120, 1000);
mods.techreborn.blastFurnace.addRecipe(ingotSteel, null, dustSmallSteel*4, null, 100, 120, 1000);
