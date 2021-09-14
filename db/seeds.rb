# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Character.destroy_all
Race.destroy_all
Location.destroy_all
KnightsRadiantOrder.destroy_all
Spren.destroy_all
Book.destroy_all


locations = [
  { name: 'Aimia', location_type: 'country' },
  { name: 'Alethkar', location_type: 'country' },
  { name: 'Alm', location_type: 'country' },
  { name: 'Azir', location_type: 'country' },
  { name: 'Babatharnam', location_type: 'country' },
  { name: 'Desh', location_type: 'country' },
  { name: 'Frostlands', location_type: 'region' },
  { name: 'Emul', location_type: 'country' },
  { name: 'Greater Hexi', location_type: 'country' },
  { name: 'Herdaz', location_type: 'country' },
  { name: 'Iri', location_type: 'country' },
  { name: 'Jah Keved', location_type: 'country' },
  { name: 'Liafor', location_type: 'country' },
  { name: 'Marabethia', location_type: 'country' },
  { name: 'Marat', location_type: 'country' },
  { name: 'Reshi Isles', location_type: 'region' },
  { name: 'Rira', location_type: 'country' },
  { name: 'Shinovar', location_type: 'country' },
  { name: 'Steen', location_type: 'country' },
  { name: 'Tashikk', location_type: 'country' },
  { name: 'Thaylenah', location_type: 'country' },
  { name: 'Triax', location_type: 'country' },
  { name: 'Tu Bayla', location_type: 'country' },
  { name: 'Tu Fallia', location_type: 'country' },
  { name: 'Tukar', location_type: 'country' },
  { name: 'Yezier', location_type: 'country' },
  { name: 'Yulay', location_type: 'country' },
]

races = [
  { name: 'Alethi'},
  { name: 'Thaylen'},
  { name: 'Veden'},
  { name: 'Natan'},
  { name: 'Unkalaki'},
  { name: 'Parshendi'},
  { name: 'Shin'},
  { name: 'Makabaki'},
  { name: 'Reshi'},
  { name: 'Aimian'},
  { name: 'Herdazian'},
  { name: 'Purelaker'},
  { name: 'Iriali'},
]

sprens = [
  { name: 'Ashspren'},
  { name: 'Liespren'},
  { name: 'Cultivationspren'},
  { name: 'Highspren'},
  { name: 'Honorspren'},
  { name: 'Inkspren'},
  { name: 'Lightspren'},
  { name: 'Mistspren'},
  { name: 'Peakspren'},
  { name: 'Godspren'}
]

books = [
  { title: 'The Way of Kings', author: 'Brandon Sanderson', url:'N/A', isbn: '978-0-7653-2635-5', hardcover_pages: 1001, paperback_pages: 1258, chapters: 75, book_type: 'novel', publisher: 'Tor Books', year_released: 2010,},
  { title: 'Words of Radiance', author: 'Brandon Sanderson', url:'N/A', isbn: '978-0-7653-2636-2', hardcover_pages: 1080, paperback_pages: 1328, chapters: 89, book_type: 'novel', publisher: 'Tor Books', year_released: 2014,},
  { title: 'Edgedancer', author: 'Brandon Sanderson', url:'N/A', isbn: '978-1-250-16654-8', hardcover_pages: 268, paperback_pages: 0, chapters: 20, book_type: 'novella', publisher: 'Tor Books', year_released: 2017,},
  { title: 'Oathbringer', author: 'Brandon Sanderson', url:'N/A', isbn: '978-0-7653-2637-9', hardcover_pages: 1233, paperback_pages: 1243, chapters: 122, book_type: 'novel', publisher: 'Tor Books', year_released: 2017,},
  { title: 'Dawnshard', author: 'Brandon Sanderson', url:'N/A', isbn: '978-1-938570-26-1', hardcover_pages: 262, paperback_pages: 0, chapters: 21, book_type: 'novella', publisher: 'Tor Books', year_released: 2020,},
  { title: 'Rhythm of War', author: 'Brandon Sanderson', url:'N/A', isbn: '978-0-7653-2638-6', hardcover_pages: 1232, paperback_pages: 0, chapters: 117, book_type: 'novel', publisher: 'Tor Books', year_released: 2020,},
]

locations.each {|l| Location.create(name: l[:name], location_type: l[:location_type])}
races.each {|r| Race.create(name: r[:name])}
sprens.each {|s| Spren.create(name: s[:name])}
books.each {|b| Book.create(title: b[:title], author: b[:author], url: b[:url], isbn: b[:isbn], hardcover_pages: b[:hardcover_pages], paperback_pages: b[:paperback_pages], chapters: b[:chapters], book_type: b[:book_type], publisher: b[:publisher], year_released: b[:year_released])}
alethi = Race.find_by(name: 'Alethi')
alethkar = Location.find_by(name: 'Alethkar')
windrunner = KnightsRadiantOrder.create(title: 'Windrunner', bond: 'Honorspren')

kaladin = Character.create(name: 'Kaladin', gender: 'Male', alive: true, birth_year: 1153, race_id: alethi.id, location_id: alethkar.id, knights_radiant_order_id: windrunner.id)