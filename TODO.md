High priority:

* Dead code elimination. Currently things like this error:
```
x <- flip 0.5;
y <- flip 0.7;
if x then reward 5 else reward 2
```

because of some array length mismatch.

* Deambiguating ambiguous grammar 

An expression like this fails to parse:
```
x <- flip 0.5;
y <- if x then flip 0.2 else flip 0.7;
if y then reward 3 else reward 212341234
```
and instead needs help in the form of `()`:
```
x <- flip 0.5;
y <- (if x then flip 0.2 else flip 0.7);
if y then reward 3 else reward 212341234
```

