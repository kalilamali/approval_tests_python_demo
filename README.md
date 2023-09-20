# approval_tests_python_demo
This is a demo repo for testing in python using [ApprovalTests.Python](https://github.com/approvals/ApprovalTests.Python)

## How to use this repo:
```bash
# Clone this repo:
git clone https://github.com/kalilamali/approval_tests_python_demo.git
cd approval_test_python_demo

# Install the requirements
make install

# Run the test (will fail!)
# 2 files will be created one received and one approved (noticed the approved one is empty)
make test

# Use the current results as the gold master
# notice how after running this command, the received and approved file are identical
# we expect the next time we run the test to succeed because our result match the gold master
make gold_master

# Run the test again (will succeed!)
make test
```