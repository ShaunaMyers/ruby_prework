## Day 2 Questions

1. Create an array containing the following strings: `"zebra", "giraffe", "elephant"`.

   `["zebra", "giraffe", "elephant"]`

1. Save the array you created above to a variable `animals`.

   `animals = ["zebra", "giraffe", "elephant"]`

1. Using the array `animals`, how would you access `"giraffe"`?
   I would access `"giraffe"` by using square brackets to access the element at index 1:

   `animals[1]`

1. How would you add `"lion"` to the `animals` array?

   using the push method, I would push `"lion"` onto the end of the animals array:

   `animals.push("lion")`

1. Name and describe two additional array methods:

   `slice`- this array method allows you to take just a slice (or copy basically) of an array and you can specify what index you want to start from and how many elements you would like to slice. You can also specify a range:

   `animals.slice(1..3)`

1. What are the boolean values in Ruby?

   booleans are `true` or `false`

1. In Ruby, how would you evaluate if `2` is equal to `25`? What is the result of this evaluation?

   `2 == 25`
   The result would evaluate to false

1. In Ruby, how would you evaluate if `25` is greater than `2`? What is the result of this evaluation?

   `25 > 2`
   The result woulde evaluate to true
