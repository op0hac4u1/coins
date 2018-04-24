#encoding:  UTF-8

require 'sinatra'
require './block'
require 'sinatra/reloader'

get '/dog' do
	"<h1>dog</h1>"
end

get '/eat' do
	"<h1>dog</h1>"
end

class Dog

 def initialize
 	@weight = 0.5
 	@age = 1
 end

 def my_weight
 	puts "햔제몸무게 : " + @weight.to_s
 end

 def eat
 	@weight = @weight + 0.5
 	puts "먹는다"
 end

 def run 
 	puts "뛴다."
 end

 def walk
 	puts "걷는다."
 end

end


aaaaa = Dog.new
bbbbb = Dog.new
aaaaa.run
aaaaa.my_weight
aaaaa.eat
aaaaa.my_weight

# 강아지
# 먹는다
# 뛴다
# 걷는다 