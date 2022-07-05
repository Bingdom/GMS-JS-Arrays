///@function array_concat(arr1, arr2, arr...)
function array_concat() {
	var base = array_from(argument[0]);
	for(var i=1; i<argument_count; i++) {
		var arr = argument[i];
		for(var j=0; j<array_length(arr); j++) {
			array_push(base, arr[j])	
		}
	}
	return base;
}