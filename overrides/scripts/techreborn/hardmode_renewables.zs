// Purpose: Makes solars, water mills, and wind mills cost a lot more, to encourage more creative energy generation.
// However, if one wants to build solars, this also encourages large automation setups, so a win-win.
// You can thank me later :P

// Silicon Plate
val siliconPlate = <teckle:siliconwafer>;
val siliconCell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidsilicon", Amount: 1000}});

mods.techreborn.blastFurnace.addRecipe(siliconPlate, <techreborn:dynamiccell>*2, siliconCell*2, null, 1000, 128, 1500);

// Sunnarium Plate
mods.techreborn.rollingMachine.addShaped(<advsolars:sunnarium_plate>, [
	[<ore:dustSmallDiamond>, <ore:ingotUranium>, <ore:dustSmallDiamond>],
	[<minecraft:glowstone_dust>, <techreborn:uumatter>, <minecraft:glowstone_dust>],
	[<ore:dustSmallDiamond>, <ore:ingotIridium>, <ore:dustSmallDiamond>]
]);

// Sunnarium
recipes.addShaped("sunnarium", <advsolars:sunnarium>, [
	[<minecraft:glowstone_dust>, <minecraft:glowstone_dust>, <minecraft:glowstone_dust>],
	[<techreborn:uumatter>, <techreborn:uumatter>, <techreborn:uumatter>],
	[<minecraft:glowstone_dust>, <minecraft:glowstone_dust>, <minecraft:glowstone_dust>]
]);

// Enriched Sunnarium
mods.techreborn.rollingMachine.addShaped(<advsolars:sunnarium_enriched>, [
	[<minecraft:glowstone>, <ore:ingotUranium>, <minecraft:glowstone>],
	[<ore:ingotUranium>, <advsolars:sunnarium>, <ore:ingotUranium>],
	[<minecraft:glowstone>, <ore:ingotUranium>, <minecraft:glowstone>]
]);

// Enriched Sunnarium Plate
mods.techreborn.rollingMachine.addShaped(<advsolars:sunnarium_enriched_plate>, [
	[<ore:plateIridiumAlloy>, <advsolars:sunnarium_enriched>, <ore:plateIridiumAlloy>],
	[<advsolars:sunnarium_enriched>, <advsolars:sunnarium_enriched>, <advsolars:sunnarium_enriched>],
	[<ore:plateIridiumAlloy>, <advsolars:sunnarium_enriched>, <ore:plateIridiumAlloy>]
]);

// Expensive Basic Solars (~5 daylight hours payback)
recipes.remove(<techreborn:solar_panel:0>);
recipes.addShaped("techreborn_solar_panel_basic", <techreborn:solar_panel:0>, [
	[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
	[siliconPlate, <ore:plateCarbon>, siliconPlate],
	[<ore:circuitBasic>, <techreborn:solid_fuel_generator>, <ore:circuitBasic>]
]);

// Expensive Hybrid Solars

recipes.remove(<techreborn:solar_panel:1>);
recipes.addShaped("techreborn_solar_panel_hybrid", <techreborn:solar_panel:1>, [
	[<ore:glassReinforced>, <ore:glassReinforced>, <ore:glassReinforced>],
	[<ore:circuitAdvanced>, <advsolars:sunnarium_plate>, <ore:circuitAdvanced>],
	[<ore:machineBlockAdvanced>, <techreborn:solar_panel:0>, <ore:machineBlockAdvanced>]
]);

// Expensive Advanced Solars

val sunnariumE = <advsolars:sunnarium_enriched>;

recipes.remove(<techreborn:solar_panel:2>);
recipes.addShaped("techreborn_solar_panel_advanced", <techreborn:solar_panel:2>, [
	[<ore:plateCarbon>, <minecraft:lapis_block>, <ore:plateCarbon>],
	[sunnariumE, <ore:plateIridiumAlloy>, sunnariumE],
	[<ore:circuitAdvanced>, <techreborn:solar_panel:1>, <ore:circuitAdvanced>]
]);

// Expensive Ultimate Solars

val coalChunk = <ic2:itemmisc:252>;
val plateSE = <advsolars:sunnarium_enriched_plate>;

recipes.remove(<techreborn:solar_panel:3>);
recipes.addShaped("techreborn_solar_panel_ultimate", <techreborn:solar_panel:3>, [
	[null, <minecraft:lapis_block>, null],
	[coalChunk, <techreborn:solar_panel:1>, coalChunk],
	[plateSE, coalChunk, plateSE]
]);

// Allow Advanced->Ultimate upgrade
recipes.addShaped("techreborn_solar_panel_ultimate_upgrade", <techreborn:solar_panel:3>, [
	[<techreborn:solar_panel:2>, <techreborn:solar_panel:2>, <techreborn:solar_panel:2>],
	[<techreborn:solar_panel:2>, <ore:circuitAdvanced>, <techreborn:solar_panel:2>],
	[<techreborn:solar_panel:2>, <techreborn:solar_panel:2>, <techreborn:solar_panel:2>]
]);

// Expensive Quantum Solars (~160 daylight hours payback)

val circuitEnergyFlow = <techreborn:part:0>;

recipes.remove(<techreborn:solar_panel:4>);
recipes.addShaped("techreborn_solar_panel_quantum", <techreborn:solar_panel:4>, [
	[circuitEnergyFlow, <techreborn:solar_panel:3>, circuitEnergyFlow],
	[plateSE, <minecraft:nether_star>, plateSE],
	[circuitEnergyFlow, <techreborn:solar_panel:3>, circuitEnergyFlow]
]);

// Water Mill needs aluminum
recipes.remove(<techreborn:water_mill>);
recipes.addShaped("techreborn_water_mill", <techreborn:water_mill>*2, [
	[null, <ore:plateAluminum>, null],
	[<ore:plateAluminum>, <techreborn:solid_fuel_generator>, <ore:plateAluminum>],
	[null, <ore:plateAluminum>, null]
]);

// Wind Mill already needs magnalium
