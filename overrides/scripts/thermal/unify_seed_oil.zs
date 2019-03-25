// Replaces uses of ThermalFoundation seed oil with Forestry seed oil.

// Note: TE gives 50mb/seed, Forestry gives 10mb/seed.
// 1600 RF per seed.

// Remove extract recipes
mods.thermalexpansion.Transposer.removeExtractRecipe(<minecraft:wheat_seeds>);
mods.thermalexpansion.Transposer.removeExtractRecipe(<minecraft:pumpkin_seeds>);
mods.thermalexpansion.Transposer.removeExtractRecipe(<minecraft:melon_seeds>);
mods.thermalexpansion.Transposer.removeExtractRecipe(<minecraft:beetroot_seeds>);

mods.thermalexpansion.Transposer.removeExtractRecipe(<extratrees:misc:7>); // Barley Grain
mods.thermalexpansion.Transposer.removeExtractRecipe(<extratrees:misc:8>); // Rye Grain
mods.thermalexpansion.Transposer.removeExtractRecipe(<extratrees:misc:10>); // Roasted Grain

mods.thermalexpansion.Transposer.removeExtractRecipe(<simpleflax:seeds>);

// Re-add extract recipes
mods.thermalexpansion.Transposer.addExtractRecipe(<fluid:seed.oil>*10, <minecraft:wheat_seeds>, 1600);
mods.thermalexpansion.Transposer.addExtractRecipe(<fluid:seed.oil>*10, <minecraft:pumpkin_seeds>, 1600);
mods.thermalexpansion.Transposer.addExtractRecipe(<fluid:seed.oil>*10, <minecraft:melon_seeds>, 1600);
mods.thermalexpansion.Transposer.addExtractRecipe(<fluid:seed.oil>*10, <minecraft:beetroot_seeds>, 1600);

mods.thermalexpansion.Transposer.addExtractRecipe(<fluid:seed.oil>*10, <extratrees:misc:7>, 1600); // Barley Grain
mods.thermalexpansion.Transposer.addExtractRecipe(<fluid:seed.oil>*10, <extratrees:misc:8>, 1600); // Rye Grain
mods.thermalexpansion.Transposer.addExtractRecipe(<fluid:seed.oil>*10, <extratrees:misc:9>, 1600); // Corn Grain
mods.thermalexpansion.Transposer.addExtractRecipe(<fluid:seed.oil>*10, <extratrees:misc:10>, 1600); // Roasted Grain

mods.thermalexpansion.Transposer.addExtractRecipe(<fluid:seed.oil>*10, <simpleflax:seeds>, 1600);

// Replace fill recipes
mods.thermalexpansion.Transposer.removeFillRecipe(<thermalfoundation:material:816>, <fluid:seed_oil>); // Pulped Biomass => Rich Biomass
mods.thermalexpansion.Transposer.removeFillRecipe(<thermalfoundation:material:818>, <fluid:seed_oil>); // Pulped Bioblend => Rich Bioblend

mods.thermalexpansion.Transposer.addFillRecipe(<thermalfoundation:material:817>, <thermalfoundation:material:816>, <fluid:seed.oil>*20, 800); // Pulped Biomass => Rich Biomass
mods.thermalexpansion.Transposer.addFillRecipe(<thermalfoundation:material:819>, <thermalfoundation:material:818>, <fluid:seed.oil>*20, 800); // Pulped Bioblend => Rich Bioblend

// Hide ThermalFoundation seed oil
mods.jei.JEI.hide(<forestry:can:1>.withTag({Fluid: {FluidName: "seed_oil", Amount: 1000}}));
mods.jei.JEI.hide(<forestry:capsule:1>.withTag({Fluid: {FluidName: "seed_oil", Amount: 1000}}));
mods.jei.JEI.hide(<forestry:refractory:1>.withTag({Fluid: {FluidName: "seed_oil", Amount: 1000}}));
mods.jei.JEI.hide(<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "seed_oil", Amount: 1000}}));
mods.jei.JEI.hide(<forge:bucketfilled>.withTag({FluidName: "seed_oil", Amount: 1000}));
mods.jei.JEI.hide(<fluid:seed_oil>);
