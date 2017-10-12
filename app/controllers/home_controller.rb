class HomeController < ApplicationController
  def index
    binding.pry
    @followers_json = GithubService.new(current_user).user_followers
    binding.pry
  end

end


# conn = Faraday.new(url: 'https://api.github.com') do |faraday|
#   faraday.adapter Faraday.default_adapter
# end
# conn.headers["Authorization"] = "token #{current_user.token}"
# response = conn.get("/user")
