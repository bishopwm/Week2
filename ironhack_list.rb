# OC1. IronhackLIST

# Oh, man. We are so proud of our Student class. Validated, short, compact. Is it love?

# Anyway, the thing you probably missed from SL7 is having some web in between. Some routes, some Sinatra, some ERB… so let’s do it, why
# not?

# You will now implement a Ironhack directory of students, that shows a list of everyone’s name, surname, birthday, a clickable link to
# their website, if they have programming experience or not (Yes/No) and, more importantly, ¡the number of dogs they have!

# Apart from that, you should be able to create new students through the interface, and also delete the ones which have 0 dogs (we cannot
# kick the others out, they have dogs!).

# Go for it!
#require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'rubygems'
require 'active_record'

set :port, 3124
enable :sessions


ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'oc1.sqlite'
)

class Student < ActiveRecord::Base
  # we need the following: name, surnames, birthday, website, number_of_dogs,and programming_experience
  validates_presence_of :name, :surnames, :birthday, :website, :number_of_dogs, :first_programming_experience


private

end

get '/' do
  @students = Student.all
  if session["name"]
    @current_student = students[session["name"]]
  end

  erb :index
end

post '/enroll' do
  # first_name = params["name"].upcase
  # last_name = params["surnames"].upcase
  # birthday_year = params["birthday"]
  # website = params["website"]
  # number_of_dogs = params["number_of_dogs"]
  # first_programming_experience = params["first_programming_experience"].upcase
#binding.pry
  student = Student.new
  # students << Student.new{"name"}

  student = Student.new(params)
  student.save

  # session["name"] = last_id
  redirect '/'
end


