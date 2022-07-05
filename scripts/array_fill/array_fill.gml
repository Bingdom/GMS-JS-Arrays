///@function array_fill(array, value, [start], [last])
function array_fill(array, value, start, last){
	for(var i=(start ?? 0); i<(last ?? array_length(array)); i++) {
		array[i] = value;
	}
	return array
}