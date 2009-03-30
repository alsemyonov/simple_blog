# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rotuka_session',
  :secret      => '1897b0b759aa77e70387aaf7407b39637d861e2935ab9bf465a45066afaf4b74cd09249cc92e3bc977a7b333c90c7ff6613246ebb59b0284480b7516fe44e054'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
