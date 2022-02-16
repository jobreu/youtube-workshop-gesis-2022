# Authentication

# NB: Be careful to NOT share these credentials with anyone else whom you don't want to be able to use this account.
appID <- "YourYouTubeClientID" # Insert your own Client ID here (OAuth 2.0 Client ID created for your project via the Google Developers platform)
appSecret <- "YourYouTubeClientSecret" # Insert your own Client Secret here (Client key created for your project via the Google Developers platform)

# Optional: authorization if you use the keyring package
# creating the keyring
library(keyring)
keyring_create("YouTube", password = "YouTube") # This is the password of your keyring. You can replace it if you like.
# saving your ID into the keyring
appID <- "YourYouTubeClientID" # Insert your own Client ID here
key_set_with_value("appSecret", appID, password = "YourYouTubeClientSecret", keyring = "YouTube") # insert your own Client Secret here
keyring_unlock("YouTube")
# getting the IDs from the keyring
keyring_unlock(keyring = "YouTube", password = "YouTube") # Provide the password of the keyring here; alternatively, leave it empty here and you will be prompted for it
appSecret <- key_get("appSecret", username = appID, keyring = "YouTube")