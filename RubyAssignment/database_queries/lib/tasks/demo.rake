namespace :demo do

  task al: :environment do
    #puts "hello"
    #Post.all.each do |post|
     # post.no_of_comments=Random.rand(100)
      #post.save
      #puts "hello"

      Post.find_each do |post|
      	if post.no_of_comments > 97
        puts post.no_of_comments
      	end
      end
        
        #Post.select("Title as title").group("date(created_at)")
        
       # puts Post.order(no_of_comments: :asc)
         #Post.save      

        # Post.limit(100).each do |post|
         #  puts post.no_of_comments  
         #end
          
         # Post.find_each(start: 250,finish: 275) do |post|
          #     puts post.no_of_comments
          #end       

  # end 
 
  end	

end