swift_delegation_pattern
========================

Examples of delegation using Swift

There are four variants covered, each using a slightly different approach for declaring the delegate (reverse) refernce.
Each variant is stored in a seperate branch.

Master - this example is ambiguous and probably causes a retain cycle

Variant1 - a method commonly seen on the internet (at the time of writing), that also supports ObjectiveC compatibility

Variant2 - my preferred method as it is pure Swift, defining a protocol to be a class protocol (such that a value type cannot conform to it)

Variant3 - a more type specific variant on (2), where the delegate class type and protocol are both specififed.

A key point from all three variants is how the compiler prevents errors, removing the need for run-time checks such as conformance to a protocol.

