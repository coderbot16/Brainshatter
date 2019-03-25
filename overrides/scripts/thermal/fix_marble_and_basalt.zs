// Purpose: Fixes the marble dust and basalt dust recipes in the centrifugal separators.
// Relevant issue: https://github.com/CoFH/Feedback/issues/1352

val basaltDust = <techreborn:dust:4>;
val flintDust = <techreborn:dust:22>;
val darkAshes = <techreborn:dust:15>;
val calciteDust = <techreborn:dust:8>;
val peridotDust = <techreborn:dust:36>;

val marbleDust = <techreborn:dust:32>;
val magnesiumDust = <techreborn:dust:30>;

mods.thermalexpansion.Centrifuge.removeRecipe(basaltDust);
mods.thermalexpansion.Centrifuge.addRecipe([flintDust*8, darkAshes*4, calciteDust*3, peridotDust], basaltDust*16, null, 2000);

mods.thermalexpansion.Centrifuge.removeRecipe(marbleDust);
mods.thermalexpansion.Centrifuge.addRecipe([calciteDust*7, magnesiumDust], marbleDust*8, null, 2000);
