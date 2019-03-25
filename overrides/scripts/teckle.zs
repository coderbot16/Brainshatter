// Purpose: Modify Teckle recipes to use stuff from other mods.

mods.teckle.alloy_furnace.removeAll();

// Crafting Table Recipes

mods.jei.JEI.removeAndHide(<teckle:nikolite>);
mods.jei.JEI.removeAndHide(<teckle:blade>);
mods.jei.JEI.removeAndHide(<teckle:siliconboule>);
recipes.remove(<teckle:siliconwafer:0>);
mods.jei.JEI.removeAndHide(<teckle:siliconwafer:1>);
mods.jei.JEI.removeAndHide(<teckle:siliconwafer:2>);

mods.jei.JEI.removeAndHide(<teckle:ingot:0>);
mods.jei.JEI.removeAndHide(<teckle:ingot:1>);
mods.jei.JEI.removeAndHide(<teckle:ingot:2>);
mods.jei.JEI.removeAndHide(<teckle:blueprint>);

recipes.remove(<teckle:tube.item>);
recipes.addShaped("item_tube_bronze", <teckle:tube.item>*8, [
	[<ore:ingotBronze>, <minecraft:glass>, <ore:ingotBronze>]
]);

recipes.addShaped("item_tube_brass", <teckle:tube.item>*8, [
	[<ore:ingotBrass>, <minecraft:glass>, <ore:ingotBrass>]
]);

mods.jei.JEI.removeAndHide(<teckle:alloyfurnace>);

val redSilicon = <projectred-core:resource_item:320>;
val electroSilicon = <projectred-core:resource_item:342>;
val electrotineAlloyIngot = <projectred-core:resource_item:104>;

recipes.remove(<teckle:filter>);
recipes.addShaped("teckle_filter", <teckle:filter>, [
	[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
	[<minecraft:gold_ingot>, <minecraft:piston>, <minecraft:gold_ingot>],
	[<minecraft:cobblestone>, redSilicon, <minecraft:cobblestone>]
]);

recipes.remove(<teckle:sortingmachine>);
recipes.addShaped("teckle_sorting_machine", <teckle:sortingmachine>, [
	[<minecraft:iron_ingot>, electroSilicon, <minecraft:iron_ingot>],
	[electrotineAlloyIngot, <teckle:filter>, electrotineAlloyIngot],
	[<minecraft:iron_ingot>, redSilicon, <minecraft:iron_ingot>]
]);

// TODO: Add Fabricator, Deployer, and Retriver recipes when fixed

mods.jei.JEI.removeAndHide(<teckle:beamquarry>);

recipes.remove(<teckle:compacted_metal:1>);
recipes.addShaped("red_alloy_block", <teckle:compacted_metal:1>, [
	[<ore:ingotRedAlloy>, <ore:ingotRedAlloy>, <ore:ingotRedAlloy>],
	[<ore:ingotRedAlloy>, <ore:ingotRedAlloy>, <ore:ingotRedAlloy>],
	[<ore:ingotRedAlloy>, <ore:ingotRedAlloy>, <ore:ingotRedAlloy>]
]);

recipes.remove(<teckle:compacted_metal:2>);
recipes.addShaped("blue_alloy_block", <teckle:compacted_metal:2>, [
	[electrotineAlloyIngot, electrotineAlloyIngot, electrotineAlloyIngot],
	[electrotineAlloyIngot, electrotineAlloyIngot, electrotineAlloyIngot],
	[electrotineAlloyIngot, electrotineAlloyIngot, electrotineAlloyIngot]
]);


mods.techreborn.alloySmelter.removeRecipe(<teckle:ingot:1>);
recipes.remove(<teckle:ingot:1>);
recipes.addShapeless("red_alloy_ingot_from_block", <projectred-core:resource_item:103>*9, [
	<teckle:compacted_metal:1>
]);

recipes.remove(<teckle:ingot:2>);
recipes.addShapeless("blue_alloy_ingot_from_block", <projectred-core:resource_item:104>*9, [
	<teckle:compacted_metal:2>
]);

<ore:ingotRedAlloy>.remove(<teckle:ingot:1>);
<ore:ingotBlueAlloy>.remove(<teckle:ingot:2>);
<ore:dyeCyan>.remove(<teckle:nikolite>);
