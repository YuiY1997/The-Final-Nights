/obj/structure/chair/sofa
	name = "old sofa"
	icon_state = "sofamiddle"
	icon = 'icons/obj/sofa.dmi'
	buildstackamount = 1
	item_chair = null
	var/mutable_appearance/armrest

/obj/structure/chair/sofa/Initialize()
	armrest = mutable_appearance(icon, "[icon_state]_armrest", ABOVE_MOB_LAYER)
	return ..()

/obj/structure/chair/sofa/post_buckle_mob(mob/living/M)
	. = ..()
	update_armrest()

/obj/structure/chair/sofa/proc/update_armrest()
	if(has_buckled_mobs())
		add_overlay(armrest)
	else
		cut_overlay(armrest)

/obj/structure/chair/sofa/post_unbuckle_mob()
	. = ..()
	update_armrest()

/obj/structure/chair/sofa/corner/handle_layer() //only the armrest/back of this chair should cover the mob.
	return

/obj/structure/chair/sofa/old
	color = "#8d4600"
	name = "old sofa"
	desc = "An old design, but it still does the job of being a sofa."
	icon_state = "sofamiddle"

/obj/structure/chair/sofa/old/left
	icon_state = "sofaend_left"

/obj/structure/chair/sofa/old/right
	icon_state = "sofaend_right"

/obj/structure/chair/sofa/old/corner
	icon_state = "sofacorner"

// Original icon ported from Eris(?) and updated to work here.
/obj/structure/chair/sofa/corp
	name = "sofa"
	desc = "Soft and cushy."
	icon_state = "corp_sofamiddle"

/obj/structure/chair/sofa/corp/left
	icon_state = "corp_sofaend_left"

/obj/structure/chair/sofa/corp/right
	icon_state = "corp_sofaend_right"

/obj/structure/chair/sofa/corp/corner
	icon_state = "corp_sofacorner"

//1930s

/obj/structure/chair/sofa/vintage
	name = "sofa"
	icon = 'code/modules/wod13/props.dmi'
	icon_state = "couchaleft"

/obj/structure/chair/sofa/vintage/redleft
	name = "sofa"
	icon = 'code/modules/wod13/props.dmi'
	icon_state = "couchaleft"

/obj/structure/chair/sofa/vintage/redright
	name = "sofa"
	icon = 'code/modules/wod13/props.dmi'
	icon_state = "coucharight"

/obj/structure/chair/sofa/vintage/blackleft
	name = "sofa"
	icon = 'code/modules/wod13/props.dmi'
	icon_state = "couchablackaleft"

/obj/structure/chair/sofa/vintage/blackright
	name = "sofa"
	icon = 'code/modules/wod13/props.dmi'
	icon_state = "couchablackaright"

/obj/structure/chair/sofa/vintage/greenleft
	name = "sofa"
	icon = 'code/modules/wod13/props.dmi'
	icon_state = "couchgreenleft"

/obj/structure/chair/sofa/vintage/greenright
	name = "sofa"
	icon = 'code/modules/wod13/props.dmi'
	icon_state = "couchgreenright"

/obj/structure/chair/sofa/vintage/magentaleft
	name = "sofa"
	icon = 'code/modules/wod13/props.dmi'
	icon_state = "couchamagentaleft"

/obj/structure/chair/sofa/vintage/magentaright
	name = "sofa"
	icon = 'code/modules/wod13/props.dmi'
	icon_state = "couchamagentaright"