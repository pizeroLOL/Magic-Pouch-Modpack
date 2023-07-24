import mods.thaumcraft.Infusion;
import mods.embers.Alchemy;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

//ProjectE
recipes.remove(<projecte:transmutation_table>);

recipes.remove(<projecte:item.pe_archangel_smite>);
recipes.addShaped(<projecte:item.pe_archangel_smite>, [
	[<bloodmagic:sentient_bow:*>, <roots:mystic_feather>, <thebetweenlands:predator_bow:*>],
	[<ore:itemDarkMatter>, <projecte:item.pe_ring_iron_band>, <ore:itemDarkMatter>], 
	[<twilightforest:seeker_bow:*>, <roots:mystic_feather>, <thaumicwonders:bone_bow:*>]
]);

recipes.remove(<projecte:item.pe_covalence_dust>);
recipes.addShapeless(<projecte:item.pe_covalence_dust>, [
	<ore:runestone>, <ore:runestone>, <ore:runestone>,
	<ore:runestone>, <ore:runestone>,<ore:runestone>,
	<ore:runestone>,<ore:runestone>, <forbiddenmagicre:taint_charcoal>
]);

recipes.remove(<projecte:item.pe_covalence_dust:1>);
recipes.addShapeless(<projecte:item.pe_covalence_dust:1>,
	[<ore:ingotBloodInfusedIron>, <bloodarsenal:base_item:2>]);

recipes.remove(<projecte:item.pe_covalence_dust:2>);
recipes.addShapeless(<projecte:item.pe_covalence_dust:2>,
	[<ore:elvenDragonstone>, <ore:ingotTerrasteel>]);

recipes.remove(<projecte:item.pe_harvest_god>);
recipes.addShaped(<projecte:item.pe_harvest_god>, [
	[<thaumcraft:lamp_growth>, <matc:supremiumcrystal>, <thaumcraft:lamp_growth>],
	[<ore:itemDarkMatter>, <projecte:item.pe_ring_iron_band>, <ore:itemDarkMatter>],
	[<thaumcraft:lamp_growth>, <matc:supremiumcrystal>, <thaumcraft:lamp_growth>]
]);

recipes.removeByRecipeName("projecte:item.pe_matter_0");
recipes.addShaped(<projecte:item.pe_matter>, [
	[<projecte:item.pe_fuel:2> , <projecte:item.pe_fuel:2>, <projecte:item.pe_fuel:2>],
	[<projecte:item.pe_fuel:2>, <ore:blockSupremium>, <projecte:item.pe_fuel:2>],
	[<projecte:item.pe_fuel:2>, <projecte:item.pe_fuel:2>, <projecte:item.pe_fuel:2>]
]);

recipes.remove(<projecte:item.pe_time_watch>);
Alchemy.add(<projecte:item.pe_time_watch>,
	[<thaumicwonders:timewinder:*>, <astralsorcery:itemtunedcelestialcrystal>, <ore:blockSupremium>, <astralsorcery:itemtunedcelestialcrystal>, <ore:blockSupremium>],
	{"lead":20 to 25, "dawnstone": 20 to 25, "iron":20 to 25, "copper": 15 to 18});

recipes.remove(<projecte:item.pe_gem_density>);
recipes.addShaped(<projecte:item.pe_gem_density>, [
	[<soot:essence>.withTag({type: "chaos"}), <projecte:matter_block>, <soot:essence>.withTag({type: "chaos"})],
	[<aetherworks:item_resource>, <thaumcraft:voidseer_charm>, <aetherworks:item_resource>],
	[<soot:essence>.withTag({type: "chaos"}), <projecte:matter_block>, <soot:essence>.withTag({type: "chaos"})]
]);

recipes.remove(<projecte:item.pe_klein_star>);
recipes.addShaped(<projecte:item.pe_klein_star>, [
	[<projecte:item.pe_fuel:1>, <projecte:item.pe_fuel:1>, <projecte:item.pe_fuel:1>],
	[<projecte:item.pe_fuel:1>, <projecte:item.pe_philosophers_stone>, <projecte:item.pe_fuel:1>],
	[<projecte:item.pe_fuel:1>, <projecte:item.pe_fuel:1>, <projecte:item.pe_fuel:1>]
]);

recipes.remove(<projecte:alchemical_chest>);
recipes.addShaped(<projecte:alchemical_chest>, [
	[<projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust:1>, <projecte:item.pe_covalence_dust:2>],
	[<evilcraft:dark_blood_brick>, <bloodarsenal:blood_diamond:3>, <evilcraft:dark_blood_brick>],
	[<ore:ingotEbonyPsi>, <ironchest:iron_chest:6>, <ore:ingotIvoryPsi>]
]);

recipes.remove(<projecte:condenser_mk1>);
recipes.addShaped(<projecte:condenser_mk1>, [
	[<ore:oreCrystalFire>, <ore:blockSuperium>, <ore:oreCrystalAir>],
	[<ore:blockSuperium>, <projecte:alchemical_chest>, <ore:blockSuperium>],
	[<ore:oreCrystalEarth>, <ore:blockSuperium>, <ore:oreCrystalWater>]
]);

recipes.remove(<projecte:collector_mk1>);
recipes.addShaped(<projecte:collector_mk1>, [
	[<bloodarsenal:blood_infused_glowstone>, <botania:elfglass>, <bloodarsenal:blood_infused_glowstone>],
	[<bloodarsenal:blood_infused_glowstone>, <astralsorcery:blockworldilluminator>, <bloodarsenal:blood_infused_glowstone>],
	[<bloodarsenal:blood_infused_glowstone>, <mysticalagriculture:intermedium_furnace>, <bloodarsenal:blood_infused_glowstone>]
]);

recipes.remove(<projecte:collector_mk2>);
recipes.addShaped(<projecte:collector_mk2>, [
	[<bloodarsenal:blood_infused_glowstone>, <projecte:matter_block>, <bloodarsenal:blood_infused_glowstone>],
	[<bloodarsenal:blood_infused_glowstone>, <projecte:collector_mk1>, <bloodarsenal:blood_infused_glowstone>],
	[<bloodarsenal:blood_infused_glowstone>, <mysticalagriculture:superium_furnace>, <bloodarsenal:blood_infused_glowstone>]
]);

recipes.remove(<projecte:collector_mk3>);
recipes.addShaped(<projecte:collector_mk3>, [
	[<bloodarsenal:blood_infused_glowstone>, <projecte:matter_block:1>, <bloodarsenal:blood_infused_glowstone>],
	[<bloodarsenal:blood_infused_glowstone>, <projecte:collector_mk2>, <bloodarsenal:blood_infused_glowstone>],
	[<bloodarsenal:blood_infused_glowstone>, <mysticalagriculture:supremium_furnace>, <bloodarsenal:blood_infused_glowstone>]
]);

recipes.remove(<projecte:relay_mk1>);
recipes.addShaped(<projecte:relay_mk1>, [
	[<ore:runedObsidian>, <botania:elfglass>, <ore:runedObsidian>],
	[<ore:runedObsidian>, <evilcraft:dark_power_gem>, <ore:runedObsidian>],
	[<ore:runedObsidian>, <mysticalagriculture:intermedium_furnace>, <ore:runedObsidian>]
]);

recipes.remove(<projecte:relay_mk2>);
recipes.addShaped(<projecte:relay_mk2>, [
	[<ore:runedObsidian>, <projecte:matter_block>, <ore:runedObsidian>],
	[<ore:runedObsidian>, <projecte:relay_mk1>, <ore:runedObsidian>],
	[<ore:runedObsidian>, <mysticalagriculture:superium_furnace>, <ore:runedObsidian>]
]);

recipes.remove(<projecte:relay_mk3>);
recipes.addShaped(<projecte:relay_mk3>,	[
	[<ore:runedObsidian>, <projecte:matter_block:1>, <ore:runedObsidian>],
	[<ore:runedObsidian>, <projecte:relay_mk2>, <ore:runedObsidian>],
	[<ore:runedObsidian>, <mysticalagriculture:supremium_furnace>, <ore:runedObsidian>]
]);

recipes.remove(<projecte:item.pe_repair_talisman>);
recipes.addShaped(<projecte:item.pe_repair_talisman>,[
	[<projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust:1>, <projecte:item.pe_covalence_dust:2>],
	[<ore:clothManaweave>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 70 as short}]}), <ore:clothManaweave>],
	[<projecte:item.pe_covalence_dust:2>, <projecte:item.pe_covalence_dust:1>, <projecte:item.pe_covalence_dust>]
]);