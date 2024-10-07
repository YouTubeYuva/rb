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

# 1. List all subjects taught by teacher Raju.
school_hash.select{|x| x [:teacher] == "Raju"}.map{|x| x[:subject]}.uniq

# 2. Which student has the highest average mark across all subjects?
data = school_hash.group_by{|x|( x[:mark1].to_i + x[:mark2].to_i)/2}.select{|k,v| k == 100}
student = data[100].map {|x| x [:student] }

# 3. Count the number of male and female students.
male = school_hash.select{|x| x[:gender] == "male" }.uniq{|x| x [:student]}.count
female = school_hash.select{|x| x[:gender] == "female"}.uniq{|x| x [:student]}.count


# 4.List all students who studied History.
school_hash.find_all{|x| x [:subject] == "History"}.map{|x| x[:student]}

# 5.Find the student with the lowest mark in Civics.
civics = school_hash.select{|x|x[:subject]=="Civics"}.map{|x|(x[:mark1].to_i+x[:mark2].to_i)/2}.min
lowmark_student = school_hash.select{|x|x[:subject]=="Civics"}.min_by{|x|(x[:mark1].to_i + x[:mark2].to_i)/2}[:student]

# 6. Calculate the average marks for each subject.
# subject_averages = school_hash.group_by { |x| x [:subject] }.each do |subject, entries|
    # total_marks = entries.sum { |x| x [:mark1].to_i + x[:mark2].to_i }
    # average = total_marks / (entries.length * 2)
# [subject,average]
# end

# 7. Find the student who scored the highest marks in Mathematics.
name = school_hash.select{|x|x[:subject] =="Maths"}.max_by{|x|(x[:mark1].to_i+x[:mark2].to_i)/2}[:student]

# 8. How many students have scored full marks (100 in both mark1 and mark2) in any subject?
count =school_hash.count{|x|x[:mark1].to_i==100 && x[:mark2].to_i==100}

# 9. List all teachers who taught Jansi.
teachers = school_hash.select{|x|x[:student]=="Jansi"}.map{|x|x[:teacher]}.uniq

# 10. Find the average mark of male students.
male_count = school_hash.select{|x|x[:gender] == 'male' }.count
mark_sum = school_hash.select{|x|x[:gender] == 'male' }.sum{|x|(x[:mark1].to_i + x[:mark2].to_i)/2}
average_mark = mark_sum / male_count

# 11. List all subjects studied by the student Guru.
study = school_hash.select{|x|x[:student]=="Guru"}.map{|x|x[:subject]}

# 12. Find the teacher who taught the highest number of students.
teacher = school_hash.group_by{|x| x[:teacher]}
teacher_count= teacher.each_with_object({}) {|(k,v),h| h[k] = v.map{|x| x[:student]}.count}
value = teacher_count.map{|k,v| v}.max
find_teacher = teacher_count.key(value)



# 19. List all male students who studied Maths.
male_students = school_hash.select{|x|x[:subject] == "Maths" && x[:gender] == "male"}.map{|x| x[:student] }



  