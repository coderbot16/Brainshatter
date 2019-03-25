// Adds fluids to fluid generators

/*
--- Compression Dynamo ---

Refined Fuel      150 KMJ
Crude Oil          40 KMJ
Seed Oil           80 KMJ
Creosote Oil       40 KMJ
Tree Oil           40 KMJ
Naptha            100 KMJ
Crude Oil          40 KMJ
Liquifacted Coal   40 KMJ
Grassoline         80 KMJ
Ethanol            50 KMJ

--- TR Fluid Generators ---

Oil               6.4 KMJ
Creosote Oil       16 KMJ
Nitrofuel         9.6 KMJ
Nitrocoalfuel    19.2 KMJ
Diesel           51.2 KMJ
Nitrodiesel       160 KMJ

--- Combusion Engine ---

Gaseous Fuel       15 KMJ
Fuel               60 KMJ
Dense Fuel        120 KMJ
Mixed Light Fuels  24 KMJ
Mixed Heavy Fuels  48 KMJ
Dense Oil         120 KMJ + R
Distilled Oil      30 KMJ
Heavy Oil          80 KMJ + R
Oil                30 KMJ + R
Ethanol            60 KMJ

--- Forestry Bio Generator ---
Ethanol          51.2 KMJ
Biomass           3.2 KMJ
*/

// Semi Fluid Generator

mods.techreborn.fluidGen.removeSemiFluid(<fluid:crude_oil>);
mods.techreborn.fluidGen.removeSemiFluid(<fluid:fluidoil>);
mods.techreborn.fluidGen.removeSemiFluid(<fluid:oil>);

mods.techreborn.fluidGen.addSemiFluid(<fluid:coal>, 100);
mods.techreborn.fluidGen.addSemiFluid(<fluid:biomass>, 8);
mods.techreborn.fluidGen.addSemiFluid(<fluid:crude_oil>, 64);
mods.techreborn.fluidGen.addSemiFluid(<fluid:fluidoil>, 64);
mods.techreborn.fluidGen.addSemiFluid(<fluid:fluidpotassium>, 60);
mods.techreborn.fluidGen.addSemiFluid(<fluid:oil>, 64);
mods.techreborn.fluidGen.addSemiFluid(<fluid:oil_distilled>, 64);
mods.techreborn.fluidGen.addSemiFluid(<fluid:oil_heavy>, 192);
mods.techreborn.fluidGen.addSemiFluid(<fluid:oil_dense>, 256);
mods.techreborn.fluidGen.addSemiFluid(<fluid:for.honey>, 8);
mods.techreborn.fluidGen.addSemiFluid(<fluid:seed.oil>, 25);
mods.techreborn.fluidGen.addSemiFluid(<fluid:fluidglyceryl>, 16);

// Diesel Generator

mods.techreborn.fluidGen.addDieselFluid(<fluid:bio.ethanol>, 128);
mods.techreborn.fluidGen.addDieselFluid(<fluid:fuel_dense>, 256);
mods.techreborn.fluidGen.addDieselFluid(<fluid:fuel_light>, 128);
mods.techreborn.fluidGen.addDieselFluid(<fluid:fuel_mixed_heavy>, 120);
mods.techreborn.fluidGen.addDieselFluid(<fluid:fuel_mixed_light>, 60);
mods.techreborn.fluidGen.addDieselFluid(<fluid:refined_biofuel>, 200);
mods.techreborn.fluidGen.addDieselFluid(<fluid:refined_fuel>, 350);
mods.techreborn.fluidGen.addDieselFluid(<fluid:refined_oil>, 200);
mods.techreborn.fluidGen.addDieselFluid(<fluid:tree_oil>, 100);

// Gas Turbine

mods.techreborn.fluidGen.addGasFluid(<fluid:fuel_gaseous>, 40);
