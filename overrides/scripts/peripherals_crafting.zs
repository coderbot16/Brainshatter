// Purpose: Replace the Flux Capacitor in the Turtle Charger recipe with an Energy Cell

val rsConductanceCoil = <thermalfoundation:material:515>;
val leadstoneEnergyCell = <thermalexpansion:cell>.withTag({Recv: 500, RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [2, 1, 1, 1, 1, 1] as byte[] as byte[], Level: 0 as byte, Send: 500});

// TODO: The flux capacitor based recipe isn't actually removed.
recipes.remove(<peripheralsplusone:rf_charger>);
recipes.addShaped("rf_charger_energy_cell", <peripheralsplusone:rf_charger>, [
	[<minecraft:redstone>, <ore:ingotLead>, <minecraft:redstone>],
	[<ore:ingotLead>, leadstoneEnergyCell, <ore:ingotLead>],
	[<minecraft:redstone>, rsConductanceCoil, <minecraft:redstone>]
]);
