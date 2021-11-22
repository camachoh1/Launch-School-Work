# how wold you order this array of hashes based on the year of publication of each book, from the earliest to the latest?

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

# my answer: I used sort_by in order to create a criteria for order. each element of the array is represented by the block variable book. I then specified the order criteria to use the key :published of each array element. 

books.sort_by do |book|
  book[:published]
end 

# LS discusston: We can use dort_by and access a particular value in each hash by which to sort, as long as those values have a <=> method.

#In this case, all the values for :published are strings so we knoe that we can compare them. Since all the values in question are fourcharacters in length, in this case we can simply cmpare the strings without having to convert them to integers. 


