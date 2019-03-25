// Makes Electrotine yield similar quantities as Redstone in ore processing.

val ore = <projectred-exploration:ore:6>;
val dust = <projectred-core:resource_item:105>;

// Redstone Furnace => 4 [Replace]
mods.thermalexpansion.RedstoneFurnace.removeRecipe(ore);
mods.thermalexpansion.RedstoneFurnace.addRecipe(dust*4, ore, 2000);

// Pulverizer => 6 [Replace]
mods.thermalexpansion.Pulverizer.removeRecipe(ore);
mods.thermalexpansion.Pulverizer.addRecipe(dust*6, ore, 4000);

// Induction Smelter => 8
mods.thermalexpansion.InductionSmelter.addRecipe(dust*8, ore, <minecraft:sand>, 4000);

// Grinder => 8
mods.techreborn.grinder.addRecipe(dust*8, ore, 270, 3);

// Industrial Grinder => 10 (+2 tiny piles diamond dust)
mods.techreborn.industrialGrinder.addRecipe(dust*10, <techreborn:smalldust:16>*2, null, null, ore, null, <fluid:water>*1000, 100, 64);
