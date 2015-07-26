# --------------------------------
# Navigate filesystem
# --------------------------------

# List curr dir
printf("Curr dir:     %s", Dir.getwd)

# Change directory
path = 'C:/users/mike/_thumbnail/art-school_portfolio'
Dir.chdir(path)
printf("Curr dir:     %s", Dir.getwd)

# Expand relative path to absolute path
printf("Expanding path %s to %s", "IMG_0617.JPG", File.expand_path("IMG_0617.JPG"))



