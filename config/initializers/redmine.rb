require 'redmine_client/redmine_client'

RedmineClient::Base.configure do
  self.site = 'http://localhost:3000'
  self.user = 'admin'
  self.password = 'admin'
end