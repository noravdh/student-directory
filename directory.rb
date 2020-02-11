def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp  
  #while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    puts "Please enter your height"
    height = gets.chomp
    puts "Please enter your hobby"
    hobby = gets.chomp
    puts "Please enter your cohort"
    cohort = gets.chomp
    if cohort == ""
      cohort = "default"
    end
    students << {name: name, height: height, hobby: hobby, cohort: cohort.to_sym}
    puts "Now we have #{students.count} students"
    # get another name from the user
    puts "Enter the next student"
    name = gets.chomp
  end
  #return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  i = 0
  while i < students.length
    puts "#{i + 1}. #{students[i][:name]}, height: #{students[i][:height]}, hobby: #{students[i][:hobby]}, (#{students[i][:cohort]} cohort)"
    i += 1
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
