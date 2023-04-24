%dw 2.0
output application/json
---

payload -- (payload filterObject ( ($$ as String startsWith  "pc") or ($$ as String startsWith  "tc")))
