#encoding:  UTF-8

require 'sinatra'
require 'sinatra/reloader'
require './block'

aaaaa = Dog.new

get '/dog' do
	"<h1>dog</h1>"
end

get '/eat' do
	"<h1>dog</h1>"
end

get '/mining' do
	"<h1>회원가입 페이지 입니다.</h1>"
end

get '/make_a_trasacrion' do
	"로그아웃 하셨습니다."
end