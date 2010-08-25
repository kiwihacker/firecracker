# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_asp_session',
  :secret      => 'a4ef5f10950f1ef28ceeb003c2b3914e28b66d1f720193fff7dc1ab4aab660bb538a79a9620ea83edc4be88decd68c2c5d1a6a0a5b3586634368721e2c1804c5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
