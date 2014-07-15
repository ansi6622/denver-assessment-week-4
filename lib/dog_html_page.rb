class DogHTMLPage

  def initialize(dogs)
    @dogs = dogs
  end

  def title
    return "<h1>There are no dogs</h1>" if @dogs.length == 0
    "<h1>There are #{@dogs.length} dogs</h1>"
  end

  def list
    return "" if @dogs.length == 0
    result = "<ul>"
    @dogs.each { |dog| result += "<li>#{dog[:name]}</li>" }
    result += "</ul>"
  end

end