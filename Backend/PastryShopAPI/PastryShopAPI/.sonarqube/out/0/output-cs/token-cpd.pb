�,
oE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Controllers\AuthController.cs
	namespace		 	
PastryShopAPI		
 
.		 
Controllers		 #
{

 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
AuthController 
:  !
ControllerBase" 0
{ 
private 
IUserService 
userService (
;( )
public 
AuthController 
( 
IUserService *
userService+ 6
)6 7
{ 	
this 
. 
userService 
= 
userService *
;* +
} 	
[ 	
HttpPost	 
( 
$str 
) 
] 
public 
async 
Task 
< 
IActionResult '
>' (
RegisterAsync) 6
(6 7
[7 8
FromBody8 @
]@ A
RegisterViewModelB S
modelT Y
)Y Z
{ 	
if 
( 

ModelState 
. 
IsValid "
)" #
{ 
var 
result 
= 
await "
userService# .
.. /
RegisterUserAsync/ @
(@ A
modelA F
)F G
;G H
if 
( 
result 
. 
	IsSuccess $
)$ %
return 
Ok 
( 
result $
)$ %
;% &
return!! 

BadRequest!! !
(!!! "
result!!" (
)!!( )
;!!) *
}"" 
return$$ 

BadRequest$$ 
($$ 
$str$$ =
)$$= >
;$$> ?
}%% 	
['' 	
HttpPost''	 
('' 
$str'' 
)'' 
]'' 
public(( 
async(( 
Task(( 
<(( 
IActionResult(( '
>((' (
CreateRolenAsync(() 9
(((9 :
[((: ;
FromBody((; C
]((C D
CreateRoleViewModel((E X
model((Y ^
)((^ _
{)) 	
if** 
(** 

ModelState** 
.** 
IsValid** "
)**" #
{++ 
var,, 
result,, 
=,, 
await,, "
userService,,# .
.,,. /
CreateRoleAsync,,/ >
(,,> ?
model,,? D
),,D E
;,,E F
if.. 
(.. 
result.. 
... 
	IsSuccess.. $
)..$ %
{// 
return00 
Ok00 
(00 
result00 $
)00$ %
;00% &
}11 
return33 

BadRequest33 !
(33! "
result33" (
)33( )
;33) *
}44 
return55 

BadRequest55 
(55 
$str55 =
)55= >
;55> ?
}66 	
[88 	
HttpPost88	 
(88 
$str88 
)88 
]88 
public99 
async99 
Task99 
<99 
IActionResult99 '
>99' ( 
CreateUserRolenAsync99) =
(99= >
[99> ?
FromBody99? G
]99G H#
CreateUserRoleViewModel99I `
model99a f
)99f g
{:: 	
if;; 
(;; 

ModelState;; 
.;; 
IsValid;; "
);;" #
{<< 
var== 
result== 
=== 
await== "
userService==# .
.==. /
CreateUserRoleAsync==/ B
(==B C
model==C H
)==H I
;==I J
if?? 
(?? 
result?? 
.?? 
	IsSuccess?? $
)??$ %
{@@ 
returnAA 
OkAA 
(AA 
resultAA $
)AA$ %
;AA% &
}BB 
returnDD 

BadRequestDD !
(DD! "
resultDD" (
)DD( )
;DD) *
}EE 
returnFF 

BadRequestFF 
(FF 
$strFF =
)FF= >
;FF> ?
}GG 	
[II 	
HttpPostII	 
(II 
$strII 
)II 
]II 
publicJJ 
asyncJJ 
TaskJJ 
<JJ 
IActionResultJJ '
>JJ' (

LoginAsyncJJ) 3
(JJ3 4
[JJ4 5
FromBodyJJ5 =
]JJ= >
LoginViewModelJJ? M
modelJJN S
)JJS T
{KK 	
ifLL 
(LL 

ModelStateLL 
.LL 
IsValidLL "
)LL" #
{MM 
varNN 
resultNN 
=NN 
awaitNN "
userServiceNN# .
.NN. /
LoginUserAsyncNN/ =
(NN= >
modelNN> C
)NNC D
;NND E
ifPP 
(PP 
resultPP 
.PP 
	IsSuccessPP $
)PP$ %
{QQ 
returnRR 
OkRR 
(RR 
resultRR $
)RR$ %
;RR% &
}SS 
returnUU 

BadRequestUU !
(UU! "
resultUU" (
)UU( )
;UU) *
}VV 
returnXX 

BadRequestXX 
(XX 
$strXX =
)XX= >
;XX> ?
}YY 	
}[[ 
}\\ �W
uE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Controllers\CategoriesController.cs
	namespace 	
PastryShopAPI
 
. 
Controllers #
{ 
[ 
Route 

(
 
$str 
) 
] 
public 

class  
CategoriesController %
:& '

Controller( 2
{ 
private 
ICategoriesService "
_categoriesService# 5
;5 6
private 
IFileService 
_fileService )
;) *
public  
CategoriesController #
(# $
ICategoriesService$ 6
categoriesService7 H
,H I
IFileServiceJ V
fileServiceW b
)b c
{ 	
_categoriesService 
=  
categoriesService! 2
;2 3
_fileService 
= 
fileService &
;& '
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
IEnumerable' 2
<2 3
CategoryModel3 @
>@ A
>A B
>B C
GetCategoriesAsyncD V
(V W
stringW ]
orderBy^ e
=f g
$strh l
)l m
{ 	
try 
{   
var!! 

categories!! 
=!!  
await!!! &
_categoriesService!!' 9
.!!9 :
GetCategoriesAsync!!: L
(!!L M
orderBy!!M T
)!!T U
;!!U V
return"" 
Ok"" 
("" 

categories"" $
)""$ %
;""% &
}## 
catch$$ 
($$ )
InvalidOperationItemException$$ 0
ex$$1 3
)$$3 4
{%% 
return&& 

BadRequest&& !
(&&! "
ex&&" $
.&&$ %
Message&&% ,
)&&, -
;&&- .
}'' 
catch(( 
((( 
	Exception(( 
)(( 
{)) 
return** 

StatusCode** !
(**! "
StatusCodes**" -
.**- .(
Status500InternalServerError**. J
,**J K
$str**L l
)**l m
;**m n
}++ 
},, 	
[00 	
HttpGet00	 
(00 
$str00 $
)00$ %
]00% &
public11 
async11 
Task11 
<11 
ActionResult11 &
<11& '
CategoryModel11' 4
>114 5
>115 6
GetCategoryAsync117 G
(11G H
long11H L

categoryId11M W
)11W X
{22 	
try33 
{44 
var55 
team55 
=55 
await55  
_categoriesService55! 3
.553 4
GetCategoryAsync554 D
(55D E

categoryId55E O
)55O P
;55P Q
return66 
Ok66 
(66 
team66 
)66 
;66  
}77 
catch88 
(88 !
NotFoundItemException88 (
ex88) +
)88+ ,
{99 
return:: 
NotFound:: 
(::  
ex::  "
.::" #
Message::# *
)::* +
;::+ ,
};; 
catch<< 
(<< 
	Exception<< 
)<< 
{== 
return>> 

StatusCode>> !
(>>! "
StatusCodes>>" -
.>>- .(
Status500InternalServerError>>. J
,>>J K
$str>>L l
)>>l m
;>>m n
}?? 
}@@ 	
[VV 	
HttpPostVV	 
(VV 
$strVV 
)VV 
]VV 
publicWW 
asyncWW 
TaskWW 
<WW 
ActionResultWW &
<WW& '
CategoryModelWW' 4
>WW4 5
>WW5 6#
CreateCategoryFormAsyncWW7 N
(WWN O
[WWO P
FromFormWWP X
]WWX Y
CategoryFormModelWWZ k
newCategoryWWl w
)WWw x
{XX 	
tryYY 
{ZZ 
if[[ 
([[ 
![[ 

ModelState[[ 
.[[  
IsValid[[  '
)[[' (
return\\ 

BadRequest\\ %
(\\% &

ModelState\\& 0
)\\0 1
;\\1 2
var^^ 
file^^ 
=^^ 
newCategory^^ &
.^^& '
Image^^' ,
;^^, -
string__ 
	imagePath__  
=__! "
_fileService__# /
.__/ 0

UploadFile__0 :
(__: ;
file__; ?
)__? @
;__@ A
newCategoryaa 
.aa 
	ImagePathaa %
=aa& '
	imagePathaa( 1
;aa1 2
varcc 
categorycc 
=cc 
awaitcc $
_categoriesServicecc% 7
.cc7 8
CreateCategoryAsynccc8 K
(ccK L
newCategoryccL W
)ccW X
;ccX Y
returndd 
Createddd 
(dd 
$"dd !
$strdd! 1
{dd1 2
categorydd2 :
.dd: ;
Iddd; =
}dd= >
"dd> ?
,dd? @
categoryddA I
)ddI J
;ddJ K
}ee 
catchff 
(ff 
	Exceptionff 
)ff 
{gg 
returnhh 

StatusCodehh !
(hh! "
StatusCodeshh" -
.hh- .(
Status500InternalServerErrorhh. J
,hhJ K
$strhhL l
)hhl m
;hhm n
}ii 
}jj 	
[ll 	

HttpDeletell	 
(ll 
$strll '
)ll' (
]ll( )
publicmm 
asyncmm 
Taskmm 
<mm 
ActionResultmm &
<mm& '
boolmm' +
>mm+ ,
>mm, -
DeleteCategoryAsyncmm. A
(mmA B
longmmB F

categoryIdmmG Q
)mmQ R
{nn 	
tryoo 
{pp 
varqq 
resultqq 
=qq 
awaitqq "
_categoriesServiceqq# 5
.qq5 6
DeleteCategoryAsyncqq6 I
(qqI J

categoryIdqqJ T
)qqT U
;qqU V
returnrr 
Okrr 
(rr 
resultrr  
)rr  !
;rr! "
}ss 
catchtt 
(tt !
NotFoundItemExceptiontt (
extt) +
)tt+ ,
{uu 
returnvv 
NotFoundvv 
(vv  
exvv  "
.vv" #
Messagevv# *
)vv* +
;vv+ ,
}ww 
catchxx 
(xx 
	Exceptionxx 
)xx 
{yy 
returnzz 

StatusCodezz !
(zz! "
StatusCodeszz" -
.zz- .(
Status500InternalServerErrorzz. J
,zzJ K
$strzzL l
)zzl m
;zzm n
}{{ 
}|| 	
[~~ 	
HttpPut~~	 
(~~ 
$str~~ $
)~~$ %
]~~% &
public 
async 
Task 
< 
ActionResult &
<& '
CategoryModel' 4
>4 5
>5 6
UpdateCategoryAsync7 J
(J K
longK O

categoryIdP Z
,Z [
[\ ]
FromBody] e
]e f
CategoryModelg t
updatedCategory	u �
)
� �
{
�� 	
try
�� 
{
�� 
var
�� 
category
�� 
=
�� 
await
�� $ 
_categoriesService
��% 7
.
��7 8!
UpdateCategoryAsync
��8 K
(
��K L

categoryId
��L V
,
��V W
updatedCategory
��X g
)
��g h
;
��h i
return
�� 
Ok
�� 
(
�� 
category
�� "
)
��" #
;
��# $
}
�� 
catch
�� 
(
�� #
NotFoundItemException
�� (
ex
��) +
)
��+ ,
{
�� 
return
�� 
NotFound
�� 
(
��  
ex
��  "
.
��" #
Message
��# *
)
��* +
;
��+ ,
}
�� 
catch
�� 
(
�� 
	Exception
�� 
)
�� 
{
�� 
return
�� 

StatusCode
�� !
(
��! "
StatusCodes
��" -
.
��- .*
Status500InternalServerError
��. J
,
��J K
$str
��L l
)
��l m
;
��m n
}
�� 
}
�� 	
[
�� 	
HttpPut
��	 
(
�� 
$str
�� )
)
��) *
]
��* +
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
CategoryModel
��' 4
>
��4 5
>
��5 6%
UpdateCategoryFormAsync
��7 N
(
��N O
long
��O S

categoryId
��T ^
,
��^ _
[
��` a
FromForm
��a i
]
��i j
CategoryFormModel
��k |
updatedCategory��} �
)��� �
{
�� 	
try
�� 
{
�� 
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
��  
IsValid
��  '
)
��' (
return
�� 

BadRequest
�� %
(
��% &

ModelState
��& 0
)
��0 1
;
��1 2
var
�� 
newFile
�� 
=
�� 
updatedCategory
�� -
.
��- .
Image
��. 3
;
��3 4
string
�� 
	imagePath
��  
=
��! "
_fileService
��# /
.
��/ 0

UploadFile
��0 :
(
��: ;
newFile
��; B
)
��B C
;
��C D
updatedCategory
�� 
.
��  
	ImagePath
��  )
=
��* +
	imagePath
��, 5
;
��5 6
var
�� 
category
�� 
=
�� 
await
�� $ 
_categoriesService
��% 7
.
��7 8!
UpdateCategoryAsync
��8 K
(
��K L

categoryId
��L V
,
��V W
updatedCategory
��X g
)
��g h
;
��h i
return
�� 
Ok
�� 
(
�� 
category
�� "
)
��" #
;
��# $
}
�� 
catch
�� 
(
�� #
NotFoundItemException
�� (
ex
��) +
)
��+ ,
{
�� 
return
�� 
NotFound
�� 
(
��  
ex
��  "
.
��" #
Message
��# *
)
��* +
;
��+ ,
}
�� 
catch
�� 
(
�� 
	Exception
�� 
)
�� 
{
�� 
return
�� 

StatusCode
�� !
(
��! "
StatusCodes
��" -
.
��- .*
Status500InternalServerError
��. J
,
��J K
$str
��L l
)
��l m
;
��m n
}
�� 
}
�� 	
}
�� 
}�� �F
qE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Controllers\CombosController.cs
	namespace 	
PastryShopAPI
 
. 
Controllers #
{ 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
CombosController !
:" #

Controller$ .
{ 
private 
ICombosService 
_combosService -
;- .
private 
IFileService 
_fileService )
;) *
public 
CombosController 
(  
ICombosService  .
combosService/ <
,< =
IFileService> J
fileServiceK V
)V W
{ 	
_combosService 
= 
combosService *
;* +
_fileService 
= 
fileService &
;& '
} 	
[ 	
HttpPost	 
( 
$str 
) 
] 
public   
async   
Task   
<   
ActionResult   &
<  & '

ComboModel  ' 1
>  1 2
>  2 3 
CreateComboFormAsync  4 H
(  H I
[  I J
FromForm  J R
]  R S
ComboFormModel  T b
newCombo  c k
)  k l
{!! 	
try"" 
{## 
if$$ 
($$ 
!$$ 

ModelState$$ 
.$$  
IsValid$$  '
)$$' (
return%% 

BadRequest%% %
(%%% &

ModelState%%& 0
)%%0 1
;%%1 2
var'' 
file'' 
='' 
newCombo'' #
.''# $
Image''$ )
;'') *
string(( 
	imagePath((  
=((! "
_fileService((# /
.((/ 0

UploadFile((0 :
(((: ;
file((; ?
)((? @
;((@ A
newCombo)) 
.)) 
	ImagePath)) "
=))# $
	imagePath))% .
;)). /
var,, 
combo,, 
=,, 
await,, !
_combosService,," 0
.,,0 1
CreateComboAsync,,1 A
(,,A B
newCombo,,B J
),,J K
;,,K L
return-- 
Created-- 
(-- 
$"-- !
$str--! -
{--- .
combo--. 3
.--3 4
Id--4 6
}--6 7
"--7 8
,--8 9
combo--: ?
)--? @
;--@ A
}.. 
catch// 
(// 
	Exception// 
)// 
{00 
return11 

StatusCode11 !
(11! "
StatusCodes11" -
.11- .(
Status500InternalServerError11. J
,11J K
$str11L l
)11l m
;11m n
}22 
}33 	
[66 	
HttpGet66	 
]66 
public77 
async77 
Task77 
<77 
ActionResult77 &
<77& '
IEnumerable77' 2
<772 3

ComboModel773 =
>77= >
>77> ?
>77? @
GetCombosAsync77A O
(77O P
)77P Q
{88 	
try99 
{:: 
var;; 
combos;; 
=;; 
await;; "
_combosService;;# 1
.;;1 2
GetCombosAsync;;2 @
(;;@ A
);;A B
;;;B C
return<< 
Ok<< 
(<< 
combos<<  
)<<  !
;<<! "
}== 
catch>> 
(>> )
InvalidOperationItemException>> 0
ex>>1 3
)>>3 4
{?? 
return@@ 

BadRequest@@ !
(@@! "
ex@@" $
.@@$ %
Message@@% ,
)@@, -
;@@- .
}AA 
catchBB 
(BB 
	ExceptionBB 
)BB 
{CC 
returnDD 

StatusCodeDD !
(DD! "
StatusCodesDD" -
.DD- .(
Status500InternalServerErrorDD. J
,DDJ K
$strDDL l
)DDl m
;DDm n
}EE 
}FF 	
[JJ 	
HttpGetJJ	 
(JJ 
$strJJ !
)JJ! "
]JJ" #
publicKK 
asyncKK 
TaskKK 
<KK 
ActionResultKK &
<KK& '

ComboModelKK' 1
>KK1 2
>KK2 3
GetComboAsyncKK4 A
(KKA B
longKKB F
comboIdKKG N
)KKN O
{LL 	
tryMM 
{NN 
varOO 
comboOO 
=OO 
awaitOO !
_combosServiceOO" 0
.OO0 1
GetComboAsyncOO1 >
(OO> ?
comboIdOO? F
)OOF G
;OOG H
returnPP 
OkPP 
(PP 
comboPP 
)PP  
;PP  !
}QQ 
catchRR 
(RR !
NotFoundItemExceptionRR (
exRR) +
)RR+ ,
{SS 
returnTT 
NotFoundTT 
(TT  
exTT  "
.TT" #
MessageTT# *
)TT* +
;TT+ ,
}UU 
catchVV 
(VV 
	ExceptionVV 
)VV 
{WW 
returnXX 

StatusCodeXX !
(XX! "
StatusCodesXX" -
.XX- .(
Status500InternalServerErrorXX. J
,XXJ K
$strXXL l
)XXl m
;XXm n
}YY 
}ZZ 	
[cc 	
HttpPostcc	 
(cc 
$strcc "
)cc" #
]cc# $
publicdd 
asyncdd 
Taskdd 
<dd 
ActionResultdd &
<dd& '
UserManagerResponsedd' :
>dd: ;
>dd; <#
CreateProductComboAsyncdd= T
(ddT U
[ddU V
FromBodyddV ^
]dd^ _
Product_ComboModeldd` r
product_comboModel	dds �
)
dd� �
{ee 	
ifff 
(ff 

ModelStateff 
.ff 
IsValidff "
)ff" #
{gg 
varll 
resultll 
=ll 
awaitll "
_combosServicell# 1
.ll1 2#
CreateProductComboAsyncll2 I
(llI J
product_comboModelllJ \
)ll\ ]
;ll] ^
ifnn 
(nn 
truenn 
)nn 
{oo 
varpp 

totalPricepp "
=pp# $
awaitpp% *
_combosServicepp+ 9
.pp9 :
CalculateComboPricepp: M
(ppM N
product_comboModelppN `
.pp` a
ComboIdppa h
)pph i
;ppi j
varqq 
comboqq 
=qq 
awaitqq  %
_combosServiceqq& 4
.qq4 5
GetComboAsyncqq5 B
(qqB C
product_comboModelqqC U
.qqU V
ComboIdqqV ]
)qq] ^
;qq^ _
comborr 
.rr 
Pricerr 
=rr  !

totalPricerr" ,
;rr, -
awaitss 
_combosServicess (
.ss( )
UpdateComboAsyncss) 9
(ss9 :
comboss: ?
)ss? @
;ss@ A
returnuu 
Okuu 
(uu 
resultuu $
)uu$ %
;uu% &
}vv 
}yy 
returnzz 

BadRequestzz 
(zz 
$strzz =
)zz= >
;zz> ?
}{{ 	
[
�� 
HttpGet
�� 
(
�� 
$str
�� 
)
��  
]
��  !
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
IEnumerable
��' 2
<
��2 3
ProductModel
��3 ?
>
��? @
>
��@ A
>
��A B&
GetAllComboProductsAsync
��C [
(
��[ \
long
��\ `
comboId
��a h
)
��h i
{
�� 	
try
�� 
{
�� 
var
�� 
products
�� 
=
�� 
await
�� $
_combosService
��% 3
.
��3 4&
GetAllComboProductsAsync
��4 L
(
��L M
comboId
��M T
)
��T U
;
��U V
return
�� 
Ok
�� 
(
�� 
products
�� "
)
��" #
;
��# $
}
�� 
catch
�� 
(
�� #
NotFoundItemException
�� (
ex
��) +
)
��+ ,
{
�� 
return
�� 
NotFound
�� 
(
��  
ex
��  "
.
��" #
Message
��# *
)
��* +
;
��+ ,
}
�� 
catch
�� 
(
�� 
	Exception
�� 
)
�� 
{
�� 
return
�� 

StatusCode
�� !
(
��! "
StatusCodes
��" -
.
��- .*
Status500InternalServerError
��. J
,
��J K
$str
��L l
)
��l m
;
��m n
}
�� 
}
�� 	
}
�� 
}�� �h
sE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Controllers\ProductsController.cs
	namespace 	
PastryShopAPI
 
. 
Controllers #
{ 
[ 
Route 

(
 
$str :
): ;
]; <
public 

class 
ProductsController #
:$ %

Controller& 0
{ 
private 
IProductsService  
_productService! 0
;0 1
private 
IFileService 
_fileService )
;) *
public 
ProductsController !
(! "
IProductsService" 2
productService3 A
,A B
IFileServiceC O
fileServiceP [
)[ \
{ 	
_productService 
= 
productService ,
;, -
_fileService 
= 
fileService &
;& '
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
IEnumerable' 2
<2 3
ProductModel3 ?
>? @
>@ A
>A B
GetProductsAsyncC S
(S T
longT X

categoryIdY c
)c d
{ 	
try 
{ 
var 
products 
= 
await $
_productService% 4
.4 5
GetProductsAsync5 E
(E F

categoryIdF P
)P Q
;Q R
return   
Ok   
(   
products   "
)  " #
;  # $
}!! 
catch"" 
("" !
NotFoundItemException"" (
ex"") +
)""+ ,
{## 
return$$ 
NotFound$$ 
($$  
ex$$  "
.$$" #
Message$$# *
)$$* +
;$$+ ,
}%% 
catch&& 
(&& 
	Exception&& 
)&& 
{'' 
return(( 

StatusCode(( !
(((! "
StatusCodes((" -
.((- .(
Status500InternalServerError((. J
,((J K
$str((L l
)((l m
;((m n
})) 
}** 	
[,, 	
HttpGet,,	 
(,, 
$str,, #
),,# $
],,$ %
public-- 
async-- 
Task-- 
<-- 
IActionResult-- '
>--' (
GetProductAsync--) 8
(--8 9
long--9 =

categoryId--> H
,--H I
long--J N
	productId--O X
)--X Y
{.. 	
try// 
{00 
var11 
product11 
=11 
await11 #
_productService11$ 3
.113 4
GetProductAsync114 C
(11C D

categoryId11D N
,11N O
	productId11P Y
)11Y Z
;11Z [
return22 
Ok22 
(22 
product22 !
)22! "
;22" #
}33 
catch44 
(44 !
NotFoundItemException44 (
ex44) +
)44+ ,
{55 
return66 
NotFound66 
(66  
ex66  "
.66" #
Message66# *
)66* +
;66+ ,
}77 
catch88 
(88 
	Exception88 
)88# $
{99 
return:: 

StatusCode:: !
(::! "
StatusCodes::" -
.::- .(
Status500InternalServerError::. J
,::J K
$str::L l
)::l m
;::m n
};; 
}== 	
[VV 	
HttpPostVV	 
(VV 
$strVV 
)VV 
]VV 
publicWW 
asyncWW 
TaskWW 
<WW 
ActionResultWW &
<WW& '
ProductModelWW' 3
>WW3 4
>WW4 5"
CreateProductFormAsyncWW6 L
(WWL M
longWWM Q

categoryIdWWR \
,WW\ ]
[WW^ _
FromFormWW_ g
]WWg h
ProductFormModelWWi y

newProduct	WWz �
)
WW� �
{XX 	
tryYY 
{ZZ 
if[[ 
([[ 
![[ 

ModelState[[ 
.[[  
IsValid[[  '
)[[' (
{\\ 
return]] 

BadRequest]] %
(]]% &

ModelState]]& 0
)]]0 1
;]]1 2
}^^ 
var__ 
file__ 
=__ 

newProduct__ %
.__% &
Image__& +
;__+ ,
string`` 
	imagePath``  
=``! "
_fileService``# /
.``/ 0

UploadFile``0 :
(``: ;
file``; ?
)``? @
;``@ A

newProductbb 
.bb 
	ImagePathbb $
=bb% &
	imagePathbb' 0
;bb0 1
vardd 
createdProductdd "
=dd# $
awaitdd% *
_productServicedd+ :
.dd: ;
CreateProductAsyncdd; M
(ddM N

categoryIdddN X
,ddX Y

newProductddZ d
)ddd e
;dde f
returnee 
Createdee 
(ee 
$"ee !
$stree! 1
{ee1 2

categoryIdee2 <
}ee< =
$stree= G
{eeG H
createdProducteeH V
.eeV W
IdeeW Y
}eeY Z
"eeZ [
,ee[ \
createdProductee] k
)eek l
;eel m
}ff 
catchgg 
(gg !
NotFoundItemExceptiongg (
exgg) +
)gg+ ,
{hh 
returnii 
NotFoundii 
(ii  
exii  "
.ii" #
Messageii# *
)ii* +
;ii+ ,
}jj 
catchkk 
(kk 
	Exceptionkk 
)kk# $
{ll 
returnmm 

StatusCodemm !
(mm! "
StatusCodesmm" -
.mm- .(
Status500InternalServerErrormm. J
,mmJ K
$strmmL l
)mml m
;mmm n
}nn 
}oo 	
[qq 	

HttpDeleteqq	 
(qq 
$strqq %
)qq% &
]qq& '
publicrr 
asyncrr 
Taskrr 
<rr 
ActionResultrr &
<rr& '
boolrr' +
>rr+ ,
>rr, -
DeleteProductAsyncrr. @
(rr@ A
longrrA E

categoryIdrrF P
,rrP Q
longrrR V
	productIdrrW `
)rr` a
{ss 	
trytt 
{uu 
varvv 
resultvv 
=vv 
awaitvv "
_productServicevv# 2
.vv2 3
DeleteProductAsyncvv3 E
(vvE F

categoryIdvvF P
,vvP Q
	productIdvvR [
)vv[ \
;vv\ ]
returnww 
Okww 
(ww 
resultww  
)ww  !
;ww! "
}xx 
catchyy 
(yy !
NotFoundItemExceptionyy (
exyy) +
)yy+ ,
{zz 
return{{ 
NotFound{{ 
({{  
ex{{  "
.{{" #
Message{{# *
){{* +
;{{+ ,
}|| 
catch}} 
(}} 
	Exception}} 
)}} 
{~~ 
return 

StatusCode !
(! "
StatusCodes" -
.- .(
Status500InternalServerError. J
,J K
$strL l
)l m
;m n
}
�� 
}
�� 	
[
�� 	
HttpPut
��	 
(
�� 
$str
�� #
)
��# $
]
��$ %
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ProductModel
��' 3
>
��3 4
>
��4 5 
UpdateProductAsync
��6 H
(
��H I
long
��I M

categoryId
��N X
,
��X Y
long
��Z ^
	productId
��_ h
,
��h i
[
��j k
FromBody
��k s
]
��s t
ProductModel��u �
productToUpdate��� �
)��� �
{
�� 	
try
�� 
{
�� 
var
�� 
updatedProduct
�� "
=
��# $
await
��% *
_productService
��+ :
.
��: ; 
UpdateProductAsync
��; M
(
��M N

categoryId
��N X
,
��X Y
	productId
��Z c
,
��c d
productToUpdate
��e t
)
��t u
;
��u v
return
�� 
Ok
�� 
(
�� 
updatedProduct
�� (
)
��( )
;
��) *
}
�� 
catch
�� 
(
�� #
NotFoundItemException
�� (
ex
��) +
)
��+ ,
{
�� 
return
�� 
NotFound
�� 
(
��  
ex
��  "
.
��" #
Message
��# *
)
��* +
;
��+ ,
}
�� 
catch
�� 
(
�� 
	Exception
�� 
)
�� 
{
�� 
return
�� 

StatusCode
�� !
(
��! "
StatusCodes
��" -
.
��- .*
Status500InternalServerError
��. J
,
��J K
$str
��L l
)
��l m
;
��m n
}
�� 
}
�� 	
[
�� 	
HttpPut
��	 
(
�� 
$str
�� (
)
��( )
]
��) *
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ProductModel
��' 3
>
��3 4
>
��4 5$
UpdateProductFormAsync
��6 L
(
��L M
long
��M Q

categoryId
��R \
,
��\ ]
long
��^ b
	productId
��c l
,
��l m
[
��n o
FromForm
��o w
]
��w x
ProductFormModel��y �
productToUpdate��� �
)��� �
{
�� 	
try
�� 
{
�� 
var
�� 
file
�� 
=
�� 
productToUpdate
�� *
.
��* +
Image
��+ 0
;
��0 1
string
�� 
	imagePath
��  
=
��! "
_fileService
��# /
.
��/ 0

UploadFile
��0 :
(
��: ;
file
��; ?
)
��? @
;
��@ A
productToUpdate
�� 
.
��  
	ImagePath
��  )
=
��* +
	imagePath
��, 5
;
��5 6
var
�� 
updatedProduct
�� "
=
��# $
await
��% *
_productService
��+ :
.
��: ; 
UpdateProductAsync
��; M
(
��M N

categoryId
��N X
,
��X Y
	productId
��Z c
,
��c d
productToUpdate
��e t
)
��t u
;
��u v
var
�� 
response
�� 
=
�� 
Ok
��  "
(
��" #
updatedProduct
��# 1
)
��1 2
;
��2 3
return
�� 
response
�� 
;
��  
}
�� 
catch
�� 
(
�� #
NotFoundItemException
�� (
ex
��) +
)
��+ ,
{
�� 
return
�� 
NotFound
�� 
(
��  
ex
��  "
.
��" #
Message
��# *
)
��* +
;
��+ ,
}
�� 
catch
�� 
(
�� 
	Exception
�� 
)
�� 
{
�� 
return
�� 

StatusCode
�� !
(
��! "
StatusCodes
��" -
.
��- .*
Status500InternalServerError
��. J
,
��J K
$str
��L l
)
��l m
;
��m n
}
�� 
}
�� 	
[
�� 	
HttpGet
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
IEnumerable
��' 2
<
��2 3
ProductModel
��3 ?
>
��? @
>
��@ A
>
��A B!
GetAllProductsAsync
��C V
(
��V W
long
��W [

categoryId
��\ f
=
��f g
$num
��g h
)
��h i
{
�� 	
try
�� 
{
�� 
var
�� 
products
�� 
=
�� 
await
�� $
_productService
��% 4
.
��4 5!
GetAllProductsAsync
��5 H
(
��H I

categoryId
��I S
)
��S T
;
��T U
return
�� 
Ok
�� 
(
�� 
products
�� "
)
��" #
;
��# $
}
�� 
catch
�� 
(
�� #
NotFoundItemException
�� (
ex
��) +
)
��+ ,
{
�� 
return
�� 
NotFound
�� 
(
��  
ex
��  "
.
��" #
Message
��# *
)
��* +
;
��+ ,
}
�� 
catch
�� 
(
�� 
	Exception
�� 
)
�� 
{
�� 
return
�� 

StatusCode
�� !
(
��! "
StatusCodes
��" -
.
��- .*
Status500InternalServerError
��. J
,
��J K
$str
��L l
)
��l m
;
��m n
}
�� 
}
�� 	
}
�� 
}�� �
jE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Data\AtomapperProfile.cs
	namespace 	
PastryShopAPI
 
. 
Data 
{ 
public 

class 
AtomapperProfile !
:! "
Profile# *
{ 
public 
AtomapperProfile 
(  
)  !
{ 	
this 
. 
	CreateMap 
< 
CategoryModel (
,( )
CategoryEntity* 8
>8 9
(9 :
): ;
. 
	ForMember 
( 
tm 
=>  
tm! #
.# $
Name$ (
,( )
te* ,
=>- /
te0 2
.2 3
MapFrom3 :
(: ;
m; <
=>= ?
m@ A
.A B
NameB F
)F G
)G H
. 

ReverseMap 
( 
) 
; 
this 
. 
	CreateMap 
< 
ProductModel '
,' (
ProductEntity) 6
>6 7
(7 8
)8 9
. 
	ForMember 
( 
ent 
=> !
ent" %
.% &
Category& .
,. /
mod0 3
=>4 6
mod7 :
.: ;
MapFrom; B
(B C
modSrcC I
=>J L
newM P
CategoryEntityQ _
(_ `
)` a
{b c
Idd f
=g h
modSrci o
.o p

CategoryIdp z
}{ |
)| }
)} ~
. 

ReverseMap 
( 
) 
. 
	ForMember 
( 
mod 
=> !
mod" %
.% &

CategoryId& 0
,0 1
ent2 5
=>6 8
ent9 <
.< =
MapFrom= D
(D E
entSrcE K
=>L N
entSrcO U
.U V
CategoryV ^
.^ _
Id_ a
)a b
)b c
;c d
this 
. 
	CreateMap 
< 

ComboModel %
,% &
ComboEntity' 2
>2 3
(3 4
)4 5
. 
	ForMember 
( 
tm 
=> 
tm  "
." #
Name# '
,' (
te) +
=>, .
te/ 1
.1 2
MapFrom2 9
(9 :
m: ;
=>< >
m? @
.@ A
NameA E
)E F
)F G
. 

ReverseMap 
( 
) 
; 
this 
. 
	CreateMap 
< 
Product_ComboModel -
,- .
Product_ComboEntity/ B
>B C
(C D
)D E
.!! 

ReverseMap!! 
(!! 
)!! 
;!! 
}-- 	
}.. 
}// �

qE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Data\Entities\CategoryEntity.cs
	namespace 	
PastryShopAPI
 
{		 
public

 

class

 
CategoryEntity

 
{ 
[ 	
Key	 
] 
[ 	
Required	 
] 
public 
long 
? 
Id 
{ 
get 
; 
set "
;" #
}$ %
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
ImageUrl 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
ICollection 
< 
ProductEntity (
>( )
Products* 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
string 
	ImagePath 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} �
nE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Data\Entities\ComboEntity.cs
	namespace 	
PastryShopAPI
 
. 
Data 
. 
Entities %
{ 
public		 

class		 
ComboEntity		 
{

 
[ 	
Key	 
] 
[ 	
Required	 
] 
public 
long 
? 
Id 
{ 
get 
; 
set "
;" #
}$ %
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
long 
? 
Price 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
ImageUrl 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
	ImagePath 
{  !
get" %
;% &
set' *
;* +
}, -
public 
ICollection 
< 
Product_ComboEntity .
>. /
Product_Combos0 >
{? @
getA D
;D E
setF I
;I J
}K L
} 
} �
pE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Data\Entities\ProductEntity.cs
	namespace 	
PastryShopAPI
 
. 
Data 
. 
Entities %
{		 
public

 

class

 
ProductEntity

 
{ 
[ 	
Key	 
] 
[ 	
Required	 
] 
public 
long 
? 
Id 
{ 
get 
; 
set "
;" #
}$ %
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
long 
? 
Price 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
? 
Rating 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
ImageUrl 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
	ImagePath 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	

ForeignKey	 
( 
$str  
)  !
]! "
public 
virtual 
CategoryEntity %
Category& .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
ICollection 
< 
Product_ComboEntity .
>. /
Product_Combos0 >
{? @
getA D
;D E
setF I
;I J
}K L
} 
} �	
vE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Data\Entities\Product_ComboEntity.cs
	namespace 	
PastryShopAPI
 
. 
Data 
. 
Entities %
{		 
public

 

class

 
Product_ComboEntity

 $
{ 
[ 	
Key	 
] 
[ 	
Required	 
] 
public 
long 
? 
Id 
{ 
get 
; 
set "
;" #
}$ %
public 
long 
	ProductId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
ProductEntity 
Product $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
long 
ComboId 
{ 
get !
;! "
set# &
;& '
}( )
public 
ComboEntity 
Combo  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} �.
mE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Data\PastryShopDbContext.cs
	namespace		 	
PastryShopAPI		
 
.		 
Data		 
{

 
public 

class 
PastryShopDbContext $
:% &
IdentityDbContext' 8
{ 
public 
DbSet 
< 
CategoryEntity #
># $

Categories% /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
DbSet 
< 
ProductEntity "
>" #
Products$ ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
DbSet 
< 
ComboEntity  
>  !
Combos" (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
DbSet 
< 
Product_ComboEntity (
>( )
Product_Combos* 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
public 
PastryShopDbContext "
(" #
DbContextOptions# 3
<3 4
PastryShopDbContext4 G
>G H
optionsI P
)P Q
: 
base 
( 
options 
) 
{ 	
} 	
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
base 
. 
OnModelCreating  
(  !
modelBuilder! -
)- .
;. /
modelBuilder 
. 
Entity 
<  
CategoryEntity  .
>. /
(/ 0
)0 1
.1 2
ToTable2 9
(9 :
$str: F
)F G
;G H
modelBuilder 
. 
Entity 
<  
CategoryEntity  .
>. /
(/ 0
)0 1
.1 2
Property2 :
(: ;
c; <
=>= ?
c@ A
.A B
IdB D
)D E
.E F
ValueGeneratedOnAddF Y
(Y Z
)Z [
;[ \
modelBuilder 
. 
Entity 
<  
CategoryEntity  .
>. /
(/ 0
)0 1
.1 2
HasMany2 9
(9 :
c: ;
=>< >
c? @
.@ A
ProductsA I
)I J
.J K
WithOneK R
(R S
pS T
=>U W
pX Y
.Y Z
CategoryZ b
)b c
;c d
modelBuilder"" 
."" 
Entity"" 
<""  
ProductEntity""  -
>""- .
("". /
)""/ 0
.""0 1
ToTable""1 8
(""8 9
$str""9 C
)""C D
;""D E
modelBuilder## 
.## 
Entity## 
<##  
ProductEntity##  -
>##- .
(##. /
)##/ 0
.##0 1
Property##1 9
(##9 :
p##: ;
=>##< >
p##? @
.##@ A
Id##A C
)##C D
.##D E
ValueGeneratedOnAdd##E X
(##X Y
)##Y Z
;##Z [
modelBuilder$$ 
.$$ 
Entity$$ 
<$$  
ProductEntity$$  -
>$$- .
($$. /
)$$/ 0
.$$0 1
HasOne$$1 7
($$7 8
p$$8 9
=>$$: <
p$$= >
.$$> ?
Category$$? G
)$$G H
.$$H I
WithMany$$I Q
($$Q R
c$$R S
=>$$T V
c$$W X
.$$X Y
Products$$Y a
)$$a b
;$$b c
modelBuilder)) 
.)) 
Entity)) 
<))  
ComboEntity))  +
>))+ ,
()), -
)))- .
.)). /
ToTable))/ 6
())6 7
$str))7 ?
)))? @
;))@ A
modelBuilder** 
.** 
Entity** 
<**  
ComboEntity**  +
>**+ ,
(**, -
)**- .
.**. /
Property**/ 7
(**7 8
c**8 9
=>**: <
c**= >
.**> ?
Id**? A
)**A B
.**B C
ValueGeneratedOnAdd**C V
(**V W
)**W X
;**X Y
modelBuilder44 
.44 
Entity44 
<44  
Product_ComboEntity44  3
>443 4
(444 5
)445 6
.55 
HasOne55 
(55 
p55 
=>55 
p55 
.55 
Product55 "
)55" #
.66 
WithMany66 
(66 
pc66 
=>66 
pc66 
.66 
Product_Combos66 -
)66- .
.77 
HasForeignKey77 
(77 
ci77 
=>77  
ci77! #
.77# $
	ProductId77$ -
)77- .
;77. /
modelBuilder99 
.99 
Entity99 
<99  
Product_ComboEntity99  3
>993 4
(994 5
)995 6
.:: 
HasOne:: 
(:: 
c:: 
=>:: 
c:: 
.:: 
Combo::  
)::  !
.;; 
WithMany;; 
(;; 
pc;; 
=>;; 
pc;; 
.;; 
Product_Combos;; -
);;- .
.<< 
HasForeignKey<< 
(<< 
pi<< 
=><<  
pi<<! #
.<<# $
ComboId<<$ +
)<<+ ,
;<<, -
}AA 	
}BB 
}CC �$
|E:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Data\Repositories\IPastryShopRepository.cs
	namespace 	
PastryShopAPI
 
{		 
public

 

	interface

 !
IPastryShopRepository

 *
{ 
public 
Task 
< 
IEnumerable 
<  
CategoryEntity  .
>. /
>/ 0
GetCategoriesAsync1 C
(C D
stringD J
orderByK R
=S T
$strU Y
)Y Z
;Z [
public 
Task 
< 
CategoryEntity "
>" #
GetCategoryAsync$ 4
(4 5
long5 9

categoryId: D
)D E
;E F
public 
void 
CreateCategory "
(" #
CategoryEntity# 1
newCategory2 =
)= >
;> ?
public 
Task 
DeleteCategoryAsync '
(' (
long( ,

categoryId- 7
)7 8
;8 9
public 
Task 
UpdateCategoryAsync '
(' (
long( ,

categoryId- 7
,7 8
CategoryEntity9 G
updatedCategoryH W
)W X
;X Y
public 
Task 
< 
IEnumerable 
<  
ProductEntity  -
>- .
>. /
GetProductsAsync0 @
(@ A
longA E

categoryIdF P
)P Q
;Q R
public 
Task 
< 
ProductEntity !
>! "
GetProductAsync# 2
(2 3
long3 7

categoryId8 B
,B C
longD H
	productIdI R
)R S
;S T
public 
void 
CreateProduct !
(! "
long" &

categoryId' 1
,1 2
ProductEntity3 @

newProductA K
)K L
;L M
public 
Task 
DeleteProductAsync &
(& '
long' +

categoryId, 6
,6 7
long8 <
	productId= F
)F G
;G H
public 
Task 
UpdateProductAsync &
(& '
long' +

categoryId, 6
,6 7
long8 <
	productId= F
,F G
ProductEntityH U
updatedProductV d
)d e
;e f
public 
Task 
< 
ProductEntity !
>! "
GetProductAsync2# 3
(3 4
long4 8
	productId9 B
)B C
;C D
public 
Task 
< 
IEnumerable 
<  
ProductEntity  -
>- .
>. /
GetAllProductsAsync0 C
(C D
)D E
;E F
public 
void 
CreateCombo 
(  
ComboEntity  +
comboEntity, 7
)7 8
;8 9
public   
Task   
<   
IEnumerable   
<    
ComboEntity    +
>  + ,
>  , -
GetCombosAsync  . <
(  < =
)  = >
;  > ?
public!! 
Task!! 
<!! 
ComboEntity!! 
>!!  
GetComboAsync!!! .
(!!. /
long!!/ 3
comboId!!4 ;
)!!; <
;!!< =
public"" 
Task"" 
UpdateComboAsync"" $
(""$ %
long""% )
?"") *
comboId""+ 2
,""2 3
ComboEntity""4 ?
updatedCombo""@ L
)""L M
;""M N
public## 
Task## 
<## 
bool## 
>## !
ProductIsInComboAsync## /
(##/ 0
long##0 4
	productId##5 >
,##> ?
long##@ D
comboId##E L
)##L M
;##M N
public%% 
Task%% 
<%% 
IEnumerable%% 
<%%  
Product_ComboEntity%%  3
>%%3 4
>%%4 5"
GetProduct_CombosAsync%%6 L
(%%L M
)%%M N
;%%N O
public&& 
void&& $
AddProduct_to_ComboAsync&& ,
(&&, -
Product_ComboEntity&&- @
newProductCombo&&A P
)&&P Q
;&&Q R
Task(( 
<(( 
bool(( 
>(( 
SaveChangesAsync(( #
(((# $
)(($ %
;((% &
})) 
}** ��
{E:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Data\Repositories\PastryShopRepository.cs
	namespace		 	
PastryShopAPI		
 
.		 
Data		 
.		 
Repositories		 )
{

 
public 

class  
PastryShopRepository %
:& '!
IPastryShopRepository( =
{ 
private 
PastryShopDbContext #

_dbContext$ .
;. /
public  
PastryShopRepository #
(# $
PastryShopDbContext$ 7
	dbContext8 A
)A B
{ 	

_dbContext 
= 
	dbContext "
;" #
} 	
public 
void 
CreateCategory "
(" #
CategoryEntity# 1
newCategory2 =
)= >
{ 	

_dbContext 
. 

Categories !
.! "
Add" %
(% &
newCategory& 1
)1 2
;2 3
} 	
public 
async 
Task 
DeleteCategoryAsync -
(- .
long. 2

categoryId3 =
)= >
{ 	
var 
categoryToDelete  
=! "
await# (

_dbContext) 3
.3 4

Categories4 >
.> ?

FirstAsync? I
(I J
cJ K
=>L N
cO P
.P Q
IdQ S
==T V

categoryIdW a
)a b
;b c

_dbContext 
. 

Categories !
.! "
Remove" (
(( )
categoryToDelete) 9
)9 :
;: ;
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
CategoryEntity& 4
>4 5
>5 6
GetCategoriesAsync7 I
(I J
stringJ P
orderByQ X
=Y Z
$str[ _
)_ `
{ 	

IQueryable   
<   
CategoryEntity   %
>  % &
query  ' ,
=  - .

_dbContext  / 9
.  9 :

Categories  : D
;  D E
query!! 
=!! 
query!! 
.!! 
AsNoTracking!! &
(!!& '
)!!' (
;!!( )
switch## 
(## 
orderBy## 
.## 
ToLower## #
(### $
)##$ %
)##% &
{$$ 
case%% 
$str%% 
:%% 
query&& 
=&& 
query&& !
.&&! "
OrderBy&&" )
(&&) *
c&&* +
=>&&, .
c&&/ 0
.&&0 1
Name&&1 5
)&&5 6
;&&6 7
break'' 
;'' 
case(( 
$str(( "
:((" #
query)) 
=)) 
query)) !
.))! "
OrderBy))" )
())) *
c))* +
=>)), .
c))/ 0
.))0 1
Description))1 <
)))< =
;))= >
break** 
;** 
default// 
:// 
query00 
=00 
query00 !
.00! "
OrderBy00" )
(00) *
c00* +
=>00, .
c00/ 0
.000 1
Id001 3
)003 4
;004 5
break11 
;11 
}22 
return44 
await44 
query44 
.44 
ToListAsync44 *
(44* +
)44+ ,
;44, -
}55 	
public77 
async77 
Task77 
UpdateCategoryAsync77 -
(77- .
long77. 2

categoryId773 =
,77= >
CategoryEntity77? M
updatedCategory77N ]
)77] ^
{88 	
var99 
category99 
=99 
await99  

_dbContext99! +
.99+ ,

Categories99, 6
.996 7
FirstOrDefaultAsync997 J
(99J K
c99K L
=>99M O
c99P Q
.99Q R
Id99R T
==99U W

categoryId99X b
)99b c
;99c d
category;; 
.;; 
Name;; 
=;; 
updatedCategory;; +
.;;+ ,
Name;;, 0
??;;1 3
category;;4 <
.;;< =
Name;;= A
;;;A B
category<< 
.<< 
Description<<  
=<<! "
updatedCategory<<# 2
.<<2 3
Description<<3 >
??<<? A
category<<B J
.<<J K
Description<<K V
;<<V W
category== 
.== 
ImageUrl== 
=== 
updatedCategory==  /
.==/ 0
ImageUrl==0 8
??==9 ;
category==< D
.==D E
ImageUrl==E M
;==M N
category>> 
.>> 
	ImagePath>> 
=>>  
updatedCategory>>! 0
.>>0 1
	ImagePath>>1 :
??>>; =
category>>> F
.>>F G
	ImagePath>>G P
;>>P Q
}@@ 	
publicAA 
asyncAA 
TaskAA 
<AA 
CategoryEntityAA (
>AA( )
GetCategoryAsyncAA* :
(AA: ;
longAA; ?

categoryIdAA@ J
)AAJ K
{BB 	

IQueryableCC 
<CC 
CategoryEntityCC %
>CC% &
queryCC' ,
=CC- .

_dbContextCC/ 9
.CC9 :

CategoriesCC: D
;CCD E
queryDD 
=DD 
queryDD 
.DD 
AsNoTrackingDD &
(DD& '
)DD' (
;DD( )
returnFF 
awaitFF 
queryFF 
.FF 
FirstOrDefaultAsyncFF 2
(FF2 3
cFF3 4
=>FF5 7
cFF8 9
.FF9 :
IdFF: <
==FF= ?

categoryIdFF@ J
)FFJ K
;FFK L
}OO 	
publicPP 
asyncPP 
TaskPP 
<PP 
boolPP 
>PP 
SaveChangesAsyncPP  0
(PP0 1
)PP1 2
{QQ 	
tryRR 
{SS 
varTT 
resTT 
=TT 
awaitTT 

_dbContextTT  *
.TT* +
SaveChangesAsyncTT+ ;
(TT; <
)TT< =
;TT= >
returnUU 
resUU 
>UU 
$numUU 
;UU 
}VV 
catchWW 
(WW 
	ExceptionWW 
exWW 
)WW  
{XX 
throwZZ 
exZZ 
;ZZ 
}[[ 
}\\ 	
public__ 
async__ 
Task__ 
<__ 
IEnumerable__ %
<__% &
ProductEntity__& 3
>__3 4
>__4 5
GetProductsAsync__6 F
(__F G
long__G K

categoryId__L V
)__V W
{`` 	

IQueryableaa 
<aa 
ProductEntityaa $
>aa$ %
queryaa& +
=aa, -

_dbContextaa. 8
.aa8 9
Productsaa9 A
;aaA B
querybb 
=bb 
querybb 
.bb 
Wherebb 
(bb  
pbb  !
=>bb" $
pbb% &
.bb& '
Categorybb' /
.bb/ 0
Idbb0 2
==bb3 5

categoryIdbb6 @
)bb@ A
;bbA B
querycc 
=cc 
querycc 
.cc 
Includecc !
(cc! "
pcc" #
=>cc$ &
pcc' (
.cc( )
Categorycc) 1
)cc1 2
;cc2 3
querydd 
=dd 
querydd 
.dd 
AsNoTrackingdd &
(dd& '
)dd' (
;dd( )
returnee 
awaitee 
queryee 
.ee 
ToListAsyncee *
(ee* +
)ee+ ,
;ee, -
}ff 	
publichh 
asynchh 
Taskhh 
<hh 
ProductEntityhh '
>hh' (
GetProductAsynchh) 8
(hh8 9
longhh9 =

categoryIdhh> H
,hhH I
longhhJ N
	productIdhhO X
)hhX Y
{ii 	

IQueryablejj 
<jj 
ProductEntityjj $
>jj$ %
queryjj& +
=jj, -

_dbContextjj. 8
.jj8 9
Productsjj9 A
;jjA B
querykk 
=kk 
querykk 
.kk 
AsNoTrackingkk &
(kk& '
)kk' (
;kk( )
returnmm 
awaitmm 
querymm 
.mm 
FirstOrDefaultAsyncmm 2
(mm2 3
pmm3 4
=>mm5 7
pmm8 9
.mm9 :
Categorymm: B
.mmB C
IdmmC E
==mmF H

categoryIdmmI S
&&mmT V
pmmW X
.mmX Y
IdmmY [
==mm\ ^
	productIdmm_ h
)mmh i
;mmi j
}nn 	
publicpp 
asyncpp 
Taskpp 
<pp 
ProductEntitypp '
>pp' (
GetProductAsync2pp) 9
(pp9 :
longpp: >
	productIdpp? H
)ppH I
{qq 	

IQueryablerr 
<rr 
ProductEntityrr $
>rr$ %
queryrr& +
=rr, -

_dbContextrr. 8
.rr8 9
Productsrr9 A
;rrA B
queryss 
=ss 
queryss 
.ss 
AsNoTrackingss &
(ss& '
)ss' (
;ss( )
returnuu 
awaituu 
queryuu 
.uu 
FirstOrDefaultAsyncuu 2
(uu2 3
puu3 4
=>uu5 7
puu8 9
.uu9 :
Iduu: <
==uu= ?
	productIduu@ I
)uuI J
;uuJ K
}vv 	
publicxx 
voidxx 
CreateProductxx !
(xx! "
longxx" &

categoryIdxx' 1
,xx1 2
ProductEntityxx3 @

newProductxxA K
)xxK L
{yy 	

_dbContextzz 
.zz 
Entryzz 
(zz 

newProductzz '
.zz' (
Categoryzz( 0
)zz0 1
.zz1 2
Statezz2 7
=zz8 9
EntityStatezz: E
.zzE F
	UnchangedzzF O
;zzO P

_dbContext{{ 
.{{ 
Products{{ 
.{{  
Add{{  #
({{# $

newProduct{{$ .
){{. /
;{{/ 0
}|| 	
public~~ 
async~~ 
Task~~ 
DeleteProductAsync~~ ,
(~~, -
long~~- 1

categoryId~~2 <
,~~< =
long~~> B
	productId~~C L
)~~L M
{ 	
var
�� 
productToDelete
�� 
=
��  !
await
��" '

_dbContext
��( 2
.
��2 3
Products
��3 ;
.
��; <!
FirstOrDefaultAsync
��< O
(
��O P
p
��P Q
=>
��R T
p
��U V
.
��V W
Id
��W Y
==
��Z \
	productId
��] f
)
��f g
;
��g h

_dbContext
�� 
.
�� 
Remove
�� 
(
�� 
productToDelete
�� -
)
��- .
;
��. /
}
�� 	
public
�� 
async
�� 
Task
��  
UpdateProductAsync
�� ,
(
��, -
long
��- 1

categoryId
��2 <
,
��< =
long
��> B
	productId
��C L
,
��L M
ProductEntity
��N [
updatedProduct
��\ j
)
��j k
{
�� 	
var
�� 
productToUpdate
�� 
=
��  !
await
��" '

_dbContext
��( 2
.
��2 3
Products
��3 ;
.
��; <!
FirstOrDefaultAsync
��< O
(
��O P
p
��P Q
=>
��R T
p
��U V
.
��V W
Id
��W Y
==
��Z \
	productId
��] f
)
��f g
;
��g h
productToUpdate
�� 
.
�� 
Name
��  
=
��! "
updatedProduct
��# 1
.
��1 2
Name
��2 6
??
��7 9
productToUpdate
��: I
.
��I J
Name
��J N
;
��N O
productToUpdate
�� 
.
�� 
Description
�� '
=
��( )
updatedProduct
��* 8
.
��8 9
Description
��9 D
??
��E G
productToUpdate
��H W
.
��W X
Description
��X c
;
��c d
productToUpdate
�� 
.
�� 
Price
�� !
=
��" #
updatedProduct
��$ 2
.
��2 3
Price
��3 8
??
��9 ;
productToUpdate
��< K
.
��K L
Price
��L Q
;
��Q R
productToUpdate
�� 
.
�� 
Rating
�� "
=
��# $
updatedProduct
��% 3
.
��3 4
Rating
��4 :
??
��; =
productToUpdate
��> M
.
��M N
Rating
��N T
;
��T U
productToUpdate
�� 
.
�� 
ImageUrl
�� $
=
��% &
updatedProduct
��' 5
.
��5 6
ImageUrl
��6 >
??
��? A
productToUpdate
��B Q
.
��Q R
ImageUrl
��R Z
;
��Z [
productToUpdate
�� 
.
�� 
	ImagePath
�� %
=
��& '
updatedProduct
��( 6
.
��6 7
	ImagePath
��7 @
??
��A C
productToUpdate
��D S
.
��S T
	ImagePath
��T ]
;
��] ^
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
IEnumerable
�� %
<
��% &
ProductEntity
��& 3
>
��3 4
>
��4 5!
GetAllProductsAsync
��6 I
(
��I J
)
��J K
{
�� 	

IQueryable
�� 
<
�� 
ProductEntity
�� $
>
��$ %
query
��& +
=
��, -

_dbContext
��. 8
.
��8 9
Products
��9 A
;
��A B
query
�� 
=
�� 
query
�� 
.
�� 
AsNoTracking
�� &
(
��& '
)
��' (
;
��( )
return
�� 
await
�� 
query
�� 
.
�� 
ToListAsync
�� *
(
��* +
)
��+ ,
;
��, -
}
�� 	
public
�� 
void
�� 
CreateCombo
�� 
(
��  
ComboEntity
��  +
newComboEntity
��, :
)
��: ;
{
�� 	

_dbContext
�� 
.
�� 
Combos
�� 
.
�� 
Add
�� !
(
��! "
newComboEntity
��" 0
)
��0 1
;
��1 2
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
IEnumerable
�� %
<
��% &
ComboEntity
��& 1
>
��1 2
>
��2 3
GetCombosAsync
��4 B
(
��B C
)
��C D
{
�� 	

IQueryable
�� 
<
�� 
ComboEntity
�� "
>
��" #
query
��$ )
=
��* +

_dbContext
��, 6
.
��6 7
Combos
��7 =
;
��= >
query
�� 
=
�� 
query
�� 
.
�� 
AsNoTracking
�� &
(
��& '
)
��' (
;
��( )
return
�� 
await
�� 
query
�� 
.
�� 
ToListAsync
�� *
(
��* +
)
��+ ,
;
��, -
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ComboEntity
�� %
>
��% &
GetComboAsync
��' 4
(
��4 5
long
��5 9
comboId
��: A
)
��A B
{
�� 	

IQueryable
�� 
<
�� 
ComboEntity
�� "
>
��" #
query
��$ )
=
��* +

_dbContext
��, 6
.
��6 7
Combos
��7 =
;
��= >
query
�� 
=
�� 
query
�� 
.
�� 
AsNoTracking
�� &
(
��& '
)
��' (
;
��( )
return
�� 
await
�� 
query
�� 
.
�� !
FirstOrDefaultAsync
�� 2
(
��2 3
c
��3 4
=>
��5 7
c
��8 9
.
��9 :
Id
��: <
==
��= ?
comboId
��@ G
)
��G H
;
��H I
}
�� 	
public
�� 
async
�� 
Task
�� 
UpdateComboAsync
�� *
(
��* +
long
��+ /
?
��/ 0
comboId
��1 8
,
��8 9
ComboEntity
��: E
updatedCombo
��F R
)
��R S
{
�� 	
var
�� 
combo
�� 
=
�� 
await
�� 

_dbContext
�� (
.
��( )
Combos
��) /
.
��/ 0!
FirstOrDefaultAsync
��0 C
(
��C D
c
��D E
=>
��F H
c
��I J
.
��J K
Id
��K M
==
��N P
comboId
��Q X
)
��X Y
;
��Y Z
combo
�� 
.
�� 
Name
�� 
=
�� 
updatedCombo
�� %
.
��% &
Name
��& *
??
��+ -
combo
��. 3
.
��3 4
Name
��4 8
;
��8 9
combo
�� 
.
�� 
Description
�� 
=
�� 
updatedCombo
��  ,
.
��, -
Description
��- 8
??
��9 ;
combo
��< A
.
��A B
Description
��B M
;
��M N
combo
�� 
.
�� 
Price
�� 
=
�� 
updatedCombo
�� &
.
��& '
Price
��' ,
??
��- /
combo
��0 5
.
��5 6
Price
��6 ;
;
��; <
combo
�� 
.
�� 
ImageUrl
�� 
=
�� 
updatedCombo
�� )
.
��) *
ImageUrl
��* 2
??
��3 5
combo
��6 ;
.
��; <
ImageUrl
��< D
;
��D E
combo
�� 
.
�� 
	ImagePath
�� 
=
�� 
updatedCombo
�� *
.
��* +
	ImagePath
��+ 4
??
��5 7
combo
��8 =
.
��= >
	ImagePath
��> G
;
��G H
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� #
ProductIsInComboAsync
��  5
(
��5 6
long
��6 :
	productId
��; D
,
��D E
long
��F J
comboId
��K R
)
��R S
{
�� 	

IQueryable
�� 
<
�� !
Product_ComboEntity
�� *
>
��* +
query
��, 1
=
��2 3

_dbContext
��4 >
.
��> ?
Product_Combos
��? M
;
��M N
var
�� 
combo
�� 
=
�� 
await
�� 
query
�� #
.
��# $!
FirstOrDefaultAsync
��$ 7
(
��7 8
pc
��8 :
=>
��; =
pc
��> @
.
��@ A
ComboId
��A H
==
��I K
comboId
��L S
&&
��T V
pc
��W Y
.
��Y Z
	ProductId
��Z c
==
��d f
	productId
��g p
)
��p q
;
��q r
if
�� 
(
�� 
combo
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
IEnumerable
�� %
<
��% &!
Product_ComboEntity
��& 9
>
��9 :
>
��: ;$
GetProduct_CombosAsync
��< R
(
��R S
)
��S T
{
�� 	

IQueryable
�� 
<
�� !
Product_ComboEntity
�� *
>
��* +
query
��, 1
=
��2 3

_dbContext
��4 >
.
��> ?
Product_Combos
��? M
;
��M N
query
�� 
=
�� 
query
�� 
.
�� 
AsNoTracking
�� &
(
��& '
)
��' (
;
��( )
return
�� 
await
�� 
query
�� 
.
�� 
ToListAsync
�� *
(
��* +
)
��+ ,
;
��, -
}
�� 	
public
�� 
void
�� &
AddProduct_to_ComboAsync
�� ,
(
��, -!
Product_ComboEntity
��- @
newProductCombo
��A P
)
��P Q
{
�� 	

_dbContext
�� 
.
�� 
Products
�� 
.
��  
Add
��  #
(
��# $
newProductCombo
��$ 3
.
��3 4
Product
��4 ;
)
��; <
;
��< =

_dbContext
�� 
.
�� 
Products
�� 
.
��  
Attach
��  &
(
��& '
newProductCombo
��' 6
.
��6 7
Product
��7 >
)
��> ?
;
��? @

_dbContext
�� 
.
�� 
Combos
�� 
.
�� 
Add
�� !
(
��! "
newProductCombo
��" 1
.
��1 2
Combo
��2 7
)
��7 8
;
��8 9

_dbContext
�� 
.
�� 
Combos
�� 
.
�� 
Attach
�� $
(
��$ %
newProductCombo
��% 4
.
��4 5
Combo
��5 :
)
��: ;
;
��; <

_dbContext
�� 
.
�� 
Product_Combos
�� %
.
��% &
Add
��& )
(
��) *
newProductCombo
��* 9
)
��9 :
;
��: ;
}
�� 	
}
�� 
}�� �
}E:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Exceptions\InvalidOperationItemException.cs
	namespace 	
PastryShopAPI
 
. 

Exceptions "
{ 
public 

class )
InvalidOperationItemException .
:/ 0
	Exception1 :
{		 
public

 )
InvalidOperationItemException

 ,
(

, -
string

- 3
message

4 ;
)

; <
: 
base 
( 
message 
) 
{ 	
} 	
} 
} �
uE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Exceptions\NotFoundItemException.cs
	namespace 	
PastryShopAPI
 
. 

Exceptions "
{ 
public 

class !
NotFoundItemException &
:' (
	Exception) 2
{		 
public

 !
NotFoundItemException

 $
(

$ %
string

% +
message

, 3
)

3 4
: 
base 
( 
message 
) 
{ 	
} 	
} 
} ɏ
�E:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Migrations\20210624042529_CombosInitialCreate.cs
	namespace 	
PastryShopAPI
 
. 

Migrations "
{ 
public 

partial 
class 
CombosInitialCreate ,
:- .
	Migration/ 8
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{		 	
migrationBuilder

 
.

 
CreateTable

 (
(

( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
nullable. 6
:6 7
false8 =
)= >
,> ?
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
	maxLength0 9
:9 :
$num; >
,> ?
nullable@ H
:H I
trueJ N
)N O
,O P
NormalizedName "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
	maxLength: C
:C D
$numE H
,H I
nullableJ R
:R S
trueT X
)X Y
,Y Z
ConcurrencyStamp $
=% &
table' ,
., -
Column- 3
<3 4
string4 :
>: ;
(; <
nullable< D
:D E
trueF J
)J K
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 5
,5 6
x7 8
=>9 ;
x< =
.= >
Id> @
)@ A
;A B
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
nullable. 6
:6 7
false8 =
)= >
,> ?
UserName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
	maxLength4 =
:= >
$num? B
,B C
nullableD L
:L M
trueN R
)R S
,S T
NormalizedUserName &
=' (
table) .
.. /
Column/ 5
<5 6
string6 <
>< =
(= >
	maxLength> G
:G H
$numI L
,L M
nullableN V
:V W
trueX \
)\ ]
,] ^
Email 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
	maxLength1 :
:: ;
$num< ?
,? @
nullableA I
:I J
trueK O
)O P
,P Q
NormalizedEmail   #
=  $ %
table  & +
.  + ,
Column  , 2
<  2 3
string  3 9
>  9 :
(  : ;
	maxLength  ; D
:  D E
$num  F I
,  I J
nullable  K S
:  S T
true  U Y
)  Y Z
,  Z [
EmailConfirmed!! "
=!!# $
table!!% *
.!!* +
Column!!+ 1
<!!1 2
bool!!2 6
>!!6 7
(!!7 8
nullable!!8 @
:!!@ A
false!!B G
)!!G H
,!!H I
PasswordHash""  
=""! "
table""# (
.""( )
Column"") /
<""/ 0
string""0 6
>""6 7
(""7 8
nullable""8 @
:""@ A
true""B F
)""F G
,""G H
SecurityStamp## !
=##" #
table##$ )
.##) *
Column##* 0
<##0 1
string##1 7
>##7 8
(##8 9
nullable##9 A
:##A B
true##C G
)##G H
,##H I
ConcurrencyStamp$$ $
=$$% &
table$$' ,
.$$, -
Column$$- 3
<$$3 4
string$$4 :
>$$: ;
($$; <
nullable$$< D
:$$D E
true$$F J
)$$J K
,$$K L
PhoneNumber%% 
=%%  !
table%%" '
.%%' (
Column%%( .
<%%. /
string%%/ 5
>%%5 6
(%%6 7
nullable%%7 ?
:%%? @
true%%A E
)%%E F
,%%F G 
PhoneNumberConfirmed&& (
=&&) *
table&&+ 0
.&&0 1
Column&&1 7
<&&7 8
bool&&8 <
>&&< =
(&&= >
nullable&&> F
:&&F G
false&&H M
)&&M N
,&&N O
TwoFactorEnabled'' $
=''% &
table''' ,
.'', -
Column''- 3
<''3 4
bool''4 8
>''8 9
(''9 :
nullable'': B
:''B C
false''D I
)''I J
,''J K

LockoutEnd(( 
=((  
table((! &
.((& '
Column((' -
<((- .
DateTimeOffset((. <
>((< =
(((= >
nullable((> F
:((F G
true((H L
)((L M
,((M N
LockoutEnabled)) "
=))# $
table))% *
.))* +
Column))+ 1
<))1 2
bool))2 6
>))6 7
())7 8
nullable))8 @
:))@ A
false))B G
)))G H
,))H I
AccessFailedCount** %
=**& '
table**( -
.**- .
Column**. 4
<**4 5
int**5 8
>**8 9
(**9 :
nullable**: B
:**B C
false**D I
)**I J
}++ 
,++ 
constraints,, 
:,, 
table,, "
=>,,# %
{-- 
table.. 
... 

PrimaryKey.. $
(..$ %
$str..% 5
,..5 6
x..7 8
=>..9 ;
x..< =
...= >
Id..> @
)..@ A
;..A B
}// 
)// 
;// 
migrationBuilder11 
.11 
CreateTable11 (
(11( )
name22 
:22 
$str22 "
,22" #
columns33 
:33 
table33 
=>33 !
new33" %
{44 
Id55 
=55 
table55 
.55 
Column55 %
<55% &
long55& *
>55* +
(55+ ,
nullable55, 4
:554 5
false556 ;
)55; <
.66 

Annotation66 #
(66# $
$str66$ 8
,668 9
$str66: @
)66@ A
,66A B
Name77 
=77 
table77  
.77  !
Column77! '
<77' (
string77( .
>77. /
(77/ 0
nullable770 8
:778 9
true77: >
)77> ?
,77? @
Description88 
=88  !
table88" '
.88' (
Column88( .
<88. /
string88/ 5
>885 6
(886 7
nullable887 ?
:88? @
true88A E
)88E F
,88F G
ImageUrl99 
=99 
table99 $
.99$ %
Column99% +
<99+ ,
string99, 2
>992 3
(993 4
nullable994 <
:99< =
true99> B
)99B C
,99C D
	ImagePath:: 
=:: 
table::  %
.::% &
Column::& ,
<::, -
string::- 3
>::3 4
(::4 5
nullable::5 =
:::= >
true::? C
)::C D
};; 
,;; 
constraints<< 
:<< 
table<< "
=><<# %
{== 
table>> 
.>> 

PrimaryKey>> $
(>>$ %
$str>>% 4
,>>4 5
x>>6 7
=>>>8 :
x>>; <
.>>< =
Id>>= ?
)>>? @
;>>@ A
}?? 
)?? 
;?? 
migrationBuilderAA 
.AA 
CreateTableAA (
(AA( )
nameBB 
:BB 
$strBB #
,BB# $
columnsCC 
:CC 
tableCC 
=>CC !
newCC" %
{DD 
IdEE 
=EE 
tableEE 
.EE 
ColumnEE %
<EE% &
longEE& *
>EE* +
(EE+ ,
nullableEE, 4
:EE4 5
falseEE6 ;
)EE; <
.FF 

AnnotationFF #
(FF# $
$strFF$ 8
,FF8 9
$strFF: @
)FF@ A
,FFA B
NameGG 
=GG 
tableGG  
.GG  !
ColumnGG! '
<GG' (
stringGG( .
>GG. /
(GG/ 0
nullableGG0 8
:GG8 9
trueGG: >
)GG> ?
,GG? @
DescriptionHH 
=HH  !
tableHH" '
.HH' (
ColumnHH( .
<HH. /
stringHH/ 5
>HH5 6
(HH6 7
nullableHH7 ?
:HH? @
trueHHA E
)HHE F
}II 
,II 
constraintsJJ 
:JJ 
tableJJ "
=>JJ# %
{KK 
tableLL 
.LL 

PrimaryKeyLL $
(LL$ %
$strLL% 5
,LL5 6
xLL7 8
=>LL9 ;
xLL< =
.LL= >
IdLL> @
)LL@ A
;LLA B
}MM 
)MM 
;MM 
migrationBuilderOO 
.OO 
CreateTableOO (
(OO( )
namePP 
:PP 
$strPP (
,PP( )
columnsQQ 
:QQ 
tableQQ 
=>QQ !
newQQ" %
{RR 
IdSS 
=SS 
tableSS 
.SS 
ColumnSS %
<SS% &
intSS& )
>SS) *
(SS* +
nullableSS+ 3
:SS3 4
falseSS5 :
)SS: ;
.TT 

AnnotationTT #
(TT# $
$strTT$ 8
,TT8 9
$strTT: @
)TT@ A
,TTA B
RoleIdUU 
=UU 
tableUU "
.UU" #
ColumnUU# )
<UU) *
stringUU* 0
>UU0 1
(UU1 2
nullableUU2 :
:UU: ;
falseUU< A
)UUA B
,UUB C
	ClaimTypeVV 
=VV 
tableVV  %
.VV% &
ColumnVV& ,
<VV, -
stringVV- 3
>VV3 4
(VV4 5
nullableVV5 =
:VV= >
trueVV? C
)VVC D
,VVD E

ClaimValueWW 
=WW  
tableWW! &
.WW& '
ColumnWW' -
<WW- .
stringWW. 4
>WW4 5
(WW5 6
nullableWW6 >
:WW> ?
trueWW@ D
)WWD E
}XX 
,XX 
constraintsYY 
:YY 
tableYY "
=>YY# %
{ZZ 
table[[ 
.[[ 

PrimaryKey[[ $
([[$ %
$str[[% :
,[[: ;
x[[< =
=>[[> @
x[[A B
.[[B C
Id[[C E
)[[E F
;[[F G
table\\ 
.\\ 

ForeignKey\\ $
(\\$ %
name]] 
:]] 
$str]] F
,]]F G
column^^ 
:^^ 
x^^  !
=>^^" $
x^^% &
.^^& '
RoleId^^' -
,^^- .
principalTable__ &
:__& '
$str__( 5
,__5 6
principalColumn`` '
:``' (
$str``) -
,``- .
onDeleteaa  
:aa  !
ReferentialActionaa" 3
.aa3 4
Cascadeaa4 ;
)aa; <
;aa< =
}bb 
)bb 
;bb 
migrationBuilderdd 
.dd 
CreateTabledd (
(dd( )
nameee 
:ee 
$stree (
,ee( )
columnsff 
:ff 
tableff 
=>ff !
newff" %
{gg 
Idhh 
=hh 
tablehh 
.hh 
Columnhh %
<hh% &
inthh& )
>hh) *
(hh* +
nullablehh+ 3
:hh3 4
falsehh5 :
)hh: ;
.ii 

Annotationii #
(ii# $
$strii$ 8
,ii8 9
$strii: @
)ii@ A
,iiA B
UserIdjj 
=jj 
tablejj "
.jj" #
Columnjj# )
<jj) *
stringjj* 0
>jj0 1
(jj1 2
nullablejj2 :
:jj: ;
falsejj< A
)jjA B
,jjB C
	ClaimTypekk 
=kk 
tablekk  %
.kk% &
Columnkk& ,
<kk, -
stringkk- 3
>kk3 4
(kk4 5
nullablekk5 =
:kk= >
truekk? C
)kkC D
,kkD E

ClaimValuell 
=ll  
tablell! &
.ll& '
Columnll' -
<ll- .
stringll. 4
>ll4 5
(ll5 6
nullablell6 >
:ll> ?
truell@ D
)llD E
}mm 
,mm 
constraintsnn 
:nn 
tablenn "
=>nn# %
{oo 
tablepp 
.pp 

PrimaryKeypp $
(pp$ %
$strpp% :
,pp: ;
xpp< =
=>pp> @
xppA B
.ppB C
IdppC E
)ppE F
;ppF G
tableqq 
.qq 

ForeignKeyqq $
(qq$ %
namerr 
:rr 
$strrr F
,rrF G
columnss 
:ss 
xss  !
=>ss" $
xss% &
.ss& '
UserIdss' -
,ss- .
principalTablett &
:tt& '
$strtt( 5
,tt5 6
principalColumnuu '
:uu' (
$struu) -
,uu- .
onDeletevv  
:vv  !
ReferentialActionvv" 3
.vv3 4
Cascadevv4 ;
)vv; <
;vv< =
}ww 
)ww 
;ww 
migrationBuilderyy 
.yy 
CreateTableyy (
(yy( )
namezz 
:zz 
$strzz (
,zz( )
columns{{ 
:{{ 
table{{ 
=>{{ !
new{{" %
{|| 
LoginProvider}} !
=}}" #
table}}$ )
.}}) *
Column}}* 0
<}}0 1
string}}1 7
>}}7 8
(}}8 9
nullable}}9 A
:}}A B
false}}C H
)}}H I
,}}I J
ProviderKey~~ 
=~~  !
table~~" '
.~~' (
Column~~( .
<~~. /
string~~/ 5
>~~5 6
(~~6 7
nullable~~7 ?
:~~? @
false~~A F
)~~F G
,~~G H
ProviderDisplayName '
=( )
table* /
./ 0
Column0 6
<6 7
string7 =
>= >
(> ?
nullable? G
:G H
trueI M
)M N
,N O
UserId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
string
��* 0
>
��0 1
(
��1 2
nullable
��2 :
:
��: ;
false
��< A
)
��A B
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% :
,
��: ;
x
��< =
=>
��> @
new
��A D
{
��E F
x
��G H
.
��H I
LoginProvider
��I V
,
��V W
x
��X Y
.
��Y Z
ProviderKey
��Z e
}
��f g
)
��g h
;
��h i
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� F
,
��F G
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
UserId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� '
,
��' (
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
UserId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
string
��* 0
>
��0 1
(
��1 2
nullable
��2 :
:
��: ;
false
��< A
)
��A B
,
��B C
RoleId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
string
��* 0
>
��0 1
(
��1 2
nullable
��2 :
:
��: ;
false
��< A
)
��A B
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% 9
,
��9 :
x
��; <
=>
��= ?
new
��@ C
{
��D E
x
��F G
.
��G H
UserId
��H N
,
��N O
x
��P Q
.
��Q R
RoleId
��R X
}
��Y Z
)
��Z [
;
��[ \
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� E
,
��E F
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
RoleId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� E
,
��E F
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
UserId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� (
,
��( )
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
UserId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
string
��* 0
>
��0 1
(
��1 2
nullable
��2 :
:
��: ;
false
��< A
)
��A B
,
��B C
LoginProvider
�� !
=
��" #
table
��$ )
.
��) *
Column
��* 0
<
��0 1
string
��1 7
>
��7 8
(
��8 9
nullable
��9 A
:
��A B
false
��C H
)
��H I
,
��I J
Name
�� 
=
�� 
table
��  
.
��  !
Column
��! '
<
��' (
string
��( .
>
��. /
(
��/ 0
nullable
��0 8
:
��8 9
false
��: ?
)
��? @
,
��@ A
Value
�� 
=
�� 
table
�� !
.
��! "
Column
��" (
<
��( )
string
��) /
>
��/ 0
(
��0 1
nullable
��1 9
:
��9 :
true
��; ?
)
��? @
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% :
,
��: ;
x
��< =
=>
��> @
new
��A D
{
��E F
x
��G H
.
��H I
UserId
��I O
,
��O P
x
��Q R
.
��R S
LoginProvider
��S `
,
��` a
x
��b c
.
��c d
Name
��d h
}
��i j
)
��j k
;
��k l
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� F
,
��F G
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
UserId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
��  
,
��  !
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
Id
�� 
=
�� 
table
�� 
.
�� 
Column
�� %
<
��% &
long
��& *
>
��* +
(
��+ ,
nullable
��, 4
:
��4 5
false
��6 ;
)
��; <
.
�� 

Annotation
�� #
(
��# $
$str
��$ 8
,
��8 9
$str
��: @
)
��@ A
,
��A B
Name
�� 
=
�� 
table
��  
.
��  !
Column
��! '
<
��' (
string
��( .
>
��. /
(
��/ 0
nullable
��0 8
:
��8 9
true
��: >
)
��> ?
,
��? @
Description
�� 
=
��  !
table
��" '
.
��' (
Column
��( .
<
��. /
string
��/ 5
>
��5 6
(
��6 7
nullable
��7 ?
:
��? @
true
��A E
)
��E F
,
��F G
Price
�� 
=
�� 
table
�� !
.
��! "
Column
��" (
<
��( )
long
��) -
>
��- .
(
��. /
nullable
��/ 7
:
��7 8
true
��9 =
)
��= >
,
��> ?
Rating
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
int
��* -
>
��- .
(
��. /
nullable
��/ 7
:
��7 8
true
��9 =
)
��= >
,
��> ?
ImageUrl
�� 
=
�� 
table
�� $
.
��$ %
Column
��% +
<
��+ ,
string
��, 2
>
��2 3
(
��3 4
nullable
��4 <
:
��< =
true
��> B
)
��B C
,
��C D
	ImagePath
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
string
��- 3
>
��3 4
(
��4 5
nullable
��5 =
:
��= >
true
��? C
)
��C D
,
��D E

CategoryId
�� 
=
��  
table
��! &
.
��& '
Column
��' -
<
��- .
long
��. 2
>
��2 3
(
��3 4
nullable
��4 <
:
��< =
true
��> B
)
��B C
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% 2
,
��2 3
x
��4 5
=>
��6 8
x
��9 :
.
��: ;
Id
��; =
)
��= >
;
��> ?
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� A
,
��A B
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '

CategoryId
��' 1
,
��1 2
principalTable
�� &
:
��& '
$str
��( 4
,
��4 5
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� &
,
��& '
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
Id
�� 
=
�� 
table
�� 
.
�� 
Column
�� %
<
��% &
long
��& *
>
��* +
(
��+ ,
nullable
��, 4
:
��4 5
false
��6 ;
)
��; <
.
�� 

Annotation
�� #
(
��# $
$str
��$ 8
,
��8 9
$str
��: @
)
��@ A
,
��A B
	ProductId
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
long
��- 1
>
��1 2
(
��2 3
nullable
��3 ;
:
��; <
false
��= B
)
��B C
,
��C D
ComboId
�� 
=
�� 
table
�� #
.
��# $
Column
��$ *
<
��* +
long
��+ /
>
��/ 0
(
��0 1
nullable
��1 9
:
��9 :
false
��; @
)
��@ A
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% 8
,
��8 9
x
��: ;
=>
��< >
x
��? @
.
��@ A
Id
��A C
)
��C D
;
��D E
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� B
,
��B C
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
ComboId
��' .
,
��. /
principalTable
�� &
:
��& '
$str
��( 2
,
��2 3
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� G
,
��G H
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
	ProductId
��' 0
,
��0 1
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 2
,
��2 3
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� %
,
��% &
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� (
,
��( )
unique
�� 
:
�� 
true
�� 
,
�� 
filter
�� 
:
�� 
$str
�� 6
)
��6 7
;
��7 8
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 2
,
��2 3
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 2
,
��2 3
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 1
,
��1 2
table
�� 
:
�� 
$str
�� (
,
��( )
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� "
,
��" #
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� )
)
��) *
;
��* +
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� %
,
��% &
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� ,
,
��, -
unique
�� 
:
�� 
true
�� 
,
�� 
filter
�� 
:
�� 
$str
�� :
)
��: ;
;
��; <
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 1
,
��1 2
table
�� 
:
�� 
$str
�� '
,
��' (
column
�� 
:
�� 
$str
�� !
)
��! "
;
��" #
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 3
,
��3 4
table
�� 
:
�� 
$str
�� '
,
��' (
column
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� .
,
��. /
table
�� 
:
�� 
$str
�� !
,
��! "
column
�� 
:
�� 
$str
�� $
)
��$ %
;
��% &
}
�� 	
	protected
�� 
override
�� 
void
�� 
Down
��  $
(
��$ %
MigrationBuilder
��% 5
migrationBuilder
��6 F
)
��F G
{
�� 	
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� '
)
��' (
;
��( )
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� &
)
��& '
;
��' (
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� "
)
��" #
;
��# $
}
�� 	
}
�� 
}�� �
�E:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Migrations\20210624203436_AddedImageInCombos.cs
	namespace 	
PastryShopAPI
 
. 

Migrations "
{ 
public 

partial 
class 
AddedImageInCombos +
:, -
	Migration. 7
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder		 
.		 
	AddColumn		 &
<		& '
string		' -
>		- .
(		. /
name

 
:

 
$str

 !
,

! "
table 
: 
$str $
,$ %
nullable 
: 
true 
) 
;  
migrationBuilder 
. 
	AddColumn &
<& '
string' -
>- .
(. /
name 
: 
$str  
,  !
table 
: 
$str $
,$ %
nullable 
: 
true 
) 
;  
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str !
,! "
table 
: 
$str $
)$ %
;% &
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str  
,  !
table 
: 
$str $
)$ %
;% &
} 	
} 
} �
�E:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Migrations\20210624211704_AddedCombosToDbContext3.cs
	namespace 	
PastryShopAPI
 
. 

Migrations "
{ 
public 

partial 
class #
AddedCombosToDbContext3 0
:1 2
	Migration3 <
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder		 
.		 
DropForeignKey		 +
(		+ ,
name

 
:

 
$str

 ?
,

? @
table 
: 
$str '
)' (
;( )
migrationBuilder 
. 
DropPrimaryKey +
(+ ,
name 
: 
$str &
,& '
table 
: 
$str $
)$ %
;% &
migrationBuilder 
. 
RenameTable (
(( )
name 
: 
$str #
,# $
newName 
: 
$str !
)! "
;" #
migrationBuilder 
. 
AddPrimaryKey *
(* +
name 
: 
$str !
,! "
table 
: 
$str 
,  
column 
: 
$str 
) 
; 
migrationBuilder 
. 
AddForeignKey *
(* +
name 
: 
$str :
,: ;
table 
: 
$str '
,' (
column 
: 
$str #
,# $
principalTable 
: 
$str  (
,( )
principalColumn 
:  
$str! %
,% &
onDelete   
:   
ReferentialAction   +
.  + ,
Cascade  , 3
)  3 4
;  4 5
}!! 	
	protected## 
override## 
void## 
Down##  $
(##$ %
MigrationBuilder##% 5
migrationBuilder##6 F
)##F G
{$$ 	
migrationBuilder%% 
.%% 
DropForeignKey%% +
(%%+ ,
name&& 
:&& 
$str&& :
,&&: ;
table'' 
:'' 
$str'' '
)''' (
;''( )
migrationBuilder)) 
.)) 
DropPrimaryKey)) +
())+ ,
name** 
:** 
$str** !
,**! "
table++ 
:++ 
$str++ 
)++  
;++  !
migrationBuilder-- 
.-- 
RenameTable-- (
(--( )
name.. 
:.. 
$str.. 
,.. 
newName// 
:// 
$str// &
)//& '
;//' (
migrationBuilder11 
.11 
AddPrimaryKey11 *
(11* +
name22 
:22 
$str22 &
,22& '
table33 
:33 
$str33 $
,33$ %
column44 
:44 
$str44 
)44 
;44 
migrationBuilder66 
.66 
AddForeignKey66 *
(66* +
name77 
:77 
$str77 ?
,77? @
table88 
:88 
$str88 '
,88' (
column99 
:99 
$str99 #
,99# $
principalTable:: 
::: 
$str::  -
,::- .
principalColumn;; 
:;;  
$str;;! %
,;;% &
onDelete<< 
:<< 
ReferentialAction<< +
.<<+ ,
Cascade<<, 3
)<<3 4
;<<4 5
}== 	
}>> 
}?? �

~E:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Migrations\20210624212257_AddedComboPrice.cs
	namespace 	
PastryShopAPI
 
. 

Migrations "
{ 
public 

partial 
class 
AddedComboPrice (
:) *
	Migration+ 4
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder		 
.		 
	AddColumn		 &
<		& '
long		' +
>		+ ,
(		, -
name

 
:

 
$str

 
,

 
table 
: 
$str 
,  
nullable 
: 
true 
) 
;  
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str 
, 
table 
: 
$str 
)  
;  !
} 	
} 
} �
�E:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Migrations\20210625033146_AddedIdKeyToProductComboEnity.cs
	namespace 	
PastryShopAPI
 
. 

Migrations "
{ 
public 

partial 
class )
AddedIdKeyToProductComboEnity 6
:7 8
	Migration9 B
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
}

 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
} 	
} 
} �
�E:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Migrations\20210625043608_FixedInvertedIdsInDbContext.cs
	namespace 	
PastryShopAPI
 
. 

Migrations "
{ 
public 

partial 
class '
FixedInvertedIdsInDbContext 4
:5 6
	Migration7 @
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder		 
.		 
DropForeignKey		 +
(		+ ,
name

 
:

 
$str

 :
,

: ;
table 
: 
$str '
)' (
;( )
migrationBuilder 
. 
DropForeignKey +
(+ ,
name 
: 
$str :
,: ;
table 
: 
$str '
)' (
;( )
migrationBuilder 
. 
AddForeignKey *
(* +
name 
: 
$str 8
,8 9
table 
: 
$str '
,' (
column 
: 
$str !
,! "
principalTable 
: 
$str  (
,( )
principalColumn 
:  
$str! %
,% &
onDelete 
: 
ReferentialAction +
.+ ,
Cascade, 3
)3 4
;4 5
migrationBuilder 
. 
AddForeignKey *
(* +
name 
: 
$str <
,< =
table 
: 
$str '
,' (
column 
: 
$str #
,# $
principalTable 
: 
$str  *
,* +
principalColumn 
:  
$str! %
,% &
onDelete 
: 
ReferentialAction +
.+ ,
Cascade, 3
)3 4
;4 5
}   	
	protected"" 
override"" 
void"" 
Down""  $
(""$ %
MigrationBuilder""% 5
migrationBuilder""6 F
)""F G
{## 	
migrationBuilder$$ 
.$$ 
DropForeignKey$$ +
($$+ ,
name%% 
:%% 
$str%% 8
,%%8 9
table&& 
:&& 
$str&& '
)&&' (
;&&( )
migrationBuilder(( 
.(( 
DropForeignKey(( +
(((+ ,
name)) 
:)) 
$str)) <
,))< =
table** 
:** 
$str** '
)**' (
;**( )
migrationBuilder,, 
.,, 
AddForeignKey,, *
(,,* +
name-- 
:-- 
$str-- :
,--: ;
table.. 
:.. 
$str.. '
,..' (
column// 
:// 
$str// !
,//! "
principalTable00 
:00 
$str00  *
,00* +
principalColumn11 
:11  
$str11! %
,11% &
onDelete22 
:22 
ReferentialAction22 +
.22+ ,
Cascade22, 3
)223 4
;224 5
migrationBuilder44 
.44 
AddForeignKey44 *
(44* +
name55 
:55 
$str55 :
,55: ;
table66 
:66 
$str66 '
,66' (
column77 
:77 
$str77 #
,77# $
principalTable88 
:88 
$str88  (
,88( )
principalColumn99 
:99  
$str99! %
,99% &
onDelete:: 
::: 
ReferentialAction:: +
.::+ ,
Cascade::, 3
)::3 4
;::4 5
};; 	
}<< 
}== �
mE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Models\CategoryFormModel.cs
	namespace 	
PastryShopAPI
 
. 
Models 
{ 
public		 

class		 
CategoryFormModel		 "
:		# $
CategoryModel		% 2
{

 
public 
	IFormFile 
Image 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} �
iE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Models\CategoryModel.cs
	namespace 	
PastryShopAPI
 
. 
Models 
{ 
public		 

class		 
CategoryModel		 
{

 
public 
long 
? 
Id 
{ 
get 
; 
set "
;" #
}$ %
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage &
=' (
$str) x
,x y
MinimumLength	z �
=
� �
$num
� �
)
� �
]
� �
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage '
=( )
$str	* �
,
� �
MinimumLength
� �
=
� �
$num
� �
)
� �
]
� �
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
ImageUrl 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
	ImagePath 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} �
qE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Models\Combos\ComboFormModel.cs
	namespace 	
PastryShopAPI
 
. 
Models 
. 
Combos %
{ 
public		 

class		 
ComboFormModel		 
:		  !

ComboModel		" ,
{

 
public 
	IFormFile 
Image 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} �
mE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Models\Combos\ComboModel.cs
	namespace 	
PastryShopAPI
 
. 
Models 
. 
Combos %
{ 
public		 

class		 

ComboModel		 
{

 
public 
long 
? 
Id 
{ 
get 
; 
set "
;" #
}$ %
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage &
=' (
$str) x
,x y
MinimumLength	z �
=
� �
$num
� �
)
� �
]
� �
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage '
=( )
$str	* �
,
� �
MinimumLength
� �
=
� �
$num
� �
)
� �
]
� �
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
long 
? 
Price 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
ImageUrl 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
	ImagePath 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} �
uE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Models\Combos\Product_ComboModel.cs
	namespace 	
PastryShopAPI
 
. 
Models 
. 
Combos %
{ 
public 

class 
Product_ComboModel #
{		 
public

 
long

 
	ProductId

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
long 
ComboId 
{ 
get !
;! "
set# &
;& '
}( )
} 
} �
lE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Models\ProductFormModel.cs
	namespace 	
PastryShopAPI
 
. 
Models 
{ 
public		 

class		 
ProductFormModel		 !
:		" #
ProductModel		$ 0
{

 
public 
	IFormFile 
Image 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} �
hE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Models\ProductModel.cs
	namespace 	
PastryShopAPI
 
. 
Models 
{ 
public		 

class		 
ProductModel		 
{

 
public 
long 
? 
Id 
{ 
get 
; 
set "
;" #
}$ %
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage &
=' (
$str) x
,x y
MinimumLength	z �
=
� �
$num
� �
)
� �
]
� �
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage '
=( )
$str	* �
,
� �
MinimumLength
� �
=
� �
$num
� �
)
� �
]
� �
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
] 
public 
long 
? 
Price 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Range	 
( 
$num 
, 
$num 
, 
ErrorMessage !
=" #
$str$ P
)P Q
]Q R
public 
int 
? 
Rating 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
ImageUrl 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
	ImagePath 
{  !
get" %
;% &
set' *
;* +
}, -
public 
long 

CategoryId 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} �
xE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Models\Security\CreateRoleViewModel.cs
	namespace 	
PastryShopAPI
 
. 
Models 
. 
Security '
{ 
public		 

class		 
CreateRoleViewModel		 $
{

 
[ 	
Required	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
] 
public 
string 
NormalizedName $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} �
|E:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Models\Security\CreateUserRoleViewModel.cs
	namespace 	
PastryShopAPI
 
. 
Models 
. 
Security '
{ 
public 

class #
CreateUserRoleViewModel (
{		 
public

 
string

 
UserId

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
string 
RoleId 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} �
sE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Models\Security\LoginViewModel.cs
	namespace 	
PastryShopAPI
 
. 
Models 
. 
Security '
{ 
public		 

class		 
LoginViewModel		 
{

 
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
) 
] 
[ 	
EmailAddress	 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
MinimumLength '
=( )
$num* +
)+ ,
], -
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} �
vE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Models\Security\RegisterViewModel.cs
	namespace 	
PastryShopAPI
 
. 
Models 
. 
Security '
{ 
public		 

class		 
RegisterViewModel		 "
{

 
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
) 
] 
[ 	
EmailAddress	 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
MinimumLength '
=( )
$num* +
)+ ,
], -
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
MinimumLength '
=( )
$num* +
)+ ,
], -
public 
string 
ConfirmPassword %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} �
xE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Models\Security\UserManagerResponse.cs
	namespace 	
PastryShopAPI
 
. 
Models 
. 
Security '
{ 
public 

class 
UserManagerResponse $
{		 
public

 
string

 
Message

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
bool 
	IsSuccess 
{ 
get  #
;# $
set% (
;( )
}* +
public 
IEnumerable 
< 
string !
>! "
Errors# )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
DateTime 
? 

ExpireDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} �

\E:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Program.cs
	namespace

 	
PastryShopAPI


 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} �G
oE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Services\CategoriesService.cs
	namespace		 	
PastryShopAPI		
 
.		 
Services		  
{

 
public 

class 
CategoriesService "
:# $
ICategoriesService% 7
{ 
readonly !
IPastryShopRepository &!
_pastryShopRepository' <
;< =
readonly 
IMapper 
_mapper  
;  !
readonly 
HashSet 
< 
string 
>  !
_allowedOrderByValues! 6
=7 8
new9 <
HashSet= D
<D E
stringE K
>K L
(L M
)M N
{ 	
$str 
, 
$str 
, 
$str 
, 
$str 
} 	
;	 

public 
CategoriesService  
(  !!
IPastryShopRepository! 6 
pastryShopRepository7 K
,K L
IMapperM T
mapperU [
)[ \
{ 	!
_pastryShopRepository !
=" # 
pastryShopRepository$ 8
;8 9
_mapper 
= 
mapper 
; 
} 	
public 
async 
Task 
< 
CategoryModel '
>' (
CreateCategoryAsync) <
(< =
CategoryModel= J
newCategoryK V
)V W
{ 	
var   
categoryEntity   
=    
_mapper  ! (
.  ( )
Map  ) ,
<  , -
CategoryEntity  - ;
>  ; <
(  < =
newCategory  = H
)  H I
;  I J!
_pastryShopRepository!! !
.!!! "
CreateCategory!!" 0
(!!0 1
categoryEntity!!1 ?
)!!? @
;!!@ A
var"" 
result"" 
="" 
await"" !
_pastryShopRepository"" 4
.""4 5
SaveChangesAsync""5 E
(""E F
)""F G
;""G H
if$$ 
($$ 
result$$ 
)$$ 
{%% 
return&& 
_mapper&& 
.&& 
Map&& "
<&&" #
CategoryModel&&# 0
>&&0 1
(&&1 2
categoryEntity&&2 @
)&&@ A
;&&A B
}'' 
throw)) 
new)) )
InvalidOperationItemException)) 3
())3 4
$"))4 6
$str))6 Z
{))Z [
newCategory))[ f
.))f g
Name))g k
}))k l
"))l m
)))m n
;))n o
}** 	
public,, 
async,, 
Task,, 
<,, 
bool,, 
>,, 
DeleteCategoryAsync,,  3
(,,3 4
long,,4 8

categoryId,,9 C
),,C D
{-- 	
await.. !
ValidateCategoryAsync.. '
(..' (

categoryId..( 2
)..2 3
;..3 4
await// !
_pastryShopRepository// '
.//' (
DeleteCategoryAsync//( ;
(//; <

categoryId//< F
)//F G
;//G H
var00 
result00 
=00 
await00 !
_pastryShopRepository00 4
.004 5
SaveChangesAsync005 E
(00E F
)00F G
;00G H
if22 
(22 
!22 
result22 
)22 
{33 
throw44 
new44 )
InvalidOperationItemException44 7
(447 8
$"448 :
$str44: X
{44X Y

categoryId44Y c
}44c d
"44d e
)44e f
;44f g
}55 
return66 
true66 
;66 
}77 	
public99 
async99 
Task99 
<99 
IEnumerable99 %
<99% &
CategoryModel99& 3
>993 4
>994 5
GetCategoriesAsync996 H
(99H I
string99I O
orderBy99P W
=99X Y
$str99Z ^
)99^ _
{:: 	
if;; 
(;; 
!;; !
_allowedOrderByValues;; &
.;;& '
Contains;;' /
(;;/ 0
orderBy;;0 7
.;;7 8
ToLower;;8 ?
(;;? @
);;@ A
);;A B
);;B C
throw<< 
new<< )
InvalidOperationItemException<< 7
(<<7 8
$"<<8 :
$str<<: M
{<<M N
orderBy<<N U
}<<U V
$str<<V u
{<<u v
String<<v |
.<<| }
Join	<<} �
(
<<� �
$char
<<� �
,
<<� �#
_allowedOrderByValues
<<� �
.
<<� �
ToArray
<<� �
(
<<� �
)
<<� �
)
<<� �
}
<<� �
"
<<� �
)
<<� �
;
<<� �
var== 

entityList== 
=== 
await== "!
_pastryShopRepository==# 8
.==8 9
GetCategoriesAsync==9 K
(==K L
orderBy==L S
.==S T
ToLower==T [
(==[ \
)==\ ]
)==] ^
;==^ _
var>> 
	modelList>> 
=>> 
_mapper>> #
.>># $
Map>>$ '
<>>' (
IEnumerable>>( 3
<>>3 4
CategoryModel>>4 A
>>>A B
>>>B C
(>>C D

entityList>>D N
)>>N O
;>>O P
return?? 
	modelList?? 
;?? 
}@@ 	
publicBB 
asyncBB 
TaskBB 
<BB 
CategoryModelBB '
>BB' (
GetCategoryAsyncBB) 9
(BB9 :
longBB: >

categoryIdBB? I
)BBI J
{CC 	
varDD 
categoryDD 
=DD 
awaitDD  !
_pastryShopRepositoryDD! 6
.DD6 7
GetCategoryAsyncDD7 G
(DDG H

categoryIdDDH R
)DDR S
;DDS T
ifFF 
(FF 
categoryFF 
==FF 
nullFF  
)FF  !
{GG 
throwHH 
newHH !
NotFoundItemExceptionHH /
(HH/ 0
$"HH0 2
$strHH2 H
{HHH I

categoryIdHHI S
}HHS T
$strHHT e
"HHe f
)HHf g
;HHg h
}II 
returnLL 
_mapperLL 
.LL 
MapLL 
<LL 
CategoryModelLL ,
>LL, -
(LL- .
categoryLL. 6
)LL6 7
;LL7 8
}MM 	
publicOO 
asyncOO 
TaskOO 
<OO 
CategoryModelOO '
>OO' (
UpdateCategoryAsyncOO) <
(OO< =
longOO= A

categoryIdOOB L
,OOL M
CategoryModelOON [
updatedCategoryOO\ k
)OOk l
{PP 	
awaitQQ !
ValidateCategoryAsyncQQ '
(QQ' (

categoryIdQQ( 2
)QQ2 3
;QQ3 4
updatedCategoryRR 
.RR 
IdRR 
=RR  

categoryIdRR! +
;RR+ ,
awaitSS !
_pastryShopRepositorySS '
.SS' (
UpdateCategoryAsyncSS( ;
(SS; <

categoryIdSS< F
,SSF G
_mapperSSH O
.SSO P
MapSSP S
<SSS T
CategoryEntitySST b
>SSb c
(SSc d
updatedCategorySSd s
)SSs t
)SSt u
;SSu v
varTT 
resultTT 
=TT 
awaitTT !
_pastryShopRepositoryTT 4
.TT4 5
SaveChangesAsyncTT5 E
(TTE F
)TTF G
;TTG H
ifVV 
(VV 
!VV 
resultVV 
)VV 
{WW 
throwXX 
newXX )
InvalidOperationItemExceptionXX 7
(XX7 8
$"XX8 :
$strXX: U
{XXU V
updatedCategoryXXV e
.XXe f
NameXXf j
}XXj k
$strXXk u
{XXu v
updatedCategory	XXv �
.
XX� �
Id
XX� �
}
XX� �
"
XX� �
)
XX� �
;
XX� �
}YY 
return[[ 
updatedCategory[[ "
;[[" #
}\\ 	
private^^ 
async^^ 
Task^^ !
ValidateCategoryAsync^^ 0
(^^0 1
long^^1 5

categoryId^^6 @
)^^@ A
{__ 	
var`` 
category`` 
=`` 
await``  !
_pastryShopRepository``! 6
.``6 7
GetCategoryAsync``7 G
(``G H

categoryId``H R
)``R S
;``S T
ifbb 
(bb 
categorybb 
==bb 
nullbb  
)bb  !
{cc 
throwdd 
newdd !
NotFoundItemExceptiondd /
(dd/ 0
$"dd0 2
$strdd2 H
{ddH I

categoryIdddI S
}ddS T
$strddT e
"dde f
)ddf g
;ddg h
}ee 
}ff 	
}gg 
}hh �^
rE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Services\Combos\CombosService.cs
	namespace 	
PastryShopAPI
 
. 
Services  
.  !
Combos! '
{ 
public 

class 
CombosService 
:  
ICombosService! /
{ 
private !
IPastryShopRepository %!
_pastryShopRepository& ;
;; <
private 
IMapper 
_mapper 
;  
public 
CombosService 
( !
IPastryShopRepository 2 
pastryShopRepository3 G
,G H
IMapperI P
mapperQ W
)W X
{ 	!
_pastryShopRepository !
=" # 
pastryShopRepository$ 8
;8 9
_mapper 
= 
mapper 
; 
} 	
public 
async 
Task 
< 

ComboModel $
>$ %
CreateComboAsync& 6
(6 7

ComboModel7 A
newComboB J
)J K
{ 	
var 
comboEntity 
= 
_mapper %
.% &
Map& )
<) *
ComboEntity* 5
>5 6
(6 7
newCombo7 ?
)? @
;@ A!
_pastryShopRepository !
.! "
CreateCombo" -
(- .
comboEntity. 9
)9 :
;: ;
var 
result 
= 
await !
_pastryShopRepository 4
.4 5
SaveChangesAsync5 E
(E F
)F G
;G H
if!! 
(!! 
result!! 
)!! 
{"" 
return## 
_mapper## 
.## 
Map## "
<##" #

ComboModel### -
>##- .
(##. /
comboEntity##/ :
)##: ;
;##; <
}$$ 
throw&& 
new&& 
	Exception&& 
(&&  
$str&&  0
)&&0 1
;&&1 2
}'' 	
public** 
async** 
Task** 
<** 
IEnumerable** %
<**% &

ComboModel**& 0
>**0 1
>**1 2
GetCombosAsync**3 A
(**A B
)**B C
{++ 	
var,, 

entityList,, 
=,, 
await,, "!
_pastryShopRepository,,# 8
.,,8 9
GetCombosAsync,,9 G
(,,G H
),,H I
;,,I J
var-- 
	modelList-- 
=-- 
_mapper-- #
.--# $
Map--$ '
<--' (
IEnumerable--( 3
<--3 4

ComboModel--4 >
>--> ?
>--? @
(--@ A

entityList--A K
)--K L
;--L M
return.. 
	modelList.. 
;.. 
}// 	
public11 
async11 
Task11 
<11 

ComboModel11 $
>11$ %
GetComboAsync11& 3
(113 4
long114 8
comboId119 @
)11@ A
{22 	
var33 
combo33 
=33 
await33 !
_pastryShopRepository33 3
.333 4
GetComboAsync334 A
(33A B
comboId33B I
)33I J
;33J K
if55 
(55 
combo55 
==55 
null55 
)55 
{66 
throw77 
new77 !
NotFoundItemException77 /
(77/ 0
$"770 2
$str772 E
{77E F
comboId77F M
}77M N
$str77N _
"77_ `
)77` a
;77a b
}88 
return;; 
_mapper;; 
.;; 
Map;; 
<;; 

ComboModel;; )
>;;) *
(;;* +
combo;;+ 0
);;0 1
;;;1 2
}<< 	
public>> 
async>> 
Task>> 
<>> 

ComboModel>> $
>>>$ %
UpdateComboAsync>>& 6
(>>6 7

ComboModel>>I S
updatedCombo>>T `
)>>` a
{?? 	
awaitBB !
_pastryShopRepositoryBB '
.BB' (
UpdateComboAsyncBB( 8
(BB8 9
updatedComboBB9 E
.BBE F
IdBBF H
,BBH I
_mapperBBJ Q
.BBQ R
MapBBR U
<BBU V
ComboEntityBBV a
>BBa b
(BBb c
updatedComboBBc o
)BBo p
)BBp q
;BBq r
varCC 
resultCC 
=CC 
awaitCC !
_pastryShopRepositoryCC 4
.CC4 5
SaveChangesAsyncCC5 E
(CCE F
)CCF G
;CCG H
ifEE 
(EE 
!EE 
resultEE 
)EE 
{FF 
throwGG 
newGG 
	ExceptionGG #
(GG# $
$strGG$ 4
)GG4 5
;GG5 6
}HH 
returnJJ 
updatedComboJJ 
;JJ  
}KK 	
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
UserManagerResponseQQ -
>QQ- .#
CreateProductComboAsyncQQ/ F
(QQF G
Product_ComboModelQQG Y
productcomboModelQQZ k
)QQk l
{RR 	
varSS 
	productIdSS 
=SS 
productcomboModelSS -
.SS- .
	ProductIdSS. 7
;SS7 8
varTT 
comboIdTT 
=TT 
productcomboModelTT +
.TT+ ,
ComboIdTT, 3
;TT3 4
varUU 
productUU 
=UU 
awaitUU !
_pastryShopRepositoryUU  5
.UU5 6
GetProductAsync2UU6 F
(UUF G
	productIdUUG P
)UUP Q
;UUQ R
varVV 
comboVV 
=VV 
awaitVV 
GetComboAsyncVV +
(VV+ ,
comboIdVV, 3
)VV3 4
;VV4 5
ifYY 
(YY 
productYY 
==YY 
nullYY 
)YY  
{ZZ 
return[[ 
new[[ 
UserManagerResponse[[ .
{\\ 
Message]] 
=]] 
$str]] 6
,]]6 7
	IsSuccess^^ 
=^^ 
false^^  %
}__ 
;__ 
}`` 
ifaa 
(aa 
comboaa 
==aa 
nullaa 
)aa 
{bb 
returncc 
newcc 
UserManagerResponsecc .
{dd 
Messageee 
=ee 
$stree 4
,ee4 5
	IsSuccessff 
=ff 
falseff  %
}gg 
;gg 
}hh 
ifkk 
(kk 
awaitkk !
_pastryShopRepositorykk +
.kk+ ,!
ProductIsInComboAsynckk, A
(kkA B
	productIdkkB K
,kkK L
comboIdkkM T
)kkT U
)kkU V
{ll 
returnmm 
newmm 
UserManagerResponsemm .
{nn 
Messageoo 
=oo 
$stroo 9
,oo9 :
	IsSuccesspp 
=pp 
falsepp  %
}qq 
;qq 
}rr 
varuu 
productComboEntityuu "
=uu# $
_mapperuu% ,
.uu, -
Mapuu- 0
<uu0 1
Product_ComboEntityuu1 D
>uuD E
(uuE F
productcomboModeluuF W
)uuW X
;uuX Y
productComboEntityww 
.ww 
Productww &
=ww' (
productww) 0
;ww0 1
productComboEntityxx 
.xx 
Comboxx $
=xx% &
_mapperxx' .
.xx. /
Mapxx/ 2
<xx2 3
ComboEntityxx3 >
>xx> ?
(xx? @
comboxx@ E
)xxE F
;xxF G!
_pastryShopRepositoryzz !
.zz! "$
AddProduct_to_ComboAsynczz" :
(zz: ;
productComboEntityzz; M
)zzM N
;zzN O
var{{ 
result{{ 
={{ 
await{{ !
_pastryShopRepository{{ 4
.{{4 5
SaveChangesAsync{{5 E
({{E F
){{F G
;{{G H
if|| 
(|| 
result|| 
==|| 
true|| 
)|| 
{}} 
return~~ 
new~~ 
UserManagerResponse~~ .
{ 
Message
�� 
=
�� 
$str
�� 9
,
��9 :
	IsSuccess
�� 
=
�� 
true
��  $
}
�� 
;
�� 
}
�� 
return
�� 
new
�� !
UserManagerResponse
�� *
{
�� 
Message
�� 
=
�� 
$str
�� 0
,
��0 1
	IsSuccess
�� 
=
�� 
false
�� !
}
�� 
;
�� 
}
�� 	
public
�� 
Task
�� 
<
�� 
IEnumerable
�� 
<
��  
ProductModel
��  ,
>
��, -
>
��- .&
GetAllComboProductsAsync
��/ G
(
��G H
long
��H L
comboId
��M T
)
��T U
{
�� 	
throw
�� 
new
�� %
NotImplementedException
�� -
(
��- .
)
��. /
;
��/ 0
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
long
�� 
>
�� !
CalculateComboPrice
��  3
(
��3 4
long
��4 8
comboId
��9 @
)
��@ A
{
�� 	
long
�� 

totalPrice
�� 
=
�� 
$num
�� 
;
��  
IEnumerable
�� 
<
�� !
Product_ComboEntity
�� +
>
��+ ,
productCombos
��- :
=
��; <
await
��= B#
_pastryShopRepository
��C X
.
��X Y$
GetProduct_CombosAsync
��Y o
(
��o p
)
��p q
;
��q r
var
�� 
comboProducts
�� 
=
�� 
productCombos
��  -
.
��- .
Where
��. 3
(
��3 4
pc
��4 6
=>
��7 9
pc
��: <
.
��< =
ComboId
��= D
==
��E G
comboId
��H O
)
��O P
;
��P Q
foreach
�� 
(
�� 
var
�� 
comboProduct
�� %
in
��& (
comboProducts
��) 6
)
��6 7
{
�� 
var
�� 
product
�� 
=
�� 
await
�� ##
_pastryShopRepository
��$ 9
.
��9 :
GetProductAsync2
��: J
(
��J K
comboProduct
��K W
.
��W X
	ProductId
��X a
)
��a b
;
��b c
var
�� 
price
�� 
=
�� 
product
�� #
.
��# $
Price
��$ )
??
��* ,
$num
��- .
;
��. /

totalPrice
�� 
=
�� 
price
�� "
+
��# $

totalPrice
��% /
;
��/ 0
}
�� 
return
�� 

totalPrice
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
��  
ValidateComboAsync
�� -
(
��- .
long
��. 2
comboId
��3 :
)
��: ;
{
�� 	
var
�� 
combo
�� 
=
�� 
await
�� #
_pastryShopRepository
�� 3
.
��3 4
GetComboAsync
��4 A
(
��A B
comboId
��B I
)
��I J
;
��J K
if
�� 
(
�� 
combo
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
NotFoundItemException
�� /
(
��/ 0
$"
��0 2
$str
��2 E
{
��E F
comboId
��F M
}
��M N
$str
��N _
"
��_ `
)
��` a
;
��a b
}
�� 
}
�� 	
}
�� 
}�� �
sE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Services\Combos\ICombosService.cs
	namespace		 	
PastryShopAPI		
 
.		 
Services		  
.		  !
Combos		! '
{

 
public 

	interface 
ICombosService #
{ 
Task 
< 

ComboModel 
> 
CreateComboAsync )
() *

ComboModel* 4
model5 :
): ;
;; <
public 
Task 
< 
IEnumerable 
<  

ComboModel  *
>* +
>+ ,
GetCombosAsync- ;
(; <
)< =
;= >
public 
Task 
< 

ComboModel 
> 
GetComboAsync  -
(- .
long. 2
comboId3 :
): ;
;; <
public 
Task 
< 

ComboModel 
> 
UpdateComboAsync  0
(0 1

ComboModelC M
updatedComboN Z
)Z [
;[ \
public 
Task 
< 
long 
> 
CalculateComboPrice -
(- .
long. 2
comboId3 :
): ;
;; <
public 
Task 
< 
UserManagerResponse '
>' (#
CreateProductComboAsync) @
(@ A
Product_ComboModelA S
productcomboModelT e
)e f
;f g
public 
Task 
< 
IEnumerable 
<  
ProductModel  ,
>, -
>- .$
GetAllComboProductsAsync/ G
(G H
longH L
comboIdM T
)T U
;U V
} 
} �
iE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Services\FileService.cs
	namespace 	
PastryShopAPI
 
. 
Services  
{		 
public

 

class

 
FileService

 
:

 
IFileService

 +
{ 
public 
string 

UploadFile  
(  !
	IFormFile! *
file+ /
)/ 0
{ 	
string 
	imagePath 
= 
string %
.% &
Empty& +
;+ ,
var 

folderName 
= 
Path !
.! "
Combine" )
() *
$str* 5
,5 6
$str7 ?
)? @
;@ A
var 

pathToSave 
= 
Path !
.! "
Combine" )
() *
	Directory* 3
.3 4
GetCurrentDirectory4 G
(G H
)H I
,I J

folderNameK U
)U V
;V W
if 
( 
file 
!= 
null 
) 
{ 
if 
( 
file 
. 
Length 
>  !
$num" #
)# $
{ 
string 
	extension $
=% &
Path' +
.+ ,
GetExtension, 8
(8 9
file9 =
.= >
FileName> F
)F G
;G H
var 
fileName  
=! "
$"# %
{% &
Guid& *
.* +
NewGuid+ 2
(2 3
)3 4
.4 5
ToString5 =
(= >
)> ?
}? @
{@ A
	extensionA J
}J K
"K L
;L M
var 
fullPath  
=! "
Path# '
.' (
Combine( /
(/ 0

pathToSave0 :
,: ;
fileName< D
)D E
;E F
	imagePath 
= 
Path  $
.$ %
Combine% ,
(, -

folderName- 7
,7 8
fileName9 A
)A B
;B C
using 
( 
var 
stream %
=& '
new( +

FileStream, 6
(6 7
fullPath7 ?
,? @
FileModeA I
.I J
CreateJ P
)P Q
)Q R
{ 
file 
. 
CopyTo #
(# $
stream$ *
)* +
;+ ,
} 
} 
} 
return"" 
	imagePath"" 
;"" 
}## 	
public%% 
bool%% 
	IsNewFile%% 
(%% 
	IFormFile%% '

actualfile%%( 2
,%%2 3
	IFormFile%%4 =
newFile%%> E
)%%E F
{&& 	
if'' 
('' 

actualfile'' 
!='' 
newFile'' $
)''$ %
{(( 
return)) 
true)) 
;)) 
}** 
return++ 
false++ 
;++ 
},, 	
}-- 
}.. �
pE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Services\ICategoriesService.cs
	namespace 	
PastryShopAPI
 
. 
Services  
{ 
public		 

	interface		 
ICategoriesService		 '
{

 
public 
Task 
< 
IEnumerable 
<  
CategoryModel  -
>- .
>. /
GetCategoriesAsync0 B
(B C
stringC I
orderByJ Q
=R S
$strT X
)X Y
;Y Z
public 
Task 
< 
CategoryModel !
>! "
GetCategoryAsync# 3
(3 4
long4 8

categoryId9 C
)C D
;D E
public 
Task 
< 
CategoryModel !
>! "
CreateCategoryAsync# 6
(6 7
CategoryModel7 D
newCategoryE P
)P Q
;Q R
public 
Task 
< 
bool 
> 
DeleteCategoryAsync -
(- .
long. 2

categoryId3 =
)= >
;> ?
public 
Task 
< 
CategoryModel !
>! "
UpdateCategoryAsync# 6
(6 7
long7 ;

categoryId< F
,F G
CategoryModelH U
updatedCategoryV e
)e f
;f g
} 
} �
jE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Services\IFileService.cs
	namespace 	
PastryShopAPI
 
. 
Services  
{ 
public 

	interface 
IFileService !
{ 
string 

UploadFile 
( 
	IFormFile #
file$ (
)( )
;) *
bool 
	IsNewFile 
( 
	IFormFile  

actualfile! +
,+ ,
	IFormFile- 6
newFile7 >
)> ?
;? @
}		 
}

 �
nE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Services\IProductsService.cs
	namespace 	
PastryShopAPI
 
. 
Services  
{ 
public		 

	interface		 
IProductsService		 %
{

 
public 
Task 
< 
IEnumerable 
<  
ProductModel  ,
>, -
>- .
GetProductsAsync/ ?
(? @
long@ D
categoriyIdE P
)P Q
;Q R
public 
Task 
< 
ProductModel  
>  !
GetProductAsync" 1
(1 2
long2 6
categoriyId7 B
,B C
longD H
	productIdI R
)R S
;S T
public 
Task 
< 
ProductModel  
>  !
CreateProductAsync" 4
(4 5
long5 9
categoriyId: E
,E F
ProductModelG S

newProductT ^
)^ _
;_ `
public 
Task 
< 
bool 
> 
DeleteProductAsync ,
(, -
long- 1
categoriyId2 =
,= >
long? C
	productIdD M
)M N
;N O
public 
Task 
< 
ProductModel  
>  !
UpdateProductAsync" 4
(4 5
long5 9
categoriyId: E
,E F
longG K
	productIdL U
,U V
ProductModelW c
updatedProductd r
)r s
;s t
public 
Task 
< 
IEnumerable 
<  
ProductModel  ,
>, -
>- .
GetAllProductsAsync/ B
(B C
longC G
categoriyIdH S
)S T
;T U
} 
} �Q
mE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Services\ProductsService.cs
	namespace		 	
PastryShopAPI		
 
.		 
Services		  
{

 
public 

class 
ProductsService  
:! "
IProductsService# 3
{ 
readonly !
IPastryShopRepository &!
_pastryShopRepository' <
;< =
readonly 
IMapper 
_mapper  
;  !
public 
ProductsService 
( !
IPastryShopRepository 4 
pastryShopRepository5 I
,I J
IMapperK R
mapperS Y
)Y Z
{ 	!
_pastryShopRepository !
=" # 
pastryShopRepository$ 8
;8 9
_mapper 
= 
mapper 
; 
} 	
public 
async 
Task 
< 
ProductModel &
>& '
CreateProductAsync( :
(: ;
long; ?
categoriyId@ K
,K L
ProductModelM Y

newProductZ d
)d e
{ 	
await !
ValidateCategoryAsync '
(' (
categoriyId( 3
)3 4
;4 5

newProduct 
. 

CategoryId !
=" #
categoriyId$ /
;/ 0
var 
productEntity 
= 
_mapper  '
.' (
Map( +
<+ ,
ProductEntity, 9
>9 :
(: ;

newProduct; E
)E F
;F G!
_pastryShopRepository !
.! "
CreateProduct" /
(/ 0
categoriyId0 ;
,; <
productEntity= J
)J K
;K L
var 
result 
= 
await !
_pastryShopRepository 4
.4 5
SaveChangesAsync5 E
(E F
)F G
;G H
if   
(   
!   
result   
)   
{!! 
throw"" 
new"" )
InvalidOperationItemException"" 7
(""7 8
$"""8 :
$str"": ]
{""] ^

newProduct""^ h
.""h i
Name""i m
}""m n
"""n o
)""o p
;""p q
}## 
return%% 
_mapper%% 
.%% 
Map%% 
<%% 
ProductModel%% +
>%%+ ,
(%%, -
productEntity%%- :
)%%: ;
;%%; <
}&& 	
public(( 
async(( 
Task(( 
<(( 
bool(( 
>(( 
DeleteProductAsync((  2
(((2 3
long((3 7
categoriyId((8 C
,((C D
long((E I
	productId((J S
)((S T
{)) 	
await** +
ValidateCategoryAndProductAsync** 1
(**1 2
categoriyId**2 =
,**= >
	productId**? H
)**H I
;**I J
await++ !
_pastryShopRepository++ '
.++' (
DeleteProductAsync++( :
(++: ;
categoriyId++; F
,++F G
	productId++H Q
)++Q R
;++R S
var-- 
result-- 
=-- 
await-- !
_pastryShopRepository-- 4
.--4 5
SaveChangesAsync--5 E
(--E F
)--F G
;--G H
if// 
(// 
!// 
result// 
)// 
{00 
throw11 
new11 )
InvalidOperationItemException11 7
(117 8
$"118 :
$str11: W
{11W X
	productId11X a
}11a b
"11b c
)11c d
;11d e
}22 
return44 
true44 
;44 
}55 	
public77 
async77 
Task77 
<77 
ProductModel77 &
>77& '
GetProductAsync77( 7
(777 8
long778 <
categoriyId77= H
,77H I
long77J N
	productId77O X
)77X Y
{88 	
await99 !
ValidateCategoryAsync99 '
(99' (
categoriyId99( 3
)993 4
;994 5
var:: 
productEntity:: 
=:: 
await::  %!
_pastryShopRepository::& ;
.::; <
GetProductAsync::< K
(::K L
categoriyId::L W
,::W X
	productId::Y b
)::b c
;::c d
if;; 
(;; 
productEntity;; 
==;;  
null;;! %
);;% &
{<< 
throw== 
new== !
NotFoundItemException== /
(==/ 0
$"==0 2
$str==2 G
{==G H
	productId==H Q
}==Q R
$str==R v
{==v w
categoriyId	==w �
}
==� �
$str
==� �
"
==� �
)
==� �
;
==� �
}>> 
var@@ 
productModel@@ 
=@@ 
_mapper@@ &
.@@& '
Map@@' *
<@@* +
ProductModel@@+ 7
>@@7 8
(@@8 9
productEntity@@9 F
)@@F G
;@@G H
productModelBB 
.BB 
IdBB 
=BB 
categoriyIdBB )
;BB) *
returnCC 
productModelCC 
;CC  
}DD 	
publicFF 
asyncFF 
TaskFF 
<FF 
IEnumerableFF %
<FF% &
ProductModelFF& 2
>FF2 3
>FF3 4
GetProductsAsyncFF5 E
(FFE F
longFFF J
categoriyIdFFK V
)FFV W
{GG 	
awaitHH !
ValidateCategoryAsyncHH '
(HH' (
categoriyIdHH( 3
)HH3 4
;HH4 5
varII 
productsII 
=II 
awaitII  !
_pastryShopRepositoryII! 6
.II6 7
GetProductsAsyncII7 G
(IIG H
categoriyIdIIH S
)IIS T
;IIT U
returnJJ 
_mapperJJ 
.JJ 
MapJJ 
<JJ 
IEnumerableJJ *
<JJ* +
ProductModelJJ+ 7
>JJ7 8
>JJ8 9
(JJ9 :
productsJJ: B
)JJB C
;JJC D
}KK 	
publicMM 
asyncMM 
TaskMM 
<MM 
ProductModelMM &
>MM& '
UpdateProductAsyncMM( :
(MM: ;
longMM; ?
categoriyIdMM@ K
,MMK L
longMMM Q
	productIdMMR [
,MM[ \
ProductModelMM] i
updatedProductMMj x
)MMx y
{NN 	
awaitOO +
ValidateCategoryAndProductAsyncOO 1
(OO1 2
categoriyIdOO2 =
,OO= >
	productIdOO? H
)OOH I
;OOI J
awaitPP !
_pastryShopRepositoryPP '
.PP' (
UpdateProductAsyncPP( :
(PP: ;
categoriyIdPP; F
,PPF G
	productIdPPH Q
,PPQ R
_mapperPPS Z
.PPZ [
MapPP[ ^
<PP^ _
ProductEntityPP_ l
>PPl m
(PPm n
updatedProductPPn |
)PP| }
)PP} ~
;PP~ 
varQQ 
resultQQ 
=QQ 
awaitQQ !
_pastryShopRepositoryQQ 4
.QQ4 5
SaveChangesAsyncQQ5 E
(QQE F
)QQF G
;QQG H
ifSS 
(SS 
!SS 
resultSS 
)SS 
{TT 
throwUU 
newUU )
InvalidOperationItemExceptionUU 7
(UU7 8
$"UU8 :
$strUU: T
{UUT U
updatedProductUUU c
.UUc d
NameUUd h
}UUh i
$strUUi s
{UUs t
updatedProduct	UUt �
.
UU� �
Id
UU� �
}
UU� �
"
UU� �
)
UU� �
;
UU� �
}VV 
returnXX 
updatedProductXX !
;XX! "
}YY 	
private[[ 
async[[ 
Task[[ !
ValidateCategoryAsync[[ 0
([[0 1
long[[1 5
categoriyId[[6 A
)[[A B
{\\ 	
var]] 
category]] 
=]] 
await]]  !
_pastryShopRepository]]! 6
.]]6 7
GetCategoryAsync]]7 G
(]]G H
categoriyId]]H S
)]]S T
;]]T U
if^^ 
(^^ 
category^^ 
==^^ 
null^^  
)^^  !
{__ 
throw`` 
new`` !
NotFoundItemException`` /
(``/ 0
$"``0 2
$str``2 H
{``H I
categoriyId``I T
}``T U
$str``U f
"``f g
)``g h
;``h i
}aa 
}bb 	
privatedd 
asyncdd 
Taskdd 
<dd 
ProductModeldd '
>dd' (+
ValidateCategoryAndProductAsyncdd) H
(ddH I
longddI M
categoriyIdddN Y
,ddY Z
longdd[ _
	productIddd` i
)ddi j
{ee 	
varff 
productff 
=ff 
awaitff 
GetProductAsyncff  /
(ff/ 0
categoriyIdff0 ;
,ff; <
	productIdff= F
)ffF G
;ffG H
returngg 
productgg 
;gg 
}hh 	
publickk 
asynckk 
Taskkk 
<kk 
IEnumerablekk %
<kk% &
ProductModelkk& 2
>kk2 3
>kk3 4
GetAllProductsAsynckk5 H
(kkH I
longkkI M
categoriyIdkkN Y
)kkY Z
{ll 	
awaitmm !
ValidateCategoryAsyncmm '
(mm' (
categoriyIdmm( 3
)mm3 4
;mm4 5
varnn 
productsnn 
=nn 
awaitnn  !
_pastryShopRepositorynn! 6
.nn6 7
GetAllProductsAsyncnn7 J
(nnJ K
)nnK L
;nnL M
returnoo 
_mapperoo 
.oo 
Mapoo 
<oo 
IEnumerableoo *
<oo* +
ProductModeloo+ 7
>oo7 8
>oo8 9
(oo9 :
productsoo: B
)ooB C
;ooC D
}pp 	
}qq 
}rr �	
sE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Services\Security\IUserService.cs
	namespace 	
PastryShopAPI
 
. 
Services  
.  !
Security! )
{ 
public		 

	interface		 
IUserService		 !
{

 
Task 
< 
UserManagerResponse  
>  !
RegisterUserAsync" 3
(3 4
RegisterViewModel4 E
modelF K
)K L
;L M
Task 
< 
UserManagerResponse  
>  !
CreateRoleAsync" 1
(1 2
CreateRoleViewModel2 E
modelF K
)K L
;L M
Task 
< 
UserManagerResponse  
>  !
LoginUserAsync" 0
(0 1
LoginViewModel1 ?
model@ E
)E F
;F G
Task 
< 
UserManagerResponse  
>  !
CreateUserRoleAsync" 5
(5 6#
CreateUserRoleViewModel6 M
modelN S
)S T
;T U
} 
} �j
rE:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Services\Security\UserService.cs
	namespace 	
PastryShopAPI
 
. 
Services  
.  !
Security! )
{ 
public 

class 
UserService 
: 
IUserService *
{ 
private 
UserManager 
< 
IdentityUser (
>( )
userManager* 5
;5 6
private 
RoleManager 
< 
IdentityRole (
>( )
roleManager* 5
;5 6
private 
IConfiguration 
configuration ,
;, -
public 
UserService 
( 
UserManager &
<& '
IdentityUser' 3
>3 4
userManager5 @
,@ A
RoleManagerB M
<M N
IdentityRoleN Z
>Z [
roleManager\ g
,g h
IConfigurationi w
configuration	x �
)
� �
{ 	
this 
. 
userManager 
= 
userManager *
;* +
this 
. 
roleManager 
= 
roleManager *
;* +
this 
. 
configuration 
=  
configuration! .
;. /
} 	
public 
async 
Task 
< 
UserManagerResponse -
>- .
LoginUserAsync/ =
(= >
LoginViewModel> L
modelM R
)R S
{ 	
var 
user 
= 
await 
userManager (
.( )
FindByEmailAsync) 9
(9 :
model: ?
.? @
Email@ E
)E F
;F G
if!! 
(!! 
user!! 
==!! 
null!! 
)!! 
{"" 
return## 
new## 
UserManagerResponse## .
{$$ 
Message%% 
=%% 
$str%% H
,%%H I
	IsSuccess&& 
=&& 
false&&  %
,&&% &
}'' 
;'' 
}(( 
var** 
result** 
=** 
await** 
userManager** *
.*** +
CheckPasswordAsync**+ =
(**= >
user**> B
,**B C
model**D I
.**I J
Password**J R
)**R S
;**S T
if,, 
(,, 
!,, 
result,, 
),, 
return-- 
new-- 
UserManagerResponse-- .
{.. 
Message// 
=// 
$str// 0
,//0 1
	IsSuccess00 
=00 
false00  %
,00% &
}11 
;11 
var33 
roles33 
=33 
await33 
userManager33 )
.33) *
GetRolesAsync33* 7
(337 8
user338 <
)33< =
;33= >
var55 
claims55 
=55 
new55 
List55 !
<55! "
Claim55" '
>55' (
(55( )
)55) *
{66 
new77 
Claim77 
(77 
$str77 !
,77! "
model77# (
.77( )
Email77) .
)77. /
,77/ 0
new88 
Claim88 
(88 

ClaimTypes88 $
.88$ %
NameIdentifier88% 3
,883 4
user885 9
.889 :
Id88: <
)88< =
,88= >
}99 
;99 
foreach;; 
(;; 
var;; 
role;; 
in;;  
roles;;! &
);;& '
{<< 
claims== 
.== 
Add== 
(== 
new== 
Claim== $
(==$ %

ClaimTypes==% /
.==/ 0
Role==0 4
,==4 5
role==6 :
)==: ;
)==; <
;==< =
}>> 
varAA 
keyAA 
=AA 
newAA  
SymmetricSecurityKeyAA .
(AA. /
EncodingAA/ 7
.AA7 8
UTF8AA8 <
.AA< =
GetBytesAA= E
(AAE F
configurationAAF S
[AAS T
$strAAT f
]AAf g
)AAg h
)AAh i
;AAi j
varCC 
tokenCC 
=CC 
newCC 
JwtSecurityTokenCC ,
(CC, -
issuerDD 
:DD 
configurationDD %
[DD% &
$strDD& ;
]DD; <
,DD< =
audienceEE 
:EE 
configurationEE '
[EE' (
$strEE( ?
]EE? @
,EE@ A
claimsFF 
:FF 
claimsFF 
,FF 
expiresGG 
:GG 
DateTimeGG !
.GG! "
NowGG" %
.GG% &
AddHoursGG& .
(GG. /
$numGG/ 0
)GG0 1
,GG1 2
signingCredentialsHH "
:HH" #
newHH$ '
SigningCredentialsHH( :
(HH: ;
keyHH; >
,HH> ?
SecurityAlgorithmsHH@ R
.HHR S

HmacSha256HHS ]
)HH] ^
)HH^ _
;HH_ `
stringJJ 
tokenAsStringJJ  
=JJ! "
newJJ# &#
JwtSecurityTokenHandlerJJ' >
(JJ> ?
)JJ? @
.JJ@ A

WriteTokenJJA K
(JJK L
tokenJJL Q
)JJQ R
;JJR S
returnLL 
newLL 
UserManagerResponseLL *
{MM 
MessageNN 
=NN 
tokenAsStringNN '
,NN' (
	IsSuccessOO 
=OO 
trueOO  
,OO  !

ExpireDatePP 
=PP 
tokenPP "
.PP" #
ValidToPP# *
}QQ 
;QQ 
}RR 	
publicTT 
asyncTT 
TaskTT 
<TT 
UserManagerResponseTT -
>TT- .
RegisterUserAsyncTT/ @
(TT@ A
RegisterViewModelTTA R
modelTTS X
)TTX Y
{UU 	
ifVV 
(VV 
modelVV 
==VV 
nullVV 
)VV 
{WW 
throwXX 
newXX "
NullReferenceExceptionXX 0
(XX0 1
$strXX1 @
)XX@ A
;XXA B
}YY 
if[[ 
([[ 
model[[ 
.[[ 
Password[[ 
!=[[ !
model[[" '
.[[' (
ConfirmPassword[[( 7
)[[7 8
return\\ 
new\\ 
UserManagerResponse\\ .
{]] 
Message^^ 
=^^ 
$str^^ K
,^^K L
	IsSuccess__ 
=__ 
false__  %
,__% &
}`` 
;`` 
varbb 
identityUserbb 
=bb 
newbb "
IdentityUserbb# /
{cc 
Emaildd 
=dd 
modeldd 
.dd 
Emaildd #
,dd# $
UserNameee 
=ee 
modelee  
.ee  !
Emailee! &
}ff 
;ff 
varhh 
resulthh 
=hh 
awaithh 
userManagerhh *
.hh* +
CreateAsynchh+ 6
(hh6 7
identityUserhh7 C
,hhC D
modelhhE J
.hhJ K
PasswordhhK S
)hhS T
;hhT U
ifjj 
(jj 
resultjj 
.jj 
	Succeededjj  
)jj  !
{kk 
returnll 
newll 
UserManagerResponsell .
{mm 
Messagenn 
=nn 
$strnn :
,nn: ;
	IsSuccessoo 
=oo 
trueoo  $
,oo$ %
}pp 
;pp 
}qq 
returnss 
newss 
UserManagerResponsess *
{tt 
Messageuu 
=uu 
$struu /
,uu/ 0
	IsSuccessvv 
=vv 
falsevv !
,vv! "
Errorsww 
=ww 
resultww 
.ww  
Errorsww  &
.ww& '
Selectww' -
(ww- .
eww. /
=>ww0 2
eww3 4
.ww4 5
Descriptionww5 @
)ww@ A
}xx 
;xx 
}yy 	
public{{ 
async{{ 
Task{{ 
<{{ 
UserManagerResponse{{ -
>{{- .
CreateRoleAsync{{/ >
({{> ?
CreateRoleViewModel{{? R
model{{S X
){{X Y
{|| 	
var~~ 
identityRole~~ 
=~~ 
new~~ "
IdentityRole~~# /
(~~/ 0
)~~0 1
{ 
Name
�� 
=
�� 
model
�� 
.
�� 
Name
�� !
,
��! "
NormalizedName
�� 
=
��  
model
��! &
.
��& '
NormalizedName
��' 5
}
�� 
;
�� 
var
�� 
result
�� 
=
�� 
await
�� 
roleManager
�� *
.
��* +
CreateAsync
��+ 6
(
��6 7
identityRole
��7 C
)
��C D
;
��D E
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
��  
)
��  !
{
�� 
return
�� 
new
�� !
UserManagerResponse
�� .
{
�� 
Message
�� 
=
�� 
$str
�� :
,
��: ;
	IsSuccess
�� 
=
�� 
true
��  $
,
��$ %
}
�� 
;
�� 
}
�� 
return
�� 
new
�� !
UserManagerResponse
�� *
{
�� 
Message
�� 
=
�� 
$str
�� /
,
��/ 0
	IsSuccess
�� 
=
�� 
false
�� !
,
��! "
Errors
�� 
=
�� 
result
�� 
.
��  
Errors
��  &
.
��& '
Select
��' -
(
��- .
e
��. /
=>
��0 2
e
��3 4
.
��4 5
Description
��5 @
)
��@ A
}
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� !
UserManagerResponse
�� -
>
��- .!
CreateUserRoleAsync
��/ B
(
��B C%
CreateUserRoleViewModel
��C Z
model
��[ `
)
��` a
{
�� 	
var
�� 
role
�� 
=
�� 
await
�� 
roleManager
�� (
.
��( )
FindByIdAsync
��) 6
(
��6 7
model
��7 <
.
��< =
RoleId
��= C
)
��C D
;
��D E
if
�� 
(
�� 
role
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
new
�� !
UserManagerResponse
�� .
{
�� 
Message
�� 
=
�� 
$str
�� 3
,
��3 4
	IsSuccess
�� 
=
�� 
false
��  %
}
�� 
;
�� 
}
�� 
var
�� 
user
�� 
=
�� 
await
�� 
userManager
�� (
.
��( )
FindByIdAsync
��) 6
(
��6 7
model
��7 <
.
��< =
UserId
��= C
)
��C D
;
��D E
if
�� 
(
�� 
role
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
new
�� !
UserManagerResponse
�� .
{
�� 
Message
�� 
=
�� 
$str
�� 3
,
��3 4
	IsSuccess
�� 
=
�� 
false
��  %
}
�� 
;
�� 
}
�� 
if
�� 
(
�� 
await
�� 
userManager
�� !
.
��! "
IsInRoleAsync
��" /
(
��/ 0
user
��0 4
,
��4 5
role
��6 :
.
��: ;
Name
��; ?
)
��? @
)
��@ A
{
�� 
return
�� 
new
�� !
UserManagerResponse
�� .
{
�� 
Message
�� 
=
�� 
$str
�� 5
,
��5 6
	IsSuccess
�� 
=
�� 
false
��  %
}
�� 
;
�� 
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
userManager
�� *
.
��* +
AddToRoleAsync
��+ 9
(
��9 :
user
��: >
,
��> ?
role
��@ D
.
��D E
Name
��E I
)
��I J
;
��J K
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
��  
)
��  !
{
�� 
return
�� 
new
�� !
UserManagerResponse
�� .
{
�� 
Message
�� 
=
�� 
$str
�� -
,
��- .
	IsSuccess
�� 
=
�� 
true
��  $
}
�� 
;
�� 
}
�� 
return
�� 
new
�� !
UserManagerResponse
�� *
{
�� 
Message
�� 
=
�� 
$str
�� 0
,
��0 1
	IsSuccess
�� 
=
�� 
false
�� !
}
�� 
;
�� 
}
�� 	
}
�� 
}�� �C
\E:\Final-Project-WebTechnologies-main - copia\Backend\PastryShopAPI\PastryShopAPI\Startup.cs
	namespace 	
PastryShopAPI
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration   
=   
configuration   )
;  ) *
}!! 	
public## 
IConfiguration## 
Configuration## +
{##, -
get##. 1
;##1 2
}##3 4
public&& 
void&& 
ConfigureServices&& %
(&&% &
IServiceCollection&&& 8
services&&9 A
)&&A B
{'' 	
services(( 
.(( 
AddControllers(( #
(((# $
)(($ %
;((% &
services)) 
.)) 
AddTransient)) !
<))! "
ICategoriesService))" 4
,))4 5
CategoriesService))6 G
>))G H
())H I
)))I J
;))J K
services** 
.** 
AddTransient** !
<**! "
IProductsService**" 2
,**2 3
ProductsService**4 C
>**C D
(**D E
)**E F
;**F G
services++ 
.++ 
AddTransient++ !
<++! "
ICombosService++" 0
,++0 1
CombosService++2 ?
>++? @
(++@ A
)++A B
;++B C
services,, 
.,, 
AddTransient,, !
<,,! "!
IPastryShopRepository,," 7
,,,7 8 
PastryShopRepository,,9 M
>,,M N
(,,N O
),,O P
;,,P Q
services.. 
... 
	AddScoped.. 
<.. 
IUserService.. +
,..+ ,
UserService..- 8
>..8 9
(..9 :
)..: ;
;..; <
services// 
.// 
AddTransient// !
<//! "
IFileService//" .
,//. /
FileService//0 ;
>//; <
(//< =
)//= >
;//> ?
services33 
.33 
AddDbContext33 !
<33! "
PastryShopDbContext33" 5
>335 6
(336 7
options337 >
=>33? A
{33B C
options44 
.44 
UseSqlServer44 $
(44$ %
Configuration44% 2
.442 3
GetConnectionString443 F
(44F G
$str44G ]
)44] ^
)44^ _
;44_ `
}55 
)55 
;55 
services88 
.88 
AddIdentity88  
<88  !
IdentityUser88! -
,88- .
IdentityRole88/ ;
>88; <
(88< =
options88= D
=>88E G
{99 
options:: 
.:: 
Password::  
.::  !
RequireDigit::! -
=::. /
true::0 4
;::4 5
options;; 
.;; 
Password;;  
.;;  !
RequireLowercase;;! 1
=;;2 3
true;;4 8
;;;8 9
}<< 
)<< 
.<< $
AddEntityFrameworkStores<< '
<<<' (
PastryShopDbContext<<( ;
><<; <
(<<< =
)<<= >
.== $
AddDefaultTokenProviders== %
(==% &
)==& '
;==' (
services@@ 
.@@ 
AddAuthentication@@ &
(@@& '
auth@@' +
=>@@, .
{AA 
authBB 
.BB %
DefaultAuthenticateSchemeBB .
=BB/ 0
JwtBearerDefaultsBB1 B
.BBB C 
AuthenticationSchemeBBC W
;BBW X
authCC 
.CC "
DefaultChallengeSchemeCC +
=CC, -
JwtBearerDefaultsCC. ?
.CC? @ 
AuthenticationSchemeCC@ T
;CCT U
}DD 
)DD 
.DD 
AddJwtBearerDD 
(DD 
optionsDD #
=>DD$ &
{EE 
optionsFF 
.FF %
TokenValidationParametersFF 1
=FF2 3
newFF4 7
	MicrosoftFF8 A
.FFA B
IdentityModelFFB O
.FFO P
TokensFFP V
.FFV W%
TokenValidationParametersFFW p
{GG 
ValidateIssuerHH "
=HH# $
trueHH% )
,HH) *
ValidateAudienceII $
=II% &
trueII' +
,II+ ,
ValidAudienceJJ !
=JJ" #
ConfigurationJJ$ 1
[JJ1 2
$strJJ2 I
]JJI J
,JJJ K
ValidIssuerKK 
=KK  !
ConfigurationKK" /
[KK/ 0
$strKK0 E
]KKE F
,KKF G!
RequireExpirationTimeLL )
=LL* +
trueLL, 0
,LL0 1
IssuerSigningKeyMM $
=MM% &
newMM' * 
SymmetricSecurityKeyMM+ ?
(MM? @
EncodingMM@ H
.MMH I
UTF8MMI M
.MMM N
GetBytesMMN V
(MMV W
ConfigurationMMW d
[MMd e
$strMMe w
]MMw x
)MMx y
)MMy z
,MMz {$
ValidateIssuerSigningKeyNN ,
=NN- .
trueNN/ 3
}OO 
;OO 
}PP 
)PP 
;PP 
servicesSS 
.SS 
AddAutoMapperSS "
(SS" #
typeofSS# )
(SS) *
StartupSS* 1
)SS1 2
)SS2 3
;SS3 4
servicesVV 
.VV 
AddCorsVV 
(VV 
cVV 
=>VV !
{WW 
cXX 
.XX 
	AddPolicyXX 
(XX 
$strXX )
,XX) *
optionsXX+ 2
=>XX3 5
{XX6 7
optionsXX8 ?
.XX? @
AllowAnyOriginXX@ N
(XXN O
)XXO P
;XXP Q
optionsXXR Y
.XXY Z
AllowAnyMethodXXZ h
(XXh i
)XXi j
;XXj k
optionsXXl s
.XXs t
AllowAnyHeader	XXt �
(
XX� �
)
XX� �
;
XX� �
}
XX� �
)
XX� �
;
XX� �
}YY 
)YY 
;YY 
}[[ 	
public^^ 
void^^ 
	Configure^^ 
(^^ 
IApplicationBuilder^^ 1
app^^2 5
,^^5 6
IWebHostEnvironment^^7 J
env^^K N
)^^N O
{__ 	
if`` 
(`` 
env`` 
.`` 
IsDevelopment`` !
(``! "
)``" #
)``# $
{aa 
appbb 
.bb %
UseDeveloperExceptionPagebb -
(bb- .
)bb. /
;bb/ 0
}dd 
appff 
.ff 
UseCorsff 
(ff 
optionsff 
=>ff  "
{ff# $
optionsff% ,
.ff, -
AllowAnyOriginff- ;
(ff; <
)ff< =
;ff= >
optionsff? F
.ffF G
AllowAnyMethodffG U
(ffU V
)ffV W
;ffW X
optionsffY `
.ff` a
AllowAnyHeaderffa o
(ffo p
)ffp q
;ffq r
}ffs t
)fft u
;ffu v
apphh 
.hh 

UseRoutinghh 
(hh 
)hh 
;hh 
appjj 
.jj 
UseAuthenticationjj !
(jj! "
)jj" #
;jj# $
appkk 
.kk 
UseAuthorizationkk  
(kk  !
)kk! "
;kk" #
appmm 
.mm 
UseEndpointsmm 
(mm 
	endpointsmm &
=>mm' )
{nn 
	endpointsoo 
.oo 
MapControllersoo (
(oo( )
)oo) *
;oo* +
}pp 
)pp 
;pp 
apptt 
.tt 
UseStaticFilestt 
(tt 
)tt  
;tt  !
appuu 
.uu 
UseStaticFilesuu 
(uu 
newuu "
StaticFileOptionsuu# 4
(uu4 5
)uu5 6
{vv 
FileProviderww 
=ww 
newww " 
PhysicalFileProviderww# 7
(ww7 8
Pathww8 <
.ww< =
Combineww= D
(wwD E
	DirectorywwE N
.wwN O
GetCurrentDirectorywwO b
(wwb c
)wwc d
,wwd e
$strwwf r
)wwr s
)wws t
,wwt u
RequestPathxx 
=xx 
newxx !

PathStringxx" ,
(xx, -
$strxx- 9
)xx9 :
}yy 
)yy 
;yy 
}zz 	
}{{ 
}|| 