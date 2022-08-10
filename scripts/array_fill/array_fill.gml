///@function array_fill(array, value, [start], [last])
///@arg {Array<Any*>} array The array to work with.
///@arg {Any*} value The value to fill the array with.
///@arg {real} [start] (Optional) The position in the array to start filling from. If unspecified, fill from the start of the array.
///@arg {real} [last] (Optional) The position in the array to stop filling at. If unspecified, fill until the end of the array.
///@return {Array<Any*>}
///@desc Fill the array with a value from the start to the last position.
function array_fill(array, value, start, last){
	//Feather disable GM1061
	for(var i=(start ?? 0); i<(last ?? array_length(array)); i++) {
		array[i] = value;
	}
	return array;
}
