function puts_something()
{
	var x = window.localStorage['aaa'];
	x = +x+1 || 1 //if x = NaN (first call), then put 
	window.localStorage['aaa'] = x;
	alert(x);
}

function add_to_cart(id)
{
	alert('Added ' + id + ' to cart!');
}