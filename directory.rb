def input_students
  puts "Please enter the names of the students".center(50)
  puts "To finish, just hit return twice".center(50)
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp  
  #while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    puts "Please enter your height".center(50)
    height = gets.chomp
    puts "Please enter your hobby".center(50)
    hobby = gets.chomp
    students << {name: name, height: height, hobby: hobby, cohort: :november}
    puts "Now we have #{students.count} students".center(50)
    # get another name from the user
    puts "Enter the next student".center(50)
    name = gets.chomp
  end
  #return the array of students
  students
end

def print_header
  puts "The students of Villains Academy".center(50)
  puts "-------------".center(50)
end

def print(students)
  i = 0
  while i < students.length
    puts "#{i + 1}. #{students[i][:name]}, height: #{students[i][:height]}, hobby: #{students[i][:hobby]}, (#{students[i][:cohort]} cohort)".center(50)
    i += 1
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students".center(50)
end

students = input_students
print_header
print(students)
print_footer(students)
