%dw 2.0
output application/json
---
[org:payload reduce ($$ ++ $) pluck ((va, key, index) ->va )joinBy  ","]



//w have array of objetcs in the input arrenge the values in single oject so i use reduce, pluck and joinby functions to do that one.