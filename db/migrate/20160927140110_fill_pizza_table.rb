class FillPizzaTable < ActiveRecord::Migration
  def change
  	Product.create({ 
  		title: 			'Hawaiian', 
  		description: 	'Вкусная пицца заебок',
  		price: 			315,
  		size: 			30,
  		is_spicy:  		false,
  		is_veg: 		false, 
  		is_best_offer:  false, 
  		path_to_image: 	'.\images\hawaiian.jpg'})

	Product.create({ 
  		title: 			'Pepperoni', 
  		description: 	'Вкусная пицца острая сука',
  		price: 			350,
  		size: 			30,
  		is_spicy:  		true,
  		is_veg: 		false, 
  		is_best_offer:  false, 
  		path_to_image: 	'.\images\pepperoni.jpg'})

  	Product.create({ 
  		title: 			'Margarita', 
  		description: 	'Невкусная пицца для лохов',
  		price: 			300,
  		size: 			30,
  		is_spicy:  		false,
  		is_veg: 		true, 
  		is_best_offer:  false, 
  		path_to_image: 	'.\images\margarita.jpg'})

  	Product.create({ 
  		title: 			'Margarita', 
  		description: 	'Большая невкусная пицца для лохов',
  		price: 			400,
  		size: 			50,
  		is_spicy:  		false,
  		is_veg: 		true, 
  		is_best_offer:  true, 
  		path_to_image: 	'.\images\margarita.jpg'})
  end
end
