all:
	@make -C aoc_framework day=$(d) part=$(p)

test:
	@make -C aoc_framework test day=$(d) part=$(p)

new:
	@make -C aoc_framework new day=$(d)
