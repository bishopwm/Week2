# SL9. I’m damn right about TV series!

# I love TV series. I hope you do too. One of the main topics about TV series is The Absolute Truth Answers, which everyone thinks
# he has but no one truly does.

# Is Lost Finale as shitty as everyone says? Is The Wire the best TV series ever, or is it Breaking Bad? WHY WAS FIREFLY CANCELLED?
# Is it true that whoever wrote Heroes season 3 was the Devil himself? Why is Community so underrated, being in fact the best comedy ever?

# Write a class, let’s say SeriesMasterOfTheUniverse, with several methods answering questions about the series universe. Try to add
# parameters to most questions: there is no point in testing constants! Then add the testing for it using RSpec. Write several tests
# for each question, exploring different scenarios.

# An example of a method is one that, when passing a list of some TV series, returns the best one. For instance, when prefering The Wire
# when comparing it to Friends, it should pass the tast. Otherwise, if it returns Mom as the best comedy aired on 2013, it should fail
# (I mean, Veep or Community were definitely better).



class SeriesMasterOfTheUniverse
	
  def series_info
  	{
  		"Weeds" => 3,
  		"Portlandia" => 4,
  		"Dexter" => 1,
  		"Lost" => 2,
  		"How I Met Your Mother" => 5
  	}
  end

  def rank_the_series
  	result = series_info.sort_by {|key, value| value }
  	result.reverse
  	#[["How I Met Your Mother", 5], ["Portlandia", 4], ["Weeds", 3], ["Lost", 2], ["Dexter", 1]]
  end

end


describe SeriesMasterOfTheUniverse do
	before do 
		@series = SeriesMasterOfTheUniverse.new
	end

	describe "#rank_the_series" do
		it "should sort the series by rank" do 
			expect(@series.rank_the_series[1][0]).to eq("Portlandia")
		end
	end
end


	