json.set! :books do
  json.array! @books do |book|
    json.extract! book, :id, :title
  end
end
