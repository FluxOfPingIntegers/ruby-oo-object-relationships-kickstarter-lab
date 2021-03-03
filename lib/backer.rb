class Backer
attr_reader :name


  def initialize(name)
    @name = name
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
   x = ProjectBacker.all.select {|i| i.backer == self}
   x.map {|i| i.project}
  end
end