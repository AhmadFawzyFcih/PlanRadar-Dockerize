class WeatherApi::Connection
    BASE = 'https://api.openweathermap.org/'

    def self.api
        Faraday.new(url: BASE) do |conn|
            conn.request :json
            conn.response :json, :content_type => /\bjson$/
            conn.use :instrumentation
            conn.adapter Faraday.default_adapter
        end    
    end 
end