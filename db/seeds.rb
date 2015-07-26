User.create!(name:  "Admin User",
             email: "admin@test.com",
             password:              "password",
             password_confirmation: "password",
             admin: true)
             
User.create!(name:  "Regular User",
             email: "user@test.com",
             password:              "password",
             password_confirmation: "password",
             admin: false)