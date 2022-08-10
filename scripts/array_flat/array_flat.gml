///@function array_flat(array, [depth])
///@arg {Array<Any>} array The array to work with.
///@arg {real} depth (Optional) The maximum recursion depth (default = 1).
///@return {Array<Any>}
///@desc Return a new array with all subarray elements concatenated, up to the specified depth.
function array_flat(array, depth = 1){
	//Feather disable GM1061
	var array_cpy = [];
	for(var i=0; i<array_length(array); i++) {
		var element = array[i];
		if (is_array(element) and depth > 0) {
			 array_cpy = array_concat(array_cpy, array_flat(element, depth - 1));
		} else {
			array_push(array_cpy, element);	
		}
	}
	return array_cpy;
}
