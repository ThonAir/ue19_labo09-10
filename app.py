import requests

def get_random_pun():
    url = "https://punapi.com/api/random"
    response = requests.get(url)
    if response.status_code == 200:
        data = response.json()
        return data.get("joke", "Failed to fetch a pun")
    else:
        return "Failed to fetch a pun"

if __name__ == "__main__":
    pun = get_random_pun()
    print(pun)
