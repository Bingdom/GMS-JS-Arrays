<h1 align="center">GMS JS Arrays v1.1.0</h1>
<h3 align="center"><a href="https://twitter.com/BingdomOriginal">@BingdomOriginal</a></h3>

---

**JS Arrays** is a small library that aims to extend native array functions to provide identical functionality to JS arrays.

Some useful examples

#### array_map()
```js
// Creates a new array which contains just the names of items
var items = [{
  name: "Sword",
  type: TYPE.melee
}, {
  name: "Bow",
  type: TYPE.ranged
}]
var item_names = array_map(items, function(item) {return item.name})
// returns a new array ["Sword", "Bow"]
```
#### array_filter()
```js
// Creates a new array with the filtered items
inventory = [{id: 4, amt: 32}, {id: 5, amt: 12}]

potion_items = array_filter(inventory, function(slot) {
  // item_get() is a global function used to retrieve items details from a slot
  return (item_get(slot).type == TYPE.potion)
})
// returns a new array with items related to a potion
```
#### array_some()
```js
// If at least 1 element satisfies the predicate, return true. Otherwise false.
has_ring = array_some(equipped, function(slot) {
  return (item_get(slot).type == TYPE.ring)
})
// returns true if they have a ring equipped. False otherwise.
```

To understand more about each function's details in this library, please refer to various online sources about JavaScript arrays <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/splice">here</a> and <a href="https://www.w3schools.com/jsref/jsref_obj_array.asp">here</a>.

Please refer to the <a href="https://github.com/Bingdom/GMS-JS-Arrays/releases">Releases page</a> to download the local package / .yyz file.

## Limitations
Game maker doesn't support closures. So doing something like
```js
var some_var = TYPE.potion;
filtered_items = array_filter(inventory, function(slot) {
  return (item_get(slot).type == someVar) // error: "some_var" not set before reading it
})
```
Will not work. Read <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Closures">this</a> for more details on what a closure is, and how it works.
