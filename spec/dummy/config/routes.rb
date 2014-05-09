Dummy::Application.routes.draw do
  match '/text_area' => 'pages#text_area'
  match '/text_areas' => 'pages#text_areas'
  match '/small_text_area' => 'pages#small_text_area'
  match '/text_area_with_text' => 'pages#text_area_with_text'
  match '/page_with_javascript' => 'pages#page_with_javascript'
end
