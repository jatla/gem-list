require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "GemList" do
  include GemList

  it "should give a list of all the gems installed locally" do
  	list.length.should > 0
  end

  it "should be able to check if a gem is installed locally or not" do
  	isInstalled("rspec").should be true
    isInstalled("iDontExist").should be false
  end
end
