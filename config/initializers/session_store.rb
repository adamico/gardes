# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gardes_session',
  :secret      => '3211dd04ab12d2c309703a902e69b449e80d981b540ede4bcf10aa27a038f1d54307edd1f28c090d9c43701a527409b8345ce533039c7cc942d775874f4fe49f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
