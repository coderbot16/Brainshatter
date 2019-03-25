// Purpose: Remove unused forestry content

mods.jei.JEI.removeAndHide(<forestry:ingot_copper>);
mods.jei.JEI.removeAndHide(<forestry:ingot_tin>); // TODO: Squeezer hardcoded to output this type of tin
mods.jei.JEI.removeAndHide(<forestry:ingot_bronze>);

mods.jei.JEI.removeAndHide(<forestry:gear_bronze>);
mods.jei.JEI.removeAndHide(<forestry:gear_copper>);
mods.jei.JEI.removeAndHide(<forestry:gear_tin>);

mods.jei.JEI.removeAndHide(<forestry:resource_storage:1>); // Copper Block
mods.jei.JEI.removeAndHide(<forestry:resource_storage:2>); // Tin Block
mods.jei.JEI.removeAndHide(<forestry:resource_storage:3>); // Bronze Block

mods.jei.JEI.removeAndHide(<forestry:charcoal>);
furnace.setFuel(<forestry:charcoal>, 0);
