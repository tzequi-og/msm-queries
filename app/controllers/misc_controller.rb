class MiscController < ApplicationController
  def homepage
    render({ :template => "misc_templates/home"})
  end

  def directors
    @dirs = Director.all
    @instances = Director.count
    
    render({ :template => "misc_templates/directors"})
  end

  def specific
    @id = params.fetch("id")
    @target = Director.all.where({ :id => @id}).first
    @filmography = Movie.all.where({ :director_id => @id})

    render({ :template => "misc_templates/dirflex"})
  end
end
