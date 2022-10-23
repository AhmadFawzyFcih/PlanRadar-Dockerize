class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :project_number, :city, :start_date, :end_date, :weather

  has_many :custom_fields

  def weather
    WeatherDataService.weather_info(object.city)
  end
end
