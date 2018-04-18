namespace :user1  do
	 
	 task al: :environment do


       10.times do
       	User.create(
                name: Faker::Name.name,
      
       		)
       end
        
        User.find_each do |user|
           user.id=Random.rand(10)

        end




	 end


end