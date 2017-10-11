class HomeController < ApplicationController
  def index
    conn = Faraday.new(url: 'https://api.github.com') do |faraday|
      faraday.adapter Faraday.default_adapter
    end
    conn.headers["Authorization"] = "token #{current_user.token}"
    response = conn.get("/user")
    @users_stuff = JSON.parse(response.body)
    @repos = @users_stuff["repos_url"]
  end

end

# "Authorization: token OAUTH-TOKEN"
# 'https://api.github.com'
