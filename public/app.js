function puts_something()
{
	var x = window.localStorage['aaa'];
	x = +x+1 || 1 //if x = NaN (first call), then put 
	window.localStorage['aaa'] = x;
	alert(x);
}

function add_to_cart(id)
{
	key = 'product_'+id;
	var product = window.localStorage.getItem(key);
	product = +product+1 || 1
	window.localStorage.setItem(key, product);
	alert('Product ' + key + ' in the cart. Count: ' + product);
}

function get_count()
{
	var count = 0;
	for (var i = 0; i < localStorage.length; i++){
    count = count + window.localStorage[window.localStorage.key(i)]*1;
	}
	return count;
}