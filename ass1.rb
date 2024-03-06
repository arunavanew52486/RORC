family = {
    uncles: ["bob", "joe", "steve"],
    sisters: ["jane", "jill", "beth"],
    brothers: ["frank", "rob", "david"],
    aunts: ["mary", "sally", "susan"]
}

arr = []
arr.push((family.select { |k, v| (k == :sisters) }).values).push((family.select { |k, v| (k == :sisters) }).values)
puts "Method 1: #{arr.flatten}"

siblings = (family.select { |k, v| (k == :sisters) || (k == :brothers) }).values.flatten
puts "Method 2: #{siblings}"
