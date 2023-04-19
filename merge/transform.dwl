%dw 2.0
var firstInput = [
  { 
    "bookId":"101",
    "title":"world history",
    "price":"19.99"
  },
  {
    "bookId":"202",
    "title":"the great outdoors",
    "price":"15.99"
  }
]
var secondInput = [
  {
    "bookId":"101",
    "author":"john doe"
  },
  {
    "bookId":"202",
    "author":"jane doe"
  }
]
output application/json
---
firstInput map (firstInputValue) ->
  {
    Id : firstInputValue.bookId as Number,
    Title: firstInputValue.title,
    Price: firstInputValue.price as Number,
    (secondInput filter ($.*bookId contains firstInputValue.bookId) map (secondInputValue) -> {
      Author : secondInputValue.author
    })
  }