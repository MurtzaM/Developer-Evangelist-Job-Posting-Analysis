#Script created by Murtza Manzur on 9/14/2014
#Email: "hi@murtza.org", Website: "http://murtza.org"

#Replace job-posting.txt with  the name of your textfile
job_posting = "job-posting.txt"

#This method returns 250 most frequent words from a text file
def count_word_frequency(textfile)
  word_count_hash = Hash.new{|h,k| h[k] = 0}
  File.open(textfile, "r") do |file|
    file.each_line do |line|
      line.split(" ").each{|word| word_count_hash[word] += 1}
    end	
  end
  top_250_words = Hash[word_count_hash.sort_by {|k,v| v}.reverse.first(250)]
  puts top_250_words
end 

count_word_frequency(job_posting) 
