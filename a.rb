library = [
  {
    title: "The Great Gatsby",
    author: {
      name: "F. Scott Fitzgerald",
      birth_year: 1896,
      nationality: "American"
    },
    publication: {
      year: 1925,
      publisher: "Charles Scribner's Sons"
    },
    genres: ["Fiction", "Classic"],
    reviews: [
      { reviewer: "Alice", rating: 5, comment: "A masterpiece of 20th century literature." },
      { reviewer: "Bob", rating: 4, comment: "A great read, though a bit melancholic." }
    ]
  },
  {
    title: "1984",
    author: {
      name: "George Orwell",
      birth_year: 1903,
      nationality: "British"
    },
    publication: {
      year: 1949,
      publisher: "Secker & Warburg"
    },
    genres: ["Dystopian", "Political Fiction"],
    reviews: [
      { reviewer: "Charlie", rating: 5, comment: "A chilling depiction of a dystopian future." },
      { reviewer: "Diana", rating: 4, comment: "Thought-provoking and relevant." }
    ]
  },
  {
    title: "To Kill a Mockingbird",
    author: {
      name: "Harper Lee",
      birth_year: 1926,
      nationality: "American"
    },
    publication: {
      year: 1960,
      publisher: "J.B. Lippincott & Co."
    },
    genres: ["Fiction", "Historical"],
    reviews: [
      { reviewer: "Edward", rating: 5, comment: "A powerful story about justice and morality." },
      { reviewer: "Fiona", rating: 4, comment: "A compelling narrative with strong characters." }
    ]
  }
]

# 1. Find the highest-rated book
max_rating = library.flat_map { |x|x[:reviews].map { |x| x[:rating] } }.max
highest_rated_books = library.select do |book|
  book[:reviews].any? { |x| x[:rating] == max_rating }
end
titles = highest_rated_books.map { |x| x[:title] }
puts "Rating: #{max_rating}","Titles: #{titles.join(', ')}"


# 2. Find the average rating for the book
average_ratings = library.each_with_object({}) do |book, hash|
  ratings = book[:reviews].map { |review| review[:rating] }
total = ratings.sum.to_f / ratings.size
hash[book[:title]] = total
end
puts average_ratings

# 3. List all books by a specific author 
name_hash= library.each_with_object({}) do  |book, hash|
  authors = book[:author][:name]
  hash[book[:title]] = authors
end
puts name_hash

#4. List all genres across all books
puts library.map{|book| book[:genres]}.flatten.uniq

#5. Count the number of reviews per book
count_review = library.each_with_object({}) do |book, hash|
  hash[book[:title]] = book[:reviews].size
end
print count_review