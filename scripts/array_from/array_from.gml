///@function array_from(array)
function array_from(array){
	array_cpy = array_create(array_length(array));
	array_copy(array_cpy, 0, array, 0, array_length(array))
	return array_cpy;
}