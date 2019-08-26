# run the various evaluation tasks

example_set = "BuildFailureReason/C/git@git"
selection = "chronological"
test_count = 1
learning_step_count = 5
technique = "pbe"

run_ir_eval = "Rscript ../r-extractions/information-retrieval.R evaluate --program #{example_set} --selection #{selection} --test-count #{test_count} --learning-step-count #{learning_step_count} --verbose"

run_eval = "ruby ../tool/run-extraction.rb -a evaluate -t #{technique} -e #{example_set} -s #{selection} -l #{learning_step_count} -c #{test_count}"

command_to_run = run_eval

puts "running '#{command_to_run}'"
puts `#{command_to_run}`
