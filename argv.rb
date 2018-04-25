if ARGV.empty?
  chuck.help
else
  if ARGV.length == 2
    puts chuck.replace_name(ARGV[0], ARGV[1])
  elsif ARGV[0] == 'random'
    puts chuck.random
  else
    puts chuck.get_joke_by_id(ARGV[0])
    norris_face() if chuck.get_joke_by_id(ARGV[0]) == nil
  end
end