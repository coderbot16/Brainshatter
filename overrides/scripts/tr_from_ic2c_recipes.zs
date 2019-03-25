// Purpose: Add IC2 machine recipes to TechReborn equivalent machines.

var waterCell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "water", Amount:1000}});
var hempOilPotion = <minecraft:potion>.withTag({CustomPotionEffects: [{Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1 as byte, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 900, Id: 10 as byte, Amplifier: 4 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1 as byte, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 600, Id: 17 as byte, Amplifier: 2 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1 as byte, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 400, Id: 9 as byte, Amplifier: 4 as byte}], display: {Name: "§r§bHigh Quality Hemp Oil"}});

// IC2C Macerator => TR Grinder

mods.techreborn.grinder.addRecipe(<ic2:itemmisc:180>*2, <ic2:blockmetal:2>, 300, 20);           // Uranium Ore (block) => 2x Uranium Ore (item)
mods.techreborn.grinder.addRecipe(<ic2:itemmisc:150>*2, <minecraft:spider_eye>, 300, 20);       // Spider Eye => 2x Grin Powder
mods.techreborn.grinder.addRecipe(<ic2:itemmisc:150>*3, <minecraft:fish:3>, 300, 20);           // Pufferfish => 3x Grin Powder
mods.techreborn.grinder.addRecipe(<ic2:itemmisc:150>*2, <minecraft:poisonous_potato>, 300, 20); // Poisonous Potato => 2x Grin Powder

mods.techreborn.grinder.addRecipe(<minecraft:string>*3, <ore:blockWool>, 300, 20);              // Wool => 3x String

mods.techreborn.grinder.addRecipe(<minecraft:gravel>, <minecraft:stone>, 300, 20);              // Stone => Gravel
/*
mods.techreborn.grinder.addRecipe(<minecraft:sand>, <minecraft:sandstone>, 300, 20)             // Sandstone => Sand
                       .setUseOreDict(false);  

mods.techreborn.grinder.addRecipe(<minecraft:sand:1>, <minecraft:red_sandstone>, 300, 20)       // Red Sandstone => Red Sand
                       .setUseOreDict(false);  
*/
mods.techreborn.grinder.addRecipe(<minecraft:snowball>, <minecraft:ice>, 300, 20);              // Ice => Snowball
mods.techreborn.grinder.addRecipe(<minecraft:dirt>, <ic2:itemmisc:350>, 300, 20);               // Plantball => 1x Dirt

mods.techreborn.grinder.addRecipe(<ic2:itemmisc:154>*3, <ic2:itemmisc:153>, 300, 20);           // Coffee Beans => Coffee Powder
mods.techreborn.grinder.addRecipe(<ic2:itemmisc:156>, <minecraft:wheat>, 300, 20);              // Wheat => Flour
mods.techreborn.grinder.addRecipe(<ic2:itemmisc:355>*2, <ic2:itemmisc:354>, 300, 20);           // Bio Ball => Raw Bio Fiber

// IC2C Extractor => TR Extractor

mods.techreborn.extractor.addRecipe(<ic2:itemdynamites:0>, <ic2:itemdynamites:1>, 400, 2);      // Sticky Dynamite => Dynamite
mods.techreborn.extractor.addRecipe(<minecraft:dye:1>*2, <minecraft:beetroot>, 400, 2);         // Beetroot => 2x Rose Red
mods.techreborn.extractor.addRecipe(<ic2:itemcellhydrant>, waterCell, 400, 2);                  // Water Cell => Hydration Cell

mods.techreborn.extractor.addRecipe(<ic2:itemmisc:104>, <ic2:itemmisc:103>, 400, 2);            // Bio Cell => Biofuel Cell
mods.techreborn.extractor.addRecipe(<ic2:itemmisc:104>, <ic2:itemcellempty:3>, 400, 2);         // Wood Gas Cell => Biofuel Cell
mods.techreborn.extractor.addRecipe(<ic2:itemmisc:102>, <ic2:itemmisc:101>, 400, 2);            // Hydrated Coal Cell => Coalfuel Cell

// IC2C Compressor => TR Compressor, Rolling Machine

mods.techreborn.compressor.addRecipe(<minecraft:blaze_rod>, <minecraft:blaze_powder>*5, 300, 4); // 5x Blaze Powder => Blaze Rod
mods.techreborn.compressor.addRecipe(<ic2:itemmisc:55>, <ic2:itemmisc:180>, 300, 4);            // Uranium Ore => Uranium Ingot

// 8x Copper Ingot => Dense Copper Plate
mods.techreborn.rollingMachine.addShaped(<ic2:itemmisc:259>, [
	[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
	[<ore:ingotCopper>, null,              <ore:ingotCopper>],
	[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>]
]);

mods.techreborn.compressor.addRecipe(<ic2:itemmisc:351>, <ic2:itemmisc:350>, 300, 4);           // Plantball => Compressed Plants
mods.techreborn.compressor.addRecipe(<ic2:itemmisc:352>, <ic2:itemmisc:7>, 300, 4);             // H. Coal Dust => H. Coal
mods.techreborn.compressor.addRecipe(<ic2:itemmisc:352>, <ic2:itemmisc:13>, 300, 4);            // H. Charcoal Dust => H. Coal
mods.techreborn.compressor.addRecipe(<ic2:itemmisc:100>, <ic2:itemcellempty>, 300, 4);          // Empty Cell => Compressed Air Cell
mods.techreborn.compressor.addRecipe(<ic2:itemmisc:356>, <ic2:itemmisc:354>, 300, 4);           // Bio Ball => Compressed Bio Ball
mods.techreborn.compressor.addRecipe(<ic2:blockminingpipe>*10, <ore:machineBlockBasic>, 300, 4); // Machine Frame => 10x Mining Pipe
mods.techreborn.compressor.addRecipe(<minecraft:diamond>, <ic2:itemmisc:252>, 300, 4);           // Coal Chunk => Diamond
mods.techreborn.compressor.addRecipe(<ic2:itemmisc:455>, <ic2:blockfoam>, 300, 4);              // Construction Foam => CF Pellet
mods.techreborn.compressor.addRecipe(hempOilPotion, <ic2:itemmisc:158>*64, 1800, 4);            // 64x Hemp Seed => High Quality Hemp Oil Potion
mods.techreborn.compressor.addRecipe(<buildcrafttransport:waterproof>, <techreborn:part:31>, 300, 4); // Sap => Pipe Sealant

// IC2C Recycler Recovering => TR Grinder

mods.techreborn.grinder.addRecipe(<ic2:itemmisc:151>, <minecraft:rotten_flesh>, 300, 20);       // Rotten Flesh => IC2 Fertilizer
mods.techreborn.grinder.addRecipe(<thermalfoundation:material:0>*2, <minecraft:minecart>, 300, 20); // Minecart => 2x Pulverized Iron

mods.techreborn.grinder.addRecipe(<minecraft:leather>*2, <minecraft:leather_boots>, 300, 20);      // Leather Boots => 2x Leather
mods.techreborn.grinder.addRecipe(<minecraft:leather>*4, <minecraft:leather_leggings>, 300, 20);   // Leather Leggings => 4x Leather
mods.techreborn.grinder.addRecipe(<minecraft:leather>*4, <minecraft:leather_chestplate>, 300, 20); // Leather Chestplate => 4x Leather
mods.techreborn.grinder.addRecipe(<minecraft:leather>*2, <minecraft:leather_helmet>, 300, 20);     // Leather Helmet => 2x Leather

// IC2C Wood Gas Burning / Centrifuging

val woodGasCell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "woodgas", Amount: 1000}});
val compressedAirCell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidcompressedair", Amount: 1000}});
val carbonCell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidcarbon", Amount: 1000}});
val hydrogenCell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidhydrogen", Amount: 1000}});

mods.techreborn.centrifuge.addRecipe(compressedAirCell*2, carbonCell, hydrogenCell, null, woodGasCell*4, null, 500, 5);

mods.techreborn.fluidGen.addGasFluid(<fluid:woodgas>, 2);

// IC2C Uranium Enricher => TR Industrial Blast Furnace

val uraniumIngot = <ic2:itemmisc:55>;
mods.techreborn.blastFurnace.addRecipe(<ic2:itemmisc:61>, null, uraniumIngot, <minecraft:coal:1>*4, 360, 120, 1000);
mods.techreborn.blastFurnace.addRecipe(<ic2:itemmisc:58>*2, null, uraniumIngot*2, <minecraft:blaze_rod>, 450, 120, 1000);
mods.techreborn.blastFurnace.addRecipe(<ic2:itemmisc:57>, null, uraniumIngot, <minecraft:redstone>*4, 540, 120, 1500);
mods.techreborn.blastFurnace.addRecipe(<ic2:itemmisc:59>, null, uraniumIngot, <minecraft:ender_pearl>, 720, 120, 1500);
mods.techreborn.blastFurnace.addRecipe(<ic2:itemmisc:60>*2, null, uraniumIngot*2, <minecraft:nether_star>, 2700, 120, 2200);

// IC2C Scrap Box => TR Scrap Box

mods.techreborn.scrapbox.addScrapboxDrop(<minecraft:soul_sand>); // Soul Sand
mods.techreborn.scrapbox.addScrapboxDrop(<ic2:itemmisc:350>); // Plantball
mods.techreborn.scrapbox.addScrapboxDrop(<minecraft:emerald>); // Emerald

mods.techreborn.scrapbox.addScrapboxDrop(<minecraft:bread>); // Bread
mods.techreborn.scrapbox.addScrapboxDrop(<ic2:itemtincanfilled>); // Filled Tin Can
mods.techreborn.scrapbox.addScrapboxDrop(<minecraft:cooked_porkchop>); // Cooked Porkchop

mods.techreborn.scrapbox.addScrapboxDrop(<minecraft:cooked_mutton>); // Cooked Mutton
mods.techreborn.scrapbox.addScrapboxDrop(<minecraft:cooked_rabbit>); // Cooked Rabbut
mods.techreborn.scrapbox.addScrapboxDrop(<minecraft:leather>); // Leather

mods.techreborn.scrapbox.addScrapboxDrop(<minecraft:feather>); // Feather
mods.techreborn.scrapbox.addScrapboxDrop(<minecraft:ghast_tear>); // Ghast Tear
mods.techreborn.scrapbox.addScrapboxDrop(<ic2:itembatsu>); // Single Use Battery
