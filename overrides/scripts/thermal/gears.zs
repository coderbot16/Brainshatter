// Purpose: Replace ThermalFoundation style gear recipes with BuildCraft style ones.

// ZenScript custom functions are so hilariously broken as to be useless, so we use an alternative emthod.

//var gearName as String; var gear as IItemStack; var base as IIngredient; var material as IIngredient;

mods.jei.JEI.removeAndHide(<buildcraftcore:gear_wood>);
mods.jei.JEI.removeAndHide(<buildcraftcore:gear_stone>);
mods.jei.JEI.removeAndHide(<buildcraftcore:gear_iron>);
mods.jei.JEI.removeAndHide(<buildcraftcore:gear_gold>);
mods.jei.JEI.removeAndHide(<buildcraftcore:gear_diamond>);

{
	val gearName = "wood"; val gear = <thermalfoundation:material:22>; val base = null; val material = <ore:stickWood>;
	
	recipes.remove(gear); 
	recipes.addShaped("gear_recipe_" + gearName, gear, [
		[null, material, null], 
		[material, base, material], 
		[null, material, null]
	]);
}

{
	val gearName = "stone"; val gear = <thermalfoundation:material:23>; val base = <ore:gearWood>; val material = <minecraft:cobblestone>; 
	
	recipes.remove(gear);
	recipes.addShaped("gear_recipe_" + gearName, gear, [
		[null, material, null], 
		[material, base, material], 
		[null, material, null]
	]);
}

{
	val gearName = "iron"; val gear = <thermalfoundation:material:24>; val base = <ore:gearStone>; val material = <minecraft:iron_ingot>; 
	
	recipes.remove(gear);
	recipes.addShaped("gear_recipe_" + gearName, gear, [
		[null, material, null], 
		[material, base, material], 
		[null, material, null]
	]);
}

{
	val gearName = "gold"; val gear = <thermalfoundation:material:25>; val base = <ore:gearIron>; val material = <minecraft:gold_ingot>; 
	
	recipes.remove(gear);
	recipes.addShaped("gear_recipe_" + gearName, gear, [
		[null, material, null], 
		[material, base, material], 
		[null, material, null]
	]);
}

{
	val gearName = "diamond"; val gear = <thermalfoundation:material:26>; val base = <ore:gearGold>; val material = <minecraft:diamond>; 
	
	recipes.remove(gear);
	recipes.addShaped("gear_recipe_" + gearName, gear, [
		[null, material, null], 
		[material, base, material], 
		[null, material, null]
	]);
}

{
	val gearName = "emerald"; val gear = <thermalfoundation:material:27>; val base = <ore:gearGold>; val material = <minecraft:emerald>; 
	
	recipes.remove(gear);
	recipes.addShaped("gear_recipe_" + gearName, gear, [
		[null, material, null], 
		[material, base, material], 
		[null, material, null]
	]);
}

{
	val gearName = "copper"; val gear = <thermalfoundation:material:256>; val base = <ore:gearStone>; val material = <ore:ingotCopper>; 
	
	recipes.remove(gear);
	recipes.addShaped("gear_recipe_" + gearName, gear, [
		[null, material, null], 
		[material, base, material], 
		[null, material, null]
	]);
}

{
	val gearName = "tin"; val gear = <thermalfoundation:material:257>; val base = <ore:gearStone>; val material = <ore:ingotTin>; 
	
	recipes.remove(gear);
	recipes.addShaped("gear_recipe_" + gearName, gear, [
		[null, material, null], 
		[material, base, material], 
		[null, material, null]
	]);
}

{
	val gearName = "silver"; val gear = <thermalfoundation:material:258>; val base = <ore:gearIron>; val material = <ore:ingotSilver>; 
	
	recipes.remove(gear);
	recipes.addShaped("gear_recipe_" + gearName, gear, [
		[null, material, null], 
		[material, base, material], 
		[null, material, null]
	]);
}

{
	val gearName = "lead"; val gear = <thermalfoundation:material:259>; val base = <ore:gearIron>; val material = <ore:ingotLead>; 
	
	recipes.remove(gear);
	recipes.addShaped("gear_recipe_" + gearName, gear, [
		[null, material, null], 
		[material, base, material], 
		[null, material, null]
	]);
}

{
	val gearName = "aluminum"; val gear = <thermalfoundation:material:260>; val base = <ore:gearIron>; val material = <ore:ingotAluminum>; 
	
	recipes.remove(gear);
	recipes.addShaped("gear_recipe_" + gearName, gear, [
		[null, material, null], 
		[material, base, material], 
		[null, material, null]
	]);
}

{
	val gearName = "nickel"; val gear = <thermalfoundation:material:261>; val base = <ore:gearStone>; val material = <ore:ingotNickel>; 
	
	recipes.remove(gear);
	recipes.addShaped("gear_recipe_" + gearName, gear, [
		[null, material, null], 
		[material, base, material], 
		[null, material, null]
	]);
}

{
	val gearName = "platinum"; val gear = <thermalfoundation:material:262>; val base = <ore:gearIron>; val material = <ore:ingotPlatinum>; 
	
	recipes.remove(gear);
	recipes.addShaped("gear_recipe_" + gearName, gear, [
		[null, material, null], 
		[material, base, material], 
		[null, material, null]
	]);
}

{
	val gearName = "iridium"; val gear = <thermalfoundation:material:263>; val base = <ore:gearIron>; val material = <ore:ingotIridium>; 
	
	recipes.remove(gear);
	recipes.addShaped("gear_recipe_" + gearName, gear, [
		[null, material, null], 
		[material, base, material], 
		[null, material, null]
	]);
}

{
	val gearName = "mana_infued"; val gear = <thermalfoundation:material:264>; val base = <ore:gearIron>; val material = <thermalfoundation:material:136>; 
	
	recipes.remove(gear);
	recipes.addShaped("gear_recipe_" + gearName, gear, [
		[null, material, null], 
		[material, base, material], 
		[null, material, null]
	]);
}

{
	val gearName = "steel"; val gear = <thermalfoundation:material:288>; val base = <ore:gearStone>; val material = <ore:ingotSteel>; 
	
	recipes.remove(gear);
	recipes.addShaped("gear_recipe_" + gearName, gear, [
		[null, material, null], 
		[material, base, material], 
		[null, material, null]
	]);
}

{
	val gearName = "electrum"; val gear = <thermalfoundation:material:289>; val base = <ore:gearIron>; val material = <ore:ingotElectrum>; 
	
	recipes.remove(gear);
	recipes.addShaped("gear_recipe_" + gearName, gear, [
		[null, material, null], 
		[material, base, material], 
		[null, material, null]
	]);
}

{
	val gearName = "invar"; val gear = <thermalfoundation:material:290>; val base = <ore:gearStone>; val material = <ore:ingotInvar>; 
	
	recipes.remove(gear);
	recipes.addShaped("gear_recipe_" + gearName, gear, [
		[null, material, null], 
		[material, base, material], 
		[null, material, null]
	]);
}

{
	val gearName = "bronze"; val gear = <thermalfoundation:material:291>; val base = <ore:gearStone>; val material = <ore:ingotBronze>; 
	
	recipes.remove(gear);
	recipes.addShaped("gear_recipe_" + gearName, gear, [
		[null, material, null], 
		[material, base, material], 
		[null, material, null]
	]);
}

{
	val gearName = "constantan"; val gear = <thermalfoundation:material:292>; val base = <ore:gearStone>; val material = <ore:ingotConstantan>; 
	
	recipes.remove(gear);
	recipes.addShaped("gear_recipe_" + gearName, gear, [
		[null, material, null], 
		[material, base, material], 
		[null, material, null]
	]);
}

{
	val gearName = "signalum"; val gear = <thermalfoundation:material:293>; val base = <ore:gearIron>; val material = <ore:ingotSignalum>; 
	
	recipes.remove(gear);
	recipes.addShaped("gear_recipe_" + gearName, gear, [
		[null, material, null], 
		[material, base, material], 
		[null, material, null]
	]);
}

{
	val gearName = "lumium"; val gear = <thermalfoundation:material:294>; val base = <ore:gearIron>; val material = <ore:ingotLumium>; 
	
	recipes.remove(gear);
	recipes.addShaped("gear_recipe_" + gearName, gear, [
		[null, material, null], 
		[material, base, material], 
		[null, material, null]
	]);
}

{
	val gearName = "enderium"; val gear = <thermalfoundation:material:295>; val base = <ore:gearIron>; val material = <ore:ingotEnderium>; 
	
	recipes.remove(gear);
	recipes.addShaped("gear_recipe_" + gearName, gear, [
		[null, material, null], 
		[material, base, material], 
		[null, material, null]
	]);
}
