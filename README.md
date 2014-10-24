Yet Another Ruby Test Runner (yartr)
=====

None of the ruby test running vim plugins did quite what I wanted, so I made this. It runs vanilla ruby tests on Mac OS X. I can add support for rspec and more configuration options if there is any demand. If you have iTerm, it will run tests in a new iTerm window, otherwise it will just use terminal. It also works for projects that have rails engines inside of the rails app with no extra effort.

## Installation

Copy all of the files to your ~/.vim directory.

## Usage

You must use this from the root directory of your project.

* Press `<Leader>t` to run the test under your cursor if you are editing a ruby test file. You can run this with your cursor anywhere in the test.

* Press `<Leader>T` to run all of the tests in the current file.

## Configuration

To change the default bindings:

* `map <Leader>] :call YartrRunTestSingle()<CR>` change from <Leader>t to <Leader>] for single test runner
* `map <Leader>} :call YartrRunTestAll()<CR>` change from <Leader>T to <Leader>} for all tests runner

## License

Copyright (c) Matt Schartman.  Distributed under the same terms as Vim itself.
See `:help license`.
