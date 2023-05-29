%dw 2.0
output text/plain
---
(payload map ($ pluck ((value, key, index) ->value  default '' )joinBy "" ))joinBy "\n"


// here we can join values of the input data  map the payload keys and use pluck to join  the values in the given input us ejoinBy functions 