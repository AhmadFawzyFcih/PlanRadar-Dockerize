# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.create(
    {
        name: "Project 1",
        project_number: "A1",
        city: "Egypt",
        custom_fields_attributes:[
            {column_type: "Integar", value: 20, name: "Quantity"},
            {column_type: "String", value: "Ahmed Fawzy", name: "Full Name"}
        ]
    }	 
)

Project.create(
    {
        name: "Project 2",
        project_number: "A2",
        city: "Vienna",
        custom_fields_attributes:[
            {column_type: "Integar", value: 40, name: "Quantity2"},
            {column_type: "String", value: "Mohamed", name: "Last Name"}
        ]
    }	 
)

Project.create(
    {
        name: "Project 3",
        project_number: "A3",
        city: "America",
        custom_fields_attributes:[
            {column_type: "Integar", value: 20, name: "Quantity"},
            {column_type: "String", value: "Ahmed Fawzy", name: "Full Name"}
        ]
    }	 
)


Project.create(
    {
        name: "Project 4",
        project_number: "A4",
        city: "Amsterdam",
        custom_fields_attributes:[
            {column_type: "Integar", value: 20, name: "Quantity"},
            {column_type: "String", value: "Ahmed Fawzy", name: "Full Name"}
        ]
    }	 
)


p "Created #{Project.count} projects"
