library(usethis)
# retrieve from environment variables setup in .Renviron file
use_git_config(user.name = Sys.getenv("user_name"), 
               user.email = Sys.getenv("user_email"))

# 1. create the token
usethis::create_github_token()

# 2. Redirect to browser and create the token.
# 3. Go back to R session and execute:
credentials::set_github_pat(FALSE)