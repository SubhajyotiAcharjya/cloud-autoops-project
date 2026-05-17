from datetime import datetime

log_file = "../../logs/automation.log"

with open(log_file, "a") as file:
    file.write(f"\nMonitoring completed at {datetime.now()}")
