class TextAnalyzer
  def initialize(file_name)
    @file_name = file_name
  end

  def process
    file = File.open(@file_name, 'r')
    yield(file.read)
    file.close
  end
end

analyzer = TextAnalyzer.new('/Users/mason/Documents/Programming/Launch_School/ruby-130/Exercises/Medium_1/sample_text.txt')
analyzer.process { |text| puts "#{text.split("\n\n").count} Paragraphs"}
analyzer.process { |text| puts "#{text.split("\n").count} Lines"}
analyzer.process { |text| puts "#{text.split(" ").count} Words"}
