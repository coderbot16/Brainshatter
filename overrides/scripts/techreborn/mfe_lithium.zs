// Purpose: Allow MFEs to be crafted with Lithium batteries

val cableGold2x = <ic2:itemcable:4>;

recipes.addShaped("mfe_lithium", <techreborn:medium_voltage_su>, [
	[cableGold2x, <techreborn:lithiumbattery>, cableGold2x],
	[<techreborn:lithiumbattery>, <ore:machineBlockBasic>, <techreborn:lithiumbattery>],
	[cableGold2x, <techreborn:lithiumbattery>, cableGold2x]
]);
