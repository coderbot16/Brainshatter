// Purpose: Replaces all Implosion Compressor recipes with ones that take Industrial TNT instead of TNT
// Also bumps up the counts on implosion compressor recipes.

// Remove TNT from industrialTnt oredict
<ore:industrialTnt>.remove(<minecraft:tnt>);

// Common inputs/outputs: Industrial TNT and Dark Ashes
val itnt = <ic2:blockexplosive>;
val ash = <techreborn:dust:15>;

// Format: [ITNT count] IN => OUT
// Yields a recipe of [ITNT Count] + IN => OUT + [ITNT Count / 2]

// [8] 1 Iridium Alloy Ingot => 1 Iridium Plate

{
  val ntnt = 8;
  val ii = <techreborn:ingot:22>;
  val io = <techreborn:plates:37>;

  mods.techreborn.implosionCompressor.removeInputRecipe(ii);
  mods.techreborn.implosionCompressor.addRecipe(io, ash*(ntnt/2), ii, itnt*ntnt, 20, 32);
}

// [24] 4 Ruby Dust => 3 Ruby

{
  val ntnt = 24;
  val ii = <techreborn:dust:43>*4;
  val io = <techreborn:gem:0>*3;

  mods.techreborn.implosionCompressor.removeInputRecipe(ii);
  mods.techreborn.implosionCompressor.addRecipe(io, ash*(ntnt/2), ii, itnt*ntnt, 20, 32);
}

// [24] 4 Sapphire Dust => 3 Sapphire

{
  val ntnt = 24;
  val ii = <techreborn:dust:45>*4;
  val io = <techreborn:gem:1>*3;

  mods.techreborn.implosionCompressor.removeInputRecipe(ii);
  mods.techreborn.implosionCompressor.addRecipe(io, ash*(ntnt/2), ii, itnt*ntnt, 20, 32);
}

// [24] 4 Peridot Dust => 3 Peridot

{
  val ntnt = 24;
  val ii = <techreborn:dust:36>*4;
  val io = <techreborn:gem:2>*3;

  mods.techreborn.implosionCompressor.removeInputRecipe(ii);
  mods.techreborn.implosionCompressor.addRecipe(io, ash*(ntnt/2), ii, itnt*ntnt, 20, 32);
}

// [24] 4 Emerald Dust => 3 Elerald

{
  val ntnt = 24;
  val ii = <techreborn:dust:18>*4;
  val io = <minecraft:emerald>*3;

  mods.techreborn.implosionCompressor.removeInputRecipe(ii);
  mods.techreborn.implosionCompressor.addRecipe(io, ash*(ntnt/2), ii, itnt*ntnt, 20, 32);
}

// [32] 4 Diamond Dust => 3 Diamond

{
  val ntnt = 32;
  val ii = <techreborn:dust:16>*4;
  val io = <minecraft:diamond>*3;

  mods.techreborn.implosionCompressor.removeInputRecipe(ii);
  mods.techreborn.implosionCompressor.addRecipe(io, ash*(ntnt/2), ii, itnt*ntnt, 20, 32);
}

// [16] 4 Red Garnet Dust => 3 Red Garnet

{
  val ntnt = 16;
  val ii = <techreborn:dust:41>*4;
  val io = <techreborn:gem:3>*3;

  mods.techreborn.implosionCompressor.removeInputRecipe(ii);
  mods.techreborn.implosionCompressor.addRecipe(io, ash*(ntnt/2), ii, itnt*ntnt, 20, 32);
}

// [16] 4 Yellow Garnet Dust => 3 Yellow Garnet

{
  val ntnt = 16;
  val ii = <techreborn:dust:58>*4;
  val io = <techreborn:gem:4>*3;

  mods.techreborn.implosionCompressor.removeInputRecipe(ii);
  mods.techreborn.implosionCompressor.addRecipe(io, ash*(ntnt/2), ii, itnt*ntnt, 20, 32);
}

// [16] 9 Redstone Block => 4 Red Garnet Dust

{
  val ntnt = 16;
  val ii = <minecraft:redstone_block>*9;
  val io = <techreborn:dust:41>*4;

  mods.techreborn.implosionCompressor.removeInputRecipe(ii);
  mods.techreborn.implosionCompressor.addRecipe(io, ash*(ntnt/2), ii, itnt*ntnt, 20, 32);
}
