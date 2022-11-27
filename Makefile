all:
	@make -C aoc_framework day=$(d) part=$(p)

.PHONY: test
test:
	@make -C aoc_framework test day=$(d) part=$(p)

.PHONY: new
new:
	@make -C aoc_framework new day=$(d)

.PHONY: input
input:
	@make -C aoc_framework input day=$(d)