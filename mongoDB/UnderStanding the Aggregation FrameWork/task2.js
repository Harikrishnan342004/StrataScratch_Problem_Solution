// find the count of male and female above 50 years old ,
// and avg group by avg , sort the ans in desc (highest)

db.person.aggregate(
    [
    {
        $match : {"dob.age" : {$gt:50 } }
    },
    {
        $group : { 
             _id : { gender : "$gender"} , 
             "numPerson" : {$sum : 1 } , 
             "avgAge" : { $avg: "$dob.age"}
            }
    },
    {
        $sort : { numPerson : -1  }
    }
]
)