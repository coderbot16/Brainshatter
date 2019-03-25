// Adds uses to TR materials.

// Lazurite Dust is now a blue dye and substitute for lapis.
<ore:dyeBlue>.add(<techreborn:dust:28>);

// Sulfur cells can be created from sulfur
val sulfurCell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidsulfur", Amount: 1000}});
mods.techreborn.industrialElectrolyzer.addRecipe(sulfurCell, null, null, null, <techreborn:dynamiccell>, <ore:dustSulfur>, 20, 50);

// Carbon Fiber cells can be centrifuged into carbon fiber
val carbonFiberCell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidcarbonfiber", Amount: 1000}});
mods.techreborn.centrifuge.addRecipe(<techreborn:part:35>, <techreborn:dynamiccell>*8, null, null, carbonFiberCell*8, null, 400, 5);

// Carbon cells can be centrifuged into Carbon Fiber cells
val carbonCell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidcarbon", Amount: 1000}});

recipes.removeByRecipeName("techreborn:part_24"); // 8x Carbon Cell => Carbon Fiber
recipes.addShaped("techreborn_carbon_fiber_from_cells", carbonFiberCell*8, [
	[carbonCell, carbonCell, carbonCell],
	[carbonCell, null, carbonCell],
	[carbonCell, carbonCell, carbonCell]
]);

// Distillation Tower can now distill biomass into ethanol, wood gas, and glyceryl.
val biomassCell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "biomass", Amount: 1000}});
val ethanolCell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "bio.ethanol", Amount: 1000}});
val woodGasCell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "woodgas", Amount: 1000}});
val glycerylCell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidglyceryl", Amount: 1000}});

mods.techreborn.distillationTower.addRecipe(ethanolCell*8, woodGasCell*8, glycerylCell*1, null, biomassCell*16, <techreborn:dynamiccell>*1, 1400, 13);

// Flint dust for crafting Industrial TNT

val flintDust = <techreborn:dust:22>;

recipes.addShaped("itnt_flint_dust_h", <ic2:blockexplosive>*5, [
	[flintDust, flintDust, flintDust],
	[<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>],
	[flintDust, flintDust, flintDust]
]);

recipes.addShaped("itnt_flint_dust_v", <ic2:blockexplosive>*5, [
	[flintDust, <minecraft:tnt>, flintDust],
	[flintDust, <minecraft:tnt>, flintDust],
	[flintDust, <minecraft:tnt>, flintDust]
]);

// Sulfuric Acid / Lead / Mercury Batteries
val sulfuricAcidCell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidsulfuricacid", Amount: 1000}});
val mercuryCell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidmercury", Amount: 1000}});

recipes.addShaped("sulfuric_acid_su_battery", <ic2:itembatsu>*32, [
	[<ic2:itemcable:1>],
	[sulfuricAcidCell],
	[<ore:dustLead>]
]);

recipes.addShaped("sulfuric_acid_su_battery_reversed", <ic2:itembatsu>*32, [
	[<ic2:itemcable:1>],
	[<ore:dustLead>],
	[sulfuricAcidCell]
]);

recipes.addShaped("mercury_su_battery", <ic2:itembatsu>*32, [
	[<ic2:itemcable:1>],
	[mercuryCell],
	[<minecraft:redstone>]
]);

recipes.addShaped("mercury_su_battery_reversed", <ic2:itembatsu>*32, [
	[<ic2:itemcable:1>],
	[<minecraft:redstone>],
	[mercuryCell]
]);

recipes.addShaped("sulfuric_acid_battery", <techreborn:rebattery>*2, [
	[null, <ic2:itemcable:1>, null],
	[<ore:ingotTin>, <ore:dustLead>, <ore:ingotTin>],
	[<ore:ingotTin>, sulfuricAcidCell, <ore:ingotTin>]
]);

// Bone Meal to Phosphorus
val calciumCell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidcalcium", Amount: 1000}});
val phosphorusDust = <techreborn:dust:37>;

mods.techreborn.industrialElectrolyzer.removeInputRecipe(<minecraft:dye:15>);
mods.techreborn.industrialElectrolyzer.addRecipe(calciumCell, phosphorusDust, null, null, <minecraft:dye:15>*6, <techreborn:dynamiccell>, 20, 106).setUseOreDict(false);

// Forestry Fertilizer Crafting

recipes.addShapeless("forestry_craftable_fertilizer_mulch", <forestry:fertilizer_compound>*4, [
	<ore:dustPhosphorous>,
	<ore:dustSaltpeter>,
	<ore:dustCalcite>,
	<forestry:mulch>
]);

recipes.addShapeless("forestry_craftable_fertilizer_compost", <forestry:fertilizer_compound>*4, [
	<ore:dustPhosphorous>,
	<ore:dustSaltpeter>,
	<ore:dustCalcite>,
	<forestry:fertilizer_bio>
]);

// Manganese to Brown Pigment

furnace.addRecipe(<thermalfoundation:dye:3>, <techreborn:smalldust:31>);

// Chlorite bleaches Sawdust to Paper

val dustWood = <thermalfoundation:material:800>;
mods.thermalexpansion.Transposer.addFillRecipe(<minecraft:paper>, dustWood, <liquid:fluidchlorite> * 125, 400);

// Nitrogendioxide + Potassium makes Niter

val dustSaltpeter = <thermalfoundation:material:772>;
val potassiumCell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidpotassium", Amount: 1000}});
val nitrogendioxideCell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidnitrogendioxide", Amount: 1000}});

mods.techreborn.chemicalReactorRecipe.addRecipe(dustSaltpeter*5, potassiumCell, nitrogendioxideCell, 235, 32);

// TODO: andesite/diorite/granite dust
