local hit_effects = require("__base__/prototypes/entity/demo-hit-effects")
local sounds      = require("__base__/prototypes/entity/demo-sounds")

data:extend(
{ 
	{
		type = "accumulator",
		name = "kr-energy-storage",
		icon = kr_entities_icons_path .. "energy-storage.png",
		icon_size = 64,
		flags = {"placeable-neutral","placeable-player", "player-creation", "not-rotatable"},
		minable = {mining_time = 1, result = "kr-energy-storage"},
		max_health = 750,
		corpse = "big-remnants",
		dying_explosion = "big-explosion",
		damaged_trigger_effect = hit_effects.entity(),
		collision_box = {{-2.75, -2.75}, {2.75, 2.75}},
		selection_box = {{-3, -3}, {3, 3}},
		drawing_box = {{-3, -3}, {3, 3}},
		resistances = 
		{
			{type = "physical", percent = 25},
			{type = "fire", percent = 25},
			{type = "impact", percent = 50}
		},
		energy_source =
		{
			type = "electric",
			buffer_capacity = "250GJ",
			usage_priority = "tertiary",
			input_flow_limit = "25MW",
			output_flow_limit = "5MW"
		},
		picture = 
		{
			layers =
			{
				{
					filename = kr_entities_path .. "energy-storage/energy-storage.png",
					width = 190,
					height = 190,
					frame_count = 1,
					scale = 1.1,
					shift = {0, -0.4},
					hr_version =
					{
						filename = kr_entities_path .. "energy-storage/hr-energy-storage.png",
						width = 380,
						height = 380,
						scale = 0.55,
						frame_count = 1,
						shift = {0, -0.4},
					}
				},
				{
					filename = kr_entities_path .. "energy-storage/energy-storage-sh.png",
					width = 207,
					height = 135,
					frame_count = 1,
					draw_as_shadow = true,
					scale = 1.1,
					shift = {0.72, 0.56},
					hr_version =
					{
						filename = kr_entities_path .. "energy-storage/hr-energy-storage-sh.png",
						width = 414,
						height = 270,
						scale = 0.55,
						frame_count = 1,
						draw_as_shadow = true,
						shift = {0.72, 0.56}
					}
				},
			
			},
		},
		charge_animation = 
		{
			layers =
			{
				{
					filename = kr_entities_path .. "energy-storage/energy-storage.png",
					width = 190,
					height = 190,
					frame_count = 1,
					repeat_count = 2,
					animation_speed = 0.03,
					scale = 1.1,
					shift = {0, -0.4},
					hr_version =
					{
						filename = kr_entities_path .. "energy-storage/hr-energy-storage.png",
						width = 380,
						height = 380,
						scale = 0.55,
						frame_count = 1,
						repeat_count = 2,
						animation_speed = 0.03,
						shift = {0, -0.4},
					}
				},
				{
					filename = kr_entities_path .. "energy-storage/energy-storage-sh.png",
					width = 207,
					height = 135,
					frame_count = 1,
					repeat_count = 2,
					animation_speed = 0.03,
					draw_as_shadow = true,
					scale = 1.1,
					shift = {0.72, 0.56},
					hr_version =
					{
						filename = kr_entities_path .. "energy-storage/hr-energy-storage-sh.png",
						width = 414,
						height = 270,
						scale = 0.55,
						frame_count = 1,
						repeat_count = 2,
						animation_speed = 0.03,
						draw_as_shadow = true,
						shift = {0.72, 0.56}
					}
				},
				{
					filename = kr_entities_path .. "energy-storage/energy-storage-charge.png",
					width = 190,
					height = 190,
					frame_count = 2,
					line_length = 2,
					animation_speed = 0.03,
					scale = 1.1,
					shift = {0, -0.4},
					hr_version =
					{
						filename = kr_entities_path .. "energy-storage/hr-energy-storage-charge.png",
						width = 380,
						height = 380,
						scale = 0.55,
						frame_count = 2,
						line_length = 2,
						animation_speed = 0.03,
						shift = {0, -0.4},
					}
				}
			}
		},
		discharge_animation =
		{
			layers=
			{
				{
					filename = kr_entities_path .. "energy-storage/energy-storage.png",
					width = 190,
					height = 190,
					frame_count = 1,
					repeat_count = 2,
					animation_speed = 0.06,
					scale = 1.1,
					shift = {0, -0.4},
					hr_version =
					{
						filename = kr_entities_path .. "energy-storage/hr-energy-storage.png",
						width = 380,
						height = 380,
						scale = 0.55,
						frame_count = 1,
						repeat_count = 2,
						animation_speed = 0.06,
						shift = {0, -0.4},
					}
				},
				{
					filename = kr_entities_path .. "energy-storage/energy-storage-sh.png",
					width = 207,
					height = 135,
					frame_count = 1,
					repeat_count = 2,
					animation_speed = 0.06,
					draw_as_shadow = true,
					scale = 1.1,
					shift = {0.72, 0.56},
					hr_version =
					{
						filename = kr_entities_path .. "energy-storage/hr-energy-storage-sh.png",
						width = 414,
						height = 270,
						scale = 0.55,
						frame_count = 1,
						repeat_count = 2,
						animation_speed = 0.06,
						draw_as_shadow = true,
						shift = {0.72, 0.56}
					}
				},
				{
					filename = kr_entities_path .. "energy-storage/energy-storage-discharge.png",
					width = 190,
					height = 190,
					frame_count = 2,
					line_length = 2,
					animation_speed = 0.06,
					scale = 1.1,
					shift = {0, -0.4},
					hr_version =
					{
						filename = kr_entities_path .. "energy-storage/hr-energy-storage-discharge.png",
						width = 380,
						height = 380,
						scale = 0.55,
						frame_count = 2,
						line_length = 2,
						animation_speed = 0.06,
						shift = {0, -0.4},
					}
				}
			}
		},		
		charge_cooldown = 5,
		discharge_cooldown = 5,
		charge_light =
		{
			intensity = 1,
			size = 12,
			color = {r=0.25, g=1, b=0.5}
		},
		discharge_light =
		{
			intensity = 1.25,
			size = 12,
			color = {r=1, g=0.75, b=0.25}
		},
		vehicle_impact_sound = sounds.generic_impact,
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/accumulator-working.ogg",
				volume = 0.7
			},
			idle_sound =
			{
				filename = "__base__/sound/accumulator-idle.ogg",
				volume = 0.5
			},
			max_sounds_per_type = 3,
			fade_in_ticks = 10,
			fade_out_ticks = 30
		},
		circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
		circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
		circuit_wire_max_distance = default_circuit_wire_max_distance,
		default_output_signal = {type = "virtual", name = "signal-A"}
	}
})
