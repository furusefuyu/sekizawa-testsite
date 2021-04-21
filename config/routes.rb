Rails.application.routes.draw do

  get "/" => "home#homePage"
  get "/research" => "research#researchPage"
  get "/member" => "member#memberPage"
  get "/access" => "access#accessPage"
  get "/link" => "link#linkPage"

end
