@user = User.create(email: "test@test.com", password: "abcdef", password_confirmation: "abcdef", first_name: "Jon", last_name: "Snow")

puts "1 user created"
100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 posts have been created"