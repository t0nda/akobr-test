output "aws_sfn_state_machine_tfer--MyStateMachine_id" {
  value = "${aws_sfn_state_machine.tfer--MyStateMachine.id}"
}

output "aws_sfn_state_machine_tfer--UpdateAccountInDB_id" {
  value = "${aws_sfn_state_machine.tfer--UpdateAccountInDB.id}"
}
