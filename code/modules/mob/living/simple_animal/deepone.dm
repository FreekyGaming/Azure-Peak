/mob/living/simple_animal/hostile/rogue/deepone
	name = "Deep One"
	desc = ""
	icon = 'icons/roguetown/mob/monster/fishman.dmi'
	icon_state = "deep1"
	icon_living = "deep1"
	icon_dead = "deep1_d"
	gender = MALE
	mob_biotypes = MOB_ORGANIC|MOB_HUMANOID
	robust_searching = 1
	turns_per_move = 2
	move_to_delay = 3
	STACON = 11
	STASTR = 13
	STASPD = 9
	maxHealth = DEEPONE_HEALTH
	butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/crab = 5, /obj/item/alch/viscera = 2)
	health = DEEPONE_HEALTH
	harm_intent_damage = 20
	melee_damage_lower = 10
	melee_damage_upper = 25
	vision_range = 7
	aggro_vision_range = 9
	retreat_distance = 0
	minimum_distance = 0
	limb_destroyer = 0
	base_intents = list(/datum/intent/simple/claw/deepone_unarmed)
	attack_verb_continuous = "slashes"
	attack_verb_simple = "slash"
	attack_sound = 'sound/combat/wooshes/punch/punchwoosh (1).ogg'
	canparry = TRUE
	d_intent = INTENT_DODGE
	defprob = 50
	defdrain = 20
	speak_emote = list("burbles")
	faction = list("deepone")
	footstep_type = FOOTSTEP_MOB_BAREFOOT

	can_have_ai = FALSE 
	AIStatus = AI_OFF

	ai_controller = /datum/ai_controller/deepone


/mob/living/simple_animal/hostile/rogue/deepone/arm
	name = "Deep One Paladin"
	desc = ""
	icon = 'icons/roguetown/mob/monster/fishman.dmi'
	icon_state = "deep1_arm"
	health = DEEPONE_HEALTH * 1.4
	harm_intent_damage = 25
	melee_damage_lower = 15
	melee_damage_upper = 30
	limb_destroyer = 1
	attack_verb_continuous = "mauls"
	attack_verb_simple = "maul"

/mob/living/simple_animal/hostile/rogue/deepone/spit
	name = "Deep One Spitter"
	desc = ""
	icon = 'icons/roguetown/mob/monster/fishman.dmi'
	icon_state = "deep1_spit"
	icon_living = "deep1_spit"
	icon_dead = "deep1_d"
	projectiletype = /obj/projectile/bullet/reusable/deepone
	projectilesound = 'sound/combat/wooshes/punch/punchwoosh (1).ogg'
	ranged = 1
	retreat_distance = 2
	minimum_distance = 5
	ranged_cooldown_time = 40
	check_friendly_fire = 1
	ai_controller = /datum/ai_controller/deepone_ranged

/mob/living/simple_animal/hostile/rogue/deepone/wiz
	name = "Deep One Devout"
	desc = ""
	icon = 'icons/roguetown/mob/monster/fishman.dmi'
	icon_state = "deep1_wiz"
	icon_living = "deep1_wiz"
	icon_dead = "deep1_d"
	projectiletype = /obj/projectile/magic/frostbolt
	projectilesound = 'sound/magic/fireball.ogg'
	ranged = 1
	retreat_distance = 2
	minimum_distance = 5
	ranged_cooldown_time = 70
	check_friendly_fire = 1
	ai_controller = /datum/ai_controller/deepone_ranged

/datum/intent/simple/claw/deepone_unarmed
	attack_verb = list("claws", "strikes")
	blade_class = BCLASS_CHOP
	animname = "cut"
	hitsound = 'sound/combat/hits/bladed/smallslash (1).ogg'
	clickcd = DEEPONE_ATTACK_SPEED
	penfactor = 5
	chargetime = 2
