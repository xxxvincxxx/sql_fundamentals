## Connect RStudio to Github via .Renviron
# https://gist.github.com/Z3tt/3dab3535007acf108391649766409421

usethis::use_git_config(user.name = "xxxvincxxx", user.email = "vincenzo.grass@gmail.com")
usethis::browse_github_token()
credentials::set_github_pat("R:GITHUB_PAT")

usethis::edit_r_environ()

# Add commits to a previous date 
# test
# git commit --date="7 day ago" -m "Last try adding previous date git commit" 
