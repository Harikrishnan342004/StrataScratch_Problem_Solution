// Pusing element into newly created Array

db.friends.aggregate(
    [
       {
        $group : {
            _id : { age: "$age"} ,
                          allHobbies: {$push: "$hobbies"}
                        }
                }
       
    ]
).pretty();


// [
//   {
//     _id: 29,
//     allHobbies: [ [ 'Sports', 'Cooking' ], [ 'Cooking', 'Skiing' ] ]
//   },
//   { _id: 30, allHobbies: [ [ 'Eating', 'Data Analytics' ] ] }
// ]


//  Understanding of unwind operation 
db.friends.aggregate(
    [
        {$unwind : "$hobbies"},
       {
        $group : {
            _id : { age: "$age"} ,
                          allHobbies: {$push: "$hobbies"}
                        }
                }
       
    ]
).pretty();

// [
//   {
//     _id: { age: 29 },
//     allHobbies: [ 'Sports', 'Cooking', 'Cooking', 'Skiing' ]
//   },
//   { _id: { age: 30 }, allHobbies: [ 'Eating', 'Data Analytics' ] }
// ]


// Elemenating Duplicate values 

// $addToSet    -----------> Duplicates

db.friends.aggregate(
    [
        {$unwind : "$hobbies"},
       {
        $group : {
            _id : { age: "$age"} ,
                          allHobbies: {$addToSet: "$hobbies"}
                        }
                }
       
    ]
).pretty();



// [
//   { _id: { age: 30 }, allHobbies: [ 'Data Analytics', 'Eating' ] },
//   { _id: { age: 29 }, allHobbies: [ 'Cooking', 'Sports', 'Skiing' ] }
// ]

db.friends.aggregate(
    [
      {$project : {_id: 0 , numScore: {$size: "$examScores"}}}
       
    ]
).pretty();


// [ { numScore: 3 }, { numScore: 3 }, { numScore: 3 } ]