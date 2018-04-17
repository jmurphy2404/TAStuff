require 'httparty'

class Magician
	# def initialize(cities, countries)
	# 	@cities = ["Bab Ezzouar",
	# 	"Babol",
	# 	"Babruysk",
	# 	"Bacău",
	# 	"Bacolod",
	# 	"Bacoor",
	# 	"Badajoz",
	# 	"Badalona",
	# 	"Bafoussam",
	# 	"Bagé",
	# 	"Baghdad",
	# 	"Bago City",
	# 	"Bago",
	# 	"Baguio",
	# 	"Baharampur",
	# 	"Bahawalnagar",
	# 	"Bahawalpur",
	# 	"Bahía Blanca",
	# 	"Bahir Dar",
	# 	"Bahraich",
	# 	"Baia Mare",
	# 	"Baicheng",
	# 	"Baidoa",
	# 	"Baise",
	# 	"Baishan",
	# 	"Baiyin",
	# 	"Bakersfield",
	# 	"Baku",
	# 	"Balakovo",
	# 	"Balashikha",
	# 	"Baleshwar",
	# 	"Balıkesir",
	# 	"Balikpapan",
	# 	"Baliuag",
	# 	"ballarat",
	# 	"Bally",
	# 	"Bălți",
	# 	"Baltimore",
	# 	"Balurghat",
	# 	"Bamako",
	# 	"Bamenda",
	# 	"Banda Aceh",
	# 	"Bandar Abbas",
	# 	"Bandırma",
	# 	"Bandung",
	# 	"Bangalore",
	# 	"Bangkok",
	# 	"Bangui",
	# 	"Banha",
	# 	"Bani Suwayf",
	# 	"Banja Luka",
	# 	"Banjarmasin",
	# 	"Banjul",
	# 	"Bankura",
	# 	"Baoding",
	# 	"Baoji",
	# 	"Baoshan",
	# 	"Baotou",
	# 	"Barakaldo",
	# 	"Baraki",
	# 	"Baranagar",
	# 	"Baranovichi",
	# 	"Barbacena",
	# 	"Barcelona",
	# 	"Barcelona",
	# 	"Bardhaman",
	# 	"Bareilly",
	# 	"Bari",
	# 	"Barika",
	# 	"Barinas",
	# 	"Barisal",
	# 	"Barnaul",
	# 	"Barquisimeto",
	# 	"Barra Mansa",
	# 	"Barrackpur",
	# 	"Barrancabermeja",
	# 	"Barranquilla",
	# 	"Barreiras",
	# 	"Barretos",
	# 	"Barrie",
	# 	"Barueri",
	# 	"Baruta",
	# 	"Barysaw",
	# 	"Basel",
	# 	"Basirhat",
	# 	"Basra",
	# 	"Bat Yam",
	# 	"Batala",
	# 	"Batam",
	# 	"Batangas City",
	# 	"Bataysk",
	# 	"Bath",
	# 	"Bathinda",
	# 	"Batman",
	# 	"Batna",
	# 	"Baton Rouge",
	# 	"Battambang",
	# 	"Batu",
	# 	"Batumi",
	# 	"Batu Pahat",
	# 	"Bauru",
	# 	"Bayambang",
	# 	"Bayamo",
	# 	"Bayamón",
	# 	"Bayannur",
	# 	"Bayawan",
	# 	"Baybay",
	# 	"Bazhou",
	# 	"Beau-Bassin",
	# 	"Beaumont",
	# 	"Beauvais",
	# 	"Beawar",
	# 	"Béchar",
	# 	"Beed",
	# 	"Beersheba",
	# 	"Bei'an",
	# 	"Beihai",
	# 	"Beijing",
	# 	"Beipiao",
	# 	"Beirut",
	# 	"Béjaïa",
	# 	"Bekasi",
	# 	"Belém",
	# 	"Belfast",
	# 	"Belford Roxo",
	# 	"Belgaum",
	# 	"Belgorod",
	# 	"Belgrade",
	# 	"Bellary",
	# 	"Bellevue",
	# 	"Bello",
	# 	"Belo Horizonte",
	# 	"Bengbu",
	# 	"Benghazi",
	# 	"Benguela",
	# 	"Beni Mellal",
	# 	"Benito Juárez",
	# 	"Benoni",
	# 	"Benxi",
	# 	"Beppu",
	# 	"Berbera",
	# 	"Berdyansk",
	# 	"Berezniki",
	# 	"Bergamo",
	# 	"Bergen",
	# 	"Bergisch Gladbach",
	# 	"Berhampur",
	# 	"Berkeley",
	# 	"Berlin",
	# 	"Bern",
	# 	"Besançon",
	# 	"Betim",
	# 	"Bettiah",
	# 	"Bhadravati",
	# 	"Bhagalpur",
	# 	"Bhalwal",
	# 	"Bharatpur",
	# 	"Bharatpur",
	# 	"Bharuch",
	# 	"Bhatpara",
	# 	"Bhavnagar",
	# 	"Bhilai",
	# 	"Bhilwara",
	# 	"Bhimavaram",
	# 	"Bhind",
	# 	"Bhiwandi",
	# 	"Bhiwani",
	# 	"Bhopal",
	# 	"Bhubaneswar",
	# 	"Bhuj",
	# 	"Bhusawal",
	# 	"Białystok",
	# 	"Bidar",
	# 	"Bielefeld",
	# 	"Bielsko-Biała",
	# 	"Bihar Sharif",
	# 	"Bijapur",
	# 	"Bikaner",
	# 	"Bila Tserkva",
	# 	"Bilaspur",
	# 	"Bilbao",
	# 	"Billings",
	# 	"Biñan",
	# 	"Binangonan",
	# 	"Binzhou",
	# 	"Biratnagar",
	# 	"Birjand",
	# 	"Birmingham",
	# 	"Birmingham",
	# 	"Bishkek",
	# 	"Bislig",
	# 	"Biskra",
	# 	"Bissau",
	# 	"Biysk",
	# 	"Bizerte",
	# 	"Blackburn",
	# 	"Blackpool",
	# 	"Blagoveshchensk",
	# 	"Blantyre",
	# 	"Blida",
	# 	"Bloemfontein",
	# 	"Blumenau",
	# 	"Bnei Brak",
	# 	"Boa Vista",
	# 	"Bobo-Dioulasso",
	# 	"Bocaue",
	# 	"Bochum",
	# 	"Bogor",
	# 	"Bogota",
	# 	"Bogra",
	# 	"Boise",
	# 	"Bojnord",
	# 	"Bokaro Steel City",
	# 	"Boksburg",
	# 	"Bole",
	# 	"Bologna",
	# 	"Bolton",
	# 	"Bolzano",
	# 	"Boma",
	# 	"Bonn",
	# 	"Bordeaux",
	# 	"Bordj Bou Arréridj",
	# 	"Bordj El Kiffan",
	# 	"Borujerd",
	# 	"Bosaso",
	# 	"Boston",
	# 	"Botoșani",
	# 	"Botou",
	# 	"Botshabelo",
	# 	"Bottrop",
	# 	"Botucatu",
	# 	"Bou Saâda",
	# 	"Bouaké",
	# 	"Boulder",
	# 	"Boulogne-Billancourt",
	# 	"Bourg-en-Bresse",
	# 	"Bournemouth",
	# 	"Bozhou",
	# 	"Bradford",
	# 	"Braga",
	# 	"Bragança Paulista",
	# 	"Brăila",
	# 	"Brampton",
	# 	"Brasília",
	# 	"Brașov",
	# 	"Bratislava",
	# 	"Bratsk",
	# 	"Braunschweig",
	# 	"Brazzaville",
	# 	"Breda",
	# 	"Bremen",
	# 	"Bremerhaven",
	# 	"Brescia",
	# 	"Brest",
	# 	"Brest",
	# 	"Bridgeport",
	# 	"Brighton",
	# 	"Brisbane",
	# 	"Bristol",
	# 	"Brno",
	# 	"Brownsville",
	# 	"Bruges",
	# 	"Brussels",
	# 	"Bryansk",
	# 	"Bucaramanga",
	# 	"Bucharest",
	# 	"Bucheon",
	# 	"Budapest",
	# 	"Budaun",
	# 	"Buenaventura",
	# 	"Buenos Aires",
	# 	"Buffalo",
	# 	"Buga",
	# 	"Bujumbura",
	# 	"Bukan",
	# 	"Bukavu",
	# 	"Bukhara",
	# 	"Bulandshahr",
	# 	"Bulawayo",
	# 	"Buôn Ma Thuột",
	# 	"Burao",
	# 	"Burbank",
	# 	"Burewala",
	# 	"Burgas",
	# 	"Burgos",
	# 	"Burhanpur",
	# 	"Burlington",
	# 	"Burnaby",
	# 	"Bursa",
	# 	"Bury",
	# 	"Busan",
	# 	"Bushehr",
	# 	"Butuan",
	# 	"Buzău",
	# 	"Bydgoszcz",
	# 	"Bytom",
	# 	"Butwal"]

	# 	@countries = ["Algeria",
	# 	"Iran",
	# 	"Belarus",
	# 	"Romania",
	# 	"Philippines",
	# 	"Philippines",
	# 	"Spain",
	# 	"Spain",
	# 	"Cameroon",
	# 	"Brazil",
	# 	"Iraq",
	# 	"Philippines",
	# 	"Myanmar",
	# 	"Philippines",
	# 	"India",
	# 	"Pakistan",
	# 	"Pakistan",
	# 	"Argentina",
	# 	"Ethiopia",
	# 	"India",
	# 	"Romania",
	# 	"China",
	# 	"Somalia",
	# 	"China",
	# 	"China",
	# 	"China",
	# 	"United States",
	# 	"Azerbaijan",
	# 	"Russia",
	# 	"Russia",
	# 	"India",
	# 	"Turkey",
	# 	"Indonesia",
	# 	"Philippines",
	# 	"ustralia",
	# 	"India",
	# 	"Moldova",
	# 	"United States",
	# 	"India",
	# 	"Mali",
	# 	"Cameroon",
	# 	"Indonesia",
	# 	"Iran",
	# 	"Turkey",
	# 	"Indonesia",
	# 	"India",
	# 	"Thailand",
	# 	"Central African Republic",
	# 	"Egypt",
	# 	"Egypt",
	# 	"Bosnia and Herzegovina",
	# 	"Indonesia",
	# 	"Gambia",
	# 	"India",
	# 	"China",
	# 	"China",
	# 	"China",
	# 	"China",
	# 	"Spain",
	# 	"Algeria",
	# 	"India",
	# 	"Belarus",
	# 	"Brazil",
	# 	"Venezuela",
	# 	"Spain",
	# 	"India",
	# 	"India",
	# 	"Italy",
	# 	"Algeria",
	# 	"Venezuela",
	# 	"Bangladesh",
	# 	"Russia",
	# 	"Venezuela",
	# 	"Brazil",
	# 	"India",
	# 	"Colombia",
	# 	"Colombia",
	# 	"Brazil",
	# 	"Brazil",
	# 	"Canada",
	# 	"Brazil",
	# 	"Venezuela",
	# 	"Belarus",
	# 	"Switzerland",
	# 	"India",
	# 	"Iraq",
	# 	"Israel",
	# 	"India",
	# 	"Indonesia",
	# 	"Philippines",
	# 	"Russia",
	# 	"United Kingdom",
	# 	"India",
	# 	"Turkey",
	# 	"Algeria",
	# 	"United States",
	# 	"Cambodia",
	# 	"Indonesia",
	# 	"Georgia",
	# 	"Malaysia",
	# 	"Brazil",
	# 	"Philippines",
	# 	"Cuba",
	# 	"Puerto Rico",
	# 	"China",
	# 	"Philippines",
	# 	"Philippines",
	# 	"China",
	# 	"Mauritius",
	# 	"United States",
	# 	"France",
	# 	"India",
	# 	"Algeria",
	# 	"India",
	# 	"Israel",
	# 	"China",
	# 	"China",
	# 	"China",
	# 	"China",
	# 	"Lebanon",
	# 	"Algeria",
	# 	"Indonesia",
	# 	"Brazil",
	# 	"United Kingdom",
	# 	"Brazil",
	# 	"India",
	# 	"Russia",
	# 	"Serbia",
	# 	"India",
	# 	"United States",
	# 	"Colombia",
	# 	"Brazil",
	# 	"China",
	# 	"Libya",
	# 	"Angola",
	# 	"Morocco",
	# 	"Mexico",
	# 	"South Africa",
	# 	"China",
	# 	"Japan",
	# 	"Somalia",
	# 	"Ukraine",
	# 	"Russia",
	# 	"Italy",
	# 	"Norway",
	# 	"Germany",
	# 	"India",
	# 	"United States",
	# 	"Germany",
	# 	"Switzerland",
	# 	"France",
	# 	"Brazil",
	# 	"India",
	# 	"India",
	# 	"India",
	# 	"Pakistan",
	# 	"India",
	# 	"Nepal",
	# 	"India",
	# 	"India",
	# 	"India",
	# 	"India",
	# 	"India",
	# 	"India",
	# 	"India",
	# 	"India",
	# 	"India",
	# 	"India",
	# 	"India",
	# 	"India",
	# 	"India",
	# 	"Poland",
	# 	"India",
	# 	"Germany",
	# 	"Poland",
	# 	"India",
	# 	"India",
	# 	"India",
	# 	"Ukraine",
	# 	"India",
	# 	"Spain",
	# 	"United States",
	# 	"Philippines",
	# 	"Philippines",
	# 	"China",
	# 	"Nepal",
	# 	"Iran",
	# 	"United Kingdom",
	# 	"United States",
	# 	"Kyrgyzstan",
	# 	"Philippines",
	# 	"Algeria",
	# 	"Guinea-Bissau",
	# 	"Russia",
	# 	"Tunisia",
	# 	"United Kingdom",
	# 	"United Kingdom",
	# 	"Russia",
	# 	"Malawi",
	# 	"Algeria",
	# 	"South Africa",
	# 	"Brazil",
	# 	"Israel",
	# 	"Brazil",
	# 	"Burkina Faso",
	# 	"Philippines",
	# 	"Germany",
	# 	"Indonesia",
	# 	"Colombia",
	# 	"Bangladesh",
	# 	"United States",
	# 	"Iran",
	# 	"India",
	# 	"South Africa",
	# 	"China",
	# 	"Italy",
	# 	"United Kingdom",
	# 	"Italy",
	# 	"Democratic Republic of the Congo",
	# 	"Germany",
	# 	"France",
	# 	"Algeria",
	# 	"Algeria",
	# 	"Iran",
	# 	"Somalia",
	# 	"United States",
	# 	"Romania",
	# 	"China",
	# 	"South Africa",
	# 	"Germany",
	# 	"Brazil",
	# 	"Algeria",
	# 	"Ivory Coast",
	# 	"United States",
	# 	"France",
	# 	"France",
	# 	"United Kingdom",
	# 	"China",
	# 	"United Kingdom",
	# 	"Portugal",
	# 	"Brazil",
	# 	"Romania",
	# 	"Canada",
	# 	"Brazil",
	# 	"Romania",
	# 	"Slovakia",
	# 	"Russia",
	# 	"Germany",
	# 	"Republic of the Congo",
	# 	"Netherlands",
	# 	"Germany",
	# 	"Germany",
	# 	"Italy",
	# 	"Belarus",
	# 	"France",
	# 	"United States",
	# 	"United Kingdom",
	# 	"Australia",
	# 	"United Kingdom",
	# 	"Czech Republic",
	# 	"United States",
	# 	"Belgium",
	# 	"Belgium",
	# 	"Russia",
	# 	"Colombia",
	# 	"Romania",
	# 	"South Korea",
	# 	"Hungary",
	# 	"India",
	# 	"Colombia",
	# 	"Argentina",
	# 	"United States",
	# 	"Colombia",
	# 	"Burundi",
	# 	"Iran",
	# 	"Democratic Republic of the Congo",
	# 	"Uzbekistan",
	# 	"India",
	# 	"Zimbabwe",
	# 	"Vietnam",
	# 	"Somalia",
	# 	"United States",
	# 	"Pakistan",
	# 	"Bulgaria",
	# 	"Spain",
	# 	"India",
	# 	"Canada",
	# 	"Canada",
	# 	"Turkey",
	# 	"United Kingdom",
	# 	"South Korea",
	# 	"Iran",
	# 	"Philippines",
	# 	"Romania",
	# 	"Poland",
	# 	"Poland",
	# 	"Nepal"]
	# end

	def magic
				@cities = ["Bab_Ezzouar",
		"Babol",
		"Babruysk",
		"Bacau",
		# "Bacolod",
		"Bacoor",
		"Badajoz",
		"Badalona",
		"Bafoussam",
		"Bage",
		"Baghdad",
		"Bago_City",
		# "Bago",
		"Baguio",
		"Baharampur",
		"Bahawalnagar",
		# "Bahawalpur",
		"Bahia_Blanca",
		"Bahir_Dar",
		"Bahraich",
		"Baia_Mare",
		# "Baicheng",
		# "Baidoa",
		"Baise",
		"Baishan",
		"Baiyin",
		"Bakersfield",
		"Baku",
		"Balakovo",
		"Balashikha",
		"Baleshwar",
		"Balikesir",
		"Balikpapan",
		"Baliuag",
		"ballarat",
		"Bally",
		"Balti",
		"Baltimore",
		"Balurghat",
		"Bamako",
		"Bamenda",
		"Banda_Aceh",
		"Bandar_Abbas",
		"Bandirma",
		"Bandung",
		"Bangalore",
		"Bangkok",
		"Bangui",
		"Banha",
		"Bani_Suwayf",
		"Banja_Luka",
		"Banjarmasin",
		"Banjul",
		"Bankura",
		"Baoding",
		"Baoji",
		"Baoshan",
		"Baotou",
		"Barakaldo",
		"Baraki",
		"Baranagar",
		"Baranovichi",
		"Barbacena",
		"Barcelona",
		"Barcelona",
		"Bardhaman",
		"Bareilly",
		"Bari",
		"Barika",
		"Barinas",
		"Barisal",
		"Barnaul",
		"Barquisimeto",
		"Barra_Mansa",
		"Barrackpur",
		"Barrancabermeja",
		"Barranquilla",
		"Barreiras",
		"Barretos",
		"Barrie",
		"Barueri",
		"Baruta",
		"Barysaw",
		"Basel",
		"Basirhat",
		"Basra",
		"Bat_Yam",
		"Batala",
		"Batam",
		"Batangas_City",
		"Bataysk",
		"Bath",
		"Bathinda",
		"Batman",
		"Batna",
		"Baton_Rouge",
		"Battambang",
		"Batu",
		"Batumi",
		"Batu_Pahat",
		"Bauru",
		"Bayambang",
		"Bayamo",
		"Bayamon",
		"Bayannur",
		"Bayawan",
		"Baybay",
		"Bazhou",
		"Beau-Bassin",
		"Beaumont",
		"Beauvais",
		"Beawar",
		"Bechar",
		"Beed",
		"Beersheba",
		"Bei'an",
		"Beihai",
		"Beijing",
		"Beipiao",
		"Beirut",
		"Bejaia",
		"Bekasi",
		"Belem",
		"Belfast",
		"Belford_Roxo",
		"Belgaum",
		"Belgorod",
		"Belgrade",
		"Bellary",
		"Bellevue",
		"Bello",
		"Belo_Horizonte",
		"Bengbu",
		"Benghazi",
		"Benguela",
		"Beni_Mellal",
		"Benito_Juarez",
		"Benoni",
		"Benxi",
		"Beppu",
		"Berbera",
		"Berdyansk",
		"Berezniki",
		"Bergamo",
		"Bergen",
		"Bergisch_Gladbach",
		"Berhampur",
		"Berkeley",
		"Berlin",
		"Bern",
		"Besancon",
		"Betim",
		"Bettiah",
		"Bhadravati",
		"Bhagalpur",
		"Bhalwal",
		"Bharatpur",
		"Bharatpur",
		"Bharuch",
		"Bhatpara",
		"Bhavnagar",
		"Bhilai",
		"Bhilwara",
		"Bhimavaram",
		"Bhind",
		"Bhiwandi",
		"Bhiwani",
		"Bhopal",
		"Bhubaneswar",
		"Bhuj",
		"Bhusawal",
		"Bialystok",
		"Bidar",
		"Bielefeld",
		"Bielsko-Biala",
		"Bihar_Sharif",
		"Bijapur",
		"Bikaner",
		"Bila_Tserkva",
		"Bilaspur",
		"Bilbao",
		"Billings",
		"Binan",
		"Binangonan",
		"Binzhou",
		"Biratnagar",
		"Birjand",
		"Birmingham",
		"Birmingham",
		"Bishkek",
		"Bislig",
		"Biskra",
		"Bissau",
		"Biysk",
		"Bizerte",
		"Blackburn",
		"Blackpool",
		"Blagoveshchensk",
		"Blantyre",
		"Blida",
		"Bloemfontein",
		"Blumenau",
		"Bnei_Brak",
		"Boa_Vista",
		"Bobo-Dioulasso",
		"Bocaue",
		"Bochum",
		"Bogor",
		"Bogota",
		"Bogra",
		"Boise",
		"Bojnord",
		"Bokaro_Steel_City",
		"Boksburg",
		"Bole",
		"Bologna",
		"Bolton",
		"Bolzano",
		"Boma",
		"Bonn",
		"Bordeaux",
		"Bordj_Bou_Arreridj",
		"Bordj_El_Kiffan",
		"Borujerd",
		"Bosaso",
		"Boston",
		"Botosani",
		"Botou",
		"Botshabelo",
		"Bottrop",
		"Botucatu",
		"Bou_Saada",
		"Bouake",
		"Boulder",
		"Boulogne-Billancourt",
		"Bourg-en-Bresse",
		"Bournemouth",
		"Bozhou",
		"Bradford",
		"Braga",
		"Braganca_Paulista",
		"Braila",
		"Brampton",
		"Brasilia",
		"Brasov",
		"Bratislava",
		"Bratsk",
		"Braunschweig",
		"Brazzaville",
		"Breda",
		"Bremen",
		"Bremerhaven",
		"Brescia",
		"Brest",
		"Brest",
		"Bridgeport",
		"Brighton",
		"Brisbane",
		"Bristol",
		"Brno",
		"Brownsville",
		"Bruges",
		"Brussels",
		"Bryansk",
		"Bucaramanga",
		"Bucharest",
		"Bucheon",
		"Budapest",
		"Budaun",
		"Buenaventura",
		"Buenos_Aires",
		"Buffalo",
		"Buga",
		"Bujumbura",
		"Bukan",
		"Bukavu",
		"Bukhara",
		"Bulandshahr",
		"Bulawayo",
		"Buon_Ma_Thuot",
		"Burao",
		"Burbank",
		"Burewala",
		"Burgas",
		"Burgos",
		"Burhanpur",
		"Burlington",
		"Burnaby",
		"Bursa",
		"Bury",
		"Busan",
		"Bushehr",
		"Butuan",
		"Buzau",
		"Bydgoszcz",
		"Bytom",
		"Butwal"]

		@countries = ["Algeria",
		"Iran",
		"Belarus",
		"Romania",
		# "Philippines",
		"Philippines",
		"Spain",
		"Spain",
		"Cameroon",
		"Brazil",
		"Iraq",
		"Philippines",
		"Myanmar",
		# "Philippines",
		"India",
		"Pakistan",
		# "Pakistan",
		"Argentina",
		"Ethiopia",
		"India",
		"Romania",
		# "China",
		# "Somalia",
		"China",
		"China",
		"China",
		"United_States",
		"Azerbaijan",
		"Russia",
		"Russia",
		"India",
		"Turkey",
		"Indonesia",
		"Philippines",
		"ustralia",
		"India",
		"Moldova",
		"United_States",
		"India",
		"Mali",
		"Cameroon",
		"Indonesia",
		"Iran",
		"Turkey",
		"Indonesia",
		"India",
		"Thailand",
		"Central_African_Republic",
		"Egypt",
		"Egypt",
		"Bosnia_and_Herzegovina",
		"Indonesia",
		"Gambia",
		"India",
		"China",
		"China",
		"China",
		"China",
		"Spain",
		"Algeria",
		"India",
		"Belarus",
		"Brazil",
		"Venezuela",
		"Spain",
		"India",
		"India",
		"Italy",
		"Algeria",
		"Venezuela",
		"Bangladesh",
		"Russia",
		"Venezuela",
		"Brazil",
		"India",
		"Colombia",
		"Colombia",
		"Brazil",
		"Brazil",
		"Canada",
		"Brazil",
		"Venezuela",
		"Belarus",
		"Switzerland",
		"India",
		"Iraq",
		"Israel",
		"India",
		"Indonesia",
		"Philippines",
		"Russia",
		"United_Kingdom",
		"India",
		"Turkey",
		"Algeria",
		"United_States",
		"Cambodia",
		"Indonesia",
		"Georgia",
		"Malaysia",
		"Brazil",
		"Philippines",
		"Cuba",
		"Puerto_Rico",
		"China",
		"Philippines",
		"Philippines",
		"China",
		"Mauritius",
		"United_States",
		"France",
		"India",
		"Algeria",
		"India",
		"Israel",
		"China",
		"China",
		"China",
		"China",
		"Lebanon",
		"Algeria",
		"Indonesia",
		"Brazil",
		"United_Kingdom",
		"Brazil",
		"India",
		"Russia",
		"Serbia",
		"India",
		"United_States",
		"Colombia",
		"Brazil",
		"China",
		"Libya",
		"Angola",
		"Morocco",
		"Mexico",
		"South_Africa",
		"China",
		"Japan",
		"Somalia",
		"Ukraine",
		"Russia",
		"Italy",
		"Norway",
		"Germany",
		"India",
		"United_States",
		"Germany",
		"Switzerland",
		"France",
		"Brazil",
		"India",
		"India",
		"India",
		"Pakistan",
		"India",
		"Nepal",
		"India",
		"India",
		"India",
		"India",
		"India",
		"India",
		"India",
		"India",
		"India",
		"India",
		"India",
		"India",
		"India",
		"Poland",
		"India",
		"Germany",
		"Poland",
		"India",
		"India",
		"India",
		"Ukraine",
		"India",
		"Spain",
		"United_States",
		"Philippines",
		"Philippines",
		"China",
		"Nepal",
		"Iran",
		"United_Kingdom",
		"United_States",
		"Kyrgyzstan",
		"Philippines",
		"Algeria",
		"Guinea-Bissau",
		"Russia",
		"Tunisia",
		"United_Kingdom",
		"United_Kingdom",
		"Russia",
		"Malawi",
		"Algeria",
		"South_Africa",
		"Brazil",
		"Israel",
		"Brazil",
		"Burkina_Faso",
		"Philippines",
		"Germany",
		"Indonesia",
		"Colombia",
		"Bangladesh",
		"United_States",
		"Iran",
		"India",
		"South_Africa",
		"China",
		"Italy",
		"United_Kingdom",
		"Italy",
		"Democratic_Republic_of_the_Congo",
		"Germany",
		"France",
		"Algeria",
		"Algeria",
		"Iran",
		"Somalia",
		"United_States",
		"Romania",
		"China",
		"South_Africa",
		"Germany",
		"Brazil",
		"Algeria",
		"Ivory_Coast",
		"United_States",
		"France",
		"France",
		"United_Kingdom",
		"China",
		"United_Kingdom",
		"Portugal",
		"Brazil",
		"Romania",
		"Canada",
		"Brazil",
		"Romania",
		"Slovakia",
		"Russia",
		"Germany",
		"Republic_of_the_Congo",
		"Netherlands",
		"Germany",
		"Germany",
		"Italy",
		"Belarus",
		"France",
		"United_States",
		"United_Kingdom",
		"Australia",
		"United_Kingdom",
		"Czech_Republic",
		"United_States",
		"Belgium",
		"Belgium",
		"Russia",
		"Colombia",
		"Romania",
		"South_Korea",
		"Hungary",
		"India",
		"Colombia",
		"Argentina",
		"United_States",
		"Colombia",
		"Burundi",
		"Iran",
		"Democratic_Republic_of_the_Congo",
		"Uzbekistan",
		"India",
		"Zimbabwe",
		"Vietnam",
		"Somalia",
		"United_States",
		"Pakistan",
		"Bulgaria",
		"Spain",
		"India",
		"Canada",
		"Canada",
		"Turkey",
		"United_Kingdom",
		"South_Korea",
		"Iran",
		"Philippines",
		"Romania",
		"Poland",
		"Poland",
		"Nepal"]
		for i in 0..296
			temp1 = @cities[i]
			temp2 = @countries[i]
	    	response = HTTParty.get("http://api.wunderground.com/api/023b537b0ab0fdea/geolookup/q/#{temp2}/#{temp1}.json");
	    	if response["location"]
	    		@this_city = JSON.parse(response.body)["location"]["city"]
	    	else
	    		puts "no data"
	    	end
	    	if response["location"]
	    		@this_country = JSON.parse(response.body)["location"]["country_name"]
	    	else
	    		puts "no data"
	    	end
	    	if response["location"]
	    		@this_magic = JSON.parse(response.body)["location"]["magic"]
	    	else
	    		puts "no data"
	    	end
	    	puts "#{@this_city}, #{@this_country} is this magic: #{@this_magic}."
		end
	end
end

john = Magician.new

puts john.magic



