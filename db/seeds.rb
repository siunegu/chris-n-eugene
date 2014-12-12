Place.create ({
	name: "Hong Kong",
	country: "China",
	description: "Suppose end get boy warrant general natural. Delightful met sufficient projection ask. Decisively everything principles if preference do impression of. Preserved oh so difficult repulsive on in household. In what do miss time be. Valley as be appear cannot so by.",
	languages: "Chinese",
	timezone: "UTC +10",	
	url: "http://www.ustbsu.org/images/hk.jpg"
})

Place.create ({
	name: "New York",
	country: "USA",	
	description: "Do greatest at in learning steepest. Breakfast extremity suffering one who all otherwise suspected. He at no nothing forbade up moments.",
	languages: "'Murican English",
	timezone: "UTC -11",
	url: "http://media-cdn.tripadvisor.com/media/photo-s/03/9b/2d/f2/new-york-city.jpg"	
})

Place.create ({
	name: "Singapore",
	country: "Singapore",	
	description: "Intriguing sociably so physic marginally some ouch outran jeepers far more less when much by cockatoo enticing considering along and despite some egret quaintly less gave darn flung and yet far left rebound kookaburra much.",
	languages: "Singlish",
	timezone: "UTC +8",
	url: "http://media-cdn.tripadvisor.com/media/photo-o/03/9b/2e/11/singapore.jpg"	
})

Place.create ({
	name: "Buenos Aires",
	country: "Argentina",	
	description: "Pragmatically loudly squirrel and deer or some when smelled oh hello sobbed the more that outside around gnashed trying however cardinal tore alas grumbled jeez one yellow barring between intrepidly.",
	languages: "Spanish",
	timezone: "UTC +12",
	url: "http://buenosaires.blogs.rice.edu/files/2012/09/puerto_madero__buenos_aires__argentina.jpg"	
})

Place.create ({
	name: "Uppsala",
	country: "Sweden",	
	description: "Intriguing sociably so physic marginally some ouch outran jeepers far more less when much by cockatoo enticing considering along and despite some egret quaintly less gave darn flung and yet far left rebound kookaburra much.",
	languages: "Swedish",
	timezone: "UTC +12",
	url: "http://urbanpeek.com/wp-content/gallery/sweden/uppsala-sweden-3.jpg"	
})

Place.create ({
	name: "Oslo",
	country: "Norway",	
	description: "Intriguing sociably so physic marginally some ouch outran jeepers far more less when much by cockatoo enticing considering along and despite some egret quaintly less gave darn flung and yet far left rebound kookaburra much.",
	languages: "Danish",
	timezone: "UTC +12",
	url: "http://www.visitnorway.com/ImageVaultFiles/id_949/cf_1174/oslo_sa_740x334.jpg"	
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
	name: "Americas South",
	climate: "Warm"
})

Region.create ({
	name: "Americas North",
	climate: "Warm"
})

Region.create ({
	name: "Europe",
	climate: "Warm"
})

Region.create ({
	name: "Asia",
	climate: "Temperate & Moist"
})

## Log in seeds
# Normal 
User.create({
  email: "jondoe@wsigto.com",
  password: "password",
  password_confirmation: "password",
  confirmed_at: Time.now
})

# Admin
User.create({
  email: "admin@wsigto.com",
  password: "password",
  password_confirmation: "password",
  confirmed_at: Time.now,
  admin: 'true'
})

## Itinerary
Itinerary.create ({
	name: "A Trip To the World Cities"
	})

