class Project
attr_reader :title


  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    x = ProjectBacker.all.select {|i| i.project == self}
    x.map {|i| i.backer}
  end
end