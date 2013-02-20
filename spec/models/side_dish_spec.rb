require 'spec_helper'

describe SideDish do
	it "requires size and type" do
		subject.should_not be_valid
		subject.type = "Salad"
		subject.should be_valid
	end

end
