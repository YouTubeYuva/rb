school_hash = [
        {:teacher => "Raju", :student => "Guru", :subject => "History", :mark1 => "100", :mark2 => "100", gender: 'male'},
        {:teacher => "Shanta", :student => "Murali", :subject => "Geography", :mark1 => "80", :mark2 => "60", gender: 'male'},
        {:teacher => "Prabhu", :student => "Guru", :subject => "Maths", :mark1 => "90", :mark2 => "95", gender: 'male'},
        {:teacher => "Raju", :student => "Murali", :subject => "Civics", :mark1 => "100", :mark2 => "100", gender: 'male'},
        {:teacher => "Raju", :student => "Guru", :subject => "Civics", :mark1 => "85", :mark2 => "80", gender: 'male'},
        {:teacher => "Raju", :student => "Jansi", :subject => "Civics", :mark1 => "80", :mark2 => "70", gender: 'female'},
        {:teacher => "Raju", :student => "Jansi", :subject => "History", :mark1 => "100", :mark2 => "70", gender: 'female'},
        {:teacher => "Raju", :student => "Murali", :subject => "History", :mark1 => "70", :mark2 => "100", gender: 'male'},
        {:teacher => "Shanta", :student => "Guru", :subject => "Geography", :mark1 => "80", :mark2 => "90", gender: 'male'},
        {:teacher => "Shanta", :student => "Jansi", :subject => "Geography", :mark1 => "60", :mark2 => "100", gender: 'female'},
        {:teacher => "Prabhu", :student => "Murali", :subject => "Maths", :mark1 => "100", :mark2 => "85", gender: 'male'},
        {:teacher => "Prabhu", :student => "Jansi", :subject => "Maths", :mark1 => "100", :mark2 => "90", gender: 'female'}
]

# 1) Has teacher Shanta taught a student who has secured 80% marks and above on an average?
shanta_students= school_hash.select{ |x| x[:teacher] == "Shanta"}
shanta_students.any?{ |x| (x[:mark1].to_i + x[:mark2].to_i) / 2 > 80}

# 2) List the names of students and teachers.
teacher = school_hash.map{|x|x[:teacher]}.uniq
student = school_hash.map{|x|x[:student]}.uniq

# 3) How many subjects do Murali study?
school_hash.select{|x| x[:student] == "Murali"}.map{|x| x[:subject]}.count

# 4.Is there a girl in the class?
school_hash.any? { |x| x[:gender] == 'female' }

# 5) Find all students who have secured above 85% in any subject?
subject_name =school_hash.select{|x| (x[:mark1].to_i + x[:mark2].to_i)/ 2 > 85}
subject_name.map{|x| x [:student]}.uniq

# 6) Have all students secured above 80% in Geography?
geography_students = school_hash.select { |x| x[:subject] == "Geography" }
geography_students.all?{ |x| (x[:mark1].to_i + x[:mark2].to_i) / 2 > 80}

# 7) what is the maximum mark received by a student and what subject?
school_hash.max_by{|x|x[:mark1].to_i + x[:mark2].to_i}[:subject]

# 8) what is the minimum mark in mathematics and by who?
maths= school_hash.select { |x| x[:subject] == "Maths" }
maths.min_by{|x|[x[:mark1].to_i, x[:mark2].to_i].min}[:student]

# 9) has anyone secured less than 50% marks?
less = school_hash.any? {|x|(x[:mark1].to_i + x [:mark2].to_i) / 2 < 50}

# 10) Find the person who got the highest mark in Geography?
geography = school_hash.select {|x|x[:subject] == "Geography"}
geography.max_by{|x|[x[:mark1].to_i , x[:mark2].to_i].max}[:student]


geography = school_hash.select {|x|x[:subject] == "Geography"}.max_by{|x|[x[:mark1].to_i , x[:mark2].to_i].max}
print mark = [geography[:student],[geography[:mark1].to_i,geography[:mark2].to_i].max]

# 11) Find the lowest mark secured by male students in the class?
male = school_hash.select { |x| x[:gender] == 'male' }
male.min_by{|x|[x[:mark1].to_i , x[:mark2].to_i].min}[:student]


# 12.From the school_hash -> Calculate the overall average marks for each subject.
subjects= school_hash.map{|x|x[:subject]}
marks =school_hash.map{|x| (x[:mark1].to_i + x[:mark2].to_i) / 2}
output = []
for index in 0...subjects.length
  output << { subject: subjects[index], mark: marks[index] }
end
output


