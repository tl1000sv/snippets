#folder_path = 'J:\Development\RubyProjects\file_rename\Kohls'
folder_path = '/Development/RubyProjects/file_rename/Kohls'

Dir.glob(folder_path + "/*-payment.pdf").sort.each do |entry|
  puts "Files #{entry}"
  filename = File.basename(entry, File.extname(entry))
  new_filename = filename.delete '-payment'
  new_filename.prepend 'payment-'
  #puts "New filename: #{new_filename}"
  puts "New full filename:" + "#{folder_path}/#{new_filename}#{File.extname(entry)}"
  File.rename(entry, "#{folder_path}/#{new_filename}#{File.extname(entry)}")
end

puts "Done renaming"

Dir.glob(folder_path + "/payment*.pdf").sort.each do |entry|
  puts "Files #{entry}"
end
