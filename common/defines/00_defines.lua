-- Hearts of Iron IV defines with Great Depression mod start date
-- NOTE: Changing only what we need to change, keeping the rest vanilla

NDefines = {

    NGame = {
        START_DATE = "1929.10.24",
        END_DATE = "1949.1.1",
        MAP_SCALE_PIXEL_TO_KM = 7.114,
        SAVE_VERSION = 20,
        CHECKSUM_SALT = "j4cNSSB35pRn8gGk",
        LAG_DAYS_FOR_LOWER_SPEED = 10,
        LAG_DAYS_FOR_PAUSE = 25,
        MAJOR_PARTICIPANTS_FOR_MAJOR_WAR = 3,
        CHARLEMAGNE_DATE = "0001.1.1", -- New Game starts after this date
    },
    
    NDiplomacy = {
        DIPLOMACY_REQUEST_EXPIRY_DAYS = 30,
        BASE_SURRENDER_LEVEL = 1.0,	-- Base level to surrender
        MAX_FEAR_VALUE = 100,		-- Max fear value
        MIN_FEAR_VALUE = -100,		-- Min fear value
        BASE_FEAR_FACTOR = 0,		-- Base fear factor in % for opinion
        MAX_TRUST_VALUE = 100,		-- Max trust value
        MIN_TRUST_VALUE = -100,		-- Min trust value
        BASE_TRUST_FACTOR = 100,	-- Base trust factor in % for opinion
        MAX_OPINION_VALUE = 100,	-- Max opinion value
        MIN_OPINION_VALUE = -100,	-- Min opinion value
        BASE_TRUCE_PERIOD = 30,		-- Base truce period in days
        TRUCE_BREAK_COST_PP = 200,	-- Base cost in PP to break a truce
        TRUCE_BREAK_MILITARISM_REQUIRED = 3, -- Amount of Militarism required to break truce
        BASE_PEACE_ANNEX_FACTOR = 100, -- Base factor for annexation in %.
        BASE_PEACE_PUPPET_FACTOR = 100, -- Base factor for puppet in %.
        BASE_PEACE_LIBERATE_FACTOR = 100, -- Base factor for liberate in %.
        BASE_PEACE_TAKE_UNCONTROLLED_STATE_FACTOR = 10.0, -- Base factor for taking state you do not control
        BASE_PEACE_TAKE_FACTION_CONTROLLED_STATE_FACTOR = 0.5, -- Base factor for taking state faction member control
        BASE_PEACE_FORCE_GOVERNMENT_COST = 100, -- Base cost for forcing a country to change government.
        BASE_IMPROVE_RELATION_COST = 10,	-- Political power cost to initiate relation improvement
        BASE_IMPROVE_RELATION_SAME_IDEOLOGY_GROUP_MAINTAIN_COST = 0.2, -- Political power cost each update when boosting relations with nation of same ideology
        BASE_IMPROVE_RELATION_DIFFERENT_IDEOLOGY_GROUP_MAINTAIN_COST = 0.4,	-- Political power cost each update when boosting relations with nation of different ideology
        BASE_SEND_ATTACHE_COST = 100,	-- Political power cost to send attache
        BASE_SEND_ATTACHE_CP_COST = 50.0,	-- Command Power sent attache usage cost
        BASE_GENERATE_WARGOAL_DAILY_PP = 0.2, -- Daily pp cost for generation of wargoals
        WARGOAL_VERSUS_MAJOR_AT_WAR_REDUCTION = -0.75, -- reduction if target is major at war.
        WARGOAL_WORLD_TENSION_REDUCTION = -0.5,	-- Reduction from 100% world tension
        WARGOAL_JUSTIFY_TENSION_FROM_PRODUCTION = 30.0, -- Base value scaled by production capacity of target
        MIN_WARGOAL_JUSTIFY_COST = 2.0,	-- It always takes atleast 10 days to justify a wargoal
        WARGOAL_PER_JUSTIFY_AND_WAR_COST_FACTOR = 1.5,	-- Cost factor per nation at war with or justifying against
        BASE_BOOST_PARTY_POPULARITY_DAILY_PP = 0.25, -- Daily pp cost for boost party popularity
        BASE_BOOST_PARTY_POPULARITY_DAILY_DRIFT = 0.1, -- Daily amount of popularity that will be added by the activity.
        BASE_STAGE_COUP_DAILY_PP = 0.5,	-- Daily pp cost for staging a coup
        BASE_STAGE_COUP_TOTAL_COST = 200, -- Equipment consume factor for stage coup.
        RELATION_EMBARGO_VALUE = -25,
        MIN_COUP_STABILITY_FACTOR = 0.0,	-- Min stability target country must have for coup to be available
        MAX_COUP_STABILITY_FACTOR = 0.2,	-- Max stability target country must have for coup to be available
        MIN_COUP_SUCCESS_STABILITY = 0.0,	-- Min stability for a coup to succeed
        COUP_SUCCESS_FACTOR_PER_STABILITY_OVER_MIN = 0.5, -- Factor which affects success chance for each point of stability over the min stability for a successful coup
        MIN_COUP_PREREQUIRED_STABILITY = 0.4, -- Min stability required for a country to perform a coup
    },
    
    NPolitics = {
        BASE_LEADER_TRAITS = 3,				-- Base amount of leader traits
        LEADER_TRAITS_EXPERIENCE_FACTOR = 0.5, -- Experience factor for leader traits
        ARMY_LEADER_COST = 5,					-- cost for recruiting new leaders, 'this value' * number_of_existing_leaders_of_type
        NAVY_LEADER_COST = 5,					-- cost for recruiting new leaders, 'this value' * number_of_existing_leaders_of_type
        LEADER_TRAITS_XP_SHOW = 0.05,
        LEADER_TRAITS_XP_SHOW_MAX = 0.40,
        POLITICS_PARTY_POPULARITY_GAIN = 0.1,	-- each political party popularity gain per state party popularity hit
        DRIFT_DEFENCE_AGAINST_LEADER_MODIFIER_DRIFT_DEFENCE = 0.5, -- defence against party popularity drift when leading political party has party_drift_defence specified
        IDEOLOGY_JOIN_FACTION_MIN_LEVEL = 0.3,	-- ideology limit required to join faction
        IDEOLOGY_MAJOR_JOIN_FACTION_MIN_LEVEL = 0.35,
        IDEOLOGY_JOIN_FACTION_MIN_LEVEL_COMMUNISM_SPECIAL = 0.7, -- ideology limit required for communist to join faction
        IDEOLOGY_ACCEPTANCE_JOIN_FACTION_BOTH_COMMUNIST = -20, -- Communist countries are usually a bit less willing to join other communists
        IDEOLOGY_ACCEPTANCE_JOIN_FACTION_BOTH_FASCIST = -10, -- Fascists countries are a bit more accepting
        IDEOLOGY_ACCEPTANCE_JOIN_FACTION_BOTH_DEMOCRATIC = -20, -- Democracies don't like to join each other too much
        JOIN_FACTION_LIMIT_CHANGE_AT_WAR = 50,	-- this is the amount of hard limit added when the target nation is at war
        JOIN_FACTION_WORLD_TENSION_LIMIT = 0.5,	-- How high the tension needs to get before nations will join/create factions
        TENSION_TIME_SCALE_START_DATE = "1939.9.1.12", -- Tension start scaling at this date
        TENSION_TIME_SCALE_MONTHLY_FACTOR = -0.3,	-- Depends on TT_MAX_MONTH_SCALE_MAX and month
        TENSION_TIME_SCALE_MIN = 0.35,	-- Minimum time scale factor
        LICENSE_ACCEPTANCE_OPINION_FACTOR = 0.2,	-- Opinion modifier for acceptance of license production requests.
        LICENSE_ACCEPTANCE_PUPPET_BASE = 60,		-- Acceptance penalty for puppet requesting license production.
        LICENSE_ACCEPTANCE_TECH_DIFFERENCE = 2, 	-- Acceptance penalty for each year of technology difference.
        LICENSE_ACCEPTANCE_TECH_DIFFERENCE_BASE = 20,-- Acceptance base for tech difference
        LICENSE_ACCEPTANCE_SAME_FACTION = 30,		-- Acceptance bonus if requesting country is in the same faction
        TENSION_STATE_VALUE = 2,					-- Tension value gained by annexing one state
        TENSION_VOLUNTEER_FORCE_DIVISION = 0.5,		-- Amount of tension generated for each sent division
        TENSION_NO_CB_WAR = 15,					-- Amount of tension generated by a no-CB wargoal
        TENSION_CB_WAR = 5,						-- Amount of tension generated by a war with a CB
        TENSION_ANNEX_NO_CLAIM = 2,				-- Amount of tension generated by annexing a state you don't have claims on
        TENSION_ANNEX_CLAIM = 1,					-- Amount of tension generated by annexing a state you DO have claims on
        TENSION_ANNEX_CORE = 0.5,					-- Amount of tension generated by annexing a state that's your core
        TENSION_PUPPET = 2,						-- Amount of tension generated by puppeting (per state)
        TENSION_GENERATE_WARGOAL = 1,				-- Amount of tension generated by generating a wargoal
        TENSION_CAPITULATE = 0.9,					-- Scale of the amount of tension created by a capitulation.
        TENSION_PEACE_FACTOR = 0.25,				-- Scale of the amount of tension (from war declaration) reduced when peace is completed.
        TENSION_LIBERATE = -1,					-- Amount of tension generated by liberating a country.
        TENSION_TAKE_ONE_CAPITAL_SHIP = 0.25,						-- Amount of tension generated by annexing one capital ship
        TENSION_DEMILITARIZE_ZONE = 0.10,			-- Amount of tension generated by establishing a demilitarized zone
        TENSION_WAR_REPARATION = 0.25,			-- Amount of tension generated by demanding war reparations
        TENSION_RESOURCE_RIGHTS = 0.10,			-- Amount of tension generated by demanding resource rights
        TENSION_DISARMAMENT = 0.25,				-- Amount of tension generated by disarming country
        TENSION_GUARANTEE = -5,					-- Amount of tension generated/reduced by issuing/revoking a guarantee
        TENSION_FACTION_JOIN = 4,					-- Amount of tension generated by joining a faction
        TENSION_FACTION_LEAVE = -2,				-- Amount of tension generated by leaving a faction
        TENSION_EARTH_SUMMIT_MESSAGE = 0.40,		-- Amount of tension generated by sending a message to the world about climate change
        TENSION_EARTH_SUMMIT_MEETING = 0.10,		-- Amount of tension generated by hosting a meeting of world leaders about climate change
        TENSION_JOIN_LESSER_ALLIES_FACTOR = 0.5,  -- Factor of the base tension for adding minor nations to a faction [0,1]
        TENSION_DECAY = 0.10,						-- Each month tension decays this much
        TENSION_SIZE_FACTOR = 1.0,					-- All action tension values are multiplied by this value
        TENSION_CB_CRISIS_THRESHOLD = 15.0,		-- above this threshold of tension, a crisis might be created, depending on CB
        TENSION_CB_CRISIS_CHANCE = 60,			-- percentage of crisis cb creation
        TENSION_NEW_CRISIS_WEIGHT = 40,			-- on creating new international crisis, percentage of how much of the global tension it will contribute
        TENSION_CB_CRISIS_START_TENSION_MAX = 0.1, -- lowest possible starting tension when cb crisis is fired
        TENSION_CB_CRISIS_START_TENSION_MIN = 0.1, -- highest possible starting tension when cb crisis is fired
        TENSION_DECAY_DAILY = 0.003,				-- Each day tension decays this much
        TENSION_PEACE_FACTOR_MINOR_MAJOR = 0.40,	-- Factor on tension from a peace deal involving both major and minor powers. tension from majors in peace deal multiplied by 'this' factor
        TENSION_PEACE_FACTOR_MINORS = 0.20,		-- Factor on tension from a peace deal only involving minor powers
        TENSION_MAJOR_MINOR_PEACE_MULT_DEFAULT = 0.3,	-- This is a default used for tweaking threshold in decisions vs hard coding of tension levels
        TENSION_MAJOR_MINOR_FOREIGN_TROOPS_MULT = 0.5, -- Tension from major-minor (that is not ours or allied) peace deal with foreign troops in
        TENSION_STRATEGIC_BOMBING_TENSION_FACTOR = 0.02, -- How much strategic bombing generates world tension
        TENSION_BORDER_WAR_CONTESTED_THROUGHPUT_FACTOR = 0.1, -- If border war escalates how much tension is applied
        TENSION_BORDER_WAR_VICTORY_THROUGHPUT_FACTOR = 0.2, -- If border war escalates how much tension is applied
        TENSION_BORDER_WAR_DEFEAT_THROUGHPUT_FACTOR = 0.1, -- If border war escalates how much tension is applied
        BASE_TENSION_FROM_FACTORY_GAIN = 0.01, -- Base value for tension from factory gain in peace deal
        BASE_TENSION_FROM_RESOURCES_GAIN = 0.01, -- Base value for tension from resource gain in peace deal
        BASE_TENSION_FROM_TECH_TRANSFER = 2.0, -- Base value for tension from tech transfer in peace deal
        MIN_NATIONAL_UNITY_TO_LOSE_SUPPLY_AREA = 0.7, -- Losing supply area requiers more than this
        MIN_NATIONAL_UNITY_TO_LOSE_NAVAL_BASE = 0.85, -- Losing naval bases requiers more than this
        MIN_NATIONAL_UNITY_TO_LOSE_AIR_BASE = 0.75, -- Losing air bases requiers more than this
        MIN_NATIONAL_UNITY_TO_LOSE_CORE_STATE = 0.9, -- Losing core states requires more tna this national unity
        MAX_NATIONAL_UNITY_TO_LOSE_CORE_STATE = 0.99, -- Losing a state is impossible above this level even if it is a core state. Lower to prevent AI from getting stuck in ground wars that they can not win.
    },
    
    NCountry = {
        EVENT_PROCESS_OFFSET = 20,						-- Events are checked every X day per country or state (1 is ideal but CPU heavy)
        BASE_RESEARCH_SLOTS = 2,						-- Base amount of research slots per country
        VP_TO_SUPPLY_BASE = 1,							-- Bonus to supply from a VP, no matter the level
        VP_TO_SUPPLY_BONUS_CONVERSION = 0.1,			-- Bonus to supply local supplies from Victory Points, multiplied by this aspect and rounded to closest integer
        SUPPLY_FROM_DAMAGED_INFRA = 0.3,                -- damaged infrastructure counts as this much (compared to 1.0 for working)
        SUPPLY_PATH_MAX_DISTANCE = 15,					-- When supply route reach more than X nodes, the path is closed.
        POPULATION_YEARLY_GROWTH_BASE = 0.015,			-- basic population growth per year, used for monthly manpower and factory growth
        RESISTANCE_STRENGTH_FROM_VP = 0.001,			-- How much strength ticking speed gives each VP score.
        RESISTANCE_STRENGTH_FROM_UNIT = 0.001,			-- How much strength ticking speed is reduced from each unit in state (multiplies with resistance_decay)
        RESISTANCE_STRENGTH_FROM_NEIGHBORS = 0.5, 		-- Multiplier for how much resistance can spread from one state to its neighbors, a state will spread whatever is highest of its victorypoints resistance or half of any neighbor's resistance
        RESISTANCE_DECAY_MIN = 0.0,					-- Base resistance decay
        RESISTANCE_DECAY_MAX = 0.2,					-- Max resistance decay
        RESISTANCE_DECAY_SUBJECT = -0.4,				-- Max resistance decay for subjects
        RESISTANCE_DECAY_FROM_COMPLIANCE_FACTOR = 0.2, -- Resistance should get a decay bonus when compliance is over 0
        COMPLIANCE_FACTOR_ON_STATE_CONTROLLER_CHANGE = -0.5, -- compliance factor that applies when a state controller changes
        COMPLIANCE_DECAY_AT_MAX_COMPLIANCE = 0.05,	-- As compliance increases it gets deeper into enemy terrority and becomes harder to maintain
        COMPLIANCE_DECAY_PER_EXILE_LEGITIMACY = 0.025, -- How much legitimacy shaves off compliance decay
        RESISTANCE_TARGET_BASE = 0.35,					-- base resistance target that is achievable in optimal resistance conditions
        RESISTANCE_TARGET_MODIFIER_HAS_CLAIM = -0.1,		-- resistance target modifier in % for states we have claims
        RESISTANCE_TARGET_MODIFIER_IS_AT_PEACE = -0.1,	-- resistance target modifier in % when we are at peace
        RESISTANCE_TARGET_COMPLIANCE_FACTOR = -0.5,	-- resistance target modifier that scales with compliance
        COMPLIANCE_GROWTH_BASE = 0.05,				-- base compliance growth in resistance target
        COMPLIANCE_GROWTH_HAS_CLAIM = 0.05,			-- compliance growth bonus in % for states we have claims
        COMPLIANCE_GROWTH_IS_AT_PEACE = 0.1,			-- compliance growth bonus in % when we are at peace
        COMPLIANCE_GROWTH_VP_FACTOR = 0.0002,			-- compliance growth bonus per victory points
    },
    
    NProduction = {
        BASE_FACTORY_SPEED = 5,				-- Base factory speed multiplier (how much hoi3 style IC each factory gives).
        BASE_FACTORY_SPEED_MIL = 5,			-- Base factory speed multiplier (how much hoi3 style IC each factory gives).
        BASE_FACTORY_SPEED_NAV = 2.5,		-- Base factory speed multiplier (how much hoi3 style IC each factory gives).
        BASE_FACTORY_START_EFFICIENCY_FACTOR = 10,	-- Base start efficiency for factories expressed in %.
        BASE_FACTORY_MAX_EFFICIENCY_FACTOR = 50,	-- Base max efficiency for factories expressed in %.
        BASE_FACTORY_EFFICIENCY_GAIN = 1,		-- Base efficiency factor.
        BASE_FACTORY_EFFICIENCY_BALANCE_FACTOR = 0.1, -- Factory efficiency balancing factor
        BASE_FACTORY_EFFICIENCY_VARIANT_CHANGE_FACTOR = 90,	-- Base factor for changing production variants in %.
        BASE_FACTORY_EFFICIENCY_PARENT_CHANGE_FACTOR = 30,	-- Base factor for changing production parent<->children in %.
        BASE_FACTORY_EFFICIENCY_FAMILY_CHANGE_FACTOR = 70,	-- Base factor for changing production with same family in %.
        BASE_FACTORY_EFFICIENCY_ARCHETYPE_CHANGE_FACTOR = 20, -- Base factor for changing production with same archetype in %.
        BASE_CONSUMER_GOODS_NEED_FACTOR = 50,  -- Base factor for the consumer goods need of civilian factories in %.
    },
    
    NTechnology = {
        MAX_SUBTECHS = 3,						-- Max number of sub technologies a technology can have.
        BASE_RESEARCH_POINTS_SAVED = 30.0,		-- Base amount of research points a country can save per slot.
        BASE_YEAR_AHEAD_PENALTY_FACTOR = 2,		-- Base year ahead penalty
        BASE_TECH_COST = 100,					-- Base cost for a tech. multiplied with tech cost and ahead of time penalties.
        MAX_TECH_SHARING_BONUS = 0.5, 			-- Max technology sharing bonus that can be applied.
        LICENSE_PRODUCTION_TECH_BONUS = 0.2, 	-- License production tech bonus
    },
    
    NBuildings = {
        MAX_SHARED_SLOTS = 25,						-- Max slots shared by factories
        MAX_BUILDING_LEVELS = 15,					-- Maximum levels a building can have
        AIRBASE_CAPACITY_MULT = 200,				-- Each level of airbase building multiplied by this, gives capacity (max operational value). Value is int. 1 for each plane.
        ROCKETSITE_CAPACITY_MULT = 100,				-- Each level of rocketsite building multiplied by this, gives capacity (max operational value). Value is int. 1 for each plane.
        NAVALBASE_CAPACITY_MULT = 10.0,				-- Each level of navalbase building multiplied by this, gives max capacity. Value is float. Each ship takes port_capacity_usage space.
        NAVALBASE_REPAIR_MULT = 0.05,				-- Each level of navalbase building repairs X % of max strength. Value is float.
        RADAR_RANGE_BASE = 20,						-- Radar range base, first level radar will be this + min, next Radar max range should be 50 * new radar level
        RADAR_RANGE_MIN = 20,						-- Radar range (from state center to province center) in measure of map pixels. Exluding techs.
        RADAR_RANGE_MAX = 200,						-- Radar range (from state center to province center) in measure of map pixels. Exluding techs.
        RADAR_INTEL_EFFECT = 40,					-- Province covered by radar increases intel by 10 (where 255 is max). Province may be covered by multiple radars, then the value sums up.
        ENCRYPTION_INTEL_EFFECT = 50,				-- Intel level effect by encryption (reduces intel gained from country with encryption higher than other countries decryption)
        DECRYPTION_INTEL_EFFECT = 50,				-- Intel level effect by decryption (increases intel gained from country with decryption lower than other countries decryption)
        SABOTAGE_FACTORY_DAMAGE = 100.0,			-- How much damage takes a factory building in sabotage when state is occupied. Damage is mult by (1 + resistance strength in the state /10)
        BASE_FACTORY_REPAIR = 0.3,					-- Default repair rate before factories are taken into account
        BASE_FACTORY_REPAIR_FACTOR = 2.0,			-- Factory speed modifier when repairing.
        SUPPLY_PORT_LEVEL_THROUGHPUT = 3,           -- supply throughput per level of naval base
        INFRA_TO_SUPPLY = 2,                        -- no longer used - supply system was moved to ddb
        INFRA_TO_SUPPLY_COEFF = 1,					-- no longer used - supply system was moved to ddb
        MAX_SHARED_SLOTS_AMOUNT = 25,
    },
    
    NMilitary = {
        COMBAT_VALUE_ORG_IMPORTANCE = 1,		-- Multiplier on TotalOrganisation when determining the combat value of a division
        COMBAT_VALUE_STR_IMPORTANCE = 1,		-- Multiplier on TotalStrength when determining the combat value of a division
        HOURLY_ORG_MOVEMENT_IMPACT = -0.2,		-- How much org is lost every hour while moving an army.
        ZERO_ORG_MOVEMENT_MODIFIER = -0.8,		-- speed impact at 0 org.
        STRATEGIC_SPEED_BASE = 10.0,				-- Speed of strategic redeployment
        STRATEGIC_INFRA_SPEED = 10.0,				-- Max of additional speed gained trouh=gh level for strategic redeployment per infra
        STRATEGIC_REDEPLOY_ORG_RATIO = 0.1,		-- Ratio of max org while strategic redeployment
        BATALION_CHANGED_EXPERIENCE_DROP = 0.5,	-- Division experience drop if unit has different batalion
        ARMOR_VS_AVERAGE = 0.4,			-- how to weight in highest armor & pen vs the division average
        COMBAT_MOVEMENT_SPEED = 0.33,	-- speed reduction base modifier in combat
        TACTIC_SWAP_FREQUENCEY = 24,			-- hours between tactic swaps
        PREFERRED_TACTIC_CHARACTER_SKILL_LEVEL_REQUIRED = 5, -- Which level a field marhal or general has to be before they can pick their preferred tactic
        COUNTRY_PREFERRED_TACTIC_WEIGHT_FACTOR = 0.25,       -- Extra weight multiplier for the country preferred tactic when doing weighted random
        ARMY_GENERAL_PREFERRED_TACTIC_WEIGHT_FACTOR = 0.5,   -- Extra weight multiplier for the army general preferred tactic when doing weighted random
        FIELD_MARSHAL_PREFERRED_TACTIC_WEIGHT_FACTOR = 0.25, -- Extra weight multiplier for the field marhsal preferred tactic when doing weighted random
        PREFERRED_TACTIC_COMMAND_POWER_COST = 20,	   -- command point cost for changing preferred tactic
        RIVER_CROSSING_PENALTY = -0.3,                 -- small river crossing
        RIVER_CROSSING_PENALTY_LARGE = -0.6,           -- large river crossing
        RIVER_CROSSING_SPEED_PENALTY = -0.25,           -- small river crossing
        RIVER_CROSSING_SPEED_PENALTY_LARGE = -0.5,     -- large river crossing
        RIVER_SMALL_START_INDEX = 0,                   -- color indices for rivers
        RIVER_SMALL_STOP_INDEX = 6,
        RIVER_LARGE_STOP_INDEX = 11,
        BASE_FORT_PENALTY = -0.15, 					-- fort penalty base modifier
        MULTIPLE_COMBATS_PENALTY = -0.5,		-- defender penalty if attacked from multiple directions
        ENEMY_AIR_SUPERIORITY_IMPACT = -0.35,		-- effect modifier for enemy air superiority penalty
        ENEMY_AIR_SUPERIORITY_DEFENSE = 0.70,		-- more AA attack will approach this amount of help (diminishing returns)
        ENEMY_AIR_SUPERIORITY_DEFENSE_STEEPNESS = 112, -- how quickly defense approaches the max impact diminishing returns curve
        ENEMY_AIR_SUPERIORITY_SPEED_IMPACT = -0.30,	-- effect modifier for enemy air superiority penalty
    },
    
    NPlan = {
        PLAN_EXECUTION_WEIGHT_FRONT_LENGHT = 7, -- The field with this unit count receives full weight.
        PLAN_EXECUTION_WEIGHT_MILITARY_POWER = 1, -- The field with this military power receives full weight.
        PLAN_EXECUTION_WEIGHT_MILITARY_POWER_FACTOR = 1, -- Factored into military power
        PLAN_EXECUTION_WEIGHT_PLAN_VALUE = 1, -- Factor of planning bonus that will be factored for the overall weight.
        PLAN_EXECUTION_WEIGHT_NEIGHBOR_COMBATS = 1, -- Contribution of neighbor combats to weight.
    },
    
    NAir = {
        AIR_WING_MAX_SIZE = 1000, 					-- Max amount of planes in wing
        AIR_WING_BOMB_DAMAGE_FACTOR = 2,			-- Used to balance the damage done while bombing.
        BOMBING_TARGETING_RANDOM_FACTOR = 0.25,			-- % of picking valid targets for air missions
        AIR_COMBAT_FINAL_DAMAGE_SCALE = 0.05,               -- % how many max disrupted only planes are alloed to die in a single combat
        AIR_NAVAL_KAMIKAZE_DAMAGE_MULT = 5.0,				-- Kamikazes cause more damage
        AIR_NAVAL_KAMIKAZE_LOSSES_MULT = 4.0,				-- Kamikaze shots are more likely to shoot down planes
        BASE_STRATEGIC_BOMBING_HIT_SHIP_CHANCE = 0.01,		-- Chance to hit a ship in port when it is bombed.
        BASE_STRATEGIC_BOMBING_HIT_SHIP_DAMAGE_FACTOR = 50,
        BASE_STRATEGIC_BOMBING_HIT_PLANE_CHANCE = 0.5,		-- Chance to hit a plane in airbase when it is bombed.
        BASE_STRATEGIC_BOMBING_HIT_PLANE_DAMAGE_FACTOR = 0.2,
        STRATEGIC_BOMBER_NUKE_AIR_SUPERIORITY = 0.75,		-- How much air superiority is needed for a tactical bomber to be able to nuke a province
        MISSION_COMMAND_POWER_COSTS = {  -- command power cost per plane to create a mission
            0.0, -- AIR_SUPERIORITY
            0.0, -- CAS
            0.0, -- INTERCEPTION
            0.0, -- STRATEGIC_BOMBER
            0.0, -- NAVAL_BOMBER
            0.0, -- DROP_NUKE
            0.0, -- PARADROP
            0.0, -- NAVAL_KAMIKAZE
        },
        BOMBING_DAMAGE_FACTOR = 3.2,			-- Bombing damage factor
        AIR_WING_ATTACK_LOGISTICS_NO_TRUCK_DISRUPTION_FACTOR = 1.0, -- If a unit doesn't have truck supply, it will suffer more disruption from air attacks
    },
    
    NInterface = {
        CAMERA_ZOOM_SPEED_DISTANCE_MULT = 20.0, -- Multiplier for speed of camera zoom based on distance.
        CAMERA_ZOOM_SPEED_MAX = 0.04, -- Speed of camera zoom when close to the zoom target.
        CAMERA_ZOOM_SPEED_MULT = 5.0, -- Speed of camera zoom.
    },
    
    NSupply = {
        RAILWAY_DISTANCE_FACTOR_FOR_REINFORCEMENT_SPEED = 0.1, -- railway distance factor for reinforcement speed. Default at 0.1
        RAILWAY_CONVERSION_COOLDOWN = 10, -- Number of days between railway conversions.
    },
    
    }