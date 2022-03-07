# set-up
remotes::install_github("rstudio/blogdown")
library(blogdown)
blogdown::install_hugo("0.81.0")

# create new site
new_site(theme = "wowchemy/starter-academic")

#load/stop loading site
blogdown::serve_site()
blogdown::stop_server()

#Create new post
blogdown::new_post(title = "Speeding Up Segmentation",
                   ext = '.Rmarkdown',
                   subdir = "post")


# adjust settings 
# make sure to restart R session for changes to take affect
blogdown::config_Rprofile() 

#sanity checks
blogdown::check_gitignore()
blogdown::check_config()
blogdown::check_site()
blogdown::check_netlify()
blogdown::check_hugo()
blogdown::check_content()

blogdown::remove_hugo()


#shortcuts to open base files
rstudioapi::navigateToFile("config.yaml", line = 3)

rstudioapi::navigateToFile("config/_default/params.toml")
rstudioapi::navigateToFile("config/_default/menus.toml")
