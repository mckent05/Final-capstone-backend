# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

User.create!(username:"admin") 


Item.create!(
  name: 'Cairo International Stadium',
  description: 'The Cairo International Stadium (Arabic: ستاد القاهرة الدولي), formerly known as Nasser Stadium, is an Olympic-standard, multi-use stadium with an all-seated capacity of 75,000.', 
  image: 'https://upload.wikimedia.org/wikipedia/en/b/bf/Panorma_Cairo_Stadium.jpg', 
  price: 750000, 
  city: 'Nasr City', 
  capacity: 75000, 
  user: User.first
)
Item.create!(
  name: 'Borg El Arab Stadium',
  description: 'The Borg El Arab Stadium (Arabic: ستاد برج العرب), sometimes referred to as the Egyptian Army Stadium or El Geish Stadium - Alexandria, is a stadium commissioned in 2005 in the Mediterranean Sea resort of Borg El Arab;', 
  image: 'https://www.egypttoday.com/siteimages/Larg/202010300948394839.jpg', 
  price: 860000, 
  city: 'Alexandria', 
  capacity: 86000, 
  user: User.first
)

Item.create!(
  name: 'Moshood Abiola National Stadium',
  description: 'Moshood Abiola National Stadium is a multipurpose national sports stadium located in Abuja, in the Federal Capital Territory of Nigeria.', 
  image: 'https://netstorage-sportsbrief.akamaized.net/images/654627db3befbd4d.jpg', 
  price: 650000, 
  city: 'Abuja', 
  capacity: 60491, 
  user: User.first
)

Item.create!(
  name: 'Sani Abacha Stadium',
  description: 'The Sani Abacha Stadium is a multi-purpose stadium in Kano, Kano State, Nigeria. It is currently used mostly for football matches and athletics.', 
  image: 'https://en.africatopsports.com/wp-content/uploads/2021/10/FCZ-qs1WQAMQD9b-1.jpeg', 
  price: 200000, 
  city: 'Kano', 
  capacity: 16000, 
  user: User.first
)

Item.create!(
  name: 'Eden Gardens',
  description: 'Eden Gardens is a cricket ground in Kolkata, India. Established in 1864, it is the oldest[3][4][5] and second-largest cricket stadium in India and third-largest in the world.', 
  image: 'https://www.kreedon.com/wp-content/uploads/2019/02/230353.jpg', 
  price: 1000000, 
  city: 'Kolkata', 
  capacity: 68000, 
  user: User.first
)

Item.create!(
  name: 'Stade de France',
  description: 'The Stade de France  is the national stadium of France, located just north of Paris in the commune of Saint-Denis. Its seating capacity of 80,698 makes it the seventh-largest stadium in Europe.', 
  image: 'https://medias.paris2024.org/uploads/2021/07/03P-Paris2024-STA-Stade-Olympique-2-min-scaled.jpg?x-oss-process=image/resize,w_2560,h_1707,m_lfit/format,jpeg', 
  price: 1000000, 
  city: 'Saint-Dennis', 
  capacity: 80698, 
  user: User.first
)

Item.create!(
  name: 'Wembley Stadium',
  description: 'Wembley Stadium (branded as Wembley Stadium connected by EE for sponsorship reasons) is a football stadium in Wembley, London.', 
  image: 'https://static.ostadium.com/galleries/wembley-stadium-illus.jpg', 
  price: 100000, 
  city: 'London', 
  capacity: 90000, 
  user: User.first
)

Item.create!(
  name: 'AsiaWorld–Arena',
  description: 'AsiaWorld–Arena is the largest indoor seated performance venue in Hong Kong.It plays host to many concerts, sporting events, and other forms of entertainment.', 
  image: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/57/58/e6/caption.jpg?w=1200&h=-1&s=1', 
  price: 100000, 
  city: 'Hong-Kong', 
  capacity: 16000, 
  user: User.first
)

Item.create!(
  name: 'Hollywood Bowl',
  description: 'The Hollywood Bowl is an amphitheatre in the Hollywood Hills neighborhood of Los Angeles, California. It was named one of the 10 best live music venues in America by Rolling Stone magazine in 2018.', 
  image: 'https://www.l-acoustics.com/wp-content/uploads/2021/04/Hollywood_Bowl_Los_Angeles_CA_USA_01_resized.jpg', 
  price: 100000, 
  city: 'Los Angeles', 
  capacity: 17500, 
  user: User.first
)


Item.create!(
  name: 'Moi International Sports Centre ',
  description: 'The Moi International Sports Centre is a multi-purpose stadium in Kasarani, Kenya. It was built in 1987 for the All-Africa Games held in Nairobi.', 
  image: 'https://www.nyongesasande.com/wp-content/uploads/2021/03/kasarani-stadiym-1.jpg', 
  price: 600000, 
  city: 'Kasarani', 
  capacity: 60000, 
  user: User.first
)