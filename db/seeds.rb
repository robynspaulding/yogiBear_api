# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(
  name: "Robyn Spaulding", 
  email: "RSAdmin@test.com", 
  password: "password", 
  password_confirmation: "password",
  is_admin: true
)

User.create(
  name: "Sam Smith", 
  email: "ss@test.com", 
  password: "password", 
  password_confirmation: "password",
  is_admin: false
)

User.create(
  name: "Tara Jane", 
  email: "tj@test.com", 
  password: "passwore", 
  password_confirmation: "passwore",
  is_admin: false 
)

Yogi.create(
  name: "Shawna",
  rate: 75,
  yoga_type: "Vinyasa",
  bio: "Shawna is been practicing Yoga for 12 years and loves all things holistic and connective. A plant mom and daily beach goer.",
  contact: "@yogiShawna",
  city: "Maimi",
  state: "Florida",
  available_start_time: "8:00 am",
  available_end_time: "2:00 pm",
  user_id: 1
)

Yogi.create(
  name: "Willow",
  rate: 82,
  yoga_type: "Bikram",
  bio: "Willow likes it HOT, which is why Bikram or hot yoga is her specialty. In her down time she loves being with friends and drinking Chi",
  contact: "@yogiWillow",
  city: "Cincinnati",
  state: "Ohio",
  available_start_time: "6:00 am",
  available_end_time: "4:00 pm",
  user_id: 1
)

Yogi.create(
  name: "Karin",
  rate: 65,
  yoga_type: "Hatha",
  bio: "Karin became a yogi after her daughter was born as a way to reconnect with her body and inner self in the new phase of motherhood. She loves supporting others on their yoga journies ",
  contact: "@yogiKarin",
  city: "Sacramento",
  state: "California",
  available_start_time: "10:00 am",
  available_end_time: "7:00 pm",
  user_id: 1
)

Yogi.create(
  name: "Levi",
  rate: 70,
  yoga_type: "Power",
  bio: "Levi is a former hockey player turned yogi as an injury lead him to discover Yoga and the amazing things practicing can do for ones overall well being, including strength and focus",
  contact: "@yogiLevi",
  city: "Boston",
  state: "Massachusetts",
  available_start_time: "9:00 am",
  available_end_time: "5:00 pm",
  user_id: 1
)

Booking.create(
  yogi_id: 1,
  date: "2023-02-12",
  start_time: "9:00 am",
  end_time: "12:00 pm",
  total_price: "225",
  address: "123 Crest Street",
  city: "Daytona",
  state: "Florida", 
  event_type: "Corperate event",
  in_person: false,
  paid: true,
  email: "bigbusiness@test.com",
  user_id: 2
)

Booking.create(
  yogi_id: 1,
  date: "2021-10-21",
  start_time: "1:00 pm",
  end_time: "2:00 pm",
  total_price: 75,
  address: "333 cypress drive",
  city: "Miami",
  state: "Florida", 
  event_type: "Mommy and me group",
  in_person: true,
  paid: true,
  email: "mommygroup@test.com",
  user_id: 2
)
Booking.create(
  yogi_id: 2,
  date: "2023-07-27",
  start_time: "6:00 am",
  end_time: "12:00 pm",
  total_price: 492,
  address: '333 cypress drive',
  city: "Cincinnati",
  state: "Ohio", 
  event_type: "Corperate retreat",
  in_person: true,
  paid: true,
  email: "OhioCorps@test.com",
  user_id: 2
)
Booking.create(
  yogi_id: 3,
  date: "2023-04-30",
  start_time: "6:00 pm",
  end_time: "7:00 pm",
  total_price: 65,
  address: "654 Rainbow drive",
  city: "Sacramento",
  state: "California", 
  event_type: "individual",
  in_person: true,
  paid: true,
  email: "JaneDoe@test.com",
  user_id: 3
)
Booking.create(
  yogi_id: 4,
  date: "2023-05-13",
  start_time: "10:00 am",
  end_time: "12:00 pm",
  total_price: 140,
  address: "100 Park Place",
  city: "Boston",
  state: "Massachusetts", 
  event_type: "School assembly",
  in_person: true,
  paid: true,
  email: "bostonacademy@test.com",
  user_id: 3
)
Booking.create(
  yogi_id: 4,
  date: "2023-12-22",
  start_time: "9:00 am",
  end_time: "10:00 am",
  total_price: 70,
  address: "23 Center Ave",
  city: "Boston",
  state: "Massachusetts", 
  event_type: "individual",
  in_person: false,
  paid: true,
  email: "JohnDoe@test.com",
  user_id: 3
)