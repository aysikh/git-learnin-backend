User.destroy_all
Course.destroy_all
Lesson.destroy_all


User.create(
    name: "nugget", 
    email: "nugget@gmail.com",
    password: "nugget"
)

intro_to_prog = Course.create(
    name: "Introduction to Programming"
)

Lesson.create(
    title: "Defining a variable", 
    information: "In software programming, variables are names used to hold one or more values. Instead of repeating these values in multiple places in your code, the variable holds the results of a calculation, database call, results of a database query, or other value.",
    video_url: "TBA",
    course_id: intro_to_prog.id
)