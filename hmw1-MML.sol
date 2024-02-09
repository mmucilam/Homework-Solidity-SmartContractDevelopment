pragma solidity ^0.8.0;


// Exercise 2
// Part A

function binaryToDecimalString(binaryString) {
    // Convert binary string
    let binaryArray = binaryString.split('');
    
    // Initializing decimal result
    let decimal = 0;
    
    // Looping through each binary digit
    for (let i = 0; i < binaryArray.length; i++) {
        // If the digit is 1, add 2 raised to the power of its position to the decimal result
        if (binaryArray[i] === '1') {
            decimal += Math.pow(2, binaryArray.length - 1 - i);
        }
    }
    
    return decimal;
}




// Part B

contract BinaryConverter {
    function binaryToDecimal(uint8 binaryNumber) public pure returns (uint8[] memory) {
        // Initializing an array to store the decimal representation of each bit
        uint8[] memory decimals = new uint8[](8);
        
        // Initializing a mask
        uint8 mask = 1;
        
        // Looping through each bit of the binary number
        for (uint8 i = 0; i < 8; i++) {
            // Applying the mask to extract the current bit
            uint8 bit = binaryNumber & mask;
            
            // Storing the decimal representation of the bit
            decimals[i] = bit;
            
            // Shifting the mask one bit to the left for the next iteration
            mask = mask << 1;
        }
        
        return decimals;
    }
}


