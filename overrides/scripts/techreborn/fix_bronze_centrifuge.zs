// Purpose: Fixes https://github.com/TechReborn/TechReborn/issues/1632 - bronze dust dupe bug

mods.techreborn.centrifuge.removeInputRecipe(<thermalfoundation:material:99>);
mods.techreborn.centrifuge.addRecipe(<techreborn:smalldust:14>*3, <techreborn:smalldust:53>, null, null, <thermalfoundation:material:99>, null, 1500, 5);
