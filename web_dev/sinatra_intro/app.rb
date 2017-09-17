# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

#Use plus sign for spaces in the address
get '/contact' do
  "The address is #{params[:address]}"
end

get '/great_job' do
  name = params[:name]
  p name
  if name
    "Good job #{name}!"
  else
    "Good job!"
  end
end

get '/add/:number1/plus/:number2' do
  result = params[:number1].to_i + params[:number2].to_i
  str_result = result.to_s
  # p str_result
  "The result is #{str_result}."
end


# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end


#example name: "name"=>"Dandre Wiegand"
get '/student/:first_name' do
  first_name = params[:first_name]
  cap_first_name = first_name.capitalize
  student_name = db.execute("SELECT * FROM students WHERE name LIKE '#{cap_first_name}'")
  # student_name
end
