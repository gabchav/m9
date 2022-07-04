puts 'creando nacionalidades'

Nationality.destroy_all

Nationality.create([
    {name: 'Estados Unidos', description: 'una description opcional', flag_img: 'https://flagcdn.com/32x24/us.png'},
    {name: 'Finlandia', description: 'una description opcional', flag_img: 'https://flagcdn.com/32x24/fi.png'},
    {name: 'Italia', description: 'una description opcional', flag_img: 'https://flagcdn.com/32x24/it.png'},
    {name: 'Korea del sur', description: 'una description opcional', flag_img: 'https://flagcdn.com/32x24/kr.png'}
])

puts 'nacionalidades creadas!!!'

puts 'creando series de tv...'

puts 'creando series de tv...'

TvShow.destroy_all

#Creacion de Usuarios
User.create!(user_name: 'Willis', email: 'user1@gmail.com', password: 123456, admin: false)
User.create!(user_name: 'Bruce', email: 'user2@gmail.com', password: 123456, admin: false)
User.create!(user_name: 'Gabriel', email: 'gabriel@live.cl', password: 123456, admin: true)


#Creacion de actor
Actor.create!([
    { first_name: 'Lee', last_name: 'Jung-jae', age: 43 },
    { first_name: 'Park Hae-soo', last_name: 'Hae-soo', age: 50 }
])

#Creacion de Peliculas o Series
5.times do
    TvShow.create(
        [
            {
                name: 'game of thrones',
                summary: 'Years after a rebellion spurred by a stolen bride to be and the blind ambitions of a mad King',
                release_date: '2011-04-17',
                rating: 7.8,
                nationality: Nationality.find_by(name: 'Finlandia'),
                ruta_img: 'gameofthrones.jpg',
                user: User.find_by(email: 'user1@gmail.com')
            },
            {
                name: 'Squid Game',
                summary: 'The series revolves around Seong Gi-hun, a divorced and indebted chauffeur, who is invited to play a series of children\'s games for a chance earning a large cash prize.' ,
                release_date: '17-09-2021',
                rating: 5.6,
                nationality: Nationality.find_by(name: 'Korea del sur'),
                ruta_img: 'Squid-Game.jpg',
                user: User.find_by(email: 'user1@gmail.com')
            },
            {
                name: 'Angry Birds',
                summary: 'Red, an angry bird, has been an outcast from Bird Island ever since he was a hatchling due to his short temper and his huge, jet-black eyebrows.',
                release_date: '05-02-2016',
                rating: 6.1,
                nationality: Nationality.find_by(name: 'Estados Unidos'),
                ruta_img: 'angry.jpg',
                user: User.find_by(email: 'user1@gmail.com')
            },
            {
                name: 'Jaws 2',
                summary: 'Chief Brody suspecting another great white shark is terrorizing the fictional sea side resort of Amity Island, following a series of incidents and disappearances, and his suspicions are eventually proven true.',
                release_date: '16-06-1978',
                rating: 9.8,
                nationality: Nationality.find_by(name: 'Estados Unidos'),
                ruta_img: 'jaws.jpg',
                user: User.find_by(email: 'user2@gmail.com')
            },
            {
                name: 'Agatha Christie\'s Crooked House',
                summary: 'The granddaughter of late Greek-British business tycoon Aristide Leonides, Sophia Leonides, visits private investigator Charles Hayward in his office.',
                release_date: '31-10-2017',
                rating: 8.6,
                nationality: Nationality.find_by(name: 'Italia'),
                ruta_img: 'agatha.jpg',
                user: User.find_by(email: 'user2@gmail.com')
            },
            {
                name: 'Blade Runner: The Final Cut',
                summary: 'A blade runner must pursue and terminate four replicants who stole a ship in space, and have returned to Earth to find their creator.',
                release_date: '25-06-1982',
                rating: 6.5,
                nationality: Nationality.find_by(name: 'Estados Unidos'),
                ruta_img: 'blande.jpg',
                user: User.find_by(email: 'user2@gmail.com')
            }
        ]
    )
end




#RELACIÓN
tv_show = TvShow.find_by(name: 'Squid Game')
tv_show.actors << Actor.first
tv_show.actors << Actor.second

#Creación de categorias
Genre.create!([
    {name: 'drama', description: 'films that focus primarily on the development of a relationship between the protagonists'},
    {name: 'documentary', description: 'refers to subjects of scientific, social or cultural interest, among others.'},
    {name: 'thriller', description: 'made with the intention of provoking tension in the viewer.' },
    {name: 'history', description: 'The action takes place in the past, often with the intention of historical reenactment.' },
    {name: 'action', description: 'whose plot involves a moral interaction between good and evil' }
])

tv_show = TvShow.find_by(name: 'Squid Game')
genre = Genre.find_by(name: 'thriller')
tv_show.genres << genre

puts 'finalizado!!!'