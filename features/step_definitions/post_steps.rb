Then /^I should have "([^"]*)" Post$/ do |num|
  Post.count.should == num.to_i
end
