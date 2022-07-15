///@function array_splice(array, start, deleteCount, [...item])
function array_splice(array, start, deleteCount = undefined){
	// Returns the deleted elements
	var size = array_length(array);
	
	var _start = start;
	if (_start < 0) {
		_start--;	
	}
	_start = ((start % size) + size) % size;
	
	var _deleteCount = deleteCount ?? array_length(array);
	_deleteCount = min(_deleteCount, array_length(array)-_start);

	// Unfortunately array_delete doesn't return the deleted items. Have to make it up
	array_delete(array, _start, _deleteCount);
	
	// Make up deleted items
	var deleted_items = [];
	for(var j=_start;j<_start+_deleteCount; j++) {
		array_push(deleted_items, array[j])
	}
	
	// Now insert specified items to the array
	for(var i=3;i<argument_count; i++) {
		array_insert(array, _start+(i-3), argument[i]);
	}
	
	return deleted_items;
}