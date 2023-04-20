%dw 2.0
output application/json
---
payload map {
    firstName: $.firstName,
    lastName: $.lastName,
    dateOfBirth: $.dateOfBirth,
    sample : $.sample replace /^[0-9]{3}-[0-9]{2}/ with "***-**"
}
