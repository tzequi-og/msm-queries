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

  def dir_youngest
    @id = params.fetch("id")
    @target = Director.all.where({ :id => @id}).first
    @filmography = Movie.all.where({ :director_id => @id})

    render({ :template => "misc_templates/diryoung"})
  end

  def dir_eldest
    @id = params.fetch("id")
    @target = Director.all.where({ :id => @id}).first
    @filmography = Movie.all.where({ :director_id => @id})

    render({ :template => "misc_templates/dirold"})
  end

  def actors
    @acts = Actor.all
    @instances = Actor.count
    
    render({ :template => "misc_templates/actors"})
  end

  def act_specific
    @id = params.fetch("id")
    @target = Actor.all.where({ :id => @id}).first
    @filmography = Character.all.where({ :actor_id => @id})

    render({ :template => "misc_templates/actflex"})
  end

  def movies
    @movs = Movie.all
    @instances = Movie.count
    
    render({ :template => "misc_templates/movies"})
  end

  def mov_specific
    @id = params.fetch("id")
    @target = Movie.all.where({ :id => @id}).first

    render({ :template => "misc_templates/filmflex"})
  end
end
