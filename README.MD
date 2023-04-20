# AKOBR Test

This document provides an overview of the AKOBR test, its installation process, and how it works.

## Installation

Follow these steps to install the project:

1. **Install with Terraform**: Make sure you have Terraform installed on your system.
2. **Run Terraform**: Execute Terraform from the `./iac/development` directory.

## Workflow

The AKOBR test involves the following steps:

1. **Upload file**: Upload a file to an Amazon S3 bucket.
2. **EventBridge notification**: When the file is uploaded, Amazon EventBridge triggers a notification that calls the state machine.
3. **State machine**: The state machine has two main steps:
    1. **First step**: A Lambda function reads the file from the S3 bucket.
    2. **Second step**: Another Lambda function writes the file to an Amazon DynamoDB table.
4. **DynamoDB trigger**: The DynamoDB table has a trigger to call a Lambda function.
5. **Lambda function**: This Lambda function adjust row to json and call the state machine
6. **State machine**: The state machine has two main steps:
    1. **First step**: Increases the amount by 20%.
    2. **Second step**: Stores the updated row in the DynamoDB table.
