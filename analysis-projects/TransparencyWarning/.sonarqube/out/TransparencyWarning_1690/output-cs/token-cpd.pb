š
¤C:\Users\c46q812\Documents\LocalRepository\MSUSEL\msusel-security-quamocohelloworld\analysis-projects\TransparencyWarning\TransparencyWarning\TransparencyWarning.cs
	namespace 	
TransparencyWarning
 
{ 
public 

	interface 

IInterface 
{ 
void &
TransparentInterfaceMethod '
(' (
)( )
;) *
[

 	
SecurityCritical

	 
]

 
void #
CriticalInterfaceMethod $
($ %
)% &
;& '
} 
public 

class 
Base 
{ 
public 
virtual 
void 
TransparentVirtual .
(. /
)/ 0
{1 2
}3 4
[ 	
SecurityCritical	 
] 
public 
virtual 
void 
CriticalVirtual +
(+ ,
), -
{. /
}0 1
} 
public 

class 
Derived 
: 
Base 
,  

IInterface! +
{ 
public 
Derived 
( 
) 
{ 	
Console 
. 
	WriteLine 
( 
$str :
): ;
;; <
} 	
[!! 	
SecurityCritical!!	 
]!! 
public"" 
void"" &
TransparentInterfaceMethod"" .
("". /
)""/ 0
{""1 2
Console""3 :
."": ;
	WriteLine""; D
(""D E
$str""E n
)""n o
;""o p
}""q r
public(( 
void(( #
CriticalInterfaceMethod(( +
(((+ ,
)((, -
{((. /
Console((0 7
.((7 8
	WriteLine((8 A
(((A B
$str((B h
)((h i
;((i j
}((k l
[.. 	
SecurityCritical..	 
].. 
public// 
override// 
void// 
TransparentVirtual// /
(/// 0
)//0 1
{//2 3
Console//4 ;
.//; <
	WriteLine//< E
(//E F
$str//F g
)//g h
;//h i
}//j k
public55 
override55 
void55 
CriticalVirtual55 ,
(55, -
)55- .
{55/ 0
Console551 8
.558 9
	WriteLine559 B
(55B C
$str55C a
)55a b
;55b c
}55d e
}66 
class88 	
TransparencyWarning88
 
{99 
static:: 
void:: 
Main:: 
(:: 
string:: 
[::  
]::  !
args::" &
)::& '
{;; 	
Console<< 
.<< 
	WriteLine<< 
(<< 
$str<< E
)<<E F
;<<F G
Derived== 
derived== 
=== 
new== !
Derived==" )
(==) *
)==* +
;==+ ,
derived>> 
.>> &
TransparentInterfaceMethod>> .
(>>. /
)>>/ 0
;>>0 1
derived?? 
.?? #
CriticalInterfaceMethod?? +
(??+ ,
)??, -
;??- .
derived@@ 
.@@ 
TransparentVirtual@@ &
(@@& '
)@@' (
;@@( )
derivedAA 
.AA 
CriticalVirtualAA #
(AA# $
)AA$ %
;AA% &
}BB 	
}CC 
}DD Ô
¨C:\Users\c46q812\Documents\LocalRepository\MSUSEL\msusel-security-quamocohelloworld\analysis-projects\TransparencyWarning\TransparencyWarning\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str .
). /
]/ 0
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *