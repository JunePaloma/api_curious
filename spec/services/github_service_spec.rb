require 'rails_helper'

describe GithubService do
  context "class methods" do
    context ".intialize" do
      it "exists" do

        expect(GithubService.new).to be_a GithubService
      end
    end
  end

  context "instance methods" do
    context "shows a github user's profile information" do
      let(:github_user) {GithubService.new.followers}
      it "returns followers" do
        expect(github_user.followers).to eq(1)
      end
    end
  end
end
