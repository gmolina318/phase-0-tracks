def age_calculated (year_born)
  current_year = Time.now.year
  return current_year - year_born
end

def validboolean(mydata)
  if mydata.downcase =="yes" or mydata.downcase == "no" then
    #Valid Data
    true
  else
    puts "Must answer with either 'Yes' or 'No'"
    false
  end
end

def convertboolean(mydata)
  if mydata == String then
    mydata = mydata.downcase
  end #if

  case mydata
    when 'y', 'yes', 'true', true
      true
    else
      false
  end #case
end

def VampStatus (name, age_provided, year_born, likes_garlic, requires_health_ins, allergy)

  #Initialize Status -- this will be reported if no other criteria used matches.
  vamp_status = "Results Inconclusive."

  #Added Allergy to method based on Release 4
  if allergy.downcase == "sunshine" then

    vamp_status = "Definitely a vampire."

  else
    #Release 2

    if (age_provided == age_calculated(year_born)) && (likes_garlic == true || requires_health_ins == true) then
      vamp_status = "Probably NOT a vampire."
    end

    if (age_provided != age_calculated(year_born)) && (likes_garlic != true || requires_health_ins != true) then
      vamp_status = "Probably a vampire."
    end

    if (age_provided != age_calculated(year_born)) && likes_garlic != true && requires_health_ins != true then
      vamp_status = "Almost certainly is a vampire."
    end

    if name.downcase == "drake cula" || name.downcase == "tu fang" then
      vamp_status = "Definitely a vampire."
    end

  end

  return vamp_status
end

def print_vamp_inputs (employee, age, bday, garlic_eater, aca_user, allergy)
    puts "\nVamp Inputs"
    puts "==========="
    p employee
    p age
    p bday
    p garlic_eater
    p aca_user
    p allergy
end

########################
#Main Program --  should this be a Method of its own?
puts "How many employees are to be processed today?"
employee_count = gets.chomp.to_i

#for loop to process multiple employees
for i in 1 .. employee_count
  begin
    puts "Please Enter Employee Name:"
    employee_name = gets.chomp
  end until !(employee_name.empty?)

  puts "How old are you?"
  employee_age = gets.chomp.to_i

  puts "What year were you born?"
  birth_year = gets.chomp.to_i

  begin
    puts "Should we order you some garlic bread from the cafeteria? (Yes/No)"
    wants_garlic_bread = gets.chomp
  end until validboolean(wants_garlic_bread)
  wants_garlic_bread = convertboolean(wants_garlic_bread)

  begin
    puts "Do you require health insurance? (Yes/No)"
    needs_health_insurance = gets.chomp
  end until validboolean(needs_health_insurance)
  needs_health_insurance = convertboolean(needs_health_insurance)

  begin
    puts "List Allergies (type 'Done' to stop)?"
    allergy = gets.chomp
    #Could use a break statement as well -- but think that would be more repeated code.
    #Added Allergy to the VampStatus method.
  end until (allergy.downcase=="done" || allergy.downcase == "sunshine")


  puts "\n" + employee_name + "\'s Vampire Status: " + VampStatus(employee_name, employee_age, birth_year,
      wants_garlic_bread, needs_health_insurance, allergy)

  #Release 5 Plot Twist
  puts "\nActually, never mind!  What do these questions have to do with anything? Let's all be friends."

  #Vamp Inputs
  print_vamp_inputs(employee_name,employee_age,birth_year,wants_garlic_bread,needs_health_insurance,allergy)

end #for i




