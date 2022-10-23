class Project < ApplicationRecord
    #=========================<< Relations >>==========================
    has_many :custom_fields
    accepts_nested_attributes_for :custom_fields, allow_destroy: true
    #=========================<< Filters >>==========================
    scope :sort_by_name, -> (by) { order(name: by) }
    scope :sort_by_project_number, -> (by) { order(project_number: by) }
    scope :sort_by_city, -> (by) { order(city: by) }
    scope :sort_by_start_date, -> (by) { order(start_date: by) }
    scope :filter_by_field_value, -> (by) { joins(:custom_fields).order("custom_fields.value ?",by) }    
    #==========================<< Validations >>======================
    validates_presence_of :name
end
