// Make ore processors treat Monazit Ore correctly

val rawUranium = <ic2:itemmisc:180>;

mods.thermalexpansion.Pulverizer.removeRecipe(<modularforcefieldsystem:monazit_ore>);
mods.thermalexpansion.Pulverizer.addRecipe(<modularforcefieldsystem:forcicium>*8, <modularforcefieldsystem:monazit_ore>, 4000, rawUranium, 10);

mods.techreborn.grinder.addRecipe(<modularforcefieldsystem:forcicium>*8, <modularforcefieldsystem:monazit_ore>, 230, 2);
mods.techreborn.industrialGrinder.addRecipe(<modularforcefieldsystem:forcicium>*10, rawUranium, null, null, <modularforcefieldsystem:monazit_ore>, null, <fluid:water>*1000, 100, 64);
