class Dessert
  def initialize(name, calories)
    # your code here
    @name = name
    @calories = calories
  end

  def name
    @name
  end

  def name=(new_name)
    @name = new_name
  end

  def calories
    @calories
  end

  def calories=(new_calories)
    @calories = new_calories
  end

  def healthy?
    # your code here
    calories < 200
  end

  def delicious?
    # your code here
    true
  end

end

class JellyBean < Dessert
  def initialize(flavor)
    # YOUR CODE HERE
    @name = "#{flavor} jelly bean"
    @calories = 5
    @flavor = flavor
  end

  def flavor
    @flavor
  end

  def flavor=(new_flavor)
    @flavor = new_flavor
  end
  
  def delicious?
    # YOUR CODE HERE
    if self.is_a?(self.class)
      if @flavor == "licorice"
        return false
      else
        true
      end
    else
      super
    end
  end
end
