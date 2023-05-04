%dw 2.0
output application/xml
---
//payload mapObject ((value, key, index) -> (key):value)
person:{
    "nom" : payload.person.nom,
    "prenom" : payload.person.prenom,

"formation " :payload.person.*formation map ((item, index) -> 
{
    "id" : index + 1,
    "tilte" : item.title
})
}


//expected output

/*
<person>
<nom>hichem</nom>
<prenom></prenom>
  <formation>
   <id>1</id>
   <title>jAVA</title>
 </formationn>
<formation>

  <id>2</id>
   <title>Spring</title>
  </formationn>
<formation>
   <id>3</id>
   <title>Angular</title>
  </formationn>
</person>

*/