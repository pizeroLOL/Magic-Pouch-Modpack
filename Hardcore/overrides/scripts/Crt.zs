import mods.roots.Fey;
import mods.roots.Pyre;
import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Infusion;
import mods.botania.ElvenTrade;
import mods.embers.Alchemy;
import mods.bloodmagic.AlchemyTable;
import mods.embers.Stamper;
import mods.appliedenergistics2.Inscriber;
import mods.bloodmagic.BloodAltar;
import mods.embers.Melter;
import mods.astralsorcery.Altar;
import mods.botania.RuneAltar;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.thaumcraft.Crucible;
import mods.integrateddynamics.Squeezer;
import mods.initialinventory.InvHandler;
import mods.embers.Mixer;
import mods.tconstruct.Drying;

//移除工作台配方
var items as IItemStack[] = [
    <eplus:advanced_table>,
    <eplus:table_upgrade>,
    <xat:glowing_ingot>,
    <xat:glowing_gem>,
    <xat:elf_sap>,
    <xat:faelis_food>,
    <xat:dwarf_stout>,
    <xat:dragon_gem>,
    <appliedenergistics2:part:140>,
    <appliedenergistics2:inscriber>,
    <appliedenergistics2:controller>,
    <appliedenergistics2:drive>,
    <appliedenergistics2:chest>,
    <appliedenergistics2:part:280>,
    <appliedenergistics2:part:281>,
    <appliedenergistics2:part:240>,
    <appliedenergistics2:part:241>,
    <appliedenergistics2:part:260>,
    <appliedenergistics2:part:261>,
    <appliedenergistics2:material:42>,
    <appliedenergistics2:quartz_glass> * 4,
    <appliedenergistics2:cell_workbench>,
    <appliedenergistics2:security_station>,
    <appliedenergistics2:crank>,
    <appliedenergistics2:grindstone>,
    <appliedenergistics2:material:40>,
    <appliedenergistics2:energy_acceptor>,
    <integratedtunnels:part_interface_fluid_item>,
    <integratedtunnels:part_interface_item_item>,
    <integratedtunnels:part_interface_item_item>,
    <integrateddynamics:cable>,
    <matc:prudentiumcrystal>,
    <matc:intermediumcrystal>,
    <matc:superiumcrystal>,
    <matc:supremiumcrystal>,
    <mysticalagriculture:master_infusion_crystal>,
    <mysticalagriculture:growth_accelerator>,
    <minecraft:crafting_table> * 9,
    <tconstruct:smeltery_controller>,
	<tconstruct:seared_tank:*>,
	<tconstruct:faucet>,
	<tconstruct:channel>,
	<tconstruct:casting:*>,
	<tconstruct:seared_glass:*>,
	<tconstruct:smeltery_io>,
	<tconstruct:seared_furnace_controller>,
	<tconstruct:tinker_tank_controller>,
	<tconstruct:seared_slab:*>,
	<tconstruct:seared_slab2:*>,
	<tconstruct:cast>,
	<tconstruct:clay_cast>,
	<tconstruct:seared_stairs_stone>,
	<tconstruct:seared_stairs_cobble>,
	<tconstruct:seared_stairs_paver>,
	<tconstruct:seared_stairs_brick>,
	<tconstruct:seared_stairs_brick_cracked>,
	<tconstruct:seared_stairs_brick_fancy>,
	<tconstruct:seared_stairs_brick_triangle>,
	<tconstruct:seared_stairs_brick_square>,
	<tconstruct:seared_stairs_brick_small>,
	<tconstruct:seared_stairs_road>,
	<tconstruct:seared_stairs_tile>,
	<tconstruct:seared_stairs_creeper>,
	<tconstruct:soil>,
	<xat:titan_spirit>,
    <tinkersaddons:modifier_item:4>,
    <tinkersaddons:modifier_item:3>,
    <tinkersaddons:modifier_item:2>,
    <tinkersaddons:modifier_item:1>,
    <tconstruct:seared:*>,
	<mystcraft:writingdesk>,
	<mystcraft:blockinkmixer>,
	<mystcraft:vial>,
	<naturalpledge:foodbelt>,
	<bloodarsenal:glass_sacrificial_dagger>
];

for i, item in items {
    recipes.remove(item);
}

//Content Tweaker
Fey.addRecipe("dragon_scale", <contenttweaker:composite_dragon_scale>, [<quark:enderdragon_scale>, <mysticalagradditions:stuff:3>, <dragonmounts:enchant_dragonscales>, <thebetweenlands:items_misc:54>, <ore:elvenDragonstone>]);
Alchemy.add(<contenttweaker:forbidden_fig_pie>, [<roots:wildewheet_bread>, <thaumicwonders:panacea:1>, <naturalpledge:apple_immortality>, <thebetweenlands:forbidden_fig>, <wizardry:fairy_imbued_apple>], {"silver":6 to 64, "copper": 6 to 64, "lead":6 to 64, "dawnstone": 6 to 64, "iron":6 to 64});
mods.naturesaura.TreeRitual.addRecipe("infinity_spring", <forbiddenmagicre:sapling_tainted>, <contenttweaker:infinity_spring>, 666, [<soot:mug>.withTag({Fluid: {FluidName: "snowpoff", Amount: 250}}), <thaumcraft:bottle_taint>, <thebetweenlands:elixir:12>, <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:nether"}), <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:blazing_trail", Duration: 9600, Amplifier: 0}]}), <thaumicwonders:lethe_water>, <minecraft:dragon_breath>, <botania:manabottle>]);

RuneAltar.addRecipe(<contenttweaker:ultimate_sword>, [<bloodmagic:bound_sword:*>, <thebetweenlands:ancient_greatsword:*>, <thebetweenlands:shockwave_sword:*>, <ichoriumkit:ichorium_sword_adv:*>, <forbiddenmagicre:morph_sword:*>, <wizardry:unicorn_dagger:*>, <twilightforest:fiery_sword:*>, <roots:runed_sword:*>, <thaumcraft:elemental_sword:*>], 666666);

Infusion.registerRecipe("void_eye_item", "", <contenttweaker:voidseer_eye>, 66, [<aspect:praecantatio>*66, <aspect:alienis>*66, <aspect:infernus>*66], <minecraft:ender_eye>, [<botania:thirdeye>, <embers:golems_eye>, <xat:dragons_eye>, <thebetweenlands:items_misc:52>, <naturesaura:eye>, <thaumcraft:voidseer_charm>]);

AlchemyTable.addRecipe(<contenttweaker:artificial_demon>, [<botania:cosmetic:13>, <botania:felpumpkin>, <thaumicperiphery:malignant_heart>, <wizardry:devil_dust>, <forbiddenmagicre:diabolist_fork>, <thaumcraft:flesh_block>], 66666,666,5);

Altar.addTraitAltarRecipe("sky_orb", <contenttweaker:sky_orb>, 6666, 666, [
    <thaumcraft:bath_salts>, <ore:dustAstralStarmetal>, <thaumcraft:bath_salts>,<ore:dustAstralStarmetal>, <botania:tinyplanet>, 
	<ore:dustAstralStarmetal>, <thaumcraft:bath_salts>, <ore:dustAstralStarmetal>, <thaumcraft:bath_salts>, <mystcraft:blockcrystal>,
<mystcraft:blockcrystal>, <mystcraft:blockcrystal>, <mystcraft:blockcrystal>, <botania:elfglass>, <botania:elfglass>, 
	<botania:elfglass>, <botania:elfglass>, <botania:elfglass>, <botania:elfglass>, <botania:elfglass>,
	<botania:elfglass>, <botania:elfglass>, <botania:elfglass>, <botania:elfglass>, <botania:elfglass>,
    <aetherworks:item_resource>, <aetherworks:item_resource>, <aetherworks:item_resource>, <aetherworks:item_resource>, <aetherworks:item_resource>, <aetherworks:item_resource>, <aetherworks:item_resource>, <aetherworks:item_resource>
],
"astralsorcery.constellation.vicio");
//压印器配方移除

var inscribeitems as IItemStack[] = [
<appliedenergistics2:material:17>,
<appliedenergistics2:material:18>,
<appliedenergistics2:material:22>,
<appliedenergistics2:material:23>,
<appliedenergistics2:material:24>,
<appliedenergistics2:material:25> * 2,
<appliedenergistics2:material:28> * 2
];

for i, inscribeitem in inscribeitems {
    Inscriber.removeRecipe(inscribeitem);
}

//JEI移除配方并隐藏

var jeiremoveandhideitems as IItemStack[] = [
    <appliedenergistics2:crank>,
    <appliedenergistics2:material:40>,
    <appliedenergistics2:grindstone>,
    <tconstruct:smeltery_controller>,
	<tconstruct:seared_tank:*>,
	<tconstruct:faucet>,
	<tconstruct:channel>,
	<tconstruct:casting:*>,
	<tconstruct:seared_glass:*>,
	<tconstruct:smeltery_io>,
	<tconstruct:seared_furnace_controller>,
	<tconstruct:tinker_tank_controller>,
	<tconstruct:seared_slab:*>,
	<tconstruct:seared_slab2:*>,
	<tconstruct:cast>,
	<tconstruct:clay_cast>,
	<tconstruct:seared_stairs_stone>,
	<tconstruct:seared_stairs_cobble>,
	<tconstruct:seared_stairs_paver>,
	<tconstruct:seared_stairs_brick>,
	<tconstruct:seared_stairs_brick_cracked>,
	<tconstruct:seared_stairs_brick_fancy>,
	<tconstruct:seared_stairs_brick_triangle>,
	<tconstruct:seared_stairs_brick_square>,
	<tconstruct:seared_stairs_brick_small>,
	<tconstruct:seared_stairs_road>,
	<tconstruct:seared_stairs_tile>,
	<tconstruct:seared_stairs_creeper>,
	<tconstruct:soil>,
	<tconstruct:seared:*>
];

for i, jeiremoveandhideitem in jeiremoveandhideitems {
JEI.removeAndHide(jeiremoveandhideitem);
}


//eplus

Infusion.registerRecipe("advanced_table", "", <eplus:advanced_table>, 15, [<aspect:praecantatio>*50, <aspect:cognitio>*20, <aspect:alienis>*40, <aspect:vacuos>*40, <aspect:potentia>*40], <minecraft:enchanting_table>, [<botania:quartztypedark>, <botania:quartztypedark>, <botania:quartztypedark>, <botania:quartztypedark>, <botania:quartztypedark>, <ore:ingotElvenElementium>, <ore:ingotElvenElementium>, <thaumicwonders:disjunction_cloth:*>]);

//xat
recipes.addShaped(<xat:glowing_ingot>, [[<ore:dustGlowstone>, <ore:powderBlaze>, <ore:dustGlowstone>], [<ore:powderBlaze>, <ore:ingotBrass>, <ore:powderBlaze>],[<ore:dustGlowstone>, <ore:powderBlaze>, <ore:dustGlowstone>]]);
recipes.addShaped(<xat:glowing_ingot>, [[<ore:dustGlowstone>, <ore:powderBlaze>, <ore:dustGlowstone>], [<ore:powderBlaze>, <ore:ingotDawnstone>, <ore:powderBlaze>],[<ore:dustGlowstone>, <ore:powderBlaze>, <ore:dustGlowstone>]]);
recipes.addShaped(<xat:glowing_gem>, [[<ore:ingotGlowing>, <ore:dustGlowing>, <ore:ingotGlowing>], [<ore:dustGlowing>, <botania:storage:4>, <ore:dustGlowing>],[<ore:ingotGlowing>, <ore:dustGlowing>, <ore:ingotGlowing>]]);
recipes.addShaped(<xat:glowing_gem>, [[<ore:ingotGlowing>, <ore:dustGlowing>, <ore:ingotGlowing>], [<ore:dustGlowing>, <ore:blockThaumium>, <ore:dustGlowing>],[<ore:ingotGlowing>, <ore:dustGlowing>, <ore:ingotGlowing>]]);
ElvenTrade.addRecipe([<xat:elf_sap>], [<ore:bEnderAirBottle>,<xat:mana_crystal>]);
Infusion.registerRecipe("xff", "", <xat:faelis_food>, 5, [<aspect:alienis> * 30, <aspect:bestia> * 30, <aspect:aer> * 30, <aspect:sensus> * 15], <xat:mana_crystal>, [<thaumcraft:traveller_boots:*>, <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "aer"}]}), <thaumcraft:triple_meat_treat>, <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "bestia"}]}), <ore:gemGlowing>, <minecraft:red_flower:3>]);
Alchemy.add(<xat:dwarf_stout>, [<xat:mana_crystal>, <embers:adhesive>, <embers:pickaxe_dawnstone:*>, <embers:blend_caminite>, <forge:bucketfilled>.withTag({FluidName: "oil_dwarf", Amount: 1000})], {"lead":20 to 30, "dawnstone": 30 to 40, "iron":15 to 25});
AlchemyTable.addRecipe(<xat:dragon_gem>, [<xat:dragons_eye>, <bloodmagic:blood_shard>, <bloodmagic:sigil_blood_light:*>, <xat:arcing_orb>, <bloodarsenal:base_item:7>, <bloodmagic:sigil_divination>], 10000,200,2);
Altar.addTraitAltarRecipe("xts", <xat:titan_spirit>, 3000, 100, [
    <ore:gemGlowing>, null, <ore:gemGlowing>,null, <astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.discidia"}}),
	null, <ore:gemGlowing>, null, <ore:gemGlowing>,null, null, null, null, null, null,
	null, null, null, null, null,
	null, <astralsorcery:itemcelestialcrystal:*>, <astralsorcery:itemcelestialcrystal:*>, <astralsorcery:itemcelestialcrystal:*>, <astralsorcery:itemcelestialcrystal:*>,
],
"astralsorcery.constellation.discidia");
//ae2
recipes.addShaped(<appliedenergistics2:part:140> * 3, [[<botania:managlass>, <botania:managlass>, <botania:managlass>], [<ore:dustQuartz>, <botania:corporeaspark>, <ore:dustQuartz>],[<botania:managlass>, <botania:managlass>, <botania:managlass>]]);
recipes.addShapedMirrored(<appliedenergistics2:inscriber>, [[<ore:ingotIron>, <minecraft:sticky_piston>, <ore:ingotIron>], [<ore:crystalFluix>, null, <ore:ingotIron>], [<ore:ingotIron>, <minecraft:sticky_piston>, <ore:ingotIron>]]);
Inscriber.addRecipe(<appliedenergistics2:material:18>, <ore:ingotDawnstone>, true, <appliedenergistics2:material:15>);
Inscriber.addRecipe(<appliedenergistics2:material:18>, <ore:ingotBrass>, true, <appliedenergistics2:material:15>);
Inscriber.addRecipe(<appliedenergistics2:material:17>, <ore:gemDiamond>, true, <appliedenergistics2:material:14>);
Stamper.add(<appliedenergistics2:material:19>, <liquid:iron>*1296, <embers:stamp_flat>, <ore:itemSilicon>);
Stamper.add(<appliedenergistics2:material:15>, <liquid:iron>*1296, <embers:stamp_flat>, <ore:ingotBrass>);
Stamper.add(<appliedenergistics2:material:15>, <liquid:iron>*1296, <embers:stamp_flat>, <ore:ingotDawnstone>);
Stamper.add(<appliedenergistics2:material:14>, <liquid:iron>*1296, <embers:stamp_flat>, <ore:gemDiamond>);
Stamper.add(<appliedenergistics2:material:13>, <liquid:iron>*1296, <embers:stamp_flat>, <ore:crystalPureCertusQuartz>);
Inscriber.addRecipe(<appliedenergistics2:material:22>, <wizardry:devil_dust>, false, <appliedenergistics2:material:18>, <appliedenergistics2:material:20>);
Inscriber.addRecipe(<appliedenergistics2:material:24>, <wizardry:devil_dust>, false, <appliedenergistics2:material:17>, <appliedenergistics2:material:20>);
Inscriber.addRecipe(<appliedenergistics2:material:23>, <wizardry:devil_dust>, false, <appliedenergistics2:material:16>, <appliedenergistics2:material:20>);
recipes.addShaped(<appliedenergistics2:controller>, [[<thaumcraft:stone_arcane>, <ore:crystalPureFluix>, <thaumcraft:stone_arcane>], [<ore:crystalPureFluix>, <botania:corporeaindex>, <ore:crystalPureFluix>], [<thaumcraft:stone_arcane>, <ore:crystalPureFluix>, <thaumcraft:stone_arcane>]]);
recipes.addShaped(<appliedenergistics2:drive>, [[<ore:ingotIron>, <appliedenergistics2:material:24>, <ore:ingotIron>], [<appliedenergistics2:part:16>, <ironchest:iron_chest:6>, <appliedenergistics2:part:16>], [<ore:ingotIron>, <appliedenergistics2:material:24>, <ore:ingotIron>]]);
recipes.addShaped(<appliedenergistics2:chest>, [[<botania:managlass>, <appliedenergistics2:part:380>, <botania:managlass>], [<appliedenergistics2:part:16>, <ironchest:iron_chest:6>, <appliedenergistics2:part:16>], [<ore:ingotIron>, <ore:crystalFluix>, <ore:ingotIron>]]);
recipes.addShapeless(<appliedenergistics2:part:281>, [<appliedenergistics2:material:23>, <botania:animatedtorch>, <ore:dyeBlue>]);
recipes.addShapeless(<appliedenergistics2:part:280>, [<appliedenergistics2:material:23>, <botania:animatedtorch>]);
recipes.addShaped(<appliedenergistics2:part:240>, [[null, <appliedenergistics2:material:44>, null], [<ore:ingotIron>, <thaumcraft:hungry_chest>, <ore:ingotIron>]]);
recipes.addShaped(<appliedenergistics2:part:241>, [[<ore:dyeBlue>, <appliedenergistics2:material:44>, <ore:dyeBlue>], [<ore:ingotIron>, <embers:vacuum>, <ore:ingotIron>]]);
recipes.addShaped(<appliedenergistics2:part:260>, [[<ore:ingotIron>, <appliedenergistics2:material:43>, <ore:ingotIron>], [null, <embers:item_dropper>, null]]);
recipes.addShaped(<appliedenergistics2:part:261>, [[<ore:ingotIron>, <appliedenergistics2:material:43>, <ore:ingotIron>], [<ore:dyeBlue>, <embers:fluid_dropper>, <ore:dyeBlue>]]);
recipes.addShaped(<appliedenergistics2:cell_workbench>, [[<ore:ingotAstralStarmetal>, <appliedenergistics2:material:23>, <ore:ingotAstralStarmetal>], [<ore:ingotIron>, <ironchest:iron_chest:6>, <ore:ingotIron>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
recipes.addShaped(<appliedenergistics2:energy_acceptor>, [[<ore:ingotIron>, <botania:managlass>, <ore:ingotIron>], [<botania:managlass>, <ore:crystalFluix>, <botania:managlass>], [<ore:ingotIron>, <botania:managlass>, <ore:ingotIron>]]);
recipes.addShaped(<appliedenergistics2:security_station>, [[<ore:ingotIron>, <appliedenergistics2:chest>, <ore:ingotIron>], [<appliedenergistics2:part:16>, <appliedenergistics2:material:37>, <appliedenergistics2:part:16>], [<ore:ingotIron>, <appliedenergistics2:material:24>, <ore:ingotIron>]]);
recipes.addShaped(<appliedenergistics2:material:42> * 2, [[<ore:dustFluix>, <ore:crystalCertusQuartz>, <bloodarsenal:base_item:7>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
recipes.addShaped(<appliedenergistics2:quartz_glass> * 4, [[<ore:dustQuartz>, <botania:managlass>, <ore:dustQuartz>], [<botania:managlass>, <ore:dustQuartz>, <botania:managlass>], [<ore:dustQuartz>, <botania:managlass>, <ore:dustQuartz>]]);
recipes.addShapedMirrored(<appliedenergistics2:material:25> * 2, [[<ore:ingotBrass>, <ore:ingotIron>, null], [<wizardry:devil_dust>, <appliedenergistics2:material:23>, <ore:ingotIron>], [<ore:ingotBrass>, <ore:ingotIron>, null]]);
recipes.addShapedMirrored(<appliedenergistics2:material:28> * 2, [[<ore:gemDiamond>, <ore:ingotIron>, null], [<wizardry:devil_dust>, <appliedenergistics2:material:23>, <ore:ingotIron>], [<ore:gemDiamond>, <ore:ingotIron>, null]]);
recipes.addShapedMirrored(<appliedenergistics2:material:25> * 2, [[<ore:ingotDawnstone>, <ore:ingotIron>, null], [<wizardry:devil_dust>, <appliedenergistics2:material:23>, <ore:ingotIron>], [<ore:ingotDawnstone>, <ore:ingotIron>, null]]);

Squeezer.addRecipe(<minecraft:wheat>, <appliedenergistics2:material:4>);

//integrateddynamics
recipes.addShapeless(<integrateddynamics:menril_sapling>,[<integrateddynamics:menril_berries>, <integrateddynamics:menril_berries>, <integrateddynamics:menril_berries>, <ore:treeSapling>]);
BloodAltar.addRecipe(<integrateddynamics:menril_berries>, <rustic:ironberries>, 0, 3000,50,100);
recipes.addShaped(<integrateddynamics:cable> * 3 , [[<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>], [<appliedenergistics2:part:16>, <wizardry:devil_dust>, <appliedenergistics2:part:16>], [<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>]]);
recipes.addShaped(<integratedtunnels:part_interface_item_item> * 4, [[<integrateddynamics:crystalized_menril_chunk>, <appliedenergistics2:interface>, <integrateddynamics:crystalized_menril_chunk>], [<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>]]);
recipes.addShaped(<integratedtunnels:part_interface_fluid_item> * 4, [[<integrateddynamics:crystalized_menril_chunk>, <appliedenergistics2:fluid_interface>, <integrateddynamics:crystalized_menril_chunk>], [<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>]]);

//embersconstruct

var basicmbii = <liquid:molten_blood_infused_iron>;
Melter.add(basicmbii*144, <ore:ingotBloodInfusedIron>);

var toolparts as IItemStack[] = [
<tconstruct:shard>.withTag({Material: "blood_infused_iron"}),
<tconstruct:wide_guard>.withTag({Material: "blood_infused_iron"}),
<tconstruct:tool_rod>.withTag({Material: "blood_infused_iron"}),
<tconstruct:binding>.withTag({Material: "blood_infused_iron"}),
<tconstruct:wide_guard>.withTag({Material: "blood_infused_iron"}),
<tconstruct:hand_guard>.withTag({Material: "blood_infused_iron"}),
<tconstruct:cross_guard>.withTag({Material: "blood_infused_iron"}),
<tconstruct:knife_blade>.withTag({Material: "blood_infused_iron"}),
<bloodarsenal:base_item:4>,
<tconstruct:sharpening_kit>.withTag({Material: "blood_infused_iron"}),
<tconstruct:shovel_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:axe_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:sword_blade>.withTag({Material: "blood_infused_iron"}),
<tconstruct:pick_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:kama_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:arrow_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:tough_tool_rod>.withTag({Material: "blood_infused_iron"}),
<tconstruct:tough_binding>.withTag({Material: "blood_infused_iron"}),
<tconstruct:pan_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:sign_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:broad_axe_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:large_sword_blade>.withTag({Material: "blood_infused_iron"}),
<tconstruct:hammer_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:excavator_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:scythe_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:large_plate>.withTag({Material: "blood_infused_iron"})
];

var toolparts2 as IIngredient[] = [
<tconstruct:shard>.withTag({Material: "blood_infused_iron"}),
<tconstruct:wide_guard>.withTag({Material: "blood_infused_iron"}),
<tconstruct:tool_rod>.withTag({Material: "blood_infused_iron"}),
<tconstruct:binding>.withTag({Material: "blood_infused_iron"}),
<tconstruct:wide_guard>.withTag({Material: "blood_infused_iron"}),
<tconstruct:hand_guard>.withTag({Material: "blood_infused_iron"}),
<tconstruct:cross_guard>.withTag({Material: "blood_infused_iron"}),
<tconstruct:knife_blade>.withTag({Material: "blood_infused_iron"}),
<bloodarsenal:base_item:4>,
<tconstruct:sharpening_kit>.withTag({Material: "blood_infused_iron"}),
<tconstruct:shovel_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:axe_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:sword_blade>.withTag({Material: "blood_infused_iron"}),
<tconstruct:pick_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:kama_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:arrow_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:tough_tool_rod>.withTag({Material: "blood_infused_iron"}),
<tconstruct:tough_binding>.withTag({Material: "blood_infused_iron"}),
<tconstruct:pan_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:sign_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:broad_axe_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:large_sword_blade>.withTag({Material: "blood_infused_iron"}),
<tconstruct:hammer_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:excavator_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:scythe_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:large_plate>.withTag({Material: "blood_infused_iron"})
];

var stampparts as IIngredient[] = [
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:shard"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:wide_guard"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:tool_rod"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:binding"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:wide_guard"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:hand_guard"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:cross_guard"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:knife_blade"}),
<embers:stamp_bar>,
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:sharpening_kit"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:shovel_head"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:axe_head"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:sword_blade"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:pick_head"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:kama_head"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:arrow_head"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:tough_tool_rod"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:tough_binding"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:pan_head"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:sign_head"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:broad_axe_head"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:large_sword_blade"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:hammer_head"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:excavator_head"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:scythe_head"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:large_plate"})

];

// exchange by ldsdb

for i in 0 to 26{
var toolpart = toolparts[i];
var toolpart2 = toolparts2[i];
var stamppart = stampparts[i];
if (i==0){
Stamper.add(toolpart , basicmbii*72, stamppart);Melter.add(basicmbii*72, toolpart2);}
else if (i>0 && i<=8){
Stamper.add(toolpart , basicmbii*144, stamppart);Melter.add(basicmbii*144, toolpart2);}
else if (i>8 && i<=15){
Stamper.add(toolpart , basicmbii*288, stamppart);Melter.add(basicmbii*288, toolpart2);}
else if (i>15 && i<=19){
Stamper.add(toolpart , basicmbii*432, stamppart);Melter.add(basicmbii*432, toolpart2);}
else if (i>19 && i<=26){
Stamper.add(toolpart , basicmbii*1152, stamppart);Melter.add(basicmbii*1152, toolpart2);}
}

recipes.replaceAllOccurences(<tconstruct:cast>, <embersconstruct:stamp:*>);
Stamper.add(<tconstruct:firewood> , <liquid:lava> * 250, <embers:stamp_flat>, <ore:plankWood>);

var arcanestones as IItemStack[] = [
<thaumcraft:stone_arcane>,
<chisel:arcane_stone:*>,
<chisel:arcane_stone1:*>
];

for i,arcanestone in arcanestones{
recipes.replaceAllOccurences(<tconstruct:seared>, arcanestone);
}

Mixer.add(<liquid:pigiron> * 4, [<liquid:iron> * 4, <liquid:blood> * 1, <liquid:clay> * 2]);
Mixer.add(<liquid:knightslime> * 2,[<liquid:iron> * 2, <liquid:purpleslime> * 1, <liquid:stone> * 2]);

//mysticalagriculture
RuneAltar.addRecipe(<matc:prudentiumcrystal>, [<matc:inferiumcrystal>, <ore:essencePrudentium>, <ore:essencePrudentium>, <ore:essencePrudentium>, <botania:specialflower>.withTag({type: "agricarnation"}), <ore:shardProsperity>, <ore:shardProsperity>, <ore:shardProsperity>], 20000);
Infusion.registerRecipe("mya3", "", <matc:intermediumcrystal>, 20, [<aspect:herba>*30, <aspect:praecantatio>*30, <aspect:victus>*30, <aspect:fabrico>*30], <matc:prudentiumcrystal>, [<thaumcraft:lamp_growth>, <ore:essenceIntermedium>, <astralsorcery:itemcoloredlens:2>, <ore:essenceIntermedium>, <thaumcraft:lamp_growth>, <ore:essenceIntermedium>, <thaumcraft:elemental_hoe>, <ore:essenceIntermedium>]);
BloodAltar.addRecipe(<matc:superiumcrystal>,  <matc:intermediumcrystal>, 4, 50000,100,200);
Alchemy.add(<matc:supremiumcrystal>,
	[<matc:superiumcrystal>.anyDamage(), <ore:essenceSupremium>, <ore:essenceSupremium>, <ore:essenceSupremium>, <ore:essenceSupremium>],
	{"iron": 20 to 30, "dawnstone": 30 to 40});
Altar.addTraitAltarRecipe("mya5", <mysticalagriculture:master_infusion_crystal>, 4500, 200, [
    <bloodmagic:component:5>, null, <botania:specialflower>.withTag({type: "agricarnation"}),null, <matc:supremiumcrystal>.anyDamage(), 
	null, <evilcraft:blood_potash>, null, <embers:catalytic_plug>, <ore:essenceInsanium>,
<ore:essenceInsanium>, <ore:essenceInsanium>, <ore:essenceInsanium>, null, null, 
	null, null, null, null, null,
	null, <astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.aevitas"}}), <thaumcraft:elemental_hoe>, <thaumcraft:lamp_growth>, <astralsorcery:itemcoloredlens:2>,
    <ore:essenceInsanium>, <ore:essenceInsanium>, <ore:essenceInsanium>, <ore:essenceInsanium>
],
"astralsorcery.constellation.aevitas");
recipes.addShaped(<mysticalagriculture:growth_accelerator>, [[<ore:blockInferiumEssence>, <ore:blockInferiumEssence>, <ore:blockInferiumEssence>], [<naturesaura:infused_iron>, <botania:specialflower>.withTag({type: "agricarnation"}), <naturesaura:infused_iron>], [<ore:blockInferiumEssence>, <ore:blockInferiumEssence>, <ore:blockInferiumEssence>]]);

//bloodmagic
mods.bloodmagic.AlchemyArray.addRecipe(<bloodarsenal:blood_diamond:3>, <bloodmagic:component:8>, <bloodarsenal:blood_diamond:2>);

// Building Gadgets
recipes.remove(<buildinggadgets:destructiontool:*>);
recipes.addShaped(<buildinggadgets:destructiontool>.withTag({Unbreakable: 1 as byte}), [[<ancientspellcraft:enchanted_page>, <ebwizardry:magic_crystal:4>, <ancientspellcraft:enchanted_page>],[<ore:manaPearl>, <wizardry:devil_dust>, <ore:manaPearl>], [<ancientspellcraft:enchanted_page>, <ebwizardry:magic_crystal:4>, <ancientspellcraft:enchanted_page>]]);

recipes.remove(<buildinggadgets:copypastetool:*>);
recipes.addShaped(<buildinggadgets:copypastetool>.withTag({Unbreakable: 1 as byte}), [[<ancientspellcraft:enchanted_page>, <ebwizardry:magic_crystal:3>, <ancientspellcraft:enchanted_page>],[<ore:manaDiamond>, <wizardry:devil_dust>, <ore:manaDiamond>], [<ancientspellcraft:enchanted_page>, <ebwizardry:magic_crystal:3>, <ancientspellcraft:enchanted_page>]]);

recipes.remove(<buildinggadgets:exchangertool:*>);
recipes.addShaped(<buildinggadgets:exchangertool>.withTag({Unbreakable: 1 as byte}), [[<ancientspellcraft:enchanted_page>, <ebwizardry:magic_crystal:1>, <ancientspellcraft:enchanted_page>],[<ore:manaDiamond>, <wizardry:devil_dust>, <ore:manaDiamond>], [<ancientspellcraft:enchanted_page>, <ebwizardry:magic_crystal:1>, <ancientspellcraft:enchanted_page>]]);

recipes.remove(<buildinggadgets:buildingtool:*>);
recipes.addShaped(<buildinggadgets:buildingtool>.withTag({Unbreakable: 1 as byte}), [[<ancientspellcraft:enchanted_page>, <ebwizardry:magic_crystal:5>, <ancientspellcraft:enchanted_page>],[<ore:manaDiamond>, <wizardry:devil_dust>, <ore:manaDiamond>], [<ancientspellcraft:enchanted_page>, <ebwizardry:magic_crystal:5>, <ancientspellcraft:enchanted_page>]]);

//patchouli
var startingBook =
<akashictome:tome>.withTag({"akashictome:is_morphing": 1 as byte, "akashictome:data": {tconstruct: {id: "tconstruct:book", Count: 1 as byte, tag: {"akashictome:definedMod": "tconstruct", Damage: 0 as short}}, astralsorcery: {id: "astralsorcery:itemjournal", Count: 1 as byte, tag: {"akashictome:definedMod": "astralsorcery"}, Damage: 0 as short}, conarm: {id: "conarm:book", Count: 1 as byte, tag: {"akashictome:definedMod": "conarm"}, Damage: 0 as short}, ftbquests: {id: "ftbquests:book", Count: 1 as byte, tag: {"akashictome:definedMod": "ftbquests"}, Damage: 0 as short}, wizardry: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "wizardry:book", Count: 1, tag: {"akashictome:definedMod": "wizardry"}, Damage: 0 as short}, naturesaura: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "patchouli:guide_book", Count: 1, tag: {"akashictome:definedMod": "naturesaura", "patchouli:book": "naturesaura:book"}, Damage: 0 as short}, roots: {id: "roots:roots_guide", Count: 1, tag: {"akashictome:definedMod": "roots"}, Damage: 0 as short}, embers: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "embers:codex", Count: 1, tag: {"akashictome:definedMod": "embers"}, Damage: 0 as short}, ancientspellcraft: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "patchouli:guide_book", Count: 1, tag: {"akashictome:definedMod": "ancientspellcraft", "patchouli:book": "ancientspellcraft:manual"}, Damage: 0 as short}, ebwizardry: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {AS_Amulet_HolderLeast: -5988991087112186863 as long, AS_Amulet_HolderMost: 8244528669670787153 as long}}, id: "ebwizardry:wizard_handbook", Count: 1, tag: {"akashictome:definedMod": "ebwizardry"}, Damage: 0 as short}, botania: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "botania:lexicon", Count: 1, tag: {"akashictome:definedMod": "botania"}, Damage: 0 as short}, mysticalworld: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "patchouli:guide_book", Count: 1, tag: {"akashictome:definedMod": "mysticalworld", "patchouli:book": "mysticalworld:world_guide"}, Damage: 0 as short}, bloodmagic: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "guideapi:bloodmagic-guide", Count: 1, tag: {"akashictome:definedMod": "bloodmagic"}, Damage: 0 as short}, twilightforest: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "patchouli:guide_book", Count: 1, tag: {"akashictome:definedMod": "twilightforest", "patchouli:book": "twilightforest:guide"}, Damage: 0 as short}, patchouli: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "patchouli:guide_book", Count: 1, tag: {"akashictome:definedMod": "patchouli", "patchouli:book": "patchouli:magicpouch"}, Damage: 0 as short}, bloodarsenal1: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "guideapi:bloodarsenal-guide", Count: 1, tag: {"akashictome:definedMod": "bloodarsenal1"}, Damage: 0 as short}}});
InvHandler.addStartingItem(startingBook);
JEI.addItem(startingBook);

//tinkers addons

recipes.addShaped(<tinkersaddons:modifier_item:2>, [[<tconstruct:large_plate>.withTag({Material: "dawnstone"}).onlyWithTag({Material: "dawnstone"}), <ore:blockThaumium>, <tconstruct:large_plate>.withTag({Material: "dawnstone"}).onlyWithTag({Material: "dawnstone"})], [<tconstruct:large_plate>.withTag({Material: "dawnstone"}).onlyWithTag({Material: "dawnstone"}), <tconstruct:large_plate>.withTag({Material: "dawnstone"}).onlyWithTag({Material: "dawnstone"}), <tconstruct:large_plate>.withTag({Material: "dawnstone"}).onlyWithTag({Material: "dawnstone"})]]);
recipes.addShaped(<tinkersaddons:modifier_item:1>, [[<tconstruct:large_plate>.withTag({Material: "aquamarine"}).onlyWithTag({Material: "aquamarine"}), <naturesaura:infused_iron_block>, <tconstruct:large_plate>.withTag({Material: "aquamarine"}).onlyWithTag({Material: "aquamarine"})], [<tconstruct:large_plate>.withTag({Material: "aquamarine"}).onlyWithTag({Material: "aquamarine"}), <tconstruct:large_plate>.withTag({Material: "aquamarine"}).onlyWithTag({Material: "aquamarine"}), <tconstruct:large_plate>.withTag({Material: "aquamarine"}).onlyWithTag({Material: "aquamarine"})]]);
recipes.addShaped(<tinkersaddons:modifier_item:3>, [[<tconstruct:large_plate>.withTag({Material: "blood_infused_iron"}).onlyWithTag({Material: "blood_infused_iron"}), <ore:blockTerrasteel>, <tconstruct:large_plate>.withTag({Material: "blood_infused_iron"}).onlyWithTag({Material: "blood_infused_iron"})], [<tconstruct:large_plate>.withTag({Material: "blood_infused_iron"}).onlyWithTag({Material: "blood_infused_iron"}), <tconstruct:large_plate>.withTag({Material: "blood_infused_iron"}).onlyWithTag({Material: "blood_infused_iron"}), <tconstruct:large_plate>.withTag({Material: "blood_infused_iron"}).onlyWithTag({Material: "blood_infused_iron"})]]);
recipes.addShaped(<tinkersaddons:modifier_item:4>, [[<tconstruct:large_plate>.withTag({Material: "fierymetal"}).onlyWithTag({Material: "fierymetal"}), <ore:blockAether>, <tconstruct:large_plate>.withTag({Material: "steeleaf"}).onlyWithTag({Material: "steeleaf"})], [<tconstruct:large_plate>.withTag({Material: "dawnstone"}).onlyWithTag({Material: "dawnstone"}), <tconstruct:large_plate>.withTag({Material: "pigiron"}).onlyWithTag({Material: "pigiron"}), <tconstruct:large_plate>.withTag({Material: "octine"}).onlyWithTag({Material: "octine"})]]);

//vanilla
recipes.addShaped(<minecraft:stone_pickaxe>.withTag({ench: [{lvl: 3 as short, id: 43}], RepairCost: 1}), [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],[<ebwizardry:magic_crystal>, <ore:voodooPoppetProtectionLightning>, <ebwizardry:magic_crystal>], [null, <ore:voodooPoppetProtectionLightning>, null]]);
recipes.addShaped(<minecraft:iron_pickaxe>.withTag({ench: [{lvl: 3 as short, id: 43}], RepairCost: 1}), [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],[<ore:gemAmethyst>, <ore:voodooPoppetProtectionLightning>, <ore:gemAmethyst>], [null, <ore:voodooPoppetProtectionLightning>, null]]);

<ore:oreLapisVanilla>.add(<minecraft:lapis_ore>);
<ore:oreIronVanilla>.add(<minecraft:iron_ore>);
<ore:oreGoldVanilla>.add(<minecraft:gold_ore>);


//mystcraft
ArcaneWorkbench.registerShapedRecipe("writingdesk", "", 200,[<aspect:aer>*10, <aspect:perditio>*10], <mystcraft:writingdesk>,[[<thaumcraft:mind:1>, null, <thaumcraft:scribing_tools>],[<astralsorcery:blockinfusedwood:6>, <astralsorcery:blockinfusedwood:6>, <astralsorcery:blockinfusedwood:6>],[<astralsorcery:blockinfusedwood:6>, null, <astralsorcery:blockinfusedwood:6>]]);
recipes.addShaped(<mystcraft:blockinkmixer>, [[<ebwizardry:crystal_block>, null, <ebwizardry:crystal_block>],[<thebetweenlands:dentrothyst>, <botania:dice:*>, <thebetweenlands:dentrothyst>],[<thaumcraft:stone_eldritch_tile>, <thaumcraft:stone_eldritch_tile>, <thaumcraft:stone_eldritch_tile>]]);
Crucible.registerRecipe("mystInk", "", <mystcraft:vial>, <botania:phantomink>, [<aspect:tenebrae>*30]);

//projecte
recipes.remove(<projecte:item.pe_philosophers_stone>);