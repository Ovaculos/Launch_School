# PEDAC Process

## P: Understand the Problem

- Establish the rules / define the boundaries of the problem
  - Assess available info about a problem
  - Restate explicit requirements
  - Identify implicit requirements
- Don't rush! Spend time really figuring out what you are doing

**General Example**

Given a string, produce a new string with every other word removed

- Explicit Requirements 
  - Input is a string
  - Output is a new string
  - Every other word in the string is removed in the new string

- Questions:
  - What do we mean by every other word?
  - What does a word actually mean in this?
    - Words are delimited by spaces

## E: Examples and Test Cases

- Can confirm / refute assumptions
- Help to answer questions about implicit requirements
- Act as assertions which help to codify the rules and boundaries

## D: Data Structures

- Help to reason with data more logically
- Help interact with data at an implementation level
- Thinking in terms of data structures is part of the problem solving process
- Closely linked with algorithms
  - Set of steps from input to output
    - Involves structuring data in a certain way

## A: Algorithms

- A logical sequence of steps for accomplishing a task or objective
  - Closely linked to data structures
  - Series of steps to structure data to produce the desired output
- Stay abstract / high level when thinking about the algorithm
  - Avoid implementation detail
  - Don't worry about efficiency / speed for now

## C: Impliment a Solution in Code

- Translating a solution algorithm to code
- Think about algorithm in context of programming language
  - Language features and constraints
  - Characteristics of data structures
  - Built in functions / methods
  - Syntax and coding patterns
- Create test cases
- Code with intent

## Sum Even Number Rows

**Imagine a sequence of consecutive even integers beginning with 2. The integers are grouped in rows, with the first row containing one integer, the second row containing two, and so on. Given an integer representing the number of a particular row, return an integer representing the sum of all integers in that row.**

**Rules**

- Explicit Requirements
  - Input is an integer that references a row that holds a group of integers
  - Output is the sum of the group of integers the input references
  - Sequence of consecutive, even integers beginning with 2
  - Row number equals number of integers in the row
    - Row #1 has the one integer: 2
    - Row #2 has the two integers: 4, 6 
    - Row #5 has the five integers: 22, 24, 26, 28, 30

- Sequence:
2, 4, 6, 8, 10...

One: 2
Two: 4, 6
Three: 8, 10, 12
...

- How do we create the structure?

**Examples**

row number: 1 => 2
row number: 2 => 10
row number: 4 => 68

**Data Structures**

One: 2
Two: 4, 6
Three: 8, 10, 12

- Overall structure represents a sequence
- Individual rows within the overall structure
- Individual rows in a set order in ceontext of sequence
- Indivual rows contain integers
- Can assume integers are in a set order in the context of the sequence

[
  [2],
  [4, 6],
  [8, 10, 12]
  [14, 16, 18, 20]
  ...
]

**Algorithm**

1. Create an empty 'rows' array to contain the rows
2. Create a 'row' array and add it to the 'rows' array
3. Repeat step 2 until we've filled all the rows, defined by input value
 - All rows have been created when the length of the 'rows' array is equal to the input integer
4. Sum the final row
5. Return the sum of the final row

*Problem: Create a row*

Rules:
- Row is an array
- Array contains integers
- Integers are consecutive, even numbers
- Integers in each row are part of an overall larger sequence
- Rows are different lengths
- Input: 
  - Starting integer of row
  - Length of row (row number)
- Output: The row

Examples:
start: 2, length: 1 => [2]
start: 4, length: 2 => [4, 6]
start: 8, length: 3 => [8, 10, 12]

Data Structures:
- Array of integers

Algorithm:
1. Create an empty 'row' to contain the integers we want to output
2. Add the starting integer (one of inputs)
3. Increment the starting integer by 2 to get next integer in sequence
4. Repeat steps 2 & 3 until the array has reached the correct length
5. Return 'row' array

**Coding**

**Final Thoughts**

- Feel free to bounce around steps
- Write mini algos
- Seperate problem solving and coding