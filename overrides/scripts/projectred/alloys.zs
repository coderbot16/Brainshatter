// Changes the recipes for Project Red alloys.

// Add Electrotine Alloy Ingot to ingotBlueAlloy
<ore:ingotBlueAlloy>.add(<projectred-core:resource_item:104>);

// Red Alloy Ingot
mods.techreborn.alloySmelter.addRecipe(<projectred-core:resource_item:103>, <ore:ingotIron>, <minecraft:redstone>*4, 200, 16);
mods.techreborn.alloySmelter.addRecipe(<projectred-core:resource_item:103>, <ore:dustIron>, <minecraft:redstone>*4, 200, 16);
mods.techreborn.alloySmelter.addRecipe(<projectred-core:resource_item:103>, <ore:ingotCopper>, <minecraft:redstone>*4, 200, 16);
mods.techreborn.alloySmelter.addRecipe(<projectred-core:resource_item:103>, <ore:dustCopper>, <minecraft:redstone>*4, 200, 16);

// Electrotine Alloy Ingot
mods.techreborn.alloySmelter.addRecipe(<projectred-core:resource_item:104>, <ore:ingotSilver>, <projectred-core:resource_item:105>*4, 200, 16);
mods.techreborn.alloySmelter.addRecipe(<projectred-core:resource_item:104>, <ore:dustSilver>, <projectred-core:resource_item:105>*4, 200, 16);

// Red Iron Compound
recipes.removeByRecipeName("projectred-core:resource/red_iron_compound");
recipes.addShaped("projectred-core_resource/red_iron_compound", <projectred-core:resource_item:251>, [
	[null, <minecraft:redstone>, null],
	[<minecraft:redstone>, <minecraft:iron_ingot>, <minecraft:redstone>],
	[null, <minecraft:redstone>, null]
]);

// Electrotine Iron (allegedly) Compound
recipes.removeByRecipeName("projectred-core:resource/electrotine_iron_compound");
recipes.addShaped("projectred-core_resource/electrotine_iron_compound", <projectred-core:resource_item:252>, [
	[null, <projectred-core:resource_item:105>, null],
	[<projectred-core:resource_item:105>, <ore:ingotSilver>, <projectred-core:resource_item:105>],
	[null, <projectred-core:resource_item:105>, null]
]);


// Silicon Boule
mods.techreborn.alloySmelter.addRecipe(<projectred-core:resource_item:300>, <minecraft:sand>*8, <minecraft:coal>*8, 200, 16);

// Red Silicon Compound
recipes.removeByRecipeName("projectred-core:resource/red_silicon_compound");
recipes.addShaped("projectred-core_resource/red_silicon_compound", <projectred-core:resource_item:310>, [
	[null, <minecraft:redstone>, null],
	[<minecraft:redstone>, <projectred-core:resource_item:301>, <minecraft:redstone>],
	[null, <minecraft:redstone>, null]
]);

// Glowing Silicon Compound
recipes.removeByRecipeName("projectred-core:resource/glowing_silicon_compound");
recipes.addShaped("projectred-core_resource/glowing_silicon_compound", <projectred-core:resource_item:311>, [
	[null, <minecraft:glowstone_dust>, null],
	[<minecraft:glowstone_dust>, <projectred-core:resource_item:301>, <minecraft:glowstone_dust>],
	[null, <minecraft:glowstone_dust>, null]
]);

// Electrotine Silicon Compound
recipes.removeByRecipeName("projectred-core:resource/electrotine_silicon_compound");
recipes.addShaped("projectred-core_resource/electrotine_silicon_compound", <projectred-core:resource_item:312>, [
	[null, <projectred-core:resource_item:105>, null],
	[<projectred-core:resource_item:105>, <projectred-core:resource_item:301>, <projectred-core:resource_item:105>],
	[null, <projectred-core:resource_item:105>, null]
]);

// Infused Silicon
mods.techreborn.alloySmelter.addRecipe(<projectred-core:resource_item:320>, <projectred-core:resource_item:301>, <minecraft:redstone>*4, 200, 16);

// Glowing Silicon
mods.techreborn.alloySmelter.addRecipe(<projectred-core:resource_item:341>, <projectred-core:resource_item:301>, <minecraft:glowstone_dust>*4, 200, 16);

// Electro Silicon
mods.techreborn.alloySmelter.addRecipe(<projectred-core:resource_item:342>, <projectred-core:resource_item:301>, <projectred-core:resource_item:105>*4, 200, 16);
