%dw 2.0
output application/json
---
payload mapObject {
    "Application":$
}

//change root name using mapobject

/*
{
 "Application": [
  {
   "FieldName": "Work Address- 1",
   "Security_Group": "2",
   "App_Name": "ASTRO-New",
   "Region": "APJ"
  }
 ],
 "Application": [
  {
   "FieldName": "Work Address",
   "Security_Group": "1",
   "App_Name": "Velocity",
   "Region": "AMERICAS"
  },
  {
   "FieldName": "Work Address- 1",
   "Security_Group": "2",
   "App_Name": "Velocity",
   "Region": "AMERICAS"
  }
 ],
 "Application": [
  {
   "FieldName": "Work Address",
   "Security_Group": "1",
   "App_Name": "ASTRO",
   "Region": "ASIA"
  }
 ]
}*/
