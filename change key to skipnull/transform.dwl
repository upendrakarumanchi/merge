%dw 2.0
output application/json skipNullOn="everywhere"
---
payload.sample_payload map{
 "sample": $.sample map {
     "tag_type": $.tag_type,
      "code": $.code,
      "name": $.description,
      "option_code": $.option_code
     
     
 }
} 

//here i can cahnge key name only by using map function to skip null values use skipNullOn="everywhere"




// "sample_payload": [
//     {
//      "sample": [
//       {
//        "tag-type": "sample1",
//        "code": "code",
//        "name": "Test data",
//        "option-code": "TYPE"
//       },
//       {
//        "tag-type": "sample2",
//        "code": "Gang",
//        "name": "Test data1",
//       "option-code": "TYPE"
//       }
//      ]
//     },
//     {
//      "sample": [
//       {
//        "tag-type": "sample",
//        "code": "code",
//        "name": "Dear "
//       }
//      ]
//     }
//    ]