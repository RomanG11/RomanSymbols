/**
 * The RomanNumbers contract does this and that...
 */
import "github.com/Arachnid/solidity-stringutils/strings.sol";

contract RomanNumbers {
    
    using strings for *;
    
	string public re;

	/*
	1		I	лат. unus, unum
	5		V	лат. quinque
	10		X	лат. decem
	50		L	лат. quinquaginta
	100		C	лат. centum
	500		D	лат. quingenti
	1000	M	лат. mille
	*/

	function ConvertToRomanNumbers (uint decimal) public view returns(string) {
		string memory res ="";
		while (decimal >= 1000){
			res = res.toSlice().concat("M".toSlice());
			decimal -= 1000;
		}
		while (decimal >= 900){
			res = res.toSlice().concat("CM".toSlice());
			decimal -= 900;
		}
		while (decimal >= 500) {
        	res = res.toSlice().concat("D".toSlice());
        	decimal -= 500;
    	}
    	while (decimal >= 400) {
        	res = res.toSlice().concat("CD".toSlice());
        	decimal -= 400;
    	}
    	while (decimal >= 100) {
        	res = res.toSlice().concat("C".toSlice());
        	decimal -= 100;
    	}
    	while (decimal >= 90) {
        	res = res.toSlice().concat("XC".toSlice());
        	decimal -= 90;
    	}
   		while (decimal >= 50) {
        	res = res.toSlice().concat("L".toSlice());
        	decimal -= 50;
    	}
    	while (decimal >= 40) {
    	    res = res.toSlice().concat("XL".toSlice());
    	    decimal -= 40;
    	}
    	while (decimal >= 10) {
    	    res = res.toSlice().concat("X".toSlice());
    	    decimal -= 10;
    	}
    	while (decimal >= 9) {
       		res = res.toSlice().concat("IX".toSlice());
        	decimal -= 9;
    	}
    	while (decimal >= 5) {
        	res = res.toSlice().concat("V".toSlice());
        	decimal -= 5;
    	}
    	while (decimal >= 4) {
        	res = res.toSlice().concat("IV".toSlice());
        	decimal -= 4;
    	}
    	while (decimal >= 1) {
        	res = res.toSlice().concat("I".toSlice());
        	decimal -= 1;
    	}
    	return res;
	}
}