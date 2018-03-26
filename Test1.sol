/**
 * The RomanNumbers contract does this and that...
 */
import "github.com/Arachnid/solidity-stringutils/strings.sol";

contract RomanNumbers {
    
    using strings for *;
    

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
		while (decimal >= 500) {
			if(decimal >= 900) {
				res = res.toSlice().concat("CM".toSlice());
				decimal -= 900;
				break;
			}
        	res = res.toSlice().concat("D".toSlice());
        	decimal -= 500;
    	}
    	while (decimal >= 100) {
    		if (decimal >= 400){
    			res = res.toSlice().concat("CD".toSlice());
        		decimal -= 400;
        		break;
    		}
        	res = res.toSlice().concat("C".toSlice());
        	decimal -= 100;
    	}
   		while (decimal >= 50) {
   			if(res >= 90){
   				res = res.toSlice().concat("XC".toSlice());
        		decimal -= 90;
        		break;
   			}
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

	uint[] public arab = [1,4,5,9,10,40,50,90,100,400,500,900,1000];
	string[] public roman = ["I","IV","V","IX","X","XL","L","XC","C","CD","D","CM","M"];


	function ConvertToRomanNumbers2 (uint decimal) public view returns(string res) {
		uint iterator = arab[arab.length-1];
		while (decimal > 0){
			if(decimal >= arab[iterator]){
				res = res.toSlice().concat(roman[iterator].toSlice());
				decimal -= arab[iterator];
			}
			else{
				iterator--;
			}
		}
	}
	
}
