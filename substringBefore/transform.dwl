%dw 2.0
output application/json
import * from dw::core::Strings
---
payload map  substringBefore($,".")