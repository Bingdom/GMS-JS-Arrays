///@function array_splice(array, start, deleteCount, [...items])
///@arg {Array<Any*>} array The array to work with.
///@arg {real} start The position to add/remove items.
///@arg {real} deleteCount (Optional) The number of entries to remove. If unspecified, remove the rest of the array.
///@arg {Any*} items (Optional) Any number of values to insert from the start position.
///@return {Array<Any*>}
///@desc Change the array by removing existing elements and/or adding new elements in place.
function array_splice(array, start, deleteCount=undefined){
	//Feather disable GM1061
	// Returns the deleted elements
	var size = array_length(array);
	
	var _start = start;
	if (_start < 0) {
		_start--;	
	}
	_start = ((start % size) + size) % size;
	
	var _deleteCount = deleteCount ?? array_length(array);
	_deleteCount = min(_deleteCount, array_length(array)-_start);
	
	// Make up deleted items
	var deleted_items = [];
	for(var j=_start;j<_start+_deleteCount; j++) {
		array_push(deleted_items, array[j])
	}
	
	// Unfortunately array_delete doesn't return the deleted items. Have to make it up
	array_delete(array, _start, _deleteCount);
	
	// Now insert specified items to the array
	for(var i=3;i<argument_count; i++) {
		array_insert(array, _start+(i-3), argument[i]);
	}
	
	return deleted_items;
}