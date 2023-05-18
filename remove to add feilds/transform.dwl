%dw 2.0
output application/json
---
(payload - "requestBase") ++ {
    requestBase : payload.requestBase -- ["userName", "password"]
}

//our input is object of  object so i want to remove "username" & "password" key- values in object
//here i can  remove "requestBase" object in given input and concatinate to add the new object name as requestBase those object can add data name 


// {
//   "employeecode": "123",
//   "employeeName": "testemployee",
//   "employeePassword": "test@1234",
//   "requestBase": {
//     "name": "name"
//   }
// }