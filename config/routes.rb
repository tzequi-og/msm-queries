Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get "/directors", controller: "misc", action: "directors"
  get "directors/:id", controller: "misc", action: "dir_specific"
  get "/actors", controller: "misc", action: "actors"
  get "/movies", controller: "misc", action: "movies"
end
