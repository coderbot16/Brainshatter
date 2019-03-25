// Purpose: Change some centrifuge recipes to match old GT2.

// Item definitions
val sap = <techreborn:part:31>;
val rubber = <techreborn:part:32>;
val plantball = <ic2:itemmisc:350>;
val compressedPlants = <ic2:itemmisc:351>;

val methaneCell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidmethane", Amount: 1000}});
val carbonCell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidcarbon", Amount: 1000}});

val dustNetherrack = <techreborn:dust:33>;
val dustSulfur = <thermalfoundation:material:771>;
val dustCoal = <thermalfoundation:material:768>;

val darkAshes = <techreborn:dust:15>;
val ashes = <techreborn:dust:3>;
val slag = <thermalfoundation:material:864>;

// 4x Sap => 14x Rubber + 1x Plantball + 1x Compressed Plants
mods.techreborn.centrifuge.removeInputRecipe(sap*4);
mods.techreborn.centrifuge.addRecipe(rubber*14, plantball, compressedPlants, null, sap*4, null, 1300, 5);

// 16x Rubber Log => 8x Sap + 6x Plantball + 1x Methane Cell + 4x Carbon Cell
mods.techreborn.centrifuge.removeInputRecipe(<techreborn:rubber_log>*16);
mods.techreborn.centrifuge.addRecipe(sap*8, plantball*6, methaneCell, carbonCell*4, <techreborn:rubber_log>*16, null, 5000, 5).setUseOreDict(false);

// 16x Netherrack Dust => 1x Redstone + 4x Sulfur + 1x Coal + 1x Gold Nugget
mods.techreborn.centrifuge.removeInputRecipe(dustNetherrack*16);
mods.techreborn.centrifuge.addRecipe(<minecraft:redstone>, dustSulfur*4, dustCoal, <minecraft:gold_nugget>, dustNetherrack*16, null, 2400, 5);

// 16x Dirt => 8x Sand + 1x Clay + 1x Plantball + 1x Compressed Plants
mods.techreborn.centrifuge.removeInputRecipe(<minecraft:dirt>*16);
mods.techreborn.centrifuge.addRecipe(<minecraft:sand>*8, <minecraft:clay_ball>, plantball, compressedPlants, <minecraft:dirt>*16, null, 2500, 4.8);

// 16x Grass => 8x Sand + 1x Clay + 2x Plantball + 2x Compressed Plants
mods.techreborn.centrifuge.removeInputRecipe(<minecraft:grass>*16);
mods.techreborn.centrifuge.addRecipe(<minecraft:sand>*8, <minecraft:clay_ball>, plantball*2, compressedPlants*2, <minecraft:grass>*16, null, 2500, 4.8);

// 2x Dark Ashes => 1x Ashes + 1x Slag
mods.techreborn.centrifuge.removeInputRecipe(darkAshes*2);
mods.techreborn.centrifuge.addRecipe(ashes, slag, null, null, darkAshes*2, null, 240, 5);
