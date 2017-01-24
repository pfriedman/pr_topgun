class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @open_pull_requests = GithubService.new(session[:user_token]).pull_requests
  end
end

# Pull Request keys
# ["url",
#  "id",
#  "html_url",
#  "diff_url",
#  "patch_url",
#  "issue_url",
#  "number",
#  "state",
#  "locked",
#  "title",
#  "user",
#  "body",
#  "created_at",
#  "updated_at",
#  "closed_at",
#  "merged_at",
#  "merge_commit_sha",
#  "assignee",
#  "assignees",
#  "milestone",
#  "commits_url",
#  "review_comments_url",
#  "review_comment_url",
#  "comments_url",
#  "statuses_url",
#  "head",
#  "base",
#  "_links"]
