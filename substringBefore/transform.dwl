%dw 2.0
output application/json
import * from dw::core::Strings
---
//here we can clear the after . values using substringBefore function
payload map  substringBefore($,".")
