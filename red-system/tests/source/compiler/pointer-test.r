REBOL [
	Title:   "Red/System infix functions test script"
	Author:  "Nenad Rakocevic"
	File: 	 %pointer-test.reds
	Rights:  "Copyright (C) 2012 Nenad Rakocevic & Peter W A Wood. All rights reserved."
	License: "BSD-3 - https://github.com/dockimbel/Red/blob/origin/BSD-3-License.txt"
]

change-dir %../

~~~start-file~~~ "pointer-compile"


===start-group=== "errors"

	--test-- "pointer error 1"
	--compile-this {
	    f: func [
	      [typed]
	      count           [integer!]
	      list            [typed-value!]
	    ][
	      pi: declare pointer! [integer!]
	      pi: as pointer! [integer!] list/value
	    ]
	    f [:i]
	  }
	--assert-msg? "*** Compilation Error: cannot get a pointer on an undefined identifier"
	  --clean
	
	--test-- "pointer error 2"
	--compile-this {
	    pi: declare pointer! [integer!]
	    pi: :i
	  }
	--assert-msg? "*** Compilation Error: cannot get a pointer on an undefined identifier"
	  --clean
===end-group===

~~~end-file~~~


