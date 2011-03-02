require 'spec_helper'

describe Comment do
  describe "valid comments" do
    [:name, :message].each do |attr|
      it "should be invalid without a #{attr}" do
        comment = Factory.build(:comment, attr => nil)
        comment.should_not be_valid
      end
    end
  end

  it "should belong to a post" do
    post = Factory.create(:post)
    comment = Factory.create(:comment, :post => post)
    comment.post.should == post
    post.comments.include?(comment).should be_true
  end
end
