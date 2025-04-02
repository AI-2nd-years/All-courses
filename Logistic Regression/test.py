import requests

url = "https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-ML0101EN-SkillsNetwork/labs/Module%203/data/ChurnData.csv"


response = requests.get(url)

if response.status_code == 200:
    with open("data.csv","w") as file:
        file.write(response.text)
        print("success")
else:
    print("error")

