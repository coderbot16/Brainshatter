// Purpose: Make TechReborn use some IC2C stuff, such as cables.

val ulc_cable = <ic2:itemcable:10>;
val copper_cable_uninsulated = <ic2:itemcable:0>;
val copper_cable = <ic2:itemcable:1>;
val gold_cable_2x = <ic2:itemcable:4>;
val hv_cable_4x = <ic2:itemcable:8>;
val bronze_cable_2x = <ic2:itemcable:15>;
val ic2_coolant_10k = <ic2:itemheatstorage:0>;
val ic2_coolant_30k = <ic2:itemheatstorage:1>;
val ic2_coolant_60k = <ic2:itemheatstorage:2>;
val tr_coolant_60k_nak = <techreborn:part:10>;
val tr_coolant_60k_helium = <techreborn:part:7>;

// Remove cables

recipes.remove(<techreborn:cable:0>);
recipes.remove(<techreborn:cable:1>);
recipes.remove(<techreborn:cable:2>);
recipes.remove(<techreborn:cable:3>);
recipes.remove(<techreborn:cable:4>);
recipes.remove(<techreborn:cable:5>);
recipes.remove(<techreborn:cable:6>);
recipes.remove(<techreborn:cable:7>);

// Remove some redundant smelting recipes

furnace.remove(<techreborn:ingot:2>, <techreborn:dust:7>); // Bronze Dust [F]
furnace.remove(<techreborn:ingot:4>, <techreborn:dust:14>); // Copper Dust [F]
furnace.remove(<techreborn:ingot:5>, <techreborn:dust:17>); // Electrum Dust [F]
furnace.remove(<minecraft:gold_ingot>, <techreborn:dust:24>); // Gold Dust [F]
furnace.remove(<techreborn:ingot:6>, <techreborn:dust:26>); // Invar Dust [F]
furnace.remove(<minecraft:iron_ingot>, <techreborn:dust:27>); // Iron Dust [F]
furnace.remove(<techreborn:ingot:8>, <techreborn:dust:29>); // Lead Dust [F]
furnace.remove(<techreborn:ingot:9>, <techreborn:dust:34>); // Nickel Dust [F]
furnace.remove(<techreborn:ingot:10>, <techreborn:dust:38>); // Platinum Dust [F]
furnace.remove(<techreborn:ingot:11>, <techreborn:dust:47>); // Silver Dust [F]
furnace.remove(<techreborn:ingot:13>, <techreborn:dust:53>); // Tin Dust [F]

// Remove Bronze armor and tools

recipes.remove(<techreborn:bronzesword>);
recipes.remove(<techreborn:bronzepickaxe>);
recipes.remove(<techreborn:bronzespade>);
recipes.remove(<techreborn:bronzeaxe>);
recipes.remove(<techreborn:bronzehoe>);
recipes.remove(<techreborn:bronzehelmet>);
recipes.remove(<techreborn:bronzechestplate>);
recipes.remove(<techreborn:bronzeleggings>);
recipes.remove(<techreborn:bronzeboots>);

// Rewrite recipes involving cables

recipes.remove(<techreborn:alarm>);
recipes.addShaped("alarm", <techreborn:alarm>, [
	[<minecraft:iron_ingot>, copper_cable_uninsulated, <minecraft:iron_ingot>],
	[copper_cable, <minecraft:redstone_block>, copper_cable],
	[<minecraft:iron_ingot>, copper_cable_uninsulated, <minecraft:iron_ingot>]
]);

recipes.remove(<techreborn:lamp_incandescent>);
recipes.addShaped("lamp_incandescent", <techreborn:lamp_incandescent>, [
	[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
	[copper_cable_uninsulated, <techreborn:part:35>, copper_cable_uninsulated],
	[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
]);

recipes.remove(<techreborn:lamp_led>);
recipes.addShaped("lamp_led", <techreborn:lamp_led>, [
	[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
	[ulc_cable, <minecraft:glowstone_dust>, ulc_cable],
	[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
]);

recipes.remove(<techreborn:lithiumbattery>);
recipes.addShaped("lithiumbattery", <techreborn:lithiumbattery>, [
	[null, gold_cable_2x, null],
	[<ore:plateAluminum>, <techreborn:dynamiccell>.withTag(({Fluid:{FluidName:"fluidlithium",Amount:1000}})), <ore:plateAluminum>],
	[<ore:plateAluminum>, <techreborn:dynamiccell>.withTag(({Fluid:{FluidName:"fluidlithium",Amount:1000}})), <ore:plateAluminum>]
]);

recipes.remove(<techreborn:lv_transformer>);
recipes.addShaped("tr_lv_transformer", <techreborn:lv_transformer>, [
	[<ore:plankWood>, copper_cable, <ore:plankWood>],
	[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
]);

recipes.remove(<techreborn:mv_transformer>);
recipes.addShaped("tr_mv_transformer", <techreborn:mv_transformer>, [
	[null, gold_cable_2x, null],
	[null, <ore:machineBlockBasic>, null],
	[null, gold_cable_2x, null]
]);

recipes.addShaped("tr_mv_transformer_bronze", <techreborn:mv_transformer>, [
	[null, bronze_cable_2x, null],
	[bronze_cable_2x, <ore:machineBlockBasic>, bronze_cable_2x],
	[null, bronze_cable_2x, null]
]);

recipes.remove(<techreborn:hv_transformer>);
recipes.addShaped("tr_hv_transformer", <techreborn:hv_transformer>, [
	[null, hv_cable_4x, null],
	[<ore:circuitBasic>, <techreborn:mv_transformer>, <ore:energyCrystal>],
	[null, hv_cable_4x, null]
]);

recipes.remove(<techreborn:upgrades:0>);
recipes.addShaped("tr_overclocker_10k_x3", <techreborn:upgrades:0>, [
	[null, null, null],
	[ic2_coolant_10k, ic2_coolant_10k, ic2_coolant_10k],
	[copper_cable, <ore:circuitBasic>, copper_cable]
]);

recipes.addShaped("tr_overclocker_30k_x1", <techreborn:upgrades:0>, [
	[null, null, null],
	[null, ic2_coolant_30k, null],
	[copper_cable, <ore:circuitBasic>, copper_cable]
]);

recipes.addShaped("tr_2x_overclocker_60k_x1", <techreborn:upgrades:0>*2, [
	[null, null, null],
	[null, ic2_coolant_60k, null],
	[copper_cable, <ore:circuitBasic>, copper_cable]
]);

recipes.addShaped("tr_2x_overclocker_60k_x1_nak", <techreborn:upgrades:0>*2, [
	[null, null, null],
	[null, tr_coolant_60k_nak, null],
	[copper_cable, <ore:circuitBasic>, copper_cable]
]);

recipes.addShaped("tr_2x_overclocker_60k_x1_helium", <techreborn:upgrades:0>*2, [
	[null, null, null],
	[null, tr_coolant_60k_helium, null],
	[copper_cable, <ore:circuitBasic>, copper_cable]
]);

recipes.remove(<techreborn:upgrades:1>);
recipes.addShaped("tr_transformer_upgrade", <techreborn:upgrades:1>, [
	[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
	[gold_cable_2x, <techreborn:mv_transformer>, gold_cable_2x],
	[<ore:blockGlass>, <ore:circuitBasic>, <ore:blockGlass>]
]);

// TODO: Use batbox in recipe instead (40K EU instead of 10K EU)
recipes.remove(<techreborn:upgrades:2>);
recipes.addShaped("tr_energy_storage_upgrade", <techreborn:upgrades:2>, [
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
	[copper_cable, <ore:reBattery>, copper_cable],
	[<ore:plankWood>, <ore:circuitBasic>, <ore:plankWood>]
]);

// Removed, has no apparent purpose
recipes.remove(<techreborn:frequencytransmitter>);

recipes.remove(<techreborn:rebattery>);
recipes.addShaped("tr_battery", <techreborn:rebattery>, [
	[null, copper_cable, null],
	[<ore:ingotTin>, <minecraft:redstone>, <ore:ingotTin>],
	[<ore:ingotTin>, <minecraft:redstone>, <ore:ingotTin>]
]);

// Electronic Circuit
recipes.remove(<techreborn:part:29>);
recipes.addShaped("tr_circuit_basic", <techreborn:part:29>, [
	[copper_cable, copper_cable, copper_cable],
	[<minecraft:redstone>, <ore:ingotRefinedIron>, <minecraft:redstone>],
	[copper_cable, copper_cable, copper_cable]
]);

// Remove TechReborn Water Coolant Cells
recipes.remove(<techreborn:part:38>); // 60k
recipes.remove(<techreborn:part:37>); // 30k
recipes.remove(<techreborn:part:36>); // 10k

val sodiumCell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidsodium", Amount: 1000}});
val potassiumCell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidpotassium", Amount: 1000}});

recipes.remove(<techreborn:part:10>); // 60k NAK
recipes.addShaped("coolant_cell_60k_nak_1", <techreborn:part:10>, [
	[<ore:ingotTin>, sodiumCell, <ore:ingotTin>],
	[potassiumCell, <ic2:itemheatstorage:0>, potassiumCell],
	[<ore:ingotTin>, sodiumCell, <ore:ingotTin>]
]);

recipes.addShaped("coolant_cell_60k_nak_2", <techreborn:part:10>, [
	[<ore:ingotTin>, potassiumCell, <ore:ingotTin>],
	[sodiumCell, <ic2:itemheatstorage:0>, sodiumCell],
	[<ore:ingotTin>, potassiumCell, <ore:ingotTin>]
]);

recipes.remove(<techreborn:smalldust:46>);
recipes.addShapeless("smalldust_saw_dust", <techreborn:smalldust:46>, [
	<ore:dustWood>
]);
