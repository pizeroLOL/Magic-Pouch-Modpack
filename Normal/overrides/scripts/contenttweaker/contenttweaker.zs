#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.ActionResult;
import crafttweaker.item.IItemStack;

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

VanillaFactory.createItem("composite_dragon_scale").register();
VanillaFactory.createItem("forbidden_fig_pie").register();
VanillaFactory.createItem("ultimate_sword").register();
VanillaFactory.createItem("voidseer_eye").register();
VanillaFactory.createItem("infinity_spring").register();
VanillaFactory.createItem("artificial_demon").register();
VanillaFactory.createItem("sky_orb").register();