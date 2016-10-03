#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set  :database, 'sqlite3:pizzashop.db'

class Product < ActiveRecord::Base

end

class Order < ActiveRecord::Base

end

get '/' do
	@products = Product.all
	erb :index
end

get '/about' do
	erb :about
end

post '/cart' do
	@order = params[:orders_in_cart]
	@ord_list = @order.split(/,/).map {|val| val.split(/=/).map { |pr| pr.split(/_/)}.flatten}
	erb :cart
end

post '/confirm' do
	order = Order.new(params[:order])
	order.save
	erb "Заказ подтвержден!"
end