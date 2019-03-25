// Purpose: Reduce the output of hemp seeds in the Squeezer from 50mb to 10mb

mods.forestry.Squeezer.removeRecipe(<fluid:seed.oil>*50, [<ic2:itemmisc:158>]);
mods.forestry.Squeezer.addRecipe(<fluid:seed.oil>*10, [<ic2:itemmisc:158>], 10);
mods.thermalexpansion.Transposer.addExtractRecipe(<fluid:seed.oil>*10, <ic2:itemmisc:158>, 1600);
