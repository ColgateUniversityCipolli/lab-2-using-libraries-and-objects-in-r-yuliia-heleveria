#Part 1
all.subdirectories <- list.dirs("MUSIC") #list all sub directories
#print(all.subdirectories)

#Part 2
#count all forward slashes
num.of.slashes <- str_count(all.subdirectories, pattern = '/') 
#print(num.of.slashes)
#subset album sub directories
all.album.subdirectories <- subset(all.subdirectories, num.of.slashes == 2) 
#print(all.album.subdirectories)

#Part 3.3
#creating an empty vector
code.to.process <- rep(x=NA, times= length(wav.files)) #EDIT

#Part 3
for (i in 1:length(all.album.subdirectories)){ #for each album sub directory
  #Part 3.1
  #list files in current album
  all.files <- list.files(all.album.subdirectories[i]) 
  #print(all.files)
  
  #Part 3.2
  #count number of .wav in each file
  count.wav <- str_count(all.files, pattern = '.wav')
  #print(count.wav)
  #subset all .wav files from album's all files
  wav.files <- subset(all.files, count.wav > 0)
  #print(wav.files)
  
  #loop through each track
  for (j in 1:length(wav.files)){
    #part 3.3.a  - create track file location
    track.location = paste(all.album.subdirectories[i], wav.files[j], sep = '/')
    print(track.location)
    #part 3.3.b - current track's file name
    remove.wav = str_sub(wav.files[j], start = 1, end = -5) #remove .wav
    print(remove.wav)
    split.string <- str_split(remove.wav, '-', simplify = T)
    track.name = split.string[3]
    print(track.name)
  }
}
