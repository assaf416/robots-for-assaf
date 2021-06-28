# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


p1 = PlayList.create(:name => "TEST 1")
p2 = PlayList.create(:name => "TEST 2")

 PlayListItem.create(:play_list_id => p1.id , pair: "DOGE-BTC" ,params: {:type=>"TRALLING",:ts=> 0.01 })
 PlayListItem.create(:play_list_id => p1.id , pair: "DOT-BTC" ,params: {:type=>"OCO",:sl=>0.04 , :tp=>0.02 })
 PlayListItem.create(:play_list_id => p2.id , pair: "SOL-BT" ,params: {:type=>"OCO",:sl=>0.04 , :tp=>0.02 })
 PlayListItem.create(:play_list_id => p2.id , pair: "CHZ-BTC" ,params: {:type=>"OCO",:sl=>0.04 , :tp=>0.02 })

Account.create(:name => "DEMO ACCOUNT 1" , :uid => 181, :no_of_bots => 4 , :play_list_id => PlayList.first.id , :algo => ["DemoAlgo", "RandomAlgo", "VolumeAlgo"].sample(1)[0])
Account.create(:name => "DEMO ACCOUNT 2" , :uid => 181, :no_of_bots => 4 , :play_list_id => PlayList.last.id  , :algo => ["DemoAlgo", "RandomAlgo", "VolumeAlgo"].sample(1)[0])