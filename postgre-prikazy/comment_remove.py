script_name = input("Zadej jméno souboru:")
lines = []
with open(script_name) as scr:
	lines = scr.readlines()
for line in lines:
	if not line.startswith('#'):
		print(line)
