class Parse
  def parse(file_name)
    file_contents = File.new(file_name).read
    file_parsed = spaced_strings(file_contents)
    sorted_count_unique = sorts_unique_elements(file_parsed)
    print_results(sorted_count_unique)
  end

  private

  def spaced_strings(file_contents)
    file_contents.scan /["\/"][^\s]+/
  end

  def sorts_unique_elements(ary)
    count_unique = Hash.new(0)
    ary.each { |element| count_unique[element] += 1}
    count_unique.sort_by { |k, v| v }.reverse.to_h
  end

  def print_results(hsh)
    hsh.each { |k, v| puts "#{k} #{v} unique views" }
  end
end

Parse.new.parse('webserver.log')
