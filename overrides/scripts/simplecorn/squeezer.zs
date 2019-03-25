// Adds corn kernels to the Forestry squeezer and Thermal Expansion Fluid Transposer.

mods.forestry.Squeezer.addRecipe(<fluid:seed.oil>*10, [<simplecorn:kernels>], 10);
mods.thermalexpansion.Transposer.removeExtractRecipe(<simplecorn:kernels>);
mods.thermalexpansion.Transposer.addExtractRecipe(<fluid:seed.oil>*10, <simplecorn:kernels>, 1600);
