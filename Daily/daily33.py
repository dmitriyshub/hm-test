import json
Dictionary = {
"id": "04",
"name": "sunil",
"Age": 30,
"Jobtitle" : "Developer"
}
with open('file2.json', 'w') as jsonfile:

    json_dict = json.dump(Dictionary,jsonfile)
