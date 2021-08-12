# HASHES

hash = {
  name: "Bob",
  job: "Programmer",
  age: 32,
  employed: true,
  children: ["Bob Jr", "Luisa"],
  job_description: {
    qa: "Make sure that the code works",
    coder: "Codes in Ruby and Javascript",
    salary: 125000
  }
}
# ACCESS HASH

hash[:name] = 'Sarah'
# p hash[:name]
# p hash[:job_description][:salary]

# Iterations

hash.each do |key, value|
  if key == :children
    puts key.to_s + ":"
    value.each.with_index(1) do |name, index|
      puts "  #{index}. #{name}"
    end
  elsif key == :job_description
    puts key.to_s.gsub("_", " ") + ":"
    value.each do |job_desc_name, job_detail|
      puts "  #{job_desc_name}: #{job_detail}"
    end
  else
    puts "#{key}: #{value}"
  end
end

hash.keys # return an array of keys
hash.values # returns an array of values