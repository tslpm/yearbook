class Student
  attr_accessor "name"
  attr_accessor "photo_url"
  attr_accessor "section"
  attr_accessor "twitter"

  def introduce
    if @twitter == ""
      return "      <li>
                      <img src='#{@photo_url}'>
                      <h3>#{@name}</h3>
                    </li>"
    else
      return "      <li>
                      <img src='#{@photo_url}'>
                      <h3><a href='https://twitter.com/#{@twitter}'>#{@name}</a></h3>
                    </li>"
    end
  end
end
