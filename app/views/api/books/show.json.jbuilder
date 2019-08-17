json.id        @book.id
json.title     @book.title
json.author    @book.author
json.publisher @book.publisher
json.genre     @book.genre

# 次のコードと同等です。
# json.extract! @book, :id, :title, :author, :publisher, :genre
