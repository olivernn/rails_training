require 'spec_helper'

describe Post do
  describe "valid post" do
    it "should be invalid without a title" do
      post = Factory.build(:post, :title => nil)
      post.should_not be_valid
    end

    it "should be invalid without a body" do
      post = Factory.build(:post, :body => nil)
      post.should_not be_valid 
    end
  end
end
