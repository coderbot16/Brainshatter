// Nerfs the biocrude -> grassoline conversion to 1/4 the normal rate to make Forestry biomass/ethanol relevant.

mods.thermalexpansion.Refinery.removeRecipe(<liquid:biocrude>*200);
mods.thermalexpansion.Refinery.addRecipe(<liquid:refined_biofuel>*100, null, <liquid:biocrude>*800, 5000);
