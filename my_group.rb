person_1 = {name: "Jonas", gender: "man", age: 40}
person_2 = {name: "Kalle", gender: "man", age: 45}
person_3 = {name: "Maja", gender: "woman", age: 25}

persons = []

persons.push person_1
persons.push person_2
persons.push person_3

persons.each do |person| puts person[:name] + " is a " + person[:age].to_s + " years old " +  person[:gender] end
