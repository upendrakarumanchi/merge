%dw 2.0
output application/json
---
{(payload.category.description flatMap {
   ($) : payload.category.id[$$]
}) }

//by use flatmap combine input description and id 