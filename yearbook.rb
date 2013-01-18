require 'open-uri'
require 'json'
require './student.rb'

url = "http://tslwebdev.herokuapp.com/pm.json"
list_from_api = JSON.parse(open(url).read)

students = Array.new
list_from_api.each do |student_hash|
  next_student = Student.new
  next_student.name = student_hash["name"]
  next_student.photo_url = student_hash["photo_url"]
  next_student.section = student_hash["section"]
  next_student.twitter = student_hash["twitter"]

  students << next_student
end

puts "<html>"
puts "  <head>"
puts "    <title>TSL PM Dev Students</title>"
puts "    <link rel='stylesheet' href='styles.css'>"
puts "  </head>"
puts "  <body>"
puts "    <h1>TSL PM Dev Students</h1>"

puts "    <ul>"
students.shuffle.each do |student|
  puts student.introduce
end
puts "    </ul>"
puts "  </body>"
puts "</html>"
