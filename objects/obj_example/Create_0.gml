show_debug_message("##############################");
concat_array1 = [[1, 2], 3, [4,[5,6,7]]];
concat_array2 = [[8, 9], 10];
show_debug_message("Array concat: arr 1-" + string(concat_array1) + ", arr 2-" + string(concat_array2));
show_debug_message(array_concat(concat_array1, concat_array2));

show_debug_message("##############################");
every_array = [3, 5, 7, 1];
show_debug_message("Array every: " + string(every_array));
show_debug_message(string(array_every(every_array, function(element) {return element >= 1})) + ": >= 1")
show_debug_message(string(array_every(every_array, function(element) {return element >= 2})) + ": >= 2")

show_debug_message("##############################");
show_debug_message("Array fill: " + string([1, 3, 4]));
show_debug_message(array_fill([1, 3, 4], 2));
show_debug_message(array_fill([1, 3, 4], 2, 1));
show_debug_message(array_fill([1, 3, 4], 2, 1, 2));

show_debug_message("##############################");
filter_array = [2, 5, 6, 1];
show_debug_message("Array filter: " + string(filter_array));
show_debug_message(string(array_filter(filter_array, function(element) {return element % 2 == 0})) + ": is even");

show_debug_message("##############################");
find_array = [2, 5, 6, 1];
show_debug_message("Array find: " + string(find_array));
show_debug_message(string(array_find(find_array, function(element) {return element > 3})) + ": > 3");
show_debug_message(string(array_find(find_array, function(element) {return element < 0})) + ": < 0");

show_debug_message("##############################");
findIndex_array = [2, 5, 6, 1];
show_debug_message("Array findIndex: " + string(findIndex_array));
show_debug_message(string(array_findIndex(findIndex_array, function(element) {return element > 3})) + ": > 5");
show_debug_message(string(array_findIndex(findIndex_array, function(element) {return element < 0})) + ": < 0");

show_debug_message("##############################");
flat_array = [[1, 2], 3, [4,[5,6,7]]];
show_debug_message("Array flat: " + string(flat_array));
show_debug_message(string(array_flat(flat_array)) + ": depth=1");
show_debug_message(string(array_flat(flat_array, 2)) + ": depth=2");

show_debug_message("##############################");
forEach_array = [2, 5, 6, 1];
show_debug_message("Array forEach: " + string(forEach_array));
show_debug_message(string(array_forEach(forEach_array, function(element) {return show_debug_message(element)})) + ": print(element)");

show_debug_message("##############################");
from_array = [2, 5, 6, 1];
show_debug_message("Array from: " + string(from_array));
show_debug_message(string(array_from(from_array)));

show_debug_message("##############################");
join_array = [1, 2, 3, [4, [5, 6], 7]];
show_debug_message("Array join: " + string(join_array));
show_debug_message(string(array_join(join_array)));

show_debug_message("##############################");
map_array = [4, 6, 9, 11];
show_debug_message("Array map: " + string(map_array));
show_debug_message(string(array_map(map_array, function(element) {return element + 1})) + ": + 1");

show_debug_message("##############################");
reduce_array = [1, 3, 4];
show_debug_message("Array reduce: " + string(reduce_array));
show_debug_message(array_reduce(reduce_array, function(previousVal, currentVal, index) {
	return previousVal + currentVal;
}));
show_debug_message(string(array_reduce(reduce_array, function(previousVal, currentVal, index) {
	return previousVal + currentVal;
}, 5)) + ": initialVal=5");

show_debug_message("##############################");
some_array = [4, 6, 9, 11];
show_debug_message("Array some: " + string(some_array));
show_debug_message(string(array_some(some_array, function(element) {return element > 10})) + ": > 10");
show_debug_message(string(array_some(some_array, function(element) {return element > 12})) + ": > 12");