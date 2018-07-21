require "sinatra"
require 'mailgun'
require 'mailgun-ruby'
require './cookies'
require './cakes'
require './muffins'


Dir[settings.root + "/classes/*.rb"].each{|file| require file}


before do
	@user = User.new
	@user.username = "guest"
end


before do	
	@blue_berry_muffin = Muffin.new("Bluberry Muffin", 2.50)	
end

before do	
	@chocolate_chip_muffin = Muffin.new("Chocolate Chip Cookie", 2.50)	
end

before do	
	@apple_cinnamon_muffin = Muffin.new("Apple Cinnamon Muffin", 2.50)	
end


before do
	@chocolate_cake = Cake.new("Chocolate Cake", 11.99)	
end

before do
	@vanilla_cake = Cake.new("Vanilla Cake", 11.99)	
end

before do
	@carrot_cake = Cake.new("Carrot Cake", 13.99)	
end


before do
	@pb_cookie = Cookie.new("Peanut Butter", 2.75)
end

before do
	@chocolate_mint_cookie =  Cookie.new("Thin Mint", 2.75)
end

before do
	@sandwich_cookie =  Cookie.new("Alfajor", 2.75)
end




get('/')  do
	"I'm alive!"
   erb :index, :layout =>false
end

get('/cakes')  do
	  @billboard_title ="Cakes"	
	erb :cakes
end

get('/cookies')  do
	@billboard_title  ="Cookies"	
	erb :cookies
end

get('/muffins')  do
	@billboard_title ="Muffins"	
	erb :muffins
end

get('/contact')  do
	@billboard_title ="Contact"	
	erb :contact
end

post('/flyer')  do
	@billboard_title ="Contact"

	p params

	f_name = params[:first_name]
	l_name = params[:last_name]
	e_mail = params[:e_mail]

	mg_client = Mailgun::Client.new(ENV['MAILGUN_API_KEY'])



	message_params =  {
			                from: 'alfonsoarriolajr@gmail.com',
		                    to:   "#{e_mail}",
		                    subject: 'Do You Smell What The Sweet Spot is Baking?!',

		                      html:  '<h1>  Puttin The Smack Down On Pastries  </h1>

                                  Please check out our fine goods below <br>

                                 <link rel="stylesheet" href="/" />'
		                    
		                  }


   mg_client.send_message(ENV['MAILGUN_API_DOMAIN'], message_params)
   redirect '/thank_you'
   
end

get('/thank_you')  do
	@billboard_title ="Success!"
		erb :thank_you
end




	
