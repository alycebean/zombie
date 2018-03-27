namespace :db do

	desc "populates the database with zombies"
	task populate: :environment do
		Zombie.destroy_all
		100.times do
			Zombie.create!(
				name: Faker::Name.name,
				age: Faker::Number.between(18,100),
				email: Faker::Internet.email,
				story: Faker::Lorem.paragraph(2)

				)
		end
	end
end	
