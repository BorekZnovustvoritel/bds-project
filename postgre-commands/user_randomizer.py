from random import randint
first_names = ['Jean','Thomas','Borzek','Marge','Alex','Steve','Bruh','Rob','Bob','Leopoldius','Xi','Mathias','Shrek','Ben','Karel','Freddie','Adolf','Waluigi']
last_names = ['Znowustworzujoncy', 'Minecraft', 'ILOVESQL', 'BDSmorelikeBDSM', 'Musk', 'Bezos', 'Dicktit', 'Drilldorzek', 'Dover', 'Traumterberk', 'Tightanus', 'Mercumry', 'Wankler']
nations = ['CZ', 'UK', 'FR', 'PL', 'DE', 'USA']

for i in range(50):
    first_name = first_names[randint(0,len(first_names)-1)]
    last_name = last_names[randint(0,len(last_names)-1)]
    email = f"{last_name}.{first_name}@gmail.com"
    nation = nations[randint(0, len(nations)-1)]
    bit = randint(0,1)                 
    print(f"INSERT INTO \"user\" (\"first_name\", \"last_name\", \"email\", \"picture_url\", \"is_verified\", \"nation_id\") VALUES ('{first_name}', '{last_name}', '{email}', 'https://thispersondoesnotexist.com/image', '{bit}', (SELECT \"id\" FROM \"nation\" WHERE \"nation\".\"abbreviation\"='{nation}'));")
input()
