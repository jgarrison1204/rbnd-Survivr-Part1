class String
  #Class variable (a Hash) that contains number reference per color.
  @@colors = {red: 31, green: 32, yellow: 33, blue: 34,
  pink: 35, light_blue: 94, white: 97, light_gray: 37, black: 30}

  def self.create_colors
    #code to generate all color methods goes here
    @@colors.each do |color, number|
      self.send(:define_method, color) do
        #Text goes here is placeholder.  Need to figure out how to call text into it.
        puts "\e[#{number}m" + "text goes here" + "\e[0m"
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
      #Need to figure out how to call methods from create_colors here.
      puts "This is #{color}"#.color
    end
  end
end

lakers = String.new
String.create_colors
p lakers.pink
String.colors
String.sample_colors
