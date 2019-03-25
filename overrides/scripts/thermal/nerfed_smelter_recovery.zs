// Induction Smelters recover too much metal in the context of the rolling machine. Therefore, they need to be nerfed.

val slag = <thermalfoundation:material:864>;

mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:light_weighted_pressure_plate>, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.addRecipe(<minecraft:gold_ingot>, <minecraft:light_weighted_pressure_plate>, <minecraft:sand>, 4000, slag, 10);

mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:minecart>, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.addRecipe(<minecraft:iron_ingot>*2, <minecraft:minecart>, <minecraft:sand>, 4000, slag, 20);

mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:chest_minecart>, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.addRecipe(<minecraft:iron_ingot>*2, <minecraft:chest_minecart>, <minecraft:sand>, 4000, slag, 20);

mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:furnace_minecart>, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.addRecipe(<minecraft:iron_ingot>*2, <minecraft:furnace_minecart>, <minecraft:sand>, 4000, slag, 30);

mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:hopper_minecart>, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.addRecipe(<minecraft:iron_ingot>*7, <minecraft:hopper_minecart>, <minecraft:sand>, 4000, slag, 20);

mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:bucket>, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.addRecipe(<minecraft:iron_ingot>*2, <minecraft:bucket>, <minecraft:sand>, 4000, slag, 15);

mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:iron_bars>, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.addRecipe(<minecraft:iron_nugget>*2, <minecraft:iron_bars>, <minecraft:sand>, 4000, slag, 5);

mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:heavy_weighted_pressure_plate>, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.addRecipe(<minecraft:iron_ingot>, <minecraft:heavy_weighted_pressure_plate>, <minecraft:sand>, 4000, slag, 10);

mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:iron_door>, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.addRecipe(<minecraft:iron_ingot>, <minecraft:iron_door>, <minecraft:sand>, 4000, slag, 10);

mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:rail>, <minecraft:sand>);
