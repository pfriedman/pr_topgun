Rails.application.config.middleware.use OmniAuth::Builder do
  # scopes - https://developer.github.com/v3/oauth/#scopes
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET'], scope: 'user,repo,read:org'
end
