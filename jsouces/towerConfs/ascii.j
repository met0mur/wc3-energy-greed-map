library asciiTable initializer init uses general {
	struct ascii {
		
		integer numb;
		string char;
		
		static ascii array values
		static integer pointer = 0;
		
		static ascii getFromKey (integer i) {
            values[i]=ascii.create();
			return values[i];
        }
		
		static integer getByChar (string char) {
            if (char == "0") {
				return 48;
			} elseif (char == "1") {
				return 49;
			} elseif (char == "2") {
				return 50;
			} elseif (char == "3") {
				return 51;
			} elseif (char == "4") {
				return 52;
			} elseif (char == "5") {
				return 53;
			} elseif (char == "6") {
				return 54;
			} elseif (char == "7") {
				return 55;
			} elseif (char == "8") {
				return 56;
			} elseif (char == "9") {
				return 57;
			} elseif (char == "A") {
				return 65;
			} elseif (char == "B") {
				return 66;
			} elseif (char == "C") {
				return 67;
			} elseif (char == "D") {
				return 68;
			} elseif (char == "E") {
				return 69;
			} elseif (char == "F") {
				return 70;
			} elseif (char == "G") {
				return 71;
			} elseif (char == "H") {
				return 72;
			} elseif (char == "I") {
				return 73;
			} elseif (char == "J") {
				return 74;
			} elseif (char == "K") {
				return 75;
			} elseif (char == "L") {
				return 76;
			} elseif (char == "M") {
				return 77;
			} elseif (char == "N") {
				return 78;
			} elseif (char == "O") {
				return 79;
			} elseif (char == "P") {
				return 80;
			} elseif (char == "Q") {
				return 81;
			} elseif (char == "R") {
				return 82;
			} elseif (char == "S") {
				return 83;
			} elseif (char == "T") {
				return 84;
			} elseif (char == "U") {
				return 85;
			} elseif (char == "V") {
				return 86;
			} elseif (char == "W") {
				return 87;
			} elseif (char == "X") {
				return 88;
			} elseif (char == "W") {
				return 89;
			} elseif (char == "Z") {
				return 90;
			} elseif (char == "a") {
				return 97;
			} elseif (char == "b") {
				return 98;
			} elseif (char == "c") {
				return 99;
			} elseif (char == "d") {
				return 100;
			} elseif (char == "e") {
				return 101;
			} elseif (char == "f") {
				return 102;
			} elseif (char == "g") {
				return 103;
			} elseif (char == "h") {
				return 104;
			} elseif (char == "i") {
				return 105;
			} elseif (char == "j") {
				return 106;
			} elseif (char == "k") {
				return 107;
			} elseif (char == "l") {
				return 108;
			} elseif (char == "m") {
				return 109;
			} elseif (char == "n") {
				return 110;
			} elseif (char == "o") {
				return 111;
			} elseif (char == "p") {
				return 112;
			} elseif (char == "q") {
				return 113;
			} elseif (char == "r") {
				return 114;
			} elseif (char == "s") {
				return 115;
			} elseif (char == "t") {
				return 116;
			} elseif (char == "u") {
				return 117;
			} elseif (char == "v") {
				return 118;
			} elseif (char == "w") {
				return 119;
			} elseif (char == "x") {
				return 120;
			} elseif (char == "w") {
				return 121;
			} elseif (char == "z") {
				return 122;
			}
			
			return 0;
        }
		
		static integer string2int (string id) {
            integer result = 0;
			integer factor = 1;
			integer i = 4;
			whilenot (i-- == 0) {
				result += factor * getByChar(SubString(id, i, i+1));
				factor *= 256;
			}
			return result;
        }
		
	}
	
	private nothing init() {
		ascii s;
		s = ascii.getFromKey(1)
		s.numb=48
		s.char="0"
		s = ascii.getFromKey(2)
		s.numb=49
		s.char="1"
		s = ascii.getFromKey(3)
		s.numb=50
		s.char="2"
		s = ascii.getFromKey(4)
		s.numb=51
		s.char="3"
		s = ascii.getFromKey(5)
		s.numb=52
		s.char="4"
		s = ascii.getFromKey(6)
		s.numb=53
		s.char="5"
		s = ascii.getFromKey(7)
		s.numb=54
		s.char="6"
		s = ascii.getFromKey(8)
		s.numb=55
		s.char="7"
		s = ascii.getFromKey(9)
		s.numb=56
		s.char="8"
		s = ascii.getFromKey(10)
		s.numb=57
		s.char="9"
		s = ascii.getFromKey(11)
		s.numb=65
		s.char="A"
		s = ascii.getFromKey(12)
		s.numb=66
		s.char="B"
		s = ascii.getFromKey(13)
		s.numb=67
		s.char="C"
		s = ascii.getFromKey(14)
		s.numb=68
		s.char="D"
		s = ascii.getFromKey(15)
		s.numb=69
		s.char="E"
		s = ascii.getFromKey(16)
		s.numb=70
		s.char="F"
		s = ascii.getFromKey(17)
		s.numb=71
		s.char="G"
		s = ascii.getFromKey(18)
		s.numb=72
		s.char="H"
		s = ascii.getFromKey(19)
		s.numb=73
		s.char="I"
		s = ascii.getFromKey(20)
		s.numb=74
		s.char="J"
		s = ascii.getFromKey(21)
		s.numb=75
		s.char="K"
		s = ascii.getFromKey(22)
		s.numb=76
		s.char="L"
		s = ascii.getFromKey(23)
		s.numb=77
		s.char="M"
		s = ascii.getFromKey(24)
		s.numb=78
		s.char="N"
		s = ascii.getFromKey(25)
		s.numb=79
		s.char="O"
		s = ascii.getFromKey(26)
		s.numb=80
		s.char="P"
		s = ascii.getFromKey(27)
		s.numb=81
		s.char="Q"
		s = ascii.getFromKey(28)
		s.numb=82
		s.char="R"
		s = ascii.getFromKey(29)
		s.numb=83
		s.char="S"
		s = ascii.getFromKey(30)
		s.numb=84
		s.char="T"
		s = ascii.getFromKey(31)
		s.numb=85
		s.char="U"
		s = ascii.getFromKey(32)
		s.numb=86
		s.char="V"
		s = ascii.getFromKey(33)
		s.numb=87
		s.char="W"
		s = ascii.getFromKey(34)
		s.numb=88
		s.char="X"
		s = ascii.getFromKey(35)
		s.numb=89
		s.char="Y"
		s = ascii.getFromKey(36)
		s.numb=90
		s.char="Z"
		s = ascii.getFromKey(37)
		s.numb=97
		s.char="a"
		s = ascii.getFromKey(38)
		s.numb=98
		s.char="b"
		s = ascii.getFromKey(39)
		s.numb=99
		s.char="c"
		s = ascii.getFromKey(40)
		s.numb=100
		s.char="d"
		s = ascii.getFromKey(41)
		s.numb=101
		s.char="e"
		s = ascii.getFromKey(42)
		s.numb=102
		s.char="f"
		s = ascii.getFromKey(43)
		s.numb=103
		s.char="g"
		s = ascii.getFromKey(44)
		s.numb=104
		s.char="h"
		s = ascii.getFromKey(45)
		s.numb=105
		s.char="i"
		s = ascii.getFromKey(46)
		s.numb=106
		s.char="j"
		s = ascii.getFromKey(47)
		s.numb=107
		s.char="k"
		s = ascii.getFromKey(48)
		s.numb=108
		s.char="l"
		s = ascii.getFromKey(49)
		s.numb=109
		s.char="m"
		s = ascii.getFromKey(50)
		s.numb=110
		s.char="n"
		s = ascii.getFromKey(51)
		s.numb=111
		s.char="o"
		s = ascii.getFromKey(52)
		s.numb=112
		s.char="p"
		s = ascii.getFromKey(53)
		s.numb=113
		s.char="q"
		s = ascii.getFromKey(54)
		s.numb=114
		s.char="r"
		s = ascii.getFromKey(55)
		s.numb=115
		s.char="s"
		s = ascii.getFromKey(56)
		s.numb=116
		s.char="t"
		s = ascii.getFromKey(57)
		s.numb=117
		s.char="u"
		s = ascii.getFromKey(58)
		s.numb=118
		s.char="v"
		s = ascii.getFromKey(59)
		s.numb=119
		s.char="w"
		s = ascii.getFromKey(60)
		s.numb=120
		s.char="x"
		s = ascii.getFromKey(61)
		s.numb=121
		s.char="y"
		s = ascii.getFromKey(62)
		s.numb=122
		s.char="z"
	}

}