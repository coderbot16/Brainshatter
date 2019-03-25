// Purpose: Replace Portal Gun's Ender Pearl Dust with TechReborn's Ender Pearl Dust

mods.jei.JEI.hide(<portalgun:item_dust_ender_pearl>);
<ore:dustEnderPearl>.remove(<portalgun:item_dust_ender_pearl>);
furnace.remove(<portalgun:item_dust_ender_pearl>);
recipes.remove(<portalgun:item_miniature_black_hole>);

val e = <ore:dustEnderPearl>;
recipes.addShaped("miniature_black_hole", <portalgun:item_miniature_black_hole>, [
	[e, e, e],
	[e, <minecraft:nether_star>, e],
	[e, e, e]
]);
