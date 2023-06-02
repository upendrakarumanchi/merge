%dw 2.0
output application/json  
---
payload  update {
    case .values -> $ map values: [$]
}

// adding single key with as muliple values and printing those in array