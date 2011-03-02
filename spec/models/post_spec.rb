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

  describe "draft posts" do
    it "should be draft by default" do
      post = Factory.build(:post)
      post.published.should be_false
    end

    describe "scopes" do
      before :each do
        @draft_post = Factory.create(:post, :published => false)
        @published_post = Factory.create(:post, :published => true)
      end

      it "should have a drafts scope" do
        Post.drafts.should include @draft_post
        Post.drafts.should_not include @published_post
      end

      it "should have a published scope" do
        Post.published.should include @published_post
        Post.published.should_not include @draft_post
      end
    end
  end
end
