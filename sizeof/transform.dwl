%dw 2.0
output application/json skipNullOn = 'everywhere'
var movies = ["The Terminator", "Titanic", "Avatar"]
---
movies filter ((item, index) -> isOdd(sizeOf(item)))

// printing only the size of movies equal to odd number. by using sizeOf and isOdd functions