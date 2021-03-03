library(blogdown)
new_site(theme = "wowchemy/starter-academic")

blogdown::serve_site()
blogdown::stop_server()

blogdown::new_post(title = "Boundary Cues Coding in Praat",
                   ext = '.Rmarkdown',
                   subdir = "post")

blogdown::config_Rprofile() 

blogdown::check_gitignore()
blogdown::check_config()
blogdown::check_site()
blogdown::check_netlify()
blogdown::check_hugo()

blogdown::remove_hugo()

rstudioapi::navigateToFile("config.yaml", line = 3)

rstudioapi::navigateToFile("config/_default/params.toml")
rstudioapi::navigateToFile("config/_default/menus.toml")
