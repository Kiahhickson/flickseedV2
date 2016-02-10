# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

50.times { |i| Founder.create :name => "User #{ i }", :email_address => "User#{ i }@gmail.com", :password_digest => "chicken", :website => "http://chicken.com", :profile_picture =>"http://fillmurray.com/100/100", :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, possimus laudantium dolor veniam quibusdam eaque nemo perferendis quia dolore atque a dignissimos iusto id temporibus perspiciatis fugit doloremque minus fuga!", :industry => "", :capital_required => "$100,000", :equity_share => "20%", :video => "http://fillmurray.com/200/200", :image_one => "http://fillmurray.com/100/100", :image_two => "http://fillmurray.com/100/100", :image_three => "http://fillmurray.com/100/100", :image_four => "http://fillmurray.com/100/100"}


20.times { |i| Investor.create :name => "User #{ i }", :company_name => "User #{ i }", :email_address => "User#{ i }@gmail.com", :password_digest => "chicken", :website => "http://cat.com", :profile_picture => "http://fillmurray.com/100/100", :title => "Angel Investor"}
