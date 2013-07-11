# load in the csv library
require 'csv'

#
#  Returns the grade for a given mark
#
def grade(mark)
    case mark
    when 80..100
        grade = 'a'
    when 60..79
        grade = 'b'
    when 40..60
        grade = 'c'
    else
        grade = 'f' 
    end
    return grade
end


#
#  Returns the summary output for a given name, mark and grade 
#
def summary(name, mark, grade)
    return "#{name} got #{mark}% and was awarded a grade #{grade}"
end

#
#  Reads all the marks in from the csv file and displays the summary output
#
def display_marks
    # load in the marks
    marks = CSV.read('marks.csv')   

    # TODO: fix the mistakes in the code below this point
    mark = 0
    marks.each do |line|
        name = line.first
        line[1..-1].each {|g| mark += g.to_i }
        summary(name, mark, grade(mark))
    end
    return nil
end

