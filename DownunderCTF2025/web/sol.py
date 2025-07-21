import requests

# Prepare login credentials
zero_password = "\x00" * 64
email = "mc-fat@monke.zip"
payload = {
    "email": email,
    "password": zero_password
}

# Send login request
res = requests.post("http://localhost:1337/login", json=payload)

# Get token from response
token_data = res.json()
print(token_data)

# Extract the token (adjust the key as needed)
token = token_data.get("token")

if token:
    # Use the token in the X-Auth-Token header
    headers = {
        "X-Auth-Token": token
    }

    # Send the authenticated GET request
    r = requests.get("http://localhost:1337/emails", headers=headers)
    print(r.status_code)
    print(r.text)
else:
    print("Token not found in login response")