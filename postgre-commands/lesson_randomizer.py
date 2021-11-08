from random import randint

courses = ["Python", "C", "C#", "Ruby", "Git"]
premiums = ["Default", "Rookie", "Advanced", "PRO", "Diamond"]
themes = ["sleeping", "hacking", "baking pies", "shredding", "getting high", "sleeping again", "regex", "objects", "why is Python superior", "connecting to sql", "doing some stuff", "running out of ideas", "making funny stuff", "idk, doing something", "doing nothing"]
premium_levels = 5
for i in range(1,61):
    course_id = randint(0,len(courses)-1)
    course = courses[course_id]
    name = themes[randint(0, len(themes)-1)]
    premium_rand = randint(1,2)
    premium = ""
    if premium_rand == 2:
        premium = premiums[randint(1, premium_levels-1)]
    else:
    	premium = premiums[0]
    
    print(f"INSERT INTO \"lesson\" (\"course_id\", \"name\", \"link\", \"requires_premium\") VALUES ((SELECT \"id\" FROM \"course\" WHERE \"name\" = '{course}'), '{name}', 'url.com/{course}/lesson{i}', (SELECT \"id\" FROM \"subscription\" WHERE \"title\" = '{premium}'));")
input()
