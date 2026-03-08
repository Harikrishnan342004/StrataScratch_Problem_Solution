db.persondetails.insertMany(
    [
    {name: "Hari",
       roll : "cs" , 
       intrestBook : {  book_id : ["101" , "102" ]  }
    },
    {name: "surya",
       roll : "ec" , 
       intrestBook : {  book_id : ["102" , "103" ]  }
    },

    ]
);

// {
//   acknowledged: true,
//   insertedIds: {
//     '0': ObjectId('69ac878a00409df74c7c2907'),
//     '1': ObjectId('69ac878a00409df74c7c2908')
//   }
// }
// lookup> db.persondetails.find().pretty()
// [
//   {
//     _id: ObjectId('69ac878a00409df74c7c2907'),
//     name: 'Hari',
//     roll: 'cs',
//     intrestBook: { book_id: [ '101', '102' ] }
//   },
//   {
//     _id: ObjectId('69ac878a00409df74c7c2908'),
//     name: 'surya',
//     roll: 'ec',
//     intrestBook: { book_id: [ '102', '103' ] }
//   }
// ]


db.book.insertMany(
    [
        {book_id: "101" , title: "pirates"},
        {book_id: "102" , title: "Avengers"},
        {book_id: "103" , title: "Naruto"},

    ]
)

// {
//   acknowledged: true,
//   insertedIds: {
//     '0': ObjectId('69ac881d00409df74c7c2909'),
//     '1': ObjectId('69ac881d00409df74c7c290a'),
//     '2': ObjectId('69ac881d00409df74c7c290b')
//   }
// }

// [
//   {
//     _id: ObjectId('69ac881d00409df74c7c2909'),
//     book_id: '101',
//     title: 'pirates'
//   },
//   {
//     _id: ObjectId('69ac881d00409df74c7c290a'),
//     book_id: '102',
//     title: 'Avengers'
//   },
//   {
//     _id: ObjectId('69ac881d00409df74c7c290b'),
//     book_id: '103',
//     title: 'Naruto'
//   }
// ]


db.persondetails.aggregate(
    [{
       $lookup: 
       {
         from : "book",
         localField: "_id",
         foreignField: "book_id",
         as: "full_details_books"
       }
    }
    ]
)


[
  {
    _id: ObjectId('69ac878a00409df74c7c2907'),
    name: 'Hari',
    roll: 'cs',
    intrestBook: { book_id: [ '101', '102' ] },
    full_details_books: [
      {
        _id: ObjectId('69ac881d00409df74c7c2909'),
        book_id: '101',
        title: 'pirates'
      },
      {
        _id: ObjectId('69ac881d00409df74c7c290a'),
        book_id: '102',
        title: 'Avengers'
      }
    ]
  },
  {
    _id: ObjectId('69ac878a00409df74c7c2908'),
    name: 'surya',
    roll: 'ec',
    intrestBook: { book_id: [ '102', '103' ] },
    full_details_books: [
      {
        _id: ObjectId('69ac881d00409df74c7c290a'),
        book_id: '102',
        title: 'Avengers'
      },
      {
        _id: ObjectId('69ac881d00409df74c7c290b'),
        book_id: '103',
        title: 'Naruto'
      }
    ]
  }
]