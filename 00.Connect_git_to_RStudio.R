## Connect RStudio to Github via .Renviron
# https://gist.github.com/Z3tt/3dab3535007acf108391649766409421

usethis::use_git_config(user.name = "xxxvincxxx", user.email = "vincenzo.grass@gmail.com")
usethis::browse_github_token()
credentials::set_github_pat("R:GITHUB_PAT")

usethis::edit_r_environ()

# Add commits to a previous date 
# test
# git commit --date="7 day ago" -m "Last try adding previous date git commit" 
# git commit --date="10 day ago" -m "Your commit message" 

nocturne_momorize_op15_3 <- sample(1:21, 1)
print(nocturne_momorize_op15_3)
