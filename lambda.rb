my_lambda = -> { puts "hello" }
my_lambda.call

my_lambda_with_args =-> (v) { puts "hello #{v}" }
my_lambda_with_args.call(10)

args_lambda = lambda { |s| puts "hello #{s}" }
args_lambda.call("brother")











