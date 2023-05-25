%dw 2.0
output application/json
---
{
test:(payload.Test),
customer: payload - 'Test'
}
 

 //in that given input i want to add a root so i can enter the test feild and remain feilds  in a root (customer)