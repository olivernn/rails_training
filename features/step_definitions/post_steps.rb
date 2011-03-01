Then /^I should have "([^"]*)" Post$/ do |num|
  Post.count.should == num.to_i
end

Given /^I have the following posts$/ do |table|
  table.hashes.each do |attributes|
    Post.create(attributes)
  end
end

