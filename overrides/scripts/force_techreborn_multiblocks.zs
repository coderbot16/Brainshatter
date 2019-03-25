// Purpose: Makes sure that other mods don't make TR multiblocks obsolete.

# Removes the steel recipe for the Induction furnace provided by Thermal Expansion, to avoid breaking progression.

mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:96>, <minecraft:sand>);                  // Sand + Steel Blend
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:iron_ingot>, <thermalfoundation:material:768>*4);         // Pulverized Coal + Iron Ingot
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:0>, <thermalfoundation:material:768>*4); // Pulverized Coal + Pulverized Iron
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:iron_ingot>, <thermalfoundation:material:769>*4);         // Pulverized Charcoal + Iron Ingot
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:0>, <thermalfoundation:material:769>*4); // Pulverized Charcoal + Pulverized Iron
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:iron_ingot>, <thermalfoundation:material:802>);           // Coal Coke + Iron Ingot
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:0>, <thermalfoundation:material:802>);   // Coal Coke + Pulverized Iron


# Remove Aluminum smelting
furnace.remove(<thermalfoundation:material:132>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:68>, <minecraft:sand>);                  // Sand + Pulverized Aluminum
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:ore:4>, <minecraft:sand>);                        // Sand + Aluminum Ore
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:ore:4>, <thermalfoundation:material:865>);        // Rich Slag + Aluminum Ore
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:ore:4>, <thermalfoundation:material:866>);        // Cinnabar + Aluminum Ore

// Remove pyrotheum recipes by only allowing aluminum to be made from blocks and nuggets.
recipes.remove(<techreborn:ingot:0>);
recipes.remove(<thermalfoundation:material:132>);

recipes.addShapeless("aluminum_ingot_from_blocks", <thermalfoundation:material:132>*9, [
	<thermalfoundation:storage:4>
]);

recipes.addShaped("aluminum_ingot_from_nuggets", <thermalfoundation:material:132>, [
	[<thermalfoundation:material:196>, <thermalfoundation:material:196>, <thermalfoundation:material:196>],
	[<thermalfoundation:material:196>, <thermalfoundation:material:196>, <thermalfoundation:material:196>],
	[<thermalfoundation:material:196>, <thermalfoundation:material:196>, <thermalfoundation:material:196>]
]);

# Remove Tungsten / Pyrotheum recipes
recipes.removeByRecipeName("thermalfoundation:ingot_3");
recipes.removeByRecipeName("thermalfoundation:ingot_4");
recipes.removeByRecipeName("thermalfoundation:ingot_5");

# Remove Hot Tungstensteel / Cryotheum recipes
mods.thermalexpansion.Transposer.removeFillRecipe(<techreborn:ingot:16>, <liquid:cryotheum>*200);

# Remove Iridium Alloy Plate from Compactor
mods.thermalexpansion.Compactor.removeStorageRecipe(<techreborn:ingot:22>);

// TODO: Distillation Tower
