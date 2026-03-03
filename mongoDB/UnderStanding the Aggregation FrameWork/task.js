// count the female persons based on state in mongoDB schema

db.person.aggregate([
    {$match : {gender:"female"}},
    {
        $group : { _id : { state: "$location.state"} , totalPersons: { $sum: 1} }
    },
    {
        $sort : {totalPersons : -1}
    }
]).pretty();

