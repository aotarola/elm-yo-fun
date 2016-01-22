module Main where
import Task
import ElmTest exposing (..)
import Console
import CounterTest exposing (all)

allTests : Test
allTests =
  suite "All tests"
    [ CounterTest.all
    ]

port runner : Signal (Task.Task x ())
port runner =
    Console.run (consoleRunner allTests)
