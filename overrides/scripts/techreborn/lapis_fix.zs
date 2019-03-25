// Makes lapis/lazurite separate from blue dye.

val lapis = <ore:craftingLapis>;
lapis.add(<minecraft:dye:4>);
lapis.add(<techreborn:dust:28>);

// Note: no removal here since the advanced circuit doesn't appear to currently have a crafting recipe.
// Yikes!
recipes.addShaped("advanced_circuit", <techreborn:part:30>, [
	[<minecraft:redstone>, <minecraft:glowstone_dust>, <minecraft:redstone>],
	[lapis, <ore:circuitBasic>, lapis],
	[<minecraft:redstone>, <minecraft:glowstone_dust>, <minecraft:redstone>],
]);

// Lapotron Crystal

recipes.remove(<techreborn:lapotroncrystal>);
recipes.addShaped("lapotroncrystal", <techreborn:lapotroncrystal>, [
	[lapis, <ore:circuitBasic>, lapis],
	[lapis, <ore:energyCrystal>, lapis],
	[lapis, <ore:circuitBasic>, lapis]
]);

// Industrial Electrolyzer Lapis

mods.techreborn.industrialElectrolyzer.removeInputRecipe(<minecraft:dye:4>*29);

val dustAluminum = <thermalfoundation:material:68>;
val cellSilicon = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidsilicon", Amount: 1000}});
val cellCalcium = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidcalcium", Amount: 1000}});
val cellSodium = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidsodium", Amount: 1000}});

mods.techreborn.industrialElectrolyzer.addRecipe(dustAluminum*3, cellSilicon*3, cellCalcium*3, cellSodium*4, <techreborn:dust:28>*29, <techreborn:dynamiccell>*10, 1460, 100).setUseOreDict(false);

// 1 Lazurite Dust => 1 Lazurite Plate
mods.techreborn.compressor.removeInputRecipe(<minecraft:dye:4>);
mods.techreborn.compressor.addRecipe(<techreborn:plates:10>, <techreborn:dust:28>, 300, 4).setUseOreDict(false);
