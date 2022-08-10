///@function array_join(array, [separator])
///@arg {Array} array The array to work with.
///@arg {string} separator (Optional) The separator to put between entries (default: ",")
///@return {string}
///@desc Return a string concatenating all elements in an array, separated by the separator.
function array_join(array, separator=",") {
	var str;
	if (is_array(array[0])) {
		str = array_join(array[0]);
	} else {
		str = string(array[0]);
	}
	
	for(var i=1; i<array_length(array); i++) {
		var element = array[i];
		if (is_array(element)) {
			str += separator + array_join(element, separator);
		} else {
			str += separator + string(element);
		}
	}
	return str;
}
