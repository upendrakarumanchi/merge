%dw 2.0
output application/csv
---
payload map ($ ++ {"name": "H"})

//here  i can take the input as csv formate in that add feild is name so i can use map function toadd what i want 

