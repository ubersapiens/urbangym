# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Gym.delete_all
Exercise.delete_all
UserExercise.delete_all

u1 = User.create({ email: 'a@hotmail.com', password: '12345', name: 'Bruce Wayne', date_of_birth: Date.new(1991,4,10), my_workout: 'Pullups x 20', my_diet: 'Steak and brown rice' })
u2 = User.create({ email: 'b@hotmail.com', password: '123456', name: 'Peter Parker', date_of_birth: Date.new(1985,12,10), my_workout: 'Pushups x 50', my_diet: 'Tuna and integral pasta' })
u3 = User.create({ email: 'c@hotmail.com', password: '1234567', name: 'Tony Stark', date_of_birth: Date.new(1982,10,10), my_workout: 'Dips x 12', my_diet: 'Chicken and sweet potatoe' })
u4 = User.create({ email: 'd@hotmail.com', password: '12345678', name: 'Clark Kent', date_of_birth: Date.new(1978,10,10), my_workout: 'Handstand pushups x 8', my_diet: 'Salmon and salad' })
u5 = User.create({ email: 'e@hotmail.com', password: '123456789', name: 'Bruce Banner', date_of_birth: Date.new(1989,10,10), my_workout: '10km in less than 1 hour', my_diet: 'Seabass and quinoa' })
u6 = User.create({ email: 'f@hotmail.com', password: '1234567890', name: 'Barry Allen', date_of_birth: Date.new(1980,2,10), my_workout: 'Tabata sprints x 4', my_diet: 'Ribeye and spaguetti' })
u7 = User.create({ email: 'g@hotmail.com', password: '12345678901', name: 'Superman', date_of_birth: Date.new(1998,12,20), my_workout: 'Chinups x 30', my_diet: 'Thai wok' })
u8 = User.create({ email: 'h@hotmail.com', password: '123456789012', name: 'Batman', date_of_birth: Date.new(1980,8,1), my_workout: 'Box jumps x 15', my_diet: 'Swordfish with pilaf rice' })
u9 = User.create({ email: 'i@hotmail.com', password: '1234567890123', name: 'Spiderman', date_of_birth: Date.new(1986,3,4), my_workout: 'One hand pushups x 10', my_diet: 'Bowl of cereal' })
u0 = User.create({ email: 'j@hotmail.com', password: '12345678901234', name: 'Flash', date_of_birth: Date.new(2004,5,30), my_workout: 'Sternum pullups x 12', my_diet: 'Sauteed vegetables and curry chicken' })
u11 = User.create({ email: 'k@hotmail.com', password: '123456789012345', name: 'Green Lantern', date_of_birth: Date.new(1991,4,10), my_workout: 'Pullups x 20', my_diet: 'Steak and brown rice' })
u12 = User.create({ email: 'l@hotmail.com', password: '1234567890123456', name: 'Catwoman', date_of_birth: Date.new(1985,12,10), my_workout: 'Pushups x 50', my_diet: 'Tuna and integral pasta' })
u13 = User.create({ email: 'm@hotmail.com', password: '12345678901234567', name: 'Iron Man', date_of_birth: Date.new(1982,10,10), my_workout: 'Dips x 12', my_diet: 'Chicken and sweet potatoe' })
u14 = User.create({ email: 'n@hotmail.com', password: '123456789012345678', name: 'Wolverine', date_of_birth: Date.new(1978,10,10), my_workout: 'Handstand pushups x 8', my_diet: 'Salmon and salad' })
u15 = User.create({ email: 'o@hotmail.com', password: '1234567890123456789', name: 'Goku', date_of_birth: Date.new(1989,10,10), my_workout: '10km in less than 1 hour', my_diet: 'Seabass and quinoa' })
u16 = User.create({ email: 'p@hotmail.com', password: '12345678901234567890', name: 'Vegeta', date_of_birth: Date.new(1980,2,10), my_workout: 'Tabata sprints x 4', my_diet: 'Ribeye and spaguetti' })
u17 = User.create({ email: 'q@hotmail.com', password: '123456789012345678901', name: 'Professor X', date_of_birth: Date.new(1998,12,20), my_workout: 'Chinups x 30', my_diet: 'Thai wok' })
u18 = User.create({ email: 'r@hotmail.com', password: '1234567890123456789012', name: 'Storm', date_of_birth: Date.new(1980,8,1), my_workout: 'Box jumps x 15', my_diet: 'Swordfish with pilaf rice' })
u19 = User.create({ email: 's@hotmail.com', password: '12345678901234567890123', name: 'The Beast', date_of_birth: Date.new(1986,3,4), my_workout: 'One hand pushups x 10', my_diet: 'Bowl of cereal' })
u20 = User.create({ email: 't@hotmail.com', password: '123456789012345678901234', name: 'Apocalypse', date_of_birth: Date.new(2004,5,30), my_workout: 'Sternum pullups x 12', my_diet: 'Sauteed vegetables and curry chicken' })

g1 = Gym.create({ full_street_address: '32 Bowling Green Lane, London, UK', description: 'Pullups, Dips, Cardio space', picture: 'http://2.bp.blogspot.com/-UnMt39i07cU/T87VTKLSqHI/AAAAAAAAHdE/ZfolwqyyVQI/s1600/crossfit+monkey+bars.jpg' })
g2 = Gym.create({ full_street_address: '20 Lisson Grove, London, UK', description: 'Monkey bar setup with park next door', picture: 'http://bradscottfitness.tv/wp-content/uploads/2012/09/017.jpg' })
g3 = Gym.create({ full_street_address: '221 Baker Street, London, UK', description: 'New scaffold setup; good for pullups and dips', picture: 'http://img.archiexpo.com/images_ae/photo-g/pull-up-bar-for-playground-11172-1757401.jpg' })
g4 = Gym.create({ full_street_address: '20 Clerkenwell, London, UK', description: 'Outdoor gym inside a park', picture: 'http://news.bbc.co.uk/media/images/46355000/jpg/_46355951_wbcbearwoodgym13.jpg' })
g5 = Gym.create({ full_street_address: '10 Grays Inn, London, UK', description: 'Full setup for outdoor workouts', picture: 'http://sphotos-a.xx.fbcdn.net/hphotos-prn1/p480x480/539761_496258017096306_211442466_n.jpg' })
g6 = Gym.create({ full_street_address: '32 Kings Road, London, UK', description: 'Kids playground and park gym', picture: 'http://i01.i.aliimg.com/img/pb/715/981/409/409981715_081.jpg' })
g7 = Gym.create({ full_street_address: '20 Farringdon Road, London, UK', description: 'Construction with lots of bars to do pull workouts', picture: 'http://i224.photobucket.com/albums/bb471/GETfizzYcaL/Kennington_Park_GETizzYcaL_DSC04225.jpg' })
g8 = Gym.create({ full_street_address: '6 Marylebone High Street, London, UK', description: 'Pullup bar structure with parallel bars', picture: 'http://www.hopkinsmn.com/parks/parks/img/interlachen-lg.jpg' })
g9 = Gym.create({ full_street_address: '100 Holborn High Street London, UK', description: 'McDonalds with benches, lead pipe frames', picture: 'http://imagesus.homeaway.co.uk/mda01/8b440b77-c758-440c-8415-fa83eae4efde.1.12' })
g0 = Gym.create({ full_street_address: '62 Camden Road, London, UK', description: 'Jungle gym complex', picture: 'http://www.henleytowncouncil.gov.uk/files/InTouch/3839/3839_thumblarge.jpg' })
g11 = Gym.create({ full_street_address: '10 Bowling Green Lane, London, UK', description: 'Pullups, Dips, Cardio space', picture: 'http://2.bp.blogspot.com/-UnMt39i07cU/T87VTKLSqHI/AAAAAAAAHdE/ZfolwqyyVQI/s1600/crossfit+monkey+bars.jpg' })
g12 = Gym.create({ full_street_address: '28 Lisson Grove, London, UK', description: 'Monkey bar setup with park next door', picture: 'http://bradscottfitness.tv/wp-content/uploads/2012/09/017.jpg' })
g13 = Gym.create({ full_street_address: '2 Baker Street, London, UK', description: 'New scaffold setup; good for pullups and dips', picture: 'http://img.archiexpo.com/images_ae/photo-g/pull-up-bar-for-playground-11172-1757401.jpg' })
g14 = Gym.create({ full_street_address: '120 Clerkenwell, London, UK', description: 'Outdoor gym inside a park', picture: 'http://news.bbc.co.uk/media/images/46355000/jpg/_46355951_wbcbearwoodgym13.jpg' })
g15 = Gym.create({ full_street_address: '55 Grays Inn, London, UK', description: 'Full setup for outdoor workouts', picture: 'http://sphotos-a.xx.fbcdn.net/hphotos-prn1/p480x480/539761_496258017096306_211442466_n.jpg' })
g16 = Gym.create({ full_street_address: '72 Kings Road, London, UK', description: 'Kids playground and park gym', picture: 'http://i01.i.aliimg.com/img/pb/715/981/409/409981715_081.jpg' })
g17 = Gym.create({ full_street_address: '8 Farringdon Road, London, UK', description: 'Construction with lots of bars to do pull workouts', picture: 'http://i224.photobucket.com/albums/bb471/GETfizzYcaL/Kennington_Park_GETizzYcaL_DSC04225.jpg' })
g18 = Gym.create({ full_street_address: '28 Marylebone High Street, London, UK', description: 'Pullup bar structure with parallel bars', picture: 'http://www.hopkinsmn.com/parks/parks/img/interlachen-lg.jpg' })
g19 = Gym.create({ full_street_address: '71 Holborn High Street London, UK', description: 'McDonalds with benches, lead pipe frames', picture: 'http://imagesus.homeaway.co.uk/mda01/8b440b77-c758-440c-8415-fa83eae4efde.1.12' })
g20 = Gym.create({ full_street_address: '13 Camden Road, London, UK', description: 'Jungle gym complex', picture: 'http://www.henleytowncouncil.gov.uk/files/InTouch/3839/3839_thumblarge.jpg' })

e1 = Exercise.create({ name: 'Pullups', description: 'Regular wide grip pullup variation.', video_url: 'http://www.youtube.com/embed/guY4MM85-BI' })
e2 = Exercise.create({ name: 'Muscle ups', description: 'The grandaddy of pull exercises. Combination of sternum pullups and vertical bar pushups.', video_url: 'http://www.youtube.com/embed/CJX1pxL-NMo' })
e3 = Exercise.create({ name: 'Headstand pushups', description: 'As the name says, headstand presses.', video_url: 'http://www.youtube.com/embed/TFBdxDSdcA0' })
e4 = Exercise.create({ name: 'Hanging crunches', description: 'In a pullups or chinups position, raise your knees towards your chest.', video_url: 'http://www.youtube.com/embed/iZZernfK6iQ' })
e5 = Exercise.create({ name: 'Tabata sprints', description: '20 second sprints. 10 second rests. Repeat 4 times.', video_url: 'http://www.youtube.com/embed/8o1GcudPhM8' })
e6 = Exercise.create({ name: 'Pushups', description: 'Regular military style pushups.', video_url: 'http://www.youtube.com/embed/_m11wH3CUes' })
e7 = Exercise.create({ name: 'Sternum pullups', description: 'Pullup variation where the chest reaches the bar.', video_url: 'http://www.youtube.com/embed/1pMPCY3GA3o' })
e8 = Exercise.create({ name: 'Triangle pushups', description: 'Diamond shaped hand posture pushups.', video_url: 'http://www.youtube.com/embed/UfqqEKurvEQ' })
e9 = Exercise.create({ name: 'Chinups', description: 'Close grip pullups with palms facing the face.', video_url: 'http://www.youtube.com/embed/OST3taemnpQ' })
e0 = Exercise.create({ name: 'Plank tornado', description: 'Plank variation that goes from side plank, to normal, to side.', video_url: 'http://www.youtube.com/embed/Wry2TR6_y0o' })
e11 = Exercise.create({ name: 'Close grip pullups', description: 'Close grip pullup variation.', video_url: 'http://www.youtube.com/embed/pr-TIGY6134' })
e12 = Exercise.create({ name: 'Dips', description: 'Triceps dips on parallel bars.', video_url: 'http://www.youtube.com/embed/BlECujccXpI' })
e13 = Exercise.create({ name: 'Inverted presses', description: 'As the name says, headstand presses.', video_url: 'http://www.youtube.com/embed/6It9IzhahnQ' })
e14 = Exercise.create({ name: 'Hanging bicycle', description: 'In a pullups or chinups position, raise your knees towards your chest and cycle.', video_url: 'http://www.youtube.com/embed/yhVlSazXGuE' })
e15 = Exercise.create({ name: '100m sprints', description: '100 meter sprints for leg development and explosiveness.', video_url: 'http://www.youtube.com/embed/PIUMG2lBaNI' })
e16 = Exercise.create({ name: 'Spider pushups', description: 'Wide stance pushups pulling the legs towards the elbow to bring in the core.', video_url: 'http://www.youtube.com/embed/XvNZ-OIHgss' })
e17 = Exercise.create({ name: 'Side to side pullups', description: 'Pullup variation where the chest goes up to one side and then to the other.', video_url: 'http://www.youtube.com/embed/RjZoCUR_dGQ' })
e18 = Exercise.create({ name: 'Commando pullups', description: 'Close alternative grip pullups.', video_url: 'http://www.youtube.com/embed/0f8r3dz5_TI' })
e19 = Exercise.create({ name: 'Inverted pullups', description: 'Close grip pullups with your back to the bar.', video_url: 'http://www.youtube.com/embed/0zxcgK6tlLE' })
e20 = Exercise.create({ name: 'Regular plank', description: 'Plank variation that goes from side plank, to normal, to side.', video_url: 'http://www.youtube.com/embed/R5fq-g5bT5I' })




