require_relative 'project'
require_relative 'projects'



project1 = Project.new("LMN",500,3000)
project2 = Project.new("XYZ",25,75)
project3 = Project.new("WOW", 10000, 100000)

project_list = Projects.new("VC-Friendly Start-up Projects")

project_list.add_project(project1)
project_list.add_project(project2)
project_list.add_project(project3)

project_list.request_funding

	
