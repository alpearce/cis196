require 'spec_helper'

describe Burger do
	it "requires a bun" do
		subject.should_not be_valid
		subject.bun = "onion"
		subject.should be_valid
	end
end
