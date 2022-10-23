class WeatherApi::Request
    def self.api
        WeatherApi::Connection.api
    end
    
    def self.get_data(end_point, query = {})
        query_string = query.map{|k,v| "#{k}=#{v}"}.join("&")
        path = query.empty?? end_point : "#{end_point}?#{query_string}"   

        response = api.get(path)  
        {
            data: response.body,
            status: response.status  
        }
    end
end