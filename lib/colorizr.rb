class String
  #Class variable (a Hash) that contains number reference per color.
  @@colors = {red: 31, green: 32, yellow: 33, blue: 34,
  pink: 35, light_blue: 94, white: 97, light_grey: 37, black: 30}

  def self.create_colors
    #code to generate all color methods goes here
    @@colors.each do |color, number|
      self.send(:define_method, color) do
        puts "\e[#{number}m #{self}\e[0m"
      end
    end
  end

  def self.colors
    #Array that hold all the colors.
    array_of_colors = []
    @@colors.each do |color, number|
      array_of_colors << color.to_s
    end
    p array_of_colors
  end

  def self.sample_colors
    @@colors.each do |color, number|
      #Send takes the name of the color ":red" and calls the cooresponding methods
      "This is #{color}".send(color)
    end
  end
end

String.create_colors
