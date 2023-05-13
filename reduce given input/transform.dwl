%dw 2.0
output application/json skipNullOn = 'everywhere'
---

  
{
Id1: payload.resultSet1.Id reduce $,
Name: payload.resultSet1.Name reduce $,
Address: payload.resultSet2.Address reduce $,
phone: payload.resultSet3.Phone reduce $
}

//payload.resultSet1 ++ (payload.resultSet2.Address ++ payload.resultSet3.Phone) 

//reduce the given input based on output
/*
[
  {
    "Id1": 123,
    "Name": "Me",
    "Address": "some",
    "Phone": 1234
  }
]*/