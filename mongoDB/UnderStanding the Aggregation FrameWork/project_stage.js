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


db.person.aggregate(
    [
        { $project: { _id: 0, 
                      name: 1,
                      email : 1, 
                      location: {  
                                    type: "point",
                                    coordinates: [ 
                                       { $convert : {input:"$location.coordinates.longitude" , to : "double" , onError: 0.0 , onNull: 0.0 }} ,
                                       { $convert : {input: "$location.coordinates.latitude" , to : "double" , onError: 0.0 , onNull: 0.0 }} 
                                       
                                    ]
                                }
                     }
                    },
        { 
            $project : { _id : 0,
                         gender : 1,
                          email : 1, 
                          location: 1,
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
//   {
//     location: { type: 'point', coordinates: [ -31.0208, -29.8113 ] },
//     email: 'victor.pedersen@example.com',
//     fullname: 'Victor Pedersen'
//   },
//   {
//     location: { type: 'point', coordinates: [ -154.6037, -29.6721 ] },
//     email: 'carl.jacobs@example.com',
//     fullname: 'Carl Jacobs'
//   },
//   {
//     location: { type: 'point', coordinates: [ -70.2264, 76.4507 ] },
//     email: 'zachary.lo@example.com',
//     fullname: 'Zachary Lo'
//   },
//   {
//     location: { type: 'point', coordinates: [ 168.9462, -22.5329 ] },
//     email: 'harvey.chambers@example.com',
//     fullname: 'Harvey Chambers'
//   },
//   {
//     location: { type: 'point', coordinates: [ -54.1364, -86.1268 ] },
//     email: 'gideon.vandrongelen@example.com',
//     fullname: 'Gideon Van drongelen'
//   },
//   {
//     location: { type: 'point', coordinates: [ 34.1689, 4.6625 ] },
//     email: 'پریا.پارسا@example.com',
//     fullname: 'پریا پارسا'
//   },
//   {
//     location: { type: 'point', coordinates: [ 111.3806, -31.6359 ] },
//     email: 'maeva.wilson@example.com',
//     fullname: 'Maeva Wilson'
//   },
//   {
//     location: { type: 'point', coordinates: [ -18.5996, -42.6128 ] },
//     email: 'elijah.lewis@example.com',
//     fullname: 'Elijah Lewis'
//   },
//   {
//     location: { type: 'point', coordinates: [ -67.5738, -52.8348 ] },
//     email: 'olav.oehme@example.com',
//     fullname: 'Olav Oehme'
//   },
//   {
//     location: { type: 'point', coordinates: [ -172.3753, 83.3998 ] },
//     email: 'madeleine.till@example.com',
//     fullname: 'Madeleine Till'
//   },
//   {
//     location: { type: 'point', coordinates: [ -8.557, -14.4912 ] },
//     email: 'shona.kemperman@example.com',
//     fullname: 'Shona Kemperman'
//   },
//   {
//     location: { type: 'point', coordinates: [ 148.0944, 35.5726 ] },
//     email: 'louise.graham@example.com',
//     fullname: 'Louise Graham'
//   },
//   {
//     location: { type: 'point', coordinates: [ 101.5995, 78.8545 ] },
//     email: 'isolino.viana@example.com',
//     fullname: 'Isolino Viana'
//   },
//   {
//     location: { type: 'point', coordinates: [ 43.9085, 25.1614 ] },
//     email: 'mestan.kaplangı@example.com',
//     fullname: 'Mestan Kaplangı'
//   },
//   {
//     location: { type: 'point', coordinates: [ 135.9359, 71.9851 ] },
//     email: 'katie.welch@example.com',
//     fullname: 'Katie Welch'
//   },
//   {
//     location: { type: 'point', coordinates: [ -83.3326, -88.6846 ] },
//     email: 'sandra.lorenzo@example.com',
//     fullname: 'Sandra Lorenzo'
//   },
//   {
//     location: { type: 'point', coordinates: [ -90.9499, 21.3388 ] },
//     email: 'بنیامین.سالاری@example.com',
//     fullname: 'بنیامین سالاری'
//   },
//   {
//     location: { type: 'point', coordinates: [ 59.5703, -67.6434 ] },
//     email: 'andreia.arnaud@example.com',
//     fullname: 'Andreia Arnaud'
//   },
//   {
//     location: { type: 'point', coordinates: [ 174.2405, 3.6559 ] },
//     email: 'anaëlle.adam@example.com',
//     fullname: 'Anaëlle Adam'
//   },
//   {
//     location: { type: 'point', coordinates: [ 78.0207, -84.1572 ] },
//     email: 'anne.ruiz@example.com',
//     fullname: 'Anne Ruiz'
//   }
// ]


// Transforming the birthday

db.person.aggregate(
    [
        { $project: { _id: 0, 
                      name: 1,
                      email : 1,
                      birthday : {$convert: { input : "$dob.date" , to: 'date'}},
                      age: "$dob.age",
                      location: {  
                                    type: "point",
                                    coordinates: [ 
                                       { $convert : {input:"$location.coordinates.longitude" , to : "double" , onError: 0.0 , onNull: 0.0 }} ,
                                       { $convert : {input: "$location.coordinates.latitude" , to : "double" , onError: 0.0 , onNull: 0.0 }} 
                                       
                                    ]
                                }
                     }
                    },
        { 
            $project : { _id : 0,
                         gender : 1,
                         email : 1, 
                         location: 1,
                         birthday :1,
                         age:1,
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
//   {
//     location: { type: 'point', coordinates: [ -31.0208, -29.8113 ] },
//     email: 'victor.pedersen@example.com',
//     birthday: ISODate('1959-02-19T23:56:23.000Z'),
//     age: 59,
//     fullname: 'Victor Pedersen'
//   },
//   {
//     location: { type: 'point', coordinates: [ -154.6037, -29.6721 ] },
//     email: 'carl.jacobs@example.com',
//     birthday: ISODate('1984-09-30T01:20:26.000Z'),
//     age: 33,
//     fullname: 'Carl Jacobs'
//   },
//   {
//     location: { type: 'point', coordinates: [ -70.2264, 76.4507 ] },
//     email: 'zachary.lo@example.com',
//     birthday: ISODate('1988-10-17T03:45:04.000Z'),
//     age: 29,
//     fullname: 'Zachary Lo'
//   },
//   {
//     location: { type: 'point', coordinates: [ 168.9462, -22.5329 ] },
//     email: 'harvey.chambers@example.com',
//     birthday: ISODate('1988-05-27T00:14:03.000Z'),
//     age: 30,
//     fullname: 'Harvey Chambers'
//   },
//   {
//     location: { type: 'point', coordinates: [ -54.1364, -86.1268 ] },
//     email: 'gideon.vandrongelen@example.com',
//     birthday: ISODate('1971-03-28T04:47:21.000Z'),
//     age: 47,
//     fullname: 'Gideon Van drongelen'
//   },
//   {
//     location: { type: 'point', coordinates: [ 34.1689, 4.6625 ] },
//     email: 'پریا.پارسا@example.com',
//     birthday: ISODate('1962-01-10T05:26:30.000Z'),
//     age: 56,
//     fullname: 'پریا پارسا'
//   },
//   {
//     location: { type: 'point', coordinates: [ 111.3806, -31.6359 ] },
//     email: 'maeva.wilson@example.com',
//     birthday: ISODate('1962-08-11T20:51:07.000Z'),
//     age: 56,
//     fullname: 'Maeva Wilson'
//   },
//   {
//     location: { type: 'point', coordinates: [ -18.5996, -42.6128 ] },
//     email: 'elijah.lewis@example.com',
//     birthday: ISODate('1986-03-29T06:40:18.000Z'),
//     age: 32,
//     fullname: 'Elijah Lewis'
//   },
//   {
//     location: { type: 'point', coordinates: [ -67.5738, -52.8348 ] },
//     email: 'olav.oehme@example.com',
//     birthday: ISODate('1960-11-28T23:07:18.000Z'),
//     age: 57,
//     fullname: 'Olav Oehme'
//   },
//   {
//     location: { type: 'point', coordinates: [ -172.3753, 83.3998 ] },
//     email: 'madeleine.till@example.com',
//     birthday: ISODate('1954-05-01T02:34:40.000Z'),
//     age: 64,
//     fullname: 'Madeleine Till'
//   },
//   {
//     location: { type: 'point', coordinates: [ -8.557, -14.4912 ] },
//     email: 'shona.kemperman@example.com',
//     birthday: ISODate('1948-04-23T03:40:22.000Z'),
//     age: 70,
//     fullname: 'Shona Kemperman'
//   },
//   {
//     location: { type: 'point', coordinates: [ 148.0944, 35.5726 ] },
//     email: 'louise.graham@example.com',
//     birthday: ISODate('1971-01-21T20:36:16.000Z'),
//     age: 47,
//     fullname: 'Louise Graham'
//   },
//   {
//     location: { type: 'point', coordinates: [ 101.5995, 78.8545 ] },
//     email: 'isolino.viana@example.com',
//     birthday: ISODate('1959-03-22T14:53:41.000Z'),
//     age: 59,
//     fullname: 'Isolino Viana'
//   },
//   {
//     location: { type: 'point', coordinates: [ 43.9085, 25.1614 ] },
//     email: 'mestan.kaplangı@example.com',
//     birthday: ISODate('1951-12-17T20:03:33.000Z'),
//     age: 66,
//     fullname: 'Mestan Kaplangı'
//   },
//   {
//     location: { type: 'point', coordinates: [ 135.9359, 71.9851 ] },
//     email: 'katie.welch@example.com',
//     birthday: ISODate('1990-10-14T05:02:12.000Z'),
//     age: 27,
//     fullname: 'Katie Welch'
//   },
//   {
//     location: { type: 'point', coordinates: [ -83.3326, -88.6846 ] },
//     email: 'sandra.lorenzo@example.com',
//     birthday: ISODate('1975-03-23T17:01:45.000Z'),
//     age: 43,
//     fullname: 'Sandra Lorenzo'
//   },
//   {
//     location: { type: 'point', coordinates: [ -90.9499, 21.3388 ] },
//     email: 'بنیامین.سالاری@example.com',
//     birthday: ISODate('1984-03-10T22:12:43.000Z'),
//     age: 34,
//     fullname: 'بنیامین سالاری'
//   },
//   {
//     location: { type: 'point', coordinates: [ 59.5703, -67.6434 ] },
//     email: 'andreia.arnaud@example.com',
//     birthday: ISODate('1960-01-31T05:16:10.000Z'),
//     age: 58,
//     fullname: 'Andreia Arnaud'
//   },
//   {
//     location: { type: 'point', coordinates: [ 174.2405, 3.6559 ] },
//     email: 'anaëlle.adam@example.com',
//     birthday: ISODate('1987-10-20T11:33:44.000Z'),
//     age: 30,
//     fullname: 'Anaëlle Adam'
//   },
//   {
//     location: { type: 'point', coordinates: [ 78.0207, -84.1572 ] },
//     email: 'anne.ruiz@example.com',
//     birthday: ISODate('1982-10-09T12:10:42.000Z'),
//     age: 35,
//     fullname: 'Anne Ruiz'
//   }
// ]

db.person.aggregate(
    [
        { $project: { _id: 0, 
                      name: 1,
                      email : 1,
                      birthday : {$convert: { input : "$dob.date" , to: 'date'}},
                      age: "$dob.age",
                      location: {  
                                    type: "point",
                                    coordinates: [ 
                                       { $convert : {input:"$location.coordinates.longitude" , to : "double" , onError: 0.0 , onNull: 0.0 }} ,
                                       { $convert : {input: "$location.coordinates.latitude" , to : "double" , onError: 0.0 , onNull: 0.0 }} 
                                       
                                    ]
                                }
                     }
                    },
        { 
            $project : { _id : 0,
                         gender : 1,
                         email : 1, 
                         location: 1,
                         birthday :1,
                         age:1,
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
        },
        {
            $group : { _id : 
                { birthyear :
                     {
                         $isoWeekYear: "$birthdate" 
                     } 
                    } ,
                    numPerson : { $sum: 1 } }},

                    {$sort : { numPerson : -1 } }         
    ]
).pretty()
