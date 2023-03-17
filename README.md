# yogiBear_api

YogiBear is a booking sight for Yoga Instructors. A user can create an account and book a session with their favorite Yogi. A user can also see all the sessions they have booked and keep track of their charges. An Admin user can add or remove a Yoga instructor to the database, edit instructor information and create their own bookings.
 
<img src="src/assets/YogiBearIndex.png"  height="500"/> 

# Technology used:
- Ruby version 3.1.1
- <a href="https://github.com/robynspaulding/yogiBear_api">Ruby on Rails -Thins Repo </a>- <a href="https://github.com/robynspaulding/yogiBear_react">React.js frontend</a>


## Installation & Dependencies
- gem "rails", "~> 7.0.4", ">= 7.0.4.2"
- gem "pg", "~> 1.1"
- gem "puma", "~> 5.0"
- gem "bcrypt", "~> 3.1.7"
- gem "jwt"
- gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
- gem "bootsnap", require: false
- gem "rack-cors"
- group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

```bash
git clone https://github.com/robynspaulding/yogiBear_react.git
npm install
```

## Usage

```bash
rails s
```

You can view the raw json on http://localhost:3000

to view the complete site you'll also need to have the frontend code <a href="https://github.com/robynspaulding/yogiBear_react"> YogiBear Website Frontend </a> running on http://localhost:5173.

## Future Plans

- host page through Vercel 

## Icon Attribution

credit to Flaticon.com and their awesome artists for the great images I used in my project: 

- nameLogo: <a href="https://www.flaticon.com/free-icons/name" title="name icons">Name icons created by Freepik - Flaticon</a>
- homeLogo: <a href="https://www.flaticon.com/free-icons/address" title="address icons">Address icons created by Vectors Tank - Flaticon</a>
- eventLogo: <a href="https://www.flaticon.com/free-icons/event" title="event icons">Event icons created by Freepik - Flaticon</a>
- emailLogo: <a href="https://www.flaticon.com/free-icons/email" title="email icons">Email icons created by Those Icons - Flaticon</a>
- moneyLogo: <a href="https://www.flaticon.com/free-icons/dollar-sign" title="dollar sign icons">Dollar sign icons created by Freepik - Flaticon</a>
- yogaLogo: <a href="https://www.flaticon.com/free-icons/meditation" title="meditation icons">Meditation icons created by Freepik - Flaticon</a>
- bioLogo: <a href="https://www.flaticon.com/free-icons/portfolio" title="portfolio icons">Portfolio icons created by Freepik - Flaticon</a>
- contactLogo: <a href="https://www.flaticon.com/free-icons/contact-us" title="contact us icons">Contact us icons created by sohel778 - Flaticon</a>
- imageLogo: <a href="https://www.flaticon.com/free-icons/person-outline" title="person outline icons">Person outline icons created by Cedric17 - Flaticon</a>
- passwordLogo: <a href="https://www.flaticon.com/free-icons/password" title="password icons">Password icons created by Gregor Cresnar - Flaticon</a>
- background image: https://img.freepik.com/premium-vector/round-frame-simple-template-background_1159-26622.jpg?w=360

