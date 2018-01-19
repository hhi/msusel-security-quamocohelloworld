œ7
ŒC:\Users\c46q812\Documents\LocalRepository\MSUSEL\msusel-security-quamocohelloworld\analysis-projects\AllFindings\AllFindings\AllFindings.cs
[ 
assembly 	
:	 
(
AllowPartiallyTrustedCallers '
]' (
	namespace 	
AllFindings
 
{ 
public		 

class		 #
ClassRequiringFullTrust		 (
{

 
public 
static 
void 
DoWork !
(! "
)" #
{ 	
Console 
. 
	WriteLine 
( 
$str J
)J K
;K L
} 	
} 
public 

class *
AccessAClassRequiringFullTrust /
{ 
public 
static 
void 
Access !
(! "
)" #
{ 	
NamedPermissionSet 
pset #
=$ %
new& )
NamedPermissionSet* <
(< =
$str= H
)H I
;I J
try 
{ 
pset 
. 
Demand 
( 
) 
; 
} 
catch   
(   
SecurityException   $
e  % &
)  & '
{!! 
Console"" 
."" 
	WriteLine"" !
(""! "
$str""" =
,""= >
e""? @
.""@ A
Message""A H
)""H I
;""I J
}## #
ClassRequiringFullTrust&& #
.&&# $
DoWork&&$ *
(&&* +
)&&+ ,
;&&, -
}'' 	
}(( 
public** 

	interface** 

IInterface** 
{++ 
void,, &
TransparentInterfaceMethod,, '
(,,' (
),,( )
;,,) *
[.. 	
SecurityCritical..	 
].. 
void// #
CriticalInterfaceMethod// $
(//$ %
)//% &
;//& '
}00 
public22 

class22 
Base22 
{33 
public44 
virtual44 
void44 
TransparentVirtual44 .
(44. /
)44/ 0
{441 2
}443 4
[66 	
SecurityCritical66	 
]66 
public77 
virtual77 
void77 
CriticalVirtual77 +
(77+ ,
)77, -
{77. /
}770 1
}88 
public:: 

class:: 
Derived:: 
::: 
Base:: 
,::  

IInterface::! +
{;; 
[@@ 	
SecurityCritical@@	 
]@@ 
publicAA 
voidAA &
TransparentInterfaceMethodAA .
(AA. /
)AA/ 0
{AA1 2
}AA3 4
publicGG 
voidGG #
CriticalInterfaceMethodGG +
(GG+ ,
)GG, -
{GG. /
}GG0 1
[MM 	
SecurityCriticalMM	 
]MM 
publicNN 
overrideNN 
voidNN 
TransparentVirtualNN /
(NN/ 0
)NN0 1
{NN2 3
}NN4 5
publicTT 
overrideTT 
voidTT 
CriticalVirtualTT ,
(TT, -
)TT- .
{TT/ 0
}TT1 2
}UU 
publicWW 

classWW 
MyBadMemberClassWW !
{XX 
[YY 	2
&SuppressUnmanagedCodeSecurityAttributeYY	 /
(YY/ 0
)YY0 1
]YY1 2
publicZZ 
voidZZ 
DoWorkZZ 
(ZZ 
)ZZ 
{[[ 	
FormatHardDisk\\ 
(\\ 
)\\ 
;\\ 
}]] 	
void__ 
FormatHardDisk__ 
(__ 
)__ 
{`` 	
}bb 	
}cc 
[ee 2
&SuppressUnmanagedCodeSecurityAttributeee +
(ee+ ,
)ee, -
]ee- .
publicff 

classff 
MyBadTypeClassff 
{gg 
publichh 
voidhh 
DoWorkhh 
(hh 
)hh 
{ii 	
FormatHardDiskjj 
(jj 
)jj 
;jj 
}kk 	
voidmm 
FormatHardDiskmm 
(mm 
)mm 
{nn 	
}pp 	
}qq 
publicss 

classss &
SuppressIsOnPlatformInvokess +
{tt 
[ww 	2
&SuppressUnmanagedCodeSecurityAttributeww	 /
(ww/ 0
)ww0 1
]ww1 2
[xx 	
	DllImportxx	 
(xx 
$strxx 
)xx  
]xx  !
privatezz 
staticzz 
externzz 
voidzz "
FormatHardDiskzz# 1
(zz1 2
)zz2 3
;zz3 4
public{{ 
void{{ 
DoWork{{ 
({{ 
){{ 
{|| 	
FormatHardDisk}} 
(}} 
)}} 
;}} 
}~~ 	
} 
[
‚‚ 4
&SuppressUnmanagedCodeSecurityAttribute
‚‚ +
(
‚‚+ ,
)
‚‚, -
]
‚‚- .
public
ƒƒ 

class
ƒƒ 
SuppressIsOnType
ƒƒ !
{
„„ 
[
…… 	
	DllImport
……	 
(
…… 
$str
…… 
)
……  
]
……  !
private
‡‡ 
static
‡‡ 
extern
‡‡ 
void
‡‡ "
FormatHardDisk
‡‡# 1
(
‡‡1 2
)
‡‡2 3
;
‡‡3 4
public
ˆˆ 
void
ˆˆ 
DoWork
ˆˆ 
(
ˆˆ 
)
ˆˆ 
{
‰‰ 	
FormatHardDisk
ŠŠ 
(
ŠŠ 
)
ŠŠ 
;
ŠŠ 
}
‹‹ 	
}
ŒŒ 
public
ŽŽ 

class
ŽŽ 
AllFindings
ŽŽ 
{
 
static
 
void
 
Main
 
(
 
string
 
[
  
]
  !
args
" &
)
& '
{
‘‘ 	
Console
’’ 
.
’’ 
	WriteLine
’’ 
(
’’ 
$str
’’ >
)
’’> ?
;
’’? @%
ClassRequiringFullTrust
”” #
.
””# $
DoWork
””$ *
(
””* +
)
””+ ,
;
””, -,
AccessAClassRequiringFullTrust
•• *
.
••* +
Access
••+ 1
(
••1 2
)
••2 3
;
••3 4
MyBadMemberClass
œœ 
badMemberClass
œœ +
=
œœ, -
new
œœ. 1
MyBadMemberClass
œœ2 B
(
œœB C
)
œœC D
;
œœD E
badMemberClass
 
.
 
DoWork
 !
(
! "
)
" #
;
# $
MyBadTypeClass
žž 
myBadTypeClass
žž )
=
žž* +
new
žž, /
MyBadTypeClass
žž0 >
(
žž> ?
)
žž? @
;
žž@ A
myBadTypeClass
ŸŸ 
.
ŸŸ 
DoWork
ŸŸ !
(
ŸŸ! "
)
ŸŸ" #
;
ŸŸ# $
}
   	
}
¡¡ 
}¢¢ Ä
˜C:\Users\c46q812\Documents\LocalRepository\MSUSEL\msusel-security-quamocohelloworld\analysis-projects\AllFindings\AllFindings\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str &
)& '
]' (
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
$str (
)( )
]) *
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