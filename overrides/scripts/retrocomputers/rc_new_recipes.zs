// Purpose: Make the RetroComputers recipes more like old RedPower 2.

val redSilicon = <projectred-core:resource_item:320>;
val orangeIllumar = <projectred-core:resource_item:501>;
val copperCoil = <projectred-core:resource_item:400>;
val goldCoil = <projectred-core:resource_item:402>;
val motor = <projectred-core:resource_item:410>;

recipes.remove(<retrocomputers:terminal>);
recipes.addShaped("retrocomputers_terminal", <retrocomputers:terminal>, [
	[<minecraft:iron_ingot>, <ore:plankWood>, <minecraft:iron_ingot>],
	[redSilicon, orangeIllumar, <ore:paneGlass>],
	[<minecraft:iron_ingot>, <retrocomputers:ribbon_cable>, <minecraft:iron_ingot>]
]);

recipes.remove(<retrocomputers:computer>);
recipes.addShaped("retrocomputers_computer", <retrocomputers:computer>, [
	[<minecraft:iron_ingot>, <minecraft:quartz>, <minecraft:iron_ingot>],
	[redSilicon, <minecraft:redstone_block>, redSilicon],
	[<minecraft:iron_ingot>, <retrocomputers:ribbon_cable>, <minecraft:iron_ingot>]
]);

recipes.remove(<retrocomputers:redstone_port_analog>);
recipes.addShaped("retrocomputers_port", <retrocomputers:redstone_port_analog>, [
	[<ore:plankWood>, <minecraft:redstone>, <ore:plankWood>],
	[<ore:plankWood>, redSilicon, <ore:plankWood>],
	[<ore:plankWood>, <retrocomputers:ribbon_cable>, <ore:plankWood>]
]);

recipes.remove(<retrocomputers:ribbon_cable>);
recipes.addShaped("retrocomputers_ribbon_cable", <retrocomputers:ribbon_cable>*8, [
	[copperCoil],
	[copperCoil],
	[copperCoil]
]);

recipes.remove(<retrocomputers:backplane>);
recipes.addShaped("retrocomputers_backplane", <retrocomputers:backplane>, [
	[<minecraft:iron_bars>, copperCoil, <minecraft:iron_bars>],
	[<minecraft:iron_bars>, goldCoil, <minecraft:iron_bars>],
	[<minecraft:iron_bars>, copperCoil, <minecraft:iron_bars>]
]);

recipes.remove(<retrocomputers:disk_drive>);
recipes.addShaped("retrocomputers_disk_drive", <retrocomputers:disk_drive>, [
	[<minecraft:iron_ingot>, <ore:plankWood>, <minecraft:iron_ingot>],
	[<ore:plankWood>, motor, redSilicon],
	[<minecraft:iron_ingot>, <retrocomputers:ribbon_cable>, <minecraft:iron_ingot>]
]);

recipes.remove(<retrocomputers:memory>);
recipes.addShaped("retrocomputers_memory", <retrocomputers:memory>, [
	[<minecraft:iron_bars>, redSilicon, <minecraft:iron_bars>],
	[redSilicon, <minecraft:redstone_block>, redSilicon],
	[<minecraft:iron_bars>, redSilicon, <minecraft:iron_bars>]
]);

recipes.remove(<retrocomputers:radio>);
recipes.addShaped("retrocomputers_radio", <retrocomputers:radio>, [
	[<minecraft:iron_ingot>, <minecraft:iron_bars>, <minecraft:iron_ingot>],
	[<minecraft:redstone>, <minecraft:ender_pearl>, <minecraft:redstone>],
	[<minecraft:iron_ingot>, <retrocomputers:ribbon_cable>, <minecraft:iron_ingot>]
]);

recipes.remove(<retrocomputers:cpu>);
recipes.addShaped("retrocomputers_cpu", <retrocomputers:cpu>, [
	[<minecraft:iron_bars>, goldCoil, <minecraft:iron_bars>],
	[redSilicon, <minecraft:redstone_block>, redSilicon],
	[<minecraft:iron_bars>, goldCoil, <minecraft:iron_bars>]
]);
