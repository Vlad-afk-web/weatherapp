class WeatherApi

  BASE_URI = 'http://api.weatherapi.com/v1'

 def initialize() 
    @api_key = ''
  end

  def weather_by_city(name)
    url = "#{BASE_URI}/current.json?key=#{@api_key}&q=#{name}" 
    HTTParty.get(url) 
  end
end
# 40.730610, -73.935242
