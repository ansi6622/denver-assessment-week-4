class DogHTMLPage
  def initialize(dogs)
    @dogs = dogs
  end

  def title
    count = if @dogs.length > 0
              @dogs.length
            else
              "no"
            end

    "<h1>There are #{count} dogs</h1>"
  end

  def list
    return "" if @dogs.length == 0

    list_html = @dogs.map { |d| "<li>#{d[:name]}</li>" }.join

    "<ul>#{list_html}</ul>"
  end

end
