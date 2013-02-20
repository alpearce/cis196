require 'spec_helper'

describe Order do
	it "requires customer" do
		subject.should_not be_valid
		subject.customer="Chuck Norris"
		subject.should be_valid
	end

end
