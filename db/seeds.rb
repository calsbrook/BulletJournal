# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Habit.destroy_all
habits = Habit.create([
    {name: "drink water", dates: [Date.today, Date.yesterday, Date.tomorrow], color: 'blue', user_id: 1 },
    {name: "run", dates: [Date.today], color: 'red', user_id: 1 },
    {name: "play video games", dates: [Date.today, Date.yesterday, Date.tomorrow], color: 'orange', user_id: 1 }
])