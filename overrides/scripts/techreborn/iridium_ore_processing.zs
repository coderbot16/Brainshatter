// Rebalances Iridium ore processing.

val ore = <thermalfoundation:ore:7>;
val dust = <thermalfoundation:material:71>;
val ingot = <thermalfoundation:material:135>;
val nugget = <thermalfoundation:material:199>;

val richSlag = <thermalfoundation:material:865>;
val cinnabar = <thermalfoundation:material:866>;

// Remove existing processing recipes.
recipes.remove(dust);
recipes.remove(ingot);
recipes.remove(<techreborn:ingot:7>);
furnace.remove(ingot);
mods.thermalexpansion.Pulverizer.removeRecipe(ore);
mods.thermalexpansion.InductionSmelter.removeRecipe(ore, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.removeRecipe(ore, richSlag);
mods.thermalexpansion.InductionSmelter.removeRecipe(ore, cinnabar);
mods.techreborn.industrialGrinder.removeInputRecipe(ore);

// Add back ore processing.
mods.thermalexpansion.Pulverizer.addRecipe(ingot, ore, 4000, <thermalfoundation:material:70>, 10);
mods.techreborn.grinder.addRecipe(ingot, ore, 270, 3);
mods.techreborn.industrialGrinder.addRecipe(ingot, nugget*3, <techreborn:smalldust:38>*2, null, ore, null, <fluid:water>*1000, 100, 64);
mods.techreborn.industrialGrinder.addRecipe(ingot, nugget*6, <thermalfoundation:material:70>, null, ore, null, <fluid:fluidmercury>*1000, 100, 64);

// Restore ingot / block recipes.
recipes.addShapeless("iridium_ingot_from_blocks", <thermalfoundation:material:135>*9, [
	<thermalfoundation:storage:7>
]);

recipes.addShaped("iridium_ingot_from_nuggets", <thermalfoundation:material:135>, [
	[<thermalfoundation:material:199>, <thermalfoundation:material:199>, <thermalfoundation:material:199>],
	[<thermalfoundation:material:199>, <thermalfoundation:material:199>, <thermalfoundation:material:199>],
	[<thermalfoundation:material:199>, <thermalfoundation:material:199>, <thermalfoundation:material:199>]
]);
