Place.create ({
	name: "Hong Kong",
	description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat, necessitatibus quaerat. Laudantium sapiente, neque fuga consequatur officia laborum minus ipsam debitis modi! Officiis ex, distinctio sit sunt, molestiae ea placeat.",
	languages: "Chinese"
})

Place.create ({
	name: "Bangladesh",
	description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem eius, nemo corporis ratione distinctio assumenda corrupti ipsa iusto, illum eum iure provident qui. Adipisci eveniet voluptatem, vel nemo incidunt! Id."
})

Place.create ({
	name: "Kenya",
	description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem eius, nemo corporis ratione distinctio assumenda corrupti ipsa iusto, illum eum iure provident qui. Adipisci eveniet voluptatem, vel nemo incidunt! Id."
})

Place.create ({
	name: "Peru",
	description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem eius, nemo corporis ratione distinctio assumenda corrupti ipsa iusto, illum eum iure provident qui. Adipisci eveniet voluptatem, vel nemo incidunt! Id."
})
## Attraction 
Attraction.create ({
	attraction_name: "Lan Kwai Fong",
})

Attraction.create ({
	attraction_name: "Bondi Beach",
})

#normal 
User.create(
{
  email: "normal@example.com",
  password: "password",
  password_confirmation: "password",
  confirmed_at: Time.now,
})

#admin
User.create({
  email: "admin@example.com",
  password: "password",
  password_confirmation: "password",
  confirmed_at: Time.now,
  
})
