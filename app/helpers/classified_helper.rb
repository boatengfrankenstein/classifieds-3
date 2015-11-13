module ClassifiedHelper

  def get_filtered
    case params[:price_range] 
      when "1"
        min_price = 0
        max_price = 500000
      when "2"
        min_price = 500000
        max_price = 1000000
      when "3"
        min_price = 1000000
        max_price = 2000000
      when "4"
        min_price = 2000000
        max_price = 10000000
      when "5"
        max_price = 10000000
        max_price = 10000000000
      else
        min_price = 0
        max_price = 10000000000
      end
      @cars = Car.where("price between (?) and (?)",min_price,max_price)
      @cars = @cars.where("make in (?)",params[:classified][:make].split(',')) if params[:classified][:make].present?
      @cars = @cars.where("year >= (?)",params[:classified][:year].to_i) if params[:classified][:year].present?
      render 'index'
  end

end
