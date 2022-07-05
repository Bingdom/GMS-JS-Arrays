///@function array_forEach(array, callbackFn)
function array_forEach(array, callbackFn){
	for(var i=0; i<array_length(array); i++) {
		callbackFn(array[i], i, array);	
	}
}