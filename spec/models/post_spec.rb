require 'rails_helper'

RSpec.describe Post, type: :model do
  before(:each) do
    @user = FactoryBot.create(:user)
  end

  it "should not create a post when is not associated to an user" do
    post = FactoryBot.build(:post)
    post.save
    expect(post.errors.messages[:user].first).to match(/must exist/)
  end

  it "should create a post when is associated to an user" do
    post = FactoryBot.create(:post, user: @user)
    expect(post.id).to_not be_nil
  end
end
