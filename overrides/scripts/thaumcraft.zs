// Purpose: Thaumcraft compatibility with rest of modpack

// Add Amber Bearing Stone to the Grinder and Industrial Grinder
mods.techreborn.grinder.addRecipe(<thaumcraft:amber>*2, <thaumcraft:ore_amber>, 270, 3);
mods.techreborn.industrialGrinder.addRecipe(<thaumcraft:amber>*3, null, null, null, <thaumcraft:ore_amber>, null, <fluid:water>*1000, 100, 64);

// Add shimmerleaf and cinderpearl processing
mods.techreborn.extractor.addRecipe(<thaumcraft:quicksilver>*3, <thaumcraft:shimmerleaf>, 400, 2);
mods.techreborn.extractor.addRecipe(<minecraft:blaze_powder>*3, <thaumcraft:cinderpearl>, 400, 2);

// TODO: Usage for vishroom - nausea potion?

// Hide duplicated brass block
mods.jei.JEI.removeAndHide(<thaumcraft:metal_brass>);

// TODO: Fully remove alchemical brass

// Quicksilver conversions

val mercuryCell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidmercury", Amount: 1000}});
mods.techreborn.centrifuge.addRecipe(<thaumcraft:quicksilver>, <techreborn:dynamiccell>, null, null, mercuryCell, null, 40, 5);

recipes.addShapeless("quicksilver_to_cells", mercuryCell, [<thaumcraft:quicksilver>, <techreborn:dynamiccell>]);

mods.thermalexpansion.Transposer.addExtractRecipe(<fluid:fluidmercury>*1000, <thaumcraft:quicksilver>, 1600);

// Hide duplicated nuggets
mods.jei.JEI.removeAndHide(<thaumcraft:nugget:0>);
mods.jei.JEI.removeAndHide(<thaumcraft:nugget:1>);
mods.jei.JEI.removeAndHide(<thaumcraft:nugget:2>);
mods.jei.JEI.removeAndHide(<thaumcraft:nugget:3>);
mods.jei.JEI.removeAndHide(<thaumcraft:nugget:4>);
mods.jei.JEI.removeAndHide(<thaumcraft:nugget:8>);

// Add native clusters to the Grinder
val dustIron = <thermalfoundation:material:0>;
mods.techreborn.grinder.addRecipe(dustIron*3, <thaumcraft:cluster:0>, 270, 3);

val dustGold = <thermalfoundation:material:1>;
mods.techreborn.grinder.addRecipe(dustGold*3, <thaumcraft:cluster:1>, 270, 3);

val dustCopper = <thermalfoundation:material:64>;
mods.techreborn.grinder.addRecipe(dustCopper*3, <thaumcraft:cluster:2>, 270, 3);

val dustTin = <thermalfoundation:material:65>;
mods.techreborn.grinder.addRecipe(dustTin*3, <thaumcraft:cluster:3>, 270, 3);

val dustSilver = <thermalfoundation:material:66>;
mods.techreborn.grinder.addRecipe(dustSilver*3, <thaumcraft:cluster:4>, 270, 3);

val dustLead = <thermalfoundation:material:67>;
mods.techreborn.grinder.addRecipe(dustLead*3, <thaumcraft:cluster:5>, 270, 3);

val dustCinnabar = <techreborn:dust:11>;
mods.techreborn.grinder.addRecipe(dustCinnabar*6, <thaumcraft:cluster:6>, 270, 3);

mods.thermalexpansion.Pulverizer.removeRecipe(<thaumcraft:cluster:6>);
mods.thermalexpansion.Pulverizer.addRecipe(<thermalfoundation:material:866>*2, <thaumcraft:cluster:6>, 3000, dustCinnabar*2, 100);

val gemQuartz = <minecraft:quartz>;
mods.techreborn.grinder.addRecipe(gemQuartz*4, <thaumcraft:cluster:7>, 270, 3);

// Hide duplicated plates
mods.jei.JEI.removeAndHide(<thaumcraft:plate:0>);
mods.jei.JEI.removeAndHide(<thaumcraft:plate:1>);

// Zombie brains to rotten flesh
mods.techreborn.grinder.addRecipe(<minecraft:rotten_flesh>*2, <thaumcraft:brain>, 270, 3);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:rotten_flesh>*2, <thaumcraft:brain>, 3000, <minecraft:rotten_flesh>, 10);

