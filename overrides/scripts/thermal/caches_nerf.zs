// Purpose: Nerfs the lower tier cache recipes.
// This is to make barrels the superior option for most cases due to cost, but caches better for high storage capacity.

recipes.remove(<thermalexpansion:cache>);
recipes.addShaped("cache_nerfed", <thermalexpansion:cache>, [
	[<forestry:wood_pile>, <minecraft:chest>, <forestry:wood_pile>],
	[<thermalexpansion:strongbox>, <thermalexpansion:frame:64>, <thermalexpansion:strongbox>],
	[<forestry:wood_pile>, <minecraft:chest>, <forestry:wood_pile>]
]);
