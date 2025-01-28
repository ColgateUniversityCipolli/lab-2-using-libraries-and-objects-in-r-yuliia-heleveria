#Part 1
all.subdirectories <- list.dirs("MUSIC/")
print(all.subdirectories)

#Part 2
num.of.slashes <- str_count(all.subdirectories, pattern = '/')
print(num.of.slashes)

#Part 3
for (i in 1:length(all.subdirectories)){
  #Part 3.1
  all.files = list.files(all.subdirectories[i])
  print(all.files)
  
  #Part 3.2
  
  
}
