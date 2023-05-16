%dw 2.0
output application/json
var empJob = payload.EmpJob[0]
---
/*[
{
"EmployeeUserID": empJob.EmployeeUserID,
"HRManagerUserID": empJob.EmpJobRelationship[0].HRManagerUserID,
"EmployeeDOB": empJob.EmpJobRelationship[0].PerPerson[0].EmployeeDOB
}
]*/

[payload mapObject ((value, key, index) ->
{
    ('EmployeeUserID'): value.EmployeeUserID reduce $,
    (value.EmpJobRelationship flatMap ((item, index) ->
    {
        'HRManagerUserID': item.HRManagerUserID reduce $,
        (item.PerPerson map
        {
            'EmployeeDOB': $.EmployeeDOB reduce $
            })
            })),
})] 


//expected output
/*[{

    

   "EmployeeUserID": "6661",

     "HRManagerUserID": "588",

       "EmployeeDOB": "1989-06-15"

}]*/