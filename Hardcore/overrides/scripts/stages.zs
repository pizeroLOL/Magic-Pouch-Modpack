import mods.roots.Fey;
import mods.roots.Pyre;
import mods.thaumcraft.SalisMundus;
import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Infusion;
import mods.embers.Alchemy;
import mods.embers.Mixer;
import mods.embers.Stamper;
import mods.embers.Melter;
import mods.embers.EmberBore;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.botania.Apothecary;
import mods.botania.PureDaisy;
import mods.botania.ManaInfusion;
import mods.naturesaura.TreeRitual;
import mods.naturesaura.Altar;

//Stage 1 Vanilla and roots

//mortar
recipes.remove(<roots:mortar>);
recipes.addShaped(<roots:mortar>, [
    [<ore:obsidian>, null, <ore:obsidian>],
    [<ore:obsidian>, <ore:paper>, <ore:obsidian>], 
    [null, <ore:obsidian>, null]
    ]);

recipes.remove(<roots:pestle>);
recipes.addShapedMirrored(<roots:pestle>, [
    [null, null, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, null], 
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, null]
    ]);

#elemental clay
Pyre.addRecipe("elemental_clay_ball", <contenttweaker:elemental_clay> * 3, 
[<roots:stalicripe>, <roots:dewgonia>, <roots:infernal_bulb>, <roots:cloud_berry>, <roots:terra_moss>]);

Fey.removeRecipe(<roots:elemental_soil> * 4);
Fey.addRecipe("elemental_soil_normal", <roots:elemental_soil> * 2, 
[<thaumcraft:salis_mundus>, <roots:spirit_herb>, <ore:gravel>, <rustic:fertile_soil>, <contenttweaker:elemental_clay>]);

#rune steel
Fey.addRecipe("runesteel_ingot", <contenttweaker:runesteel_ingot>, 
[<ore:ingotIron>, <ore:feyLeather>, <ore:runedObsidian>, <ore:runedObsidian>, <contenttweaker:elemental_clay>]);

//Stage 2 Embers and Tconstruct
recipes.remove(<embers:ember_bore>);
recipes.addShaped(<embers:ember_bore>, [
    [<embers:stairs_caminite_brick>, <ore:ingotCopper>, <embers:stairs_caminite_brick>],
    [<embers:stairs_caminite_brick>, <embers:mech_core>, <embers:stairs_caminite_brick>], 
    [<contenttweaker:runesteel_ingot>, <contenttweaker:runesteel_ingot>, <contenttweaker:runesteel_ingot>]
]);

recipes.remove(<embers:blend_caminite> * 8);
recipes.addShapeless(<embers:blend_caminite> * 4, 
[<ore:clay>,<ore:clay>,<ore:clay>,<contenttweaker:elemental_clay>,<ore:sand>]);

recipes.remove(<embers:block_tank>);
recipes.addShaped(<embers:block_tank>, [
    [<embers:brick_caminite>, null, <embers:brick_caminite>],
    [<ore:plateIron>, null, <ore:plateIron>], 
    [<embers:brick_caminite>, <contenttweaker:runesteel_ingot>, <embers:brick_caminite>]
]);

recipes.remove(<embers:cinder_plinth>);
recipes.addShaped(<embers:cinder_plinth>, [
    [null, <ore:plateLead>, null],
    [<ore:ingotSilver>, <embersconstruct:kiln>, <ore:ingotSilver>], 
    [<ore:plateLead>, <embers:block_caminite_brick_slab_double>, <ore:plateLead>]
]);

recipes.remove(<embers:ember_receiver> * 4);
recipes.addShaped(<embers:ember_receiver> * 2, [
    [<contenttweaker:runesteel_ingot>, null, <contenttweaker:runesteel_ingot>], 
    [<ore:ingotCopper>, <embers:plate_caminite>, <embers:ingot_copper>]
]);

recipes.remove(<embers:ember_emitter> * 4);
recipes.addShaped(<embers:ember_emitter> * 2, [
    [null, <ore:ingotCopper>, null],
    [null, <ore:ingotCopper>, null], 
    [<contenttweaker:runesteel_ingot>, <embers:plate_caminite>, <contenttweaker:runesteel_ingot>]
]);

recipes.remove(<embers:stamper_base>);
recipes.addShaped(<embers:stamper_base>, [
    [null, null, null],
    [<contenttweaker:runesteel_ingot>, null, <contenttweaker:runesteel_ingot>], 
    [<embers:block_caminite_brick_slab_double>, <minecraft:cauldron>, <embers:block_caminite_brick_slab_double>]
]);

recipes.remove(<embers:stamper>);
recipes.addShaped(<embers:stamper>, [
    [<contenttweaker:runesteel_ingot>, <contenttweaker:runesteel_ingot>, <contenttweaker:runesteel_ingot>],
    [<embers:brick_caminite>, <ore:blockLead>, <embers:brick_caminite>],
    [<embers:brick_caminite>, null, <embers:brick_caminite>]
]);

recipes.remove(<embers:block_furnace>);
recipes.addShaped(<embers:block_furnace>, [
    [<embers:brick_caminite>, <embers:plate_caminite>, <embers:brick_caminite>],
    [<embers:brick_caminite>, <ore:ingotCopper>, <embers:brick_caminite>], 
    [<contenttweaker:runesteel_ingot>, <minecraft:furnace>, <contenttweaker:runesteel_ingot>]
]);

recipes.remove(<embers:ember_activator>);
recipes.addShaped(<embers:ember_activator>, [
    [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
    [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
    [<contenttweaker:runesteel_ingot>, <minecraft:furnace>, <contenttweaker:runesteel_ingot>]
]);

//Tier 3 Thaumcraft and its addons

Crucible.removeRecipe(<thaumcraft:ingot>);
Crucible.registerRecipe("alchemy_brass_ingot", "METALLURGY@1", <thaumcraft:ingot:2>, <ore:ingotBronze>, [<aspect:instrumentum>*5]);

Crucible.removeRecipe(<thaumcraft:ingot:2>);
Crucible.registerRecipe("thaumium_ingot", "METALLURGY@2", <thaumcraft:ingot>, <contenttweaker:runesteel_ingot>, [<aspect:praecantatio>*5, <aspect:terra>*5]);

ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_basic>);
Infusion.registerRecipe("essentia_smelter", "ESSENTIASMELTER@2", 
<thaumcraft:smelter_basic> , 8, 
[<aspect:aer>*30, <aspect:terra>*30, <aspect:ignis>*30, <aspect:aqua> * 30, <aspect:perditio>*30, <aspect:ordo>*30, <aspect:praecantatio>*30], <thaumcraft:crucible>, 
[<embers:stamper>, <ore:plateBrass>, <thaumcraft:metal_alchemical>, <ore:plateBrass>, <thaumcraft:mechanism_complex>, <ore:plateBrass>, <thaumcraft:metal_alchemical>, <ore:plateBrass>]);

var defaultBoreset = EmberBore.getDefault();
val Aer = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]})*8;
val wAer = Aer.weight(1.4);
defaultBoreset.addOutput(wAer);

val Terra = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]})*8;
val wTerra = Terra.weight(1.4);
defaultBoreset.addOutput(wTerra);

val Ignis = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]})*8;
val wIgnis = Ignis.weight(1.7);
defaultBoreset.addOutput(wIgnis);

val Aqua = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]})*8;
val wAqua = Aqua.weight(1.4);
defaultBoreset.addOutput(wAqua);

val Ordo = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]})*8;
val wOrdo = Ordo.weight(1.4);
defaultBoreset.addOutput(wOrdo);

val Perd = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]})*8;
val wPerd = Perd.weight(1.4);
defaultBoreset.addOutput(wPerd);

//Primals
//Aer
val AerCrystal = <ore:aerCrystal>;
AerCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}));
Melter.add(<liquid:aer> * 1, <ore:aerCrystal>, null);
Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "aer"}]}), <liquid:aer> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
//Terra
val TerraCrystal = <ore:terraCrystal>;
 TerraCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}));
  Melter.add(<liquid:terra> * 1, <ore:terraCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "terra"}]}), <liquid:terra> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
//Ignis
val IgnisCrystal = <ore:ignisCrystal>;
 IgnisCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}));
  Melter.add(<liquid:ignis> * 1, <ore:ignisCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "ignis"}]}), <liquid:ignis> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
//Aqua
val aquaCrystal = <ore:aquaCrystal>;
aquaCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}));
Melter.add(<liquid:aqua> * 1, <ore:aquaCrystal>, null);
Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "aqua"}]}), <liquid:aqua> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
//Ordo
val ordoCrystal = <ore:ordoCrystal>;
ordoCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}));
Melter.add(<liquid:ordo> * 1, <ore:ordoCrystal>, null);
Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "ordo"}]}), <liquid:ordo> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
//Perditio
val perditioCrystal = <ore:perditioCrystal>;
perditioCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}));
Melter.add(<liquid:perditio> * 1, <ore:perditioCrystal>, null);
Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "perditio"}]}), <liquid:perditio> * 10, <embers:stamp_flat>, <thaumcraft:phial>);

//First Gen//
//Vacuos
val VacuosCrystal = <ore:vacuosCrystal>;
VacuosCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vacuos"}]}));
Melter.add(<liquid:vacuos> * 1, <ore:vacuosCrystal>, null);
Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "vacuos"}]}), <liquid:vacuos> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:vacuos>*1, [<liquid:perditio>*1,<liquid:aer>*1]);
//Lux
val LuxCrystal = <ore:luxCrystal>;
 LuxCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "lux"}]}));
  Melter.add(<liquid:lux> * 1, <ore:luxCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "lux"}]}), <liquid:lux> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:lux>*1, [<liquid:aer>*1,<liquid:ignis>*1]);
//Motus
val MotusCrystal = <ore:motusCrystal>;
 MotusCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "motus"}]}));
  Melter.add(<liquid:motus> * 1, <ore:motusCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "motus"}]}), <liquid:motus> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:motus>*1, [<liquid:aer>*1,<liquid:ordo>*1]);
//Gelum
val GelumCrystal = <ore:gelumCrystal>;
 GelumCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "gelum"}]}));
  Melter.add(<liquid:gelum> * 1, <ore:gelumCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "gelum"}]}), <liquid:gelum> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:gelum>*1, [<liquid:perditio>*1,<liquid:ignis>*1]);
//Vitreus
val VitreusCrystal = <ore:vitreusCrystal>;
 VitreusCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vitreus"}]}));
  Melter.add(<liquid:vitreus> * 1, <ore:vitreusCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "vitreus"}]}), <liquid:vitreus> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:vitreus>*1, [<liquid:terra>*1,<liquid:aer>*1]);
//Metallum
val MetallumCrystal = <ore:metallumCrystal>;
 MetallumCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "metallum"}]}));
  Melter.add(<liquid:metallum> * 1, <ore:metallumCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "metallum"}]}), <liquid:metallum> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:metallum>*1, [<liquid:terra>*1,<liquid:ordo>*1]);
//Victus
val VictusCrystal = <ore:victusCrystal>;
 VictusCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "victus"}]}));
  Melter.add(<liquid:victus> * 1, <ore:victusCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "victus"}]}), <liquid:victus> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:victus>*1, [<liquid:terra>*1,<liquid:aqua>*1]);
//Mortuus 
val MortuusCrystal = <ore:mortuusCrystal>;
 MortuusCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "mortuus"}]}));
  Melter.add(<liquid:mortuus> * 1, <ore:mortuusCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "mortuus"}]}), <liquid:mortuus> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:mortuus>*1, [<liquid:perditio>*1,<liquid:aqua>*1]);
//Potentia
val PotentiaCrystal = <ore:potentiaCrystal>;
 PotentiaCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "potentia"}]}));
  Melter.add(<liquid:potentia> * 1, <ore:potentiaCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "potentia"}]}), <liquid:potentia> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:potentia>*1, [<liquid:ignis>*1,<liquid:ordo>*1]);
//Permutatio
val PermutatioCrystal = <ore:permutatioCrystal>;
 PermutatioCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "permutatio"}]}));
  Melter.add(<liquid:permutatio> * 1, <ore:permutatioCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "permutatio"}]}), <liquid:permutatio> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:permutatio>*1, [<liquid:perditio>*1,<liquid:ordo>*1]);

//Second Gen//
//Praecantatio
val PraecantatioCrystal = <ore:praecantatioCrystal>;
 PraecantatioCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]}));
  Melter.add(<liquid:praecantatio> * 1, <ore:praecantatioCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "praecantatio"}]}), <liquid:praecantatio> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:praecantatio>*1, [<liquid:potentia>*1,<liquid:aer>*1]);
//Tenebrae
val TenebraeCrystal = <ore:tenebraeCrystal>;
 TenebraeCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "tenebrae"}]}));
  Melter.add(<liquid:tenebrae> * 1, <ore:tenebraeCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "tenebrae"}]}), <liquid:tenebrae> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:tenebrae>*1, [<liquid:vacuos>*1,<liquid:lux>*1]);
//Volatus 
val VolatusCrystal = <ore:volatusCrystal>;
 VolatusCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "volatus"}]}));
  Melter.add(<liquid:volatus> * 1, <ore:volatusCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "volatus"}]}), <liquid:volatus> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:volatus>*1, [<liquid:aer>*1,<liquid:motus>*1]);
//Herba
val HerbaCrystal = <ore:herbaCrystal>;
 HerbaCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "herba"}]}));
  Melter.add(<liquid:herba> * 1, <ore:herbaCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "herba"}]}), <liquid:herba> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:herba>*1, [<liquid:victus>*1,<liquid:terra>*1]);
//Instrumentum 
val InstrumentumCrystal = <ore:instrumentumCrystal>;
 InstrumentumCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "instrumentum"}]}));
  Melter.add(<liquid:instrumentum> * 1, <ore:instrumentumCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "instrumentum"}]}), <liquid:instrumentum> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:instrumentum>*1, [<liquid:metallum>*1,<liquid:potentia>*1]);
//Vinculum 
val VinculumCrystal = <ore:vinculumCrystal>;
 VinculumCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vinculum"}]}));
  Melter.add(<liquid:vinculum> * 1, <ore:vinculumCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "vinculum"}]}), <liquid:vinculum> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:vinculum>*1, [<liquid:perditio>*1,<liquid:motus>*1]);
//Spiritus
val SpiritusCrystal = <ore:spiritusCrystal>;
 SpiritusCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "spiritus"}]}));
  Melter.add(<liquid:spiritus> * 1, <ore:spiritusCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "spiritus"}]}), <liquid:spiritus> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:spiritus>*1, [<liquid:victus>*1,<liquid:mortuus>*1]);
//Exanimis 
val ExanimisCrystal = <ore:exanimisCrystal>;
 ExanimisCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "exanimis"}]}));
  Melter.add(<liquid:exanimis> * 1, <ore:exanimisCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "exanimis"}]}), <liquid:exanimis> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:exanimis>*1, [<liquid:motus>*1,<liquid:mortuus>*1]);
//Bestia 
val BestiaCrystal = <ore:bestiaCrystal>;
 BestiaCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "bestia"}]}));
  Melter.add(<liquid:bestia> * 1, <ore:bestiaCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "bestia"}]}), <liquid:bestia> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:bestia>*1, [<liquid:motus>*1,<liquid:victus>*1]);
//infernus 
val InfernusCrystal = <ore:infernusCrystal>;
 InfernusCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "infernus"}]}));
  Melter.add(<liquid:infernus> * 1, <ore:infernusCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "infernus"}]}), <liquid:infernus> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:infernus>*1, [<liquid:ignis>*1,<liquid:praecantatio>*1]);
 
 //Third Gen//
//Auram 
val AuramCrystal = <ore:auramCrystal>;
 AuramCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "auram"}]}));
  Melter.add(<liquid:auram> * 1, <ore:auramCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "auram"}]}), <liquid:auram> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:auram>*1, [<liquid:praecantatio>*1,<liquid:aer>*1]);
//Alkimia  
val AlkimiaCrystal = <ore:alkimiaCrystal>;
 AlkimiaCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "alkimia"}]}));
  Melter.add(<liquid:alkimia> * 1, <ore:alkimiaCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "alkimia"}]}), <liquid:alkimia> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:alkimia>*1, [<liquid:praecantatio>*1,<liquid:aqua>*1]);
//Vitium 
val VitiumCrystal = <ore:vitiumCrystal>;
 VitiumCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vitium"}]}));
  Melter.add(<liquid:vitium> * 1, <ore:vitiumCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "vitium"}]}), <liquid:vitium> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:vitium>*1, [<liquid:praecantatio>*1,<liquid:perditio>*1]);
//Alienis
val AlienisCrystal = <ore:alienisCrystal>;
 AlienisCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "alienis"}]}));
  Melter.add(<liquid:alienis> * 1, <ore:alienisCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "alienis"}]}), <liquid:alienis> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:alienis>*1, [<liquid:vacuos>*1,<liquid:tenebrae>*1]);
//Fabrico 
val FabricoCrystal = <ore:fabricoCrystal>;
 FabricoCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "fabrico"}]}));
  Melter.add(<liquid:fabrico> * 1, <ore:fabricoCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "fabrico"}]}), <liquid:fabrico> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:fabrico>*1, [<liquid:permutatio>*1,<liquid:instrumentum>*1]);
//Machina 
val MachinaCrystal = <ore:machinaCrystal>;
 MachinaCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "machina"}]}));
  Melter.add(<liquid:machina> * 1, <ore:machinaCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "machina"}]}), <liquid:machina> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:machina>*1, [<liquid:motus>*1,<liquid:instrumentum>*1]);
//Cognitio 
val CognitioCrystal = <ore:cognitioCrystal>;
 CognitioCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "cognitio"}]}));
  Melter.add(<liquid:cognitio> * 1, <ore:cognitioCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "cognitio"}]}), <liquid:cognitio> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:cognitio>*1, [<liquid:ignis>*1,<liquid:spiritus>*1]);
//Sensus 
val SensusCrystal = <ore:sensusCrystal>;
 SensusCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "sensus"}]}));
  Melter.add(<liquid:sensus> * 1, <ore:sensusCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "sensus"}]}), <liquid:sensus> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:sensus>*1, [<liquid:aer>*1,<liquid:spiritus>*1]);
//Aversio 
val AversioCrystal = <ore:aversioCrystal>;
 AversioCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aversio"}]}));
  Melter.add(<liquid:aversio> * 1, <ore:aversioCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "aversio"}]}), <liquid:aversio> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:aversio>*1, [<liquid:perditio>*1,<liquid:spiritus>*1]);
//Praemunio 
val PraemunioCrystal = <ore:praemunioCrystal>;
 PraemunioCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praemunio"}]}));
  Melter.add(<liquid:praemunio> * 1, <ore:praemunioCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "praemunio"}]}), <liquid:praemunio> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:praemunio>*1, [<liquid:terra>*1,<liquid:spiritus>*1]);
//Desiderium 
val DesideriumCrystal = <ore:desideriumCrystal>;
 DesideriumCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "desiderium"}]}));
  Melter.add(<liquid:desiderium> * 1, <ore:desideriumCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "desiderium"}]}), <liquid:desiderium> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:desiderium>*1, [<liquid:spiritus>*1,<liquid:vacuos>*1]);
//Humanus 
val HumanusCrystal = <ore:humanusCrystal>;
 HumanusCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "humanus"}]}));
  Melter.add(<liquid:humanus> * 1, <ore:humanusCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "humanus"}]}), <liquid:humanus> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:humanus>*1, [<liquid:spiritus>*1,<liquid:victus>*1]);
//humanus 
val humanusCrystal = <ore:humanusCrystal>;
 humanusCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "humanus"}]}));
  Melter.add(<liquid:humanus> * 1, <ore:humanusCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "humanus"}]}), <liquid:humanus> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:humanus>*1, [<liquid:vinculum>*1,<liquid:spiritus>*1]);
//desidia 
val desidiaCrystal = <ore:desidiaCrystal>;
 desidiaCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "desidia"}]}));
  Melter.add(<liquid:desidia> * 1, <ore:desidiaCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "desidia"}]}), <liquid:desidia> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:desidia>*1, [<liquid:vinculum>*1,<liquid:victus>*1]);
//superbia 
val superbiaCrystal = <ore:superbiaCrystal>;
 superbiaCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "superbia"}]}));
  Melter.add(<liquid:superbia> * 1, <ore:superbiaCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "superbia"}]}), <liquid:superbia> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:superbia>*1, [<liquid:vacuos>*1,<liquid:volatus>*1]);

 //Fourth Gen//
 //gula
val gulaCrystal = <ore:gulaCrystal>;
 gulaCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "gula"}]}));
  Melter.add(<liquid:gula> * 1, <ore:gulaCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "gula"}]}), <liquid:gula> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:gula>*1, [<liquid:vacuos>*1,<liquid:desiderium>*1]);
 //luxuria
val luxuriaCrystal = <ore:luxuriaCrystal>;
 luxuriaCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "luxuria"}]}));
  Melter.add(<liquid:luxuria> * 1, <ore:luxuriaCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "luxuria"}]}), <liquid:luxuria> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:luxuria>*1, [<liquid:bestia>*1,<liquid:desiderium>*1]);
//invidia
val invidiaCrystal = <ore:invidiaCrystal>;
 invidiaCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "invidia"}]}));
  Melter.add(<liquid:invidia> * 1, <ore:invidiaCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "invidia"}]}), <liquid:invidia> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:invidia>*1, [<liquid:sensus>*1,<liquid:desiderium>*1]);
//Imperium
val iraCrystal = <ore:iraCrystal>;
 iraCrystal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ira"}]}));
  Melter.add(<liquid:ira> * 1, <ore:iraCrystal>, null);
 Stamper.add(<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "ira"}]}), <liquid:ira> * 10, <embers:stamp_flat>, <thaumcraft:phial>);
 Mixer.add(<liquid:ira>*1, [<liquid:aversio>*1,<liquid:ignis>*1]);

//Tier 4 Botania
recipes.addShaped(<contenttweaker:mundace_stone_block>, [
    [<soot:mundane_stone>, <soot:mundane_stone>, <soot:mundane_stone>],
    [<soot:mundane_stone>, <ore:blockDawnstone>, <soot:mundane_stone>], 
    [<soot:mundane_stone>, <soot:mundane_stone>, <soot:mundane_stone>]
]);

recipes.addShaped(<botania:altar>, [[<soot:mundane_stone>, null, <soot:mundane_stone>],[null, <contenttweaker:mundace_stone_block>, null], [<soot:mundane_stone>, <soot:mundane_stone>, <soot:mundane_stone>]]);
recipes.remove(<botania:altar>);
SalisMundus.addSingleConversion(<blockstate:contenttweaker:mundace_stone_block>.block, <botania:altar>);

//flowers
//Endo Flame
Apothecary.removeRecipe("endoflame");
Apothecary.addRecipe("endoflame", [<thaumcraft:nitor_orange>, <botania:petal:14>, <botania:petal:8>, <botania:petal:12>, <botania:petal:12>]);
Apothecary.addRecipe("endoflame", [<advanced-fishing:fish:36>, <botania:petal:14>, <botania:petal:8>, <botania:petal:12>, <botania:petal:12>]);

//Munchdew
Apothecary.removeRecipe("munchdew");
Apothecary.addRecipe("munchdew", [<advanced-fishing:fish:4>, <advanced-fishing:fish:4>, <botania:rune:10>, <botania:petal:14>, <botania:petal:14>, <botania:petal:5>, <botania:petal:5>]);
Apothecary.addRecipe("munchdew", [<thaumcraft:nitor_lime>, <thaumcraft:hungry_chest>, <botania:rune:10>, <botania:petal:14>, <botania:petal:14>, <botania:petal:5>, <botania:petal:5>]);

//Shulk Me Not
Apothecary.removeRecipe("shulk_me_not");
Apothecary.addRecipe("shulk_me_not", [<botania:rune:13>, <thaumcraft:nitor_magenta>, <botania:rune:14>, <botania:manaresource:5>, <botania:petal:10>, <botania:petal:10>, <botania:petal:2>, <botania:petal:2>]);
Apothecary.addRecipe("shulk_me_not", [<advanced-fishing:fish:15>, <botania:rune:13>, <botania:rune:14>, <botania:manaresource:5>, <botania:petal:10>, <botania:petal:10>, <botania:petal:2>, <botania:petal:2>]);

//Deadelifeon
Apothecary.removeRecipe("dandelifeon");
Apothecary.addRecipe("dandelifeon", [<ore:eternalLifeEssence>, <botania:rune:3>, <botania:rune>, <botania:rune:1>, <botania:petal:5>, <botania:rune:2>, <botania:petal:10>, <botania:petal:13>, <botania:petal:10>]);
Apothecary.addRecipe("dandelifeon", [<advanced-fishing:fish:38>, <minecraft:fish:2>, <advanced-fishing:fish:5>, <advanced-fishing:fish:39>, <advanced-fishing:fish:35>, <advanced-fishing:fish:37>, <advanced-fishing:fish:15>]);

//rafflowsia
Apothecary.removeRecipe("rafflowsia");
Apothecary.addRecipe("rafflowsia", [<botania:rune:2>, <thaumcraft:nitor_magenta>, <botania:rune:15>, <botania:petal:10>, <botania:manaresource:8>, <botania:petal:10>, <botania:petal:13>, <botania:petal:15>, <botania:petal:13>]);
Apothecary.addRecipe("rafflowsia", [<botania:rune:2>, <advanced-fishing:fish:30>, <botania:rune:15>, <botania:petal:10>, <botania:manaresource:8>, <botania:petal:10>, <botania:petal:13>, <botania:petal:15>, <botania:petal:13>]);

//Gourmaryllis
Apothecary.removeRecipe("gourmaryllis");
Apothecary.addRecipe("gourmaryllis", [<botania:petal:14>, <thaumcraft:nitor_yellow>, <botania:petal:4>, <botania:rune:5>, <botania:petal:4>, <botania:petal:8>, <botania:rune:1>, <botania:petal:8>]);
Apothecary.addRecipe("gourmaryllis", [<advanced-fishing:fish:20>, <botania:petal:14>, <botania:petal:4>, <botania:rune:5>, <botania:petal:4>, <botania:petal:8>, <botania:rune:1>, <botania:petal:8>]);

//hydroangeas
Apothecary.removeRecipe("hydroangeas");
Apothecary.addRecipe("hydroangeas", [<botania:petal:9>, <thaumcraft:nitor_blue>, <botania:petal:9>, <botania:petal:11>, <botania:petal:11>]);
Apothecary.addRecipe("hydroangeas", [<botania:petal:9>, <minecraft:fish>, <botania:petal:9>, <botania:petal:11>, <botania:petal:11>]);

//Thermalily
Apothecary.removeRecipe("thermalily");
Apothecary.addRecipe("thermalily", [<advanced-fishing:fish:1>, <botania:rune:1>, <botania:rune:2>, <botania:petal:1>, <botania:petal:14>, <botania:petal:1>]);
Apothecary.addRecipe("thermalily", [<botania:rune:1>, <thaumcraft:nitor_red>, <botania:rune:2>, <botania:petal:1>, <botania:petal:14>, <botania:petal:1>]);

//entropinnyum
Apothecary.removeRecipe("entropinnyum");
Apothecary.addRecipe("entropinnyum", [<advanced-fishing:fish:16>, <botania:petal:14>, <botania:rune:1>, <botania:petal:14>, <botania:petal:7>, <botania:petal:7>, <botania:petal>, <botania:rune:13>, <botania:petal>]);
Apothecary.addRecipe("entropinnyum", [<botania:petal:14>, <botania:rune:1>, <botania:petal:14>, <botania:petal:7>, <thaumcraft:nitor_black>, <botania:petal:7>, <botania:petal>, <botania:rune:13>, <botania:petal>]);

//narslimmus
Apothecary.removeRecipe("narslimmus");
Apothecary.addRecipe("narslimmus", [<advanced-fishing:fish>, <advanced-fishing:fish:1>,<botania:petal:5>, <botania:petal:5>, <botania:petal:13>, <botania:petal:13>, <botania:rune:5>, <botania:petal:15>, <botania:rune>]);
Apothecary.addRecipe("narslimmus", [<botania:petal:5>, <botania:petal:5>, <botania:petal:13>, <thaumcraft:nitor_lime>, <ore:nitor>, <botania:petal:13>, <botania:rune:5>, <botania:petal:15>, <botania:rune>]);

//Kekimurus
Apothecary.removeRecipe("kekimurus");
Apothecary.addRecipe("kekimurus", [<botania:petal:12>, <thaumcraft:nitor_white>, <botania:petal:12>, <botania:petal:1>, <botania:rune:10>, <botania:petal:1>, <botania:petal>, <botania:manaresource:8>, <botania:petal>]);
Apothecary.addRecipe("kekimurus", [<botania:petal:12>, <advanced-fishing:fish:21>, <botania:petal:12>, <botania:petal:1>, <botania:rune:10>, <botania:petal:1>, <botania:petal>, <botania:manaresource:8>, <botania:petal>]);

//Arcane Rose
Apothecary.removeRecipe("arcanerose");
Apothecary.addRecipe("arcanerose", [<thaumcraft:nitor_magenta>, <botania:petal:6>, <botania:petal:5>, <botania:petal:6>, <botania:petal:10>, <botania:rune:8>, <botania:petal:10>]);
Apothecary.addRecipe("arcanerose", [<advanced-fishing:fish:26>, <botania:petal:6>, <botania:petal:5>, <botania:petal:6>, <botania:petal:10>, <botania:rune:8>, <botania:petal:10>]);

//spectranthemum
Apothecary.removeRecipe("spectranthemum");
Apothecary.addRecipe("spectranthemum", [<botania:rune>, <botania:petal:9>, <botania:rune:14>, <botania:petal:8>, <thaumcraft:nitor_white>, <botania:petal:8>, <botania:petal>, <botania:manaresource:8>, <botania:petal>]);
Apothecary.addRecipe("spectranthemum", [<botania:rune>, <botania:petal:9>, <botania:rune:14>, <botania:petal:8>, <advanced-fishing:fish:19>, <botania:petal:8>, <botania:petal>, <botania:manaresource:8>, <botania:petal>]);

//Mana steel
ManaInfusion.removeRecipe(<botania:manaresource>);
ManaInfusion.addInfusion(<botania:manaresource>, <ore:ingotThaumium>, 3000);
ManaInfusion.addInfusion(<botania:manaresource>, <contenttweaker:runesteel_ingot>, 15000);

//Mana Steel Block
ManaInfusion.removeRecipe(<botania:storage>);
ManaInfusion.addInfusion(<botania:storage>, <ore:blockThaumium>, 27000);

//Spreader
recipes.remove(<botania:spreader>);
recipes.addShaped(<botania:spreader>, [
    [<botania:livingwood>, <botania:livingwood>, <botania:livingwood>],
    [<contenttweaker:runesteel_ingot>, <ore:petalWhite>, <avaritia:resource>], 
    [<botania:livingwood>, <botania:livingwood>, <botania:livingwood>]
]);

recipes.addShaped(<botania:spreader>, [
    [<botania:livingwood>, <botania:livingwood>, <botania:livingwood>],
    [<thaumcraft:ingot:2>, <ore:petalWhite>, null], 
    [<botania:livingwood>, <botania:livingwood>, <botania:livingwood>]
]);

//Rune Altar
recipes.remove(<botania:runealtar>);
SalisMundus.addSingleConversion(<blockstate:thaumcraft:wand_workbench>.block, <botania:runealtar>);

recipes.addShaped(<botania:runealtar>, [
    [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>], 
    [<ore:livingrock>, <tconevo:part_arcane_focus>.withTag({Material: "mana_pearl"}).onlyWithTag({Material: "mana_pearl"}), <ore:livingrock>]
]);

//Terra Plate
recipes.remove(<botania:terraplate>);
Infusion.registerRecipe("terraplate", "", 
<botania:terraplate> , 8, 
[<aspect:auram>*80, <aspect:praecantatio> * 80, <aspect:terra>*80], <ore:runeManaB>, 
[<ore:runeWaterB>, <ore:oreCrystalWater>, <ore:runeFireB>, <ore:oreCrystalFire>, <ore:runeEarthB>, <ore:oreCrystalEarth>, <ore:runeAirB>, <ore:oreCrystalAir>]);

recipes.addShaped(<botania:terraplate>, [
    [<ore:runeGreedB>, <ore:runeSlothB>, <ore:runeWrathB>],
    [<ore:runeGluttonyB>, <ore:blockManasteel>, <ore:runeEnvyB>], 
    [<ore:runeLustB>, <ore:runeManaB>, <ore:runePrideB>]
]);

//Tier 5 Natural Pledge
//Gold Fiber
recipes.remove(<naturesaura:gold_fiber> * 4);
recipes.addShaped(<naturesaura:gold_fiber> * 4, 
[[<ore:treeLeaves>, <ore:dustGold>, <ore:treeLeaves>],
[<ore:dustGold>, <ore:lifeRoot>, <ore:dustGold>], 
[<ore:treeLeaves>, <ore:dustGold>, <ore:treeLeaves>]]);

//Wooden Stand
recipes.remove(<naturesaura:wood_stand>);
recipes.addShaped(<naturesaura:wood_stand>, [
    [<naturesaura:gold_leaf>],
    [<ore:livingwood>]
]);

//Natural Altar
TreeRitual.removeRecipe(<naturesaura:nature_altar>); 
TreeRitual.addRecipe("natural_altar_kedition", <minecraft:sapling>, <naturesaura:nature_altar>, 500,
	[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <ore:ingotTerrasteel>,
	<thaumcraft:stone_arcane>, <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"}),  <naturesaura:gold_leaf>
]);

//Infused Iron
Altar.removeRecipe(<naturesaura:infused_iron>);
Altar.addRecipe("infused_iron_ingot_thaumium",<ore:ingotThaumium> , <naturesaura:infused_iron>, null, 300, 80);
Altar.addRecipe("infused_iron_ingot_manasteel",<ore:ingotManasteel> , <naturesaura:infused_iron>, null, 600, 160);

//Offering Table
recipes.remove(<naturesaura:offering_table>);
recipes.addShaped(<naturesaura:offering_table>, [
    [<ore:ingotThundersteel>, <botania:runealtar>, <ore:ingotThundersteel>],
    [<naturesaura:token_fear>, <ore:ingotThundersteel>, <naturesaura:token_sorrow>],
    [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>]
]);

//Mana Crystal
recipes.remove(<botania:pylon>);
recipes.addShaped(<botania:pylon>, [
    [<ore:ingotManasteel>, <ore:ingotElectrum>, <ore:ingotManasteel>],
    [<naturesaura:sky_ingot>, <ore:manaDiamond>, <naturesaura:sky_ingot>], 
    [<ore:ingotManasteel>, <ore:ingotElectrum>, <ore:ingotManasteel>]
]);

//Alf Portal
recipes.remove(<botania:alfheimportal>);
recipes.addShaped(<botania:alfheimportal>, [
    [<ore:livingwood>, <naturesaura:infused_iron>, <ore:livingwood>],
    [<ore:livingwood>, <ore:ingotTerrasteel>, <ore:livingwood>],
    [<ore:livingwood>, <naturesaura:infused_iron>, <ore:livingwood>]
]);

//Natural Altar
TreeRitual.removeRecipe(<naturesaura:nature_altar>); 
TreeRitual.addRecipe("natural_altar_kedition", <minecraft:sapling>, <naturesaura:nature_altar>, 500,
	[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <ore:ingotTerrasteel>,
	<thaumcraft:stone_arcane>, <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"}),  <naturesaura:gold_leaf>
]);

//Natural Altar
TreeRitual.removeRecipe(<naturesaura:furnace_heater>); 
TreeRitual.addRecipe("furnace_heater_kedition", <naturalpledge:circuit_sapling>, <naturesaura:furnace_heater>, 250,
	[<naturesaura:infused_iron>, <ore:hearthstone>, <ore:blockMagma>, <naturesaura:infused_stone>, <naturesaura:infused_iron>, <ore:hearthstone>, <naturesaura:token_fear>, <naturesaura:infused_stone>
]);

Stamper.add(<ore:dustNetherQuartz>.firstItem, null, <embers:stamp_flat>, <ore:gemQuartz>);
Altar.addRecipe("quartz_dust_1",<ore:gemQuartz> , <ore:dustNetherQuartz>.firstItem, <naturesaura:crushing_catalyst>, 10, 10);
Altar.addRecipe("quartz_dust_4",<ore:blockQuartz> , <ore:dustNetherQuartz>.firstItem * 4, <naturesaura:crushing_catalyst>, 40, 40);

Stamper.add(<ore:dustCertusQuartz>.firstItem, null, <embers:stamp_flat>, <ore:crystalCertusQuartz>);
Altar.addRecipe("certus_quartz_dust_1",<ore:crystalCertusQuartz> , <ore:dustCertusQuartz>.firstItem, <naturesaura:crushing_catalyst>, 10, 10);
Altar.addRecipe("certus_quartz_dust_4",<appliedenergistics2:quartz_block> , <ore:dustCertusQuartz>.firstItem * 4, <naturesaura:crushing_catalyst>, 40, 40);

Stamper.add(<ore:dustFluix>.firstItem, null, <embers:stamp_flat>, <ore:crystalFluix>);
Altar.addRecipe("fluix_dust_1",<ore:crystalFluix> , <ore:dustFluix>.firstItem, <naturesaura:crushing_catalyst>, 10, 10);
Altar.addRecipe("fluix_dust_4",<appliedenergistics2:fluix_block> , <ore:dustFluix>.firstItem * 4, <naturesaura:crushing_catalyst>, 40, 40);

//Tier 5 Thaumic Augmentation
//Inpuse Cell
Infusion.removeRecipe(<thaumicaugmentation:material:3>);
Infusion.registerRecipe("impetus_cell",
"RIFT_POWER@2", 
<thaumicaugmentation:material:3>,
16,
 [<aspect:potentia> * 100, <aspect:vacuos> * 50, <aspect:alienis> * 50],
 <botania:specialflower>.withTag({type: "dandelifeon"}),
[<ore:plateVoid>, <thaumcraft:primordial_pearl:*>, <ore:plateVoid>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vacuos"}]}), <ore:plateVoid>, <ore:dustRedstone>, <ore:plateVoid>, <ore:gemAmber>]);

Infusion.registerRecipe("impetus_cell_botania",
"RIFT_POWER@2", 
<thaumicaugmentation:material:3>,
8,
 [<aspect:potentia> * 100, <aspect:vacuos> * 50, <aspect:alienis> * 50],
 <botania:specialflower>.withTag({type: "dandelifeon"}),
[<ore:plateVoid>, <ore:ingotElvenElementium>, <ore:plateVoid>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vacuos"}]}), <ore:plateVoid>, <ore:dustRedstone>, <ore:plateVoid>, <ore:gemAmber>]);

//Soul Snare
recipes.remove(<bloodmagic:soul_snare> * 4);
recipes.addShaped(<bloodmagic:soul_snare> * 4, [
    [<ore:nuggetSilver>, <evilcraft:golden_string>, <ore:nuggetSilver>],
    [<evilcraft:golden_string>, <thaumicaugmentation:material:5>, <evilcraft:golden_string>], 
    [<ore:nuggetSilver>, <evilcraft:golden_string>, <ore:nuggetSilver>]
]);

recipes.addShaped(<bloodmagic:soul_snare> * 2, [
    [<ore:hearthstone>, <ore:manaString>, <ore:hearthstone>],
    [<ore:manaString>, <ore:gemGlowing>, <ore:manaString>], 
    [<ore:hearthstone>, <ore:manaString>, <ore:hearthstone>]
]);

//Tier 8 EndGameEdge
recipes.addShaped(<mystcraft:blockcrystal>, [
    [<advanced-fishing:fish:31>, <advanced-fishing:fish:31>],
    [<advanced-fishing:fish:31>, <advanced-fishing:fish:31>]
]);
//Tier ALL Modular Machinery
//Controller
recipes.remove(<modularmachinery:blockcontroller>);
recipes.addShaped(<modularmachinery:blockcontroller>, [
    [<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>],
    [<modularmachinery:itemmodularium>, <thaumcraft:brain>, <modularmachinery:itemmodularium>], 
    [<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>]
]);

//Casing
recipes.remove(<modularmachinery:blockcasing>);
recipes.addShaped(<modularmachinery:blockcasing>, [
    [<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>],
    [<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>]
]);

//Modularium
recipes.remove(<modularmachinery:itemmodularium> * 5);
furnace.addRecipe(<modularmachinery:itemmodularium>, <contenttweaker:elemental_clay>, 1.0);

//Item Input Bus
recipes.remove(<modularmachinery:blockinputbus:*>);
recipes.addShaped(<modularmachinery:blockinputbus>, [[<embers:item_pump>],[<modularmachinery:blockcasing>], [<minecraft:chest>]]);
recipes.addShaped(<modularmachinery:blockinputbus:1>, [[<embers:item_pump>],[<modularmachinery:blockinputbus>], [<ironchest:iron_chest>]]);
recipes.addShaped(<modularmachinery:blockinputbus:2>, [[<embers:item_pump>],[<modularmachinery:blockinputbus:1>], [<ironchest:iron_chest:1>]]);
recipes.addShaped(<modularmachinery:blockinputbus:3>, [[<embers:item_pump>],[<modularmachinery:blockinputbus:2>], [<ironchest:iron_chest:2>]]);
recipes.addShaped(<modularmachinery:blockinputbus:4>, [[<embers:item_pump>],[<modularmachinery:blockinputbus:3>], [<ironchest:iron_chest:6>]]);
recipes.addShaped(<modularmachinery:blockinputbus:5>, [[<embers:item_pump>],[<modularmachinery:blockinputbus:4>], [<thaumicaugmentation:warded_chest>]]);
recipes.addShaped(<modularmachinery:blockinputbus:6>, [[<embers:item_pump>],[<modularmachinery:blockinputbus:5>], [<projecte:alchemical_chest>]]);

//Item Output Bus
recipes.remove(<modularmachinery:blockoutputbus:*>);
recipes.addShaped(<modularmachinery:blockoutputbus>, [[<minecraft:chest>] ,[<modularmachinery:blockcasing>], [<embers:item_pump>]]);
recipes.addShaped(<modularmachinery:blockoutputbus:1>, [[<ironchest:iron_chest>],[<modularmachinery:blockoutputbus>], [<embers:item_pump>]]);
recipes.addShaped(<modularmachinery:blockoutputbus:2>, [[<ironchest:iron_chest:1>],[<modularmachinery:blockoutputbus:1>], [<embers:item_pump>]]);
recipes.addShaped(<modularmachinery:blockoutputbus:3>, [[<ironchest:iron_chest:2>],[<modularmachinery:blockoutputbus:2>], [<embers:item_pump>]]);
recipes.addShaped(<modularmachinery:blockoutputbus:4>, [[<ironchest:iron_chest:6>],[<modularmachinery:blockoutputbus:3>], [<embers:item_pump>]]);
recipes.addShaped(<modularmachinery:blockoutputbus:5>, [[<thaumicaugmentation:warded_chest>],[<modularmachinery:blockoutputbus:4>], [<embers:item_pump>]]);
recipes.addShaped(<modularmachinery:blockoutputbus:6>, [[<projecte:alchemical_chest>],[<modularmachinery:blockoutputbus:5>], [<embers:item_pump>]]);

recipes.addShaped(<gugu-utils:sparkmanahatch>, [
    [null, <botania:pump>, null],
    [<botania:pump>, <modularmachinery:blockcasing>, <botania:pump>], 
    [null, <botania:pump>, null]
]);