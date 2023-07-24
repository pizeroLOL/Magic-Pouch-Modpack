#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.ActionResult;
import crafttweaker.item.IItemStack;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Block;

VanillaFactory.createBlock("rainbow_block", <blockmaterial:iron>).register();
VanillaFactory.createBlock("mundace_stone_block", <blockmaterial:iron>).register();
VanillaFactory.createItem("rainbow_ingot").register();

VanillaFactory.createItem("runesteel_ingot").register();

var MagicPouch = VanillaFactory.createItem("magic_pouch");
MagicPouch.maxStackSize = 1;
MagicPouch.rarity = "epic";
MagicPouch.itemRightClick = function(stack, world, player, hand) {
    if(!world.remote){
            var r = world.random.nextInt(10);
            if(r == 0){
            player.give(itemUtils.getItem("bloodmagic:activation_crystal", 2));
            }else if(r == 1){
            player.give(itemUtils.getItem("mysticalagradditions:stuff", 69));
            }else if(r == 2){
            player.give(itemUtils.getItem("botania:manatablet").withTag({mana: 500000, creative: 1 as byte}));
            }else if(r == 3){
            player.give(itemUtils.getItem("thaumcraft:creative_flux_sponge"));
            }else if(r == 4){
            player.give(itemUtils.getItem("thaumicwonders:creative_essentia_jar"));
            }else if(r == 5){
            player.give(itemUtils.getItem("wizardry:halo_creative"));
            }else if(r == 6){
            player.give(itemUtils.getItem("mowziesmobs:earth_talisman"));
            }else if(r == 7){
            player.give(itemUtils.getItem("evilcraft:creative_blood_drop"));
            }else if(r == 8){
            player.give(itemUtils.getItem("psi:cad_assembly", 5));
            }else if(r == 9){
            player.give(itemUtils.getItem("projecte:item.pe_philosophers_stone"));
            }else{
            player.give(itemUtils.getItem("bloodmagic:sacrificial_dagger", 1));
            }
            stack.shrink(1);
            return "SUCCESS";
        }
     return "Pass";
};
MagicPouch.register();

VanillaFactory.createItem("elemental_clay").register();
VanillaFactory.createItem("composite_dragon_scale").register();
VanillaFactory.createItem("forbidden_fig_pie").register();
VanillaFactory.createItem("ultimate_sword").register();
VanillaFactory.createItem("voidseer_eye").register();
VanillaFactory.createItem("infinity_spring").register();
VanillaFactory.createItem("artificial_demon").register();
VanillaFactory.createItem("sky_orb").register();

//TC
//Liquid Essentia
//Primals
var liquidAer = VanillaFactory.createFluid("aer", Color.fromHex("ebe852"));
 liquidAer.register();
 var liquidTerra = VanillaFactory.createFluid("terra", Color.fromHex("10852f"));
 liquidTerra.register();
 var liquidIgnis = VanillaFactory.createFluid("ignis", Color.fromHex("f54414"));
 liquidIgnis.material = <blockmaterial:lava>;
 liquidIgnis.register();
 var liquidAqua = VanillaFactory.createFluid("aqua", Color.fromHex("5ac5e8"));
 liquidAqua.register();
 var liquidOrdo = VanillaFactory.createFluid("ordo", Color.fromHex("ededed"));
 liquidOrdo.register();
 var liquidPerditio = VanillaFactory.createFluid("perditio", Color.fromHex("2a2d2e"));
 liquidPerditio.register();

//First Gen Combinations (Contain only Primals)
var liquidVacuos = VanillaFactory.createFluid("vacuos", Color.fromHex("7F9099"));
 liquidVacuos.register(); //Aer & Ordo/
 var liquidLux = VanillaFactory.createFluid("lux", Color.fromHex("D8ED8C"));
 liquidLux.register(); //Aer & Ignis/
 var liquidMotus = VanillaFactory.createFluid("motus", Color.fromHex("C4C4C4"));
 liquidMotus.register(); //Aer & Ordo/
 var liquidGelum = VanillaFactory.createFluid("gelum", Color.fromHex("92cdd1"));
 liquidGelum.register(); //Ignis & Perditio/
 var liquidVitreus = VanillaFactory.createFluid("vitreus", Color.fromHex("47eaf5"));
 liquidVitreus.register(); //Terra & Aer/
 var liquidMetallum = VanillaFactory.createFluid("metallum", Color.fromHex("858585"));
 liquidMetallum.register(); //Terra & Ordo/
 var liquidVictus = VanillaFactory.createFluid("victus", Color.fromHex("d45b5b"));
 liquidVictus.register(); //Terra & Aqua/
 var liquidMortuus = VanillaFactory.createFluid("mortuus", Color.fromHex("7d0101"));
 liquidMortuus.register(); //Aqua & Perditio/
 var liquidPotentia = VanillaFactory.createFluid("potentia", Color.fromHex("93b6bd"));
 liquidPotentia.register(); //Ordo & Ignis/
 var liquidPermutatio = VanillaFactory.createFluid("permutatio", Color.fromHex("236337"));
 liquidPermutatio.register(); //Perditio & Ordo/

 //Second Gen Combinations (Contains First Gen and former)
var liquidPraecantatio = VanillaFactory.createFluid("praecantatio", Color.fromHex("9f35d4"));
 liquidPraecantatio.register(); //Potentia & Aer/
var liquidTenebrae = VanillaFactory.createFluid("tenebrae", Color.fromHex("000000"));
 liquidTenebrae.register(); //Vacuos & Lux/
var liquidVolatus = VanillaFactory.createFluid("volatus", Color.fromHex("c2bf80"));
 liquidVolatus.register(); //Aer & Motus/
var liquidHerba = VanillaFactory.createFluid("herba", Color.fromHex("046b0d"));
 liquidHerba.register(); //Victus & Terra/
var liquidInstrumentum = VanillaFactory.createFluid("instrumentum", Color.fromHex("1b207d"));
 liquidInstrumentum.register(); //Metallum & Potentia/
var liquidVinculum = VanillaFactory.createFluid("vinculum", Color.fromHex("7a6050"));
 liquidVinculum.register(); //Motus & Perditio/
var liquidSpiritus = VanillaFactory.createFluid("spiritus", Color.fromHex("eff2eb"));
 liquidSpiritus.register(); //Victus & Mortuus/
var liquidExanimis = VanillaFactory.createFluid("exanimis", Color.fromHex("39541e"));
 liquidExanimis.register(); //Motus & Mortuus/
var liquidBestia = VanillaFactory.createFluid("bestia", Color.fromHex("693808"));
 liquidBestia.register(); //Motus & Victus/
var liquidInfernus = VanillaFactory.createFluid("infernus", Color.fromHex("ff0000"));
liquidInfernus.material = <blockmaterial:lava>;
liquidInfernus.register(); //Ignis & Praecantatio/

 //Third Gen Combinations (Contains Second Gen and former)
 var liquidAuram = VanillaFactory.createFluid("auram", Color.fromHex("f07fe8"));
 liquidAuram.register(); //Praecantatio & Aer
 var liquidAlkimia = VanillaFactory.createFluid("alkimia", Color.fromHex("36a384"));
 liquidAlkimia.register(); //Praecantatio & Aqua
 var liquidVitium = VanillaFactory.createFluid("vitium", Color.fromHex("550082"));
 liquidVitium.register(); //Praecantatio & Perditio
 var liquidAlienis = VanillaFactory.createFluid("alienis", Color.fromHex("663b7d"));
 liquidAlienis.register(); //Vacuos & Tenebrae
 var liquidFabrico = VanillaFactory.createFluid("fabrico", Color.fromHex("4c6e42"));
 liquidFabrico.register(); //Permutatio * Instrumentum
 var liquidMachina = VanillaFactory.createFluid("machina", Color.fromHex("5e635c"));
 liquidMachina.register(); //Motus & Instrumentum
 var liquidCognitio = VanillaFactory.createFluid("cognitio", Color.fromHex("de7a6d"));
 liquidCognitio.register(); //Ignis & Spiritus
 var liquidSensus = VanillaFactory.createFluid("sensus", Color.fromHex("ace092"));
 liquidSensus.register(); //Aer & Spiritus
 var liquidAversio = VanillaFactory.createFluid("aversio", Color.fromHex("bd3c33"));
 liquidAversio.register(); //Spiritus & Perditio
 var liquidPraemunio = VanillaFactory.createFluid("praemunio", Color.fromHex("2ca6e8"));
 liquidPraemunio.register(); //Spiritus & Terra
 var liquidDesiderium = VanillaFactory.createFluid("desiderium", Color.fromHex("c9b308"));
 liquidDesiderium.register(); //Spiritus & Vacuos
 var liquidHumanus = VanillaFactory.createFluid("humanus", Color.fromHex("e8c990"));
 liquidHumanus.register(); //Spiritus & Vinculum
 var liquidDesidia = VanillaFactory.createFluid("desidia", Color.fromHex("6e6e6e"));
 liquidDesidia.register(); //Vinculum & Victus
 var liquidSuperbia = VanillaFactory.createFluid("superbia", Color.fromHex("9639ff"));
 liquidSuperbia.register(); //Volatus & Vacuos

//Fourth Gen Combinations (Contains Third Gen and former)
 var liquidGula = VanillaFactory.createFluid("gula", Color.fromHex("d59c46"));
 liquidGula.register(); //Vacuos & Desiderium
 var liquidLust = VanillaFactory.createFluid("luxuria", Color.fromHex("ffc1ce"));
 liquidLust.register(); //Bestia & Desiderium
  var liquidInvidia = VanillaFactory.createFluid("invidia", Color.fromHex("3f991f"));
 liquidInvidia.register(); //Sensus & Desiderium
 var liquidImperium = VanillaFactory.createFluid("ira", Color.fromHex("870404"));
 liquidImperium.register(); //Aversio & Ignis