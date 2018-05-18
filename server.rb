require "sinatra"

get('/')  do
	"I'm alive!"
	erb :index
end


get('/cakes')  do
	"I'm cakes!"
	
end


get('/cookies')  do
	"I'm cookies!"
	
end


get('/muffins')  do
	"I'm muffins!"
	
end


	
