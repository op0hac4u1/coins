#encoding:  UTF-8

require 'sinatra'
require 'sinatra/reloader'

require './block'

b =  Blockchain.new

get '/' do


	message = " "
	b.all_chains.each do |a|
		message << "번호는: " + a["index"].to_s + "<br>"
		message << "nonce는: " + a["nonce"].to_s + "<br>"
		message << "시간은: " + a["time"].to_s + "<br>"
		message << "앞주소는: " + a["previous_address"].to_s + "<br>"
		message << "내 주소: " + Digest::SHA256.hexdigest(a.to_s) + "<br>"
		message << "거래정보: " + a["transactions"].to_s
		message << "<hr>"
	end

	message


end


get '/mine' do
	b.mining.to_s
end


get '/trans' do
	b.make_a_trans(params["sender"], params["recv"], params["amount"])
end

get '/make_wallet' do
	b.make_a_wallet.to_s
end