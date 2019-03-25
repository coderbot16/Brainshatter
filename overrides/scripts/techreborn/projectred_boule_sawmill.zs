// Purpose: Allow Silicon Boules to be sawed into Silicon in the Industrial Sawmill

val siliconBoule = <projectred-core:resource_item:300>;
val silicon = <projectred-core:resource_item:301>;

mods.techreborn.industrialSawmill.addRecipe(silicon*8, null, null, siliconBoule, <fluid:water>*1000, 200, 32);
