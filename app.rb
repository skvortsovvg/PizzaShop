#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set  :database, 'sqlite3:pizzashop.db'

class Product < ActiveRecord::Base

end

class Order < ActiveRecord::Base
	validates :name, presence: true
	validates :phone, presence: true
	validates :adress, presence: true
	validates :content, presence: true
end

get '/' do
	@products = Product.all
	erb :index
end

get '/about' do
	erb :about
end

get '/confirm' do
	redirect to '/'
end

get '/orders_list' do
	@orders = Order.all.order('created_at DESC')
	erb :orders_list
end
	
post '/cart' do
	@order = params[:order][:content]
	erb :cart
end

post '/confirm' do
	order = Order.new(params[:order])
	if order.save then
		erb :order_confirmed
	else
		@error = order.errors.full_messages.first
		@order = params[:order][:content]
		erb :cart
	end
end