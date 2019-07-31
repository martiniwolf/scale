# hps-cucumber-ruby
[![Build Status](https://travis-ci.org/hiptest/hps-cucumber-ruby.svg?branch=master)](https://travis-ci.org/hiptest/hps-cucumber-ruby)

Hiptest publisher samples with Cucumber/Ruby


In this repository you'll find tests generated in Cucumber/Ruby format from [Hiptest](https://hiptest.com), using [Hiptest publisher](https://github.com/hiptest/hiptest-publisher).

The goals are:

 * to show how tests are exported in Cucumber/Ruby.
 * to check exports work out of the box (well, with implemented actionwords)

System under test
------------------

The SUT is a (not that much) simple coffee machine. You start it, you ask for a coffee and you get it, sometimes. But most of times you have to add water or beans, empty the grounds. You have an automatic expresso machine at work or at home? So you know how it goes :-)

Update tests
-------------


To update the tests:

    hiptest-publisher -c cucumber.conf --only=features,step_definitions

The tests are generated in the [``features``](https://github.com/hiptest/hps-cucumber-ruby/tree/master/features) directory.

or 

    bundle exec cucumber --format json --out results.json

Run tests
---------


To build the project and run the tests, use the following command:

    bundle exec cucumber --format junit --out results

or to obtain json format

    bundle exec cucumber --format json --out results.json

The SUT implementation can be seen in [``src/coffee_machine.rb``](https://github.com/hiptest/hps-cucumber-ruby/blob/master/src/coffee_machine.rb)

The test report is generated in the ```results/``` folder.

