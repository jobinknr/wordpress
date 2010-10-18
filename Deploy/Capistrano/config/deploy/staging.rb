set :deploy_to, "$HOME/staging"

role :app, "ruby.pollenizer.com"
#role :db, "ruby.pollenizer.com", :primary => true

# Email notifications
#set :notify_emails, ["admin@pollenizer.in", "caprica@pollenizer.in", "phil@pollenizer.com", "andrew@pollenizer.com" ]
set :notify_emails, ["admin@pollenizer.in" ]

Notifier.configure do |config|
  config[:recipient_addresses] = notify_emails
  config[:subject_prepend] = "[DEPLOY]"
  config[:site_name] = "ruby.pollenizer.com/tc"
  config[:email_content_type] = "text/html" # OR "text/plain" if you want the plain text version of the email
  config[:sections] = %w(deployment release_data source_control latest_release previous_release)
end
