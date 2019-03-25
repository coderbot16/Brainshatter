// Nerfs / Removes the lower tier ducts to not overshadow BuildCraft / Teckle.

mods.jei.JEI.removeAndHide(<thermaldynamics:duct_16:0>); // Fluiduct
mods.jei.JEI.removeAndHide(<thermaldynamics:duct_16:1>); // Fluiduct (Opaque)

mods.thermalexpansion.Pulverizer.removeRecipe(<thermaldynamics:duct_16:0>);
mods.thermalexpansion.Pulverizer.removeRecipe(<thermaldynamics:duct_16:1>);

recipes.removeByRecipeName("thermaldynamics:duct_16_3"); // Lead/Invar => Hardened Fluiduct
recipes.removeByRecipeName("thermaldynamics:duct_32_1"); // Lead/Tin => Itemduct (Opaque)

// Remove Hardened Fluxduct to encourage use of Redstone Energy Fluxducts.
// Hardened Fluxducts make Redstone Energy Fluxducts a bit useless since REFs are so expensive. 
// HF Cost:  (2 RS + 0.33 Lead + 0.33 Invar + 0.17 Glass)
// REF Cost: (2 RS + 0.33 Electrum + 0.08 Lead + 0.08 Obsidian)
mods.jei.JEI.removeAndHide(<thermaldynamics:duct_0:1>);
mods.thermalexpansion.Pulverizer.removeRecipe(<thermaldynamics:duct_0:1>);
