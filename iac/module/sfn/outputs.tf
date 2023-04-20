output "step_function_read_file" {
  value       = aws_sfn_state_machine.step_function_read_file
  description = "The Step function to read file"
}

output "step_function_update_amount" {
  value = aws_sfn_state_machine.step_function_update_amount
}