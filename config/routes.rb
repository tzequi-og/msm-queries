Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get "/directors", controller: "misc", action: "directors"
  get "directors/:id", controller: "misc", action: "specific"
end
