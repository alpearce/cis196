require 'spec_helper'

describe Beverage do
	it "requires a type and size" do
		subject.should_not be_valid
		subject.type = "Coke Zero"
		subject.size = "2"
		subject.should be_valid
	end
end
