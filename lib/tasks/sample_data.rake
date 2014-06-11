namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = Student.create!(name: "Akhtar Ali",
                         email: "akhtarali@ongraph.com",
                         password: "ongraph",
                         password_confirmation: "ongraph",
                         admin: true)
  end
end