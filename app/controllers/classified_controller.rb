class ClassifiedController < ApplicationController
  include ClassifiedHelper
	def index
		@cars = Car.limit(20)
	end

	def make_filter
	  keyword = "%#{params["q"].upcase}%"
      make = Car.where("UPPER(make) LIKE ?", keyword).select("distinct make").limit(10);
      render :json => make
	end

end
