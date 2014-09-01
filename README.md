Yet Another Ruby Test Runner (yartr)
=====

None of the ruby test running vim plugins did quite what I wanted, so I made this. It runs vanilla ruby tests on Mac OS X. I can add support for rspec and more configuration options if there is any demand. If you have iTerm, it will run tests in a new iTerm window, otherwise it will just use terminal.

## Installation

Copy all of the files to your ~/.vim directory.

## Usage

* Press `<Leader>t` to run the test under your cursor if you are editing a ruby test file. Make sure your cursor is over the test name word.

* Press `<Leader>T` to run all of the tests in the current file.

## License

Copyright (c) Matt Schartman.  Distributed under the same terms as Vim itself.
See `:help license`.
