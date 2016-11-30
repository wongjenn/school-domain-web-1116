class School

 attr_reader :roster

 def initialize(school)
   @school = school
   @roster = Hash.new { |h, k| h[k] = []}
 end

 def add_student(name, grade)
   @roster[grade] << name
 end

 def grade(student_grade)
     @roster[student_grade]
 end

 def sort
   @roster.each { |grade, names| names.sort! }
 end

end
