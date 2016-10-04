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
	get_count();
}

function get_orders()
{
	var order = '';
	for (var i = 0; i < localStorage.length; i++){
		if (window.localStorage.key(i).indexOf('product')==0) 
		{
    	order = order + window.localStorage.key(i) + '=' + window.localStorage[window.localStorage.key(i)]*1+',';
    	}
	}
	$('#order').val(order);
}

function get_count()
{
	var count = 0;
	for (var i = 0; i < localStorage.length; i++){
		if (window.localStorage.key(i).indexOf('product')==0) 
		{
    	count = count + window.localStorage[window.localStorage.key(i)]*1;
    	}
	}
	$('#crt_btn').text('Cart (' + count + ')');
	return count;
}

function clear_cart() 
{
	var to_clear = []
	for (var i = 0; i < localStorage.length; i++){
		if (window.localStorage.key(i).indexOf('product')==0) 
		{
    		to_clear.push(window.localStorage.key(i));
    	}
	}
	to_clear.forEach(function(item) {window.localStorage.removeItem(item)});
	get_count();
}