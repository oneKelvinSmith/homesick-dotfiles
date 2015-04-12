function prepend_to_file
  set -l text $argv[1]
  set -l file $argv[2]

  echo "Prepending '$text' to $file..."
  echo $text > ./__temp
  and cat $file >> ./__temp
  and mv __temp $file
end