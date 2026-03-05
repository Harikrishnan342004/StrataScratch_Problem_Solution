db.createCollection("capped" , {capped : true , size: 10000 , max: 3 })

db.capped.insertOne( {name : "Hari"} )

{
  acknowledged: true,
  insertedId: ObjectId('69a899ffa51ffb3cd47c2907')
}

db.capped.insertOne( {name : "Hari1"} )

{
  acknowledged: true,
  insertedId: ObjectId('69a89a08a51ffb3cd47c2908')
}

db.capped.insertOne( {name : "Hari2"} )

{
  acknowledged: true,
  insertedId: ObjectId('69a89a0ea51ffb3cd47c2909')
}

db.capped.find()

[
  { _id: ObjectId('69a899ffa51ffb3cd47c2907'), name: 'Hari' },
  { _id: ObjectId('69a89a08a51ffb3cd47c2908'), name: 'Hari1' },
  { _id: ObjectId('69a89a0ea51ffb3cd47c2909'), name: 'Hari2' }
]