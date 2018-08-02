
students = [
  { user_name: "lily", password: "password1" },
  { user_name: "claud", password: "password2" },
  { user_name: "linsy", password: "password3" },
  { user_name: "rosy", password: "password4" },
]
  students.each {|student| Student.create(student)}


hobbies = [
  { name: "ballet"},
  { name: "art"},
  { name: "cooking"},
  { name: "coding"},
  { name: "drama"},
  { name: "gardening"},
  { name: "jogging"},
  { name: "lego"},
  { name: "swimming"},
  { name: "fishing"},
  { name: "tennis"},
  { name: "reading"},
  { name: "bird watching"},
  { name: "auto fixing"},
  { name: "boxing"},
  { name: "oilpainting"},
  ]
  hobbies = hobbies.map {|hobby| hobby.merge ({student_id: Student.all.sample.id}) }
  hobbies.each {|hobby| Hobby.create(hobby)}



schools = [
  {name: "Joffery Dance School", location: "west village"},
  {name: "MOMA art", location: "middle town"},
  {name: "by Per Se ", location: "columbus circle"},
  {name: "Flatiron School", location: "wall street"},
  {name: "school1", location: "ave1"},
  {name: "school2", location: "ave2"},
  {name: "school3", location: "ave3"},
  {name: "school4", location: "ave4"},
  ]
  schools.each {|school| School.create(school)}

10.times do
  Pass.create({student_id:Student.all.sample.id, school_id: School.all.sample.id, offer_id: Offer.all.sample.id})
end

offer = Offer.create([
  {name:"5 class offer" ,price: 80},
  {name:"10 class offer" ,price: 100},
  {name:"15 class offer" ,price: 150},
  {name:"20 class offer" ,price: 180},
  {name:"50 class offer" ,price: 300},
  ])

course = [
  {name:"ballet101"},
  {name:"oilpainting"},
  {name:"ruby on rails"},
  {name:"dummy java"},
  {name:"cook like French"},
  {name:"swimming101"},
  {name:"fishing like fish"},
  {name:"bird watching like bird"},
  {name:"reading infinite"}
  ]
  courses = courses.map { |course| course.merge( { school_id: School.all.sample.id } ) }
  courses.each { |course| Course.create(course) }
