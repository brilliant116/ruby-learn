
<=>, Combined comparison operator. Returns 0 if first operand equals second, 1 if first operand is greater than the second and -1 if first operand is less than the second.

eg: (10 <=> 20) returns -1.

===, Used to test equality within a when clause of a case statement.

eg: (1...10) === 5 returns true.

.eql?, True if the receiver and argument have both the same type and equal values.

eg: 1 == 1.0 returns true, but 1.eql?(1.0) is false.

equal?, True if the receiver and argument have the same object id.

eg: if aObj is duplicate of bObj then aObj == bObj is true, a.equal?bObj is false but a.equal?aObj is true.

### bitwise operators

a    =  0011 1100(2) = 60
b    =  0000 1101(2) = 13

`&`, Binary AND Operator copies a bit to the result if it exists in both operands.

eg: (a & b) will give 12, which is 0000 1100

`|`, Binary OR Operator copies a bit if it exists in either operand.

eg: (a | b) will give 61, which is 0011 1101

`^`, Binary XOR Operator copies the bit if it is set in one operand but not both.

eg: (a ^ b) will give 49, which is 0011 0001

`~`, Binary Ones Complement Operator is unary and has the effect of 'flipping' bits.

eg: (~a) will give -61, which is 1100 0011 in 2's complement form due to a signed binary number.

`<<`, Binary Left Shift Operator. The left operands value is moved left by the number of bits specified by the right operand.

eg: a << 2 will give 240, which is 1111 0000

`>>`, Binary Right Shift Operator. The left operands value is moved right by the number of bits specified by the right operand.

eg: a >> 2 will give 15, which is 0000 1111

### ternary operators

`? :`, (If Condition is true) ? (Then value X) : (Otherwise value Y)

### logical operators

`and`, `or`, `&&`, `||`, `!`, `not`
