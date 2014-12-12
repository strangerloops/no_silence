def generate_message
	victim = graph.keys.sample
	perpetrator = graph[victim].sample
	".#{perpetrator} You killed #{victim} #{hashtag}"
end

def graph
	{
		"Michael Brown" => ["@FPD_public_info"],
		"Akai Gurley" => ["@NYPDnews", "@NYPD75Pct"],
		"Eric Garner" => ["@NYPDnews", "@NYPD120Pct"],
		"Ezell Ford" => ["@NewtonLAPD", "@LAPD"],
		"Tamir Rice" => ["@CLEpolice"],
		"Tanisha Anderson" => ["@CLEpolice"],
		# "John Crawford" => ["@DaytonPolice"],
		"Dante Parker" => ["@SanBernardinoPD"],
		"Rumain Brisbon" => ["@phoenixpolice"]
	}
end

def hashtag
	["#BlackLivesMatter",
	 "#HandsUp",
	 "#DontShoot",
	 "#HandsUpDontShoot",
	 "#ICantBreathe"].sample
end