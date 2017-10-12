class GithubService

  def initialize(current_user)
    @current_user = current_user
    @conn =  Faraday.new(url: 'https://api.github.com/') do |faraday|
    faraday.adapter Faraday.default_adapter
    faraday.headers["Authentication"] = "#{current_user.token}"
    end
  end

  def user_followers
    response = @conn.get("/users/#{@current_user.nickname}/followers")
    @users_followers = JSON.parse(response.body, symbolize_names: true)
  end
end
