# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Task.destroy_all

puts "Creating tasks..."
task_1 = { title: "Complete outstanding challenges", details: "Slowly getting back on track but need to maintain momentum", completed: false }
task_2 = { title: "Hit today's full body workout", details: "Increase trapbar deadlift amount by 20kg to go for a PR", completed: false }
task_3 = { title: "Call my mother", details: "Forgot to call on the weekend; need to provide her with update on life", completed: false }
task_4 = { title: "Rotate attention towards career workbook for Milly", details: "Currently in Phase 2 but many things to do", completed: false }
task_5 = { title: "Send RSVP for upcoming mate's wedding", details: "Banji's sister is getting married and I would like to attend", completed: false }

[ task_1, task_2, task_3, task_4, task_5 ].each do |attributes|
  task = Task.create!(attributes)
  puts "Created #{task.title}"
end
puts "Finished!"
