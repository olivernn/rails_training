Then /^I should have "([^"]*)" Comments?$/ do |num|
  Comment.count.should == num.to_i
end
