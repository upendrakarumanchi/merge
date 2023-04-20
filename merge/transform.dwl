%dw 2.0
var input1 = [
  { 
    "bookId":"101",
    "title":"world war1",
    "price":"1000.00"
  },
  {
    "bookId":"202",
    "title":"wrold ar2",
    "price":"200.00"
  }
]
var input2 = [
  {
    "bookId":"101",
    "writer":"naveen y"
  },
  {
    "bookId":"202",
    "writer":"upendra"
  }
]
output application/json
---
//based on bookId we can merge the input data
input1 map (input1) ->
  {
    Id : input1.bookId as Number,
    Title:  input1.title,
    Price: input1.price as Number,
    (input2 filter ($.*bookId contains input1.bookId) map (input2) -> {
      writer : input2.writer
    })
  }
