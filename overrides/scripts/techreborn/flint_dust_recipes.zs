// Purpose: Allow the production of Flint Dust in the Pulverizer and Grinder

val dustSmallFlint = <techreborn:smalldust:22>;

mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:flint>);
mods.thermalexpansion.Pulverizer.addRecipe(dustSmallFlint*2, <minecraft:flint>, 4000, dustSmallFlint, 20);
mods.techreborn.grinder.addRecipe(dustSmallFlint*2, <minecraft:flint>, 270, 3);
