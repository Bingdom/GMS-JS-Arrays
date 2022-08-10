///@function array_forEach(array, callbackFn)
///@arg {Array} array The array to work with.
///@arg {Function} callbackFn A function to call on each entry in the array.
///@desc Run the callback function for each entry in the array.
function array_forEach(array, callbackFn){
	//Feather disable GM1061
	for(var i=0; i<array_length(array); i++) {
		callbackFn(array[i], i, array);	
	}
}
