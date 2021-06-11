class BookSerializer
  include JSONAPI::Serializer
  attributes :title, :author, :url, :isbn, :hardcover_pages, :paperback_pages, :chapters, :book_type, :publisher, :year_released
end
