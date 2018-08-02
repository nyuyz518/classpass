# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
student = Student.create([
  { name: 'Lily', user_name: "nyuyz518", password: "password1" },
  { name: 'Claudia', user_name: "claud", password: "password2" },
  { name: 'Lin', user_name: "linsy", password: "password3" },
  { name: 'Rose', user_name: "rosy", password: "password4" },
])

hobby = Hobby.create([
  { name:"ballet", student_id: student.sample.id},
  { name:"art", student_id: student.sample.id},
  { name:"cooking", student_id: student.sample.id},
  { name:"coding", student_id: student.sample.id},
  ])

school = School.create([
  {name: "Joffery Dance School", location: "west village"},
  {name: "MOMA art", location: "middle town"},
  {name: "by Per Se ", location: "columbus circle"},
  {name: "Flatiron School", location: "wall street"},
  ])

pass = Pass.create([
  {student_id: student.sample.id, school_id:school.sample.id},
  {student_id: student.sample.id, school_id:school.sample.id},
  {student_id: student.sample.id, school_id:school.sample.id},
  {student_id: student.sample.id, school_id:school.sample.id},
  {student_id: student.sample.id, school_id:school.sample.id},
  {student_id: student.sample.id, school_id:school.sample.id},
  {student_id: student.sample.id, school_id:school.sample.id},
  ])

course = Course.create([
  {title:"ballet101", category:"fitness", school_id:school.sample.id},
  {title:"oilpainting", category:"art", school_id:school.sample.id},
  {title:"ruby on rails", category:"stem", school_id:school.sample.id},
  {title:"dummy java", category:"stem", school_id:school.sample.id},
  {title:"cook like French", category:"lifestyle",school_id:school.sample.id},
  ])
