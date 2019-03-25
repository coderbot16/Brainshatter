// Remove | Ingots=>Block | {Copper / Bronze / Silver}
// Keep   | Ingots=>Block | Uranium
// Remove | Ingots=>Block | {Charcoal, Tin}
// Remove | Block=>Ingots | {Machine/Refined Iron, Copper, Tin, Bronze, Silver}
// Keep   | Block=>Ingots | Uranium
// Remove | Block=>Ingots | Charcoal
// Remove | Bronze Dust Mixing
// Keep   | Log => Wood   | Rubber
// Keep   | 2x Construction Foam Mixture
// Keep   | 13x Pixel Foam Recipes
// Remove | 3x Luminator Crafting
// Modify | Reinforced Stone

recipes.addShaped("reinforced_stone", <ic2:blockutility:2>*8, [
	[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
	[<minecraft:stone>, <ore:plateAdvancedAlloy>, <minecraft:stone>],
	[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]
]);

// Remove | 2x Reinforced Glass
// Keep   | Reinforced Door
// Keep   | Rubber Sheet
// Keep   | Scaffold
// Modify | Iron Scaffold

recipes.addShaped("iron_scaffold", <ic2:blockironscaffold>*16, [
	[<ore:ingotRefinedIron>, <ore:ingotRefinedIron>, <ore:ingotRefinedIron>],
	[null, <ore:fenceIron>, null],
	[<ore:fenceIron>, null, <ore:fenceIron>]
]);

// Keep   | Iron Fence
// Modify | Torch

recipes.addShaped("sap_torch", <minecraft:torch>*4, [
	[<techreborn:part:31>, null],
	[<minecraft:stick>, null]
]);

// Keep   | Reinforced Brick
// Modify | 2x Cracked Reinforced Stone

mods.techreborn.grinder.addRecipe(<ic2:blockutility:6>, <ic2:blockutility:2>, 300, 20); // Reinforced Stone => Cracked Reinforced Stone

// Remove | Clear Reinforced Glass
// Modify | Iridium Stone

val reinforcedStone = <ic2:blockutility:2>;
recipes.addShaped("iridium_stone", <ic2:blockpersonal:8>, [
	[reinforcedStone, reinforcedStone, reinforcedStone],
	[reinforcedStone, <ore:plateIridiumAlloy>, reinforcedStone],
	[reinforcedStone, reinforcedStone, reinforcedStone]
]);

// Modify | Advanced Comparator

recipes.addShapeless("advanced_comparator", <ic2:advcomparator>, [
	<minecraft:comparator>,
	<ore:circuitBasic>
]);

// Keep   | Redstibe Comparator
// Keep   | 2x Industrial TNT
// Modify | Nuke

val reenriched_uranium = <ic2:itemmisc:550>;
val uranium_block = <ic2:blockmetal:10>;
recipes.addShaped("nuke_hardmode", <ic2:blockexplosive:1>, [
	[reenriched_uranium, <ore:circuitAdvanced>, reenriched_uranium],
	[uranium_block, <ore:machineBlockAdvanced>, uranium_block],
	[reenriched_uranium, <ore:circuitAdvanced>, reenriched_uranium]
]);

// Keep   | Rail
// Keep   | Piston
// Keep   | Hopper
// Modify | Sticky Pistonr

recipes.addShaped("sap_sticky_piston", <minecraft:sticky_piston>, [
	[<techreborn:part:31>],
	[<minecraft:piston>]
]);

// Modify | Mining Pipe

recipes.addShaped("mining_pipe", <ic2:blockminingpipe>*8, [
	[<ore:ingotRefinedIron>, null, <ore:ingotRefinedIron>],
	[<ore:ingotRefinedIron>, null, <ore:ingotRefinedIron>],
	[<ore:ingotRefinedIron>, <techreborn:treetap>, <ore:ingotRefinedIron>]
]);

// Keep   | 2x Construction Foam Wall
// Keep   | 2x Construction Foam Wool
// Keep   | Cable Recipes
// Modify | EU-Detector Cable

recipes.addShaped("eu_detector_cable", <ic2:itemcable:11>, [
	[null, <ore:circuitBasic>, null],
	[<minecraft:redstone>, <ic2:itemcable:8>, <minecraft:redstone>],
	[null, <minecraft:comparator>, null]
]);

// Keep   | EU-Splitter Cable
// Remove | Plasma Cable
// Remove | 2x Generator

recipes.addShaped("geothermal_generator", <ic2:blockgenerator:1>, [
	[<ore:blockGlass>, <techreborn:dynamiccell>, <ore:blockGlass>],
	[<ore:blockGlass>, <techreborn:dynamiccell>, <ore:blockGlass>],
	[<ore:ingotRefinedIron>, <techreborn:solid_fuel_generator>, <ore:ingotRefinedIron>]
]);

// Remove | Water Mill, Solar Panel, Wind Mill
// Modify | Nuclear Reactor

recipes.addShaped("nuclear_reactor", <ic2:blockgenerator:5>, [
	[null, <ore:circuitAdvanced>, null],
	[<ic2:blockchambers:0>, <ic2:blockchambers:0>, <ic2:blockchambers:0>],
	[null, <techreborn:solid_fuel_generator>, null]
]);

// Modify | Steam Reactor

recipes.addShaped("steam_reactor", <ic2:blockgenerator:6>, [
	[<ore:plateAdvancedAlloy>, <ore:circuitAdvanced>, <ore:plateAdvancedAlloy>],
	[<ic2:blockchambers:1>, <ic2:blockchambers:1>, <ic2:blockchambers:1>],
	[<ore:plateAdvancedAlloy>, <ic2:blockgenerator:5>, <ore:plateAdvancedAlloy>]
]);

// Modify | Steam Turbine

recipes.addShapeless("basic_steam_turbine", <ic2:blockgenerator:7>, [
	<techreborn:gas_turbine>, 
	<techreborn:water_mill>
]);

// Modify | Reactor Chamber

val denseCopperPlate = <ic2:itemmisc:259>;

recipes.addShaped("reactor_chamber", <ic2:blockchambers:0>, [
	[null, denseCopperPlate, null],
	[denseCopperPlate, <ore:machineBlockBasic>, denseCopperPlate],
	[null, denseCopperPlate, null]
]);

// Modify | Steam Reactor Chamber

recipes.addShaped("steam_reactor_chamber", <ic2:blockchambers:1>, [
	[<ore:plateAdvancedAlloy>, <ore:glassReinforced>, <ore:plateAdvancedAlloy>],
	[<ore:glassReinforced>,    <ic2:blockchambers:0>, <ore:glassReinforced>],
	[<ore:plateAdvancedAlloy>, <ore:glassReinforced>, <ore:plateAdvancedAlloy>]
]);

// Modify | Solar Turbine

recipes.addShaped("solar_turbine", <ic2:blockgenerator:9>, [
	[<ore:plateIron>, <techreborn:solar_panel:0>, <ore:plateIron>],
	[<buildcraftfactory:tank>, <minecraft:water_bucket>, <buildcraftfactory:tank>],
	[<ore:plateIron>, <techreborn:gas_turbine>, <ore:plateIron>]
]);

// Remove | Liquid Fuel Generator, Slag Generator

// Modify | Wave Generator

recipes.addShaped("wave_generator", <ic2:blockgenerator:12>, [
	[<ore:ingotRefinedIron>, <ore:plateAdvancedAlloy>, <ore:circuitBasic>],
	[<ore:ingotRefinedIron>, <techreborn:water_mill>, <techreborn:water_mill>],
	[<ore:ingotRefinedIron>, <ore:plateAdvancedAlloy>, <ore:circuitBasic>]
]);

// Modify | Ocean Generator

recipes.addShaped("ocean_generator", <ic2:blockgenerator:13>, [
	[<ore:ingotRefinedIron>, <ore:plateAdvancedAlloy>, <ore:ingotRefinedIron>],
	[<ic2:blockgenerator:12>, <techreborn:water_mill>, <ic2:blockgenerator:12>],
	[<ore:ingotRefinedIron>, <ore:plateAdvancedAlloy>, <ore:ingotRefinedIron>]
]);

// Modify | Fuel Boiler

recipes.addShaped("fuel_boiler", <ic2:blockgenerator:14>, [
	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
	[<ore:plateSteel>, null, <ore:plateSteel>],
	[<ore:circuitAdvanced>, <techreborn:diesel_generator>, <ore:circuitAdvanced>]
]);

// Remove | LV Solar Panel
// Remove | MV Solar Panel
// Remove | HV Solar Panel
// Remove | LV Water Mill
// Remove | MV Water Mill
// Remove | HV Water Mill
// Remove | Small Electric Flux Generator
// Remove | Medium Electric Flux Generator
// Remove | Big Electric Flux Generator
// Remove | Machine Block
// Remove | 2x Iron Furnace
// Remove | Electric Furnace
// Remove | 2x Macerator
// Remove | Extractor
// Remove | Compressor
// Modify | Canning Machine

recipes.addShaped("canning_machine", <ic2:blockmachinelv:6>, [
	[<ore:ingotTin>, <ore:circuitBasic>, <ore:ingotTin>],
	[<ore:ingotTin>, <ore:machineBlockBasic>, <ore:ingotTin>],
	[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>]
]);

// Remove | Recycler
// Remove | Electrolyzer
// Modify | Crop Scanner

val cropnalyzer = <ic2:itemcropanalyzer>;
recipes.addShaped("crop_scanner", <ic2:blockmachinelv:9>, [
	[null, null, null],
	[null, cropnalyzer, null],
	[<ore:circuitBasic>, <ore:machineBlockBasic>, <ore:circuitBasic>]
]);

// Modify | Magnetizer

recipes.addShaped("magnetizer", <ic2:blockmachinelv:10>, [
	[<minecraft:redstone>, <ore:fenceIron>, <minecraft:redstone>],
	[<minecraft:redstone>, <ore:machineBlockBasic>, <minecraft:redstone>],
	[<minecraft:redstone>, <ore:fenceIron>, <minecraft:redstone>]
]);

// Modify | Pump

recipes.addShaped("ic2pump", <ic2:blockmachinelv:11>, [
	[<techreborn:dynamiccell>, <ore:circuitBasic>, <techreborn:dynamiccell>],
	[<techreborn:dynamiccell>, <ore:machineBlockBasic>, <techreborn:dynamiccell>],
	[<ic2:blockminingpipe>, <techreborn:treetap>, <ic2:blockminingpipe>]
]);

// Modify | Miner

recipes.addShaped("ic2miner", <ic2:blockmachinelv:12>, [
	[<ore:circuitBasic>, <ore:machineBlockBasic>, <ore:circuitBasic>],
	[null, <ic2:blockminingpipe>, null],
	[null, <ic2:blockminingpipe>, null]
]);

// Modify | Crop-Matron

recipes.addShaped("crop_matron", <ic2:blockmachinelv:13>, [
	[<ore:circuitBasic>, <minecraft:chest>, <ore:circuitBasic>],
	[<ic2:itemcrop>, <ore:machineBlockBasic>, <ic2:itemcrop>],
	[<ic2:itemcrop>, <ic2:itemcrop>, <ic2:itemcrop>]
]);

// Modify | Sound Beacon

var frequencyTransmitter = <ic2:itemfreq>;
recipes.addShaped("sound_beacon", <ic2:blockmachinelv:14>, [
	[frequencyTransmitter, <ore:ingotCopper>, frequencyTransmitter],
	[<ore:ingotCopper>, <ore:machineBlockBasic>, <ore:ingotCopper>],
	[<ore:reBattery>, <ore:ingotCopper>, <ore:reBattery>]
]);

// Remove | Stone Macerator
// Remove | Wood Gasificator
// Modify | 2x Electric Wood Gasificator

recipes.addShaped("electric_wood_gasificator", <ic2:blockmachinelv2:1>, [
	[<ore:plateAdvancedAlloy>, <techreborn:dynamiccell>, <ore:plateAdvancedAlloy>],
	[<ore:plateCarbon>, <techreborn:extractor>, <ore:plateCarbon>],
	[<ore:plateAdvancedAlloy>, <techreborn:electric_furnace>, <ore:plateAdvancedAlloy>]
]);

// Remove | Rare Earth Extractor
// Modify | Crop Library

recipes.addShaped("crop_library", <ic2:blockmachinelv2:3>, [
	[<ic2:itemcrop>, <ore:reBattery>, <ic2:itemcrop>],
	[<techreborn:lamp_led>, cropnalyzer, <ic2:itemobscurator>],
	[<ore:circuitBasic>, <ore:machineBlockBasic>, <ore:circuitBasic>]
]);

// Remove | Machine Buffer
// Remove | Machine Tank
// Remove | Industrial Worktable
// Remove | Saw Mill
// Remove | Advanced Machine Block
// Modify | Induction Furnace

recipes.addShaped("ic2_induction_furnace", <ic2:blockmachinemv:1>, [
	[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
	[<ore:ingotCopper>, <techreborn:electric_furnace>, <ore:ingotCopper>],
	[<ore:ingotCopper>, <ore:machineBlockAdvanced>, <ore:ingotCopper>]
]);

// Remove | 2x Rotary Macerator
// Remove | Centrifugal Extractor
// Remove | Singularity Compressor
// Remove | Vacuum Canner
// Remove | Compacting Recycler
// Remove | Charged Electrolyzer
// Modify | Ore Probe

val coolantCell10k = <ic2:itemheatstorage:0>;
val computerMonitor = <techreborn:part:24>;
val miner = <ic2:blockmachinelv:12>;

recipes.addShaped("ore_probe", <ic2:blockmachinemv:8>, [
	[coolantCell10k, <ore:circuitAdvanced>, coolantCell10k],
	[computerMonitor, <ore:machineBlockAdvanced>, computerMonitor],
	[null, miner, null]
]);

// Modify | Tesla Coil

recipes.addShaped("tesla_coil", <ic2:blockmachinemv:9>, [
	[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>],
	[<minecraft:redstone>, <techreborn:mv_transformer>, <minecraft:redstone>],
	[<ore:ingotRefinedIron>, <ore:circuitBasic>, <ore:ingotRefinedIron>]
]);

// Modify | Reactor Planner

val nuclearReactor = <ic2:blockgenerator:5>;

recipes.addShaped("reactor_planner", <ic2:blockmachinemv:10>, [
	[<ore:circuitAdvanced>, computerMonitor, <ore:circuitAdvanced>],
	[<ic2:blockchambers:0>, nuclearReactor, <ic2:blockchambers:0>],
	[<ore:circuitAdvanced>, <ore:machineBlockAdvanced>, <ore:circuitAdvanced>]
]);

// Modify | Crop Harvester

val cropMatron = <ic2:blockmachinelv:13>;

recipes.addShaped("crop_harvester", <ic2:blockmachinemv:11>, [
	[<minecraft:hopper>, cropnalyzer, <minecraft:hopper>],
	[<minecraft:hopper>, cropMatron, <minecraft:hopper>],
	[<ore:circuitAdvanced>, <ore:machineBlockAdvanced>, <ore:circuitAdvanced>]
]);

// Modify | Overclocked Pump

val ic2Pump = <ic2:blockmachinelv:11>;
val overclockerUpgrade = <ic2:ic2upgrades:0>;
recipes.addShaped("overclocked_pump", <ic2:blockmachinemv:12>, [
	[coolantCell10k, overclockerUpgrade, coolantCell10k],
	[overclockerUpgrade, ic2Pump, overclockerUpgrade],
	[coolantCell10k, <ore:machineBlockAdvanced>, coolantCell10k]
]);

// Modify | Ranged Pump

val ic2OverclockedPump = <ic2:blockmachinemv:12>;
recipes.addShaped("ranged_pump", <ic2:blockmachinemv:13>, [
	[<ore:plateAdvancedAlloy>, ic2OverclockedPump, <ore:plateAdvancedAlloy>],
	[<ore:circuitAdvanced>, miner, <ore:circuitAdvanced>],
	[<ore:plateAdvancedAlloy>, ic2OverclockedPump, <ore:plateAdvancedAlloy>]
]);

// Modify | Terraformer

val tfbpEmpty = <ic2:itemmisc:401>;
recipes.addShaped("terraformer", <ic2:blockmachinehv:0>, [
	[<minecraft:glowstone_dust>, tfbpEmpty, <minecraft:glowstone_dust>],
	[<minecraft:dirt>, <ore:machineBlockAdvanced>, <minecraft:dirt>],
	[<minecraft:glowstone_dust>, <minecraft:dirt>, <minecraft:glowstone_dust>]
]);

// Remove | Mass Fabricator
// Modify | Teleporter

val glassCable = <ic2:itemcable:9>;
recipes.addShaped("teleporter", <ic2:blockmachinehv:2>, [
	[<ore:circuitAdvanced>, frequencyTransmitter, <ore:circuitAdvanced>],
	[glassCable, <ore:machineBlockAdvanced>, glassCable],
	[<ore:circuitAdvanced>, <ore:craftingIndustrialDiamond>, <ore:circuitAdvanced>]
]);

// Remove | Uranium Enricher
// Remove | Electric Enchanter
// Remove | Plasmafier
// Modify | Teleporter Hub

val teleporter = <ic2:blockmachinehv:2>;
recipes.addShaped("teleporter_hub", <ic2:blockmachinehv:6>, [
	[teleporter, <techreborn:lapotronicorb>, teleporter],
	[<techreborn:lapotronicorb>, <techreborn:part:1>, <techreborn:lapotronicorb>],
	[teleporter, <techreborn:lapotronicorb>, teleporter]
]);

// Remove | BatBox
// Remove | 2x MFE
// Remove | MFSU
// Remove | Battery Station
// Remove | PESU
// Remove | LV-Transformer
// Remove | 2x MV-Transformer
// Remove | HV-Transformer
// Modify | EV-Transformer

recipes.addShaped("ev_transformer", <ic2:blockelectric:11>, [
	[null, <ore:ingotSilver>, null],
	[<ore:circuitAdvanced>, <techreborn:hv_transformer>, <ore:lapotronCrystal>],
	[null, <ore:ingotSilver>, null]
]);

// Remove | IV-Transformer
// Modify | Adjustable-Transformer

recipes.addShaped("adjustable_transformer", <ic2:blockelectric:12>, [
	[null, <techreborn:lv_transformer>, null],
	[null, <ore:circuitAdvanced>, null],
	[null, <ic2:blockelectric:11>, null]
]);

// Remove | Static Charge Pad
// Remove | Crystalizor Charge Pad
// Remove | Lapotronic Charge Pad
// Remove | Fission Charge Pad
// Modify | Trade-O-Mat

recipes.addShaped("trade-o-mat", <ic2:blockpersonal:0>, [
	[null, null, null],
	[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>],
	[<minecraft:chest>, <ore:machineBlockBasic>, <minecraft:chest>]
]);

// Modify | Fluid-O-Mat

recipes.addShaped("fluid-o-mat", <ic2:blockpersonal:1>, [
	[null, null, null],
	[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
	[ic2Pump, <ore:machineBlockBasic>, ic2Pump]
]);

// Modify | Energy-O-Mat

val copperCable = <ic2:itemcable:1>;
recipes.addShaped("energy-o-mat", <ic2:blockpersonal:2>, [
	[null, null, null],
	[<minecraft:redstone>, <ore:reBattery>, <minecraft:redstone>],
	[copperCable, <ore:machineBlockBasic>, copperCable]
]);

// Modify | Personal Safe

recipes.addShaped("personal_safe", <ic2:blockpersonal:3>, [
	[null, <ore:circuitBasic>, null],
	[null, <ore:machineBlockBasic>, null],
	[null, <minecraft:chest>, null]
]);

// Keep   | Personal Tank
// Remove | Personal Batbox
// Remove | Personal MFE
// Remove | Personal MFSU
// Remove | Electronic Circuit
// Remove | Advanced Circuit
// Remove | Raw Carbon Fiber
// Remove | Carbon Mesh
// Keep   | Coal Ball
// Keep   | 3x Coal Chunk
// Remove | Iron Dust from Copper/Tin
// Remove | Iridium Plate
// Remove | Mixed Metal Ingot
// Remove | Scrap Metal Ingot
// Remove | Raw Obsidian Blade
// Remove | Turbine Blade
// Keep   | 10x Industrial Credit
// Keep   | 2x Rubber Boat
// Modify | Carbon Boat

recipes.addShaped("carbon_boat", <ic2:itemic2boats:0>, [
	[null, null, null],
	[<ore:plateCarbon>, <minecraft:boat>, <ore:plateCarbon>],
	[<ore:plateCarbon>, <ore:plateCarbon>, <ore:plateCarbon>]
]);

// Modify | Electic Boat

recipes.addShaped("electric_boat", <ic2:itemic2boats:3>, [
	[null, null, null],
	[<ore:ingotRefinedIron>, <ic2:itemic2boats:0>, <ore:circuitBasic>],
	[<ore:ingotRefinedIron>, <ore:ingotRefinedIron>, <techreborn:water_mill>]
]);

// Remove | Scrap Box
// Modify | Sticky Dynamite

recipes.addShaped("sticky_dynamite", <ic2:itemdynamites:1>*8, [
	[<ic2:itemdynamites:0>, <ic2:itemdynamites:0>, <ic2:itemdynamites:0>],
	[<ic2:itemdynamites:0>, <techreborn:part:31>, <ic2:itemdynamites:0>],
	[<ic2:itemdynamites:0>, <ic2:itemdynamites:0>, <ic2:itemdynamites:0>]
]);

// Keep   | Dynamite
// Remove | Rare Earth Chunk
// Remove | Plasma Core
// Remove | Memory Stick
// Keep   | Glowstone Dust
// Remove | Gunpowder [from Coal + Redstone]
// Remove | Bucket [from Tin]
// Modify | Organic Mesh

recipes.addShaped("organic_mesh", <ic2:itemmisc:353>, [
	[<ic2:itemmisc:351>, <ic2:itemmisc:351>, <ic2:itemmisc:351>],
	[<ic2:itemmisc:351>, <techreborn:part:31>, <ic2:itemmisc:351>],
	[<ic2:itemmisc:351>, <ic2:itemmisc:351>, <ic2:itemmisc:351>]
]);

// Keep   | Bio Ball
// Remove | Bio Chunk
// Compat | Empty Cell

recipes.addShapeless("empty_cell_tr_to_ic2", <ic2:itemcellempty>, [
	<techreborn:dynamiccell>
]);

// Keep   | Fuel Can
// Keep   | 17x Plantball
// TODO: H Coal Dust, H Charcoal Dust, H Coal Cell
// TODO: Bio Cell
// Keep   | Tin Can
// Modify | 2x Inactive Fuel Cell

recipes.addShapeless("inactive_fuel_cell", <ic2:iteminactivefuelcell>, [
	<ore:dustClay>,
	<ore:dustNetherrack>,
	<ore:dustNetherrack>,
	<ore:dustNetherrack>,
	<ore:dustNetherrack>,
	<ore:dustNetherrack>,
	<ore:dustNetherrack>,
	<ore:dustNetherrack>,
	<ore:dustNetherrack>
]);

// Remove | Obsidian [From Cells]
// Modify | Obsidian [From Magma]

var waterCell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "water", Amount:1000}});
recipes.addShapeless("obsidian_from_magma", <minecraft:obsidian>, [
	waterCell,
	waterCell,
	<minecraft:magma>,
	<minecraft:magma>
]);

// Remove | Water Cell
// Remove | Lava Cell
// Keep   | Crop Sticks
// Modify | 2x Fertilizer

recipes.addShapeless("fertilizer_from_bonemeal", <ic2:itemmisc:151>*2, [
	<ore:itemScrap>,
	<minecraft:dye:15>
]);

recipes.addShapeless("fertilizer_from_scrap", <ic2:itemmisc:151>*2, [
	<ore:itemScrap>,
	<ore:itemScrap>,
	<ic2:itemmisc:151>
]);

// Modify | Weed-EX

recipes.addShaped("weed-ex", <ic2:itemweedex>, [
	[null, <minecraft:redstone>, null],
	[null, <ic2:itemmisc:150>, null],
	[null, <techreborn:dynamiccell>, null]
]);

// Keep   | Stone Mug
// Keep   | Coffee Powder
// Keep   | Dark Coffee
// Keep   | Coffee
// Modify | Overgrowth Fertilizer

var ic2Fertilizer = <ic2:itemmisc:151>;
var grinPowder = <ic2:itemmisc:150>;
recipes.addShapeless("overgrowth_fertilizer", <ic2:itemmisc:157>*3, [
	ic2Fertilizer,
	waterCell,
	<minecraft:dye:15>,
	grinPowder,
	<ore:itemScrap>,
	<ore:itemScrap>
]);

// Modify | Restoring Fertilizer

var ic2OvergrowthFertilizer = <ic2:itemmisc:157>;
recipes.addShaped("restoring_fertilizer", <ic2:itemmisc:160>, [
	[ic2OvergrowthFertilizer, ic2OvergrowthFertilizer, ic2OvergrowthFertilizer],
	[ic2OvergrowthFertilizer, ic2OvergrowthFertilizer, ic2OvergrowthFertilizer],
	[ic2OvergrowthFertilizer, ic2OvergrowthFertilizer, ic2OvergrowthFertilizer]
]);

// Keep   | Cold Tea
// Keep   | Tea
// Keep   | Iced Tea
// Modify | Booze Barrel

recipes.addShaped("booze_barrel", <ic2:itembarrel>, [
	[null, <ore:plankWood>, null],
	[null, <techreborn:rubber_log>, null],
	[null, <ore:plankWood>, null]
]);

// Keep   | Booze Barrel empty recipe
// Keep   | Stone Mug
// Keep   | Paper
// Keep   | String
// Keep   | IC2 to Vanilla seeds
// Remove | Mining Drill
// Remove | Chainsaw
// Remove | Diamond Drill
// Remove | Diamond Drill upgrades
// Modify | Electric Hoe

recipes.addShaped("electric_hoe", <ic2:itemtoolhoe>, [
	[<ore:ingotRefinedIron>, <ore:ingotRefinedIron>, null],
	[null, <ore:circuitBasic>, null],
	[null, <ore:reBattery>, null]
]);

// Remove | Electric Wrench
// Remove | 2x Electric Treetap
// Remove | Electric Sprayer
// Modify | Mining Laser

var coolantHelium360k = <techreborn:part:9>;
val titaniumPlate = <techreborn:plates:30>;
recipes.addShaped("mining_laser_helium", <ic2:itemtoolmininglaser>, [
	[<techreborn:gem:0>, coolantHelium360k, <ore:energyCrystal>],
	[titaniumPlate, titaniumPlate, <ore:circuitAdvanced>],
	[null, <ore:plateAdvancedAlloy>, <ore:plateAdvancedAlloy>]
]);

var coolantNak360k = <techreborn:part:12>;
recipes.addShaped("mining_laser_nak", <ic2:itemtoolmininglaser>, [
	[<techreborn:gem:0>, coolantNak360k, <ore:energyCrystal>],
	[titaniumPlate, titaniumPlate, <ore:circuitAdvanced>],
	[null, <ore:plateAdvancedAlloy>, <ore:plateAdvancedAlloy>]
]);

// Remove | Nano Saber
// Modify | Obscurator

recipes.addShaped("obscurator", <ic2:itemobscurator>, [
	[<minecraft:painting>, <ore:blockGlass>, <minecraft:painting>],
	[<minecraft:sticky_piston>, <ore:energyCrystal>, <minecraft:piston>],
	[<minecraft:stone_button>, <ore:circuitAdvanced>, <minecraft:stone_button>]
]);

// Modify | 2x Precision Wrench

recipes.addShaped("precision_wrench_ic2", <ic2:precisionwrench>.withTag({Lossless: 1}), [
	[null, null, <ic2:itemtoolwrench>],
	[null, <ore:circuitBasic>, null],
	[<ore:reBattery>, null, null]
]);

recipes.addShaped("precision_wrench_tr", <ic2:precisionwrench>.withTag({Lossless: 1}), [
	[null, null, <techreborn:wrench>],
	[null, <ore:circuitBasic>, null],
	[<ore:reBattery>, null, null]
]);

// Modify | Mowing Tool

recipes.addShaped("mowing_tool", <ic2:itemmowingtool>, [
	[null, <techreborn:ironchainsaw>, null],
	[<ore:ingotRefinedIron>, <ore:circuitBasic>, <ore:ingotRefinedIron>],
	[<ore:ingotRefinedIron>, <ore:reBattery>, <ore:ingotRefinedIron>]
]);

// Modify | Portable Teleporter

var teleporterHub = <ic2:blockmachinehv:6>;
recipes.addShaped("portable_teleporter", <ic2:itemportableteleporter>, [
	[<ore:circuitAdvanced>, <techreborn:part:3>, <ore:circuitAdvanced>],
	[<ore:circuitAdvanced>, <techreborn:lapotronicorb>, <ore:circuitAdvanced>],
	[<ore:circuitAdvanced>, teleporterHub, <ore:circuitAdvanced>]
]);

// Modify | OD Scanner

recipes.addShaped("scanner_od", <ic2:itemmetascanners:0>, [
	[null, <minecraft:glowstone_dust>, null],
	[<ore:circuitBasic>, <ore:reBattery>, <ore:circuitBasic>],
	[copperCable, copperCable, copperCable]
]);

// Modify | 4x OV Scanner

val goldCable2x = <ic2:itemcable:4>;
recipes.addShaped("scanner_ov_upgrade_gold", <ic2:itemmetascanners:1>, [
	[null, <minecraft:glowstone_dust>, null],
	[<minecraft:glowstone_dust>, <ore:circuitAdvanced>, <minecraft:glowstone_dust>],
	[goldCable2x, <ic2:itemmetascanners:0>, goldCable2x]
]);

val bronzeCable2x = <ic2:itemcable:15>;
recipes.addShaped("scanner_ov_upgrade_bronze", <ic2:itemmetascanners:1>, [
	[bronzeCable2x, <minecraft:glowstone_dust>, bronzeCable2x],
	[<minecraft:glowstone_dust>, <ore:circuitAdvanced>, <minecraft:glowstone_dust>],
	[bronzeCable2x, <ic2:itemmetascanners:0>, bronzeCable2x]
]);

recipes.addShaped("scanner_ov_gold", <ic2:itemmetascanners:1>, [
	[null, <minecraft:glowstone_dust>, null],
	[<minecraft:glowstone_dust>, <ore:circuitAdvanced>, <minecraft:glowstone_dust>],
	[goldCable2x, <ore:reBattery>, goldCable2x]
]);

recipes.addShaped("scanner_ov_bronze", <ic2:itemmetascanners:1>, [
	[bronzeCable2x, <minecraft:glowstone_dust>, bronzeCable2x],
	[<minecraft:glowstone_dust>, <ore:circuitAdvanced>, <minecraft:glowstone_dust>],
	[bronzeCable2x, <ore:reBattery>, bronzeCable2x]
]);

// Modify | 2x Ranged OD Scanner

recipes.addShaped("ranged_od_scanner", <ic2:itemmetascanners:2>, [
	[<minecraft:glowstone_dust>, <minecraft:glowstone_dust>, <minecraft:glowstone_dust>],
	[<ic2:itemmetascanners:0>, <ore:circuitAdvanced>, <ic2:itemmetascanners:0>],
	[goldCable2x, goldCable2x, goldCable2x]
]);

// Modify | 2x Ranged OV Scanner

recipes.addShaped("ranged_ov_scanner", <ic2:itemmetascanners:3>, [
	[<minecraft:glowstone_dust>, <minecraft:glowstone_dust>, <minecraft:glowstone_dust>],
	[<ic2:itemmetascanners:1>, <ore:circuitAdvanced>, <ic2:itemmetascanners:1>],
	[goldCable2x, goldCable2x, goldCable2x]
]);

/// Modify | Ranged OD Scanner [Conversion]

recipes.addShapeless("ranged_od_scanner_conversion", <ic2:itemmetascanners:2>, [
	<ic2:itemmetascanners:3>,
	<ore:circuitBasic>
]);

// Modify | Ranged OV Scanner [Conversion]

recipes.addShapeless("ranged_ov_scanner_conversion", <ic2:itemmetascanners:3>, [
	<ic2:itemmetascanners:2>,
	<ore:circuitAdvanced>
]);

// Modify | Big Ranged OD Scanner

recipes.addShaped("big_ranged_od_scanner", <ic2:itemmetascanners:4>, [
	[<minecraft:glowstone_dust>, <ore:circuitAdvanced>, <minecraft:glowstone_dust>],
	[<ic2:itemmetascanners:0>, <ic2:itemmetascanners:2>, <ic2:itemmetascanners:0>],
	[<minecraft:glowstone_dust>, <ore:circuitAdvanced>, <minecraft:glowstone_dust>]
]);

// Modify | Big Ranged OV Scanner

recipes.addShaped("big_ranged_ov_scanner", <ic2:itemmetascanners:5>, [
	[<minecraft:glowstone_dust>, <ore:circuitAdvanced>, <minecraft:glowstone_dust>],
	[<ic2:itemmetascanners:1>, <ic2:itemmetascanners:3>, <ic2:itemmetascanners:1>],
	[<minecraft:glowstone_dust>, <ore:circuitAdvanced>, <minecraft:glowstone_dust>]
]);

// Modify | Big Ranged OD Scanner [Conversion]

recipes.addShapeless("big_ranged_od_scanner_conversion", <ic2:itemmetascanners:4>, [
	<ic2:itemmetascanners:5>,
	<ore:circuitBasic>
]);

// Modify | Big Ranged OV Scanner [Conversion]

recipes.addShapeless("big_ranged_ov_scanner_conversion", <ic2:itemmetascanners:5>, [
	<ic2:itemmetascanners:4>,
	<ore:circuitAdvanced>
]);

// Modify | Low OVD Scanner

recipes.addShaped("ovd_scanner_low", <ic2:itemmetascanners:6>, [
	[<minecraft:glowstone_dust>, <ore:circuitBasic>, <minecraft:glowstone_dust>],
	[<ic2:itemmetascanners:1>, <ic2:itemmetascanners:0>, <ic2:itemmetascanners:1>],
	[<minecraft:glowstone_dust>, <ore:circuitBasic>, <minecraft:glowstone_dust>]
]);

// Modify | Medium OVD Scanner

recipes.addShaped("ovd_scanner_medium", <ic2:itemmetascanners:7>, [
	[<minecraft:glowstone_dust>, <ore:circuitAdvanced>, <minecraft:glowstone_dust>],
	[<ic2:itemmetascanners:1>, <ic2:itemmetascanners:0>, <ic2:itemmetascanners:1>],
	[<minecraft:glowstone_dust>, <ore:circuitAdvanced>, <minecraft:glowstone_dust>]
]);

// Modify | High OVD Scanner

recipes.addShaped("ovd_scanner_high", <ic2:itemmetascanners:8>, [
	[<ore:circuitBasic>, <minecraft:glowstone_dust>, <ore:circuitBasic>],
	[<ic2:itemmetascanners:1>, <ic2:itemmetascanners:0>, <ic2:itemmetascanners:1>],
	[<ore:circuitBasic>, <minecraft:glowstone_dust>, <ore:circuitBasic>]
]);

// Modify | Adjustable OVD Scanner

recipes.addShaped("ovd_scanner_adjustable", <ic2:itemmetascanners:9>, [
	[<ore:circuitAdvanced>, <minecraft:glowstone_dust>, <ore:circuitAdvanced>],
	[<ic2:itemmetascanners:1>, <ic2:itemmetascanners:0>, <ic2:itemmetascanners:1>],
	[<ore:circuitAdvanced>, <minecraft:glowstone_dust>, <ore:circuitAdvanced>]
]);

// Modify | Quarry Scanner

recipes.addShaped("quarry_scanner", <ic2:itemmetascanners:10>, [
	[<minecraft:redstone>, <ic2:itemmetascanners:0>, <minecraft:redstone>],
	[<ic2:itemmetascanners:0>, <minecraft:redstone>, <ic2:itemmetascanners:0>],
	[<minecraft:redstone>, <ic2:itemmetascanners:0>, <minecraft:redstone>]
]);

// Modify | Quarry Scanner [Upgraded]

recipes.addShapeless("quarry_scanner_upgrade", <ic2:itemmetascanners:10>.withTag({UpgradedRadius: 12, Upgraded: 1 as byte}), [
	<ic2:itemmetascanners:10>,
	<ore:circuitAdvanced>
]);

// Keep   | Fluid Scanner
// Modify | Filtered Fluid Scanner

recipes.addShaped("filtered_fluid_scanner", <ic2:itemmetascanners:12>, [
	[null, <ic2:itemmetascanners:11>, null],
	[null, <minecraft:chest>, null],
	[null, <ore:circuitAdvanced>, null]
]);

// Modify | Filtered Scanner

recipes.addShaped("filtered_scanner", <ic2:itemmetascanners:13>, [
	[null, <ic2:itemmetascanners:10>, null],
	[null, <minecraft:chest>, null],
	[null, <ore:circuitAdvanced>, null]
]);

// Remove | Treetap
// Keep   | Painter
// Keep   | Wrench
// Keep   | Insulation Cutter
// Keep   | Tool Box
// Modify | Nano Tool Box

var ic2Toolbox = <ic2:itemtoolbox:0>;
recipes.addShaped("nano_tool_box", <ic2:itemtoolbox:2>, [
	[null, null, null],
	[<ore:plateCarbon>, ic2Toolbox, <ore:plateCarbon>],
	[<ore:plateCarbon>, <ore:plateCarbon>, <ore:plateCarbon>]
]);

// Modify | Quantum Tool Box

var ic2NanoToolbox = <ic2:itemtoolbox:2>;
recipes.addShaped("quantum_tool_box", <ic2:itemtoolbox:4>, [
	[null, null, null],
	[<ore:plateIridiumAlloy>, ic2NanoToolbox, <ore:plateIridiumAlloy>],
	[<ore:plateIridiumAlloy>, <ore:plateIridiumAlloy>, <ore:plateIridiumAlloy>]
]);

// Modify | EU-Reader

recipes.addShaped("eu_reader", <ic2:itemtoolmeter>, [
	[null, <minecraft:glowstone_dust>, null],
	[copperCable, <ore:circuitBasic>, copperCable],
	[copperCable, null, copperCable]
]);

// Modify | Cropnalyzer

recipes.addShaped("cropnalyzer", <ic2:itemcropanalyzer>, [
	[copperCable, copperCable, null],
	[<minecraft:redstone>, <ore:blockGlass>, <minecraft:redstone>],
	[<minecraft:redstone>, <ore:circuitBasic>, <minecraft:redstone>]
]);

// Remove | Dyanmite-O-Mote [direct recipe]
// Modify | Frequency Transmitter

recipes.addShapeless("frequency_transmitter", <ic2:itemfreq>, [
	<ore:circuitBasic>,
	copperCable
]);

// Keep   | CF Sprayer
// Keep   | CF Sprayer [Refill]
// Keep   | Dynamite-O-Mote
// Modify | Machine Tool

val euReader = <ic2:itemtoolmeter>;
recipes.addShaped("machine_tool", <ic2:itemmachinetool>, [
	[<ore:circuitAdvanced>, <minecraft:comparator>, <ore:circuitAdvanced>],
	[<ore:plateCarbon>, euReader, <ore:plateCarbon>],
	[<ore:circuitAdvanced>, <minecraft:comparator>, <ore:circuitAdvanced>]
]);

// Modify | Thermometer

val mercuryCell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidmercury", Amount: 1000}});
recipes.addShaped("ic2_thermometer", <ic2:itemthermometer>, [
	[null, <ore:blockGlass>, <ore:ingotTin>],
	[<ore:blockGlass>, mercuryCell, <ore:blockGlass>],
	[<ore:blockGlass>, <ore:blockGlass>, null]
]);

// Keep   | Dyed Painters, CF Walls, CF Wool
// Remove | Bronze Tools (5)
// Keep   | Single Use Battery
// Remove | RE-Battery
// Remove | Energy Crystal
// Remove | Lapotron Crystal
// Remove | PESD
// Remove | Quantum Accumulator
// Remove | Big Quantum Accumulator
// Modify | TFBP - Empty

recipes.addShaped("tfbp_empty", <ic2:itemmisc:401>, [
	[null, <ore:circuitBasic>, null],
	[null, <ore:circuitAdvanced>, null],
	[<minecraft:redstone>, null, <minecraft:redstone>]
]);

// Modify | TFBP Biome - Empty

recipes.addShaped("tfbp_biome_empty", <ic2:itemmisc:402>, [
	[null, <ore:circuitAdvanced>, null],
	[null, <ore:circuitAdvanced>, null],
	[<minecraft:redstone>, null, <minecraft:redstone>]
]);

// Keep   | TFBP Variant + Downgrade Recipes
// Keep   | TFBP Biome Variant + Downgrade Recipes
// Remove | 2x Base Upgrade
// Compat | 9x Overclocker Upgrade

recipes.addShapeless("overclocker_upgrade_tr_to_ic2c", <ic2:ic2upgrades:0>, [
	<techreborn:upgrades:0>
]);

// Compat | 2x Transformer Upgrade

recipes.addShapeless("transformer_upgrade_tr_to_ic2c", <ic2:ic2upgrades:1>, [
	<techreborn:upgrades:1>
]);

// Compat | 2x Energy Storage Upgrade

recipes.addShapeless("energy_storage_upgrade_tr_to_ic2c", <ic2:ic2upgrades:2>, [
	<techreborn:upgrades:2>
]);

// Remove | Redstone Sensitivity Upgrade [Used in Induction Furnace]
// Remove | Redstone Inverter Upgrade [Used in Induction Furnace]
// Modify | 2x Basic Import Upgrade

recipes.addShaped("basic_import_upgrade", <ic2:ic2upgrades:5>, [
	[<ore:ingotCopper>, <minecraft:sticky_piston>, <ore:ingotCopper>],
	[<ore:circuitBasic>, <minecraft:hopper>, <ore:circuitBasic>],
	[<ore:ingotCopper>, <minecraft:redstone_torch>, <ore:ingotCopper>]
]);

// Modify | 2x Basic Export Upgrade

recipes.addShaped("basic_export_upgrade", <ic2:ic2upgrades:7>, [
	[<ore:ingotCopper>, <minecraft:piston>, <ore:ingotCopper>],
	[<ore:circuitBasic>, <minecraft:hopper>, <ore:circuitBasic>],
	[<ore:ingotCopper>, <minecraft:redstone_torch>, <ore:ingotCopper>]
]);

// Modify | 2x Import Upgrade

recipes.addShaped("import_upgrade", <ic2:ic2upgrades:6>, [
	[null, null, null],
	[<ore:circuitAdvanced>, <ic2:ic2upgrades:5>, <ore:circuitAdvanced>],
	[null, <ore:reBattery>, null]
]);

// Modify | 2x Export Upgrade

recipes.addShaped("export_upgrade", <ic2:ic2upgrades:8>, [
	[null, null, null],
	[<ore:circuitAdvanced>, <ic2:ic2upgrades:7>, <ore:circuitAdvanced>],
	[null, <ore:reBattery>, null]
]);

// Remove | Round Robin Export Upgrade
// Modify | Muffler Upgrade [from Machine Block]

recipes.addShaped("muffler_from_machine_block", <ic2:ic2upgrades:9>, [
	[<ore:blockWool>, <ore:blockWool>, <ore:blockWool>],
	[<ore:blockWool>, <ore:machineBlockBasic>, <ore:blockWool>],
	[<ore:blockWool>, <ore:blockWool>, <ore:blockWool>]
]);

// Remove | Muffler Upgrade [from Base]
// Keep   | Mute Upgrade
// Remove | Efficiency Upgrade
// Remove | 2x Exp Collector Upgrade
// Remove | Energy Storage Multiplier Upgrade
// Remove | Loudness Upgrade
// Remove | Slowness Upgrade
// Modify | Upgrade Container

recipes.addShaped("upgrade_container", <ic2:itemupgradecontainer>, [
	[<ore:plateCarbon>, <ore:plateIridiumAlloy>, <ore:plateCarbon>],
	[<ore:plateIridiumAlloy>, <minecraft:chest>, <ore:plateIridiumAlloy>],
	[<ore:plateCarbon>, <ore:plateIridiumAlloy>, <ore:plateCarbon>]
]);

// Remove | Filtered Basic Import Upgrade
// Remove | 3x Filtered Import Upgrade
// Remove | Filtered Basic Export Upgrade
// Remove | 3x Filtered Export Upgrade
// Remove | 2x Basic Fluid Import Upgrade
// Remove | 2x Basic Fluid Export Upgrade
// Remove | Fluid Import Upgrade
// Remove | Fluid Export Upgrade
// Remove | Filtered Basic Fluid Import Upgrade
// Remove | 2x Filtered Fluid Import Upgrade
// Remove | Filtered Basic Fluid Export Upgrade
// Remove | 2x Filtered Fluid Export Upgrade
// Remove | Reactor Track Upgrade
// Remove | 2x CobbleGen Upgrade
// Remove | Crafting Upgrade
// Remove | Quantum Overclocker Upgrade
// Remove | 2x Efficient Sawblade Upgrade
// Remove | 2x Durable Sawblade Upgrade
// Remove | Proximity Booster Module
// Remove | Wide-Band Boster Module
// Remove | Armour Priority Module
// Modify | Basic Field Expansion Module

recipes.addShaped("basic_field_expansion_module", <ic2:itemchargepadupgrade:9>, [
	[<ore:circuitBasic>, <techreborn:upgrades:0>, <ore:circuitBasic>],
	[<techreborn:upgrades:0>, <ore:plateAdvancedAlloy>, <techreborn:upgrades:0>],
	[<ore:circuitBasic>, <techreborn:upgrades:0>, <ore:circuitBasic>]
]);

// Modify | Field Espansion Module

recipes.addShaped("field_expansion_module", <ic2:itemchargepadupgrade:10>, [
	[<ore:circuitAdvanced>, <ic2:itemchargepadupgrade:9>, <ore:circuitAdvanced>],
	[<ic2:itemchargepadupgrade:9>, <ore:plateAdvancedAlloy>, <ic2:itemchargepadupgrade:9>],
	[<ore:circuitAdvanced>, <ic2:itemchargepadupgrade:9>, <ore:circuitAdvanced>]
]);

// Modify | Advanced Field Expansion Module

recipes.addShaped("advanced_field_expansion_module", <ic2:itemchargepadupgrade:11>, [
	[<ore:plateCarbon>, <ic2:itemchargepadupgrade:10>, <ore:plateCarbon>],
	[<ic2:itemchargepadupgrade:10>, <ore:plateAdvancedAlloy>, <ic2:itemchargepadupgrade:10>],
	[<ore:plateCarbon>, <ic2:itemchargepadupgrade:10>, <ore:plateCarbon>]
]);

// Remove | Damage Conversion Module
// Remove | Crystalizor Upgrade Kit
// Remove | 2x MFS Unit Upgrade Kit
// Remove | Lapotronic Upgrade Kit
// Remove | Fission Upgrade Kit
// Modify | Automation Upgrade

recipes.addShaped("automation_upgrade", <ic2:inventoryupgrades:0>, [
	[copperCable, <minecraft:hopper>, copperCable],
	[<minecraft:hopper>, <ore:circuitBasic>, <minecraft:hopper>],
	[copperCable, <minecraft:hopper>, copperCable]
]);

// Modify | Machine Access Upgrade

recipes.addShaped("machine_access_upgrade", <ic2:inventoryupgrades:1>, [
	[null, <minecraft:trapdoor>, null],
	[<minecraft:trapdoor>, <ore:machineBlockBasic>, <minecraft:trapdoor>],
	[null, <minecraft:trapdoor>, null]
]);

// Modify | Rotation Disabler Upgrade

recipes.addShaped("rotation_disabled_upgrade", <ic2:inventoryupgrades:2>, [
	[null, <minecraft:compass>, null],
	[null, <minecraft:redstone_torch>, null],
	[null, <ore:machineBlockBasic>, null]
]);

// Keep   | SlotType Upgrade
// Modify | Slot Access Upgrade

recipes.addShaped("slot_access_upgrade", <ic2:inventoryupgrades:4>, [
	[<ore:ingotSilver>, <ore:circuitAdvanced>, <ore:ingotSilver>],
	[<ore:circuitAdvanced>, <ic2:inventoryupgrades:3>, <ore:circuitAdvanced>],
	[<ore:ingotSilver>, <ore:circuitAdvanced>, <ore:ingotSilver>]
]);

// Keep   | Slot Side Upgrade 
// Remove | Redstone Deconductor Upgrade
// Modify | Slot Diversity Upgrade

recipes.addShaped("slot_diversity_upgrade", <ic2:inventoryupgrades:7>, [
	[null, <ore:circuitBasic>, null],
	[<ore:circuitBasic>, <ic2:inventoryupgrades:0>, <ore:circuitBasic>],
	[null, <ore:circuitBasic>, null]
]);

// Modify | Stack Diversity Upgrade

recipes.addShaped("stack_diversity_upgrade", <ic2:inventoryupgrades:8>, [
	[null, <ore:circuitAdvanced>, null],
	[<ore:circuitAdvanced>, <ic2:inventoryupgrades:0>, <ore:circuitAdvanced>],
	[null, <ore:circuitAdvanced>, null]
]);

// Keep   | Item Limiter Upgrade
// Modify | Stack Limiter Upgrade

recipes.addShapeless("stack_limiter_upgrade", <ic2:inventoryupgrades:10>, [
	<ic2:inventoryupgrades:8>,
	<ic2:itemtoolbox:2>,
	<ore:circuitAdvanced>
]);

// Modify | 2x Composite Vest

recipes.addShaped("composite_vest_1", <ic2:itemarmoralloychestplate>, [
	[<ore:plateAdvancedAlloy>, null, <ore:plateAdvancedAlloy>],
	[<ore:plateAdvancedAlloy>, <minecraft:leather_chestplate>, <ore:plateAdvancedAlloy>],
	[<ore:plateAdvancedAlloy>, <minecraft:iron_chestplate>, <ore:plateAdvancedAlloy>]
]);

recipes.addShaped("composite_vest_2", <ic2:itemarmoralloychestplate>, [
	[<ore:plateAdvancedAlloy>, null, <ore:plateAdvancedAlloy>],
	[<ore:plateAdvancedAlloy>, <minecraft:iron_chestplate>, <ore:plateAdvancedAlloy>],
	[<ore:plateAdvancedAlloy>, <minecraft:leather_chestplate>, <ore:plateAdvancedAlloy>]
]);

// Modify | 2x Composite Boots

recipes.addShaped("composite_boots_1", <ic2:itemarmoralloyboots>, [
	[null, null, null],
	[<ore:plateAdvancedAlloy>, <minecraft:leather_boots>, <ore:plateAdvancedAlloy>],
	[<ore:plateAdvancedAlloy>, <minecraft:iron_boots>, <ore:plateAdvancedAlloy>]
]);

recipes.addShaped("composite_boots_2", <ic2:itemarmoralloyboots>, [
	[null, null, null],
	[<ore:plateAdvancedAlloy>, <minecraft:iron_boots>, <ore:plateAdvancedAlloy>],
	[<ore:plateAdvancedAlloy>, <minecraft:leather_boots>, <ore:plateAdvancedAlloy>]
]);

// Modify | 2x Composite Helmet

recipes.addShaped("composite_helmet_1", <ic2:itemarmoralloyhelmet>, [
	[<ore:plateAdvancedAlloy>, <ore:plateAdvancedAlloy>, <ore:plateAdvancedAlloy>],
	[<ore:plateAdvancedAlloy>, <minecraft:leather_helmet>, <ore:plateAdvancedAlloy>],
	[null, <minecraft:iron_helmet>, null]
]);

recipes.addShaped("composite_helmet_2", <ic2:itemarmoralloyhelmet>, [
	[<ore:plateAdvancedAlloy>, <ore:plateAdvancedAlloy>, <ore:plateAdvancedAlloy>],
	[<ore:plateAdvancedAlloy>, <minecraft:iron_helmet>, <ore:plateAdvancedAlloy>],
	[null, <minecraft:leather_helmet>, null]
]);

// Modify | 2x Composite Pants

recipes.addShaped("composite_leggings_1", <ic2:itemarmoralloyleggings>, [
	[<ore:plateAdvancedAlloy>, <ore:plateAdvancedAlloy>, <ore:plateAdvancedAlloy>],
	[<ore:plateAdvancedAlloy>, <minecraft:leather_leggings>, <ore:plateAdvancedAlloy>],
	[<ore:plateAdvancedAlloy>, <minecraft:iron_leggings>, <ore:plateAdvancedAlloy>]
]);

recipes.addShaped("composite_leggings_2", <ic2:itemarmoralloyleggings>, [
	[<ore:plateAdvancedAlloy>, <ore:plateAdvancedAlloy>, <ore:plateAdvancedAlloy>],
	[<ore:plateAdvancedAlloy>, <minecraft:iron_leggings>, <ore:plateAdvancedAlloy>],
	[<ore:plateAdvancedAlloy>, <minecraft:leather_leggings>, <ore:plateAdvancedAlloy>]
]);

// Remove | Bronze Helmet
// Remove | Bronze Chestplate
// Remove | Bronze Leggings
// Remove | Bronze Boots
// Modify | NanoSuit Helmet

recipes.addShaped("nanosuit_helmet", <ic2:itemarmornanohelmet>, [
	[null, null, null],
	[<ore:plateCarbon>, <ore:plateCarbon>, <ore:plateCarbon>],
	[<ore:plateCarbon>, <ore:energyCrystal>, <ore:plateCarbon>]
]);

// Modify | NanoSuit Bodyarmor

recipes.addShaped("nanosuit_chestplate", <ic2:itemarmornanochestplate>, [
	[<ore:plateCarbon>, null, <ore:plateCarbon>],
	[<ore:plateCarbon>, <ore:energyCrystal>, <ore:plateCarbon>],
	[<ore:plateCarbon>, <ore:plateCarbon>, <ore:plateCarbon>]
]);

// Modify | NanoSuit Leggings

recipes.addShaped("nanosuit_leggings", <ic2:itemarmornanolegs>, [
	[<ore:plateCarbon>, <ore:energyCrystal>, <ore:plateCarbon>],
	[<ore:plateCarbon>, null, <ore:plateCarbon>],
	[<ore:plateCarbon>, null, <ore:plateCarbon>]
]);

// Modify | NanoSuit Boots

recipes.addShaped("nanosuit_boots", <ic2:itemarmornanoboots>, [
	[null, null, null],
	[<ore:plateCarbon>, null, <ore:plateCarbon>],
	[<ore:plateCarbon>, <ore:energyCrystal>, <ore:plateCarbon>]
]);

// Modify | QuantumSuit Helmet

recipes.addShaped("quantumsuit_helmet", <ic2:itemarmorquantumhelmet>, [
	[null, <ic2:itemarmornanohelmet>, null],
	[<ore:plateIridiumAlloy>, <ore:lapotronCrystal>, <ore:plateIridiumAlloy>],
	[<ore:circuitAdvanced>, <ore:glassReinforced>, <ore:circuitAdvanced>]
]);

// Modify | QuantumSuit Bodyarmor

recipes.addShaped("quantumsuit_chestplate", <ic2:itemarmorquantumchestplate>, [
	[<ore:plateAdvancedAlloy>, <ic2:itemarmornanochestplate>, <ore:plateAdvancedAlloy>],
	[<ore:plateIridiumAlloy>, <ore:lapotronCrystal>, <ore:plateIridiumAlloy>],
	[<ore:plateIridiumAlloy>, <ore:plateAdvancedAlloy>, <ore:plateIridiumAlloy>]
]);

// Modify | QuantumSuit Leggings

recipes.addShaped("quantumsuit_leggings", <ic2:itemarmorquantumlegs>, [
	[<ore:machineBlockBasic>, <ore:lapotronCrystal>, <ore:machineBlockBasic>],
	[<ore:plateIridiumAlloy>, <ic2:itemarmornanolegs>, <ore:plateIridiumAlloy>],
	[<minecraft:glowstone_dust>, null, <minecraft:glowstone_dust>]
]);

// Modify | QuantumSuit Boots

recipes.addShaped("quantumsuit_boots", <ic2:itemarmorquantumboots>, [
	[null, null, null],
	[<ore:plateIridiumAlloy>, <ic2:itemarmornanoboots>, <ore:plateIridiumAlloy>],
	[<ic2:itemarmorrubboots>, <ore:lapotronCrystal>, <ic2:itemarmorrubboots>]
]);

// Modify | QuantumSuit BodyJetplate

recipes.addShaped("quantumsuit_bodyjetplate", <ic2:itemquantumarmorjetpack>, [
	[null, <ic2:itemarmorquantumchestplate>, null],
	[<ore:circuitAdvanced>, <ic2:itemarmorcombinedjetpack>, <ore:circuitAdvanced>],
	[null, <ore:lapotronCrystal>, null]
]);

// Modify | Nuclear QuantumSuit BodyJetplate

recipes.addShaped("quantumsuit_nuclear_bodyjetplate", <ic2:itemquantumarmornuclearjetplate>, [
	[null, <ic2:itemarmorquantumchestplate>, null],
	[<ore:circuitAdvanced>, <ic2:itemarmornuclearcombindedjetpack>, <ore:circuitAdvanced>],
	[null, <ore:lapotronCrystal>, null]
]);

// Modify | Nightvison Goggles

val advancedHeatExchanger = <ic2:itemheatswtiches:3>;
recipes.addShaped("nightvision_goggles", <ic2:itemnightvisiongoggles>, [
	[advancedHeatExchanger, <ic2:itemarmornanohelmet>, advancedHeatExchanger],
	[<techreborn:lamp_led>, <ore:glassReinforced>, <techreborn:lamp_led>],
	[<ore:itemRubber>, <ore:circuitAdvanced>, <ore:itemRubber>]
]);

// Keep   | QuantumSuit Helmet [upgrade : EU Reader]
// Keep   | QuantumSuit Helmet [upgrade : Cropnalyzer]
// Keep   | QuantumSuit Helmet [upgrade : Thermometer]
// Keep   | NanoSuit Helmet [upgrade : EU Reader]
// Keep   | NanoSuit Helmet [upgrade : Cropnalyzer]
// Keep   | NanoSuit Helmet [upgrade : Thermometer]
// Keep   | Scuba Helmet
// Keep   | Hazmat Suit
// Keep   | Hazmat Suit Leggings
// Keep   | Rubber Boots
// Remove | Bronze Shield
// Modify | Plated Shield

recipes.addShaped("plated_shield", <ic2:platedshield>, [
	[<ore:plateAdvancedAlloy>, <ore:plateAdvancedAlloy>, <ore:plateAdvancedAlloy>],
	[<ore:plateAdvancedAlloy>, <thermalfoundation:tool.shield_bronze>, <ore:plateAdvancedAlloy>],
	[<ore:plateAdvancedAlloy>, <ore:plateAdvancedAlloy>, <ore:plateAdvancedAlloy>]
]);

// Modify | Nano Shield

recipes.addShaped("nano_shield", <ic2:nanoshield>, [
	[<ore:plateCarbon>, <ore:energyCrystal>, <ore:plateCarbon>],
	[<ore:plateCarbon>, <ic2:platedshield>, <ore:plateCarbon>],
	[<ore:plateCarbon>, <ore:plateCarbon>, <ore:plateCarbon>]
]);

// Modify | Industrial Belt

recipes.addShaped("industrial_belt", <ic2:itemarmorindustrialbelt>, [
	[null, null, null],
	[<ore:itemRubber>, <minecraft:leather>, <minecraft:leather>],
	[<ore:reBattery>, <ore:reBattery>, <ore:reBattery>]
]);

// Remove | Industrial Belt to RE-Battery decomposition
// Modify | BatPack

recipes.addShaped("batpack", <ic2:itemarmorbatpack>, [
	[<ore:reBattery>, <ore:circuitBasic>, <ore:reBattery>],
	[<ore:reBattery>, <ore:ingotTin>, <ore:reBattery>],
	[<ore:reBattery>, null, <ore:reBattery>]
]);

// Modify | Lappack

recipes.addShaped("lappack", <ic2:itemarmorlappack>, [
	[<minecraft:lapis_block>, <ore:circuitAdvanced>, <minecraft:lapis_block>],
	[<minecraft:lapis_block>, <ic2:itemarmorbatpack>, <minecraft:lapis_block>],
	[<minecraft:lapis_block>, null, <minecraft:lapis_block>]
]);

// Modify | Quantum Pack

recipes.addShaped("quantum_pack", <ic2:itemarmorquantumpack>, [
	[null, <ore:circuitAdvanced>, null],
	[<ore:plateIridiumAlloy>, <ic2:itemarmorlappack>, <ore:plateIridiumAlloy>],
	[null, <ore:lapotronCrystal>, null]
]);

// Modify | CF Backpack

recipes.addShaped("cf_backpack", <ic2:itemarmorcfpack>, [
	[<ic2:itemfoamsprayer>, <ore:circuitBasic>, <ic2:itemfoamsprayer>],
	[<ic2:itemfuelcans>, <ore:ingotTin>, <ic2:itemfuelcans>],
	[<ic2:itemfuelcans>, null, <ic2:itemfuelcans>]
]);

// Remove | Solar Helmet [direct craft]
// Modify | Solar Helmet [from iron helmet]

val tinCable = <ic2:itemcable:10>;
recipes.addShaped("solar_helmet", <ic2:itemsolarhelmets>, [
	[null, <minecraft:iron_helmet>, null],
	[null, <techreborn:solar_panel>, null],
	[tinCable, tinCable, tinCable]
]);

// Modify | Advanced Solar Helmet

recipes.addShaped("advanced_solar_helmet", <ic2:itemsolarhelmets:1>, [
	[<techreborn:solar_panel>, <techreborn:solar_panel>, <techreborn:solar_panel>],
	[<techreborn:solar_panel>, <ic2:itemsolarhelmets>, <techreborn:solar_panel>],
	[<ore:circuitBasic>, copperCable, <ore:circuitBasic>]
]);

// Keep   | 2x Static Boots
// Modify | Jetpack

recipes.addShaped("fueled_jetpack", <ic2:itemarmorjetpack>, [
	[<ore:ingotRefinedIron>, <ore:circuitBasic>, <ore:ingotRefinedIron>],
	[<ore:ingotRefinedIron>, <ic2:itemfuelcans:0>, <ore:ingotRefinedIron>],
	[<minecraft:redstone>, null, <minecraft:redstone>]
]);

// Modify | Electric Jetpack

recipes.addShaped("electric_jetpack", <ic2:itemarmorjetpackelectric>, [
	[<ore:ingotRefinedIron>, <ore:circuitAdvanced>, <ore:ingotRefinedIron>],
	[<ore:ingotRefinedIron>, <techreborn:low_voltage_su>, <ore:ingotRefinedIron>],
	[<minecraft:glowstone_dust>, null, <minecraft:glowstone_dust>]
]);

// Modify | Nuclear Jetpack

val evTransformer = <ic2:blockelectric:11>;
recipes.addShaped("nuclear_jetpack", <ic2:itemarmorjetpacknuclear>, [
	[<ore:circuitAdvanced>, evTransformer, <ore:circuitAdvanced>],
	[<ic2:blockchambers:0>, nuclearReactor, <ic2:blockchambers:0>],
	[<ore:circuitAdvanced>, <ic2:itemarmorjetpackelectric>, <ore:circuitAdvanced>]
]);

// Modify | 2x Compacted Nuclear Jetpack

recipes.addShaped("compacted_nuclear_jetpack", <ic2:itemarmornuclearcombindedjetpack>, [
	[null, <ic2:itemarmorcombinedjetpack>, null],
	[null, <ore:circuitAdvanced>, null],
	[null, <ic2:itemarmorjetpacknuclear>, null]
]);

// Modify | Compacted Jetpack

recipes.addShaped("compacted_jetpack", <ic2:itemarmorcombinedjetpack>, [
	[<ore:circuitAdvanced>, <techreborn:upgrades:1>, <ore:circuitAdvanced>],
	[<ore:circuitAdvanced>, <ic2:itemarmorbatpack>, <ore:circuitAdvanced>],
	[<ic2:itemarmorjetpackelectric>, <ic2:itemarmorlappack>, <ic2:itemarmorjetpackelectric>]
]);

// Keep   | 6x Electric Jetpack [Upgrades]
// Keep   | 6x Nuclear Jetpack [Upgrades]
// Keep   | 6x Compacted Jetpack [Upgrades]
// Keep   | 6x Compacted Nuclear Jetpack [Upgrades]
// Remove | [Jetpack upgrades involving bronze armor]

// [[ UU Matter Recipes ]]
// Modify | Cobblestone

recipes.addShaped("uumatter_cobblestone", <minecraft:cobblestone>*16, [
	[<techreborn:uumatter>, null, null],
	[null, null, null],
	[null, null, null]
]);

// Remove | Stone
// Remove | Glass
// Remove | Grass Block
// Remove | Oak Wood
// Modify | Spruce Wood

recipes.addShaped("uumatter_spruce_wood", <minecraft:log:1>*8, [
	[null, null, <techreborn:uumatter>],
	[null, null, null],
	[null, null, null]
]);

// Modify | Birch Wood

recipes.addShaped("uumatter_birch_wood", <minecraft:log:2>*8, [
	[null, null, null],
	[<techreborn:uumatter>, null, null],
	[null, null, null]
]);

// Modify | Jungle Wood

recipes.addShaped("uumatter_jungle_wood", <minecraft:log:3>*8, [
	[null, null, null],
	[null, null, <techreborn:uumatter>],
	[null, null, null]
]);

// Modify | Acacia Wood

recipes.addShaped("uumatter_acacia_wood", <minecraft:log2:0>*8, [
	[null, null, null],
	[null, null, null],
	[<techreborn:uumatter>, null, null]
]);

// Modify | Dark Oak Wood

recipes.addShaped("uumatter_dark_oak_wood", <minecraft:log2:1>*8, [
	[null, null, null],
	[null, null, null],
	[null, <techreborn:uumatter>, null]
]);

// Modify | Dirt

recipes.addShaped("uumatter_dirt", <minecraft:dirt>*16, [
	[null, null, null],
	[null, null, null],
	[null, null, <techreborn:uumatter>]
]);

// Modify | Sponge

recipes.addShaped("uumatter_sponge", <minecraft:sponge>*6, [
	[null, <techreborn:uumatter>, null],
	[<techreborn:uumatter>, null, <techreborn:uumatter>],
	[null, <techreborn:uumatter>, <techreborn:uumatter>]
]);

// Modify | End Stone

recipes.addShaped("uumatter_end_stone", <minecraft:end_stone>*16, [
	[null, null, null],
	[<techreborn:uumatter>, null, <techreborn:uumatter>],
	[null, <techreborn:uumatter>, <techreborn:uumatter>]
]);

// Modify | Moss Stone

recipes.addShaped("uumatter_moss_stone", <minecraft:mossy_cobblestone>*16, [
	[null, null, null],
	[null, <techreborn:uumatter>, null],
	[<techreborn:uumatter>, null, <techreborn:uumatter>]
]);

// Modify | Sandstone

recipes.addShaped("uumatter_sandstone", <minecraft:sandstone>*16, [
	[null, null, null],
	[null, null, <techreborn:uumatter>],
	[null, <techreborn:uumatter>, null]
]);

// Modify | Red Sandstone

recipes.addShaped("uumatter_red_sandstone", <minecraft:red_sandstone>*16, [
	[null, null, null],
	[<techreborn:uumatter>, null, null],
	[null, <techreborn:uumatter>, null]
]);

// Remove | Snow
// Modify | Water

recipes.addShaped("uumatter_water", <ic2:tile.water>, [
	[null, null, null],
	[null, <techreborn:uumatter>, null],
	[null, <techreborn:uumatter>, null]
]);

// Modify | Lava

recipes.addShaped("uumatter_lava", <ic2:tile.lava>, [
	[null, <techreborn:uumatter>, null],
	[null, <techreborn:uumatter>, null],
	[null, <techreborn:uumatter>, null]
]);

// Remove | Iron Ore
// Remove | Gold Ore
// Remove | Obsidian
// Modify | Netherrack

recipes.addShaped("uumatter_netherrack", <minecraft:netherrack>*16, [
	[null, null, <techreborn:uumatter>],
	[null, <techreborn:uumatter>, null],
	[<techreborn:uumatter>, null, null]
]);

// Modify | Nether Wart

recipes.addShaped("uumatter_nether_wart", <minecraft:nether_wart>*32, [
	[null, <techreborn:uumatter>, <techreborn:uumatter>],
	[<techreborn:uumatter>, null, null],
	[null, <techreborn:uumatter>, <techreborn:uumatter>]
]);

// Remove | Glowstone
// Remove | Cactus
// Remove | Vines
// Modify | Chorus Fruit

recipes.addShaped("uumatter_chorus_fruit", <minecraft:chorus_fruit>*4, [
	[<techreborn:uumatter>, <techreborn:uumatter>, null],
	[null, <techreborn:uumatter>, <techreborn:uumatter>],
	[null, <techreborn:uumatter>, null]
]);

// Modify | White Wool

recipes.addShaped("uumatter_white_wool", <minecraft:wool:0>*12, [
	[<techreborn:uumatter>, null, <techreborn:uumatter>],
	[null, null, null],
	[null, <techreborn:uumatter>, null]
]);

// Remove | Coal
// Remove | Diamond
// Remove | Emerald
// Remove | Redstone
// Modify | Nether Quartz

recipes.addShaped("uumatter_nether_quartz", <minecraft:quartz>*32, [
	[null, <techreborn:uumatter>, <techreborn:uumatter>],
	[<techreborn:uumatter>, null, <techreborn:uumatter>],
	[<techreborn:uumatter>, <techreborn:uumatter>, null]
]);

// Remove | Lapis Lazuli
// Remove | Feather
// Modify | Leather

recipes.addShaped("uumatter_leather", <minecraft:leather>*32, [
	[<techreborn:uumatter>, null, <techreborn:uumatter>],
	[<techreborn:uumatter>, <techreborn:uumatter>, <techreborn:uumatter>],
	[null, null, null]
]);

// Remove | Snowball
// Remove | Gunpowder_1
// Remove | Ender Pearl
// Remove | Clay
// Modify | Blaze Rod

recipes.addShaped("uumatter_blaze_rod", <minecraft:blaze_rod>*6, [
	[null, <techreborn:uumatter>, null],
	[<techreborn:uumatter>, null, null],
	[<techreborn:uumatter>, <techreborn:uumatter>, <techreborn:uumatter>]
]);

// Modify | Prismarine Crystals

recipes.addShaped("uumatter_prismarine_crystals", <minecraft:prismarine_crystals>*16, [
	[null, <techreborn:uumatter>, <techreborn:uumatter>],
	[<techreborn:uumatter>, null, <techreborn:uumatter>],
	[null, <techreborn:uumatter>, null]
]);

// Modify | Prismarine Shard

recipes.addShaped("uumatter_prismarine_shard", <minecraft:prismarine_shard>*32, [
	[<techreborn:uumatter>, <techreborn:uumatter>, null],
	[<techreborn:uumatter>, null, <techreborn:uumatter>],
	[null, <techreborn:uumatter>, null]
]);

// Remove | Cocoa Beans
// Remove | Ink Sac
// Remove | Sugar Canes
// Modify | Flint

recipes.addShaped("uumatter_flint", <minecraft:flint>*32, [
	[null, <techreborn:uumatter>, null],
	[<techreborn:uumatter>, <techreborn:uumatter>, null],
	[<techreborn:uumatter>, <techreborn:uumatter>, null]
]);

// Remove | Bone
// Modify | Sticky Resin (replaced with Sap)

recipes.addShaped("uumatter_sap", <techreborn:part:31>*21, [
	[<techreborn:uumatter>, null, <techreborn:uumatter>],
	[null, null, null],
	[<techreborn:uumatter>, null, <techreborn:uumatter>]
]);

// Remove | Iridium Ore
// Modify | Mycelium

recipes.addShaped("uumatter_mycelium", <minecraft:mycelium>*24, [
	[null, null, null],
	[<techreborn:uumatter>, null, <techreborn:uumatter>],
	[<techreborn:uumatter>, <techreborn:uumatter>, <techreborn:uumatter>]
]);

// Modify | Chiseled Stone Bricks

recipes.addShaped("uumatter_chiseled_stone_bricks", <minecraft:stonebrick:3>*48, [
	[<techreborn:uumatter>, <techreborn:uumatter>, null],
	[<techreborn:uumatter>, <techreborn:uumatter>, null],
	[<techreborn:uumatter>, null, null]
]);

// Remove | Copper Ore
// Remove | Tin Ore
// Modify | Silver Ore

recipes.addShaped("uumatter_silver_dust", <thermalfoundation:material:66>*10, [
	[null, <techreborn:uumatter>, null],
	[<techreborn:uumatter>, null, <techreborn:uumatter>],
	[<techreborn:uumatter>, <techreborn:uumatter>, null]
]);

// Remove | Elytra

// TODO: Uranium Cells
// Keep   | 10k Coolant Cell
// Keep   | 30k Coolant Cell
// Remove | 30k Coolant Cell [from stack]
// Keep   | 60k Coolant Cell
// Modify | Reactor Plating

recipes.addShapeless("reactor_plating", <ic2:itemreactorplating:0>, [
	denseCopperPlate,
	<ore:plateAdvancedAlloy>
]);

// Keep   | Heat-Capacity Reactor Plating
// Modify | Containment Reactor Plating

recipes.addShapeless("containment_reactor_plating", <ic2:itemreactorplating:2>, [
	<ic2:itemreactorplating:0>,
	<ore:plateAdvancedAlloy>,
	<ore:plateAdvancedAlloy>
]);

// Keep   | 2x Neutron Reflector
// Keep   | Thick Neutron Reflector
// Modify | Iridium Neutron Reflector, TODO

val thiccNeutronReflector = <ic2:itemreflectors:1>;

recipes.addShaped("ic2c_iridium_neutron_reflector", <ic2:itemreflectors:2>, [
	[thiccNeutronReflector, thiccNeutronReflector, thiccNeutronReflector],
	[thiccNeutronReflector, <ore:plateIridiumAlloy>, thiccNeutronReflector],
	[thiccNeutronReflector, thiccNeutronReflector, thiccNeutronReflector]
]);

// Keep   | Component Heat Vent
// Modify | Heating Cell

val lavaCell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "lava", Amount: 1000}});

recipes.addShaped("heating_cell", <ic2:reactorheatpack>, [
	[null, <ore:circuitBasic>, null],
	[null, lavaCell, null],
	[null, <ic2:itemmisc:259>, null]
]);

// Keep   | RSH-Condensator
// Keep   | LZH-Condensator
// Modify | Heat Exhanger

recipes.addShaped("heat_exchanger", <ic2:itemheatswtiches:0>, [
	[null, <ore:circuitBasic>, null],
	[<ore:ingotTin>, denseCopperPlate, <ore:ingotTin>],
	[null, <ore:ingotTin>, null]
]);

// Keep   | Reactor Heat Exchanger
// Keep   | Component Heat Exchanger
// Modify | Advanced Heat Exchanger

recipes.addShaped("advanced_heat_exchanger", <ic2:itemheatswtiches:3>, [
	[glassCable, <ore:circuitBasic>, glassCable],
	[<ic2:itemheatswtiches:0>, denseCopperPlate, <ic2:itemheatswtiches:0>],
	[glassCable, <ore:circuitBasic>, glassCable]
]);

// Keep   | 3x Heat Vent
// Keep   | 3x Reactor Heat Vent
// Keep   | 3x Overclocked Heat Vent
// Keep   | 3x Advanced Heat Vent
// Keep   | Steam Vent
// Keep   | 2x Reactor Steam Vent
// Keep   | 2x Overclocked Steam Vent
// Keep   | 2x Advanced Steam Vent
// Modify | Electric Heat Vent

recipes.addShaped("electric_heat_vent", <ic2:itemheatvent:20>, [
	[null, null, null],
	[<ore:circuitAdvanced>, <ic2:itemheatvent:0>, <ore:circuitAdvanced>],
	[null, <ore:reBattery>, null]
]);

// Modify | Electric Reactor Heat Vent

recipes.addShaped("electric_reactor_heat_vent", <ic2:itemheatvent:21>, [
	[null, null, null],
	[<ore:circuitAdvanced>, <ic2:itemheatvent:1>, <ore:circuitAdvanced>],
	[null, <ore:reBattery>, null]
]);

// Modify | Electric Overclocked Heat Vent

recipes.addShaped("electric_overclocked_heat_vent", <ic2:itemheatvent:22>, [
	[null, null, null],
	[<ore:circuitAdvanced>, <ic2:itemheatvent:2>, <ore:circuitAdvanced>],
	[null, <ore:reBattery>, null]
]);

// Modify | Electric Advanced Heat Vent

recipes.addShaped("electric_advanced_heat_vent", <ic2:itemheatvent:23>, [
	[null, null, null],
	[<ore:circuitAdvanced>, <ic2:itemheatvent:3>, <ore:circuitAdvanced>],
	[null, <ore:reBattery>, null]
]);

// Remove | Sawblade + Plank crafting
// Modify | Lead [from Sap]

recipes.addShaped("lead_from_sap", <minecraft:lead>*2, [
	[<minecraft:string>, <minecraft:string>, null],
	[<minecraft:string>, <techreborn:part:31>, null],
	[null, null, <minecraft:string>]
]);
