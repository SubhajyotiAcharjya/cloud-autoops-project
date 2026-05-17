with open("../../logs/automation.log") as file:
    data = file.readlines()

print("Total Log Entries:", len(data))
