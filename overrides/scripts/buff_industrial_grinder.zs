// Improves some Industrial Grinder outputs to compete with the 3x ore processing of Thermal Expansion.

// Coal Ore
mods.techreborn.industrialGrinder.removeInputRecipe(<minecraft:coal_ore>);
mods.techreborn.industrialGrinder.addRecipe(<minecraft:coal>*3, <thermalfoundation:material:768>, null, null, <minecraft:coal_ore>, null, <fluid:water>*1000, 100, 64);
mods.techreborn.industrialGrinder.addRecipe(<minecraft:coal>*4, <thermalfoundation:material:768>, null, null, <minecraft:coal_ore>, null, <fluid:fluidmercury>*1000, 100, 64);

// Emerald Ore
mods.techreborn.industrialGrinder.removeInputRecipe(<minecraft:emerald_ore>);
mods.techreborn.industrialGrinder.addRecipe(<minecraft:emerald>, <techreborn:smalldust:18>*6, <techreborn:smalldust:36>*2, null, <minecraft:emerald_ore>, null, <fluid:water>*1000, 100, 64);

// Nether Quartz Ore
mods.techreborn.industrialGrinder.removeInputRecipe(<minecraft:quartz_ore>);
mods.techreborn.industrialGrinder.addRecipe(<minecraft:quartz>*4, <thermalfoundation:material:771>, null, null, <minecraft:quartz_ore>, null, <fluid:water>*1000, 100, 64);

// Apatite Ore
mods.techreborn.industrialGrinder.removeInputRecipe(<forestry:resources:0>);
mods.techreborn.industrialGrinder.addRecipe(<forestry:apatite>*16, <techreborn:dust:37>*2, <thermalfoundation:material:771>, null, <forestry:resources:0>, null, <fluid:water>*1000, 100, 64);

// Pyrite Ore
mods.techreborn.industrialGrinder.removeInputRecipe(<techreborn:ore:5>);
mods.techreborn.industrialGrinder.addRecipe(<techreborn:dust:39>*5, <thermalfoundation:material:771>*2, <techreborn:smalldust:27>*2, null, <techreborn:ore:5>, null, <fluid:water>*1000, 100, 64);

// Tungsten Ore
mods.techreborn.industrialGrinder.removeInputRecipe(<techreborn:ore:8>);
mods.techreborn.industrialGrinder.addRecipe(<techreborn:dust:55>*3, <techreborn:smalldust:27>*3, <techreborn:smalldust:31>*3, null, <techreborn:ore:8>, null, <fluid:water>*1000, 100, 64);
