Notes taken from the Solidy docs: https://solidity.readthedocs.io/en/develop/types.html#

## Value Types (passed by value):
### Boolean: 
* `bool`

### Integers: 
* `int` and `uint`, signed and unsigned, 256 bit if no bits specified, otherwise use `uint8`, `unint16`, `unit24` etc. max is 256

### Fixed Point Numbers: 
* Not fully supported (A certain number of bits are allocated to the integer (left of decimal) and a certain number to the fractional part (right of decimal)

### Address:
* `address` a type for a 20 byte Ethereum address.
* Addresses serve as a base for all contracts. 
* They have members - Properties: `balance`; Functions: `transfer`

### Fixed-size byte arrays:

### Dynamically sized byte arrays:

### Address Literals:

### Rational and Integer Literals:

### String Literals:

### Hexadecimal Literals:

### Enums: 

### Function Types:


## Reference Types (Cpmplex Types so copying, as in values, would be expensive):
Note: Data location is important. Should it be stored in 'memory' or 'storage'?

### Arrays:

### Structs:

## Mappings:



