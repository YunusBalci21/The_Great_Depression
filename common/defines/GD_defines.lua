-- Great Depression mod defines

NDefines.NGame.START_DATE = "1929.10.24"
NDefines.NGame.END_DATE = "1949.1.1"

-- Economic Depression-specific modifiers
NDefines.NCountry.POPULATION_YEARLY_GROWTH_BASE = 0.010 -- Reduced from default 0.015
NDefines.NProduction.BASE_FACTORY_SPEED = 4.5 -- Slightly reduced from default 5
NDefines.NProduction.BASE_FACTORY_SPEED_MIL = 4.5 -- Slightly reduced from default 5

-- Additional settings to ensure proper game loading with new start date
NDefines.NGame.SAVE_VERSION = 10 -- Force save version update
NDefines.NGame.LAG_DAYS_FOR_LOWER_SPEED = 10
NDefines.NGame.LAG_DAYS_FOR_PAUSE = 25