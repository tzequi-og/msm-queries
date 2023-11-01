class MiscController < ApplicationController
  def homepage
    render({ :template => "misc_templates/home"})
  end

  def directors
    @dirs = Director.all
    @instances = Director.count
    
    render({ :template => "misc_templates/directors"})
  end

  def dir_specific
    @id = params.fetch("id")
    @target = Director.all.where({ :id => @id}).first
    @filmography = Movie.all.where({ :director_id => @id})

    render({ :template => "misc_templates/dirflex"})
  end

  def actors
    @acts = Actor.all
    @instances = Actor.count
    
    render({ :template => "misc_templates/actors"})
  end

  def movies
    @movs = Movie.all
    @instances = Movie.count
    
    render({ :template => "misc_templates/movies"})
  end
end
