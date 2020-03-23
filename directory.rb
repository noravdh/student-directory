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
    students << {name: name, height: height, hobby: hobby, cohort: cohort}
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

# sorted_students = students.group_by{|x| x[:cohort]}


# #sorted_students = {:cohortname1 => [{:name => name, :height => height}],:cohortname2[{:name => name, :height => height}]} 

# def print_sorted(students)
#   sorted_students = students.group_by{|x| x[:cohort]}
#   i = 0
#   while i < sorted_students.size
#     sorted_students.each do |key, value|
#       puts "#{key} #{value[i][:name]}"
#       i += 1
#   end
# end
# end

# print_sorted(students)