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
u6 = User.create({ email: 'f@hotmail.com', password: '1234567890', name: 'Barry Allen', date_of_birth: Date.new(1980,10,10), my_workout: 'Tabata sprints x 4', my_diet: 'Ribeye and spaguetti' })

g1 = Gym.create({ full_street_address: '32 Bowling Green Lane, London, UK', description: 'Pullups, Dips, Cardio space', picture: 'http://2.bp.blogspot.com/-UnMt39i07cU/T87VTKLSqHI/AAAAAAAAHdE/ZfolwqyyVQI/s1600/crossfit+monkey+bars.jpg' })
g2 = Gym.create({ full_street_address: '20 Lisson Grove, London, UK', description: 'Monkey bar setup with park next door', picture: 'http://bradscottfitness.tv/wp-content/uploads/2012/09/017.jpg' })
g3 = Gym.create({ full_street_address: '221 Baker Street, London, UK', description: 'New scaffold setup; good for pullups and dips', picture: 'http://img.archiexpo.com/images_ae/photo-g/pull-up-bar-for-playground-11172-1757401.jpg' })

e1 = Exercise.create({ name: 'Pullups', description: 'Regular wide grip pullup variation.', picture: 'http://www.stayfitbuzz.com/wp-content/uploads/2012/04/pull-up-workout-3.jpg' })
e2 = Exercise.create({ name: 'Muscle ups', description: 'The grandaddy of pull exercises. Combination of sternum pullups and vertical bar pushups.', picture: 'http://www.crossfitignitesydney.com.au/wp-content/uploads/2012/04/Guy-Muscle-Up-2.jpg' })
e3 = Exercise.create({ name: 'Headstand pushups', description: 'As the name says, headstand presses.', picture: 'http://s3.amazonaws.com/prod.skimble/assets/8551/handstand-push-ups-2_full.jpg' })
e4 = Exercise.create({ name: 'Hanging crunches', description: 'In a pullups or chinups position, raise your knees towards your chest.', picture: 'http://2.bp.blogspot.com/-8E07xBKDb-k/UAoJAYpMnJI/AAAAAAAAAm0/TRiwzy5MD_c/s640/Hanging_Twist_Body.jpg' })
e5 = Exercise.create({ name: 'Tabata sprints', description: '20 second sprints. 10 second rests. Repeat 4 times.', picture: 'http://4.bp.blogspot.com/_Zhg_lxt3lTw/S727zUaDTZI/AAAAAAAAA3Q/M5zTED3S_1k/s400/sprint.jpg' })

u1.gyms << g1
u1.gyms << g2
u2.gyms << g2
u3.gyms << [g1, g2, g3]
u4.gyms << [g2, g3]


u1.exercises << [e1, e2, e3]
u2.exercises << [e2, e3]
u3.exercises << [e1, e2, e3]
u4.exercises << [e1, e2, e3, e4, e5]


