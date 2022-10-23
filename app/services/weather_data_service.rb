class WeatherDataService
    def self.weather_info(city)
        response = WeatherApi::Request.get_data('data/2.5/forecast', {
            q: city,
            appid: 'fa97db5dd3b2b666250d990f57c5efe1'
          })
          process_data(response[:data])
    end

    def self.process_data(data)
        weather_data = []
        days = []

        if data["list"]
            data["list"].each do |w_info|
                info = {}
                if !days.include?(Time.at(w_info["dt"].to_i).strftime("%Y-%m-%d"))
                    info[:dt] = w_info["dt"]
                    info[:date] = Time.at(w_info["dt"].to_i).strftime("%Y-%m-%d") 
                    info[:day] = Time.at(w_info["dt"].to_i).strftime("%a")
                    info[:temp] = w_info["main"]["temp"]
                    info[:temp_kf] = w_info["main"]["temp_kf"]
                    info[:humidity] = w_info["main"]["humidity"]
                    info[:weather_status] = w_info["weather"][0]["main"]
                    info[:weather_icon] = "http://openweathermap.org/img/wn/#{w_info['weather'][0]['icon']}@2x.png"
                    
                    days << info[:date]
                    weather_data << info
                end
            end
            weather_data.pop(2)
        end
        weather_data
    end
end