\ENCODING=ISO-8859-1
\Problem name: ILOG.CPLEX

Minimize
 obj1: 1.79769313486232e+308 x(0)(0)#0 + 7 x(0)(1)#1 + 3 x(0)(2)#2
       + 4 x(0)(3)#3 + 10 x(0)(4)#4 + 6 x(0)(5)#5 + 7 x(0)(6)#6 + 7 x(0)(7)#7
       + 4 x(0)(8)#8 + 9 x(1)(0)#9 + 1.79769313486232e+308 x(1)(1)#10
       + 10 x(1)(2)#11 + 6 x(1)(3)#12 + 9 x(1)(4)#13 + 5 x(1)(5)#14
       + 4 x(1)(6)#15 + 4 x(1)(7)#16 + 6 x(1)(8)#17 + 5 x(2)(0)#18
       + 4 x(2)(1)#19 + 1.79769313486232e+308 x(2)(2)#20 + x(2)(3)#21
       + 10 x(2)(4)#22 + 6 x(2)(5)#23 + 7 x(2)(6)#24 + 5 x(2)(7)#25
       + 4 x(2)(8)#26 + 4 x(3)(0)#27 + 8 x(3)(1)#28 + 7 x(3)(2)#29
       + 1.79769313486232e+308 x(3)(3)#30 + 9 x(3)(4)#31 + 8 x(3)(5)#32
       + 9 x(3)(6)#33 + 10 x(3)(7)#34 + 8 x(3)(8)#35 + 6 x(4)(0)#36
       + 5 x(4)(1)#37 + 9 x(4)(2)#38 + 5 x(4)(3)#39
       + 1.79769313486232e+308 x(4)(4)#40 + 10 x(4)(5)#41 + 6 x(4)(6)#42
       + 6 x(4)(7)#43 + 3 x(4)(8)#44 + 8 x(5)(0)#45 + 3 x(5)(1)#46
       + 5 x(5)(2)#47 + 4 x(5)(3)#48 + 8 x(5)(4)#49
       + 1.79769313486232e+308 x(5)(5)#50 + 7 x(5)(6)#51 + 5 x(5)(7)#52
       + 8 x(5)(8)#53 + 5 x(6)(0)#54 + 5 x(6)(1)#55 + 7 x(6)(2)#56
       + 7 x(6)(3)#57 + 6 x(6)(4)#58 + 8 x(6)(5)#59
       + 1.79769313486232e+308 x(6)(6)#60 + 3 x(6)(7)#61 + 6 x(6)(8)#62
       + 6 x(7)(0)#63 + 3 x(7)(1)#64 + 9 x(7)(2)#65 + 5 x(7)(3)#66
       + 12 x(7)(4)#67 + 8 x(7)(5)#68 + 7 x(7)(6)#69
       + 1.79769313486232e+308 x(7)(7)#70 + 7 x(7)(8)#71 + 5 x(8)(0)#72
       + 6 x(8)(1)#73 + 8 x(8)(2)#74 + 8 x(8)(3)#75 + 6 x(8)(4)#76
       + 9 x(8)(5)#77 + 3 x(8)(6)#78 + 3 x(8)(7)#79
       + 1.79769313486232e+308 x(8)(8)#80
Subject To
 c1:  x(1)(0)#9 + x(2)(0)#18 + x(3)(0)#27 + x(4)(0)#36 + x(5)(0)#45
      + x(6)(0)#54 + x(7)(0)#63 + x(8)(0)#72  = 1
 c2:  x(0)(1)#1 + x(0)(2)#2 + x(0)(3)#3 + x(0)(4)#4 + x(0)(5)#5 + x(0)(6)#6
      + x(0)(7)#7 + x(0)(8)#8  = 1
 c3:  x(0)(1)#1 + x(2)(1)#19 + x(3)(1)#28 + x(4)(1)#37 + x(5)(1)#46
      + x(6)(1)#55 + x(7)(1)#64 + x(8)(1)#73  = 1
 c4:  x(1)(0)#9 + x(1)(2)#11 + x(1)(3)#12 + x(1)(4)#13 + x(1)(5)#14
      + x(1)(6)#15 + x(1)(7)#16 + x(1)(8)#17  = 1
 c5:  x(0)(2)#2 + x(1)(2)#11 + x(3)(2)#29 + x(4)(2)#38 + x(5)(2)#47
      + x(6)(2)#56 + x(7)(2)#65 + x(8)(2)#74  = 1
 c6:  x(2)(0)#18 + x(2)(1)#19 + x(2)(3)#21 + x(2)(4)#22 + x(2)(5)#23
      + x(2)(6)#24 + x(2)(7)#25 + x(2)(8)#26  = 1
 c7:  x(0)(3)#3 + x(1)(3)#12 + x(2)(3)#21 + x(4)(3)#39 + x(5)(3)#48
      + x(6)(3)#57 + x(7)(3)#66 + x(8)(3)#75  = 1
 c8:  x(3)(0)#27 + x(3)(1)#28 + x(3)(2)#29 + x(3)(4)#31 + x(3)(5)#32
      + x(3)(6)#33 + x(3)(7)#34 + x(3)(8)#35  = 1
 c9:  x(0)(4)#4 + x(1)(4)#13 + x(2)(4)#22 + x(3)(4)#31 + x(5)(4)#49
      + x(6)(4)#58 + x(7)(4)#67 + x(8)(4)#76  = 1
 c10: x(4)(0)#36 + x(4)(1)#37 + x(4)(2)#38 + x(4)(3)#39 + x(4)(5)#41
      + x(4)(6)#42 + x(4)(7)#43 + x(4)(8)#44  = 1
 c11: x(0)(5)#5 + x(1)(5)#14 + x(2)(5)#23 + x(3)(5)#32 + x(4)(5)#41
      + x(6)(5)#59 + x(7)(5)#68 + x(8)(5)#77  = 1
 c12: x(5)(0)#45 + x(5)(1)#46 + x(5)(2)#47 + x(5)(3)#48 + x(5)(4)#49
      + x(5)(6)#51 + x(5)(7)#52 + x(5)(8)#53  = 1
 c13: x(0)(6)#6 + x(1)(6)#15 + x(2)(6)#24 + x(3)(6)#33 + x(4)(6)#42
      + x(5)(6)#51 + x(7)(6)#69 + x(8)(6)#78  = 1
 c14: x(6)(0)#54 + x(6)(1)#55 + x(6)(2)#56 + x(6)(3)#57 + x(6)(4)#58
      + x(6)(5)#59 + x(6)(7)#61 + x(6)(8)#62  = 1
 c15: x(0)(7)#7 + x(1)(7)#16 + x(2)(7)#25 + x(3)(7)#34 + x(4)(7)#43
      + x(5)(7)#52 + x(6)(7)#61 + x(8)(7)#79  = 1
 c16: x(7)(0)#63 + x(7)(1)#64 + x(7)(2)#65 + x(7)(3)#66 + x(7)(4)#67
      + x(7)(5)#68 + x(7)(6)#69 + x(7)(8)#71  = 1
 c17: x(0)(8)#8 + x(1)(8)#17 + x(2)(8)#26 + x(3)(8)#35 + x(4)(8)#44
      + x(5)(8)#53 + x(6)(8)#62 + x(7)(8)#71  = 1
 c18: x(8)(0)#72 + x(8)(1)#73 + x(8)(2)#74 + x(8)(3)#75 + x(8)(4)#76
      + x(8)(5)#77 + x(8)(6)#78 + x(8)(7)#79  = 1
 c19: 8 x(1)(2)#11 + x1#81 - x2#82 <= 7
 c20: 8 x(1)(3)#12 + x1#81 - x84#83 <= 7
 c21: 8 x(1)(4)#13 + x1#81 - x85#84 <= 7
 c22: 8 x(1)(5)#14 + x1#81 - x86#85 <= 7
 c23: 8 x(1)(6)#15 + x1#81 - x87#86 <= 7
 c24: 8 x(1)(7)#16 + x1#81 - x88#87 <= 7
 c25: 8 x(1)(8)#17 + x1#81 - x89#88 <= 7
 c26: 8 x(2)(1)#19 - x1#81 + x2#82 <= 7
 c27: 8 x(2)(3)#21 + x2#82 - x84#83 <= 7
 c28: 8 x(2)(4)#22 + x2#82 - x85#84 <= 7
 c29: 8 x(2)(5)#23 + x2#82 - x86#85 <= 7
 c30: 8 x(2)(6)#24 + x2#82 - x87#86 <= 7
 c31: 8 x(2)(7)#25 + x2#82 - x88#87 <= 7
 c32: 8 x(2)(8)#26 + x2#82 - x89#88 <= 7
 c33: 8 x(3)(1)#28 - x1#81 + x84#83 <= 7
 c34: 8 x(3)(2)#29 - x2#82 + x84#83 <= 7
 c35: 8 x(3)(4)#31 + x84#83 - x85#84 <= 7
 c36: 8 x(3)(5)#32 + x84#83 - x86#85 <= 7
 c37: 8 x(3)(6)#33 + x84#83 - x87#86 <= 7
 c38: 8 x(3)(7)#34 + x84#83 - x88#87 <= 7
 c39: 8 x(3)(8)#35 + x84#83 - x89#88 <= 7
 c40: 8 x(4)(1)#37 - x1#81 + x85#84 <= 7
 c41: 8 x(4)(2)#38 - x2#82 + x85#84 <= 7
 c42: 8 x(4)(3)#39 - x84#83 + x85#84 <= 7
 c43: 8 x(4)(5)#41 + x85#84 - x86#85 <= 7
 c44: 8 x(4)(6)#42 + x85#84 - x87#86 <= 7
 c45: 8 x(4)(7)#43 + x85#84 - x88#87 <= 7
 c46: 8 x(4)(8)#44 + x85#84 - x89#88 <= 7
 c47: 8 x(5)(1)#46 - x1#81 + x86#85 <= 7
 c48: 8 x(5)(2)#47 - x2#82 + x86#85 <= 7
 c49: 8 x(5)(3)#48 - x84#83 + x86#85 <= 7
 c50: 8 x(5)(4)#49 - x85#84 + x86#85 <= 7
 c51: 8 x(5)(6)#51 + x86#85 - x87#86 <= 7
 c52: 8 x(5)(7)#52 + x86#85 - x88#87 <= 7
 c53: 8 x(5)(8)#53 + x86#85 - x89#88 <= 7
 c54: 8 x(6)(1)#55 - x1#81 + x87#86 <= 7
 c55: 8 x(6)(2)#56 - x2#82 + x87#86 <= 7
 c56: 8 x(6)(3)#57 - x84#83 + x87#86 <= 7
 c57: 8 x(6)(4)#58 - x85#84 + x87#86 <= 7
 c58: 8 x(6)(5)#59 - x86#85 + x87#86 <= 7
 c59: 8 x(6)(7)#61 + x87#86 - x88#87 <= 7
 c60: 8 x(6)(8)#62 + x87#86 - x89#88 <= 7
 c61: 8 x(7)(1)#64 - x1#81 + x88#87 <= 7
 c62: 8 x(7)(2)#65 - x2#82 + x88#87 <= 7
 c63: 8 x(7)(3)#66 - x84#83 + x88#87 <= 7
 c64: 8 x(7)(4)#67 - x85#84 + x88#87 <= 7
 c65: 8 x(7)(5)#68 - x86#85 + x88#87 <= 7
 c66: 8 x(7)(6)#69 - x87#86 + x88#87 <= 7
 c67: 8 x(7)(8)#71 + x88#87 - x89#88 <= 7
 c68: 8 x(8)(1)#73 - x1#81 + x89#88 <= 7
 c69: 8 x(8)(2)#74 - x2#82 + x89#88 <= 7
 c70: 8 x(8)(3)#75 - x84#83 + x89#88 <= 7
 c71: 8 x(8)(4)#76 - x85#84 + x89#88 <= 7
 c72: 8 x(8)(5)#77 - x86#85 + x89#88 <= 7
 c73: 8 x(8)(6)#78 - x87#86 + x89#88 <= 7
 c74: 8 x(8)(7)#79 - x88#87 + x89#88 <= 7
Bounds
 0 <= x(0)(0)#0 <= 1
 0 <= x(0)(1)#1 <= 1
 0 <= x(0)(2)#2 <= 1
 0 <= x(0)(3)#3 <= 1
 0 <= x(0)(4)#4 <= 1
 0 <= x(0)(5)#5 <= 1
 0 <= x(0)(6)#6 <= 1
 0 <= x(0)(7)#7 <= 1
 0 <= x(0)(8)#8 <= 1
 0 <= x(1)(0)#9 <= 1
 0 <= x(1)(1)#10 <= 1
 0 <= x(1)(2)#11 <= 1
 0 <= x(1)(3)#12 <= 1
 0 <= x(1)(4)#13 <= 1
 0 <= x(1)(5)#14 <= 1
 0 <= x(1)(6)#15 <= 1
 0 <= x(1)(7)#16 <= 1
 0 <= x(1)(8)#17 <= 1
 0 <= x(2)(0)#18 <= 1
 0 <= x(2)(1)#19 <= 1
 0 <= x(2)(2)#20 <= 1
 0 <= x(2)(3)#21 <= 1
 0 <= x(2)(4)#22 <= 1
 0 <= x(2)(5)#23 <= 1
 0 <= x(2)(6)#24 <= 1
 0 <= x(2)(7)#25 <= 1
 0 <= x(2)(8)#26 <= 1
 0 <= x(3)(0)#27 <= 1
 0 <= x(3)(1)#28 <= 1
 0 <= x(3)(2)#29 <= 1
 0 <= x(3)(3)#30 <= 1
 0 <= x(3)(4)#31 <= 1
 0 <= x(3)(5)#32 <= 1
 0 <= x(3)(6)#33 <= 1
 0 <= x(3)(7)#34 <= 1
 0 <= x(3)(8)#35 <= 1
 0 <= x(4)(0)#36 <= 1
 0 <= x(4)(1)#37 <= 1
 0 <= x(4)(2)#38 <= 1
 0 <= x(4)(3)#39 <= 1
 0 <= x(4)(4)#40 <= 1
 0 <= x(4)(5)#41 <= 1
 0 <= x(4)(6)#42 <= 1
 0 <= x(4)(7)#43 <= 1
 0 <= x(4)(8)#44 <= 1
 0 <= x(5)(0)#45 <= 1
 0 <= x(5)(1)#46 <= 1
 0 <= x(5)(2)#47 <= 1
 0 <= x(5)(3)#48 <= 1
 0 <= x(5)(4)#49 <= 1
 0 <= x(5)(5)#50 <= 1
 0 <= x(5)(6)#51 <= 1
 0 <= x(5)(7)#52 <= 1
 0 <= x(5)(8)#53 <= 1
 0 <= x(6)(0)#54 <= 1
 0 <= x(6)(1)#55 <= 1
 0 <= x(6)(2)#56 <= 1
 0 <= x(6)(3)#57 <= 1
 0 <= x(6)(4)#58 <= 1
 0 <= x(6)(5)#59 <= 1
 0 <= x(6)(6)#60 <= 1
 0 <= x(6)(7)#61 <= 1
 0 <= x(6)(8)#62 <= 1
 0 <= x(7)(0)#63 <= 1
 0 <= x(7)(1)#64 <= 1
 0 <= x(7)(2)#65 <= 1
 0 <= x(7)(3)#66 <= 1
 0 <= x(7)(4)#67 <= 1
 0 <= x(7)(5)#68 <= 1
 0 <= x(7)(6)#69 <= 1
 0 <= x(7)(7)#70 <= 1
 0 <= x(7)(8)#71 <= 1
 0 <= x(8)(0)#72 <= 1
 0 <= x(8)(1)#73 <= 1
 0 <= x(8)(2)#74 <= 1
 0 <= x(8)(3)#75 <= 1
 0 <= x(8)(4)#76 <= 1
 0 <= x(8)(5)#77 <= 1
 0 <= x(8)(6)#78 <= 1
 0 <= x(8)(7)#79 <= 1
 0 <= x(8)(8)#80 <= 1
Binaries
 x(0)(0)#0  x(0)(1)#1  x(0)(2)#2  x(0)(3)#3  x(0)(4)#4  x(0)(5)#5  x(0)(6)#6 
 x(0)(7)#7  x(0)(8)#8  x(1)(0)#9  x(1)(1)#10  x(1)(2)#11  x(1)(3)#12 
 x(1)(4)#13  x(1)(5)#14  x(1)(6)#15  x(1)(7)#16  x(1)(8)#17  x(2)(0)#18 
 x(2)(1)#19  x(2)(2)#20  x(2)(3)#21  x(2)(4)#22  x(2)(5)#23  x(2)(6)#24 
 x(2)(7)#25  x(2)(8)#26  x(3)(0)#27  x(3)(1)#28  x(3)(2)#29  x(3)(3)#30 
 x(3)(4)#31  x(3)(5)#32  x(3)(6)#33  x(3)(7)#34  x(3)(8)#35  x(4)(0)#36 
 x(4)(1)#37  x(4)(2)#38  x(4)(3)#39  x(4)(4)#40  x(4)(5)#41  x(4)(6)#42 
 x(4)(7)#43  x(4)(8)#44  x(5)(0)#45  x(5)(1)#46  x(5)(2)#47  x(5)(3)#48 
 x(5)(4)#49  x(5)(5)#50  x(5)(6)#51  x(5)(7)#52  x(5)(8)#53  x(6)(0)#54 
 x(6)(1)#55  x(6)(2)#56  x(6)(3)#57  x(6)(4)#58  x(6)(5)#59  x(6)(6)#60 
 x(6)(7)#61  x(6)(8)#62  x(7)(0)#63  x(7)(1)#64  x(7)(2)#65  x(7)(3)#66 
 x(7)(4)#67  x(7)(5)#68  x(7)(6)#69  x(7)(7)#70  x(7)(8)#71  x(8)(0)#72 
 x(8)(1)#73  x(8)(2)#74  x(8)(3)#75  x(8)(4)#76  x(8)(5)#77  x(8)(6)#78 
 x(8)(7)#79  x(8)(8)#80 
End
