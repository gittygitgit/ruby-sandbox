#!/bin/ruby

# ------------------------------
# Backup files in dir 1 to dir 2
# ------------------------------

require "fileutils"

path_source="C:/users/mike/_thumbnail/art-school_portfolio/"
path_dest = File.expand_path("./bkp/", path_source)

# go to images dir
Dir.chdir(path_source)


# delete all files in dest dir
File.delete(*Dir["./bkp/*"])

# another way to remove all files in a dir
# FileUtils.rm(Dir["./bkp/*"])

# Remove bkp dir
Dir.rmdir(path_dest)

# create backup dir
Dir.mkdir("bkp")

Dir["./*.jpg"].each {
  |f| puts f.class;

  # bkp dir must exist
  FileUtils.copy_file(f, "./bkp/" + f)
}

# Remove bkp dir
File.delete(*Dir["./bkp/*"])

# Remove bkp dir
Dir.rmdir(path_dest)

# Another way to copy files
FileUtils.copy_entry("C:/users/mike/_thumbnail/art-school_portfolio/", "C:/target")

