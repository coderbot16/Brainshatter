// Allows Uranium Ore to be processed in the Pulverizer and Industrial Grinder.

val ore = <ic2:blockmetal:2>;
val product = <ic2:itemmisc:180>;
val secondary = <thermalfoundation:material:768>; // Pulverized Coal

mods.thermalexpansion.Pulverizer.addRecipe(product*2, ore, 4000, secondary, 10);
mods.techreborn.industrialGrinder.addRecipe(product*3, secondary, null, null, ore, null, <fluid:water>*1000, 100, 64);
