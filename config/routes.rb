Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get "/directors", controller: "misc", action: "directors"
  get "directors/:id", controller: "misc", action: "dir_specific"
  get "directors/youngest", controller: "misc", action: "dir_youngest"
  get "directors/eldest", controller: "misc", action: "dir_eldest"
  get "/actors", controller: "misc", action: "actors"
  get "actors/:id", controller: "misc", action: "act_specific"
  get "/movies", controller: "misc", action: "movies"
  get "movies/:id", controller: "misc", action: "mov_specific"
end
