class GithubService
  attr_accessor :github, :token

  def initialize(token)
    @token = token
    @github = Github.new oauth_token: token
  end

  def pull_requests(state = 'open')
    Rails.cache.fetch("#{cache_key}/#{state}/pull_requests", expires_in: 5.minutes) do
      open_pull_requests = {}
      github.repos.list.each do |repo|
        repo_name = repo['name']
        open_pull_requests[repo_name] = []
        oprs = github.pull_requests.list user: repo['owner']['login'], repo: repo_name, state: state
        oprs.each do |opr|
          open_pull_requests[repo_name] << opr
        end
      end
      return open_pull_requests
    end
  end

  def cache_key
    Digest::MD5.hexdigest("#{@token}")
  end

end
