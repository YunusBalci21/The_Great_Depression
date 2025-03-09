import os
import re

# Paths to check (modify if needed)
MOD_FOLDER = "./"  # Change this if needed
HISTORY_STATES_FOLDER = os.path.join(MOD_FOLDER, "history/states/")
DEFINES_FILE = os.path.join(MOD_FOLDER, "common/defines/00_defines.lua")
MAP_DEFINITION_FILE = os.path.join(MOD_FOLDER, "map/definition.csv")
GFX_MODELS_FOLDER = os.path.join(MOD_FOLDER, "gfx/models/")

# Log file for errors
LOG_FILE = "hoi4_mod_debug.log"

# Regular expressions for detecting issues
MALFORMED_TOKEN_PATTERN = re.compile(r"Malformed token: (\d+), near line: (\d+)")
MISSING_ENTITY_PATTERN = re.compile(r'Failed to find entity "([^"]+)"')

def log_error(error):
    """Logs errors to console and a log file."""
    print(error)
    with open(LOG_FILE, "a", encoding="utf-8") as log:
        log.write(error + "\n")

def check_ndefines():
    """Check if NDefines exists in defines file."""
    if not os.path.exists(DEFINES_FILE):
        log_error(f"[ERROR] {DEFINES_FILE} not found!")
        return
    
    with open(DEFINES_FILE, "r", encoding="utf-8") as file:
        content = file.read()

    if "NDefines" not in content:
        log_error(f"[ERROR] NDefines is missing or incorrectly defined in {DEFINES_FILE}")

def check_missing_entities():
    """Scan error log for missing entity files in gfx/models/."""
    missing_entities = []
    if not os.path.exists(GFX_MODELS_FOLDER):
        log_error(f"[WARNING] gfx/models folder not found. Skipping entity check.")
        return
    
    # Scan log file for missing entities
    with open(LOG_FILE, "r", encoding="utf-8") as log:
        for line in log:
            match = MISSING_ENTITY_PATTERN.search(line)
            if match:
                missing_entities.append(match.group(1))

    if missing_entities:
        log_error("[ERROR] Missing entities detected:")
        for entity in missing_entities:
            entity_path = os.path.join(GFX_MODELS_FOLDER, entity + ".asset")
            if not os.path.exists(entity_path):
                log_error(f"  - {entity} not found in {GFX_MODELS_FOLDER}")

def check_malformed_tokens():
    """Scan history/states/ for malformed token errors."""
    if not os.path.exists(HISTORY_STATES_FOLDER):
        log_error(f"[ERROR] {HISTORY_STATES_FOLDER} not found!")
        return
    
    for state_file in os.listdir(HISTORY_STATES_FOLDER):
        if not state_file.endswith(".txt"):
            continue

        state_path = os.path.join(HISTORY_STATES_FOLDER, state_file)
        with open(state_path, "r", encoding="utf-8") as file:
            lines = file.readlines()

        for line_number, line in enumerate(lines, start=1):
            if re.search(r"Malformed token", line):
                log_error(f"[ERROR] Malformed token in {state_file} at line {line_number}")

def check_state_ids():
    """Check if state IDs match in definition.csv and history/states/."""
    if not os.path.exists(MAP_DEFINITION_FILE):
        log_error(f"[WARNING] {MAP_DEFINITION_FILE} not found. Skipping state ID check.")
        return
    
    # Extract state IDs from definition.csv
    valid_state_ids = set()
    with open(MAP_DEFINITION_FILE, "r", encoding="utf-8") as file:
        for line in file:
            parts = line.split(";")
            if parts and parts[0].isdigit():
                valid_state_ids.add(parts[0])

    # Check history/states/ files for valid state IDs
    for state_file in os.listdir(HISTORY_STATES_FOLDER):
        if not state_file.endswith(".txt"):
            continue

        state_id = state_file.split("-")[0]
        if state_id.isdigit() and state_id not in valid_state_ids:
            log_error(f"[ERROR] State ID {state_id} in {state_file} does not exist in {MAP_DEFINITION_FILE}")

def main():
    """Run all checks."""
    if os.path.exists(LOG_FILE):
        os.remove(LOG_FILE)  # Clear previous logs

    print("🔍 Running HoI4 Mod Debugger...")
    check_ndefines()
    check_missing_entities()
    check_malformed_tokens()
    check_state_ids()
    print("✅ Debugging complete! Check 'hoi4_mod_debug.log' for details.")

if __name__ == "__main__":
    main()
