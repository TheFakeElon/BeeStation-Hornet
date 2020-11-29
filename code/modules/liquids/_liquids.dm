#define SPREAD_VOLUME 60
#define SLIP_VOLUME 35

/obj/effect/liquid
	name = "void puddle"
	desc = "you shouldn't be seeing this..."
	icon = 'icons/effects/liquid.dmi'
	var/state = LIQUID // the current state of the spill
	var/colour = "#000000"
	var/temp = null
	var/volume = null
	var/list/p_reagents = null // what reagent(s) is this made from?

/obj/effect/liquid/proc/splash(atom/target, var/RL, var/container)
	if(isturf(target)
		var/obj/effect/liquid/puddles = new(target.loc)
		p_reagents = RL
		colour = RL.reagents.color
		reagents.total_volume = RL.reagents.total_volume
		for(/obj/effect/liquid in loc)
			if(puddles.loc == loc)
			puddles.merge()
		colour = RL.reagents.color
		add_atom_colour(colour, FIXED_COLOUR_PRIORITY)

/obj/effect/liquid/proc/try_spread()
	if(SPREAD_VOLUME >= volume)
		var/p_num = 0
		var/taken_volume = 0
		for(/turf/open/T in GLOB.cardinals)
			p_num++
			taken_volume += 15
			var/obj/effect/liquid/puddles = new(T.loc)

