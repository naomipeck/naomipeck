library(blogdown)
new_site(theme = "wowchemy/starter-academic")

blogdown::serve_site()

blogdown::new_post(title = "Hi Hugo",
                   ext = '.Rmarkdown',
                   subdir = "post")

blogdown::config_Rprofile() 
