require_relative 'project'

describe Project do
	before do
		@starting_fund = 100 
		@goal_fund = 1000
		$stdout = StringIO.new
		@project = Project.new("ABC", @starting_fund, @goal_fund)

	end
	it "has an initial target funding amount" do
		@project.goal.should == 1000
	end
	it "computes the total funding oustanding as the target funding amount minus the funding amount" do
		@project.total_needed.should == @goal_fund - @starting_fund
				
	end
	it "increases funds by 25 when funds are added " do
		@project.add_funds(25)
		@project.funding.should == @starting_fund + 25
	end
	it "decreases funds by 15 when funds are removed" do
		@project.remove_funds(15)
		@project.funding.should == @starting_fund - 15
	end

	context "created with a default funding amount" do
		before do
			@project = Project.new("ABC")			
		end

		it "has a default value of 0 for funding amount " do
			@project.funding.should == 0
		end
	end



end