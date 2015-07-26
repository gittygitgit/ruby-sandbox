# -------------------------------
# Obtain info about a given file
# -------------------------------

Dir.chdir('C:/users/mike/_thumbnail/art-school_portfolio/')

path_to_file = 'web-IMG00005-20100603-0903.jpg'
stat = File.stat(File.expand_path(path_to_file))

printf("File info\n")
printf("  Name:        %s", path_to_file)
printf("  Created:     %s", stat.ctime)
printf("  Modified:    %s", stat.mtime)
printf("  size:        %s", stat.size)




