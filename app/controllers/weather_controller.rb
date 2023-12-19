class WeatherController < ApplicationController
    def search
      api = WeatherApi.new()
      @weather = api.weather_by_city(params[:query])
    end
  end