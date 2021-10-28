# Bank tech test
Today, you'll practice doing a tech test.

For most tech tests, you'll essentially have unlimited time. This practice session is about producing the best code you can when there is a minimal time pressure.

You'll get to practice your OO design and TDD skills.

You'll work alone, and you'll also review your own code so you can practice reflecting on and improving your own work.

# Specification
## Requirements
You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).
Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2023
And a deposit of 2000 on 13-01-2023
And a withdrawal of 500 on 14-01-2023
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00

# Example Testing

<img width="685" alt="Screenshot 2021-10-27 at 17 59 51" src="https://user-images.githubusercontent.com/86610397/139114128-27363a54-e0fa-4c6f-82c2-d89c54fc3840.png">

# Approach

My approach to this was to create something that was easy to execute and change. Initially the balance will begin a 0, once the user has deposited a sum of money it will amend the balance and show the date of the transaction in an array. It will do the same for withdrawing a sum of money. To preview the full statement, the user calls on the method `print_statement` to see a full summary of their bank account. 

# Testing

* Testing done with Rspec.
* Linting by Rubocop.
* Test coverage using SimpleCov.
