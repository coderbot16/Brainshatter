// Purpose: Marble and Basalt dust grinding/pulverizing

// Basalt results
val dustBasalt = <techreborn:dust:4>;
val dustFlint = <techreborn:dust:22>;

// Marble results
val dustMarble = <techreborn:dust:32>;
val dustCalcite = <techreborn:dust:8>;

// Inputs
val basalt = <projectred-exploration:stone:3>;
val basaltCobble = <projectred-exploration:stone:2>;
val basaltBrick = <projectred-exploration:stone:4>;
val marble = <projectred-exploration:stone:0>;
val marbleBrick = <projectred-exploration:stone:1>;

// Recipe additions - Basalt
mods.thermalexpansion.Pulverizer.addRecipe(dustBasalt, basalt, 4000, dustFlint, 10);
mods.techreborn.grinder.addRecipe(dustBasalt, basalt, 270, 3);

mods.thermalexpansion.Pulverizer.addRecipe(dustBasalt, basaltCobble, 4000, dustFlint, 10);
mods.techreborn.grinder.addRecipe(dustBasalt, basaltCobble, 270, 3);

mods.thermalexpansion.Pulverizer.addRecipe(dustBasalt, basaltBrick, 4000, dustFlint, 10);
mods.techreborn.grinder.addRecipe(dustBasalt, basaltBrick, 270, 3);

// Recipe additions - Marble
mods.thermalexpansion.Pulverizer.addRecipe(dustMarble, marble, 4000, dustCalcite, 10);
mods.techreborn.grinder.addRecipe(dustMarble, marble, 270, 3);

mods.thermalexpansion.Pulverizer.addRecipe(dustMarble, marbleBrick, 4000, dustCalcite, 10);
mods.techreborn.grinder.addRecipe(dustMarble, marbleBrick, 270, 3);
