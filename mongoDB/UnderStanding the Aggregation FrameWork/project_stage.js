db.persons.aggregate(
    [
        {
            $project: {_id : 0 , 
                       gender: 1 ,
                       fullName : { $concat : ["Hello" , "world"] }
                     }
        }
    ]
).pretty();

// [
//   { gender: 'male', fullName: 'Helloworld' },
//   { gender: 'male', fullName: 'Helloworld' },
//   { gender: 'male', fullName: 'Helloworld' },
//   { gender: 'male', fullName: 'Helloworld' },
//   { gender: 'male', fullName: 'Helloworld' },
//   { gender: 'female', fullName: 'Helloworld' },
//   { gender: 'female', fullName: 'Helloworld' },
//   { gender: 'male', fullName: 'Helloworld' },
//   { gender: 'female', fullName: 'Helloworld' },
//   { gender: 'female', fullName: 'Helloworld' },
//   { gender: 'female', fullName: 'Helloworld' },
//   { gender: 'female', fullName: 'Helloworld' },
//   { gender: 'male', fullName: 'Helloworld' },
//   { gender: 'female', fullName: 'Helloworld' },
//   { gender: 'female', fullName: 'Helloworld' },
//   { gender: 'female', fullName: 'Helloworld' },
//   { gender: 'male', fullName: 'Helloworld' },
//   { gender: 'female', fullName: 'Helloworld' },
//   { gender: 'female', fullName: 'Helloworld' },
//   { gender: 'female', fullName: 'Helloworld' }
// ]
// Type "it" for more

db.person.aggregate(
    [
        { 
            $project : { _id : 0,
                         gender : 1,
                         fullname : { 
                                     $concat : [ "$name.first" , " "  , "$name.last" ]
                                    }
                        } 
        }
    ]
).pretty()

// [
//   { gender: 'male', fullname: 'victor pedersen' },
//   { gender: 'male', fullname: 'carl jacobs' },
//   { gender: 'male', fullname: 'zachary lo' },
//   { gender: 'male', fullname: 'harvey chambers' },
//   { gender: 'male', fullname: 'gideon van drongelen' },
//   { gender: 'female', fullname: 'پریا پارسا' },
//   { gender: 'female', fullname: 'maeva wilson' },
//   { gender: 'male', fullname: 'elijah lewis' },
//   { gender: 'female', fullname: 'olav oehme' },
//   { gender: 'female', fullname: 'madeleine till' },
//   { gender: 'female', fullname: 'shona kemperman' },
//   { gender: 'female', fullname: 'louise graham' },
//   { gender: 'male', fullname: 'isolino viana' },
//   { gender: 'female', fullname: 'mestan kaplangı' },
//   { gender: 'female', fullname: 'katie welch' },
//   { gender: 'female', fullname: 'sandra lorenzo' },
//   { gender: 'male', fullname: 'بنیامین سالاری' },
//   { gender: 'female', fullname: 'andreia arnaud' },
//   { gender: 'female', fullname: 'anaëlle adam' },
//   { gender: 'female', fullname: 'anne ruiz' }
// ]


db.person.aggregate(
    [
        { 
            $project : { _id : 0,
                         gender : 1,
                         fullname : { 
                                     $concat : [  { $toUpper : "$name.first" },
                                                   " " ,
                                                   { $toUpper : "$name.last"  }
                                               ]
                                    }
                        } 
        }
    ]
).pretty()

// [
//   { gender: 'male', fullname: 'VICTOR PEDERSEN' },
//   { gender: 'male', fullname: 'CARL JACOBS' },
//   { gender: 'male', fullname: 'ZACHARY LO' },
//   { gender: 'male', fullname: 'HARVEY CHAMBERS' },
//   { gender: 'male', fullname: 'GIDEON VAN DRONGELEN' },
//   { gender: 'female', fullname: 'پریا پارسا' },
//   { gender: 'female', fullname: 'MAEVA WILSON' },
//   { gender: 'male', fullname: 'ELIJAH LEWIS' },
//   { gender: 'female', fullname: 'OLAV OEHME' },
//   { gender: 'female', fullname: 'MADELEINE TILL' },
//   { gender: 'female', fullname: 'SHONA KEMPERMAN' },
//   { gender: 'female', fullname: 'LOUISE GRAHAM' },
//   { gender: 'male', fullname: 'ISOLINO VIANA' },
//   { gender: 'female', fullname: 'MESTAN KAPLANGı' },
//   { gender: 'female', fullname: 'KATIE WELCH' },
//   { gender: 'female', fullname: 'SANDRA LORENZO' },
//   { gender: 'male', fullname: 'بنیامین سالاری' },
//   { gender: 'female', fullname: 'ANDREIA ARNAUD' },
//   { gender: 'female', fullname: 'ANAëLLE ADAM' },
//   { gender: 'female', fullname: 'ANNE RUIZ' }
// ]

db.person.aggregate(
    [
        { 
            $project : { _id : 0,
                         gender : 1,
                         fullname : { 
                                     $concat : [  {$toUpper : {$substrCP : ["$name.first" , 0 ,1 ] }},
                                                  {
                                                    $substrCP : [ "$name.first",
                                                                   1,
                                                                   {$subtract : [ {$strLenCP : "$name.first" } , 1]} 
                                                     ] 
                                                  },
                                                   " ",

                                                 {$toUpper : {$substrCP : ["$name.last" , 0 ,1 ] }},
                                                  {
                                                    $substrCP : [ "$name.last",
                                                                   1,
                                                                   {$subtract : [ {$strLenCP : "$name.last" } , 1]} 
                                                     ] 
                                                  },
                                               ]
                                    }
                        } 
        }
    ]
).pretty()

// [
//   { gender: 'male', fullname: 'Victor Pedersen' },
//   { gender: 'male', fullname: 'Carl Jacobs' },
//   { gender: 'male', fullname: 'Zachary Lo' },
//   { gender: 'male', fullname: 'Harvey Chambers' },
//   { gender: 'male', fullname: 'Gideon Van drongelen' },
//   { gender: 'female', fullname: 'پریا پارسا' },
//   { gender: 'female', fullname: 'Maeva Wilson' },
//   { gender: 'male', fullname: 'Elijah Lewis' },
//   { gender: 'female', fullname: 'Olav Oehme' },
//   { gender: 'female', fullname: 'Madeleine Till' },
//   { gender: 'female', fullname: 'Shona Kemperman' },
//   { gender: 'female', fullname: 'Louise Graham' },
//   { gender: 'male', fullname: 'Isolino Viana' },
//   { gender: 'female', fullname: 'Mestan Kaplangı' },
//   { gender: 'female', fullname: 'Katie Welch' },
//   { gender: 'female', fullname: 'Sandra Lorenzo' },
//   { gender: 'male', fullname: 'بنیامین سالاری' },
//   { gender: 'female', fullname: 'Andreia Arnaud' },
//   { gender: 'female', fullname: 'Anaëlle Adam' },
//   { gender: 'female', fullname: 'Anne Ruiz' }
// ]