%dw 2.0
output application/json  
---
payload map ((item, index) -> ({
    reference_id: item.reference_id,
    dataint: item.dataint
  }) ++ {
    (item.data replace "{" with "" replace "}" with "" splitBy ", " map ((item, index) -> {
      ((item splitBy "=")[0]): (item splitBy "=")[1]
    }))
  })

  //I have an input payload in JSON array with nested structure
  //we need to transform string into indidual key value pairs for that i have used map , replace splitBY functions to get required output