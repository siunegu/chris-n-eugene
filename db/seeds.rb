Place.create ({
	name: "Hong Kong",
	country: "China",
	description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat, necessitatibus quaerat. Laudantium sapiente, neque fuga consequatur officia laborum minus ipsam debitis modi! Officiis ex, distinctio sit sunt, molestiae ea placeat.",
	languages: "Chinese",
	timezone: "UTC +8",	
	url: "http://www.ustbsu.org/images/hk.jpg"
})

Place.create ({
	name: "Bangladesh",
	country: "China",	
	description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem eius, nemo corporis ratione distinctio assumenda corrupti ipsa iusto, illum eum iure provident qui. Adipisci eveniet voluptatem, vel nemo incidunt!",
	languages: "Muslamic",
	timezone: "UTC +8",
	url: "http://images.nationalgeographic.com/wpf/media-live/photos/000/060/cache/kenya_6020_600x450.jpg"	
})

Place.create ({
	name: "Kenya",
	country: "China",	
	description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem eius, nemo corporis ratione distinctio assumenda corrupti ipsa iusto, illum eum iure provident qui. Adipisci eveniet voluptatem, vel nemo incidunt!",
	languages: "Niganese",
	timezone: "UTC +8",
	url: "http://www.livetradingnews.com/wp-content/uploads/2014/09/india-travel-insurance.jpeg"	
})

Place.create ({
	name: "Peru",
	country: "China",	
	description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem eius, nemo corporis ratione distinctio assumenda corrupti ipsa iusto, illum eum iure provident qui. Adipisci eveniet voluptatem, vel nemo incidunt!",
	languages: "Mayan",
	timezone: "UTC +8",
	url: "http://cdni.condenast.co.uk/646x430/o_r/peru_cnt_9nov09_istock_b.jpg"	
})

## Attraction 
Attraction.create ({
	attraction_name: "Lan Kwai Fong"
})

Attraction.create ({
	attraction_name: "Bondi Beach"
})

## Region
Region.create ({
	name: "Oceania",
	climate: "Warm"
})

Region.create ({
	name: "Africa",
	climate: "Warm"
})

Region.create ({
	name: "Europe",
	climate: "Warm"
})

# Log in seeds
# Normal 
User.create({
  email: "normal@example.com",
  password: "password",
  password_confirmation: "password",
  confirmed_at: Time.now
})

# Admin
User.create({
  email: "admin@example.com",
  password: "password",
  password_confirmation: "password",
  confirmed_at: Time.now,
  admin: 'true'
})

## Itinerary
Itinerary.create ({
	name: "Truly Asia"
	})

