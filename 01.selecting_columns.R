library(credentials)

usethis::use_git_config(user.name = "xxxvincxxx", user.email = "vincenzo.grass@gmail.com")
usethis::browse_github_token()
credentials::set_github_pat("R:GITHUB_PAT")


usethis::edit_r_environ()
