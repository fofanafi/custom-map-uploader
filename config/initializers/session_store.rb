# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_map-uploader_session',
  :secret      => '1e38e0d897c6d37a171d9dd595de052e1788ccc72793fd69883d75d06378ceb13c3dc4d662896cf3b4cd4aa4780c6ffdba80b2a65f4f0617bca352ab15190ee2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
