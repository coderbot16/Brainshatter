// Purpose: Remove unused stuff from QuackLib.

mods.jei.JEI.removeAndHide(<quacklib:component:0>); // Remove lumar
mods.jei.JEI.removeAndHide(<quacklib:component:1>);
mods.jei.JEI.removeAndHide(<quacklib:component:2>);
mods.jei.JEI.removeAndHide(<quacklib:component:3>);
mods.jei.JEI.removeAndHide(<quacklib:component:4>);
mods.jei.JEI.removeAndHide(<quacklib:component:5>);
mods.jei.JEI.removeAndHide(<quacklib:component:6>);
mods.jei.JEI.removeAndHide(<quacklib:component:7>);
mods.jei.JEI.removeAndHide(<quacklib:component:8>);
mods.jei.JEI.removeAndHide(<quacklib:component:9>);
mods.jei.JEI.removeAndHide(<quacklib:component:10>);
mods.jei.JEI.removeAndHide(<quacklib:component:11>);
mods.jei.JEI.removeAndHide(<quacklib:component:12>);
mods.jei.JEI.removeAndHide(<quacklib:component:13>);
mods.jei.JEI.removeAndHide(<quacklib:component:14>);
mods.jei.JEI.removeAndHide(<quacklib:component:15>);
mods.jei.JEI.removeAndHide(<quacklib:component:16>); // Silicon Boule
mods.jei.JEI.removeAndHide(<quacklib:component:17>); // Silicon Wafer
mods.jei.JEI.removeAndHide(<quacklib:component:18>); // Red Tainted Wafer
mods.jei.JEI.removeAndHide(<quacklib:component:19>); // Blue Tainted Wafer
mods.jei.JEI.removeAndHide(<quacklib:component:20>); // Red Alloy Ingot
mods.jei.JEI.removeAndHide(<quacklib:component:21>); // Blue Alloy Ingot
mods.jei.JEI.removeAndHide(<quacklib:component:22>); // Brass Ingot
mods.jei.JEI.removeAndHide(<quacklib:component:23>); // Nikolite
mods.jei.JEI.removeAndHide(<quacklib:component:24>); // Fine Copper Wire
mods.jei.JEI.removeAndHide(<quacklib:component:26>); // Copper Coil
mods.jei.JEI.removeAndHide(<quacklib:component:27>); // Motor
mods.jei.JEI.removeAndHide(<quacklib:wrench>); // Wrench

mods.jei.JEI.removeAndHide(<quacklib:nikolite_ore>); // Nikolite Ore
mods.jei.JEI.removeAndHide(<quacklib:alloy_furnace>); // Alloy Furnace
mods.jei.JEI.removeAndHide(<quacklib:multiblock_test>); // Multiblock Test

<ore:dustNikolite>.remove(<quacklib:component:23>);
mods.techreborn.grinder.removeRecipe(<quacklib:component:23>);
mods.techreborn.alloySmelter.removeRecipe(<quacklib:component:20>);
furnace.setFuel(<quacklib:multiblock_test>, 0);

<ore:ingotRedAlloy>.remove(<quacklib:component:20>);
<ore:ingotBlueAlloy>.remove(<quacklib:component:21>);
<ore:ingotBrass>.remove(<quacklib:component:22>);
<ore:dyeCyan>.remove(<quacklib:component:23>);
