pragma solidity ^0.4.17;

contract SimpleStorage {
	uint logger;
	event Odd();
	event Even();

	function set(uint x) public {
		logger = x;
		if (x % 2 == 0) {
			Odd();
		} else {
			Even();
		}
	}

	function get() constant public returns (uint) {
		return logger;
	}
}