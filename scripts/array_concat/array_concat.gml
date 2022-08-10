///@function array_concat(base, [...])
///@arg {Array<Any*>} base The base array to work from.
///@return {Array<Any*>}
///@desc Return a new array consisting of the base concatenated with other additional provided arrays.
function array_concat(base) {
	//Feather disable GM1061
	for(var i=1; i<argument_count; i++) {
		var arr = argument[i];
		for(var j=0; j<array_length(arr); j++) {
			array_push(base, arr[j])
		}
	}
	return base;
}
