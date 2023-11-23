# RAG-experiments

> Disclaimer: this is a test repo, maybe it will be a real project in the future.

> If you want to use a GPTs that use this output file as Knowledge Base, you can use [this Ruby and Rails Agent]( https://chat.openai.com/g/g-etPWtCOzj-senior-rails-and-ruby-engineer) I'm working on.

This project contains scripts that automate the process of downloading web content from a list of URLs and compiling it into a single, usable HTML file.

## Description

The main script reads a markdown file containing a list of URLs, downloads the HTML content from each URL, extracts the main content using the Readability library, and writes the extracted content into a single HTML file.

## Requirements

- Ruby
- Readability gem
- Open-uri (built-in Ruby library)

## Usage

1. Create a markdown file with a list of URLs you want to extract content from. Each URL should be on a new line.

2. Run the script with the input markdown file and the desired output HTML file as arguments:

```bash
ruby test.rb
```