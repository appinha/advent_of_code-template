<h1 align="center">
	Template for solving 🌟 Advent of Code 🎄
</h1>

<p align="center">
	<img alt="GitHub code size in bytes" src="https://img.shields.io/github/languages/code-size/appinha/advent_of_code-template?color=blueviolet" />
	<img alt="Number of lines of code" src="https://img.shields.io/tokei/lines/github/appinha/advent_of_code-template?color=blueviolet" />
	<img alt="Code language count" src="https://img.shields.io/github/languages/count/appinha/advent_of_code-template?color=blue" />
	<img alt="GitHub top language" src="https://img.shields.io/github/languages/top/appinha/advent_of_code-template?color=blue" />
	<img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/appinha/advent_of_code-template?color=brightgreen" />
</p>

<h3 align="center">
	<a href="#%EF%B8%8F-about">About</a>
	<span> · </span>
	<a href="#%EF%B8%8F-usage">Usage</a>
	<span> · </span>
	<a href="#-contents">Contents</a>
	<span> · </span>
	<a href="#-what-is-advent-of-code">What is <i>Advent of Code</i>?</a>
</h3>

---

## 🗣️ About

This template was developed for solving 🌟 Advent of Code 🎄 puzzles. It includes a [framework](https://github.com/appinha/aoc_framework) for automating repetitive tasks and a [library](https://github.com/appinha/aoc_lib) with useful tools when solving the puzzles.

## 🛠️ Usage

### Requirements

- `Python 3.10`
- `termcolor`
- `make` (for running `Makefile`)

### Instructions

**0. Fork this repo and git clone it**

**1. Create a new day folder from template**

```shell
make new d=01
```

_Note: the `make` commands have to be run from the cloned folder's root, i.e. from where the `Makefile` is placed._

The resulting folder structure will be:
```
advent_of_code-template
  aoc_framework
    ...
  aoc_lib
    ...
  day_01
    input_test.txt
    input.txt
    main.py
    README.md
    solutions.txt
  ...
```

**2. Fill in the input files**

For your **personal input**, just copy it from the AoC website and paste it into the `input.txt` file.

For **testing inputs**, add them in the `input_test.txt` file in substitution of the text `INPUT` and add the expected result in substitution of the `?` character. The line `<--->` is used to separate inputs for a given puzzle part, while the line `<===>` separates inputs from each puzzle part. In the example below, there are 3 testing inputs for part 1 and 2 testing inputs for part 2:

```
2x3x4
:-> solution=58 <-:

<--->

1x1x10
:-> solution=43 <-:

<--->

2x3x4
1x1x10
:-> solution=101 <-:

<===>

2x3x4
:-> solution=34 <-:

<--->

1x1x10
:-> solution=14 <-:
```

_(test inputs for AoC 2015 day 02 puzzle)_

**3. Write the solving code in the `main.py` file**

The solving code for each part of the puzzle have to be written as the methods `solve_part_1` and `solve_part_2` of the `DayPuzzleSolver` class:

```python
class DayPuzzleSolver():
    def __init__(self):
        self.delimiter = ""

    def solve_part_1(self, raw_input):
        ...

    def solve_part_2(self, raw_input):
        ...
```

The `self.delimiter` parameter determines how the text from the input file should be broken down. The result is then passed as the `raw_input` parameter of the solving methods. For example:

- `""` (empty string) - the input text remains the same, i.e. `raw_input` will be a string containing the input text in whole.
- `"\n"` - to be used when the input should be broken down line by line, i.e. `raw_input` will be a list of strings (lines).
- `"\n\n"` - to be used when the input is written in blocks and should be broken down by so, i.e. `raw_input` will be a list of strings (blocks of lines).

**4. Run the puzzle solver**

for a certain day (both parts):

```shell
make d=02
```

for a certain day and part:

```shell
make d=04 p=1
```

```shell
make d=08 p=2
```

for testing input:

```shell
make test d=12
```

```shell
make test d=12 p=1
```

## 📑 Contents

* `Makefile` - used for duplicating the day template folder and running the solver script for a given day.

### 📂 aoc_framework

A framework to automate repetitive tasks when solving the puzzles. For more information, refer to the [framework repo](https://github.com/appinha/aoc_framework).

### 📂 aoc_lib

A library with useful tools for solving the puzzles. For more information, refer to the [lib repo](https://github.com/appinha/aoc_lib).

### 📂 day_template

* `input_test.txt` - text file containing input from tests given in the puzzle.
* `input.txt` - text file containing my personal input for the puzzle.
* `main.py` - Python class that implements the code for solving the puzzle.
* `README.md` - markup file containing a summary and link to the puzzle.
* `solutions.txt` - text file containing the solutions for my personal puzzle input.

## 🌟 What is *Advent of Code*?

	🚀 TLDR: an online event where a two-part programming puzzle is released each day from Dec 1st to the 25th.

[Advent of Code](http://adventofcode.com) is an online event created by [Eric Wastl](http://was.tl/). In his words:

> Advent of Code is an Advent calendar of small programming puzzles for a variety of skill sets and skill levels that can be solved in any programming language you like. People use them as a speed contest, interview prep, company training, university coursework, practice problems, or to challenge each other.

Source: https://adventofcode.com/about
