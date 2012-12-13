
FactoryGirl.define do
	factory :company , :class => Company do
	  name 4
	  stores {
	  	[FactoryGirl.create(:store)]
	  }
	end

end