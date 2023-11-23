require 'open-uri'
require 'readability'

input_filename = 'input.md'
output_filename = 'output.html'

# Read the markdown file
markdown_content = File.read(input_filename)

SIMPLE_REGEX = /https:\/\/[^\s]+/

# Extract URLs
urls = markdown_content.scan(SIMPLE_REGEX).flatten

# Download and extract content
extracted_contents = urls.map do |url|
  begin
    source = URI.open(url)&.read
    content = Readability::Document.new(source).content
    "<h2>Content from: #{url}</h2>\n#{content}"
  rescue StandardError => e
    "Error downloading or parsing #{url}: #{e.message}"
  end
end

# Write to a new markdown file
File.open(output_filename, 'w') do |file|
  extracted_contents.each do |content|
    file.puts content
    file.puts "\n\n"
  end
end