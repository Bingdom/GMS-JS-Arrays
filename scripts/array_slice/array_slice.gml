///@function array_slice(array, [start], [last])
///@arg {Array<Any*>} array The array to work with.
///@arg {real} start (Optional) The position to start from. If unspecified, start from the beginning of the array.
///@arg {real} last (Optional) The position to stop at. If unspecified, stop at the end of the array.
///@return {Array<Any*>}
///@desc Return a shallow copy of a portion of the array into a new array, selected from start to end (end is NOT included).
function array_slice(array, start=0, last=undefined) {
	//Feather disable GM1035
	//Feather disable GM1045
	var size = array_length(array) + 1;
	var _start;
	
	if (start > size) {
		return [];
	} else {
		_start = (((start % (size-1)) + (size-1)) % (size-1));
	}
	
	var _last = last ?? array_length(array);
	// Cap last to be the end of the array
	_last = min(_last, array_length(array));
	if (_last < 0) { // Just to get the behaviour similar to JS. Otherwise -1 is just equivalent to omitting it
		_last--;	
	}
	_last = (((_last % size) + size) % size);
	
	//show_debug_message("From: " + string(_start) + ", To: " + string(_last) + " (exclusive)");
	
	// Create a copy, and copy elements to that array
	var arr_cpy = array_create(_last-_start);
	array_copy(arr_cpy, 0, array, _start, _last-_start);
	return arr_cpy;
}
