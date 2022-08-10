///@function array_from(array)
///@arg {Array<Any*>} array The array to work with.
///@return {Array<Any*>}
///@desc Return a shallow copy of the given array.
function array_from(array){
	var array_cpy = array_create(array_length(array));
	array_copy(array_cpy, 0, array, 0, array_length(array))
	return array_cpy;
}
