¤/
µ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ğ
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleéelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements#
handleéelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint˙˙˙˙˙˙˙˙˙
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28Ĝ -
|
dense_101/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_101/kernel
u
$dense_101/kernel/Read/ReadVariableOpReadVariableOpdense_101/kernel*
_output_shapes

:
*
dtype0
t
dense_101/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_101/bias
m
"dense_101/bias/Read/ReadVariableOpReadVariableOpdense_101/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0

lstm_303/lstm_cell_303/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*.
shared_namelstm_303/lstm_cell_303/kernel

1lstm_303/lstm_cell_303/kernel/Read/ReadVariableOpReadVariableOplstm_303/lstm_cell_303/kernel*
_output_shapes
:	*
dtype0
Ğ
'lstm_303/lstm_cell_303/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*8
shared_name)'lstm_303/lstm_cell_303/recurrent_kernel
¤
;lstm_303/lstm_cell_303/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_303/lstm_cell_303/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_303/lstm_cell_303/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelstm_303/lstm_cell_303/bias

/lstm_303/lstm_cell_303/bias/Read/ReadVariableOpReadVariableOplstm_303/lstm_cell_303/bias*
_output_shapes	
:*
dtype0

lstm_304/lstm_cell_304/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*.
shared_namelstm_304/lstm_cell_304/kernel

1lstm_304/lstm_cell_304/kernel/Read/ReadVariableOpReadVariableOplstm_304/lstm_cell_304/kernel*
_output_shapes
:	dÈ*
dtype0
Ğ
'lstm_304/lstm_cell_304/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*8
shared_name)'lstm_304/lstm_cell_304/recurrent_kernel
¤
;lstm_304/lstm_cell_304/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_304/lstm_cell_304/recurrent_kernel*
_output_shapes
:	2È*
dtype0

lstm_304/lstm_cell_304/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*,
shared_namelstm_304/lstm_cell_304/bias

/lstm_304/lstm_cell_304/bias/Read/ReadVariableOpReadVariableOplstm_304/lstm_cell_304/bias*
_output_shapes	
:È*
dtype0

lstm_305/lstm_cell_305/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_305/lstm_cell_305/kernel

1lstm_305/lstm_cell_305/kernel/Read/ReadVariableOpReadVariableOplstm_305/lstm_cell_305/kernel*
_output_shapes

:2(*
dtype0
Ş
'lstm_305/lstm_cell_305/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_305/lstm_cell_305/recurrent_kernel
£
;lstm_305/lstm_cell_305/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_305/lstm_cell_305/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_305/lstm_cell_305/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_305/lstm_cell_305/bias

/lstm_305/lstm_cell_305/bias/Read/ReadVariableOpReadVariableOplstm_305/lstm_cell_305/bias*
_output_shapes
:(*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0

Adam/dense_101/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_101/kernel/m

+Adam/dense_101/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_101/kernel/m*
_output_shapes

:
*
dtype0

Adam/dense_101/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_101/bias/m
{
)Adam/dense_101/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_101/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_303/lstm_cell_303/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_303/lstm_cell_303/kernel/m

8Adam/lstm_303/lstm_cell_303/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_303/lstm_cell_303/kernel/m*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_303/lstm_cell_303/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_303/lstm_cell_303/recurrent_kernel/m
²
BAdam/lstm_303/lstm_cell_303/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_303/lstm_cell_303/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

"Adam/lstm_303/lstm_cell_303/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_303/lstm_cell_303/bias/m

6Adam/lstm_303/lstm_cell_303/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_303/lstm_cell_303/bias/m*
_output_shapes	
:*
dtype0
?
$Adam/lstm_304/lstm_cell_304/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_304/lstm_cell_304/kernel/m

8Adam/lstm_304/lstm_cell_304/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_304/lstm_cell_304/kernel/m*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_304/lstm_cell_304/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_304/lstm_cell_304/recurrent_kernel/m
²
BAdam/lstm_304/lstm_cell_304/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_304/lstm_cell_304/recurrent_kernel/m*
_output_shapes
:	2È*
dtype0

"Adam/lstm_304/lstm_cell_304/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_304/lstm_cell_304/bias/m

6Adam/lstm_304/lstm_cell_304/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_304/lstm_cell_304/bias/m*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_305/lstm_cell_305/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_305/lstm_cell_305/kernel/m

8Adam/lstm_305/lstm_cell_305/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_305/lstm_cell_305/kernel/m*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_305/lstm_cell_305/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_305/lstm_cell_305/recurrent_kernel/m
ħ
BAdam/lstm_305/lstm_cell_305/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_305/lstm_cell_305/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

"Adam/lstm_305/lstm_cell_305/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_305/lstm_cell_305/bias/m

6Adam/lstm_305/lstm_cell_305/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_305/lstm_cell_305/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_101/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_101/kernel/v

+Adam/dense_101/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_101/kernel/v*
_output_shapes

:
*
dtype0

Adam/dense_101/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_101/bias/v
{
)Adam/dense_101/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_101/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_303/lstm_cell_303/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_303/lstm_cell_303/kernel/v

8Adam/lstm_303/lstm_cell_303/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_303/lstm_cell_303/kernel/v*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_303/lstm_cell_303/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_303/lstm_cell_303/recurrent_kernel/v
²
BAdam/lstm_303/lstm_cell_303/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_303/lstm_cell_303/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

"Adam/lstm_303/lstm_cell_303/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_303/lstm_cell_303/bias/v

6Adam/lstm_303/lstm_cell_303/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_303/lstm_cell_303/bias/v*
_output_shapes	
:*
dtype0
?
$Adam/lstm_304/lstm_cell_304/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_304/lstm_cell_304/kernel/v

8Adam/lstm_304/lstm_cell_304/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_304/lstm_cell_304/kernel/v*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_304/lstm_cell_304/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_304/lstm_cell_304/recurrent_kernel/v
²
BAdam/lstm_304/lstm_cell_304/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_304/lstm_cell_304/recurrent_kernel/v*
_output_shapes
:	2È*
dtype0

"Adam/lstm_304/lstm_cell_304/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_304/lstm_cell_304/bias/v

6Adam/lstm_304/lstm_cell_304/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_304/lstm_cell_304/bias/v*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_305/lstm_cell_305/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_305/lstm_cell_305/kernel/v

8Adam/lstm_305/lstm_cell_305/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_305/lstm_cell_305/kernel/v*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_305/lstm_cell_305/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_305/lstm_cell_305/recurrent_kernel/v
ħ
BAdam/lstm_305/lstm_cell_305/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_305/lstm_cell_305/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

"Adam/lstm_305/lstm_cell_305/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_305/lstm_cell_305/bias/v

6Adam/lstm_305/lstm_cell_305/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_305/lstm_cell_305/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
ċA
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0* A
valueABA BA
²
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer

signatures
#_self_saveable_object_factories
	variables
	trainable_variables

regularization_losses
	keras_api

cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api

cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api

cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api


!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api

(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m4m5m!v"v-v.v/v0v1v2v3v4v5v
 
 
N
-0
.1
/2
03
14
25
36
47
58
!9
"10
N
-0
.1
/2
03
14
25
36
47
58
!9
"10
 
­
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
³
;
state_size

-kernel
.recurrent_kernel
/bias
#<_self_saveable_object_factories
=	variables
>trainable_variables
?regularization_losses
@	keras_api
 
 

-0
.1
/2

-0
.1
/2
 
ı

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
³
G
state_size

0kernel
1recurrent_kernel
2bias
#H_self_saveable_object_factories
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
 
 

00
11
22

00
11
22
 
ı

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
³
S
state_size

3kernel
4recurrent_kernel
5bias
#T_self_saveable_object_factories
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
 
 

30
41
52

30
41
52
 
ı

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
\Z
VARIABLE_VALUEdense_101/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_101/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1

!0
"1
 
­
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
$	variables
%trainable_variables
&regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_303/lstm_cell_303/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_303/lstm_cell_303/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_303/lstm_cell_303/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_304/lstm_cell_304/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_304/lstm_cell_304/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_304/lstm_cell_304/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_305/lstm_cell_305/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_305/lstm_cell_305/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_305/lstm_cell_305/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

d0
 
 
 
 

-0
.1
/2

-0
.1
/2
 
­
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
=	variables
>trainable_variables
?regularization_losses
 
 

0
 
 
 
 
 

00
11
22

00
11
22
 
­
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
 
 

0
 
 
 
 
 

30
41
52

30
41
52
 
­
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
 
 

0
 
 
 
 
 
 
 
 
4
	ttotal
	ucount
v	variables
w	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

t0
u1

v	variables
}
VARIABLE_VALUEAdam/dense_101/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_101/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_303/lstm_cell_303/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_303/lstm_cell_303/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_303/lstm_cell_303/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_304/lstm_cell_304/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_304/lstm_cell_304/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_304/lstm_cell_304/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_305/lstm_cell_305/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_305/lstm_cell_305/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_305/lstm_cell_305/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_101/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_101/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_303/lstm_cell_303/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_303/lstm_cell_303/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_303/lstm_cell_303/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_304/lstm_cell_304/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_304/lstm_cell_304/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_304/lstm_cell_304/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_305/lstm_cell_305/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_305/lstm_cell_305/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_305/lstm_cell_305/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_303_inputPlaceholder*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0* 
shape:˙˙˙˙˙˙˙˙˙
 
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_303_inputlstm_303/lstm_cell_303/kernel'lstm_303/lstm_cell_303/recurrent_kernellstm_303/lstm_cell_303/biaslstm_304/lstm_cell_304/kernel'lstm_304/lstm_cell_304/recurrent_kernellstm_304/lstm_cell_304/biaslstm_305/lstm_cell_305/kernel'lstm_305/lstm_cell_305/recurrent_kernellstm_305/lstm_cell_305/biasdense_101/kerneldense_101/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_450002
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_101/kernel/Read/ReadVariableOp"dense_101/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_303/lstm_cell_303/kernel/Read/ReadVariableOp;lstm_303/lstm_cell_303/recurrent_kernel/Read/ReadVariableOp/lstm_303/lstm_cell_303/bias/Read/ReadVariableOp1lstm_304/lstm_cell_304/kernel/Read/ReadVariableOp;lstm_304/lstm_cell_304/recurrent_kernel/Read/ReadVariableOp/lstm_304/lstm_cell_304/bias/Read/ReadVariableOp1lstm_305/lstm_cell_305/kernel/Read/ReadVariableOp;lstm_305/lstm_cell_305/recurrent_kernel/Read/ReadVariableOp/lstm_305/lstm_cell_305/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_101/kernel/m/Read/ReadVariableOp)Adam/dense_101/bias/m/Read/ReadVariableOp8Adam/lstm_303/lstm_cell_303/kernel/m/Read/ReadVariableOpBAdam/lstm_303/lstm_cell_303/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_303/lstm_cell_303/bias/m/Read/ReadVariableOp8Adam/lstm_304/lstm_cell_304/kernel/m/Read/ReadVariableOpBAdam/lstm_304/lstm_cell_304/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_304/lstm_cell_304/bias/m/Read/ReadVariableOp8Adam/lstm_305/lstm_cell_305/kernel/m/Read/ReadVariableOpBAdam/lstm_305/lstm_cell_305/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_305/lstm_cell_305/bias/m/Read/ReadVariableOp+Adam/dense_101/kernel/v/Read/ReadVariableOp)Adam/dense_101/bias/v/Read/ReadVariableOp8Adam/lstm_303/lstm_cell_303/kernel/v/Read/ReadVariableOpBAdam/lstm_303/lstm_cell_303/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_303/lstm_cell_303/bias/v/Read/ReadVariableOp8Adam/lstm_304/lstm_cell_304/kernel/v/Read/ReadVariableOpBAdam/lstm_304/lstm_cell_304/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_304/lstm_cell_304/bias/v/Read/ReadVariableOp8Adam/lstm_305/lstm_cell_305/kernel/v/Read/ReadVariableOpBAdam/lstm_305/lstm_cell_305/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_305/lstm_cell_305/bias/v/Read/ReadVariableOpConst*5
Tin.
,2*	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_453214

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_101/kerneldense_101/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_303/lstm_cell_303/kernel'lstm_303/lstm_cell_303/recurrent_kernellstm_303/lstm_cell_303/biaslstm_304/lstm_cell_304/kernel'lstm_304/lstm_cell_304/recurrent_kernellstm_304/lstm_cell_304/biaslstm_305/lstm_cell_305/kernel'lstm_305/lstm_cell_305/recurrent_kernellstm_305/lstm_cell_305/biastotalcountAdam/dense_101/kernel/mAdam/dense_101/bias/m$Adam/lstm_303/lstm_cell_303/kernel/m.Adam/lstm_303/lstm_cell_303/recurrent_kernel/m"Adam/lstm_303/lstm_cell_303/bias/m$Adam/lstm_304/lstm_cell_304/kernel/m.Adam/lstm_304/lstm_cell_304/recurrent_kernel/m"Adam/lstm_304/lstm_cell_304/bias/m$Adam/lstm_305/lstm_cell_305/kernel/m.Adam/lstm_305/lstm_cell_305/recurrent_kernel/m"Adam/lstm_305/lstm_cell_305/bias/mAdam/dense_101/kernel/vAdam/dense_101/bias/v$Adam/lstm_303/lstm_cell_303/kernel/v.Adam/lstm_303/lstm_cell_303/recurrent_kernel/v"Adam/lstm_303/lstm_cell_303/bias/v$Adam/lstm_304/lstm_cell_304/kernel/v.Adam/lstm_304/lstm_cell_304/recurrent_kernel/v"Adam/lstm_304/lstm_cell_304/bias/v$Adam/lstm_305/lstm_cell_305/kernel/v.Adam/lstm_305/lstm_cell_305/recurrent_kernel/v"Adam/lstm_305/lstm_cell_305/bias/v*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_453344ĜÜ+
ë
ö
-__inference_lstm_cell_73_layer_call_fn_452892

inputs
states_0
states_1
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity

identity_1

identity_2˘StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_73_layer_call_and_return_conditional_losses_448159o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
states/1
Ğ
¸
)__inference_lstm_304_layer_call_fn_451537
inputs_0
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity˘StatefulPartitionedCallġ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_304_layer_call_and_return_conditional_losses_448242|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
ô

£
/__inference_sequential_101_layer_call_fn_449907
lstm_303_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity˘StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCalllstm_303_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_101_layer_call_and_return_conditional_losses_449855o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_303_input
8
?
while_body_449703
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_72_matmul_readvariableop_resource_0:	H
5while_lstm_cell_72_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_72_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_72_matmul_readvariableop_resource:	F
3while_lstm_cell_72_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_72_biasadd_readvariableop_resource:	˘)while/lstm_cell_72/BiasAdd/ReadVariableOp˘(while/lstm_cell_72/MatMul/ReadVariableOp˘*while/lstm_cell_72/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_72/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_72_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_72/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_72/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_72/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_72_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_72/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_72/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_72/addAddV2#while/lstm_cell_72/MatMul:product:0%while/lstm_cell_72/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_72/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_72_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_72/BiasAddBiasAddwhile/lstm_cell_72/add:z:01while/lstm_cell_72/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_72/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_72/splitSplit+while/lstm_cell_72/split/split_dim:output:0#while/lstm_cell_72/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_72/SigmoidSigmoid!while/lstm_cell_72/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_72/Sigmoid_1Sigmoid!while/lstm_cell_72/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_72/mulMul while/lstm_cell_72/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_72/ReluRelu!while/lstm_cell_72/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_72/mul_1Mulwhile/lstm_cell_72/Sigmoid:y:0%while/lstm_cell_72/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_72/add_1AddV2while/lstm_cell_72/mul:z:0while/lstm_cell_72/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_72/Sigmoid_2Sigmoid!while/lstm_cell_72/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_72/Relu_1Reluwhile/lstm_cell_72/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_72/mul_2Mul while/lstm_cell_72/Sigmoid_2:y:0'while/lstm_cell_72/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_72/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_72/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_72/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_72/BiasAdd/ReadVariableOp)^while/lstm_cell_72/MatMul/ReadVariableOp+^while/lstm_cell_72/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_72_biasadd_readvariableop_resource4while_lstm_cell_72_biasadd_readvariableop_resource_0"l
3while_lstm_cell_72_matmul_1_readvariableop_resource5while_lstm_cell_72_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_72_matmul_readvariableop_resource3while_lstm_cell_72_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_72/BiasAdd/ReadVariableOp)while/lstm_cell_72/BiasAdd/ReadVariableOp2T
(while/lstm_cell_72/MatMul/ReadVariableOp(while/lstm_cell_72/MatMul/ReadVariableOp2X
*while/lstm_cell_72/MatMul_1/ReadVariableOp*while/lstm_cell_72/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
Ĉ

J__inference_sequential_101_layer_call_and_return_conditional_losses_450483

inputsG
4lstm_303_lstm_cell_72_matmul_readvariableop_resource:	I
6lstm_303_lstm_cell_72_matmul_1_readvariableop_resource:	dD
5lstm_303_lstm_cell_72_biasadd_readvariableop_resource:	G
4lstm_304_lstm_cell_73_matmul_readvariableop_resource:	dÈI
6lstm_304_lstm_cell_73_matmul_1_readvariableop_resource:	2ÈD
5lstm_304_lstm_cell_73_biasadd_readvariableop_resource:	ÈF
4lstm_305_lstm_cell_74_matmul_readvariableop_resource:2(H
6lstm_305_lstm_cell_74_matmul_1_readvariableop_resource:
(C
5lstm_305_lstm_cell_74_biasadd_readvariableop_resource:(:
(dense_101_matmul_readvariableop_resource:
7
)dense_101_biasadd_readvariableop_resource:
identity˘ dense_101/BiasAdd/ReadVariableOp˘dense_101/MatMul/ReadVariableOp˘,lstm_303/lstm_cell_72/BiasAdd/ReadVariableOp˘+lstm_303/lstm_cell_72/MatMul/ReadVariableOp˘-lstm_303/lstm_cell_72/MatMul_1/ReadVariableOp˘lstm_303/while˘,lstm_304/lstm_cell_73/BiasAdd/ReadVariableOp˘+lstm_304/lstm_cell_73/MatMul/ReadVariableOp˘-lstm_304/lstm_cell_73/MatMul_1/ReadVariableOp˘lstm_304/while˘,lstm_305/lstm_cell_74/BiasAdd/ReadVariableOp˘+lstm_305/lstm_cell_74/MatMul/ReadVariableOp˘-lstm_305/lstm_cell_74/MatMul_1/ReadVariableOp˘lstm_305/whileD
lstm_303/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_303/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_303/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_303/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_303/strided_sliceStridedSlicelstm_303/Shape:output:0%lstm_303/strided_slice/stack:output:0'lstm_303/strided_slice/stack_1:output:0'lstm_303/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_303/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_303/zeros/packedPacklstm_303/strided_slice:output:0 lstm_303/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_303/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_303/zerosFilllstm_303/zeros/packed:output:0lstm_303/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_303/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_303/zeros_1/packedPacklstm_303/strided_slice:output:0"lstm_303/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_303/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_303/zeros_1Fill lstm_303/zeros_1/packed:output:0lstm_303/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_303/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_303/transpose	Transposeinputs lstm_303/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_303/Shape_1Shapelstm_303/transpose:y:0*
T0*
_output_shapes
:h
lstm_303/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_303/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_303/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_303/strided_slice_1StridedSlicelstm_303/Shape_1:output:0'lstm_303/strided_slice_1/stack:output:0)lstm_303/strided_slice_1/stack_1:output:0)lstm_303/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_303/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_303/TensorArrayV2TensorListReserve-lstm_303/TensorArrayV2/element_shape:output:0!lstm_303/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_303/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_303/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_303/transpose:y:0Glstm_303/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_303/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_303/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_303/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_303/strided_slice_2StridedSlicelstm_303/transpose:y:0'lstm_303/strided_slice_2/stack:output:0)lstm_303/strided_slice_2/stack_1:output:0)lstm_303/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_303/lstm_cell_72/MatMul/ReadVariableOpReadVariableOp4lstm_303_lstm_cell_72_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_303/lstm_cell_72/MatMulMatMul!lstm_303/strided_slice_2:output:03lstm_303/lstm_cell_72/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_303/lstm_cell_72/MatMul_1/ReadVariableOpReadVariableOp6lstm_303_lstm_cell_72_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_303/lstm_cell_72/MatMul_1MatMullstm_303/zeros:output:05lstm_303/lstm_cell_72/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_303/lstm_cell_72/addAddV2&lstm_303/lstm_cell_72/MatMul:product:0(lstm_303/lstm_cell_72/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_303/lstm_cell_72/BiasAdd/ReadVariableOpReadVariableOp5lstm_303_lstm_cell_72_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_303/lstm_cell_72/BiasAddBiasAddlstm_303/lstm_cell_72/add:z:04lstm_303/lstm_cell_72/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_303/lstm_cell_72/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_303/lstm_cell_72/splitSplit.lstm_303/lstm_cell_72/split/split_dim:output:0&lstm_303/lstm_cell_72/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_303/lstm_cell_72/SigmoidSigmoid$lstm_303/lstm_cell_72/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_303/lstm_cell_72/Sigmoid_1Sigmoid$lstm_303/lstm_cell_72/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_303/lstm_cell_72/mulMul#lstm_303/lstm_cell_72/Sigmoid_1:y:0lstm_303/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_303/lstm_cell_72/ReluRelu$lstm_303/lstm_cell_72/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_303/lstm_cell_72/mul_1Mul!lstm_303/lstm_cell_72/Sigmoid:y:0(lstm_303/lstm_cell_72/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_303/lstm_cell_72/add_1AddV2lstm_303/lstm_cell_72/mul:z:0lstm_303/lstm_cell_72/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_303/lstm_cell_72/Sigmoid_2Sigmoid$lstm_303/lstm_cell_72/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_303/lstm_cell_72/Relu_1Relulstm_303/lstm_cell_72/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_303/lstm_cell_72/mul_2Mul#lstm_303/lstm_cell_72/Sigmoid_2:y:0*lstm_303/lstm_cell_72/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_303/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_303/TensorArrayV2_1TensorListReserve/lstm_303/TensorArrayV2_1/element_shape:output:0!lstm_303/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_303/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_303/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_303/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_303/whileWhile$lstm_303/while/loop_counter:output:0*lstm_303/while/maximum_iterations:output:0lstm_303/time:output:0!lstm_303/TensorArrayV2_1:handle:0lstm_303/zeros:output:0lstm_303/zeros_1:output:0!lstm_303/strided_slice_1:output:0@lstm_303/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_303_lstm_cell_72_matmul_readvariableop_resource6lstm_303_lstm_cell_72_matmul_1_readvariableop_resource5lstm_303_lstm_cell_72_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_303_while_body_450115*&
condR
lstm_303_while_cond_450114*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_303/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_303/TensorArrayV2Stack/TensorListStackTensorListStacklstm_303/while:output:3Blstm_303/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_303/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_303/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_303/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_303/strided_slice_3StridedSlice4lstm_303/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_303/strided_slice_3/stack:output:0)lstm_303/strided_slice_3/stack_1:output:0)lstm_303/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_303/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_303/transpose_1	Transpose4lstm_303/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_303/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_303/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_304/ShapeShapelstm_303/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_304/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_304/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_304/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_304/strided_sliceStridedSlicelstm_304/Shape:output:0%lstm_304/strided_slice/stack:output:0'lstm_304/strided_slice/stack_1:output:0'lstm_304/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_304/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_304/zeros/packedPacklstm_304/strided_slice:output:0 lstm_304/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_304/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_304/zerosFilllstm_304/zeros/packed:output:0lstm_304/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_304/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_304/zeros_1/packedPacklstm_304/strided_slice:output:0"lstm_304/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_304/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_304/zeros_1Fill lstm_304/zeros_1/packed:output:0lstm_304/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_304/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_304/transpose	Transposelstm_303/transpose_1:y:0 lstm_304/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_304/Shape_1Shapelstm_304/transpose:y:0*
T0*
_output_shapes
:h
lstm_304/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_304/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_304/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_304/strided_slice_1StridedSlicelstm_304/Shape_1:output:0'lstm_304/strided_slice_1/stack:output:0)lstm_304/strided_slice_1/stack_1:output:0)lstm_304/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_304/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_304/TensorArrayV2TensorListReserve-lstm_304/TensorArrayV2/element_shape:output:0!lstm_304/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_304/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_304/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_304/transpose:y:0Glstm_304/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_304/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_304/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_304/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_304/strided_slice_2StridedSlicelstm_304/transpose:y:0'lstm_304/strided_slice_2/stack:output:0)lstm_304/strided_slice_2/stack_1:output:0)lstm_304/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_304/lstm_cell_73/MatMul/ReadVariableOpReadVariableOp4lstm_304_lstm_cell_73_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_304/lstm_cell_73/MatMulMatMul!lstm_304/strided_slice_2:output:03lstm_304/lstm_cell_73/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_304/lstm_cell_73/MatMul_1/ReadVariableOpReadVariableOp6lstm_304_lstm_cell_73_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_304/lstm_cell_73/MatMul_1MatMullstm_304/zeros:output:05lstm_304/lstm_cell_73/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_304/lstm_cell_73/addAddV2&lstm_304/lstm_cell_73/MatMul:product:0(lstm_304/lstm_cell_73/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_304/lstm_cell_73/BiasAdd/ReadVariableOpReadVariableOp5lstm_304_lstm_cell_73_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_304/lstm_cell_73/BiasAddBiasAddlstm_304/lstm_cell_73/add:z:04lstm_304/lstm_cell_73/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_304/lstm_cell_73/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_304/lstm_cell_73/splitSplit.lstm_304/lstm_cell_73/split/split_dim:output:0&lstm_304/lstm_cell_73/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_304/lstm_cell_73/SigmoidSigmoid$lstm_304/lstm_cell_73/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_304/lstm_cell_73/Sigmoid_1Sigmoid$lstm_304/lstm_cell_73/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_304/lstm_cell_73/mulMul#lstm_304/lstm_cell_73/Sigmoid_1:y:0lstm_304/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_304/lstm_cell_73/ReluRelu$lstm_304/lstm_cell_73/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_304/lstm_cell_73/mul_1Mul!lstm_304/lstm_cell_73/Sigmoid:y:0(lstm_304/lstm_cell_73/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_304/lstm_cell_73/add_1AddV2lstm_304/lstm_cell_73/mul:z:0lstm_304/lstm_cell_73/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_304/lstm_cell_73/Sigmoid_2Sigmoid$lstm_304/lstm_cell_73/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_304/lstm_cell_73/Relu_1Relulstm_304/lstm_cell_73/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_304/lstm_cell_73/mul_2Mul#lstm_304/lstm_cell_73/Sigmoid_2:y:0*lstm_304/lstm_cell_73/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_304/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_304/TensorArrayV2_1TensorListReserve/lstm_304/TensorArrayV2_1/element_shape:output:0!lstm_304/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_304/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_304/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_304/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_304/whileWhile$lstm_304/while/loop_counter:output:0*lstm_304/while/maximum_iterations:output:0lstm_304/time:output:0!lstm_304/TensorArrayV2_1:handle:0lstm_304/zeros:output:0lstm_304/zeros_1:output:0!lstm_304/strided_slice_1:output:0@lstm_304/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_304_lstm_cell_73_matmul_readvariableop_resource6lstm_304_lstm_cell_73_matmul_1_readvariableop_resource5lstm_304_lstm_cell_73_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_304_while_body_450254*&
condR
lstm_304_while_cond_450253*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_304/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_304/TensorArrayV2Stack/TensorListStackTensorListStacklstm_304/while:output:3Blstm_304/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_304/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_304/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_304/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_304/strided_slice_3StridedSlice4lstm_304/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_304/strided_slice_3/stack:output:0)lstm_304/strided_slice_3/stack_1:output:0)lstm_304/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_304/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_304/transpose_1	Transpose4lstm_304/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_304/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_304/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_305/ShapeShapelstm_304/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_305/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_305/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_305/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_305/strided_sliceStridedSlicelstm_305/Shape:output:0%lstm_305/strided_slice/stack:output:0'lstm_305/strided_slice/stack_1:output:0'lstm_305/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_305/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_305/zeros/packedPacklstm_305/strided_slice:output:0 lstm_305/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_305/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_305/zerosFilllstm_305/zeros/packed:output:0lstm_305/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_305/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_305/zeros_1/packedPacklstm_305/strided_slice:output:0"lstm_305/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_305/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_305/zeros_1Fill lstm_305/zeros_1/packed:output:0lstm_305/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_305/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_305/transpose	Transposelstm_304/transpose_1:y:0 lstm_305/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_305/Shape_1Shapelstm_305/transpose:y:0*
T0*
_output_shapes
:h
lstm_305/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_305/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_305/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_305/strided_slice_1StridedSlicelstm_305/Shape_1:output:0'lstm_305/strided_slice_1/stack:output:0)lstm_305/strided_slice_1/stack_1:output:0)lstm_305/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_305/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_305/TensorArrayV2TensorListReserve-lstm_305/TensorArrayV2/element_shape:output:0!lstm_305/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_305/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_305/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_305/transpose:y:0Glstm_305/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_305/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_305/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_305/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_305/strided_slice_2StridedSlicelstm_305/transpose:y:0'lstm_305/strided_slice_2/stack:output:0)lstm_305/strided_slice_2/stack_1:output:0)lstm_305/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_305/lstm_cell_74/MatMul/ReadVariableOpReadVariableOp4lstm_305_lstm_cell_74_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_305/lstm_cell_74/MatMulMatMul!lstm_305/strided_slice_2:output:03lstm_305/lstm_cell_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_305/lstm_cell_74/MatMul_1/ReadVariableOpReadVariableOp6lstm_305_lstm_cell_74_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_305/lstm_cell_74/MatMul_1MatMullstm_305/zeros:output:05lstm_305/lstm_cell_74/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_305/lstm_cell_74/addAddV2&lstm_305/lstm_cell_74/MatMul:product:0(lstm_305/lstm_cell_74/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_305/lstm_cell_74/BiasAdd/ReadVariableOpReadVariableOp5lstm_305_lstm_cell_74_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_305/lstm_cell_74/BiasAddBiasAddlstm_305/lstm_cell_74/add:z:04lstm_305/lstm_cell_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_305/lstm_cell_74/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_305/lstm_cell_74/splitSplit.lstm_305/lstm_cell_74/split/split_dim:output:0&lstm_305/lstm_cell_74/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_305/lstm_cell_74/SigmoidSigmoid$lstm_305/lstm_cell_74/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_305/lstm_cell_74/Sigmoid_1Sigmoid$lstm_305/lstm_cell_74/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_305/lstm_cell_74/mulMul#lstm_305/lstm_cell_74/Sigmoid_1:y:0lstm_305/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_305/lstm_cell_74/ReluRelu$lstm_305/lstm_cell_74/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_305/lstm_cell_74/mul_1Mul!lstm_305/lstm_cell_74/Sigmoid:y:0(lstm_305/lstm_cell_74/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_305/lstm_cell_74/add_1AddV2lstm_305/lstm_cell_74/mul:z:0lstm_305/lstm_cell_74/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_305/lstm_cell_74/Sigmoid_2Sigmoid$lstm_305/lstm_cell_74/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_305/lstm_cell_74/Relu_1Relulstm_305/lstm_cell_74/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_305/lstm_cell_74/mul_2Mul#lstm_305/lstm_cell_74/Sigmoid_2:y:0*lstm_305/lstm_cell_74/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_305/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_305/TensorArrayV2_1TensorListReserve/lstm_305/TensorArrayV2_1/element_shape:output:0!lstm_305/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_305/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_305/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_305/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_305/whileWhile$lstm_305/while/loop_counter:output:0*lstm_305/while/maximum_iterations:output:0lstm_305/time:output:0!lstm_305/TensorArrayV2_1:handle:0lstm_305/zeros:output:0lstm_305/zeros_1:output:0!lstm_305/strided_slice_1:output:0@lstm_305/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_305_lstm_cell_74_matmul_readvariableop_resource6lstm_305_lstm_cell_74_matmul_1_readvariableop_resource5lstm_305_lstm_cell_74_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_305_while_body_450393*&
condR
lstm_305_while_cond_450392*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_305/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_305/TensorArrayV2Stack/TensorListStackTensorListStacklstm_305/while:output:3Blstm_305/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_305/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_305/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_305/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_305/strided_slice_3StridedSlice4lstm_305/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_305/strided_slice_3/stack:output:0)lstm_305/strided_slice_3/stack_1:output:0)lstm_305/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_305/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_305/transpose_1	Transpose4lstm_305/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_305/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_305/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_101/MatMul/ReadVariableOpReadVariableOp(dense_101_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_101/MatMulMatMul!lstm_305/strided_slice_3:output:0'dense_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 dense_101/BiasAdd/ReadVariableOpReadVariableOp)dense_101_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_101/BiasAddBiasAdddense_101/MatMul:product:0(dense_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
IdentityIdentitydense_101/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ċ
NoOpNoOp!^dense_101/BiasAdd/ReadVariableOp ^dense_101/MatMul/ReadVariableOp-^lstm_303/lstm_cell_72/BiasAdd/ReadVariableOp,^lstm_303/lstm_cell_72/MatMul/ReadVariableOp.^lstm_303/lstm_cell_72/MatMul_1/ReadVariableOp^lstm_303/while-^lstm_304/lstm_cell_73/BiasAdd/ReadVariableOp,^lstm_304/lstm_cell_73/MatMul/ReadVariableOp.^lstm_304/lstm_cell_73/MatMul_1/ReadVariableOp^lstm_304/while-^lstm_305/lstm_cell_74/BiasAdd/ReadVariableOp,^lstm_305/lstm_cell_74/MatMul/ReadVariableOp.^lstm_305/lstm_cell_74/MatMul_1/ReadVariableOp^lstm_305/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_101/BiasAdd/ReadVariableOp dense_101/BiasAdd/ReadVariableOp2B
dense_101/MatMul/ReadVariableOpdense_101/MatMul/ReadVariableOp2\
,lstm_303/lstm_cell_72/BiasAdd/ReadVariableOp,lstm_303/lstm_cell_72/BiasAdd/ReadVariableOp2Z
+lstm_303/lstm_cell_72/MatMul/ReadVariableOp+lstm_303/lstm_cell_72/MatMul/ReadVariableOp2^
-lstm_303/lstm_cell_72/MatMul_1/ReadVariableOp-lstm_303/lstm_cell_72/MatMul_1/ReadVariableOp2 
lstm_303/whilelstm_303/while2\
,lstm_304/lstm_cell_73/BiasAdd/ReadVariableOp,lstm_304/lstm_cell_73/BiasAdd/ReadVariableOp2Z
+lstm_304/lstm_cell_73/MatMul/ReadVariableOp+lstm_304/lstm_cell_73/MatMul/ReadVariableOp2^
-lstm_304/lstm_cell_73/MatMul_1/ReadVariableOp-lstm_304/lstm_cell_73/MatMul_1/ReadVariableOp2 
lstm_304/whilelstm_304/while2\
,lstm_305/lstm_cell_74/BiasAdd/ReadVariableOp,lstm_305/lstm_cell_74/BiasAdd/ReadVariableOp2Z
+lstm_305/lstm_cell_74/MatMul/ReadVariableOp+lstm_305/lstm_cell_74/MatMul/ReadVariableOp2^
-lstm_305/lstm_cell_74/MatMul_1/ReadVariableOp-lstm_305/lstm_cell_74/MatMul_1/ReadVariableOp2 
lstm_305/whilelstm_305/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8
?
while_body_451772
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_73_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_73_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_73_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_73_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_73_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_73_biasadd_readvariableop_resource:	È˘)while/lstm_cell_73/BiasAdd/ReadVariableOp˘(while/lstm_cell_73/MatMul/ReadVariableOp˘*while/lstm_cell_73/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_73/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_73_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_73/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_73/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_73/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_73_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_73/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_73/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_73/addAddV2#while/lstm_cell_73/MatMul:product:0%while/lstm_cell_73/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_73/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_73_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_73/BiasAddBiasAddwhile/lstm_cell_73/add:z:01while/lstm_cell_73/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_73/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_73/splitSplit+while/lstm_cell_73/split/split_dim:output:0#while/lstm_cell_73/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_73/SigmoidSigmoid!while/lstm_cell_73/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_73/Sigmoid_1Sigmoid!while/lstm_cell_73/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_73/mulMul while/lstm_cell_73/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_73/ReluRelu!while/lstm_cell_73/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_73/mul_1Mulwhile/lstm_cell_73/Sigmoid:y:0%while/lstm_cell_73/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_73/add_1AddV2while/lstm_cell_73/mul:z:0while/lstm_cell_73/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_73/Sigmoid_2Sigmoid!while/lstm_cell_73/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_73/Relu_1Reluwhile/lstm_cell_73/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_73/mul_2Mul while/lstm_cell_73/Sigmoid_2:y:0'while/lstm_cell_73/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_73/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_73/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_73/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_73/BiasAdd/ReadVariableOp)^while/lstm_cell_73/MatMul/ReadVariableOp+^while/lstm_cell_73/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_73_biasadd_readvariableop_resource4while_lstm_cell_73_biasadd_readvariableop_resource_0"l
3while_lstm_cell_73_matmul_1_readvariableop_resource5while_lstm_cell_73_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_73_matmul_readvariableop_resource3while_lstm_cell_73_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_73/BiasAdd/ReadVariableOp)while/lstm_cell_73/BiasAdd/ReadVariableOp2T
(while/lstm_cell_73/MatMul/ReadVariableOp(while/lstm_cell_73/MatMul/ReadVariableOp2X
*while/lstm_cell_73/MatMul_1/ReadVariableOp*while/lstm_cell_73/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
µ
?
while_cond_449156
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_449156___redundant_placeholder04
0while_while_cond_449156___redundant_placeholder14
0while_while_cond_449156___redundant_placeholder24
0while_while_cond_449156___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
Ĉ

J__inference_sequential_101_layer_call_and_return_conditional_losses_450910

inputsG
4lstm_303_lstm_cell_72_matmul_readvariableop_resource:	I
6lstm_303_lstm_cell_72_matmul_1_readvariableop_resource:	dD
5lstm_303_lstm_cell_72_biasadd_readvariableop_resource:	G
4lstm_304_lstm_cell_73_matmul_readvariableop_resource:	dÈI
6lstm_304_lstm_cell_73_matmul_1_readvariableop_resource:	2ÈD
5lstm_304_lstm_cell_73_biasadd_readvariableop_resource:	ÈF
4lstm_305_lstm_cell_74_matmul_readvariableop_resource:2(H
6lstm_305_lstm_cell_74_matmul_1_readvariableop_resource:
(C
5lstm_305_lstm_cell_74_biasadd_readvariableop_resource:(:
(dense_101_matmul_readvariableop_resource:
7
)dense_101_biasadd_readvariableop_resource:
identity˘ dense_101/BiasAdd/ReadVariableOp˘dense_101/MatMul/ReadVariableOp˘,lstm_303/lstm_cell_72/BiasAdd/ReadVariableOp˘+lstm_303/lstm_cell_72/MatMul/ReadVariableOp˘-lstm_303/lstm_cell_72/MatMul_1/ReadVariableOp˘lstm_303/while˘,lstm_304/lstm_cell_73/BiasAdd/ReadVariableOp˘+lstm_304/lstm_cell_73/MatMul/ReadVariableOp˘-lstm_304/lstm_cell_73/MatMul_1/ReadVariableOp˘lstm_304/while˘,lstm_305/lstm_cell_74/BiasAdd/ReadVariableOp˘+lstm_305/lstm_cell_74/MatMul/ReadVariableOp˘-lstm_305/lstm_cell_74/MatMul_1/ReadVariableOp˘lstm_305/whileD
lstm_303/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_303/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_303/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_303/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_303/strided_sliceStridedSlicelstm_303/Shape:output:0%lstm_303/strided_slice/stack:output:0'lstm_303/strided_slice/stack_1:output:0'lstm_303/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_303/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_303/zeros/packedPacklstm_303/strided_slice:output:0 lstm_303/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_303/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_303/zerosFilllstm_303/zeros/packed:output:0lstm_303/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_303/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_303/zeros_1/packedPacklstm_303/strided_slice:output:0"lstm_303/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_303/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_303/zeros_1Fill lstm_303/zeros_1/packed:output:0lstm_303/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_303/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_303/transpose	Transposeinputs lstm_303/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_303/Shape_1Shapelstm_303/transpose:y:0*
T0*
_output_shapes
:h
lstm_303/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_303/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_303/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_303/strided_slice_1StridedSlicelstm_303/Shape_1:output:0'lstm_303/strided_slice_1/stack:output:0)lstm_303/strided_slice_1/stack_1:output:0)lstm_303/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_303/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_303/TensorArrayV2TensorListReserve-lstm_303/TensorArrayV2/element_shape:output:0!lstm_303/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_303/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_303/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_303/transpose:y:0Glstm_303/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_303/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_303/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_303/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_303/strided_slice_2StridedSlicelstm_303/transpose:y:0'lstm_303/strided_slice_2/stack:output:0)lstm_303/strided_slice_2/stack_1:output:0)lstm_303/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_303/lstm_cell_72/MatMul/ReadVariableOpReadVariableOp4lstm_303_lstm_cell_72_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_303/lstm_cell_72/MatMulMatMul!lstm_303/strided_slice_2:output:03lstm_303/lstm_cell_72/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_303/lstm_cell_72/MatMul_1/ReadVariableOpReadVariableOp6lstm_303_lstm_cell_72_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_303/lstm_cell_72/MatMul_1MatMullstm_303/zeros:output:05lstm_303/lstm_cell_72/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_303/lstm_cell_72/addAddV2&lstm_303/lstm_cell_72/MatMul:product:0(lstm_303/lstm_cell_72/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_303/lstm_cell_72/BiasAdd/ReadVariableOpReadVariableOp5lstm_303_lstm_cell_72_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_303/lstm_cell_72/BiasAddBiasAddlstm_303/lstm_cell_72/add:z:04lstm_303/lstm_cell_72/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_303/lstm_cell_72/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_303/lstm_cell_72/splitSplit.lstm_303/lstm_cell_72/split/split_dim:output:0&lstm_303/lstm_cell_72/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_303/lstm_cell_72/SigmoidSigmoid$lstm_303/lstm_cell_72/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_303/lstm_cell_72/Sigmoid_1Sigmoid$lstm_303/lstm_cell_72/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_303/lstm_cell_72/mulMul#lstm_303/lstm_cell_72/Sigmoid_1:y:0lstm_303/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_303/lstm_cell_72/ReluRelu$lstm_303/lstm_cell_72/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_303/lstm_cell_72/mul_1Mul!lstm_303/lstm_cell_72/Sigmoid:y:0(lstm_303/lstm_cell_72/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_303/lstm_cell_72/add_1AddV2lstm_303/lstm_cell_72/mul:z:0lstm_303/lstm_cell_72/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_303/lstm_cell_72/Sigmoid_2Sigmoid$lstm_303/lstm_cell_72/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_303/lstm_cell_72/Relu_1Relulstm_303/lstm_cell_72/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_303/lstm_cell_72/mul_2Mul#lstm_303/lstm_cell_72/Sigmoid_2:y:0*lstm_303/lstm_cell_72/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_303/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_303/TensorArrayV2_1TensorListReserve/lstm_303/TensorArrayV2_1/element_shape:output:0!lstm_303/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_303/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_303/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_303/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_303/whileWhile$lstm_303/while/loop_counter:output:0*lstm_303/while/maximum_iterations:output:0lstm_303/time:output:0!lstm_303/TensorArrayV2_1:handle:0lstm_303/zeros:output:0lstm_303/zeros_1:output:0!lstm_303/strided_slice_1:output:0@lstm_303/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_303_lstm_cell_72_matmul_readvariableop_resource6lstm_303_lstm_cell_72_matmul_1_readvariableop_resource5lstm_303_lstm_cell_72_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_303_while_body_450542*&
condR
lstm_303_while_cond_450541*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_303/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_303/TensorArrayV2Stack/TensorListStackTensorListStacklstm_303/while:output:3Blstm_303/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_303/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_303/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_303/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_303/strided_slice_3StridedSlice4lstm_303/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_303/strided_slice_3/stack:output:0)lstm_303/strided_slice_3/stack_1:output:0)lstm_303/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_303/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_303/transpose_1	Transpose4lstm_303/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_303/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_303/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_304/ShapeShapelstm_303/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_304/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_304/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_304/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_304/strided_sliceStridedSlicelstm_304/Shape:output:0%lstm_304/strided_slice/stack:output:0'lstm_304/strided_slice/stack_1:output:0'lstm_304/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_304/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_304/zeros/packedPacklstm_304/strided_slice:output:0 lstm_304/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_304/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_304/zerosFilllstm_304/zeros/packed:output:0lstm_304/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_304/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_304/zeros_1/packedPacklstm_304/strided_slice:output:0"lstm_304/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_304/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_304/zeros_1Fill lstm_304/zeros_1/packed:output:0lstm_304/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_304/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_304/transpose	Transposelstm_303/transpose_1:y:0 lstm_304/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_304/Shape_1Shapelstm_304/transpose:y:0*
T0*
_output_shapes
:h
lstm_304/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_304/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_304/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_304/strided_slice_1StridedSlicelstm_304/Shape_1:output:0'lstm_304/strided_slice_1/stack:output:0)lstm_304/strided_slice_1/stack_1:output:0)lstm_304/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_304/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_304/TensorArrayV2TensorListReserve-lstm_304/TensorArrayV2/element_shape:output:0!lstm_304/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_304/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_304/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_304/transpose:y:0Glstm_304/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_304/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_304/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_304/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_304/strided_slice_2StridedSlicelstm_304/transpose:y:0'lstm_304/strided_slice_2/stack:output:0)lstm_304/strided_slice_2/stack_1:output:0)lstm_304/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_304/lstm_cell_73/MatMul/ReadVariableOpReadVariableOp4lstm_304_lstm_cell_73_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_304/lstm_cell_73/MatMulMatMul!lstm_304/strided_slice_2:output:03lstm_304/lstm_cell_73/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_304/lstm_cell_73/MatMul_1/ReadVariableOpReadVariableOp6lstm_304_lstm_cell_73_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_304/lstm_cell_73/MatMul_1MatMullstm_304/zeros:output:05lstm_304/lstm_cell_73/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_304/lstm_cell_73/addAddV2&lstm_304/lstm_cell_73/MatMul:product:0(lstm_304/lstm_cell_73/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_304/lstm_cell_73/BiasAdd/ReadVariableOpReadVariableOp5lstm_304_lstm_cell_73_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_304/lstm_cell_73/BiasAddBiasAddlstm_304/lstm_cell_73/add:z:04lstm_304/lstm_cell_73/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_304/lstm_cell_73/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_304/lstm_cell_73/splitSplit.lstm_304/lstm_cell_73/split/split_dim:output:0&lstm_304/lstm_cell_73/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_304/lstm_cell_73/SigmoidSigmoid$lstm_304/lstm_cell_73/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_304/lstm_cell_73/Sigmoid_1Sigmoid$lstm_304/lstm_cell_73/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_304/lstm_cell_73/mulMul#lstm_304/lstm_cell_73/Sigmoid_1:y:0lstm_304/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_304/lstm_cell_73/ReluRelu$lstm_304/lstm_cell_73/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_304/lstm_cell_73/mul_1Mul!lstm_304/lstm_cell_73/Sigmoid:y:0(lstm_304/lstm_cell_73/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_304/lstm_cell_73/add_1AddV2lstm_304/lstm_cell_73/mul:z:0lstm_304/lstm_cell_73/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_304/lstm_cell_73/Sigmoid_2Sigmoid$lstm_304/lstm_cell_73/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_304/lstm_cell_73/Relu_1Relulstm_304/lstm_cell_73/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_304/lstm_cell_73/mul_2Mul#lstm_304/lstm_cell_73/Sigmoid_2:y:0*lstm_304/lstm_cell_73/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_304/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_304/TensorArrayV2_1TensorListReserve/lstm_304/TensorArrayV2_1/element_shape:output:0!lstm_304/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_304/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_304/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_304/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_304/whileWhile$lstm_304/while/loop_counter:output:0*lstm_304/while/maximum_iterations:output:0lstm_304/time:output:0!lstm_304/TensorArrayV2_1:handle:0lstm_304/zeros:output:0lstm_304/zeros_1:output:0!lstm_304/strided_slice_1:output:0@lstm_304/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_304_lstm_cell_73_matmul_readvariableop_resource6lstm_304_lstm_cell_73_matmul_1_readvariableop_resource5lstm_304_lstm_cell_73_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_304_while_body_450681*&
condR
lstm_304_while_cond_450680*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_304/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_304/TensorArrayV2Stack/TensorListStackTensorListStacklstm_304/while:output:3Blstm_304/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_304/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_304/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_304/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_304/strided_slice_3StridedSlice4lstm_304/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_304/strided_slice_3/stack:output:0)lstm_304/strided_slice_3/stack_1:output:0)lstm_304/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_304/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_304/transpose_1	Transpose4lstm_304/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_304/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_304/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_305/ShapeShapelstm_304/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_305/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_305/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_305/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_305/strided_sliceStridedSlicelstm_305/Shape:output:0%lstm_305/strided_slice/stack:output:0'lstm_305/strided_slice/stack_1:output:0'lstm_305/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_305/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_305/zeros/packedPacklstm_305/strided_slice:output:0 lstm_305/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_305/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_305/zerosFilllstm_305/zeros/packed:output:0lstm_305/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_305/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_305/zeros_1/packedPacklstm_305/strided_slice:output:0"lstm_305/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_305/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_305/zeros_1Fill lstm_305/zeros_1/packed:output:0lstm_305/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_305/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_305/transpose	Transposelstm_304/transpose_1:y:0 lstm_305/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_305/Shape_1Shapelstm_305/transpose:y:0*
T0*
_output_shapes
:h
lstm_305/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_305/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_305/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_305/strided_slice_1StridedSlicelstm_305/Shape_1:output:0'lstm_305/strided_slice_1/stack:output:0)lstm_305/strided_slice_1/stack_1:output:0)lstm_305/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_305/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_305/TensorArrayV2TensorListReserve-lstm_305/TensorArrayV2/element_shape:output:0!lstm_305/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_305/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_305/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_305/transpose:y:0Glstm_305/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_305/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_305/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_305/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_305/strided_slice_2StridedSlicelstm_305/transpose:y:0'lstm_305/strided_slice_2/stack:output:0)lstm_305/strided_slice_2/stack_1:output:0)lstm_305/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_305/lstm_cell_74/MatMul/ReadVariableOpReadVariableOp4lstm_305_lstm_cell_74_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_305/lstm_cell_74/MatMulMatMul!lstm_305/strided_slice_2:output:03lstm_305/lstm_cell_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_305/lstm_cell_74/MatMul_1/ReadVariableOpReadVariableOp6lstm_305_lstm_cell_74_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_305/lstm_cell_74/MatMul_1MatMullstm_305/zeros:output:05lstm_305/lstm_cell_74/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_305/lstm_cell_74/addAddV2&lstm_305/lstm_cell_74/MatMul:product:0(lstm_305/lstm_cell_74/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_305/lstm_cell_74/BiasAdd/ReadVariableOpReadVariableOp5lstm_305_lstm_cell_74_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_305/lstm_cell_74/BiasAddBiasAddlstm_305/lstm_cell_74/add:z:04lstm_305/lstm_cell_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_305/lstm_cell_74/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_305/lstm_cell_74/splitSplit.lstm_305/lstm_cell_74/split/split_dim:output:0&lstm_305/lstm_cell_74/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_305/lstm_cell_74/SigmoidSigmoid$lstm_305/lstm_cell_74/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_305/lstm_cell_74/Sigmoid_1Sigmoid$lstm_305/lstm_cell_74/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_305/lstm_cell_74/mulMul#lstm_305/lstm_cell_74/Sigmoid_1:y:0lstm_305/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_305/lstm_cell_74/ReluRelu$lstm_305/lstm_cell_74/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_305/lstm_cell_74/mul_1Mul!lstm_305/lstm_cell_74/Sigmoid:y:0(lstm_305/lstm_cell_74/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_305/lstm_cell_74/add_1AddV2lstm_305/lstm_cell_74/mul:z:0lstm_305/lstm_cell_74/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_305/lstm_cell_74/Sigmoid_2Sigmoid$lstm_305/lstm_cell_74/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_305/lstm_cell_74/Relu_1Relulstm_305/lstm_cell_74/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_305/lstm_cell_74/mul_2Mul#lstm_305/lstm_cell_74/Sigmoid_2:y:0*lstm_305/lstm_cell_74/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_305/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_305/TensorArrayV2_1TensorListReserve/lstm_305/TensorArrayV2_1/element_shape:output:0!lstm_305/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_305/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_305/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_305/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_305/whileWhile$lstm_305/while/loop_counter:output:0*lstm_305/while/maximum_iterations:output:0lstm_305/time:output:0!lstm_305/TensorArrayV2_1:handle:0lstm_305/zeros:output:0lstm_305/zeros_1:output:0!lstm_305/strided_slice_1:output:0@lstm_305/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_305_lstm_cell_74_matmul_readvariableop_resource6lstm_305_lstm_cell_74_matmul_1_readvariableop_resource5lstm_305_lstm_cell_74_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_305_while_body_450820*&
condR
lstm_305_while_cond_450819*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_305/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_305/TensorArrayV2Stack/TensorListStackTensorListStacklstm_305/while:output:3Blstm_305/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_305/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_305/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_305/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_305/strided_slice_3StridedSlice4lstm_305/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_305/strided_slice_3/stack:output:0)lstm_305/strided_slice_3/stack_1:output:0)lstm_305/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_305/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_305/transpose_1	Transpose4lstm_305/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_305/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_305/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_101/MatMul/ReadVariableOpReadVariableOp(dense_101_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_101/MatMulMatMul!lstm_305/strided_slice_3:output:0'dense_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 dense_101/BiasAdd/ReadVariableOpReadVariableOp)dense_101_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_101/BiasAddBiasAdddense_101/MatMul:product:0(dense_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
IdentityIdentitydense_101/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ċ
NoOpNoOp!^dense_101/BiasAdd/ReadVariableOp ^dense_101/MatMul/ReadVariableOp-^lstm_303/lstm_cell_72/BiasAdd/ReadVariableOp,^lstm_303/lstm_cell_72/MatMul/ReadVariableOp.^lstm_303/lstm_cell_72/MatMul_1/ReadVariableOp^lstm_303/while-^lstm_304/lstm_cell_73/BiasAdd/ReadVariableOp,^lstm_304/lstm_cell_73/MatMul/ReadVariableOp.^lstm_304/lstm_cell_73/MatMul_1/ReadVariableOp^lstm_304/while-^lstm_305/lstm_cell_74/BiasAdd/ReadVariableOp,^lstm_305/lstm_cell_74/MatMul/ReadVariableOp.^lstm_305/lstm_cell_74/MatMul_1/ReadVariableOp^lstm_305/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_101/BiasAdd/ReadVariableOp dense_101/BiasAdd/ReadVariableOp2B
dense_101/MatMul/ReadVariableOpdense_101/MatMul/ReadVariableOp2\
,lstm_303/lstm_cell_72/BiasAdd/ReadVariableOp,lstm_303/lstm_cell_72/BiasAdd/ReadVariableOp2Z
+lstm_303/lstm_cell_72/MatMul/ReadVariableOp+lstm_303/lstm_cell_72/MatMul/ReadVariableOp2^
-lstm_303/lstm_cell_72/MatMul_1/ReadVariableOp-lstm_303/lstm_cell_72/MatMul_1/ReadVariableOp2 
lstm_303/whilelstm_303/while2\
,lstm_304/lstm_cell_73/BiasAdd/ReadVariableOp,lstm_304/lstm_cell_73/BiasAdd/ReadVariableOp2Z
+lstm_304/lstm_cell_73/MatMul/ReadVariableOp+lstm_304/lstm_cell_73/MatMul/ReadVariableOp2^
-lstm_304/lstm_cell_73/MatMul_1/ReadVariableOp-lstm_304/lstm_cell_73/MatMul_1/ReadVariableOp2 
lstm_304/whilelstm_304/while2\
,lstm_305/lstm_cell_74/BiasAdd/ReadVariableOp,lstm_305/lstm_cell_74/BiasAdd/ReadVariableOp2Z
+lstm_305/lstm_cell_74/MatMul/ReadVariableOp+lstm_305/lstm_cell_74/MatMul/ReadVariableOp2^
-lstm_305/lstm_cell_74/MatMul_1/ReadVariableOp-lstm_305/lstm_cell_74/MatMul_1/ReadVariableOp2 
lstm_305/whilelstm_305/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8
?
while_body_451299
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_72_matmul_readvariableop_resource_0:	H
5while_lstm_cell_72_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_72_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_72_matmul_readvariableop_resource:	F
3while_lstm_cell_72_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_72_biasadd_readvariableop_resource:	˘)while/lstm_cell_72/BiasAdd/ReadVariableOp˘(while/lstm_cell_72/MatMul/ReadVariableOp˘*while/lstm_cell_72/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_72/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_72_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_72/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_72/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_72/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_72_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_72/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_72/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_72/addAddV2#while/lstm_cell_72/MatMul:product:0%while/lstm_cell_72/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_72/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_72_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_72/BiasAddBiasAddwhile/lstm_cell_72/add:z:01while/lstm_cell_72/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_72/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_72/splitSplit+while/lstm_cell_72/split/split_dim:output:0#while/lstm_cell_72/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_72/SigmoidSigmoid!while/lstm_cell_72/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_72/Sigmoid_1Sigmoid!while/lstm_cell_72/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_72/mulMul while/lstm_cell_72/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_72/ReluRelu!while/lstm_cell_72/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_72/mul_1Mulwhile/lstm_cell_72/Sigmoid:y:0%while/lstm_cell_72/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_72/add_1AddV2while/lstm_cell_72/mul:z:0while/lstm_cell_72/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_72/Sigmoid_2Sigmoid!while/lstm_cell_72/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_72/Relu_1Reluwhile/lstm_cell_72/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_72/mul_2Mul while/lstm_cell_72/Sigmoid_2:y:0'while/lstm_cell_72/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_72/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_72/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_72/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_72/BiasAdd/ReadVariableOp)^while/lstm_cell_72/MatMul/ReadVariableOp+^while/lstm_cell_72/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_72_biasadd_readvariableop_resource4while_lstm_cell_72_biasadd_readvariableop_resource_0"l
3while_lstm_cell_72_matmul_1_readvariableop_resource5while_lstm_cell_72_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_72_matmul_readvariableop_resource3while_lstm_cell_72_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_72/BiasAdd/ReadVariableOp)while/lstm_cell_72/BiasAdd/ReadVariableOp2T
(while/lstm_cell_72/MatMul/ReadVariableOp(while/lstm_cell_72/MatMul/ReadVariableOp2X
*while/lstm_cell_72/MatMul_1/ReadVariableOp*while/lstm_cell_72/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
˙7
Ê
while_body_449373
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_74_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_74_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_74_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_74_matmul_readvariableop_resource:2(E
3while_lstm_cell_74_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_74_biasadd_readvariableop_resource:(˘)while/lstm_cell_74/BiasAdd/ReadVariableOp˘(while/lstm_cell_74/MatMul/ReadVariableOp˘*while/lstm_cell_74/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_74/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_74_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_74/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_74/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_74_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_74/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_74/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_74/addAddV2#while/lstm_cell_74/MatMul:product:0%while/lstm_cell_74/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_74/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_74_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_74/BiasAddBiasAddwhile/lstm_cell_74/add:z:01while/lstm_cell_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_74/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_74/splitSplit+while/lstm_cell_74/split/split_dim:output:0#while/lstm_cell_74/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_74/SigmoidSigmoid!while/lstm_cell_74/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_74/Sigmoid_1Sigmoid!while/lstm_cell_74/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_74/mulMul while/lstm_cell_74/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_74/ReluRelu!while/lstm_cell_74/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_74/mul_1Mulwhile/lstm_cell_74/Sigmoid:y:0%while/lstm_cell_74/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_74/add_1AddV2while/lstm_cell_74/mul:z:0while/lstm_cell_74/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_74/Sigmoid_2Sigmoid!while/lstm_cell_74/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_74/Relu_1Reluwhile/lstm_cell_74/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_74/mul_2Mul while/lstm_cell_74/Sigmoid_2:y:0'while/lstm_cell_74/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_74/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_74/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_74/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_74/BiasAdd/ReadVariableOp)^while/lstm_cell_74/MatMul/ReadVariableOp+^while/lstm_cell_74/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_74_biasadd_readvariableop_resource4while_lstm_cell_74_biasadd_readvariableop_resource_0"l
3while_lstm_cell_74_matmul_1_readvariableop_resource5while_lstm_cell_74_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_74_matmul_readvariableop_resource3while_lstm_cell_74_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_74/BiasAdd/ReadVariableOp)while/lstm_cell_74/BiasAdd/ReadVariableOp2T
(while/lstm_cell_74/MatMul/ReadVariableOp(while/lstm_cell_74/MatMul/ReadVariableOp2X
*while/lstm_cell_74/MatMul_1/ReadVariableOp*while/lstm_cell_74/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
¤J

D__inference_lstm_304_layer_call_and_return_conditional_losses_451999

inputs>
+lstm_cell_73_matmul_readvariableop_resource:	dÈ@
-lstm_cell_73_matmul_1_readvariableop_resource:	2È;
,lstm_cell_73_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_73/BiasAdd/ReadVariableOp˘"lstm_cell_73/MatMul/ReadVariableOp˘$lstm_cell_73/MatMul_1/ReadVariableOp˘while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask
"lstm_cell_73/MatMul/ReadVariableOpReadVariableOp+lstm_cell_73_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_73/MatMulMatMulstrided_slice_2:output:0*lstm_cell_73/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_73/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_73_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_73/MatMul_1MatMulzeros:output:0,lstm_cell_73/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_73/addAddV2lstm_cell_73/MatMul:product:0lstm_cell_73/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_73/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_73_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_73/BiasAddBiasAddlstm_cell_73/add:z:0+lstm_cell_73/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_73/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_73/splitSplit%lstm_cell_73/split/split_dim:output:0lstm_cell_73/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_73/SigmoidSigmoidlstm_cell_73/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_73/Sigmoid_1Sigmoidlstm_cell_73/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_73/mulMullstm_cell_73/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_73/ReluRelulstm_cell_73/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_73/mul_1Mullstm_cell_73/Sigmoid:y:0lstm_cell_73/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_73/add_1AddV2lstm_cell_73/mul:z:0lstm_cell_73/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_73/Sigmoid_2Sigmoidlstm_cell_73/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_73/Relu_1Relulstm_cell_73/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_73/mul_2Mullstm_cell_73/Sigmoid_2:y:0!lstm_cell_73/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_73_matmul_readvariableop_resource-lstm_cell_73_matmul_1_readvariableop_resource,lstm_cell_73_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_451915*
condR
while_cond_451914*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2À
NoOpNoOp$^lstm_cell_73/BiasAdd/ReadVariableOp#^lstm_cell_73/MatMul/ReadVariableOp%^lstm_cell_73/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_73/BiasAdd/ReadVariableOp#lstm_cell_73/BiasAdd/ReadVariableOp2H
"lstm_cell_73/MatMul/ReadVariableOp"lstm_cell_73/MatMul/ReadVariableOp2L
$lstm_cell_73/MatMul_1/ReadVariableOp$lstm_cell_73/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs

ĥ
)__inference_lstm_303_layer_call_fn_450954

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
identity˘StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_303_layer_call_and_return_conditional_losses_449787s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ĥT
Ô
)sequential_101_lstm_304_while_body_447513L
Hsequential_101_lstm_304_while_sequential_101_lstm_304_while_loop_counterR
Nsequential_101_lstm_304_while_sequential_101_lstm_304_while_maximum_iterations-
)sequential_101_lstm_304_while_placeholder/
+sequential_101_lstm_304_while_placeholder_1/
+sequential_101_lstm_304_while_placeholder_2/
+sequential_101_lstm_304_while_placeholder_3K
Gsequential_101_lstm_304_while_sequential_101_lstm_304_strided_slice_1_0
sequential_101_lstm_304_while_tensorarrayv2read_tensorlistgetitem_sequential_101_lstm_304_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_101_lstm_304_while_lstm_cell_73_matmul_readvariableop_resource_0:	dÈ`
Msequential_101_lstm_304_while_lstm_cell_73_matmul_1_readvariableop_resource_0:	2È[
Lsequential_101_lstm_304_while_lstm_cell_73_biasadd_readvariableop_resource_0:	È*
&sequential_101_lstm_304_while_identity,
(sequential_101_lstm_304_while_identity_1,
(sequential_101_lstm_304_while_identity_2,
(sequential_101_lstm_304_while_identity_3,
(sequential_101_lstm_304_while_identity_4,
(sequential_101_lstm_304_while_identity_5I
Esequential_101_lstm_304_while_sequential_101_lstm_304_strided_slice_1
sequential_101_lstm_304_while_tensorarrayv2read_tensorlistgetitem_sequential_101_lstm_304_tensorarrayunstack_tensorlistfromtensor\
Isequential_101_lstm_304_while_lstm_cell_73_matmul_readvariableop_resource:	dÈ^
Ksequential_101_lstm_304_while_lstm_cell_73_matmul_1_readvariableop_resource:	2ÈY
Jsequential_101_lstm_304_while_lstm_cell_73_biasadd_readvariableop_resource:	È˘Asequential_101/lstm_304/while/lstm_cell_73/BiasAdd/ReadVariableOp˘@sequential_101/lstm_304/while/lstm_cell_73/MatMul/ReadVariableOp˘Bsequential_101/lstm_304/while/lstm_cell_73/MatMul_1/ReadVariableOp 
Osequential_101/lstm_304/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
Asequential_101/lstm_304/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_101_lstm_304_while_tensorarrayv2read_tensorlistgetitem_sequential_101_lstm_304_tensorarrayunstack_tensorlistfromtensor_0)sequential_101_lstm_304_while_placeholderXsequential_101/lstm_304/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Í
@sequential_101/lstm_304/while/lstm_cell_73/MatMul/ReadVariableOpReadVariableOpKsequential_101_lstm_304_while_lstm_cell_73_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0
1sequential_101/lstm_304/while/lstm_cell_73/MatMulMatMulHsequential_101/lstm_304/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_101/lstm_304/while/lstm_cell_73/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÑ
Bsequential_101/lstm_304/while/lstm_cell_73/MatMul_1/ReadVariableOpReadVariableOpMsequential_101_lstm_304_while_lstm_cell_73_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0é
3sequential_101/lstm_304/while/lstm_cell_73/MatMul_1MatMul+sequential_101_lstm_304_while_placeholder_2Jsequential_101/lstm_304/while/lstm_cell_73/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èĉ
.sequential_101/lstm_304/while/lstm_cell_73/addAddV2;sequential_101/lstm_304/while/lstm_cell_73/MatMul:product:0=sequential_101/lstm_304/while/lstm_cell_73/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈË
Asequential_101/lstm_304/while/lstm_cell_73/BiasAdd/ReadVariableOpReadVariableOpLsequential_101_lstm_304_while_lstm_cell_73_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ï
2sequential_101/lstm_304/while/lstm_cell_73/BiasAddBiasAdd2sequential_101/lstm_304/while/lstm_cell_73/add:z:0Isequential_101/lstm_304/while/lstm_cell_73/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È|
:sequential_101/lstm_304/while/lstm_cell_73/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :·
0sequential_101/lstm_304/while/lstm_cell_73/splitSplitCsequential_101/lstm_304/while/lstm_cell_73/split/split_dim:output:0;sequential_101/lstm_304/while/lstm_cell_73/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitŞ
2sequential_101/lstm_304/while/lstm_cell_73/SigmoidSigmoid9sequential_101/lstm_304/while/lstm_cell_73/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ĵ
4sequential_101/lstm_304/while/lstm_cell_73/Sigmoid_1Sigmoid9sequential_101/lstm_304/while/lstm_cell_73/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Î
.sequential_101/lstm_304/while/lstm_cell_73/mulMul8sequential_101/lstm_304/while/lstm_cell_73/Sigmoid_1:y:0+sequential_101_lstm_304_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¤
/sequential_101/lstm_304/while/lstm_cell_73/ReluRelu9sequential_101/lstm_304/while/lstm_cell_73/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2à
0sequential_101/lstm_304/while/lstm_cell_73/mul_1Mul6sequential_101/lstm_304/while/lstm_cell_73/Sigmoid:y:0=sequential_101/lstm_304/while/lstm_cell_73/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ġ
0sequential_101/lstm_304/while/lstm_cell_73/add_1AddV22sequential_101/lstm_304/while/lstm_cell_73/mul:z:04sequential_101/lstm_304/while/lstm_cell_73/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ĵ
4sequential_101/lstm_304/while/lstm_cell_73/Sigmoid_2Sigmoid9sequential_101/lstm_304/while/lstm_cell_73/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
1sequential_101/lstm_304/while/lstm_cell_73/Relu_1Relu4sequential_101/lstm_304/while/lstm_cell_73/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ä
0sequential_101/lstm_304/while/lstm_cell_73/mul_2Mul8sequential_101/lstm_304/while/lstm_cell_73/Sigmoid_2:y:0?sequential_101/lstm_304/while/lstm_cell_73/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
Bsequential_101/lstm_304/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_101_lstm_304_while_placeholder_1)sequential_101_lstm_304_while_placeholder4sequential_101/lstm_304/while/lstm_cell_73/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒe
#sequential_101/lstm_304/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¤
!sequential_101/lstm_304/while/addAddV2)sequential_101_lstm_304_while_placeholder,sequential_101/lstm_304/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_101/lstm_304/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ç
#sequential_101/lstm_304/while/add_1AddV2Hsequential_101_lstm_304_while_sequential_101_lstm_304_while_loop_counter.sequential_101/lstm_304/while/add_1/y:output:0*
T0*
_output_shapes
: Ħ
&sequential_101/lstm_304/while/IdentityIdentity'sequential_101/lstm_304/while/add_1:z:0#^sequential_101/lstm_304/while/NoOp*
T0*
_output_shapes
: Ê
(sequential_101/lstm_304/while/Identity_1IdentityNsequential_101_lstm_304_while_sequential_101_lstm_304_while_maximum_iterations#^sequential_101/lstm_304/while/NoOp*
T0*
_output_shapes
: Ħ
(sequential_101/lstm_304/while/Identity_2Identity%sequential_101/lstm_304/while/add:z:0#^sequential_101/lstm_304/while/NoOp*
T0*
_output_shapes
: Î
(sequential_101/lstm_304/while/Identity_3IdentityRsequential_101/lstm_304/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_101/lstm_304/while/NoOp*
T0*
_output_shapes
: Á
(sequential_101/lstm_304/while/Identity_4Identity4sequential_101/lstm_304/while/lstm_cell_73/mul_2:z:0#^sequential_101/lstm_304/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Á
(sequential_101/lstm_304/while/Identity_5Identity4sequential_101/lstm_304/while/lstm_cell_73/add_1:z:0#^sequential_101/lstm_304/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2°
"sequential_101/lstm_304/while/NoOpNoOpB^sequential_101/lstm_304/while/lstm_cell_73/BiasAdd/ReadVariableOpA^sequential_101/lstm_304/while/lstm_cell_73/MatMul/ReadVariableOpC^sequential_101/lstm_304/while/lstm_cell_73/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_101_lstm_304_while_identity/sequential_101/lstm_304/while/Identity:output:0"]
(sequential_101_lstm_304_while_identity_11sequential_101/lstm_304/while/Identity_1:output:0"]
(sequential_101_lstm_304_while_identity_21sequential_101/lstm_304/while/Identity_2:output:0"]
(sequential_101_lstm_304_while_identity_31sequential_101/lstm_304/while/Identity_3:output:0"]
(sequential_101_lstm_304_while_identity_41sequential_101/lstm_304/while/Identity_4:output:0"]
(sequential_101_lstm_304_while_identity_51sequential_101/lstm_304/while/Identity_5:output:0"
Jsequential_101_lstm_304_while_lstm_cell_73_biasadd_readvariableop_resourceLsequential_101_lstm_304_while_lstm_cell_73_biasadd_readvariableop_resource_0"
Ksequential_101_lstm_304_while_lstm_cell_73_matmul_1_readvariableop_resourceMsequential_101_lstm_304_while_lstm_cell_73_matmul_1_readvariableop_resource_0"
Isequential_101_lstm_304_while_lstm_cell_73_matmul_readvariableop_resourceKsequential_101_lstm_304_while_lstm_cell_73_matmul_readvariableop_resource_0"
Esequential_101_lstm_304_while_sequential_101_lstm_304_strided_slice_1Gsequential_101_lstm_304_while_sequential_101_lstm_304_strided_slice_1_0"
sequential_101_lstm_304_while_tensorarrayv2read_tensorlistgetitem_sequential_101_lstm_304_tensorarrayunstack_tensorlistfromtensorsequential_101_lstm_304_while_tensorarrayv2read_tensorlistgetitem_sequential_101_lstm_304_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2
Asequential_101/lstm_304/while/lstm_cell_73/BiasAdd/ReadVariableOpAsequential_101/lstm_304/while/lstm_cell_73/BiasAdd/ReadVariableOp2
@sequential_101/lstm_304/while/lstm_cell_73/MatMul/ReadVariableOp@sequential_101/lstm_304/while/lstm_cell_73/MatMul/ReadVariableOp2
Bsequential_101/lstm_304/while/lstm_cell_73/MatMul_1/ReadVariableOpBsequential_101/lstm_304/while/lstm_cell_73/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
µ
?
while_cond_452530
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_452530___redundant_placeholder04
0while_while_cond_452530___redundant_placeholder14
0while_while_cond_452530___redundant_placeholder24
0while_while_cond_452530___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
ÎB
ê

lstm_305_while_body_450820.
*lstm_305_while_lstm_305_while_loop_counter4
0lstm_305_while_lstm_305_while_maximum_iterations
lstm_305_while_placeholder 
lstm_305_while_placeholder_1 
lstm_305_while_placeholder_2 
lstm_305_while_placeholder_3-
)lstm_305_while_lstm_305_strided_slice_1_0i
elstm_305_while_tensorarrayv2read_tensorlistgetitem_lstm_305_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_305_while_lstm_cell_74_matmul_readvariableop_resource_0:2(P
>lstm_305_while_lstm_cell_74_matmul_1_readvariableop_resource_0:
(K
=lstm_305_while_lstm_cell_74_biasadd_readvariableop_resource_0:(
lstm_305_while_identity
lstm_305_while_identity_1
lstm_305_while_identity_2
lstm_305_while_identity_3
lstm_305_while_identity_4
lstm_305_while_identity_5+
'lstm_305_while_lstm_305_strided_slice_1g
clstm_305_while_tensorarrayv2read_tensorlistgetitem_lstm_305_tensorarrayunstack_tensorlistfromtensorL
:lstm_305_while_lstm_cell_74_matmul_readvariableop_resource:2(N
<lstm_305_while_lstm_cell_74_matmul_1_readvariableop_resource:
(I
;lstm_305_while_lstm_cell_74_biasadd_readvariableop_resource:(˘2lstm_305/while/lstm_cell_74/BiasAdd/ReadVariableOp˘1lstm_305/while/lstm_cell_74/MatMul/ReadVariableOp˘3lstm_305/while/lstm_cell_74/MatMul_1/ReadVariableOp
@lstm_305/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_305/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_305_while_tensorarrayv2read_tensorlistgetitem_lstm_305_tensorarrayunstack_tensorlistfromtensor_0lstm_305_while_placeholderIlstm_305/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_305/while/lstm_cell_74/MatMul/ReadVariableOpReadVariableOp<lstm_305_while_lstm_cell_74_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_305/while/lstm_cell_74/MatMulMatMul9lstm_305/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_305/while/lstm_cell_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_305/while/lstm_cell_74/MatMul_1/ReadVariableOpReadVariableOp>lstm_305_while_lstm_cell_74_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_305/while/lstm_cell_74/MatMul_1MatMullstm_305_while_placeholder_2;lstm_305/while/lstm_cell_74/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_305/while/lstm_cell_74/addAddV2,lstm_305/while/lstm_cell_74/MatMul:product:0.lstm_305/while/lstm_cell_74/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_305/while/lstm_cell_74/BiasAdd/ReadVariableOpReadVariableOp=lstm_305_while_lstm_cell_74_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_305/while/lstm_cell_74/BiasAddBiasAdd#lstm_305/while/lstm_cell_74/add:z:0:lstm_305/while/lstm_cell_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_305/while/lstm_cell_74/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_305/while/lstm_cell_74/splitSplit4lstm_305/while/lstm_cell_74/split/split_dim:output:0,lstm_305/while/lstm_cell_74/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_305/while/lstm_cell_74/SigmoidSigmoid*lstm_305/while/lstm_cell_74/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_305/while/lstm_cell_74/Sigmoid_1Sigmoid*lstm_305/while/lstm_cell_74/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_305/while/lstm_cell_74/mulMul)lstm_305/while/lstm_cell_74/Sigmoid_1:y:0lstm_305_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_305/while/lstm_cell_74/ReluRelu*lstm_305/while/lstm_cell_74/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_305/while/lstm_cell_74/mul_1Mul'lstm_305/while/lstm_cell_74/Sigmoid:y:0.lstm_305/while/lstm_cell_74/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_305/while/lstm_cell_74/add_1AddV2#lstm_305/while/lstm_cell_74/mul:z:0%lstm_305/while/lstm_cell_74/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_305/while/lstm_cell_74/Sigmoid_2Sigmoid*lstm_305/while/lstm_cell_74/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_305/while/lstm_cell_74/Relu_1Relu%lstm_305/while/lstm_cell_74/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_305/while/lstm_cell_74/mul_2Mul)lstm_305/while/lstm_cell_74/Sigmoid_2:y:00lstm_305/while/lstm_cell_74/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_305/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_305_while_placeholder_1lstm_305_while_placeholder%lstm_305/while/lstm_cell_74/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_305/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_305/while/addAddV2lstm_305_while_placeholderlstm_305/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_305/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_305/while/add_1AddV2*lstm_305_while_lstm_305_while_loop_counterlstm_305/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_305/while/IdentityIdentitylstm_305/while/add_1:z:0^lstm_305/while/NoOp*
T0*
_output_shapes
: 
lstm_305/while/Identity_1Identity0lstm_305_while_lstm_305_while_maximum_iterations^lstm_305/while/NoOp*
T0*
_output_shapes
: t
lstm_305/while/Identity_2Identitylstm_305/while/add:z:0^lstm_305/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_305/while/Identity_3IdentityClstm_305/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_305/while/NoOp*
T0*
_output_shapes
: 
lstm_305/while/Identity_4Identity%lstm_305/while/lstm_cell_74/mul_2:z:0^lstm_305/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_305/while/Identity_5Identity%lstm_305/while/lstm_cell_74/add_1:z:0^lstm_305/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_305/while/NoOpNoOp3^lstm_305/while/lstm_cell_74/BiasAdd/ReadVariableOp2^lstm_305/while/lstm_cell_74/MatMul/ReadVariableOp4^lstm_305/while/lstm_cell_74/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_305_while_identity lstm_305/while/Identity:output:0"?
lstm_305_while_identity_1"lstm_305/while/Identity_1:output:0"?
lstm_305_while_identity_2"lstm_305/while/Identity_2:output:0"?
lstm_305_while_identity_3"lstm_305/while/Identity_3:output:0"?
lstm_305_while_identity_4"lstm_305/while/Identity_4:output:0"?
lstm_305_while_identity_5"lstm_305/while/Identity_5:output:0"T
'lstm_305_while_lstm_305_strided_slice_1)lstm_305_while_lstm_305_strided_slice_1_0"|
;lstm_305_while_lstm_cell_74_biasadd_readvariableop_resource=lstm_305_while_lstm_cell_74_biasadd_readvariableop_resource_0"~
<lstm_305_while_lstm_cell_74_matmul_1_readvariableop_resource>lstm_305_while_lstm_cell_74_matmul_1_readvariableop_resource_0"z
:lstm_305_while_lstm_cell_74_matmul_readvariableop_resource<lstm_305_while_lstm_cell_74_matmul_readvariableop_resource_0"Ì
clstm_305_while_tensorarrayv2read_tensorlistgetitem_lstm_305_tensorarrayunstack_tensorlistfromtensorelstm_305_while_tensorarrayv2read_tensorlistgetitem_lstm_305_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_305/while/lstm_cell_74/BiasAdd/ReadVariableOp2lstm_305/while/lstm_cell_74/BiasAdd/ReadVariableOp2f
1lstm_305/while/lstm_cell_74/MatMul/ReadVariableOp1lstm_305/while/lstm_cell_74/MatMul/ReadVariableOp2j
3lstm_305/while/lstm_cell_74/MatMul_1/ReadVariableOp3lstm_305/while/lstm_cell_74/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
µ
?
while_cond_449702
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_449702___redundant_placeholder04
0while_while_cond_449702___redundant_placeholder14
0while_while_cond_449702___redundant_placeholder24
0while_while_cond_449702___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
Ó

H__inference_lstm_cell_74_layer_call_and_return_conditional_losses_453071

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"
_user_specified_name
states/1

ĥ
)__inference_lstm_304_layer_call_fn_451559

inputs
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity˘StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_304_layer_call_and_return_conditional_losses_449091s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
ĉ"
?
while_body_448364
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_73_448388_0:	dÈ.
while_lstm_cell_73_448390_0:	2È*
while_lstm_cell_73_448392_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_73_448388:	dÈ,
while_lstm_cell_73_448390:	2È(
while_lstm_cell_73_448392:	È˘*while/lstm_cell_73/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_73/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_73_448388_0while_lstm_cell_73_448390_0while_lstm_cell_73_448392_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_73_layer_call_and_return_conditional_losses_448305Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_73/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_73/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_73/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_73/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_73_448388while_lstm_cell_73_448388_0"8
while_lstm_cell_73_448390while_lstm_cell_73_448390_0"8
while_lstm_cell_73_448392while_lstm_cell_73_448392_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_73/StatefulPartitionedCall*while/lstm_cell_73/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
Ü


/__inference_sequential_101_layer_call_fn_450029

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity˘StatefulPartitionedCallÔ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_101_layer_call_and_return_conditional_losses_449266o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
âJ

D__inference_lstm_304_layer_call_and_return_conditional_losses_451713
inputs_0>
+lstm_cell_73_matmul_readvariableop_resource:	dÈ@
-lstm_cell_73_matmul_1_readvariableop_resource:	2È;
,lstm_cell_73_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_73/BiasAdd/ReadVariableOp˘"lstm_cell_73/MatMul/ReadVariableOp˘$lstm_cell_73/MatMul_1/ReadVariableOp˘while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask
"lstm_cell_73/MatMul/ReadVariableOpReadVariableOp+lstm_cell_73_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_73/MatMulMatMulstrided_slice_2:output:0*lstm_cell_73/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_73/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_73_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_73/MatMul_1MatMulzeros:output:0,lstm_cell_73/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_73/addAddV2lstm_cell_73/MatMul:product:0lstm_cell_73/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_73/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_73_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_73/BiasAddBiasAddlstm_cell_73/add:z:0+lstm_cell_73/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_73/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_73/splitSplit%lstm_cell_73/split/split_dim:output:0lstm_cell_73/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_73/SigmoidSigmoidlstm_cell_73/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_73/Sigmoid_1Sigmoidlstm_cell_73/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_73/mulMullstm_cell_73/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_73/ReluRelulstm_cell_73/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_73/mul_1Mullstm_cell_73/Sigmoid:y:0lstm_cell_73/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_73/add_1AddV2lstm_cell_73/mul:z:0lstm_cell_73/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_73/Sigmoid_2Sigmoidlstm_cell_73/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_73/Relu_1Relulstm_cell_73/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_73/mul_2Mullstm_cell_73/Sigmoid_2:y:0!lstm_cell_73/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_73_matmul_readvariableop_resource-lstm_cell_73_matmul_1_readvariableop_resource,lstm_cell_73_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_451629*
condR
while_cond_451628*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2À
NoOpNoOp$^lstm_cell_73/BiasAdd/ReadVariableOp#^lstm_cell_73/MatMul/ReadVariableOp%^lstm_cell_73/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_73/BiasAdd/ReadVariableOp#lstm_cell_73/BiasAdd/ReadVariableOp2H
"lstm_cell_73/MatMul/ReadVariableOp"lstm_cell_73/MatMul/ReadVariableOp2L
$lstm_cell_73/MatMul_1/ReadVariableOp$lstm_cell_73/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
8
?
while_body_451442
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_72_matmul_readvariableop_resource_0:	H
5while_lstm_cell_72_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_72_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_72_matmul_readvariableop_resource:	F
3while_lstm_cell_72_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_72_biasadd_readvariableop_resource:	˘)while/lstm_cell_72/BiasAdd/ReadVariableOp˘(while/lstm_cell_72/MatMul/ReadVariableOp˘*while/lstm_cell_72/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_72/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_72_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_72/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_72/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_72/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_72_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_72/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_72/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_72/addAddV2#while/lstm_cell_72/MatMul:product:0%while/lstm_cell_72/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_72/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_72_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_72/BiasAddBiasAddwhile/lstm_cell_72/add:z:01while/lstm_cell_72/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_72/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_72/splitSplit+while/lstm_cell_72/split/split_dim:output:0#while/lstm_cell_72/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_72/SigmoidSigmoid!while/lstm_cell_72/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_72/Sigmoid_1Sigmoid!while/lstm_cell_72/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_72/mulMul while/lstm_cell_72/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_72/ReluRelu!while/lstm_cell_72/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_72/mul_1Mulwhile/lstm_cell_72/Sigmoid:y:0%while/lstm_cell_72/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_72/add_1AddV2while/lstm_cell_72/mul:z:0while/lstm_cell_72/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_72/Sigmoid_2Sigmoid!while/lstm_cell_72/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_72/Relu_1Reluwhile/lstm_cell_72/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_72/mul_2Mul while/lstm_cell_72/Sigmoid_2:y:0'while/lstm_cell_72/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_72/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_72/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_72/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_72/BiasAdd/ReadVariableOp)^while/lstm_cell_72/MatMul/ReadVariableOp+^while/lstm_cell_72/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_72_biasadd_readvariableop_resource4while_lstm_cell_72_biasadd_readvariableop_resource_0"l
3while_lstm_cell_72_matmul_1_readvariableop_resource5while_lstm_cell_72_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_72_matmul_readvariableop_resource3while_lstm_cell_72_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_72/BiasAdd/ReadVariableOp)while/lstm_cell_72/BiasAdd/ReadVariableOp2T
(while/lstm_cell_72/MatMul/ReadVariableOp(while/lstm_cell_72/MatMul/ReadVariableOp2X
*while/lstm_cell_72/MatMul_1/ReadVariableOp*while/lstm_cell_72/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
µ
?
while_cond_452387
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_452387___redundant_placeholder04
0while_while_cond_452387___redundant_placeholder14
0while_while_cond_452387___redundant_placeholder24
0while_while_cond_452387___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
Ŭ

H__inference_lstm_cell_72_layer_call_and_return_conditional_losses_452875

inputs
states_0
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
states/1
˙7
Ê
while_body_452674
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_74_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_74_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_74_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_74_matmul_readvariableop_resource:2(E
3while_lstm_cell_74_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_74_biasadd_readvariableop_resource:(˘)while/lstm_cell_74/BiasAdd/ReadVariableOp˘(while/lstm_cell_74/MatMul/ReadVariableOp˘*while/lstm_cell_74/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_74/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_74_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_74/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_74/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_74_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_74/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_74/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_74/addAddV2#while/lstm_cell_74/MatMul:product:0%while/lstm_cell_74/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_74/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_74_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_74/BiasAddBiasAddwhile/lstm_cell_74/add:z:01while/lstm_cell_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_74/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_74/splitSplit+while/lstm_cell_74/split/split_dim:output:0#while/lstm_cell_74/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_74/SigmoidSigmoid!while/lstm_cell_74/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_74/Sigmoid_1Sigmoid!while/lstm_cell_74/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_74/mulMul while/lstm_cell_74/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_74/ReluRelu!while/lstm_cell_74/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_74/mul_1Mulwhile/lstm_cell_74/Sigmoid:y:0%while/lstm_cell_74/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_74/add_1AddV2while/lstm_cell_74/mul:z:0while/lstm_cell_74/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_74/Sigmoid_2Sigmoid!while/lstm_cell_74/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_74/Relu_1Reluwhile/lstm_cell_74/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_74/mul_2Mul while/lstm_cell_74/Sigmoid_2:y:0'while/lstm_cell_74/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_74/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_74/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_74/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_74/BiasAdd/ReadVariableOp)^while/lstm_cell_74/MatMul/ReadVariableOp+^while/lstm_cell_74/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_74_biasadd_readvariableop_resource4while_lstm_cell_74_biasadd_readvariableop_resource_0"l
3while_lstm_cell_74_matmul_1_readvariableop_resource5while_lstm_cell_74_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_74_matmul_readvariableop_resource3while_lstm_cell_74_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_74/BiasAdd/ReadVariableOp)while/lstm_cell_74/BiasAdd/ReadVariableOp2T
(while/lstm_cell_74/MatMul/ReadVariableOp(while/lstm_cell_74/MatMul/ReadVariableOp2X
*while/lstm_cell_74/MatMul_1/ReadVariableOp*while/lstm_cell_74/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
À


$__inference_signature_wrapper_450002
lstm_303_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity˘StatefulPartitionedCall³
StatefulPartitionedCallStatefulPartitionedCalllstm_303_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_447742o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_303_input
ÛB
?

lstm_304_while_body_450254.
*lstm_304_while_lstm_304_while_loop_counter4
0lstm_304_while_lstm_304_while_maximum_iterations
lstm_304_while_placeholder 
lstm_304_while_placeholder_1 
lstm_304_while_placeholder_2 
lstm_304_while_placeholder_3-
)lstm_304_while_lstm_304_strided_slice_1_0i
elstm_304_while_tensorarrayv2read_tensorlistgetitem_lstm_304_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_304_while_lstm_cell_73_matmul_readvariableop_resource_0:	dÈQ
>lstm_304_while_lstm_cell_73_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_304_while_lstm_cell_73_biasadd_readvariableop_resource_0:	È
lstm_304_while_identity
lstm_304_while_identity_1
lstm_304_while_identity_2
lstm_304_while_identity_3
lstm_304_while_identity_4
lstm_304_while_identity_5+
'lstm_304_while_lstm_304_strided_slice_1g
clstm_304_while_tensorarrayv2read_tensorlistgetitem_lstm_304_tensorarrayunstack_tensorlistfromtensorM
:lstm_304_while_lstm_cell_73_matmul_readvariableop_resource:	dÈO
<lstm_304_while_lstm_cell_73_matmul_1_readvariableop_resource:	2ÈJ
;lstm_304_while_lstm_cell_73_biasadd_readvariableop_resource:	È˘2lstm_304/while/lstm_cell_73/BiasAdd/ReadVariableOp˘1lstm_304/while/lstm_cell_73/MatMul/ReadVariableOp˘3lstm_304/while/lstm_cell_73/MatMul_1/ReadVariableOp
@lstm_304/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_304/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_304_while_tensorarrayv2read_tensorlistgetitem_lstm_304_tensorarrayunstack_tensorlistfromtensor_0lstm_304_while_placeholderIlstm_304/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_304/while/lstm_cell_73/MatMul/ReadVariableOpReadVariableOp<lstm_304_while_lstm_cell_73_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_304/while/lstm_cell_73/MatMulMatMul9lstm_304/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_304/while/lstm_cell_73/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_304/while/lstm_cell_73/MatMul_1/ReadVariableOpReadVariableOp>lstm_304_while_lstm_cell_73_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_304/while/lstm_cell_73/MatMul_1MatMullstm_304_while_placeholder_2;lstm_304/while/lstm_cell_73/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_304/while/lstm_cell_73/addAddV2,lstm_304/while/lstm_cell_73/MatMul:product:0.lstm_304/while/lstm_cell_73/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_304/while/lstm_cell_73/BiasAdd/ReadVariableOpReadVariableOp=lstm_304_while_lstm_cell_73_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_304/while/lstm_cell_73/BiasAddBiasAdd#lstm_304/while/lstm_cell_73/add:z:0:lstm_304/while/lstm_cell_73/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_304/while/lstm_cell_73/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_304/while/lstm_cell_73/splitSplit4lstm_304/while/lstm_cell_73/split/split_dim:output:0,lstm_304/while/lstm_cell_73/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_304/while/lstm_cell_73/SigmoidSigmoid*lstm_304/while/lstm_cell_73/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_304/while/lstm_cell_73/Sigmoid_1Sigmoid*lstm_304/while/lstm_cell_73/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_304/while/lstm_cell_73/mulMul)lstm_304/while/lstm_cell_73/Sigmoid_1:y:0lstm_304_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_304/while/lstm_cell_73/ReluRelu*lstm_304/while/lstm_cell_73/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_304/while/lstm_cell_73/mul_1Mul'lstm_304/while/lstm_cell_73/Sigmoid:y:0.lstm_304/while/lstm_cell_73/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_304/while/lstm_cell_73/add_1AddV2#lstm_304/while/lstm_cell_73/mul:z:0%lstm_304/while/lstm_cell_73/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_304/while/lstm_cell_73/Sigmoid_2Sigmoid*lstm_304/while/lstm_cell_73/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_304/while/lstm_cell_73/Relu_1Relu%lstm_304/while/lstm_cell_73/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_304/while/lstm_cell_73/mul_2Mul)lstm_304/while/lstm_cell_73/Sigmoid_2:y:00lstm_304/while/lstm_cell_73/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_304/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_304_while_placeholder_1lstm_304_while_placeholder%lstm_304/while/lstm_cell_73/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_304/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_304/while/addAddV2lstm_304_while_placeholderlstm_304/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_304/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_304/while/add_1AddV2*lstm_304_while_lstm_304_while_loop_counterlstm_304/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_304/while/IdentityIdentitylstm_304/while/add_1:z:0^lstm_304/while/NoOp*
T0*
_output_shapes
: 
lstm_304/while/Identity_1Identity0lstm_304_while_lstm_304_while_maximum_iterations^lstm_304/while/NoOp*
T0*
_output_shapes
: t
lstm_304/while/Identity_2Identitylstm_304/while/add:z:0^lstm_304/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_304/while/Identity_3IdentityClstm_304/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_304/while/NoOp*
T0*
_output_shapes
: 
lstm_304/while/Identity_4Identity%lstm_304/while/lstm_cell_73/mul_2:z:0^lstm_304/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_304/while/Identity_5Identity%lstm_304/while/lstm_cell_73/add_1:z:0^lstm_304/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_304/while/NoOpNoOp3^lstm_304/while/lstm_cell_73/BiasAdd/ReadVariableOp2^lstm_304/while/lstm_cell_73/MatMul/ReadVariableOp4^lstm_304/while/lstm_cell_73/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_304_while_identity lstm_304/while/Identity:output:0"?
lstm_304_while_identity_1"lstm_304/while/Identity_1:output:0"?
lstm_304_while_identity_2"lstm_304/while/Identity_2:output:0"?
lstm_304_while_identity_3"lstm_304/while/Identity_3:output:0"?
lstm_304_while_identity_4"lstm_304/while/Identity_4:output:0"?
lstm_304_while_identity_5"lstm_304/while/Identity_5:output:0"T
'lstm_304_while_lstm_304_strided_slice_1)lstm_304_while_lstm_304_strided_slice_1_0"|
;lstm_304_while_lstm_cell_73_biasadd_readvariableop_resource=lstm_304_while_lstm_cell_73_biasadd_readvariableop_resource_0"~
<lstm_304_while_lstm_cell_73_matmul_1_readvariableop_resource>lstm_304_while_lstm_cell_73_matmul_1_readvariableop_resource_0"z
:lstm_304_while_lstm_cell_73_matmul_readvariableop_resource<lstm_304_while_lstm_cell_73_matmul_readvariableop_resource_0"Ì
clstm_304_while_tensorarrayv2read_tensorlistgetitem_lstm_304_tensorarrayunstack_tensorlistfromtensorelstm_304_while_tensorarrayv2read_tensorlistgetitem_lstm_304_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_304/while/lstm_cell_73/BiasAdd/ReadVariableOp2lstm_304/while/lstm_cell_73/BiasAdd/ReadVariableOp2f
1lstm_304/while/lstm_cell_73/MatMul/ReadVariableOp1lstm_304/while/lstm_cell_73/MatMul/ReadVariableOp2j
3lstm_304/while/lstm_cell_73/MatMul_1/ReadVariableOp3lstm_304/while/lstm_cell_73/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
Ï
÷
J__inference_sequential_101_layer_call_and_return_conditional_losses_449937
lstm_303_input"
lstm_303_449910:	"
lstm_303_449912:	d
lstm_303_449914:	"
lstm_304_449917:	dÈ"
lstm_304_449919:	2È
lstm_304_449921:	È!
lstm_305_449924:2(!
lstm_305_449926:
(
lstm_305_449928:("
dense_101_449931:

dense_101_449933:
identity˘!dense_101/StatefulPartitionedCall˘ lstm_303/StatefulPartitionedCall˘ lstm_304/StatefulPartitionedCall˘ lstm_305/StatefulPartitionedCall
 lstm_303/StatefulPartitionedCallStatefulPartitionedCalllstm_303_inputlstm_303_449910lstm_303_449912lstm_303_449914*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_303_layer_call_and_return_conditional_losses_448941Ş
 lstm_304/StatefulPartitionedCallStatefulPartitionedCall)lstm_303/StatefulPartitionedCall:output:0lstm_304_449917lstm_304_449919lstm_304_449921*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_304_layer_call_and_return_conditional_losses_449091Ĥ
 lstm_305/StatefulPartitionedCallStatefulPartitionedCall)lstm_304/StatefulPartitionedCall:output:0lstm_305_449924lstm_305_449926lstm_305_449928*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_305_layer_call_and_return_conditional_losses_449241
!dense_101/StatefulPartitionedCallStatefulPartitionedCall)lstm_305/StatefulPartitionedCall:output:0dense_101_449931dense_101_449933*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_101_layer_call_and_return_conditional_losses_449259y
IdentityIdentity*dense_101/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ó
NoOpNoOp"^dense_101/StatefulPartitionedCall!^lstm_303/StatefulPartitionedCall!^lstm_304/StatefulPartitionedCall!^lstm_305/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2F
!dense_101/StatefulPartitionedCall!dense_101/StatefulPartitionedCall2D
 lstm_303/StatefulPartitionedCall lstm_303/StatefulPartitionedCall2D
 lstm_304/StatefulPartitionedCall lstm_304/StatefulPartitionedCall2D
 lstm_305/StatefulPartitionedCall lstm_305/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_303_input
8
?
while_body_452058
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_73_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_73_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_73_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_73_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_73_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_73_biasadd_readvariableop_resource:	È˘)while/lstm_cell_73/BiasAdd/ReadVariableOp˘(while/lstm_cell_73/MatMul/ReadVariableOp˘*while/lstm_cell_73/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_73/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_73_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_73/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_73/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_73/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_73_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_73/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_73/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_73/addAddV2#while/lstm_cell_73/MatMul:product:0%while/lstm_cell_73/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_73/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_73_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_73/BiasAddBiasAddwhile/lstm_cell_73/add:z:01while/lstm_cell_73/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_73/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_73/splitSplit+while/lstm_cell_73/split/split_dim:output:0#while/lstm_cell_73/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_73/SigmoidSigmoid!while/lstm_cell_73/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_73/Sigmoid_1Sigmoid!while/lstm_cell_73/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_73/mulMul while/lstm_cell_73/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_73/ReluRelu!while/lstm_cell_73/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_73/mul_1Mulwhile/lstm_cell_73/Sigmoid:y:0%while/lstm_cell_73/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_73/add_1AddV2while/lstm_cell_73/mul:z:0while/lstm_cell_73/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_73/Sigmoid_2Sigmoid!while/lstm_cell_73/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_73/Relu_1Reluwhile/lstm_cell_73/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_73/mul_2Mul while/lstm_cell_73/Sigmoid_2:y:0'while/lstm_cell_73/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_73/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_73/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_73/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_73/BiasAdd/ReadVariableOp)^while/lstm_cell_73/MatMul/ReadVariableOp+^while/lstm_cell_73/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_73_biasadd_readvariableop_resource4while_lstm_cell_73_biasadd_readvariableop_resource_0"l
3while_lstm_cell_73_matmul_1_readvariableop_resource5while_lstm_cell_73_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_73_matmul_readvariableop_resource3while_lstm_cell_73_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_73/BiasAdd/ReadVariableOp)while/lstm_cell_73/BiasAdd/ReadVariableOp2T
(while/lstm_cell_73/MatMul/ReadVariableOp(while/lstm_cell_73/MatMul/ReadVariableOp2X
*while/lstm_cell_73/MatMul_1/ReadVariableOp*while/lstm_cell_73/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
8

D__inference_lstm_303_layer_call_and_return_conditional_losses_448083

inputs&
lstm_cell_72_448001:	&
lstm_cell_72_448003:	d"
lstm_cell_72_448005:	
identity˘$lstm_cell_72/StatefulPartitionedCall˘while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskġ
$lstm_cell_72/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_72_448001lstm_cell_72_448003lstm_cell_72_448005*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_72_layer_call_and_return_conditional_losses_447955n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_72_448001lstm_cell_72_448003lstm_cell_72_448005*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_448014*
condR
while_cond_448013*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙du
NoOpNoOp%^lstm_cell_72/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_72/StatefulPartitionedCall$lstm_cell_72/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ë
ö
-__inference_lstm_cell_73_layer_call_fn_452909

inputs
states_0
states_1
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity

identity_1

identity_2˘StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_73_layer_call_and_return_conditional_losses_448305o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
states/1
ë
ö
-__inference_lstm_cell_72_layer_call_fn_452811

inputs
states_0
states_1
unknown:	
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2˘StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_72_layer_call_and_return_conditional_losses_447955o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
states/1
µ
?
while_cond_451441
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_451441___redundant_placeholder04
0while_while_cond_451441___redundant_placeholder14
0while_while_cond_451441___redundant_placeholder24
0while_while_cond_451441___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
µ
?
while_cond_451771
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_451771___redundant_placeholder04
0while_while_cond_451771___redundant_placeholder14
0while_while_cond_451771___redundant_placeholder24
0while_while_cond_451771___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
ĉ"
?
while_body_448014
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_72_448038_0:	.
while_lstm_cell_72_448040_0:	d*
while_lstm_cell_72_448042_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_72_448038:	,
while_lstm_cell_72_448040:	d(
while_lstm_cell_72_448042:	˘*while/lstm_cell_72/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_72/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_72_448038_0while_lstm_cell_72_448040_0while_lstm_cell_72_448042_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_72_layer_call_and_return_conditional_losses_447955Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_72/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_72/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_72/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_72/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_72_448038while_lstm_cell_72_448038_0"8
while_lstm_cell_72_448040while_lstm_cell_72_448040_0"8
while_lstm_cell_72_448042while_lstm_cell_72_448042_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_72/StatefulPartitionedCall*while/lstm_cell_72/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
à"
Ŭ
while_body_448714
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_74_448738_0:2(-
while_lstm_cell_74_448740_0:
()
while_lstm_cell_74_448742_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_74_448738:2(+
while_lstm_cell_74_448740:
('
while_lstm_cell_74_448742:(˘*while/lstm_cell_74/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_74/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_74_448738_0while_lstm_cell_74_448740_0while_lstm_cell_74_448742_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_74_layer_call_and_return_conditional_losses_448655Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_74/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_74/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_74/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_74/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_74_448738while_lstm_cell_74_448738_0"8
while_lstm_cell_74_448740while_lstm_cell_74_448740_0"8
while_lstm_cell_74_448742while_lstm_cell_74_448742_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_74/StatefulPartitionedCall*while/lstm_cell_74/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
ö
³
)__inference_lstm_305_layer_call_fn_452175

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity˘StatefulPartitionedCallĉ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_305_layer_call_and_return_conditional_losses_449241o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
¤J

D__inference_lstm_304_layer_call_and_return_conditional_losses_449622

inputs>
+lstm_cell_73_matmul_readvariableop_resource:	dÈ@
-lstm_cell_73_matmul_1_readvariableop_resource:	2È;
,lstm_cell_73_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_73/BiasAdd/ReadVariableOp˘"lstm_cell_73/MatMul/ReadVariableOp˘$lstm_cell_73/MatMul_1/ReadVariableOp˘while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask
"lstm_cell_73/MatMul/ReadVariableOpReadVariableOp+lstm_cell_73_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_73/MatMulMatMulstrided_slice_2:output:0*lstm_cell_73/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_73/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_73_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_73/MatMul_1MatMulzeros:output:0,lstm_cell_73/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_73/addAddV2lstm_cell_73/MatMul:product:0lstm_cell_73/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_73/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_73_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_73/BiasAddBiasAddlstm_cell_73/add:z:0+lstm_cell_73/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_73/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_73/splitSplit%lstm_cell_73/split/split_dim:output:0lstm_cell_73/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_73/SigmoidSigmoidlstm_cell_73/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_73/Sigmoid_1Sigmoidlstm_cell_73/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_73/mulMullstm_cell_73/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_73/ReluRelulstm_cell_73/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_73/mul_1Mullstm_cell_73/Sigmoid:y:0lstm_cell_73/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_73/add_1AddV2lstm_cell_73/mul:z:0lstm_cell_73/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_73/Sigmoid_2Sigmoidlstm_cell_73/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_73/Relu_1Relulstm_cell_73/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_73/mul_2Mullstm_cell_73/Sigmoid_2:y:0!lstm_cell_73/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_73_matmul_readvariableop_resource-lstm_cell_73_matmul_1_readvariableop_resource,lstm_cell_73_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_449538*
condR
while_cond_449537*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2À
NoOpNoOp$^lstm_cell_73/BiasAdd/ReadVariableOp#^lstm_cell_73/MatMul/ReadVariableOp%^lstm_cell_73/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_73/BiasAdd/ReadVariableOp#lstm_cell_73/BiasAdd/ReadVariableOp2H
"lstm_cell_73/MatMul/ReadVariableOp"lstm_cell_73/MatMul/ReadVariableOp2L
$lstm_cell_73/MatMul_1/ReadVariableOp$lstm_cell_73/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
¤J

D__inference_lstm_303_layer_call_and_return_conditional_losses_451383

inputs>
+lstm_cell_72_matmul_readvariableop_resource:	@
-lstm_cell_72_matmul_1_readvariableop_resource:	d;
,lstm_cell_72_biasadd_readvariableop_resource:	
identity˘#lstm_cell_72/BiasAdd/ReadVariableOp˘"lstm_cell_72/MatMul/ReadVariableOp˘$lstm_cell_72/MatMul_1/ReadVariableOp˘while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
"lstm_cell_72/MatMul/ReadVariableOpReadVariableOp+lstm_cell_72_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_72/MatMulMatMulstrided_slice_2:output:0*lstm_cell_72/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_72/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_72_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_72/MatMul_1MatMulzeros:output:0,lstm_cell_72/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_72/addAddV2lstm_cell_72/MatMul:product:0lstm_cell_72/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_72/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_72_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_72/BiasAddBiasAddlstm_cell_72/add:z:0+lstm_cell_72/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_72/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_72/splitSplit%lstm_cell_72/split/split_dim:output:0lstm_cell_72/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_72/SigmoidSigmoidlstm_cell_72/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_72/Sigmoid_1Sigmoidlstm_cell_72/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_72/mulMullstm_cell_72/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_72/ReluRelulstm_cell_72/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_72/mul_1Mullstm_cell_72/Sigmoid:y:0lstm_cell_72/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_72/add_1AddV2lstm_cell_72/mul:z:0lstm_cell_72/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_72/Sigmoid_2Sigmoidlstm_cell_72/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_72/Relu_1Relulstm_cell_72/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_72/mul_2Mullstm_cell_72/Sigmoid_2:y:0!lstm_cell_72/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_72_matmul_readvariableop_resource-lstm_cell_72_matmul_1_readvariableop_resource,lstm_cell_72_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_451299*
condR
while_cond_451298*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dÀ
NoOpNoOp$^lstm_cell_72/BiasAdd/ReadVariableOp#^lstm_cell_72/MatMul/ReadVariableOp%^lstm_cell_72/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_72/BiasAdd/ReadVariableOp#lstm_cell_72/BiasAdd/ReadVariableOp2H
"lstm_cell_72/MatMul/ReadVariableOp"lstm_cell_72/MatMul/ReadVariableOp2L
$lstm_cell_72/MatMul_1/ReadVariableOp$lstm_cell_72/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8

D__inference_lstm_305_layer_call_and_return_conditional_losses_448783

inputs%
lstm_cell_74_448701:2(%
lstm_cell_74_448703:
(!
lstm_cell_74_448705:(
identity˘$lstm_cell_74/StatefulPartitionedCall˘while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskġ
$lstm_cell_74/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_74_448701lstm_cell_74_448703lstm_cell_74_448705*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_74_layer_call_and_return_conditional_losses_448655n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_74_448701lstm_cell_74_448703lstm_cell_74_448705*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_448714*
condR
while_cond_448713*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
NoOpNoOp%^lstm_cell_74/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_74/StatefulPartitionedCall$lstm_cell_74/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
J

D__inference_lstm_305_layer_call_and_return_conditional_losses_452615

inputs=
+lstm_cell_74_matmul_readvariableop_resource:2(?
-lstm_cell_74_matmul_1_readvariableop_resource:
(:
,lstm_cell_74_biasadd_readvariableop_resource:(
identity˘#lstm_cell_74/BiasAdd/ReadVariableOp˘"lstm_cell_74/MatMul/ReadVariableOp˘$lstm_cell_74/MatMul_1/ReadVariableOp˘while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask
"lstm_cell_74/MatMul/ReadVariableOpReadVariableOp+lstm_cell_74_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_74/MatMulMatMulstrided_slice_2:output:0*lstm_cell_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_74/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_74_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_74/MatMul_1MatMulzeros:output:0,lstm_cell_74/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_74/addAddV2lstm_cell_74/MatMul:product:0lstm_cell_74/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_74/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_74_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_74/BiasAddBiasAddlstm_cell_74/add:z:0+lstm_cell_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_74/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_74/splitSplit%lstm_cell_74/split/split_dim:output:0lstm_cell_74/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_74/SigmoidSigmoidlstm_cell_74/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_74/Sigmoid_1Sigmoidlstm_cell_74/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_74/mulMullstm_cell_74/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_74/ReluRelulstm_cell_74/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_74/mul_1Mullstm_cell_74/Sigmoid:y:0lstm_cell_74/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_74/add_1AddV2lstm_cell_74/mul:z:0lstm_cell_74/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_74/Sigmoid_2Sigmoidlstm_cell_74/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_74/Relu_1Relulstm_cell_74/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_74/mul_2Mullstm_cell_74/Sigmoid_2:y:0!lstm_cell_74/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_74_matmul_readvariableop_resource-lstm_cell_74_matmul_1_readvariableop_resource,lstm_cell_74_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_452531*
condR
while_cond_452530*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
À
NoOpNoOp$^lstm_cell_74/BiasAdd/ReadVariableOp#^lstm_cell_74/MatMul/ReadVariableOp%^lstm_cell_74/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_74/BiasAdd/ReadVariableOp#lstm_cell_74/BiasAdd/ReadVariableOp2H
"lstm_cell_74/MatMul/ReadVariableOp"lstm_cell_74/MatMul/ReadVariableOp2L
$lstm_cell_74/MatMul_1/ReadVariableOp$lstm_cell_74/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
¤J

D__inference_lstm_303_layer_call_and_return_conditional_losses_451526

inputs>
+lstm_cell_72_matmul_readvariableop_resource:	@
-lstm_cell_72_matmul_1_readvariableop_resource:	d;
,lstm_cell_72_biasadd_readvariableop_resource:	
identity˘#lstm_cell_72/BiasAdd/ReadVariableOp˘"lstm_cell_72/MatMul/ReadVariableOp˘$lstm_cell_72/MatMul_1/ReadVariableOp˘while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
"lstm_cell_72/MatMul/ReadVariableOpReadVariableOp+lstm_cell_72_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_72/MatMulMatMulstrided_slice_2:output:0*lstm_cell_72/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_72/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_72_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_72/MatMul_1MatMulzeros:output:0,lstm_cell_72/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_72/addAddV2lstm_cell_72/MatMul:product:0lstm_cell_72/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_72/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_72_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_72/BiasAddBiasAddlstm_cell_72/add:z:0+lstm_cell_72/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_72/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_72/splitSplit%lstm_cell_72/split/split_dim:output:0lstm_cell_72/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_72/SigmoidSigmoidlstm_cell_72/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_72/Sigmoid_1Sigmoidlstm_cell_72/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_72/mulMullstm_cell_72/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_72/ReluRelulstm_cell_72/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_72/mul_1Mullstm_cell_72/Sigmoid:y:0lstm_cell_72/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_72/add_1AddV2lstm_cell_72/mul:z:0lstm_cell_72/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_72/Sigmoid_2Sigmoidlstm_cell_72/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_72/Relu_1Relulstm_cell_72/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_72/mul_2Mullstm_cell_72/Sigmoid_2:y:0!lstm_cell_72/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_72_matmul_readvariableop_resource-lstm_cell_72_matmul_1_readvariableop_resource,lstm_cell_72_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_451442*
condR
while_cond_451441*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dÀ
NoOpNoOp$^lstm_cell_72/BiasAdd/ReadVariableOp#^lstm_cell_72/MatMul/ReadVariableOp%^lstm_cell_72/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_72/BiasAdd/ReadVariableOp#lstm_cell_72/BiasAdd/ReadVariableOp2H
"lstm_cell_72/MatMul/ReadVariableOp"lstm_cell_72/MatMul/ReadVariableOp2L
$lstm_cell_72/MatMul_1/ReadVariableOp$lstm_cell_72/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ĥ
)__inference_lstm_303_layer_call_fn_450943

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
identity˘StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_303_layer_call_and_return_conditional_losses_448941s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_449372
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_449372___redundant_placeholder04
0while_while_cond_449372___redundant_placeholder14
0while_while_cond_449372___redundant_placeholder24
0while_while_cond_449372___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
8
?
while_body_449538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_73_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_73_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_73_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_73_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_73_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_73_biasadd_readvariableop_resource:	È˘)while/lstm_cell_73/BiasAdd/ReadVariableOp˘(while/lstm_cell_73/MatMul/ReadVariableOp˘*while/lstm_cell_73/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_73/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_73_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_73/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_73/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_73/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_73_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_73/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_73/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_73/addAddV2#while/lstm_cell_73/MatMul:product:0%while/lstm_cell_73/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_73/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_73_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_73/BiasAddBiasAddwhile/lstm_cell_73/add:z:01while/lstm_cell_73/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_73/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_73/splitSplit+while/lstm_cell_73/split/split_dim:output:0#while/lstm_cell_73/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_73/SigmoidSigmoid!while/lstm_cell_73/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_73/Sigmoid_1Sigmoid!while/lstm_cell_73/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_73/mulMul while/lstm_cell_73/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_73/ReluRelu!while/lstm_cell_73/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_73/mul_1Mulwhile/lstm_cell_73/Sigmoid:y:0%while/lstm_cell_73/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_73/add_1AddV2while/lstm_cell_73/mul:z:0while/lstm_cell_73/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_73/Sigmoid_2Sigmoid!while/lstm_cell_73/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_73/Relu_1Reluwhile/lstm_cell_73/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_73/mul_2Mul while/lstm_cell_73/Sigmoid_2:y:0'while/lstm_cell_73/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_73/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_73/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_73/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_73/BiasAdd/ReadVariableOp)^while/lstm_cell_73/MatMul/ReadVariableOp+^while/lstm_cell_73/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_73_biasadd_readvariableop_resource4while_lstm_cell_73_biasadd_readvariableop_resource_0"l
3while_lstm_cell_73_matmul_1_readvariableop_resource5while_lstm_cell_73_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_73_matmul_readvariableop_resource3while_lstm_cell_73_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_73/BiasAdd/ReadVariableOp)while/lstm_cell_73/BiasAdd/ReadVariableOp2T
(while/lstm_cell_73/MatMul/ReadVariableOp(while/lstm_cell_73/MatMul/ReadVariableOp2X
*while/lstm_cell_73/MatMul_1/ReadVariableOp*while/lstm_cell_73/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
µ
?
while_cond_451012
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_451012___redundant_placeholder04
0while_while_cond_451012___redundant_placeholder14
0while_while_cond_451012___redundant_placeholder24
0while_while_cond_451012___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
µ
?
while_cond_449006
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_449006___redundant_placeholder04
0while_while_cond_449006___redundant_placeholder14
0while_while_cond_449006___redundant_placeholder24
0while_while_cond_449006___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
µ
?
while_cond_452057
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_452057___redundant_placeholder04
0while_while_cond_452057___redundant_placeholder14
0while_while_cond_452057___redundant_placeholder24
0while_while_cond_452057___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
·
ï
J__inference_sequential_101_layer_call_and_return_conditional_losses_449855

inputs"
lstm_303_449828:	"
lstm_303_449830:	d
lstm_303_449832:	"
lstm_304_449835:	dÈ"
lstm_304_449837:	2È
lstm_304_449839:	È!
lstm_305_449842:2(!
lstm_305_449844:
(
lstm_305_449846:("
dense_101_449849:

dense_101_449851:
identity˘!dense_101/StatefulPartitionedCall˘ lstm_303/StatefulPartitionedCall˘ lstm_304/StatefulPartitionedCall˘ lstm_305/StatefulPartitionedCall
 lstm_303/StatefulPartitionedCallStatefulPartitionedCallinputslstm_303_449828lstm_303_449830lstm_303_449832*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_303_layer_call_and_return_conditional_losses_449787Ş
 lstm_304/StatefulPartitionedCallStatefulPartitionedCall)lstm_303/StatefulPartitionedCall:output:0lstm_304_449835lstm_304_449837lstm_304_449839*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_304_layer_call_and_return_conditional_losses_449622Ĥ
 lstm_305/StatefulPartitionedCallStatefulPartitionedCall)lstm_304/StatefulPartitionedCall:output:0lstm_305_449842lstm_305_449844lstm_305_449846*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_305_layer_call_and_return_conditional_losses_449457
!dense_101/StatefulPartitionedCallStatefulPartitionedCall)lstm_305/StatefulPartitionedCall:output:0dense_101_449849dense_101_449851*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_101_layer_call_and_return_conditional_losses_449259y
IdentityIdentity*dense_101/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ó
NoOpNoOp"^dense_101/StatefulPartitionedCall!^lstm_303/StatefulPartitionedCall!^lstm_304/StatefulPartitionedCall!^lstm_305/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2F
!dense_101/StatefulPartitionedCall!dense_101/StatefulPartitionedCall2D
 lstm_303/StatefulPartitionedCall lstm_303/StatefulPartitionedCall2D
 lstm_304/StatefulPartitionedCall lstm_304/StatefulPartitionedCall2D
 lstm_305/StatefulPartitionedCall lstm_305/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8
?
while_body_448857
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_72_matmul_readvariableop_resource_0:	H
5while_lstm_cell_72_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_72_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_72_matmul_readvariableop_resource:	F
3while_lstm_cell_72_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_72_biasadd_readvariableop_resource:	˘)while/lstm_cell_72/BiasAdd/ReadVariableOp˘(while/lstm_cell_72/MatMul/ReadVariableOp˘*while/lstm_cell_72/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_72/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_72_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_72/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_72/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_72/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_72_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_72/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_72/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_72/addAddV2#while/lstm_cell_72/MatMul:product:0%while/lstm_cell_72/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_72/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_72_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_72/BiasAddBiasAddwhile/lstm_cell_72/add:z:01while/lstm_cell_72/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_72/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_72/splitSplit+while/lstm_cell_72/split/split_dim:output:0#while/lstm_cell_72/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_72/SigmoidSigmoid!while/lstm_cell_72/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_72/Sigmoid_1Sigmoid!while/lstm_cell_72/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_72/mulMul while/lstm_cell_72/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_72/ReluRelu!while/lstm_cell_72/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_72/mul_1Mulwhile/lstm_cell_72/Sigmoid:y:0%while/lstm_cell_72/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_72/add_1AddV2while/lstm_cell_72/mul:z:0while/lstm_cell_72/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_72/Sigmoid_2Sigmoid!while/lstm_cell_72/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_72/Relu_1Reluwhile/lstm_cell_72/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_72/mul_2Mul while/lstm_cell_72/Sigmoid_2:y:0'while/lstm_cell_72/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_72/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_72/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_72/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_72/BiasAdd/ReadVariableOp)^while/lstm_cell_72/MatMul/ReadVariableOp+^while/lstm_cell_72/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_72_biasadd_readvariableop_resource4while_lstm_cell_72_biasadd_readvariableop_resource_0"l
3while_lstm_cell_72_matmul_1_readvariableop_resource5while_lstm_cell_72_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_72_matmul_readvariableop_resource3while_lstm_cell_72_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_72/BiasAdd/ReadVariableOp)while/lstm_cell_72/BiasAdd/ReadVariableOp2T
(while/lstm_cell_72/MatMul/ReadVariableOp(while/lstm_cell_72/MatMul/ReadVariableOp2X
*while/lstm_cell_72/MatMul_1/ReadVariableOp*while/lstm_cell_72/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
Ŭ

H__inference_lstm_cell_73_layer_call_and_return_conditional_losses_452941

inputs
states_0
states_11
matmul_readvariableop_resource:	dÈ3
 matmul_1_readvariableop_resource:	2È.
biasadd_readvariableop_resource:	È
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ès
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
states/1
8

D__inference_lstm_304_layer_call_and_return_conditional_losses_448242

inputs&
lstm_cell_73_448160:	dÈ&
lstm_cell_73_448162:	2È"
lstm_cell_73_448164:	È
identity˘$lstm_cell_73/StatefulPartitionedCall˘while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskġ
$lstm_cell_73/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_73_448160lstm_cell_73_448162lstm_cell_73_448164*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_73_layer_call_and_return_conditional_losses_448159n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_73_448160lstm_cell_73_448162lstm_cell_73_448164*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_448173*
condR
while_cond_448172*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2u
NoOpNoOp%^lstm_cell_73/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_73/StatefulPartitionedCall$lstm_cell_73/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs

ĥ
)__inference_lstm_304_layer_call_fn_451570

inputs
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity˘StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_304_layer_call_and_return_conditional_losses_449622s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
J

D__inference_lstm_305_layer_call_and_return_conditional_losses_449241

inputs=
+lstm_cell_74_matmul_readvariableop_resource:2(?
-lstm_cell_74_matmul_1_readvariableop_resource:
(:
,lstm_cell_74_biasadd_readvariableop_resource:(
identity˘#lstm_cell_74/BiasAdd/ReadVariableOp˘"lstm_cell_74/MatMul/ReadVariableOp˘$lstm_cell_74/MatMul_1/ReadVariableOp˘while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask
"lstm_cell_74/MatMul/ReadVariableOpReadVariableOp+lstm_cell_74_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_74/MatMulMatMulstrided_slice_2:output:0*lstm_cell_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_74/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_74_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_74/MatMul_1MatMulzeros:output:0,lstm_cell_74/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_74/addAddV2lstm_cell_74/MatMul:product:0lstm_cell_74/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_74/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_74_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_74/BiasAddBiasAddlstm_cell_74/add:z:0+lstm_cell_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_74/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_74/splitSplit%lstm_cell_74/split/split_dim:output:0lstm_cell_74/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_74/SigmoidSigmoidlstm_cell_74/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_74/Sigmoid_1Sigmoidlstm_cell_74/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_74/mulMullstm_cell_74/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_74/ReluRelulstm_cell_74/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_74/mul_1Mullstm_cell_74/Sigmoid:y:0lstm_cell_74/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_74/add_1AddV2lstm_cell_74/mul:z:0lstm_cell_74/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_74/Sigmoid_2Sigmoidlstm_cell_74/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_74/Relu_1Relulstm_cell_74/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_74/mul_2Mullstm_cell_74/Sigmoid_2:y:0!lstm_cell_74/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_74_matmul_readvariableop_resource-lstm_cell_74_matmul_1_readvariableop_resource,lstm_cell_74_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_449157*
condR
while_cond_449156*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
À
NoOpNoOp$^lstm_cell_74/BiasAdd/ReadVariableOp#^lstm_cell_74/MatMul/ReadVariableOp%^lstm_cell_74/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_74/BiasAdd/ReadVariableOp#lstm_cell_74/BiasAdd/ReadVariableOp2H
"lstm_cell_74/MatMul/ReadVariableOp"lstm_cell_74/MatMul/ReadVariableOp2L
$lstm_cell_74/MatMul_1/ReadVariableOp$lstm_cell_74/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
Ö
£
)sequential_101_lstm_304_while_cond_447512L
Hsequential_101_lstm_304_while_sequential_101_lstm_304_while_loop_counterR
Nsequential_101_lstm_304_while_sequential_101_lstm_304_while_maximum_iterations-
)sequential_101_lstm_304_while_placeholder/
+sequential_101_lstm_304_while_placeholder_1/
+sequential_101_lstm_304_while_placeholder_2/
+sequential_101_lstm_304_while_placeholder_3N
Jsequential_101_lstm_304_while_less_sequential_101_lstm_304_strided_slice_1d
`sequential_101_lstm_304_while_sequential_101_lstm_304_while_cond_447512___redundant_placeholder0d
`sequential_101_lstm_304_while_sequential_101_lstm_304_while_cond_447512___redundant_placeholder1d
`sequential_101_lstm_304_while_sequential_101_lstm_304_while_cond_447512___redundant_placeholder2d
`sequential_101_lstm_304_while_sequential_101_lstm_304_while_cond_447512___redundant_placeholder3*
&sequential_101_lstm_304_while_identity
Â
"sequential_101/lstm_304/while/LessLess)sequential_101_lstm_304_while_placeholderJsequential_101_lstm_304_while_less_sequential_101_lstm_304_strided_slice_1*
T0*
_output_shapes
: {
&sequential_101/lstm_304/while/IdentityIdentity&sequential_101/lstm_304/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_101_lstm_304_while_identity/sequential_101/lstm_304/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
8

D__inference_lstm_303_layer_call_and_return_conditional_losses_447892

inputs&
lstm_cell_72_447810:	&
lstm_cell_72_447812:	d"
lstm_cell_72_447814:	
identity˘$lstm_cell_72/StatefulPartitionedCall˘while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskġ
$lstm_cell_72/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_72_447810lstm_cell_72_447812lstm_cell_72_447814*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_72_layer_call_and_return_conditional_losses_447809n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_72_447810lstm_cell_72_447812lstm_cell_72_447814*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_447823*
condR
while_cond_447822*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙du
NoOpNoOp%^lstm_cell_72/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_72/StatefulPartitionedCall$lstm_cell_72/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_451155
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_451155___redundant_placeholder04
0while_while_cond_451155___redundant_placeholder14
0while_while_cond_451155___redundant_placeholder24
0while_while_cond_451155___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
µ
?
while_cond_448013
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_448013___redundant_placeholder04
0while_while_cond_448013___redundant_placeholder14
0while_while_cond_448013___redundant_placeholder24
0while_while_cond_448013___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
µ
?
while_cond_448713
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_448713___redundant_placeholder04
0while_while_cond_448713___redundant_placeholder14
0while_while_cond_448713___redundant_placeholder24
0while_while_cond_448713___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
µ
?
while_cond_448172
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_448172___redundant_placeholder04
0while_while_cond_448172___redundant_placeholder14
0while_while_cond_448172___redundant_placeholder24
0while_while_cond_448172___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
ĉ"
?
while_body_448173
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_73_448197_0:	dÈ.
while_lstm_cell_73_448199_0:	2È*
while_lstm_cell_73_448201_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_73_448197:	dÈ,
while_lstm_cell_73_448199:	2È(
while_lstm_cell_73_448201:	È˘*while/lstm_cell_73/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_73/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_73_448197_0while_lstm_cell_73_448199_0while_lstm_cell_73_448201_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_73_layer_call_and_return_conditional_losses_448159Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_73/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_73/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_73/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_73/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_73_448197while_lstm_cell_73_448197_0"8
while_lstm_cell_73_448199while_lstm_cell_73_448199_0"8
while_lstm_cell_73_448201while_lstm_cell_73_448201_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_73/StatefulPartitionedCall*while/lstm_cell_73/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
Ġ

H__inference_lstm_cell_73_layer_call_and_return_conditional_losses_448305

inputs

states
states_11
matmul_readvariableop_resource:	dÈ3
 matmul_1_readvariableop_resource:	2È.
biasadd_readvariableop_resource:	È
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ès
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_namestates:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_namestates
Ë

H__inference_lstm_cell_74_layer_call_and_return_conditional_losses_448509

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 
_user_specified_namestates:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 
_user_specified_namestates
ö
³
)__inference_lstm_305_layer_call_fn_452186

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity˘StatefulPartitionedCallĉ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_305_layer_call_and_return_conditional_losses_449457o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
Ä

*__inference_dense_101_layer_call_fn_452767

inputs
unknown:

	unknown_0:
identity˘StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_101_layer_call_and_return_conditional_losses_449259o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 
_user_specified_nameinputs
²

÷
lstm_303_while_cond_450114.
*lstm_303_while_lstm_303_while_loop_counter4
0lstm_303_while_lstm_303_while_maximum_iterations
lstm_303_while_placeholder 
lstm_303_while_placeholder_1 
lstm_303_while_placeholder_2 
lstm_303_while_placeholder_30
,lstm_303_while_less_lstm_303_strided_slice_1F
Blstm_303_while_lstm_303_while_cond_450114___redundant_placeholder0F
Blstm_303_while_lstm_303_while_cond_450114___redundant_placeholder1F
Blstm_303_while_lstm_303_while_cond_450114___redundant_placeholder2F
Blstm_303_while_lstm_303_while_cond_450114___redundant_placeholder3
lstm_303_while_identity

lstm_303/while/LessLesslstm_303_while_placeholder,lstm_303_while_less_lstm_303_strided_slice_1*
T0*
_output_shapes
: ]
lstm_303/while/IdentityIdentitylstm_303/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_303_while_identity lstm_303/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
âJ

D__inference_lstm_303_layer_call_and_return_conditional_losses_451097
inputs_0>
+lstm_cell_72_matmul_readvariableop_resource:	@
-lstm_cell_72_matmul_1_readvariableop_resource:	d;
,lstm_cell_72_biasadd_readvariableop_resource:	
identity˘#lstm_cell_72/BiasAdd/ReadVariableOp˘"lstm_cell_72/MatMul/ReadVariableOp˘$lstm_cell_72/MatMul_1/ReadVariableOp˘while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
"lstm_cell_72/MatMul/ReadVariableOpReadVariableOp+lstm_cell_72_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_72/MatMulMatMulstrided_slice_2:output:0*lstm_cell_72/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_72/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_72_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_72/MatMul_1MatMulzeros:output:0,lstm_cell_72/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_72/addAddV2lstm_cell_72/MatMul:product:0lstm_cell_72/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_72/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_72_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_72/BiasAddBiasAddlstm_cell_72/add:z:0+lstm_cell_72/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_72/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_72/splitSplit%lstm_cell_72/split/split_dim:output:0lstm_cell_72/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_72/SigmoidSigmoidlstm_cell_72/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_72/Sigmoid_1Sigmoidlstm_cell_72/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_72/mulMullstm_cell_72/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_72/ReluRelulstm_cell_72/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_72/mul_1Mullstm_cell_72/Sigmoid:y:0lstm_cell_72/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_72/add_1AddV2lstm_cell_72/mul:z:0lstm_cell_72/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_72/Sigmoid_2Sigmoidlstm_cell_72/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_72/Relu_1Relulstm_cell_72/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_72/mul_2Mullstm_cell_72/Sigmoid_2:y:0!lstm_cell_72/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_72_matmul_readvariableop_resource-lstm_cell_72_matmul_1_readvariableop_resource,lstm_cell_72_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_451013*
condR
while_cond_451012*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙dÀ
NoOpNoOp$^lstm_cell_72/BiasAdd/ReadVariableOp#^lstm_cell_72/MatMul/ReadVariableOp%^lstm_cell_72/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_72/BiasAdd/ReadVariableOp#lstm_cell_72/BiasAdd/ReadVariableOp2H
"lstm_cell_72/MatMul/ReadVariableOp"lstm_cell_72/MatMul/ReadVariableOp2L
$lstm_cell_72/MatMul_1/ReadVariableOp$lstm_cell_72/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
µ
?
while_cond_448363
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_448363___redundant_placeholder04
0while_while_cond_448363___redundant_placeholder14
0while_while_cond_448363___redundant_placeholder24
0while_while_cond_448363___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
J

D__inference_lstm_305_layer_call_and_return_conditional_losses_452758

inputs=
+lstm_cell_74_matmul_readvariableop_resource:2(?
-lstm_cell_74_matmul_1_readvariableop_resource:
(:
,lstm_cell_74_biasadd_readvariableop_resource:(
identity˘#lstm_cell_74/BiasAdd/ReadVariableOp˘"lstm_cell_74/MatMul/ReadVariableOp˘$lstm_cell_74/MatMul_1/ReadVariableOp˘while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask
"lstm_cell_74/MatMul/ReadVariableOpReadVariableOp+lstm_cell_74_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_74/MatMulMatMulstrided_slice_2:output:0*lstm_cell_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_74/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_74_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_74/MatMul_1MatMulzeros:output:0,lstm_cell_74/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_74/addAddV2lstm_cell_74/MatMul:product:0lstm_cell_74/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_74/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_74_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_74/BiasAddBiasAddlstm_cell_74/add:z:0+lstm_cell_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_74/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_74/splitSplit%lstm_cell_74/split/split_dim:output:0lstm_cell_74/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_74/SigmoidSigmoidlstm_cell_74/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_74/Sigmoid_1Sigmoidlstm_cell_74/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_74/mulMullstm_cell_74/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_74/ReluRelulstm_cell_74/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_74/mul_1Mullstm_cell_74/Sigmoid:y:0lstm_cell_74/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_74/add_1AddV2lstm_cell_74/mul:z:0lstm_cell_74/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_74/Sigmoid_2Sigmoidlstm_cell_74/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_74/Relu_1Relulstm_cell_74/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_74/mul_2Mullstm_cell_74/Sigmoid_2:y:0!lstm_cell_74/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_74_matmul_readvariableop_resource-lstm_cell_74_matmul_1_readvariableop_resource,lstm_cell_74_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_452674*
condR
while_cond_452673*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
À
NoOpNoOp$^lstm_cell_74/BiasAdd/ReadVariableOp#^lstm_cell_74/MatMul/ReadVariableOp%^lstm_cell_74/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_74/BiasAdd/ReadVariableOp#lstm_cell_74/BiasAdd/ReadVariableOp2H
"lstm_cell_74/MatMul/ReadVariableOp"lstm_cell_74/MatMul/ReadVariableOp2L
$lstm_cell_74/MatMul_1/ReadVariableOp$lstm_cell_74/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
Ó

H__inference_lstm_cell_74_layer_call_and_return_conditional_losses_453039

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"
_user_specified_name
states/1
˙7
Ê
while_body_452388
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_74_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_74_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_74_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_74_matmul_readvariableop_resource:2(E
3while_lstm_cell_74_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_74_biasadd_readvariableop_resource:(˘)while/lstm_cell_74/BiasAdd/ReadVariableOp˘(while/lstm_cell_74/MatMul/ReadVariableOp˘*while/lstm_cell_74/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_74/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_74_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_74/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_74/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_74_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_74/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_74/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_74/addAddV2#while/lstm_cell_74/MatMul:product:0%while/lstm_cell_74/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_74/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_74_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_74/BiasAddBiasAddwhile/lstm_cell_74/add:z:01while/lstm_cell_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_74/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_74/splitSplit+while/lstm_cell_74/split/split_dim:output:0#while/lstm_cell_74/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_74/SigmoidSigmoid!while/lstm_cell_74/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_74/Sigmoid_1Sigmoid!while/lstm_cell_74/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_74/mulMul while/lstm_cell_74/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_74/ReluRelu!while/lstm_cell_74/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_74/mul_1Mulwhile/lstm_cell_74/Sigmoid:y:0%while/lstm_cell_74/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_74/add_1AddV2while/lstm_cell_74/mul:z:0while/lstm_cell_74/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_74/Sigmoid_2Sigmoid!while/lstm_cell_74/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_74/Relu_1Reluwhile/lstm_cell_74/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_74/mul_2Mul while/lstm_cell_74/Sigmoid_2:y:0'while/lstm_cell_74/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_74/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_74/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_74/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_74/BiasAdd/ReadVariableOp)^while/lstm_cell_74/MatMul/ReadVariableOp+^while/lstm_cell_74/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_74_biasadd_readvariableop_resource4while_lstm_cell_74_biasadd_readvariableop_resource_0"l
3while_lstm_cell_74_matmul_1_readvariableop_resource5while_lstm_cell_74_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_74_matmul_readvariableop_resource3while_lstm_cell_74_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_74/BiasAdd/ReadVariableOp)while/lstm_cell_74/BiasAdd/ReadVariableOp2T
(while/lstm_cell_74/MatMul/ReadVariableOp(while/lstm_cell_74/MatMul/ReadVariableOp2X
*while/lstm_cell_74/MatMul_1/ReadVariableOp*while/lstm_cell_74/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
²

÷
lstm_303_while_cond_450541.
*lstm_303_while_lstm_303_while_loop_counter4
0lstm_303_while_lstm_303_while_maximum_iterations
lstm_303_while_placeholder 
lstm_303_while_placeholder_1 
lstm_303_while_placeholder_2 
lstm_303_while_placeholder_30
,lstm_303_while_less_lstm_303_strided_slice_1F
Blstm_303_while_lstm_303_while_cond_450541___redundant_placeholder0F
Blstm_303_while_lstm_303_while_cond_450541___redundant_placeholder1F
Blstm_303_while_lstm_303_while_cond_450541___redundant_placeholder2F
Blstm_303_while_lstm_303_while_cond_450541___redundant_placeholder3
lstm_303_while_identity

lstm_303/while/LessLesslstm_303_while_placeholder,lstm_303_while_less_lstm_303_strided_slice_1*
T0*
_output_shapes
: ]
lstm_303/while/IdentityIdentitylstm_303/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_303_while_identity lstm_303/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
íW
¤
__inference__traced_save_453214
file_prefix/
+savev2_dense_101_kernel_read_readvariableop-
)savev2_dense_101_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_303_lstm_cell_303_kernel_read_readvariableopF
Bsavev2_lstm_303_lstm_cell_303_recurrent_kernel_read_readvariableop:
6savev2_lstm_303_lstm_cell_303_bias_read_readvariableop<
8savev2_lstm_304_lstm_cell_304_kernel_read_readvariableopF
Bsavev2_lstm_304_lstm_cell_304_recurrent_kernel_read_readvariableop:
6savev2_lstm_304_lstm_cell_304_bias_read_readvariableop<
8savev2_lstm_305_lstm_cell_305_kernel_read_readvariableopF
Bsavev2_lstm_305_lstm_cell_305_recurrent_kernel_read_readvariableop:
6savev2_lstm_305_lstm_cell_305_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_101_kernel_m_read_readvariableop4
0savev2_adam_dense_101_bias_m_read_readvariableopC
?savev2_adam_lstm_303_lstm_cell_303_kernel_m_read_readvariableopM
Isavev2_adam_lstm_303_lstm_cell_303_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_303_lstm_cell_303_bias_m_read_readvariableopC
?savev2_adam_lstm_304_lstm_cell_304_kernel_m_read_readvariableopM
Isavev2_adam_lstm_304_lstm_cell_304_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_304_lstm_cell_304_bias_m_read_readvariableopC
?savev2_adam_lstm_305_lstm_cell_305_kernel_m_read_readvariableopM
Isavev2_adam_lstm_305_lstm_cell_305_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_305_lstm_cell_305_bias_m_read_readvariableop6
2savev2_adam_dense_101_kernel_v_read_readvariableop4
0savev2_adam_dense_101_bias_v_read_readvariableopC
?savev2_adam_lstm_303_lstm_cell_303_kernel_v_read_readvariableopM
Isavev2_adam_lstm_303_lstm_cell_303_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_303_lstm_cell_303_bias_v_read_readvariableopC
?savev2_adam_lstm_304_lstm_cell_304_kernel_v_read_readvariableopM
Isavev2_adam_lstm_304_lstm_cell_304_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_304_lstm_cell_304_bias_v_read_readvariableopC
?savev2_adam_lstm_305_lstm_cell_305_kernel_v_read_readvariableopM
Isavev2_adam_lstm_305_lstm_cell_305_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_305_lstm_cell_305_bias_v_read_readvariableop
savev2_const

identity_1˘MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ċ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*î
valueäBá)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHż
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_101_kernel_read_readvariableop)savev2_dense_101_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_303_lstm_cell_303_kernel_read_readvariableopBsavev2_lstm_303_lstm_cell_303_recurrent_kernel_read_readvariableop6savev2_lstm_303_lstm_cell_303_bias_read_readvariableop8savev2_lstm_304_lstm_cell_304_kernel_read_readvariableopBsavev2_lstm_304_lstm_cell_304_recurrent_kernel_read_readvariableop6savev2_lstm_304_lstm_cell_304_bias_read_readvariableop8savev2_lstm_305_lstm_cell_305_kernel_read_readvariableopBsavev2_lstm_305_lstm_cell_305_recurrent_kernel_read_readvariableop6savev2_lstm_305_lstm_cell_305_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_101_kernel_m_read_readvariableop0savev2_adam_dense_101_bias_m_read_readvariableop?savev2_adam_lstm_303_lstm_cell_303_kernel_m_read_readvariableopIsavev2_adam_lstm_303_lstm_cell_303_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_303_lstm_cell_303_bias_m_read_readvariableop?savev2_adam_lstm_304_lstm_cell_304_kernel_m_read_readvariableopIsavev2_adam_lstm_304_lstm_cell_304_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_304_lstm_cell_304_bias_m_read_readvariableop?savev2_adam_lstm_305_lstm_cell_305_kernel_m_read_readvariableopIsavev2_adam_lstm_305_lstm_cell_305_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_305_lstm_cell_305_bias_m_read_readvariableop2savev2_adam_dense_101_kernel_v_read_readvariableop0savev2_adam_dense_101_bias_v_read_readvariableop?savev2_adam_lstm_303_lstm_cell_303_kernel_v_read_readvariableopIsavev2_adam_lstm_303_lstm_cell_303_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_303_lstm_cell_303_bias_v_read_readvariableop?savev2_adam_lstm_304_lstm_cell_304_kernel_v_read_readvariableopIsavev2_adam_lstm_304_lstm_cell_304_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_304_lstm_cell_304_bias_v_read_readvariableop?savev2_adam_lstm_305_lstm_cell_305_kernel_v_read_readvariableopIsavev2_adam_lstm_305_lstm_cell_305_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_305_lstm_cell_305_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Ó
_input_shapesÁ
?: :
:: : : : : :	:	d::	dÈ:	2È:È:2(:
(:(: : :
::	:	d::	dÈ:	2È:È:2(:
(:(:
::	:	d::	dÈ:	2È:È:2(:
(:(: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:
: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%	!

_output_shapes
:	d:!


_output_shapes	
::%!

_output_shapes
:	dÈ:%!

_output_shapes
:	2È:!

_output_shapes	
:È:$ 

_output_shapes

:2(:$ 

_output_shapes

:
(: 

_output_shapes
:(:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
: 

_output_shapes
::%!

_output_shapes
:	:%!

_output_shapes
:	d:!

_output_shapes	
::%!

_output_shapes
:	dÈ:%!

_output_shapes
:	2È:!

_output_shapes	
:È:$ 

_output_shapes

:2(:$ 

_output_shapes

:
(: 

_output_shapes
:(:$ 

_output_shapes

:
: 

_output_shapes
::% !

_output_shapes
:	:%!!

_output_shapes
:	d:!"

_output_shapes	
::%#!

_output_shapes
:	dÈ:%$!

_output_shapes
:	2È:!%

_output_shapes	
:È:$& 

_output_shapes

:2(:$' 

_output_shapes

:
(: (

_output_shapes
:(:)

_output_shapes
: 
µ
?
while_cond_451628
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_451628___redundant_placeholder04
0while_while_cond_451628___redundant_placeholder14
0while_while_cond_451628___redundant_placeholder24
0while_while_cond_451628___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
J

D__inference_lstm_305_layer_call_and_return_conditional_losses_449457

inputs=
+lstm_cell_74_matmul_readvariableop_resource:2(?
-lstm_cell_74_matmul_1_readvariableop_resource:
(:
,lstm_cell_74_biasadd_readvariableop_resource:(
identity˘#lstm_cell_74/BiasAdd/ReadVariableOp˘"lstm_cell_74/MatMul/ReadVariableOp˘$lstm_cell_74/MatMul_1/ReadVariableOp˘while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask
"lstm_cell_74/MatMul/ReadVariableOpReadVariableOp+lstm_cell_74_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_74/MatMulMatMulstrided_slice_2:output:0*lstm_cell_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_74/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_74_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_74/MatMul_1MatMulzeros:output:0,lstm_cell_74/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_74/addAddV2lstm_cell_74/MatMul:product:0lstm_cell_74/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_74/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_74_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_74/BiasAddBiasAddlstm_cell_74/add:z:0+lstm_cell_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_74/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_74/splitSplit%lstm_cell_74/split/split_dim:output:0lstm_cell_74/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_74/SigmoidSigmoidlstm_cell_74/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_74/Sigmoid_1Sigmoidlstm_cell_74/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_74/mulMullstm_cell_74/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_74/ReluRelulstm_cell_74/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_74/mul_1Mullstm_cell_74/Sigmoid:y:0lstm_cell_74/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_74/add_1AddV2lstm_cell_74/mul:z:0lstm_cell_74/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_74/Sigmoid_2Sigmoidlstm_cell_74/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_74/Relu_1Relulstm_cell_74/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_74/mul_2Mullstm_cell_74/Sigmoid_2:y:0!lstm_cell_74/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_74_matmul_readvariableop_resource-lstm_cell_74_matmul_1_readvariableop_resource,lstm_cell_74_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_449373*
condR
while_cond_449372*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
À
NoOpNoOp$^lstm_cell_74/BiasAdd/ReadVariableOp#^lstm_cell_74/MatMul/ReadVariableOp%^lstm_cell_74/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_74/BiasAdd/ReadVariableOp#lstm_cell_74/BiasAdd/ReadVariableOp2H
"lstm_cell_74/MatMul/ReadVariableOp"lstm_cell_74/MatMul/ReadVariableOp2L
$lstm_cell_74/MatMul_1/ReadVariableOp$lstm_cell_74/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
Ö
£
)sequential_101_lstm_303_while_cond_447373L
Hsequential_101_lstm_303_while_sequential_101_lstm_303_while_loop_counterR
Nsequential_101_lstm_303_while_sequential_101_lstm_303_while_maximum_iterations-
)sequential_101_lstm_303_while_placeholder/
+sequential_101_lstm_303_while_placeholder_1/
+sequential_101_lstm_303_while_placeholder_2/
+sequential_101_lstm_303_while_placeholder_3N
Jsequential_101_lstm_303_while_less_sequential_101_lstm_303_strided_slice_1d
`sequential_101_lstm_303_while_sequential_101_lstm_303_while_cond_447373___redundant_placeholder0d
`sequential_101_lstm_303_while_sequential_101_lstm_303_while_cond_447373___redundant_placeholder1d
`sequential_101_lstm_303_while_sequential_101_lstm_303_while_cond_447373___redundant_placeholder2d
`sequential_101_lstm_303_while_sequential_101_lstm_303_while_cond_447373___redundant_placeholder3*
&sequential_101_lstm_303_while_identity
Â
"sequential_101/lstm_303/while/LessLess)sequential_101_lstm_303_while_placeholderJsequential_101_lstm_303_while_less_sequential_101_lstm_303_strided_slice_1*
T0*
_output_shapes
: {
&sequential_101/lstm_303/while/IdentityIdentity&sequential_101/lstm_303/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_101_lstm_303_while_identity/sequential_101/lstm_303/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
Ğ
¸
)__inference_lstm_303_layer_call_fn_450921
inputs_0
unknown:	
	unknown_0:	d
	unknown_1:	
identity˘StatefulPartitionedCallġ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_303_layer_call_and_return_conditional_losses_447892|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
¤J

D__inference_lstm_304_layer_call_and_return_conditional_losses_452142

inputs>
+lstm_cell_73_matmul_readvariableop_resource:	dÈ@
-lstm_cell_73_matmul_1_readvariableop_resource:	2È;
,lstm_cell_73_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_73/BiasAdd/ReadVariableOp˘"lstm_cell_73/MatMul/ReadVariableOp˘$lstm_cell_73/MatMul_1/ReadVariableOp˘while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask
"lstm_cell_73/MatMul/ReadVariableOpReadVariableOp+lstm_cell_73_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_73/MatMulMatMulstrided_slice_2:output:0*lstm_cell_73/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_73/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_73_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_73/MatMul_1MatMulzeros:output:0,lstm_cell_73/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_73/addAddV2lstm_cell_73/MatMul:product:0lstm_cell_73/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_73/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_73_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_73/BiasAddBiasAddlstm_cell_73/add:z:0+lstm_cell_73/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_73/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_73/splitSplit%lstm_cell_73/split/split_dim:output:0lstm_cell_73/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_73/SigmoidSigmoidlstm_cell_73/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_73/Sigmoid_1Sigmoidlstm_cell_73/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_73/mulMullstm_cell_73/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_73/ReluRelulstm_cell_73/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_73/mul_1Mullstm_cell_73/Sigmoid:y:0lstm_cell_73/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_73/add_1AddV2lstm_cell_73/mul:z:0lstm_cell_73/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_73/Sigmoid_2Sigmoidlstm_cell_73/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_73/Relu_1Relulstm_cell_73/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_73/mul_2Mullstm_cell_73/Sigmoid_2:y:0!lstm_cell_73/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_73_matmul_readvariableop_resource-lstm_cell_73_matmul_1_readvariableop_resource,lstm_cell_73_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_452058*
condR
while_cond_452057*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2À
NoOpNoOp$^lstm_cell_73/BiasAdd/ReadVariableOp#^lstm_cell_73/MatMul/ReadVariableOp%^lstm_cell_73/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_73/BiasAdd/ReadVariableOp#lstm_cell_73/BiasAdd/ReadVariableOp2H
"lstm_cell_73/MatMul/ReadVariableOp"lstm_cell_73/MatMul/ReadVariableOp2L
$lstm_cell_73/MatMul_1/ReadVariableOp$lstm_cell_73/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
µ
?
while_cond_452244
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_452244___redundant_placeholder04
0while_while_cond_452244___redundant_placeholder14
0while_while_cond_452244___redundant_placeholder24
0while_while_cond_452244___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
È	
ö
E__inference_dense_101_layer_call_and_return_conditional_losses_449259

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 
_user_specified_nameinputs
è
ó
-__inference_lstm_cell_74_layer_call_fn_452990

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2˘StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_74_layer_call_and_return_conditional_losses_448509o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"
_user_specified_name
states/1
8

D__inference_lstm_305_layer_call_and_return_conditional_losses_448592

inputs%
lstm_cell_74_448510:2(%
lstm_cell_74_448512:
(!
lstm_cell_74_448514:(
identity˘$lstm_cell_74/StatefulPartitionedCall˘while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskġ
$lstm_cell_74/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_74_448510lstm_cell_74_448512lstm_cell_74_448514*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_74_layer_call_and_return_conditional_losses_448509n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_74_448510lstm_cell_74_448512lstm_cell_74_448514*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_448523*
condR
while_cond_448522*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
NoOpNoOp%^lstm_cell_74/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_74/StatefulPartitionedCall$lstm_cell_74/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
Ŭ

H__inference_lstm_cell_72_layer_call_and_return_conditional_losses_452843

inputs
states_0
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
states/1
âJ

D__inference_lstm_303_layer_call_and_return_conditional_losses_451240
inputs_0>
+lstm_cell_72_matmul_readvariableop_resource:	@
-lstm_cell_72_matmul_1_readvariableop_resource:	d;
,lstm_cell_72_biasadd_readvariableop_resource:	
identity˘#lstm_cell_72/BiasAdd/ReadVariableOp˘"lstm_cell_72/MatMul/ReadVariableOp˘$lstm_cell_72/MatMul_1/ReadVariableOp˘while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
"lstm_cell_72/MatMul/ReadVariableOpReadVariableOp+lstm_cell_72_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_72/MatMulMatMulstrided_slice_2:output:0*lstm_cell_72/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_72/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_72_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_72/MatMul_1MatMulzeros:output:0,lstm_cell_72/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_72/addAddV2lstm_cell_72/MatMul:product:0lstm_cell_72/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_72/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_72_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_72/BiasAddBiasAddlstm_cell_72/add:z:0+lstm_cell_72/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_72/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_72/splitSplit%lstm_cell_72/split/split_dim:output:0lstm_cell_72/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_72/SigmoidSigmoidlstm_cell_72/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_72/Sigmoid_1Sigmoidlstm_cell_72/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_72/mulMullstm_cell_72/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_72/ReluRelulstm_cell_72/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_72/mul_1Mullstm_cell_72/Sigmoid:y:0lstm_cell_72/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_72/add_1AddV2lstm_cell_72/mul:z:0lstm_cell_72/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_72/Sigmoid_2Sigmoidlstm_cell_72/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_72/Relu_1Relulstm_cell_72/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_72/mul_2Mullstm_cell_72/Sigmoid_2:y:0!lstm_cell_72/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_72_matmul_readvariableop_resource-lstm_cell_72_matmul_1_readvariableop_resource,lstm_cell_72_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_451156*
condR
while_cond_451155*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙dÀ
NoOpNoOp$^lstm_cell_72/BiasAdd/ReadVariableOp#^lstm_cell_72/MatMul/ReadVariableOp%^lstm_cell_72/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_72/BiasAdd/ReadVariableOp#lstm_cell_72/BiasAdd/ReadVariableOp2H
"lstm_cell_72/MatMul/ReadVariableOp"lstm_cell_72/MatMul/ReadVariableOp2L
$lstm_cell_72/MatMul_1/ReadVariableOp$lstm_cell_72/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
Ö
£
)sequential_101_lstm_305_while_cond_447651L
Hsequential_101_lstm_305_while_sequential_101_lstm_305_while_loop_counterR
Nsequential_101_lstm_305_while_sequential_101_lstm_305_while_maximum_iterations-
)sequential_101_lstm_305_while_placeholder/
+sequential_101_lstm_305_while_placeholder_1/
+sequential_101_lstm_305_while_placeholder_2/
+sequential_101_lstm_305_while_placeholder_3N
Jsequential_101_lstm_305_while_less_sequential_101_lstm_305_strided_slice_1d
`sequential_101_lstm_305_while_sequential_101_lstm_305_while_cond_447651___redundant_placeholder0d
`sequential_101_lstm_305_while_sequential_101_lstm_305_while_cond_447651___redundant_placeholder1d
`sequential_101_lstm_305_while_sequential_101_lstm_305_while_cond_447651___redundant_placeholder2d
`sequential_101_lstm_305_while_sequential_101_lstm_305_while_cond_447651___redundant_placeholder3*
&sequential_101_lstm_305_while_identity
Â
"sequential_101/lstm_305/while/LessLess)sequential_101_lstm_305_while_placeholderJsequential_101_lstm_305_while_less_sequential_101_lstm_305_strided_slice_1*
T0*
_output_shapes
: {
&sequential_101/lstm_305/while/IdentityIdentity&sequential_101/lstm_305/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_101_lstm_305_while_identity/sequential_101/lstm_305/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
¤J

D__inference_lstm_304_layer_call_and_return_conditional_losses_449091

inputs>
+lstm_cell_73_matmul_readvariableop_resource:	dÈ@
-lstm_cell_73_matmul_1_readvariableop_resource:	2È;
,lstm_cell_73_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_73/BiasAdd/ReadVariableOp˘"lstm_cell_73/MatMul/ReadVariableOp˘$lstm_cell_73/MatMul_1/ReadVariableOp˘while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask
"lstm_cell_73/MatMul/ReadVariableOpReadVariableOp+lstm_cell_73_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_73/MatMulMatMulstrided_slice_2:output:0*lstm_cell_73/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_73/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_73_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_73/MatMul_1MatMulzeros:output:0,lstm_cell_73/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_73/addAddV2lstm_cell_73/MatMul:product:0lstm_cell_73/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_73/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_73_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_73/BiasAddBiasAddlstm_cell_73/add:z:0+lstm_cell_73/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_73/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_73/splitSplit%lstm_cell_73/split/split_dim:output:0lstm_cell_73/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_73/SigmoidSigmoidlstm_cell_73/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_73/Sigmoid_1Sigmoidlstm_cell_73/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_73/mulMullstm_cell_73/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_73/ReluRelulstm_cell_73/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_73/mul_1Mullstm_cell_73/Sigmoid:y:0lstm_cell_73/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_73/add_1AddV2lstm_cell_73/mul:z:0lstm_cell_73/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_73/Sigmoid_2Sigmoidlstm_cell_73/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_73/Relu_1Relulstm_cell_73/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_73/mul_2Mullstm_cell_73/Sigmoid_2:y:0!lstm_cell_73/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_73_matmul_readvariableop_resource-lstm_cell_73_matmul_1_readvariableop_resource,lstm_cell_73_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_449007*
condR
while_cond_449006*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2À
NoOpNoOp$^lstm_cell_73/BiasAdd/ReadVariableOp#^lstm_cell_73/MatMul/ReadVariableOp%^lstm_cell_73/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_73/BiasAdd/ReadVariableOp#lstm_cell_73/BiasAdd/ReadVariableOp2H
"lstm_cell_73/MatMul/ReadVariableOp"lstm_cell_73/MatMul/ReadVariableOp2L
$lstm_cell_73/MatMul_1/ReadVariableOp$lstm_cell_73/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
È	
ö
E__inference_dense_101_layer_call_and_return_conditional_losses_452777

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 
_user_specified_nameinputs
µ
?
while_cond_448522
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_448522___redundant_placeholder04
0while_while_cond_448522___redundant_placeholder14
0while_while_cond_448522___redundant_placeholder24
0while_while_cond_448522___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
ô

£
/__inference_sequential_101_layer_call_fn_449291
lstm_303_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity˘StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCalllstm_303_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_101_layer_call_and_return_conditional_losses_449266o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_303_input
ÔJ

D__inference_lstm_305_layer_call_and_return_conditional_losses_452329
inputs_0=
+lstm_cell_74_matmul_readvariableop_resource:2(?
-lstm_cell_74_matmul_1_readvariableop_resource:
(:
,lstm_cell_74_biasadd_readvariableop_resource:(
identity˘#lstm_cell_74/BiasAdd/ReadVariableOp˘"lstm_cell_74/MatMul/ReadVariableOp˘$lstm_cell_74/MatMul_1/ReadVariableOp˘while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask
"lstm_cell_74/MatMul/ReadVariableOpReadVariableOp+lstm_cell_74_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_74/MatMulMatMulstrided_slice_2:output:0*lstm_cell_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_74/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_74_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_74/MatMul_1MatMulzeros:output:0,lstm_cell_74/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_74/addAddV2lstm_cell_74/MatMul:product:0lstm_cell_74/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_74/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_74_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_74/BiasAddBiasAddlstm_cell_74/add:z:0+lstm_cell_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_74/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_74/splitSplit%lstm_cell_74/split/split_dim:output:0lstm_cell_74/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_74/SigmoidSigmoidlstm_cell_74/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_74/Sigmoid_1Sigmoidlstm_cell_74/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_74/mulMullstm_cell_74/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_74/ReluRelulstm_cell_74/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_74/mul_1Mullstm_cell_74/Sigmoid:y:0lstm_cell_74/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_74/add_1AddV2lstm_cell_74/mul:z:0lstm_cell_74/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_74/Sigmoid_2Sigmoidlstm_cell_74/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_74/Relu_1Relulstm_cell_74/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_74/mul_2Mullstm_cell_74/Sigmoid_2:y:0!lstm_cell_74/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_74_matmul_readvariableop_resource-lstm_cell_74_matmul_1_readvariableop_resource,lstm_cell_74_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_452245*
condR
while_cond_452244*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
À
NoOpNoOp$^lstm_cell_74/BiasAdd/ReadVariableOp#^lstm_cell_74/MatMul/ReadVariableOp%^lstm_cell_74/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_74/BiasAdd/ReadVariableOp#lstm_cell_74/BiasAdd/ReadVariableOp2H
"lstm_cell_74/MatMul/ReadVariableOp"lstm_cell_74/MatMul/ReadVariableOp2L
$lstm_cell_74/MatMul_1/ReadVariableOp$lstm_cell_74/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
Ŭ

H__inference_lstm_cell_73_layer_call_and_return_conditional_losses_452973

inputs
states_0
states_11
matmul_readvariableop_resource:	dÈ3
 matmul_1_readvariableop_resource:	2È.
biasadd_readvariableop_resource:	È
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ès
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
states/1

µ
)__inference_lstm_305_layer_call_fn_452153
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity˘StatefulPartitionedCallè
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_305_layer_call_and_return_conditional_losses_448592o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
µ
?
while_cond_449537
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_449537___redundant_placeholder04
0while_while_cond_449537___redundant_placeholder14
0while_while_cond_449537___redundant_placeholder24
0while_while_cond_449537___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
²

÷
lstm_304_while_cond_450680.
*lstm_304_while_lstm_304_while_loop_counter4
0lstm_304_while_lstm_304_while_maximum_iterations
lstm_304_while_placeholder 
lstm_304_while_placeholder_1 
lstm_304_while_placeholder_2 
lstm_304_while_placeholder_30
,lstm_304_while_less_lstm_304_strided_slice_1F
Blstm_304_while_lstm_304_while_cond_450680___redundant_placeholder0F
Blstm_304_while_lstm_304_while_cond_450680___redundant_placeholder1F
Blstm_304_while_lstm_304_while_cond_450680___redundant_placeholder2F
Blstm_304_while_lstm_304_while_cond_450680___redundant_placeholder3
lstm_304_while_identity

lstm_304/while/LessLesslstm_304_while_placeholder,lstm_304_while_less_lstm_304_strided_slice_1*
T0*
_output_shapes
: ]
lstm_304/while/IdentityIdentitylstm_304/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_304_while_identity lstm_304/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
ÛB
?

lstm_303_while_body_450115.
*lstm_303_while_lstm_303_while_loop_counter4
0lstm_303_while_lstm_303_while_maximum_iterations
lstm_303_while_placeholder 
lstm_303_while_placeholder_1 
lstm_303_while_placeholder_2 
lstm_303_while_placeholder_3-
)lstm_303_while_lstm_303_strided_slice_1_0i
elstm_303_while_tensorarrayv2read_tensorlistgetitem_lstm_303_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_303_while_lstm_cell_72_matmul_readvariableop_resource_0:	Q
>lstm_303_while_lstm_cell_72_matmul_1_readvariableop_resource_0:	dL
=lstm_303_while_lstm_cell_72_biasadd_readvariableop_resource_0:	
lstm_303_while_identity
lstm_303_while_identity_1
lstm_303_while_identity_2
lstm_303_while_identity_3
lstm_303_while_identity_4
lstm_303_while_identity_5+
'lstm_303_while_lstm_303_strided_slice_1g
clstm_303_while_tensorarrayv2read_tensorlistgetitem_lstm_303_tensorarrayunstack_tensorlistfromtensorM
:lstm_303_while_lstm_cell_72_matmul_readvariableop_resource:	O
<lstm_303_while_lstm_cell_72_matmul_1_readvariableop_resource:	dJ
;lstm_303_while_lstm_cell_72_biasadd_readvariableop_resource:	˘2lstm_303/while/lstm_cell_72/BiasAdd/ReadVariableOp˘1lstm_303/while/lstm_cell_72/MatMul/ReadVariableOp˘3lstm_303/while/lstm_cell_72/MatMul_1/ReadVariableOp
@lstm_303/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_303/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_303_while_tensorarrayv2read_tensorlistgetitem_lstm_303_tensorarrayunstack_tensorlistfromtensor_0lstm_303_while_placeholderIlstm_303/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_303/while/lstm_cell_72/MatMul/ReadVariableOpReadVariableOp<lstm_303_while_lstm_cell_72_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_303/while/lstm_cell_72/MatMulMatMul9lstm_303/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_303/while/lstm_cell_72/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_303/while/lstm_cell_72/MatMul_1/ReadVariableOpReadVariableOp>lstm_303_while_lstm_cell_72_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_303/while/lstm_cell_72/MatMul_1MatMullstm_303_while_placeholder_2;lstm_303/while/lstm_cell_72/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_303/while/lstm_cell_72/addAddV2,lstm_303/while/lstm_cell_72/MatMul:product:0.lstm_303/while/lstm_cell_72/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_303/while/lstm_cell_72/BiasAdd/ReadVariableOpReadVariableOp=lstm_303_while_lstm_cell_72_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_303/while/lstm_cell_72/BiasAddBiasAdd#lstm_303/while/lstm_cell_72/add:z:0:lstm_303/while/lstm_cell_72/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_303/while/lstm_cell_72/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_303/while/lstm_cell_72/splitSplit4lstm_303/while/lstm_cell_72/split/split_dim:output:0,lstm_303/while/lstm_cell_72/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_303/while/lstm_cell_72/SigmoidSigmoid*lstm_303/while/lstm_cell_72/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_303/while/lstm_cell_72/Sigmoid_1Sigmoid*lstm_303/while/lstm_cell_72/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_303/while/lstm_cell_72/mulMul)lstm_303/while/lstm_cell_72/Sigmoid_1:y:0lstm_303_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_303/while/lstm_cell_72/ReluRelu*lstm_303/while/lstm_cell_72/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_303/while/lstm_cell_72/mul_1Mul'lstm_303/while/lstm_cell_72/Sigmoid:y:0.lstm_303/while/lstm_cell_72/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_303/while/lstm_cell_72/add_1AddV2#lstm_303/while/lstm_cell_72/mul:z:0%lstm_303/while/lstm_cell_72/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_303/while/lstm_cell_72/Sigmoid_2Sigmoid*lstm_303/while/lstm_cell_72/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_303/while/lstm_cell_72/Relu_1Relu%lstm_303/while/lstm_cell_72/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_303/while/lstm_cell_72/mul_2Mul)lstm_303/while/lstm_cell_72/Sigmoid_2:y:00lstm_303/while/lstm_cell_72/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_303/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_303_while_placeholder_1lstm_303_while_placeholder%lstm_303/while/lstm_cell_72/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_303/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_303/while/addAddV2lstm_303_while_placeholderlstm_303/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_303/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_303/while/add_1AddV2*lstm_303_while_lstm_303_while_loop_counterlstm_303/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_303/while/IdentityIdentitylstm_303/while/add_1:z:0^lstm_303/while/NoOp*
T0*
_output_shapes
: 
lstm_303/while/Identity_1Identity0lstm_303_while_lstm_303_while_maximum_iterations^lstm_303/while/NoOp*
T0*
_output_shapes
: t
lstm_303/while/Identity_2Identitylstm_303/while/add:z:0^lstm_303/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_303/while/Identity_3IdentityClstm_303/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_303/while/NoOp*
T0*
_output_shapes
: 
lstm_303/while/Identity_4Identity%lstm_303/while/lstm_cell_72/mul_2:z:0^lstm_303/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_303/while/Identity_5Identity%lstm_303/while/lstm_cell_72/add_1:z:0^lstm_303/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_303/while/NoOpNoOp3^lstm_303/while/lstm_cell_72/BiasAdd/ReadVariableOp2^lstm_303/while/lstm_cell_72/MatMul/ReadVariableOp4^lstm_303/while/lstm_cell_72/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_303_while_identity lstm_303/while/Identity:output:0"?
lstm_303_while_identity_1"lstm_303/while/Identity_1:output:0"?
lstm_303_while_identity_2"lstm_303/while/Identity_2:output:0"?
lstm_303_while_identity_3"lstm_303/while/Identity_3:output:0"?
lstm_303_while_identity_4"lstm_303/while/Identity_4:output:0"?
lstm_303_while_identity_5"lstm_303/while/Identity_5:output:0"T
'lstm_303_while_lstm_303_strided_slice_1)lstm_303_while_lstm_303_strided_slice_1_0"|
;lstm_303_while_lstm_cell_72_biasadd_readvariableop_resource=lstm_303_while_lstm_cell_72_biasadd_readvariableop_resource_0"~
<lstm_303_while_lstm_cell_72_matmul_1_readvariableop_resource>lstm_303_while_lstm_cell_72_matmul_1_readvariableop_resource_0"z
:lstm_303_while_lstm_cell_72_matmul_readvariableop_resource<lstm_303_while_lstm_cell_72_matmul_readvariableop_resource_0"Ì
clstm_303_while_tensorarrayv2read_tensorlistgetitem_lstm_303_tensorarrayunstack_tensorlistfromtensorelstm_303_while_tensorarrayv2read_tensorlistgetitem_lstm_303_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_303/while/lstm_cell_72/BiasAdd/ReadVariableOp2lstm_303/while/lstm_cell_72/BiasAdd/ReadVariableOp2f
1lstm_303/while/lstm_cell_72/MatMul/ReadVariableOp1lstm_303/while/lstm_cell_72/MatMul/ReadVariableOp2j
3lstm_303/while/lstm_cell_72/MatMul_1/ReadVariableOp3lstm_303/while/lstm_cell_72/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
8
?
while_body_451156
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_72_matmul_readvariableop_resource_0:	H
5while_lstm_cell_72_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_72_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_72_matmul_readvariableop_resource:	F
3while_lstm_cell_72_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_72_biasadd_readvariableop_resource:	˘)while/lstm_cell_72/BiasAdd/ReadVariableOp˘(while/lstm_cell_72/MatMul/ReadVariableOp˘*while/lstm_cell_72/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_72/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_72_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_72/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_72/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_72/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_72_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_72/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_72/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_72/addAddV2#while/lstm_cell_72/MatMul:product:0%while/lstm_cell_72/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_72/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_72_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_72/BiasAddBiasAddwhile/lstm_cell_72/add:z:01while/lstm_cell_72/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_72/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_72/splitSplit+while/lstm_cell_72/split/split_dim:output:0#while/lstm_cell_72/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_72/SigmoidSigmoid!while/lstm_cell_72/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_72/Sigmoid_1Sigmoid!while/lstm_cell_72/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_72/mulMul while/lstm_cell_72/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_72/ReluRelu!while/lstm_cell_72/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_72/mul_1Mulwhile/lstm_cell_72/Sigmoid:y:0%while/lstm_cell_72/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_72/add_1AddV2while/lstm_cell_72/mul:z:0while/lstm_cell_72/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_72/Sigmoid_2Sigmoid!while/lstm_cell_72/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_72/Relu_1Reluwhile/lstm_cell_72/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_72/mul_2Mul while/lstm_cell_72/Sigmoid_2:y:0'while/lstm_cell_72/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_72/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_72/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_72/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_72/BiasAdd/ReadVariableOp)^while/lstm_cell_72/MatMul/ReadVariableOp+^while/lstm_cell_72/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_72_biasadd_readvariableop_resource4while_lstm_cell_72_biasadd_readvariableop_resource_0"l
3while_lstm_cell_72_matmul_1_readvariableop_resource5while_lstm_cell_72_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_72_matmul_readvariableop_resource3while_lstm_cell_72_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_72/BiasAdd/ReadVariableOp)while/lstm_cell_72/BiasAdd/ReadVariableOp2T
(while/lstm_cell_72/MatMul/ReadVariableOp(while/lstm_cell_72/MatMul/ReadVariableOp2X
*while/lstm_cell_72/MatMul_1/ReadVariableOp*while/lstm_cell_72/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 

µ
)__inference_lstm_305_layer_call_fn_452164
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity˘StatefulPartitionedCallè
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_305_layer_call_and_return_conditional_losses_448783o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
İT
Î
)sequential_101_lstm_305_while_body_447652L
Hsequential_101_lstm_305_while_sequential_101_lstm_305_while_loop_counterR
Nsequential_101_lstm_305_while_sequential_101_lstm_305_while_maximum_iterations-
)sequential_101_lstm_305_while_placeholder/
+sequential_101_lstm_305_while_placeholder_1/
+sequential_101_lstm_305_while_placeholder_2/
+sequential_101_lstm_305_while_placeholder_3K
Gsequential_101_lstm_305_while_sequential_101_lstm_305_strided_slice_1_0
sequential_101_lstm_305_while_tensorarrayv2read_tensorlistgetitem_sequential_101_lstm_305_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_101_lstm_305_while_lstm_cell_74_matmul_readvariableop_resource_0:2(_
Msequential_101_lstm_305_while_lstm_cell_74_matmul_1_readvariableop_resource_0:
(Z
Lsequential_101_lstm_305_while_lstm_cell_74_biasadd_readvariableop_resource_0:(*
&sequential_101_lstm_305_while_identity,
(sequential_101_lstm_305_while_identity_1,
(sequential_101_lstm_305_while_identity_2,
(sequential_101_lstm_305_while_identity_3,
(sequential_101_lstm_305_while_identity_4,
(sequential_101_lstm_305_while_identity_5I
Esequential_101_lstm_305_while_sequential_101_lstm_305_strided_slice_1
sequential_101_lstm_305_while_tensorarrayv2read_tensorlistgetitem_sequential_101_lstm_305_tensorarrayunstack_tensorlistfromtensor[
Isequential_101_lstm_305_while_lstm_cell_74_matmul_readvariableop_resource:2(]
Ksequential_101_lstm_305_while_lstm_cell_74_matmul_1_readvariableop_resource:
(X
Jsequential_101_lstm_305_while_lstm_cell_74_biasadd_readvariableop_resource:(˘Asequential_101/lstm_305/while/lstm_cell_74/BiasAdd/ReadVariableOp˘@sequential_101/lstm_305/while/lstm_cell_74/MatMul/ReadVariableOp˘Bsequential_101/lstm_305/while/lstm_cell_74/MatMul_1/ReadVariableOp 
Osequential_101/lstm_305/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
Asequential_101/lstm_305/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_101_lstm_305_while_tensorarrayv2read_tensorlistgetitem_sequential_101_lstm_305_tensorarrayunstack_tensorlistfromtensor_0)sequential_101_lstm_305_while_placeholderXsequential_101/lstm_305/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0Ì
@sequential_101/lstm_305/while/lstm_cell_74/MatMul/ReadVariableOpReadVariableOpKsequential_101_lstm_305_while_lstm_cell_74_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0
1sequential_101/lstm_305/while/lstm_cell_74/MatMulMatMulHsequential_101/lstm_305/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_101/lstm_305/while/lstm_cell_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(?
Bsequential_101/lstm_305/while/lstm_cell_74/MatMul_1/ReadVariableOpReadVariableOpMsequential_101_lstm_305_while_lstm_cell_74_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0è
3sequential_101/lstm_305/while/lstm_cell_74/MatMul_1MatMul+sequential_101_lstm_305_while_placeholder_2Jsequential_101/lstm_305/while/lstm_cell_74/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(ċ
.sequential_101/lstm_305/while/lstm_cell_74/addAddV2;sequential_101/lstm_305/while/lstm_cell_74/MatMul:product:0=sequential_101/lstm_305/while/lstm_cell_74/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ê
Asequential_101/lstm_305/while/lstm_cell_74/BiasAdd/ReadVariableOpReadVariableOpLsequential_101_lstm_305_while_lstm_cell_74_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0î
2sequential_101/lstm_305/while/lstm_cell_74/BiasAddBiasAdd2sequential_101/lstm_305/while/lstm_cell_74/add:z:0Isequential_101/lstm_305/while/lstm_cell_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(|
:sequential_101/lstm_305/while/lstm_cell_74/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :·
0sequential_101/lstm_305/while/lstm_cell_74/splitSplitCsequential_101/lstm_305/while/lstm_cell_74/split/split_dim:output:0;sequential_101/lstm_305/while/lstm_cell_74/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitŞ
2sequential_101/lstm_305/while/lstm_cell_74/SigmoidSigmoid9sequential_101/lstm_305/while/lstm_cell_74/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĵ
4sequential_101/lstm_305/while/lstm_cell_74/Sigmoid_1Sigmoid9sequential_101/lstm_305/while/lstm_cell_74/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
.sequential_101/lstm_305/while/lstm_cell_74/mulMul8sequential_101/lstm_305/while/lstm_cell_74/Sigmoid_1:y:0+sequential_101_lstm_305_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
/sequential_101/lstm_305/while/lstm_cell_74/ReluRelu9sequential_101/lstm_305/while/lstm_cell_74/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
à
0sequential_101/lstm_305/while/lstm_cell_74/mul_1Mul6sequential_101/lstm_305/while/lstm_cell_74/Sigmoid:y:0=sequential_101/lstm_305/while/lstm_cell_74/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ġ
0sequential_101/lstm_305/while/lstm_cell_74/add_1AddV22sequential_101/lstm_305/while/lstm_cell_74/mul:z:04sequential_101/lstm_305/while/lstm_cell_74/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĵ
4sequential_101/lstm_305/while/lstm_cell_74/Sigmoid_2Sigmoid9sequential_101/lstm_305/while/lstm_cell_74/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
1sequential_101/lstm_305/while/lstm_cell_74/Relu_1Relu4sequential_101/lstm_305/while/lstm_cell_74/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ä
0sequential_101/lstm_305/while/lstm_cell_74/mul_2Mul8sequential_101/lstm_305/while/lstm_cell_74/Sigmoid_2:y:0?sequential_101/lstm_305/while/lstm_cell_74/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
Bsequential_101/lstm_305/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_101_lstm_305_while_placeholder_1)sequential_101_lstm_305_while_placeholder4sequential_101/lstm_305/while/lstm_cell_74/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒe
#sequential_101/lstm_305/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¤
!sequential_101/lstm_305/while/addAddV2)sequential_101_lstm_305_while_placeholder,sequential_101/lstm_305/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_101/lstm_305/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ç
#sequential_101/lstm_305/while/add_1AddV2Hsequential_101_lstm_305_while_sequential_101_lstm_305_while_loop_counter.sequential_101/lstm_305/while/add_1/y:output:0*
T0*
_output_shapes
: Ħ
&sequential_101/lstm_305/while/IdentityIdentity'sequential_101/lstm_305/while/add_1:z:0#^sequential_101/lstm_305/while/NoOp*
T0*
_output_shapes
: Ê
(sequential_101/lstm_305/while/Identity_1IdentityNsequential_101_lstm_305_while_sequential_101_lstm_305_while_maximum_iterations#^sequential_101/lstm_305/while/NoOp*
T0*
_output_shapes
: Ħ
(sequential_101/lstm_305/while/Identity_2Identity%sequential_101/lstm_305/while/add:z:0#^sequential_101/lstm_305/while/NoOp*
T0*
_output_shapes
: Î
(sequential_101/lstm_305/while/Identity_3IdentityRsequential_101/lstm_305/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_101/lstm_305/while/NoOp*
T0*
_output_shapes
: Á
(sequential_101/lstm_305/while/Identity_4Identity4sequential_101/lstm_305/while/lstm_cell_74/mul_2:z:0#^sequential_101/lstm_305/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
(sequential_101/lstm_305/while/Identity_5Identity4sequential_101/lstm_305/while/lstm_cell_74/add_1:z:0#^sequential_101/lstm_305/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
°
"sequential_101/lstm_305/while/NoOpNoOpB^sequential_101/lstm_305/while/lstm_cell_74/BiasAdd/ReadVariableOpA^sequential_101/lstm_305/while/lstm_cell_74/MatMul/ReadVariableOpC^sequential_101/lstm_305/while/lstm_cell_74/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_101_lstm_305_while_identity/sequential_101/lstm_305/while/Identity:output:0"]
(sequential_101_lstm_305_while_identity_11sequential_101/lstm_305/while/Identity_1:output:0"]
(sequential_101_lstm_305_while_identity_21sequential_101/lstm_305/while/Identity_2:output:0"]
(sequential_101_lstm_305_while_identity_31sequential_101/lstm_305/while/Identity_3:output:0"]
(sequential_101_lstm_305_while_identity_41sequential_101/lstm_305/while/Identity_4:output:0"]
(sequential_101_lstm_305_while_identity_51sequential_101/lstm_305/while/Identity_5:output:0"
Jsequential_101_lstm_305_while_lstm_cell_74_biasadd_readvariableop_resourceLsequential_101_lstm_305_while_lstm_cell_74_biasadd_readvariableop_resource_0"
Ksequential_101_lstm_305_while_lstm_cell_74_matmul_1_readvariableop_resourceMsequential_101_lstm_305_while_lstm_cell_74_matmul_1_readvariableop_resource_0"
Isequential_101_lstm_305_while_lstm_cell_74_matmul_readvariableop_resourceKsequential_101_lstm_305_while_lstm_cell_74_matmul_readvariableop_resource_0"
Esequential_101_lstm_305_while_sequential_101_lstm_305_strided_slice_1Gsequential_101_lstm_305_while_sequential_101_lstm_305_strided_slice_1_0"
sequential_101_lstm_305_while_tensorarrayv2read_tensorlistgetitem_sequential_101_lstm_305_tensorarrayunstack_tensorlistfromtensorsequential_101_lstm_305_while_tensorarrayv2read_tensorlistgetitem_sequential_101_lstm_305_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2
Asequential_101/lstm_305/while/lstm_cell_74/BiasAdd/ReadVariableOpAsequential_101/lstm_305/while/lstm_cell_74/BiasAdd/ReadVariableOp2
@sequential_101/lstm_305/while/lstm_cell_74/MatMul/ReadVariableOp@sequential_101/lstm_305/while/lstm_cell_74/MatMul/ReadVariableOp2
Bsequential_101/lstm_305/while/lstm_cell_74/MatMul_1/ReadVariableOpBsequential_101/lstm_305/while/lstm_cell_74/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
Ġ

H__inference_lstm_cell_72_layer_call_and_return_conditional_losses_447955

inputs

states
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_namestates:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_namestates
µ
?
while_cond_451298
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_451298___redundant_placeholder04
0while_while_cond_451298___redundant_placeholder14
0while_while_cond_451298___redundant_placeholder24
0while_while_cond_451298___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
²

÷
lstm_305_while_cond_450819.
*lstm_305_while_lstm_305_while_loop_counter4
0lstm_305_while_lstm_305_while_maximum_iterations
lstm_305_while_placeholder 
lstm_305_while_placeholder_1 
lstm_305_while_placeholder_2 
lstm_305_while_placeholder_30
,lstm_305_while_less_lstm_305_strided_slice_1F
Blstm_305_while_lstm_305_while_cond_450819___redundant_placeholder0F
Blstm_305_while_lstm_305_while_cond_450819___redundant_placeholder1F
Blstm_305_while_lstm_305_while_cond_450819___redundant_placeholder2F
Blstm_305_while_lstm_305_while_cond_450819___redundant_placeholder3
lstm_305_while_identity

lstm_305/while/LessLesslstm_305_while_placeholder,lstm_305_while_less_lstm_305_strided_slice_1*
T0*
_output_shapes
: ]
lstm_305/while/IdentityIdentitylstm_305/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_305_while_identity lstm_305/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
Ğ
¸
)__inference_lstm_303_layer_call_fn_450932
inputs_0
unknown:	
	unknown_0:	d
	unknown_1:	
identity˘StatefulPartitionedCallġ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_303_layer_call_and_return_conditional_losses_448083|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
ÛB
?

lstm_303_while_body_450542.
*lstm_303_while_lstm_303_while_loop_counter4
0lstm_303_while_lstm_303_while_maximum_iterations
lstm_303_while_placeholder 
lstm_303_while_placeholder_1 
lstm_303_while_placeholder_2 
lstm_303_while_placeholder_3-
)lstm_303_while_lstm_303_strided_slice_1_0i
elstm_303_while_tensorarrayv2read_tensorlistgetitem_lstm_303_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_303_while_lstm_cell_72_matmul_readvariableop_resource_0:	Q
>lstm_303_while_lstm_cell_72_matmul_1_readvariableop_resource_0:	dL
=lstm_303_while_lstm_cell_72_biasadd_readvariableop_resource_0:	
lstm_303_while_identity
lstm_303_while_identity_1
lstm_303_while_identity_2
lstm_303_while_identity_3
lstm_303_while_identity_4
lstm_303_while_identity_5+
'lstm_303_while_lstm_303_strided_slice_1g
clstm_303_while_tensorarrayv2read_tensorlistgetitem_lstm_303_tensorarrayunstack_tensorlistfromtensorM
:lstm_303_while_lstm_cell_72_matmul_readvariableop_resource:	O
<lstm_303_while_lstm_cell_72_matmul_1_readvariableop_resource:	dJ
;lstm_303_while_lstm_cell_72_biasadd_readvariableop_resource:	˘2lstm_303/while/lstm_cell_72/BiasAdd/ReadVariableOp˘1lstm_303/while/lstm_cell_72/MatMul/ReadVariableOp˘3lstm_303/while/lstm_cell_72/MatMul_1/ReadVariableOp
@lstm_303/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_303/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_303_while_tensorarrayv2read_tensorlistgetitem_lstm_303_tensorarrayunstack_tensorlistfromtensor_0lstm_303_while_placeholderIlstm_303/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_303/while/lstm_cell_72/MatMul/ReadVariableOpReadVariableOp<lstm_303_while_lstm_cell_72_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_303/while/lstm_cell_72/MatMulMatMul9lstm_303/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_303/while/lstm_cell_72/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_303/while/lstm_cell_72/MatMul_1/ReadVariableOpReadVariableOp>lstm_303_while_lstm_cell_72_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_303/while/lstm_cell_72/MatMul_1MatMullstm_303_while_placeholder_2;lstm_303/while/lstm_cell_72/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_303/while/lstm_cell_72/addAddV2,lstm_303/while/lstm_cell_72/MatMul:product:0.lstm_303/while/lstm_cell_72/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_303/while/lstm_cell_72/BiasAdd/ReadVariableOpReadVariableOp=lstm_303_while_lstm_cell_72_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_303/while/lstm_cell_72/BiasAddBiasAdd#lstm_303/while/lstm_cell_72/add:z:0:lstm_303/while/lstm_cell_72/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_303/while/lstm_cell_72/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_303/while/lstm_cell_72/splitSplit4lstm_303/while/lstm_cell_72/split/split_dim:output:0,lstm_303/while/lstm_cell_72/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_303/while/lstm_cell_72/SigmoidSigmoid*lstm_303/while/lstm_cell_72/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_303/while/lstm_cell_72/Sigmoid_1Sigmoid*lstm_303/while/lstm_cell_72/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_303/while/lstm_cell_72/mulMul)lstm_303/while/lstm_cell_72/Sigmoid_1:y:0lstm_303_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_303/while/lstm_cell_72/ReluRelu*lstm_303/while/lstm_cell_72/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_303/while/lstm_cell_72/mul_1Mul'lstm_303/while/lstm_cell_72/Sigmoid:y:0.lstm_303/while/lstm_cell_72/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_303/while/lstm_cell_72/add_1AddV2#lstm_303/while/lstm_cell_72/mul:z:0%lstm_303/while/lstm_cell_72/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_303/while/lstm_cell_72/Sigmoid_2Sigmoid*lstm_303/while/lstm_cell_72/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_303/while/lstm_cell_72/Relu_1Relu%lstm_303/while/lstm_cell_72/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_303/while/lstm_cell_72/mul_2Mul)lstm_303/while/lstm_cell_72/Sigmoid_2:y:00lstm_303/while/lstm_cell_72/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_303/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_303_while_placeholder_1lstm_303_while_placeholder%lstm_303/while/lstm_cell_72/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_303/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_303/while/addAddV2lstm_303_while_placeholderlstm_303/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_303/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_303/while/add_1AddV2*lstm_303_while_lstm_303_while_loop_counterlstm_303/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_303/while/IdentityIdentitylstm_303/while/add_1:z:0^lstm_303/while/NoOp*
T0*
_output_shapes
: 
lstm_303/while/Identity_1Identity0lstm_303_while_lstm_303_while_maximum_iterations^lstm_303/while/NoOp*
T0*
_output_shapes
: t
lstm_303/while/Identity_2Identitylstm_303/while/add:z:0^lstm_303/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_303/while/Identity_3IdentityClstm_303/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_303/while/NoOp*
T0*
_output_shapes
: 
lstm_303/while/Identity_4Identity%lstm_303/while/lstm_cell_72/mul_2:z:0^lstm_303/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_303/while/Identity_5Identity%lstm_303/while/lstm_cell_72/add_1:z:0^lstm_303/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_303/while/NoOpNoOp3^lstm_303/while/lstm_cell_72/BiasAdd/ReadVariableOp2^lstm_303/while/lstm_cell_72/MatMul/ReadVariableOp4^lstm_303/while/lstm_cell_72/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_303_while_identity lstm_303/while/Identity:output:0"?
lstm_303_while_identity_1"lstm_303/while/Identity_1:output:0"?
lstm_303_while_identity_2"lstm_303/while/Identity_2:output:0"?
lstm_303_while_identity_3"lstm_303/while/Identity_3:output:0"?
lstm_303_while_identity_4"lstm_303/while/Identity_4:output:0"?
lstm_303_while_identity_5"lstm_303/while/Identity_5:output:0"T
'lstm_303_while_lstm_303_strided_slice_1)lstm_303_while_lstm_303_strided_slice_1_0"|
;lstm_303_while_lstm_cell_72_biasadd_readvariableop_resource=lstm_303_while_lstm_cell_72_biasadd_readvariableop_resource_0"~
<lstm_303_while_lstm_cell_72_matmul_1_readvariableop_resource>lstm_303_while_lstm_cell_72_matmul_1_readvariableop_resource_0"z
:lstm_303_while_lstm_cell_72_matmul_readvariableop_resource<lstm_303_while_lstm_cell_72_matmul_readvariableop_resource_0"Ì
clstm_303_while_tensorarrayv2read_tensorlistgetitem_lstm_303_tensorarrayunstack_tensorlistfromtensorelstm_303_while_tensorarrayv2read_tensorlistgetitem_lstm_303_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_303/while/lstm_cell_72/BiasAdd/ReadVariableOp2lstm_303/while/lstm_cell_72/BiasAdd/ReadVariableOp2f
1lstm_303/while/lstm_cell_72/MatMul/ReadVariableOp1lstm_303/while/lstm_cell_72/MatMul/ReadVariableOp2j
3lstm_303/while/lstm_cell_72/MatMul_1/ReadVariableOp3lstm_303/while/lstm_cell_72/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
ş
Ŝ
!__inference__wrapped_model_447742
lstm_303_inputV
Csequential_101_lstm_303_lstm_cell_72_matmul_readvariableop_resource:	X
Esequential_101_lstm_303_lstm_cell_72_matmul_1_readvariableop_resource:	dS
Dsequential_101_lstm_303_lstm_cell_72_biasadd_readvariableop_resource:	V
Csequential_101_lstm_304_lstm_cell_73_matmul_readvariableop_resource:	dÈX
Esequential_101_lstm_304_lstm_cell_73_matmul_1_readvariableop_resource:	2ÈS
Dsequential_101_lstm_304_lstm_cell_73_biasadd_readvariableop_resource:	ÈU
Csequential_101_lstm_305_lstm_cell_74_matmul_readvariableop_resource:2(W
Esequential_101_lstm_305_lstm_cell_74_matmul_1_readvariableop_resource:
(R
Dsequential_101_lstm_305_lstm_cell_74_biasadd_readvariableop_resource:(I
7sequential_101_dense_101_matmul_readvariableop_resource:
F
8sequential_101_dense_101_biasadd_readvariableop_resource:
identity˘/sequential_101/dense_101/BiasAdd/ReadVariableOp˘.sequential_101/dense_101/MatMul/ReadVariableOp˘;sequential_101/lstm_303/lstm_cell_72/BiasAdd/ReadVariableOp˘:sequential_101/lstm_303/lstm_cell_72/MatMul/ReadVariableOp˘<sequential_101/lstm_303/lstm_cell_72/MatMul_1/ReadVariableOp˘sequential_101/lstm_303/while˘;sequential_101/lstm_304/lstm_cell_73/BiasAdd/ReadVariableOp˘:sequential_101/lstm_304/lstm_cell_73/MatMul/ReadVariableOp˘<sequential_101/lstm_304/lstm_cell_73/MatMul_1/ReadVariableOp˘sequential_101/lstm_304/while˘;sequential_101/lstm_305/lstm_cell_74/BiasAdd/ReadVariableOp˘:sequential_101/lstm_305/lstm_cell_74/MatMul/ReadVariableOp˘<sequential_101/lstm_305/lstm_cell_74/MatMul_1/ReadVariableOp˘sequential_101/lstm_305/while[
sequential_101/lstm_303/ShapeShapelstm_303_input*
T0*
_output_shapes
:u
+sequential_101/lstm_303/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_101/lstm_303/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_101/lstm_303/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_101/lstm_303/strided_sliceStridedSlice&sequential_101/lstm_303/Shape:output:04sequential_101/lstm_303/strided_slice/stack:output:06sequential_101/lstm_303/strided_slice/stack_1:output:06sequential_101/lstm_303/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_101/lstm_303/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dğ
$sequential_101/lstm_303/zeros/packedPack.sequential_101/lstm_303/strided_slice:output:0/sequential_101/lstm_303/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_101/lstm_303/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_101/lstm_303/zerosFill-sequential_101/lstm_303/zeros/packed:output:0,sequential_101/lstm_303/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dj
(sequential_101/lstm_303/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dż
&sequential_101/lstm_303/zeros_1/packedPack.sequential_101/lstm_303/strided_slice:output:01sequential_101/lstm_303/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_101/lstm_303/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ş
sequential_101/lstm_303/zeros_1Fill/sequential_101/lstm_303/zeros_1/packed:output:0.sequential_101/lstm_303/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
&sequential_101/lstm_303/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_101/lstm_303/transpose	Transposelstm_303_input/sequential_101/lstm_303/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙t
sequential_101/lstm_303/Shape_1Shape%sequential_101/lstm_303/transpose:y:0*
T0*
_output_shapes
:w
-sequential_101/lstm_303/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_101/lstm_303/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_101/lstm_303/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'sequential_101/lstm_303/strided_slice_1StridedSlice(sequential_101/lstm_303/Shape_1:output:06sequential_101/lstm_303/strided_slice_1/stack:output:08sequential_101/lstm_303/strided_slice_1/stack_1:output:08sequential_101/lstm_303/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_101/lstm_303/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ü
%sequential_101/lstm_303/TensorArrayV2TensorListReserve<sequential_101/lstm_303/TensorArrayV2/element_shape:output:00sequential_101/lstm_303/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Msequential_101/lstm_303/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ¨
?sequential_101/lstm_303/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_101/lstm_303/transpose:y:0Vsequential_101/lstm_303/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒw
-sequential_101/lstm_303/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_101/lstm_303/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_101/lstm_303/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:á
'sequential_101/lstm_303/strided_slice_2StridedSlice%sequential_101/lstm_303/transpose:y:06sequential_101/lstm_303/strided_slice_2/stack:output:08sequential_101/lstm_303/strided_slice_2/stack_1:output:08sequential_101/lstm_303/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskż
:sequential_101/lstm_303/lstm_cell_72/MatMul/ReadVariableOpReadVariableOpCsequential_101_lstm_303_lstm_cell_72_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ŝ
+sequential_101/lstm_303/lstm_cell_72/MatMulMatMul0sequential_101/lstm_303/strided_slice_2:output:0Bsequential_101/lstm_303/lstm_cell_72/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
<sequential_101/lstm_303/lstm_cell_72/MatMul_1/ReadVariableOpReadVariableOpEsequential_101_lstm_303_lstm_cell_72_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ĝ
-sequential_101/lstm_303/lstm_cell_72/MatMul_1MatMul&sequential_101/lstm_303/zeros:output:0Dsequential_101/lstm_303/lstm_cell_72/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ô
(sequential_101/lstm_303/lstm_cell_72/addAddV25sequential_101/lstm_303/lstm_cell_72/MatMul:product:07sequential_101/lstm_303/lstm_cell_72/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙½
;sequential_101/lstm_303/lstm_cell_72/BiasAdd/ReadVariableOpReadVariableOpDsequential_101_lstm_303_lstm_cell_72_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ŭ
,sequential_101/lstm_303/lstm_cell_72/BiasAddBiasAdd,sequential_101/lstm_303/lstm_cell_72/add:z:0Csequential_101/lstm_303/lstm_cell_72/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙v
4sequential_101/lstm_303/lstm_cell_72/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_101/lstm_303/lstm_cell_72/splitSplit=sequential_101/lstm_303/lstm_cell_72/split/split_dim:output:05sequential_101/lstm_303/lstm_cell_72/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
,sequential_101/lstm_303/lstm_cell_72/SigmoidSigmoid3sequential_101/lstm_303/lstm_cell_72/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d 
.sequential_101/lstm_303/lstm_cell_72/Sigmoid_1Sigmoid3sequential_101/lstm_303/lstm_cell_72/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dż
(sequential_101/lstm_303/lstm_cell_72/mulMul2sequential_101/lstm_303/lstm_cell_72/Sigmoid_1:y:0(sequential_101/lstm_303/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
)sequential_101/lstm_303/lstm_cell_72/ReluRelu3sequential_101/lstm_303/lstm_cell_72/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÎ
*sequential_101/lstm_303/lstm_cell_72/mul_1Mul0sequential_101/lstm_303/lstm_cell_72/Sigmoid:y:07sequential_101/lstm_303/lstm_cell_72/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
*sequential_101/lstm_303/lstm_cell_72/add_1AddV2,sequential_101/lstm_303/lstm_cell_72/mul:z:0.sequential_101/lstm_303/lstm_cell_72/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d 
.sequential_101/lstm_303/lstm_cell_72/Sigmoid_2Sigmoid3sequential_101/lstm_303/lstm_cell_72/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
+sequential_101/lstm_303/lstm_cell_72/Relu_1Relu.sequential_101/lstm_303/lstm_cell_72/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÒ
*sequential_101/lstm_303/lstm_cell_72/mul_2Mul2sequential_101/lstm_303/lstm_cell_72/Sigmoid_2:y:09sequential_101/lstm_303/lstm_cell_72/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
5sequential_101/lstm_303/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
'sequential_101/lstm_303/TensorArrayV2_1TensorListReserve>sequential_101/lstm_303/TensorArrayV2_1/element_shape:output:00sequential_101/lstm_303/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ^
sequential_101/lstm_303/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_101/lstm_303/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙l
*sequential_101/lstm_303/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ò
sequential_101/lstm_303/whileWhile3sequential_101/lstm_303/while/loop_counter:output:09sequential_101/lstm_303/while/maximum_iterations:output:0%sequential_101/lstm_303/time:output:00sequential_101/lstm_303/TensorArrayV2_1:handle:0&sequential_101/lstm_303/zeros:output:0(sequential_101/lstm_303/zeros_1:output:00sequential_101/lstm_303/strided_slice_1:output:0Osequential_101/lstm_303/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_101_lstm_303_lstm_cell_72_matmul_readvariableop_resourceEsequential_101_lstm_303_lstm_cell_72_matmul_1_readvariableop_resourceDsequential_101_lstm_303_lstm_cell_72_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_101_lstm_303_while_body_447374*5
cond-R+
)sequential_101_lstm_303_while_cond_447373*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
Hsequential_101/lstm_303/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
:sequential_101/lstm_303/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_101/lstm_303/while:output:3Qsequential_101/lstm_303/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
-sequential_101/lstm_303/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙y
/sequential_101/lstm_303/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_101/lstm_303/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˙
'sequential_101/lstm_303/strided_slice_3StridedSliceCsequential_101/lstm_303/TensorArrayV2Stack/TensorListStack:tensor:06sequential_101/lstm_303/strided_slice_3/stack:output:08sequential_101/lstm_303/strided_slice_3/stack_1:output:08sequential_101/lstm_303/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask}
(sequential_101/lstm_303/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ŝ
#sequential_101/lstm_303/transpose_1	TransposeCsequential_101/lstm_303/TensorArrayV2Stack/TensorListStack:tensor:01sequential_101/lstm_303/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙ds
sequential_101/lstm_303/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_101/lstm_304/ShapeShape'sequential_101/lstm_303/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_101/lstm_304/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_101/lstm_304/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_101/lstm_304/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_101/lstm_304/strided_sliceStridedSlice&sequential_101/lstm_304/Shape:output:04sequential_101/lstm_304/strided_slice/stack:output:06sequential_101/lstm_304/strided_slice/stack_1:output:06sequential_101/lstm_304/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_101/lstm_304/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ğ
$sequential_101/lstm_304/zeros/packedPack.sequential_101/lstm_304/strided_slice:output:0/sequential_101/lstm_304/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_101/lstm_304/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_101/lstm_304/zerosFill-sequential_101/lstm_304/zeros/packed:output:0,sequential_101/lstm_304/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2j
(sequential_101/lstm_304/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ż
&sequential_101/lstm_304/zeros_1/packedPack.sequential_101/lstm_304/strided_slice:output:01sequential_101/lstm_304/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_101/lstm_304/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ş
sequential_101/lstm_304/zeros_1Fill/sequential_101/lstm_304/zeros_1/packed:output:0.sequential_101/lstm_304/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
&sequential_101/lstm_304/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_101/lstm_304/transpose	Transpose'sequential_101/lstm_303/transpose_1:y:0/sequential_101/lstm_304/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
sequential_101/lstm_304/Shape_1Shape%sequential_101/lstm_304/transpose:y:0*
T0*
_output_shapes
:w
-sequential_101/lstm_304/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_101/lstm_304/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_101/lstm_304/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'sequential_101/lstm_304/strided_slice_1StridedSlice(sequential_101/lstm_304/Shape_1:output:06sequential_101/lstm_304/strided_slice_1/stack:output:08sequential_101/lstm_304/strided_slice_1/stack_1:output:08sequential_101/lstm_304/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_101/lstm_304/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ü
%sequential_101/lstm_304/TensorArrayV2TensorListReserve<sequential_101/lstm_304/TensorArrayV2/element_shape:output:00sequential_101/lstm_304/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Msequential_101/lstm_304/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¨
?sequential_101/lstm_304/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_101/lstm_304/transpose:y:0Vsequential_101/lstm_304/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒw
-sequential_101/lstm_304/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_101/lstm_304/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_101/lstm_304/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:á
'sequential_101/lstm_304/strided_slice_2StridedSlice%sequential_101/lstm_304/transpose:y:06sequential_101/lstm_304/strided_slice_2/stack:output:08sequential_101/lstm_304/strided_slice_2/stack_1:output:08sequential_101/lstm_304/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskż
:sequential_101/lstm_304/lstm_cell_73/MatMul/ReadVariableOpReadVariableOpCsequential_101_lstm_304_lstm_cell_73_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0Ŝ
+sequential_101/lstm_304/lstm_cell_73/MatMulMatMul0sequential_101/lstm_304/strided_slice_2:output:0Bsequential_101/lstm_304/lstm_cell_73/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
<sequential_101/lstm_304/lstm_cell_73/MatMul_1/ReadVariableOpReadVariableOpEsequential_101_lstm_304_lstm_cell_73_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ĝ
-sequential_101/lstm_304/lstm_cell_73/MatMul_1MatMul&sequential_101/lstm_304/zeros:output:0Dsequential_101/lstm_304/lstm_cell_73/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÔ
(sequential_101/lstm_304/lstm_cell_73/addAddV25sequential_101/lstm_304/lstm_cell_73/MatMul:product:07sequential_101/lstm_304/lstm_cell_73/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È½
;sequential_101/lstm_304/lstm_cell_73/BiasAdd/ReadVariableOpReadVariableOpDsequential_101_lstm_304_lstm_cell_73_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0Ŭ
,sequential_101/lstm_304/lstm_cell_73/BiasAddBiasAdd,sequential_101/lstm_304/lstm_cell_73/add:z:0Csequential_101/lstm_304/lstm_cell_73/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èv
4sequential_101/lstm_304/lstm_cell_73/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_101/lstm_304/lstm_cell_73/splitSplit=sequential_101/lstm_304/lstm_cell_73/split/split_dim:output:05sequential_101/lstm_304/lstm_cell_73/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
,sequential_101/lstm_304/lstm_cell_73/SigmoidSigmoid3sequential_101/lstm_304/lstm_cell_73/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2 
.sequential_101/lstm_304/lstm_cell_73/Sigmoid_1Sigmoid3sequential_101/lstm_304/lstm_cell_73/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ż
(sequential_101/lstm_304/lstm_cell_73/mulMul2sequential_101/lstm_304/lstm_cell_73/Sigmoid_1:y:0(sequential_101/lstm_304/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
)sequential_101/lstm_304/lstm_cell_73/ReluRelu3sequential_101/lstm_304/lstm_cell_73/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Î
*sequential_101/lstm_304/lstm_cell_73/mul_1Mul0sequential_101/lstm_304/lstm_cell_73/Sigmoid:y:07sequential_101/lstm_304/lstm_cell_73/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
*sequential_101/lstm_304/lstm_cell_73/add_1AddV2,sequential_101/lstm_304/lstm_cell_73/mul:z:0.sequential_101/lstm_304/lstm_cell_73/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2 
.sequential_101/lstm_304/lstm_cell_73/Sigmoid_2Sigmoid3sequential_101/lstm_304/lstm_cell_73/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
+sequential_101/lstm_304/lstm_cell_73/Relu_1Relu.sequential_101/lstm_304/lstm_cell_73/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ò
*sequential_101/lstm_304/lstm_cell_73/mul_2Mul2sequential_101/lstm_304/lstm_cell_73/Sigmoid_2:y:09sequential_101/lstm_304/lstm_cell_73/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
5sequential_101/lstm_304/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
'sequential_101/lstm_304/TensorArrayV2_1TensorListReserve>sequential_101/lstm_304/TensorArrayV2_1/element_shape:output:00sequential_101/lstm_304/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ^
sequential_101/lstm_304/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_101/lstm_304/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙l
*sequential_101/lstm_304/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ò
sequential_101/lstm_304/whileWhile3sequential_101/lstm_304/while/loop_counter:output:09sequential_101/lstm_304/while/maximum_iterations:output:0%sequential_101/lstm_304/time:output:00sequential_101/lstm_304/TensorArrayV2_1:handle:0&sequential_101/lstm_304/zeros:output:0(sequential_101/lstm_304/zeros_1:output:00sequential_101/lstm_304/strided_slice_1:output:0Osequential_101/lstm_304/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_101_lstm_304_lstm_cell_73_matmul_readvariableop_resourceEsequential_101_lstm_304_lstm_cell_73_matmul_1_readvariableop_resourceDsequential_101_lstm_304_lstm_cell_73_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_101_lstm_304_while_body_447513*5
cond-R+
)sequential_101_lstm_304_while_cond_447512*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
Hsequential_101/lstm_304/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
:sequential_101/lstm_304/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_101/lstm_304/while:output:3Qsequential_101/lstm_304/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
-sequential_101/lstm_304/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙y
/sequential_101/lstm_304/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_101/lstm_304/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˙
'sequential_101/lstm_304/strided_slice_3StridedSliceCsequential_101/lstm_304/TensorArrayV2Stack/TensorListStack:tensor:06sequential_101/lstm_304/strided_slice_3/stack:output:08sequential_101/lstm_304/strided_slice_3/stack_1:output:08sequential_101/lstm_304/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask}
(sequential_101/lstm_304/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ŝ
#sequential_101/lstm_304/transpose_1	TransposeCsequential_101/lstm_304/TensorArrayV2Stack/TensorListStack:tensor:01sequential_101/lstm_304/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2s
sequential_101/lstm_304/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_101/lstm_305/ShapeShape'sequential_101/lstm_304/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_101/lstm_305/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_101/lstm_305/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_101/lstm_305/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_101/lstm_305/strided_sliceStridedSlice&sequential_101/lstm_305/Shape:output:04sequential_101/lstm_305/strided_slice/stack:output:06sequential_101/lstm_305/strided_slice/stack_1:output:06sequential_101/lstm_305/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_101/lstm_305/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ğ
$sequential_101/lstm_305/zeros/packedPack.sequential_101/lstm_305/strided_slice:output:0/sequential_101/lstm_305/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_101/lstm_305/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_101/lstm_305/zerosFill-sequential_101/lstm_305/zeros/packed:output:0,sequential_101/lstm_305/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
(sequential_101/lstm_305/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ż
&sequential_101/lstm_305/zeros_1/packedPack.sequential_101/lstm_305/strided_slice:output:01sequential_101/lstm_305/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_101/lstm_305/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ş
sequential_101/lstm_305/zeros_1Fill/sequential_101/lstm_305/zeros_1/packed:output:0.sequential_101/lstm_305/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
&sequential_101/lstm_305/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_101/lstm_305/transpose	Transpose'sequential_101/lstm_304/transpose_1:y:0/sequential_101/lstm_305/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
sequential_101/lstm_305/Shape_1Shape%sequential_101/lstm_305/transpose:y:0*
T0*
_output_shapes
:w
-sequential_101/lstm_305/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_101/lstm_305/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_101/lstm_305/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'sequential_101/lstm_305/strided_slice_1StridedSlice(sequential_101/lstm_305/Shape_1:output:06sequential_101/lstm_305/strided_slice_1/stack:output:08sequential_101/lstm_305/strided_slice_1/stack_1:output:08sequential_101/lstm_305/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_101/lstm_305/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ü
%sequential_101/lstm_305/TensorArrayV2TensorListReserve<sequential_101/lstm_305/TensorArrayV2/element_shape:output:00sequential_101/lstm_305/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Msequential_101/lstm_305/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¨
?sequential_101/lstm_305/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_101/lstm_305/transpose:y:0Vsequential_101/lstm_305/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒw
-sequential_101/lstm_305/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_101/lstm_305/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_101/lstm_305/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:á
'sequential_101/lstm_305/strided_slice_2StridedSlice%sequential_101/lstm_305/transpose:y:06sequential_101/lstm_305/strided_slice_2/stack:output:08sequential_101/lstm_305/strided_slice_2/stack_1:output:08sequential_101/lstm_305/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask?
:sequential_101/lstm_305/lstm_cell_74/MatMul/ReadVariableOpReadVariableOpCsequential_101_lstm_305_lstm_cell_74_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ŭ
+sequential_101/lstm_305/lstm_cell_74/MatMulMatMul0sequential_101/lstm_305/strided_slice_2:output:0Bsequential_101/lstm_305/lstm_cell_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Â
<sequential_101/lstm_305/lstm_cell_74/MatMul_1/ReadVariableOpReadVariableOpEsequential_101_lstm_305_lstm_cell_74_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0×
-sequential_101/lstm_305/lstm_cell_74/MatMul_1MatMul&sequential_101/lstm_305/zeros:output:0Dsequential_101/lstm_305/lstm_cell_74/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ó
(sequential_101/lstm_305/lstm_cell_74/addAddV25sequential_101/lstm_305/lstm_cell_74/MatMul:product:07sequential_101/lstm_305/lstm_cell_74/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(ĵ
;sequential_101/lstm_305/lstm_cell_74/BiasAdd/ReadVariableOpReadVariableOpDsequential_101_lstm_305_lstm_cell_74_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ü
,sequential_101/lstm_305/lstm_cell_74/BiasAddBiasAdd,sequential_101/lstm_305/lstm_cell_74/add:z:0Csequential_101/lstm_305/lstm_cell_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(v
4sequential_101/lstm_305/lstm_cell_74/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_101/lstm_305/lstm_cell_74/splitSplit=sequential_101/lstm_305/lstm_cell_74/split/split_dim:output:05sequential_101/lstm_305/lstm_cell_74/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
,sequential_101/lstm_305/lstm_cell_74/SigmoidSigmoid3sequential_101/lstm_305/lstm_cell_74/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
.sequential_101/lstm_305/lstm_cell_74/Sigmoid_1Sigmoid3sequential_101/lstm_305/lstm_cell_74/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ż
(sequential_101/lstm_305/lstm_cell_74/mulMul2sequential_101/lstm_305/lstm_cell_74/Sigmoid_1:y:0(sequential_101/lstm_305/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

)sequential_101/lstm_305/lstm_cell_74/ReluRelu3sequential_101/lstm_305/lstm_cell_74/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
*sequential_101/lstm_305/lstm_cell_74/mul_1Mul0sequential_101/lstm_305/lstm_cell_74/Sigmoid:y:07sequential_101/lstm_305/lstm_cell_74/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
*sequential_101/lstm_305/lstm_cell_74/add_1AddV2,sequential_101/lstm_305/lstm_cell_74/mul:z:0.sequential_101/lstm_305/lstm_cell_74/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
.sequential_101/lstm_305/lstm_cell_74/Sigmoid_2Sigmoid3sequential_101/lstm_305/lstm_cell_74/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

+sequential_101/lstm_305/lstm_cell_74/Relu_1Relu.sequential_101/lstm_305/lstm_cell_74/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ò
*sequential_101/lstm_305/lstm_cell_74/mul_2Mul2sequential_101/lstm_305/lstm_cell_74/Sigmoid_2:y:09sequential_101/lstm_305/lstm_cell_74/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

5sequential_101/lstm_305/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   
'sequential_101/lstm_305/TensorArrayV2_1TensorListReserve>sequential_101/lstm_305/TensorArrayV2_1/element_shape:output:00sequential_101/lstm_305/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ^
sequential_101/lstm_305/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_101/lstm_305/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙l
*sequential_101/lstm_305/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ò
sequential_101/lstm_305/whileWhile3sequential_101/lstm_305/while/loop_counter:output:09sequential_101/lstm_305/while/maximum_iterations:output:0%sequential_101/lstm_305/time:output:00sequential_101/lstm_305/TensorArrayV2_1:handle:0&sequential_101/lstm_305/zeros:output:0(sequential_101/lstm_305/zeros_1:output:00sequential_101/lstm_305/strided_slice_1:output:0Osequential_101/lstm_305/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_101_lstm_305_lstm_cell_74_matmul_readvariableop_resourceEsequential_101_lstm_305_lstm_cell_74_matmul_1_readvariableop_resourceDsequential_101_lstm_305_lstm_cell_74_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_101_lstm_305_while_body_447652*5
cond-R+
)sequential_101_lstm_305_while_cond_447651*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
Hsequential_101/lstm_305/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   
:sequential_101/lstm_305/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_101/lstm_305/while:output:3Qsequential_101/lstm_305/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0
-sequential_101/lstm_305/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙y
/sequential_101/lstm_305/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_101/lstm_305/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˙
'sequential_101/lstm_305/strided_slice_3StridedSliceCsequential_101/lstm_305/TensorArrayV2Stack/TensorListStack:tensor:06sequential_101/lstm_305/strided_slice_3/stack:output:08sequential_101/lstm_305/strided_slice_3/stack_1:output:08sequential_101/lstm_305/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_mask}
(sequential_101/lstm_305/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ŝ
#sequential_101/lstm_305/transpose_1	TransposeCsequential_101/lstm_305/TensorArrayV2Stack/TensorListStack:tensor:01sequential_101/lstm_305/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
sequential_101/lstm_305/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ĥ
.sequential_101/dense_101/MatMul/ReadVariableOpReadVariableOp7sequential_101_dense_101_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Ċ
sequential_101/dense_101/MatMulMatMul0sequential_101/lstm_305/strided_slice_3:output:06sequential_101/dense_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
/sequential_101/dense_101/BiasAdd/ReadVariableOpReadVariableOp8sequential_101_dense_101_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Á
 sequential_101/dense_101/BiasAddBiasAdd)sequential_101/dense_101/MatMul:product:07sequential_101/dense_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙x
IdentityIdentity)sequential_101/dense_101/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙·
NoOpNoOp0^sequential_101/dense_101/BiasAdd/ReadVariableOp/^sequential_101/dense_101/MatMul/ReadVariableOp<^sequential_101/lstm_303/lstm_cell_72/BiasAdd/ReadVariableOp;^sequential_101/lstm_303/lstm_cell_72/MatMul/ReadVariableOp=^sequential_101/lstm_303/lstm_cell_72/MatMul_1/ReadVariableOp^sequential_101/lstm_303/while<^sequential_101/lstm_304/lstm_cell_73/BiasAdd/ReadVariableOp;^sequential_101/lstm_304/lstm_cell_73/MatMul/ReadVariableOp=^sequential_101/lstm_304/lstm_cell_73/MatMul_1/ReadVariableOp^sequential_101/lstm_304/while<^sequential_101/lstm_305/lstm_cell_74/BiasAdd/ReadVariableOp;^sequential_101/lstm_305/lstm_cell_74/MatMul/ReadVariableOp=^sequential_101/lstm_305/lstm_cell_74/MatMul_1/ReadVariableOp^sequential_101/lstm_305/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2b
/sequential_101/dense_101/BiasAdd/ReadVariableOp/sequential_101/dense_101/BiasAdd/ReadVariableOp2`
.sequential_101/dense_101/MatMul/ReadVariableOp.sequential_101/dense_101/MatMul/ReadVariableOp2z
;sequential_101/lstm_303/lstm_cell_72/BiasAdd/ReadVariableOp;sequential_101/lstm_303/lstm_cell_72/BiasAdd/ReadVariableOp2x
:sequential_101/lstm_303/lstm_cell_72/MatMul/ReadVariableOp:sequential_101/lstm_303/lstm_cell_72/MatMul/ReadVariableOp2|
<sequential_101/lstm_303/lstm_cell_72/MatMul_1/ReadVariableOp<sequential_101/lstm_303/lstm_cell_72/MatMul_1/ReadVariableOp2>
sequential_101/lstm_303/whilesequential_101/lstm_303/while2z
;sequential_101/lstm_304/lstm_cell_73/BiasAdd/ReadVariableOp;sequential_101/lstm_304/lstm_cell_73/BiasAdd/ReadVariableOp2x
:sequential_101/lstm_304/lstm_cell_73/MatMul/ReadVariableOp:sequential_101/lstm_304/lstm_cell_73/MatMul/ReadVariableOp2|
<sequential_101/lstm_304/lstm_cell_73/MatMul_1/ReadVariableOp<sequential_101/lstm_304/lstm_cell_73/MatMul_1/ReadVariableOp2>
sequential_101/lstm_304/whilesequential_101/lstm_304/while2z
;sequential_101/lstm_305/lstm_cell_74/BiasAdd/ReadVariableOp;sequential_101/lstm_305/lstm_cell_74/BiasAdd/ReadVariableOp2x
:sequential_101/lstm_305/lstm_cell_74/MatMul/ReadVariableOp:sequential_101/lstm_305/lstm_cell_74/MatMul/ReadVariableOp2|
<sequential_101/lstm_305/lstm_cell_74/MatMul_1/ReadVariableOp<sequential_101/lstm_305/lstm_cell_74/MatMul_1/ReadVariableOp2>
sequential_101/lstm_305/whilesequential_101/lstm_305/while:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_303_input
µ
?
while_cond_451914
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_451914___redundant_placeholder04
0while_while_cond_451914___redundant_placeholder14
0while_while_cond_451914___redundant_placeholder24
0while_while_cond_451914___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
·
ï
J__inference_sequential_101_layer_call_and_return_conditional_losses_449266

inputs"
lstm_303_448942:	"
lstm_303_448944:	d
lstm_303_448946:	"
lstm_304_449092:	dÈ"
lstm_304_449094:	2È
lstm_304_449096:	È!
lstm_305_449242:2(!
lstm_305_449244:
(
lstm_305_449246:("
dense_101_449260:

dense_101_449262:
identity˘!dense_101/StatefulPartitionedCall˘ lstm_303/StatefulPartitionedCall˘ lstm_304/StatefulPartitionedCall˘ lstm_305/StatefulPartitionedCall
 lstm_303/StatefulPartitionedCallStatefulPartitionedCallinputslstm_303_448942lstm_303_448944lstm_303_448946*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_303_layer_call_and_return_conditional_losses_448941Ş
 lstm_304/StatefulPartitionedCallStatefulPartitionedCall)lstm_303/StatefulPartitionedCall:output:0lstm_304_449092lstm_304_449094lstm_304_449096*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_304_layer_call_and_return_conditional_losses_449091Ĥ
 lstm_305/StatefulPartitionedCallStatefulPartitionedCall)lstm_304/StatefulPartitionedCall:output:0lstm_305_449242lstm_305_449244lstm_305_449246*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_305_layer_call_and_return_conditional_losses_449241
!dense_101/StatefulPartitionedCallStatefulPartitionedCall)lstm_305/StatefulPartitionedCall:output:0dense_101_449260dense_101_449262*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_101_layer_call_and_return_conditional_losses_449259y
IdentityIdentity*dense_101/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ó
NoOpNoOp"^dense_101/StatefulPartitionedCall!^lstm_303/StatefulPartitionedCall!^lstm_304/StatefulPartitionedCall!^lstm_305/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2F
!dense_101/StatefulPartitionedCall!dense_101/StatefulPartitionedCall2D
 lstm_303/StatefulPartitionedCall lstm_303/StatefulPartitionedCall2D
 lstm_304/StatefulPartitionedCall lstm_304/StatefulPartitionedCall2D
 lstm_305/StatefulPartitionedCall lstm_305/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_448856
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_448856___redundant_placeholder04
0while_while_cond_448856___redundant_placeholder14
0while_while_cond_448856___redundant_placeholder24
0while_while_cond_448856___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
µ
?
while_cond_452673
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_452673___redundant_placeholder04
0while_while_cond_452673___redundant_placeholder14
0while_while_cond_452673___redundant_placeholder24
0while_while_cond_452673___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
Ġ

H__inference_lstm_cell_72_layer_call_and_return_conditional_losses_447809

inputs

states
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_namestates:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_namestates
ĉ"
?
while_body_447823
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_72_447847_0:	.
while_lstm_cell_72_447849_0:	d*
while_lstm_cell_72_447851_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_72_447847:	,
while_lstm_cell_72_447849:	d(
while_lstm_cell_72_447851:	˘*while/lstm_cell_72/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_72/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_72_447847_0while_lstm_cell_72_447849_0while_lstm_cell_72_447851_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_72_layer_call_and_return_conditional_losses_447809Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_72/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_72/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_72/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_72/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_72_447847while_lstm_cell_72_447847_0"8
while_lstm_cell_72_447849while_lstm_cell_72_447849_0"8
while_lstm_cell_72_447851while_lstm_cell_72_447851_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_72/StatefulPartitionedCall*while/lstm_cell_72/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
ÛB
?

lstm_304_while_body_450681.
*lstm_304_while_lstm_304_while_loop_counter4
0lstm_304_while_lstm_304_while_maximum_iterations
lstm_304_while_placeholder 
lstm_304_while_placeholder_1 
lstm_304_while_placeholder_2 
lstm_304_while_placeholder_3-
)lstm_304_while_lstm_304_strided_slice_1_0i
elstm_304_while_tensorarrayv2read_tensorlistgetitem_lstm_304_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_304_while_lstm_cell_73_matmul_readvariableop_resource_0:	dÈQ
>lstm_304_while_lstm_cell_73_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_304_while_lstm_cell_73_biasadd_readvariableop_resource_0:	È
lstm_304_while_identity
lstm_304_while_identity_1
lstm_304_while_identity_2
lstm_304_while_identity_3
lstm_304_while_identity_4
lstm_304_while_identity_5+
'lstm_304_while_lstm_304_strided_slice_1g
clstm_304_while_tensorarrayv2read_tensorlistgetitem_lstm_304_tensorarrayunstack_tensorlistfromtensorM
:lstm_304_while_lstm_cell_73_matmul_readvariableop_resource:	dÈO
<lstm_304_while_lstm_cell_73_matmul_1_readvariableop_resource:	2ÈJ
;lstm_304_while_lstm_cell_73_biasadd_readvariableop_resource:	È˘2lstm_304/while/lstm_cell_73/BiasAdd/ReadVariableOp˘1lstm_304/while/lstm_cell_73/MatMul/ReadVariableOp˘3lstm_304/while/lstm_cell_73/MatMul_1/ReadVariableOp
@lstm_304/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_304/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_304_while_tensorarrayv2read_tensorlistgetitem_lstm_304_tensorarrayunstack_tensorlistfromtensor_0lstm_304_while_placeholderIlstm_304/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_304/while/lstm_cell_73/MatMul/ReadVariableOpReadVariableOp<lstm_304_while_lstm_cell_73_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_304/while/lstm_cell_73/MatMulMatMul9lstm_304/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_304/while/lstm_cell_73/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_304/while/lstm_cell_73/MatMul_1/ReadVariableOpReadVariableOp>lstm_304_while_lstm_cell_73_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_304/while/lstm_cell_73/MatMul_1MatMullstm_304_while_placeholder_2;lstm_304/while/lstm_cell_73/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_304/while/lstm_cell_73/addAddV2,lstm_304/while/lstm_cell_73/MatMul:product:0.lstm_304/while/lstm_cell_73/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_304/while/lstm_cell_73/BiasAdd/ReadVariableOpReadVariableOp=lstm_304_while_lstm_cell_73_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_304/while/lstm_cell_73/BiasAddBiasAdd#lstm_304/while/lstm_cell_73/add:z:0:lstm_304/while/lstm_cell_73/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_304/while/lstm_cell_73/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_304/while/lstm_cell_73/splitSplit4lstm_304/while/lstm_cell_73/split/split_dim:output:0,lstm_304/while/lstm_cell_73/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_304/while/lstm_cell_73/SigmoidSigmoid*lstm_304/while/lstm_cell_73/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_304/while/lstm_cell_73/Sigmoid_1Sigmoid*lstm_304/while/lstm_cell_73/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_304/while/lstm_cell_73/mulMul)lstm_304/while/lstm_cell_73/Sigmoid_1:y:0lstm_304_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_304/while/lstm_cell_73/ReluRelu*lstm_304/while/lstm_cell_73/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_304/while/lstm_cell_73/mul_1Mul'lstm_304/while/lstm_cell_73/Sigmoid:y:0.lstm_304/while/lstm_cell_73/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_304/while/lstm_cell_73/add_1AddV2#lstm_304/while/lstm_cell_73/mul:z:0%lstm_304/while/lstm_cell_73/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_304/while/lstm_cell_73/Sigmoid_2Sigmoid*lstm_304/while/lstm_cell_73/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_304/while/lstm_cell_73/Relu_1Relu%lstm_304/while/lstm_cell_73/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_304/while/lstm_cell_73/mul_2Mul)lstm_304/while/lstm_cell_73/Sigmoid_2:y:00lstm_304/while/lstm_cell_73/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_304/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_304_while_placeholder_1lstm_304_while_placeholder%lstm_304/while/lstm_cell_73/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_304/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_304/while/addAddV2lstm_304_while_placeholderlstm_304/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_304/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_304/while/add_1AddV2*lstm_304_while_lstm_304_while_loop_counterlstm_304/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_304/while/IdentityIdentitylstm_304/while/add_1:z:0^lstm_304/while/NoOp*
T0*
_output_shapes
: 
lstm_304/while/Identity_1Identity0lstm_304_while_lstm_304_while_maximum_iterations^lstm_304/while/NoOp*
T0*
_output_shapes
: t
lstm_304/while/Identity_2Identitylstm_304/while/add:z:0^lstm_304/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_304/while/Identity_3IdentityClstm_304/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_304/while/NoOp*
T0*
_output_shapes
: 
lstm_304/while/Identity_4Identity%lstm_304/while/lstm_cell_73/mul_2:z:0^lstm_304/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_304/while/Identity_5Identity%lstm_304/while/lstm_cell_73/add_1:z:0^lstm_304/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_304/while/NoOpNoOp3^lstm_304/while/lstm_cell_73/BiasAdd/ReadVariableOp2^lstm_304/while/lstm_cell_73/MatMul/ReadVariableOp4^lstm_304/while/lstm_cell_73/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_304_while_identity lstm_304/while/Identity:output:0"?
lstm_304_while_identity_1"lstm_304/while/Identity_1:output:0"?
lstm_304_while_identity_2"lstm_304/while/Identity_2:output:0"?
lstm_304_while_identity_3"lstm_304/while/Identity_3:output:0"?
lstm_304_while_identity_4"lstm_304/while/Identity_4:output:0"?
lstm_304_while_identity_5"lstm_304/while/Identity_5:output:0"T
'lstm_304_while_lstm_304_strided_slice_1)lstm_304_while_lstm_304_strided_slice_1_0"|
;lstm_304_while_lstm_cell_73_biasadd_readvariableop_resource=lstm_304_while_lstm_cell_73_biasadd_readvariableop_resource_0"~
<lstm_304_while_lstm_cell_73_matmul_1_readvariableop_resource>lstm_304_while_lstm_cell_73_matmul_1_readvariableop_resource_0"z
:lstm_304_while_lstm_cell_73_matmul_readvariableop_resource<lstm_304_while_lstm_cell_73_matmul_readvariableop_resource_0"Ì
clstm_304_while_tensorarrayv2read_tensorlistgetitem_lstm_304_tensorarrayunstack_tensorlistfromtensorelstm_304_while_tensorarrayv2read_tensorlistgetitem_lstm_304_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_304/while/lstm_cell_73/BiasAdd/ReadVariableOp2lstm_304/while/lstm_cell_73/BiasAdd/ReadVariableOp2f
1lstm_304/while/lstm_cell_73/MatMul/ReadVariableOp1lstm_304/while/lstm_cell_73/MatMul/ReadVariableOp2j
3lstm_304/while/lstm_cell_73/MatMul_1/ReadVariableOp3lstm_304/while/lstm_cell_73/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
8
?
while_body_451629
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_73_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_73_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_73_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_73_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_73_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_73_biasadd_readvariableop_resource:	È˘)while/lstm_cell_73/BiasAdd/ReadVariableOp˘(while/lstm_cell_73/MatMul/ReadVariableOp˘*while/lstm_cell_73/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_73/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_73_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_73/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_73/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_73/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_73_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_73/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_73/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_73/addAddV2#while/lstm_cell_73/MatMul:product:0%while/lstm_cell_73/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_73/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_73_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_73/BiasAddBiasAddwhile/lstm_cell_73/add:z:01while/lstm_cell_73/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_73/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_73/splitSplit+while/lstm_cell_73/split/split_dim:output:0#while/lstm_cell_73/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_73/SigmoidSigmoid!while/lstm_cell_73/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_73/Sigmoid_1Sigmoid!while/lstm_cell_73/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_73/mulMul while/lstm_cell_73/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_73/ReluRelu!while/lstm_cell_73/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_73/mul_1Mulwhile/lstm_cell_73/Sigmoid:y:0%while/lstm_cell_73/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_73/add_1AddV2while/lstm_cell_73/mul:z:0while/lstm_cell_73/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_73/Sigmoid_2Sigmoid!while/lstm_cell_73/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_73/Relu_1Reluwhile/lstm_cell_73/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_73/mul_2Mul while/lstm_cell_73/Sigmoid_2:y:0'while/lstm_cell_73/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_73/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_73/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_73/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_73/BiasAdd/ReadVariableOp)^while/lstm_cell_73/MatMul/ReadVariableOp+^while/lstm_cell_73/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_73_biasadd_readvariableop_resource4while_lstm_cell_73_biasadd_readvariableop_resource_0"l
3while_lstm_cell_73_matmul_1_readvariableop_resource5while_lstm_cell_73_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_73_matmul_readvariableop_resource3while_lstm_cell_73_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_73/BiasAdd/ReadVariableOp)while/lstm_cell_73/BiasAdd/ReadVariableOp2T
(while/lstm_cell_73/MatMul/ReadVariableOp(while/lstm_cell_73/MatMul/ReadVariableOp2X
*while/lstm_cell_73/MatMul_1/ReadVariableOp*while/lstm_cell_73/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
8
?
while_body_449007
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_73_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_73_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_73_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_73_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_73_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_73_biasadd_readvariableop_resource:	È˘)while/lstm_cell_73/BiasAdd/ReadVariableOp˘(while/lstm_cell_73/MatMul/ReadVariableOp˘*while/lstm_cell_73/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_73/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_73_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_73/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_73/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_73/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_73_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_73/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_73/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_73/addAddV2#while/lstm_cell_73/MatMul:product:0%while/lstm_cell_73/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_73/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_73_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_73/BiasAddBiasAddwhile/lstm_cell_73/add:z:01while/lstm_cell_73/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_73/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_73/splitSplit+while/lstm_cell_73/split/split_dim:output:0#while/lstm_cell_73/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_73/SigmoidSigmoid!while/lstm_cell_73/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_73/Sigmoid_1Sigmoid!while/lstm_cell_73/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_73/mulMul while/lstm_cell_73/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_73/ReluRelu!while/lstm_cell_73/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_73/mul_1Mulwhile/lstm_cell_73/Sigmoid:y:0%while/lstm_cell_73/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_73/add_1AddV2while/lstm_cell_73/mul:z:0while/lstm_cell_73/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_73/Sigmoid_2Sigmoid!while/lstm_cell_73/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_73/Relu_1Reluwhile/lstm_cell_73/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_73/mul_2Mul while/lstm_cell_73/Sigmoid_2:y:0'while/lstm_cell_73/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_73/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_73/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_73/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_73/BiasAdd/ReadVariableOp)^while/lstm_cell_73/MatMul/ReadVariableOp+^while/lstm_cell_73/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_73_biasadd_readvariableop_resource4while_lstm_cell_73_biasadd_readvariableop_resource_0"l
3while_lstm_cell_73_matmul_1_readvariableop_resource5while_lstm_cell_73_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_73_matmul_readvariableop_resource3while_lstm_cell_73_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_73/BiasAdd/ReadVariableOp)while/lstm_cell_73/BiasAdd/ReadVariableOp2T
(while/lstm_cell_73/MatMul/ReadVariableOp(while/lstm_cell_73/MatMul/ReadVariableOp2X
*while/lstm_cell_73/MatMul_1/ReadVariableOp*while/lstm_cell_73/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
ĥT
Ô
)sequential_101_lstm_303_while_body_447374L
Hsequential_101_lstm_303_while_sequential_101_lstm_303_while_loop_counterR
Nsequential_101_lstm_303_while_sequential_101_lstm_303_while_maximum_iterations-
)sequential_101_lstm_303_while_placeholder/
+sequential_101_lstm_303_while_placeholder_1/
+sequential_101_lstm_303_while_placeholder_2/
+sequential_101_lstm_303_while_placeholder_3K
Gsequential_101_lstm_303_while_sequential_101_lstm_303_strided_slice_1_0
sequential_101_lstm_303_while_tensorarrayv2read_tensorlistgetitem_sequential_101_lstm_303_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_101_lstm_303_while_lstm_cell_72_matmul_readvariableop_resource_0:	`
Msequential_101_lstm_303_while_lstm_cell_72_matmul_1_readvariableop_resource_0:	d[
Lsequential_101_lstm_303_while_lstm_cell_72_biasadd_readvariableop_resource_0:	*
&sequential_101_lstm_303_while_identity,
(sequential_101_lstm_303_while_identity_1,
(sequential_101_lstm_303_while_identity_2,
(sequential_101_lstm_303_while_identity_3,
(sequential_101_lstm_303_while_identity_4,
(sequential_101_lstm_303_while_identity_5I
Esequential_101_lstm_303_while_sequential_101_lstm_303_strided_slice_1
sequential_101_lstm_303_while_tensorarrayv2read_tensorlistgetitem_sequential_101_lstm_303_tensorarrayunstack_tensorlistfromtensor\
Isequential_101_lstm_303_while_lstm_cell_72_matmul_readvariableop_resource:	^
Ksequential_101_lstm_303_while_lstm_cell_72_matmul_1_readvariableop_resource:	dY
Jsequential_101_lstm_303_while_lstm_cell_72_biasadd_readvariableop_resource:	˘Asequential_101/lstm_303/while/lstm_cell_72/BiasAdd/ReadVariableOp˘@sequential_101/lstm_303/while/lstm_cell_72/MatMul/ReadVariableOp˘Bsequential_101/lstm_303/while/lstm_cell_72/MatMul_1/ReadVariableOp 
Osequential_101/lstm_303/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
Asequential_101/lstm_303/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_101_lstm_303_while_tensorarrayv2read_tensorlistgetitem_sequential_101_lstm_303_tensorarrayunstack_tensorlistfromtensor_0)sequential_101_lstm_303_while_placeholderXsequential_101/lstm_303/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Í
@sequential_101/lstm_303/while/lstm_cell_72/MatMul/ReadVariableOpReadVariableOpKsequential_101_lstm_303_while_lstm_cell_72_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0
1sequential_101/lstm_303/while/lstm_cell_72/MatMulMatMulHsequential_101/lstm_303/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_101/lstm_303/while/lstm_cell_72/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ñ
Bsequential_101/lstm_303/while/lstm_cell_72/MatMul_1/ReadVariableOpReadVariableOpMsequential_101_lstm_303_while_lstm_cell_72_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0é
3sequential_101/lstm_303/while/lstm_cell_72/MatMul_1MatMul+sequential_101_lstm_303_while_placeholder_2Jsequential_101/lstm_303/while/lstm_cell_72/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ĉ
.sequential_101/lstm_303/while/lstm_cell_72/addAddV2;sequential_101/lstm_303/while/lstm_cell_72/MatMul:product:0=sequential_101/lstm_303/while/lstm_cell_72/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ë
Asequential_101/lstm_303/while/lstm_cell_72/BiasAdd/ReadVariableOpReadVariableOpLsequential_101_lstm_303_while_lstm_cell_72_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ï
2sequential_101/lstm_303/while/lstm_cell_72/BiasAddBiasAdd2sequential_101/lstm_303/while/lstm_cell_72/add:z:0Isequential_101/lstm_303/while/lstm_cell_72/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
:sequential_101/lstm_303/while/lstm_cell_72/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :·
0sequential_101/lstm_303/while/lstm_cell_72/splitSplitCsequential_101/lstm_303/while/lstm_cell_72/split/split_dim:output:0;sequential_101/lstm_303/while/lstm_cell_72/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitŞ
2sequential_101/lstm_303/while/lstm_cell_72/SigmoidSigmoid9sequential_101/lstm_303/while/lstm_cell_72/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĴ
4sequential_101/lstm_303/while/lstm_cell_72/Sigmoid_1Sigmoid9sequential_101/lstm_303/while/lstm_cell_72/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÎ
.sequential_101/lstm_303/while/lstm_cell_72/mulMul8sequential_101/lstm_303/while/lstm_cell_72/Sigmoid_1:y:0+sequential_101_lstm_303_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¤
/sequential_101/lstm_303/while/lstm_cell_72/ReluRelu9sequential_101/lstm_303/while/lstm_cell_72/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dà
0sequential_101/lstm_303/while/lstm_cell_72/mul_1Mul6sequential_101/lstm_303/while/lstm_cell_72/Sigmoid:y:0=sequential_101/lstm_303/while/lstm_cell_72/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĠ
0sequential_101/lstm_303/while/lstm_cell_72/add_1AddV22sequential_101/lstm_303/while/lstm_cell_72/mul:z:04sequential_101/lstm_303/while/lstm_cell_72/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĴ
4sequential_101/lstm_303/while/lstm_cell_72/Sigmoid_2Sigmoid9sequential_101/lstm_303/while/lstm_cell_72/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
1sequential_101/lstm_303/while/lstm_cell_72/Relu_1Relu4sequential_101/lstm_303/while/lstm_cell_72/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dä
0sequential_101/lstm_303/while/lstm_cell_72/mul_2Mul8sequential_101/lstm_303/while/lstm_cell_72/Sigmoid_2:y:0?sequential_101/lstm_303/while/lstm_cell_72/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
Bsequential_101/lstm_303/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_101_lstm_303_while_placeholder_1)sequential_101_lstm_303_while_placeholder4sequential_101/lstm_303/while/lstm_cell_72/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒe
#sequential_101/lstm_303/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¤
!sequential_101/lstm_303/while/addAddV2)sequential_101_lstm_303_while_placeholder,sequential_101/lstm_303/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_101/lstm_303/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ç
#sequential_101/lstm_303/while/add_1AddV2Hsequential_101_lstm_303_while_sequential_101_lstm_303_while_loop_counter.sequential_101/lstm_303/while/add_1/y:output:0*
T0*
_output_shapes
: Ħ
&sequential_101/lstm_303/while/IdentityIdentity'sequential_101/lstm_303/while/add_1:z:0#^sequential_101/lstm_303/while/NoOp*
T0*
_output_shapes
: Ê
(sequential_101/lstm_303/while/Identity_1IdentityNsequential_101_lstm_303_while_sequential_101_lstm_303_while_maximum_iterations#^sequential_101/lstm_303/while/NoOp*
T0*
_output_shapes
: Ħ
(sequential_101/lstm_303/while/Identity_2Identity%sequential_101/lstm_303/while/add:z:0#^sequential_101/lstm_303/while/NoOp*
T0*
_output_shapes
: Î
(sequential_101/lstm_303/while/Identity_3IdentityRsequential_101/lstm_303/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_101/lstm_303/while/NoOp*
T0*
_output_shapes
: Á
(sequential_101/lstm_303/while/Identity_4Identity4sequential_101/lstm_303/while/lstm_cell_72/mul_2:z:0#^sequential_101/lstm_303/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÁ
(sequential_101/lstm_303/while/Identity_5Identity4sequential_101/lstm_303/while/lstm_cell_72/add_1:z:0#^sequential_101/lstm_303/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d°
"sequential_101/lstm_303/while/NoOpNoOpB^sequential_101/lstm_303/while/lstm_cell_72/BiasAdd/ReadVariableOpA^sequential_101/lstm_303/while/lstm_cell_72/MatMul/ReadVariableOpC^sequential_101/lstm_303/while/lstm_cell_72/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_101_lstm_303_while_identity/sequential_101/lstm_303/while/Identity:output:0"]
(sequential_101_lstm_303_while_identity_11sequential_101/lstm_303/while/Identity_1:output:0"]
(sequential_101_lstm_303_while_identity_21sequential_101/lstm_303/while/Identity_2:output:0"]
(sequential_101_lstm_303_while_identity_31sequential_101/lstm_303/while/Identity_3:output:0"]
(sequential_101_lstm_303_while_identity_41sequential_101/lstm_303/while/Identity_4:output:0"]
(sequential_101_lstm_303_while_identity_51sequential_101/lstm_303/while/Identity_5:output:0"
Jsequential_101_lstm_303_while_lstm_cell_72_biasadd_readvariableop_resourceLsequential_101_lstm_303_while_lstm_cell_72_biasadd_readvariableop_resource_0"
Ksequential_101_lstm_303_while_lstm_cell_72_matmul_1_readvariableop_resourceMsequential_101_lstm_303_while_lstm_cell_72_matmul_1_readvariableop_resource_0"
Isequential_101_lstm_303_while_lstm_cell_72_matmul_readvariableop_resourceKsequential_101_lstm_303_while_lstm_cell_72_matmul_readvariableop_resource_0"
Esequential_101_lstm_303_while_sequential_101_lstm_303_strided_slice_1Gsequential_101_lstm_303_while_sequential_101_lstm_303_strided_slice_1_0"
sequential_101_lstm_303_while_tensorarrayv2read_tensorlistgetitem_sequential_101_lstm_303_tensorarrayunstack_tensorlistfromtensorsequential_101_lstm_303_while_tensorarrayv2read_tensorlistgetitem_sequential_101_lstm_303_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2
Asequential_101/lstm_303/while/lstm_cell_72/BiasAdd/ReadVariableOpAsequential_101/lstm_303/while/lstm_cell_72/BiasAdd/ReadVariableOp2
@sequential_101/lstm_303/while/lstm_cell_72/MatMul/ReadVariableOp@sequential_101/lstm_303/while/lstm_cell_72/MatMul/ReadVariableOp2
Bsequential_101/lstm_303/while/lstm_cell_72/MatMul_1/ReadVariableOpBsequential_101/lstm_303/while/lstm_cell_72/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
è
ó
-__inference_lstm_cell_74_layer_call_fn_453007

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2˘StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_74_layer_call_and_return_conditional_losses_448655o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"
_user_specified_name
states/1
Ü


/__inference_sequential_101_layer_call_fn_450056

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity˘StatefulPartitionedCallÔ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_101_layer_call_and_return_conditional_losses_449855o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
¤J

D__inference_lstm_303_layer_call_and_return_conditional_losses_449787

inputs>
+lstm_cell_72_matmul_readvariableop_resource:	@
-lstm_cell_72_matmul_1_readvariableop_resource:	d;
,lstm_cell_72_biasadd_readvariableop_resource:	
identity˘#lstm_cell_72/BiasAdd/ReadVariableOp˘"lstm_cell_72/MatMul/ReadVariableOp˘$lstm_cell_72/MatMul_1/ReadVariableOp˘while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
"lstm_cell_72/MatMul/ReadVariableOpReadVariableOp+lstm_cell_72_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_72/MatMulMatMulstrided_slice_2:output:0*lstm_cell_72/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_72/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_72_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_72/MatMul_1MatMulzeros:output:0,lstm_cell_72/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_72/addAddV2lstm_cell_72/MatMul:product:0lstm_cell_72/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_72/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_72_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_72/BiasAddBiasAddlstm_cell_72/add:z:0+lstm_cell_72/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_72/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_72/splitSplit%lstm_cell_72/split/split_dim:output:0lstm_cell_72/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_72/SigmoidSigmoidlstm_cell_72/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_72/Sigmoid_1Sigmoidlstm_cell_72/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_72/mulMullstm_cell_72/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_72/ReluRelulstm_cell_72/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_72/mul_1Mullstm_cell_72/Sigmoid:y:0lstm_cell_72/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_72/add_1AddV2lstm_cell_72/mul:z:0lstm_cell_72/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_72/Sigmoid_2Sigmoidlstm_cell_72/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_72/Relu_1Relulstm_cell_72/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_72/mul_2Mullstm_cell_72/Sigmoid_2:y:0!lstm_cell_72/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_72_matmul_readvariableop_resource-lstm_cell_72_matmul_1_readvariableop_resource,lstm_cell_72_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_449703*
condR
while_cond_449702*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dÀ
NoOpNoOp$^lstm_cell_72/BiasAdd/ReadVariableOp#^lstm_cell_72/MatMul/ReadVariableOp%^lstm_cell_72/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_72/BiasAdd/ReadVariableOp#lstm_cell_72/BiasAdd/ReadVariableOp2H
"lstm_cell_72/MatMul/ReadVariableOp"lstm_cell_72/MatMul/ReadVariableOp2L
$lstm_cell_72/MatMul_1/ReadVariableOp$lstm_cell_72/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8
?
while_body_451915
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_73_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_73_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_73_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_73_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_73_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_73_biasadd_readvariableop_resource:	È˘)while/lstm_cell_73/BiasAdd/ReadVariableOp˘(while/lstm_cell_73/MatMul/ReadVariableOp˘*while/lstm_cell_73/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_73/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_73_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_73/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_73/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_73/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_73_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_73/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_73/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_73/addAddV2#while/lstm_cell_73/MatMul:product:0%while/lstm_cell_73/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_73/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_73_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_73/BiasAddBiasAddwhile/lstm_cell_73/add:z:01while/lstm_cell_73/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_73/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_73/splitSplit+while/lstm_cell_73/split/split_dim:output:0#while/lstm_cell_73/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_73/SigmoidSigmoid!while/lstm_cell_73/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_73/Sigmoid_1Sigmoid!while/lstm_cell_73/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_73/mulMul while/lstm_cell_73/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_73/ReluRelu!while/lstm_cell_73/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_73/mul_1Mulwhile/lstm_cell_73/Sigmoid:y:0%while/lstm_cell_73/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_73/add_1AddV2while/lstm_cell_73/mul:z:0while/lstm_cell_73/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_73/Sigmoid_2Sigmoid!while/lstm_cell_73/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_73/Relu_1Reluwhile/lstm_cell_73/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_73/mul_2Mul while/lstm_cell_73/Sigmoid_2:y:0'while/lstm_cell_73/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_73/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_73/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_73/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_73/BiasAdd/ReadVariableOp)^while/lstm_cell_73/MatMul/ReadVariableOp+^while/lstm_cell_73/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_73_biasadd_readvariableop_resource4while_lstm_cell_73_biasadd_readvariableop_resource_0"l
3while_lstm_cell_73_matmul_1_readvariableop_resource5while_lstm_cell_73_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_73_matmul_readvariableop_resource3while_lstm_cell_73_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_73/BiasAdd/ReadVariableOp)while/lstm_cell_73/BiasAdd/ReadVariableOp2T
(while/lstm_cell_73/MatMul/ReadVariableOp(while/lstm_cell_73/MatMul/ReadVariableOp2X
*while/lstm_cell_73/MatMul_1/ReadVariableOp*while/lstm_cell_73/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
: 
²

÷
lstm_304_while_cond_450253.
*lstm_304_while_lstm_304_while_loop_counter4
0lstm_304_while_lstm_304_while_maximum_iterations
lstm_304_while_placeholder 
lstm_304_while_placeholder_1 
lstm_304_while_placeholder_2 
lstm_304_while_placeholder_30
,lstm_304_while_less_lstm_304_strided_slice_1F
Blstm_304_while_lstm_304_while_cond_450253___redundant_placeholder0F
Blstm_304_while_lstm_304_while_cond_450253___redundant_placeholder1F
Blstm_304_while_lstm_304_while_cond_450253___redundant_placeholder2F
Blstm_304_while_lstm_304_while_cond_450253___redundant_placeholder3
lstm_304_while_identity

lstm_304/while/LessLesslstm_304_while_placeholder,lstm_304_while_less_lstm_304_strided_slice_1*
T0*
_output_shapes
: ]
lstm_304/while/IdentityIdentitylstm_304/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_304_while_identity lstm_304/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2:

_output_shapes
: :

_output_shapes
:
˙7
Ê
while_body_449157
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_74_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_74_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_74_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_74_matmul_readvariableop_resource:2(E
3while_lstm_cell_74_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_74_biasadd_readvariableop_resource:(˘)while/lstm_cell_74/BiasAdd/ReadVariableOp˘(while/lstm_cell_74/MatMul/ReadVariableOp˘*while/lstm_cell_74/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_74/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_74_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_74/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_74/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_74_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_74/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_74/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_74/addAddV2#while/lstm_cell_74/MatMul:product:0%while/lstm_cell_74/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_74/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_74_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_74/BiasAddBiasAddwhile/lstm_cell_74/add:z:01while/lstm_cell_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_74/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_74/splitSplit+while/lstm_cell_74/split/split_dim:output:0#while/lstm_cell_74/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_74/SigmoidSigmoid!while/lstm_cell_74/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_74/Sigmoid_1Sigmoid!while/lstm_cell_74/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_74/mulMul while/lstm_cell_74/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_74/ReluRelu!while/lstm_cell_74/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_74/mul_1Mulwhile/lstm_cell_74/Sigmoid:y:0%while/lstm_cell_74/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_74/add_1AddV2while/lstm_cell_74/mul:z:0while/lstm_cell_74/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_74/Sigmoid_2Sigmoid!while/lstm_cell_74/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_74/Relu_1Reluwhile/lstm_cell_74/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_74/mul_2Mul while/lstm_cell_74/Sigmoid_2:y:0'while/lstm_cell_74/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_74/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_74/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_74/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_74/BiasAdd/ReadVariableOp)^while/lstm_cell_74/MatMul/ReadVariableOp+^while/lstm_cell_74/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_74_biasadd_readvariableop_resource4while_lstm_cell_74_biasadd_readvariableop_resource_0"l
3while_lstm_cell_74_matmul_1_readvariableop_resource5while_lstm_cell_74_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_74_matmul_readvariableop_resource3while_lstm_cell_74_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_74/BiasAdd/ReadVariableOp)while/lstm_cell_74/BiasAdd/ReadVariableOp2T
(while/lstm_cell_74/MatMul/ReadVariableOp(while/lstm_cell_74/MatMul/ReadVariableOp2X
*while/lstm_cell_74/MatMul_1/ReadVariableOp*while/lstm_cell_74/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
²

÷
lstm_305_while_cond_450392.
*lstm_305_while_lstm_305_while_loop_counter4
0lstm_305_while_lstm_305_while_maximum_iterations
lstm_305_while_placeholder 
lstm_305_while_placeholder_1 
lstm_305_while_placeholder_2 
lstm_305_while_placeholder_30
,lstm_305_while_less_lstm_305_strided_slice_1F
Blstm_305_while_lstm_305_while_cond_450392___redundant_placeholder0F
Blstm_305_while_lstm_305_while_cond_450392___redundant_placeholder1F
Blstm_305_while_lstm_305_while_cond_450392___redundant_placeholder2F
Blstm_305_while_lstm_305_while_cond_450392___redundant_placeholder3
lstm_305_while_identity

lstm_305/while/LessLesslstm_305_while_placeholder,lstm_305_while_less_lstm_305_strided_slice_1*
T0*
_output_shapes
: ]
lstm_305/while/IdentityIdentitylstm_305/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_305_while_identity lstm_305/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
:
Ğ
¸
)__inference_lstm_304_layer_call_fn_451548
inputs_0
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity˘StatefulPartitionedCallġ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_304_layer_call_and_return_conditional_losses_448433|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
à"
Ŭ
while_body_448523
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_74_448547_0:2(-
while_lstm_cell_74_448549_0:
()
while_lstm_cell_74_448551_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_74_448547:2(+
while_lstm_cell_74_448549:
('
while_lstm_cell_74_448551:(˘*while/lstm_cell_74/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_74/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_74_448547_0while_lstm_cell_74_448549_0while_lstm_cell_74_448551_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_74_layer_call_and_return_conditional_losses_448509Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_74/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_74/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_74/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_74/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_74_448547while_lstm_cell_74_448547_0"8
while_lstm_cell_74_448549while_lstm_cell_74_448549_0"8
while_lstm_cell_74_448551while_lstm_cell_74_448551_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_74/StatefulPartitionedCall*while/lstm_cell_74/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
Ë

H__inference_lstm_cell_74_layer_call_and_return_conditional_losses_448655

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 
_user_specified_namestates:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 
_user_specified_namestates
˙7
Ê
while_body_452245
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_74_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_74_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_74_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_74_matmul_readvariableop_resource:2(E
3while_lstm_cell_74_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_74_biasadd_readvariableop_resource:(˘)while/lstm_cell_74/BiasAdd/ReadVariableOp˘(while/lstm_cell_74/MatMul/ReadVariableOp˘*while/lstm_cell_74/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_74/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_74_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_74/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_74/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_74_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_74/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_74/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_74/addAddV2#while/lstm_cell_74/MatMul:product:0%while/lstm_cell_74/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_74/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_74_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_74/BiasAddBiasAddwhile/lstm_cell_74/add:z:01while/lstm_cell_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_74/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_74/splitSplit+while/lstm_cell_74/split/split_dim:output:0#while/lstm_cell_74/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_74/SigmoidSigmoid!while/lstm_cell_74/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_74/Sigmoid_1Sigmoid!while/lstm_cell_74/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_74/mulMul while/lstm_cell_74/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_74/ReluRelu!while/lstm_cell_74/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_74/mul_1Mulwhile/lstm_cell_74/Sigmoid:y:0%while/lstm_cell_74/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_74/add_1AddV2while/lstm_cell_74/mul:z:0while/lstm_cell_74/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_74/Sigmoid_2Sigmoid!while/lstm_cell_74/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_74/Relu_1Reluwhile/lstm_cell_74/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_74/mul_2Mul while/lstm_cell_74/Sigmoid_2:y:0'while/lstm_cell_74/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_74/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_74/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_74/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_74/BiasAdd/ReadVariableOp)^while/lstm_cell_74/MatMul/ReadVariableOp+^while/lstm_cell_74/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_74_biasadd_readvariableop_resource4while_lstm_cell_74_biasadd_readvariableop_resource_0"l
3while_lstm_cell_74_matmul_1_readvariableop_resource5while_lstm_cell_74_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_74_matmul_readvariableop_resource3while_lstm_cell_74_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_74/BiasAdd/ReadVariableOp)while/lstm_cell_74/BiasAdd/ReadVariableOp2T
(while/lstm_cell_74/MatMul/ReadVariableOp(while/lstm_cell_74/MatMul/ReadVariableOp2X
*while/lstm_cell_74/MatMul_1/ReadVariableOp*while/lstm_cell_74/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
µ
?
while_cond_447822
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_447822___redundant_placeholder04
0while_while_cond_447822___redundant_placeholder14
0while_while_cond_447822___redundant_placeholder24
0while_while_cond_447822___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
:
Ġ

H__inference_lstm_cell_73_layer_call_and_return_conditional_losses_448159

inputs

states
states_11
matmul_readvariableop_resource:	dÈ3
 matmul_1_readvariableop_resource:	2È.
biasadd_readvariableop_resource:	È
identity

identity_1

identity_2˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ès
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĥ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_namestates:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_namestates
˙7
Ê
while_body_452531
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_74_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_74_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_74_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_74_matmul_readvariableop_resource:2(E
3while_lstm_cell_74_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_74_biasadd_readvariableop_resource:(˘)while/lstm_cell_74/BiasAdd/ReadVariableOp˘(while/lstm_cell_74/MatMul/ReadVariableOp˘*while/lstm_cell_74/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_74/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_74_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_74/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_74/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_74_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_74/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_74/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_74/addAddV2#while/lstm_cell_74/MatMul:product:0%while/lstm_cell_74/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_74/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_74_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_74/BiasAddBiasAddwhile/lstm_cell_74/add:z:01while/lstm_cell_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_74/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_74/splitSplit+while/lstm_cell_74/split/split_dim:output:0#while/lstm_cell_74/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_74/SigmoidSigmoid!while/lstm_cell_74/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_74/Sigmoid_1Sigmoid!while/lstm_cell_74/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_74/mulMul while/lstm_cell_74/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_74/ReluRelu!while/lstm_cell_74/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_74/mul_1Mulwhile/lstm_cell_74/Sigmoid:y:0%while/lstm_cell_74/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_74/add_1AddV2while/lstm_cell_74/mul:z:0while/lstm_cell_74/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_74/Sigmoid_2Sigmoid!while/lstm_cell_74/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_74/Relu_1Reluwhile/lstm_cell_74/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_74/mul_2Mul while/lstm_cell_74/Sigmoid_2:y:0'while/lstm_cell_74/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_74/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_74/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_74/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_74/BiasAdd/ReadVariableOp)^while/lstm_cell_74/MatMul/ReadVariableOp+^while/lstm_cell_74/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_74_biasadd_readvariableop_resource4while_lstm_cell_74_biasadd_readvariableop_resource_0"l
3while_lstm_cell_74_matmul_1_readvariableop_resource5while_lstm_cell_74_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_74_matmul_readvariableop_resource3while_lstm_cell_74_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_74/BiasAdd/ReadVariableOp)while/lstm_cell_74/BiasAdd/ReadVariableOp2T
(while/lstm_cell_74/MatMul/ReadVariableOp(while/lstm_cell_74/MatMul/ReadVariableOp2X
*while/lstm_cell_74/MatMul_1/ReadVariableOp*while/lstm_cell_74/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
ë
ö
-__inference_lstm_cell_72_layer_call_fn_452794

inputs
states_0
states_1
unknown:	
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2˘StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_72_layer_call_and_return_conditional_losses_447809o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
states/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
states/1
âJ

D__inference_lstm_304_layer_call_and_return_conditional_losses_451856
inputs_0>
+lstm_cell_73_matmul_readvariableop_resource:	dÈ@
-lstm_cell_73_matmul_1_readvariableop_resource:	2È;
,lstm_cell_73_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_73/BiasAdd/ReadVariableOp˘"lstm_cell_73/MatMul/ReadVariableOp˘$lstm_cell_73/MatMul_1/ReadVariableOp˘while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask
"lstm_cell_73/MatMul/ReadVariableOpReadVariableOp+lstm_cell_73_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_73/MatMulMatMulstrided_slice_2:output:0*lstm_cell_73/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_73/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_73_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_73/MatMul_1MatMulzeros:output:0,lstm_cell_73/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_73/addAddV2lstm_cell_73/MatMul:product:0lstm_cell_73/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_73/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_73_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_73/BiasAddBiasAddlstm_cell_73/add:z:0+lstm_cell_73/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_73/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_73/splitSplit%lstm_cell_73/split/split_dim:output:0lstm_cell_73/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_73/SigmoidSigmoidlstm_cell_73/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_73/Sigmoid_1Sigmoidlstm_cell_73/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_73/mulMullstm_cell_73/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_73/ReluRelulstm_cell_73/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_73/mul_1Mullstm_cell_73/Sigmoid:y:0lstm_cell_73/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_73/add_1AddV2lstm_cell_73/mul:z:0lstm_cell_73/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_73/Sigmoid_2Sigmoidlstm_cell_73/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_73/Relu_1Relulstm_cell_73/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_73/mul_2Mullstm_cell_73/Sigmoid_2:y:0!lstm_cell_73/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_73_matmul_readvariableop_resource-lstm_cell_73_matmul_1_readvariableop_resource,lstm_cell_73_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_451772*
condR
while_cond_451771*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2À
NoOpNoOp$^lstm_cell_73/BiasAdd/ReadVariableOp#^lstm_cell_73/MatMul/ReadVariableOp%^lstm_cell_73/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_73/BiasAdd/ReadVariableOp#lstm_cell_73/BiasAdd/ReadVariableOp2H
"lstm_cell_73/MatMul/ReadVariableOp"lstm_cell_73/MatMul/ReadVariableOp2L
$lstm_cell_73/MatMul_1/ReadVariableOp$lstm_cell_73/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
Ï
÷
J__inference_sequential_101_layer_call_and_return_conditional_losses_449967
lstm_303_input"
lstm_303_449940:	"
lstm_303_449942:	d
lstm_303_449944:	"
lstm_304_449947:	dÈ"
lstm_304_449949:	2È
lstm_304_449951:	È!
lstm_305_449954:2(!
lstm_305_449956:
(
lstm_305_449958:("
dense_101_449961:

dense_101_449963:
identity˘!dense_101/StatefulPartitionedCall˘ lstm_303/StatefulPartitionedCall˘ lstm_304/StatefulPartitionedCall˘ lstm_305/StatefulPartitionedCall
 lstm_303/StatefulPartitionedCallStatefulPartitionedCalllstm_303_inputlstm_303_449940lstm_303_449942lstm_303_449944*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_303_layer_call_and_return_conditional_losses_449787Ş
 lstm_304/StatefulPartitionedCallStatefulPartitionedCall)lstm_303/StatefulPartitionedCall:output:0lstm_304_449947lstm_304_449949lstm_304_449951*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_304_layer_call_and_return_conditional_losses_449622Ĥ
 lstm_305/StatefulPartitionedCallStatefulPartitionedCall)lstm_304/StatefulPartitionedCall:output:0lstm_305_449954lstm_305_449956lstm_305_449958*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_305_layer_call_and_return_conditional_losses_449457
!dense_101/StatefulPartitionedCallStatefulPartitionedCall)lstm_305/StatefulPartitionedCall:output:0dense_101_449961dense_101_449963*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_101_layer_call_and_return_conditional_losses_449259y
IdentityIdentity*dense_101/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ó
NoOpNoOp"^dense_101/StatefulPartitionedCall!^lstm_303/StatefulPartitionedCall!^lstm_304/StatefulPartitionedCall!^lstm_305/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2F
!dense_101/StatefulPartitionedCall!dense_101/StatefulPartitionedCall2D
 lstm_303/StatefulPartitionedCall lstm_303/StatefulPartitionedCall2D
 lstm_304/StatefulPartitionedCall lstm_304/StatefulPartitionedCall2D
 lstm_305/StatefulPartitionedCall lstm_305/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_303_input
ÎB
ê

lstm_305_while_body_450393.
*lstm_305_while_lstm_305_while_loop_counter4
0lstm_305_while_lstm_305_while_maximum_iterations
lstm_305_while_placeholder 
lstm_305_while_placeholder_1 
lstm_305_while_placeholder_2 
lstm_305_while_placeholder_3-
)lstm_305_while_lstm_305_strided_slice_1_0i
elstm_305_while_tensorarrayv2read_tensorlistgetitem_lstm_305_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_305_while_lstm_cell_74_matmul_readvariableop_resource_0:2(P
>lstm_305_while_lstm_cell_74_matmul_1_readvariableop_resource_0:
(K
=lstm_305_while_lstm_cell_74_biasadd_readvariableop_resource_0:(
lstm_305_while_identity
lstm_305_while_identity_1
lstm_305_while_identity_2
lstm_305_while_identity_3
lstm_305_while_identity_4
lstm_305_while_identity_5+
'lstm_305_while_lstm_305_strided_slice_1g
clstm_305_while_tensorarrayv2read_tensorlistgetitem_lstm_305_tensorarrayunstack_tensorlistfromtensorL
:lstm_305_while_lstm_cell_74_matmul_readvariableop_resource:2(N
<lstm_305_while_lstm_cell_74_matmul_1_readvariableop_resource:
(I
;lstm_305_while_lstm_cell_74_biasadd_readvariableop_resource:(˘2lstm_305/while/lstm_cell_74/BiasAdd/ReadVariableOp˘1lstm_305/while/lstm_cell_74/MatMul/ReadVariableOp˘3lstm_305/while/lstm_cell_74/MatMul_1/ReadVariableOp
@lstm_305/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_305/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_305_while_tensorarrayv2read_tensorlistgetitem_lstm_305_tensorarrayunstack_tensorlistfromtensor_0lstm_305_while_placeholderIlstm_305/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_305/while/lstm_cell_74/MatMul/ReadVariableOpReadVariableOp<lstm_305_while_lstm_cell_74_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_305/while/lstm_cell_74/MatMulMatMul9lstm_305/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_305/while/lstm_cell_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_305/while/lstm_cell_74/MatMul_1/ReadVariableOpReadVariableOp>lstm_305_while_lstm_cell_74_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_305/while/lstm_cell_74/MatMul_1MatMullstm_305_while_placeholder_2;lstm_305/while/lstm_cell_74/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_305/while/lstm_cell_74/addAddV2,lstm_305/while/lstm_cell_74/MatMul:product:0.lstm_305/while/lstm_cell_74/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_305/while/lstm_cell_74/BiasAdd/ReadVariableOpReadVariableOp=lstm_305_while_lstm_cell_74_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_305/while/lstm_cell_74/BiasAddBiasAdd#lstm_305/while/lstm_cell_74/add:z:0:lstm_305/while/lstm_cell_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_305/while/lstm_cell_74/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_305/while/lstm_cell_74/splitSplit4lstm_305/while/lstm_cell_74/split/split_dim:output:0,lstm_305/while/lstm_cell_74/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_305/while/lstm_cell_74/SigmoidSigmoid*lstm_305/while/lstm_cell_74/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_305/while/lstm_cell_74/Sigmoid_1Sigmoid*lstm_305/while/lstm_cell_74/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_305/while/lstm_cell_74/mulMul)lstm_305/while/lstm_cell_74/Sigmoid_1:y:0lstm_305_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_305/while/lstm_cell_74/ReluRelu*lstm_305/while/lstm_cell_74/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_305/while/lstm_cell_74/mul_1Mul'lstm_305/while/lstm_cell_74/Sigmoid:y:0.lstm_305/while/lstm_cell_74/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_305/while/lstm_cell_74/add_1AddV2#lstm_305/while/lstm_cell_74/mul:z:0%lstm_305/while/lstm_cell_74/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_305/while/lstm_cell_74/Sigmoid_2Sigmoid*lstm_305/while/lstm_cell_74/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_305/while/lstm_cell_74/Relu_1Relu%lstm_305/while/lstm_cell_74/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_305/while/lstm_cell_74/mul_2Mul)lstm_305/while/lstm_cell_74/Sigmoid_2:y:00lstm_305/while/lstm_cell_74/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_305/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_305_while_placeholder_1lstm_305_while_placeholder%lstm_305/while/lstm_cell_74/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_305/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_305/while/addAddV2lstm_305_while_placeholderlstm_305/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_305/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_305/while/add_1AddV2*lstm_305_while_lstm_305_while_loop_counterlstm_305/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_305/while/IdentityIdentitylstm_305/while/add_1:z:0^lstm_305/while/NoOp*
T0*
_output_shapes
: 
lstm_305/while/Identity_1Identity0lstm_305_while_lstm_305_while_maximum_iterations^lstm_305/while/NoOp*
T0*
_output_shapes
: t
lstm_305/while/Identity_2Identitylstm_305/while/add:z:0^lstm_305/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_305/while/Identity_3IdentityClstm_305/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_305/while/NoOp*
T0*
_output_shapes
: 
lstm_305/while/Identity_4Identity%lstm_305/while/lstm_cell_74/mul_2:z:0^lstm_305/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_305/while/Identity_5Identity%lstm_305/while/lstm_cell_74/add_1:z:0^lstm_305/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_305/while/NoOpNoOp3^lstm_305/while/lstm_cell_74/BiasAdd/ReadVariableOp2^lstm_305/while/lstm_cell_74/MatMul/ReadVariableOp4^lstm_305/while/lstm_cell_74/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_305_while_identity lstm_305/while/Identity:output:0"?
lstm_305_while_identity_1"lstm_305/while/Identity_1:output:0"?
lstm_305_while_identity_2"lstm_305/while/Identity_2:output:0"?
lstm_305_while_identity_3"lstm_305/while/Identity_3:output:0"?
lstm_305_while_identity_4"lstm_305/while/Identity_4:output:0"?
lstm_305_while_identity_5"lstm_305/while/Identity_5:output:0"T
'lstm_305_while_lstm_305_strided_slice_1)lstm_305_while_lstm_305_strided_slice_1_0"|
;lstm_305_while_lstm_cell_74_biasadd_readvariableop_resource=lstm_305_while_lstm_cell_74_biasadd_readvariableop_resource_0"~
<lstm_305_while_lstm_cell_74_matmul_1_readvariableop_resource>lstm_305_while_lstm_cell_74_matmul_1_readvariableop_resource_0"z
:lstm_305_while_lstm_cell_74_matmul_readvariableop_resource<lstm_305_while_lstm_cell_74_matmul_readvariableop_resource_0"Ì
clstm_305_while_tensorarrayv2read_tensorlistgetitem_lstm_305_tensorarrayunstack_tensorlistfromtensorelstm_305_while_tensorarrayv2read_tensorlistgetitem_lstm_305_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_305/while/lstm_cell_74/BiasAdd/ReadVariableOp2lstm_305/while/lstm_cell_74/BiasAdd/ReadVariableOp2f
1lstm_305/while/lstm_cell_74/MatMul/ReadVariableOp1lstm_305/while/lstm_cell_74/MatMul/ReadVariableOp2j
3lstm_305/while/lstm_cell_74/MatMul_1/ReadVariableOp3lstm_305/while/lstm_cell_74/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
:

_output_shapes
: :

_output_shapes
: 
8
?
while_body_451013
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_72_matmul_readvariableop_resource_0:	H
5while_lstm_cell_72_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_72_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_72_matmul_readvariableop_resource:	F
3while_lstm_cell_72_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_72_biasadd_readvariableop_resource:	˘)while/lstm_cell_72/BiasAdd/ReadVariableOp˘(while/lstm_cell_72/MatMul/ReadVariableOp˘*while/lstm_cell_72/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_72/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_72_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_72/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_72/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_72/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_72_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_72/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_72/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_72/addAddV2#while/lstm_cell_72/MatMul:product:0%while/lstm_cell_72/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_72/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_72_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_72/BiasAddBiasAddwhile/lstm_cell_72/add:z:01while/lstm_cell_72/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_72/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_72/splitSplit+while/lstm_cell_72/split/split_dim:output:0#while/lstm_cell_72/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_72/SigmoidSigmoid!while/lstm_cell_72/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_72/Sigmoid_1Sigmoid!while/lstm_cell_72/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_72/mulMul while/lstm_cell_72/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_72/ReluRelu!while/lstm_cell_72/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_72/mul_1Mulwhile/lstm_cell_72/Sigmoid:y:0%while/lstm_cell_72/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_72/add_1AddV2while/lstm_cell_72/mul:z:0while/lstm_cell_72/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_72/Sigmoid_2Sigmoid!while/lstm_cell_72/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_72/Relu_1Reluwhile/lstm_cell_72/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_72/mul_2Mul while/lstm_cell_72/Sigmoid_2:y:0'while/lstm_cell_72/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_72/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_72/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_72/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_72/BiasAdd/ReadVariableOp)^while/lstm_cell_72/MatMul/ReadVariableOp+^while/lstm_cell_72/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_72_biasadd_readvariableop_resource4while_lstm_cell_72_biasadd_readvariableop_resource_0"l
3while_lstm_cell_72_matmul_1_readvariableop_resource5while_lstm_cell_72_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_72_matmul_readvariableop_resource3while_lstm_cell_72_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_72/BiasAdd/ReadVariableOp)while/lstm_cell_72/BiasAdd/ReadVariableOp2T
(while/lstm_cell_72/MatMul/ReadVariableOp(while/lstm_cell_72/MatMul/ReadVariableOp2X
*while/lstm_cell_72/MatMul_1/ReadVariableOp*while/lstm_cell_72/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙d:

_output_shapes
: :

_output_shapes
: 
8

D__inference_lstm_304_layer_call_and_return_conditional_losses_448433

inputs&
lstm_cell_73_448351:	dÈ&
lstm_cell_73_448353:	2È"
lstm_cell_73_448355:	È
identity˘$lstm_cell_73/StatefulPartitionedCall˘while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskġ
$lstm_cell_73/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_73_448351lstm_cell_73_448353lstm_cell_73_448355*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_73_layer_call_and_return_conditional_losses_448305n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_73_448351lstm_cell_73_448353lstm_cell_73_448355*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_448364*
condR
while_cond_448363*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2u
NoOpNoOp%^lstm_cell_73/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_73/StatefulPartitionedCall$lstm_cell_73/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
ó¤

"__inference__traced_restore_453344
file_prefix3
!assignvariableop_dense_101_kernel:
/
!assignvariableop_1_dense_101_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_303_lstm_cell_303_kernel:	M
:assignvariableop_8_lstm_303_lstm_cell_303_recurrent_kernel:	d=
.assignvariableop_9_lstm_303_lstm_cell_303_bias:	D
1assignvariableop_10_lstm_304_lstm_cell_304_kernel:	dÈN
;assignvariableop_11_lstm_304_lstm_cell_304_recurrent_kernel:	2È>
/assignvariableop_12_lstm_304_lstm_cell_304_bias:	ÈC
1assignvariableop_13_lstm_305_lstm_cell_305_kernel:2(M
;assignvariableop_14_lstm_305_lstm_cell_305_recurrent_kernel:
(=
/assignvariableop_15_lstm_305_lstm_cell_305_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_101_kernel_m:
7
)assignvariableop_19_adam_dense_101_bias_m:K
8assignvariableop_20_adam_lstm_303_lstm_cell_303_kernel_m:	U
Bassignvariableop_21_adam_lstm_303_lstm_cell_303_recurrent_kernel_m:	dE
6assignvariableop_22_adam_lstm_303_lstm_cell_303_bias_m:	K
8assignvariableop_23_adam_lstm_304_lstm_cell_304_kernel_m:	dÈU
Bassignvariableop_24_adam_lstm_304_lstm_cell_304_recurrent_kernel_m:	2ÈE
6assignvariableop_25_adam_lstm_304_lstm_cell_304_bias_m:	ÈJ
8assignvariableop_26_adam_lstm_305_lstm_cell_305_kernel_m:2(T
Bassignvariableop_27_adam_lstm_305_lstm_cell_305_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_305_lstm_cell_305_bias_m:(=
+assignvariableop_29_adam_dense_101_kernel_v:
7
)assignvariableop_30_adam_dense_101_bias_v:K
8assignvariableop_31_adam_lstm_303_lstm_cell_303_kernel_v:	U
Bassignvariableop_32_adam_lstm_303_lstm_cell_303_recurrent_kernel_v:	dE
6assignvariableop_33_adam_lstm_303_lstm_cell_303_bias_v:	K
8assignvariableop_34_adam_lstm_304_lstm_cell_304_kernel_v:	dÈU
Bassignvariableop_35_adam_lstm_304_lstm_cell_304_recurrent_kernel_v:	2ÈE
6assignvariableop_36_adam_lstm_304_lstm_cell_304_bias_v:	ÈJ
8assignvariableop_37_adam_lstm_305_lstm_cell_305_kernel_v:2(T
Bassignvariableop_38_adam_lstm_305_lstm_cell_305_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_305_lstm_cell_305_bias_v:(
identity_41˘AssignVariableOp˘AssignVariableOp_1˘AssignVariableOp_10˘AssignVariableOp_11˘AssignVariableOp_12˘AssignVariableOp_13˘AssignVariableOp_14˘AssignVariableOp_15˘AssignVariableOp_16˘AssignVariableOp_17˘AssignVariableOp_18˘AssignVariableOp_19˘AssignVariableOp_2˘AssignVariableOp_20˘AssignVariableOp_21˘AssignVariableOp_22˘AssignVariableOp_23˘AssignVariableOp_24˘AssignVariableOp_25˘AssignVariableOp_26˘AssignVariableOp_27˘AssignVariableOp_28˘AssignVariableOp_29˘AssignVariableOp_3˘AssignVariableOp_30˘AssignVariableOp_31˘AssignVariableOp_32˘AssignVariableOp_33˘AssignVariableOp_34˘AssignVariableOp_35˘AssignVariableOp_36˘AssignVariableOp_37˘AssignVariableOp_38˘AssignVariableOp_39˘AssignVariableOp_4˘AssignVariableOp_5˘AssignVariableOp_6˘AssignVariableOp_7˘AssignVariableOp_8˘AssignVariableOp_9È
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*î
valueäBá)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÂ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B î
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ş
_output_shapes§
¤:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp!assignvariableop_dense_101_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_101_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_303_lstm_cell_303_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_303_lstm_cell_303_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_303_lstm_cell_303_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_304_lstm_cell_304_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_304_lstm_cell_304_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_304_lstm_cell_304_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_305_lstm_cell_305_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_305_lstm_cell_305_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_305_lstm_cell_305_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_101_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_101_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_303_lstm_cell_303_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_303_lstm_cell_303_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_303_lstm_cell_303_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_304_lstm_cell_304_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_304_lstm_cell_304_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_304_lstm_cell_304_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_305_lstm_cell_305_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_305_lstm_cell_305_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_305_lstm_cell_305_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_101_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_101_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_303_lstm_cell_303_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_303_lstm_cell_303_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_303_lstm_cell_303_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_304_lstm_cell_304_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_304_lstm_cell_304_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_304_lstm_cell_304_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_305_lstm_cell_305_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_305_lstm_cell_305_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_305_lstm_cell_305_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ż
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: Ĵ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_41Identity_41:output:0*e
_input_shapesT
R: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ÔJ

D__inference_lstm_305_layer_call_and_return_conditional_losses_452472
inputs_0=
+lstm_cell_74_matmul_readvariableop_resource:2(?
-lstm_cell_74_matmul_1_readvariableop_resource:
(:
,lstm_cell_74_biasadd_readvariableop_resource:(
identity˘#lstm_cell_74/BiasAdd/ReadVariableOp˘"lstm_cell_74/MatMul/ReadVariableOp˘$lstm_cell_74/MatMul_1/ReadVariableOp˘while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask
"lstm_cell_74/MatMul/ReadVariableOpReadVariableOp+lstm_cell_74_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_74/MatMulMatMulstrided_slice_2:output:0*lstm_cell_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_74/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_74_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_74/MatMul_1MatMulzeros:output:0,lstm_cell_74/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_74/addAddV2lstm_cell_74/MatMul:product:0lstm_cell_74/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_74/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_74_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_74/BiasAddBiasAddlstm_cell_74/add:z:0+lstm_cell_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_74/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_74/splitSplit%lstm_cell_74/split/split_dim:output:0lstm_cell_74/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_74/SigmoidSigmoidlstm_cell_74/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_74/Sigmoid_1Sigmoidlstm_cell_74/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_74/mulMullstm_cell_74/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_74/ReluRelulstm_cell_74/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_74/mul_1Mullstm_cell_74/Sigmoid:y:0lstm_cell_74/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_74/add_1AddV2lstm_cell_74/mul:z:0lstm_cell_74/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_74/Sigmoid_2Sigmoidlstm_cell_74/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_74/Relu_1Relulstm_cell_74/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_74/mul_2Mullstm_cell_74/Sigmoid_2:y:0!lstm_cell_74/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_74_matmul_readvariableop_resource-lstm_cell_74_matmul_1_readvariableop_resource,lstm_cell_74_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_452388*
condR
while_cond_452387*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
À
NoOpNoOp$^lstm_cell_74/BiasAdd/ReadVariableOp#^lstm_cell_74/MatMul/ReadVariableOp%^lstm_cell_74/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_74/BiasAdd/ReadVariableOp#lstm_cell_74/BiasAdd/ReadVariableOp2H
"lstm_cell_74/MatMul/ReadVariableOp"lstm_cell_74/MatMul/ReadVariableOp2L
$lstm_cell_74/MatMul_1/ReadVariableOp$lstm_cell_74/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
¤J

D__inference_lstm_303_layer_call_and_return_conditional_losses_448941

inputs>
+lstm_cell_72_matmul_readvariableop_resource:	@
-lstm_cell_72_matmul_1_readvariableop_resource:	d;
,lstm_cell_72_biasadd_readvariableop_resource:	
identity˘#lstm_cell_72/BiasAdd/ReadVariableOp˘"lstm_cell_72/MatMul/ReadVariableOp˘$lstm_cell_72/MatMul_1/ReadVariableOp˘while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
"lstm_cell_72/MatMul/ReadVariableOpReadVariableOp+lstm_cell_72_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_72/MatMulMatMulstrided_slice_2:output:0*lstm_cell_72/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_72/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_72_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_72/MatMul_1MatMulzeros:output:0,lstm_cell_72/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_72/addAddV2lstm_cell_72/MatMul:product:0lstm_cell_72/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_72/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_72_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_72/BiasAddBiasAddlstm_cell_72/add:z:0+lstm_cell_72/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_72/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_72/splitSplit%lstm_cell_72/split/split_dim:output:0lstm_cell_72/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_72/SigmoidSigmoidlstm_cell_72/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_72/Sigmoid_1Sigmoidlstm_cell_72/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_72/mulMullstm_cell_72/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_72/ReluRelulstm_cell_72/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_72/mul_1Mullstm_cell_72/Sigmoid:y:0lstm_cell_72/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_72/add_1AddV2lstm_cell_72/mul:z:0lstm_cell_72/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_72/Sigmoid_2Sigmoidlstm_cell_72/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_72/Relu_1Relulstm_cell_72/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_72/mul_2Mullstm_cell_72/Sigmoid_2:y:0!lstm_cell_72/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_72_matmul_readvariableop_resource-lstm_cell_72_matmul_1_readvariableop_resource,lstm_cell_72_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_448857*
condR
while_cond_448856*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dÀ
NoOpNoOp$^lstm_cell_72/BiasAdd/ReadVariableOp#^lstm_cell_72/MatMul/ReadVariableOp%^lstm_cell_72/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_72/BiasAdd/ReadVariableOp#lstm_cell_72/BiasAdd/ReadVariableOp2H
"lstm_cell_72/MatMul/ReadVariableOp"lstm_cell_72/MatMul/ReadVariableOp2L
$lstm_cell_72/MatMul_1/ReadVariableOp$lstm_cell_72/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_defaultŞ
M
lstm_303_input;
 serving_default_lstm_303_input:0˙˙˙˙˙˙˙˙˙=
	dense_1010
StatefulPartitionedCall:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:Ñ
Ş
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer

signatures
#_self_saveable_object_factories
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_default_save_signature"
_tf_keras_sequential
ê
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
ê
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
ê
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
â

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
§
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m4m5m!v"v-v.v/v0v1v2v3v4v5v"
	optimizer
-
serving_default"
signature_map
 "
trackable_dict_wrapper
n
-0
.1
/2
03
14
25
36
47
58
!9
"10"
trackable_list_wrapper
n
-0
.1
/2
03
14
25
36
47
58
!9
"10"
trackable_list_wrapper
 "
trackable_list_wrapper
Î
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object

;
state_size

-kernel
.recurrent_kernel
/bias
#<_self_saveable_object_factories
=	variables
>trainable_variables
?regularization_losses
@	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
ĵ

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object

G
state_size

0kernel
1recurrent_kernel
2bias
#H_self_saveable_object_factories
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
00
11
22"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
ĵ

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object

S
state_size

3kernel
4recurrent_kernel
5bias
#T_self_saveable_object_factories
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
30
41
52"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
 "
trackable_list_wrapper
ĵ

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
": 
2dense_101/kernel
:2dense_101/bias
 "
trackable_dict_wrapper
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
°
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
$	variables
%trainable_variables
&regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0:.	2lstm_303/lstm_cell_303/kernel
::8	d2'lstm_303/lstm_cell_303/recurrent_kernel
*:(2lstm_303/lstm_cell_303/bias
0:.	dÈ2lstm_304/lstm_cell_304/kernel
::8	2È2'lstm_304/lstm_cell_304/recurrent_kernel
*:(È2lstm_304/lstm_cell_304/bias
/:-2(2lstm_305/lstm_cell_305/kernel
9:7
(2'lstm_305/lstm_cell_305/recurrent_kernel
):'(2lstm_305/lstm_cell_305/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
'
d0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
°
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
=	variables
>trainable_variables
?regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
00
11
22"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
°
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
30
41
52"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
 "
trackable_list_wrapper
°
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	ttotal
	ucount
v	variables
w	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
t0
u1"
trackable_list_wrapper
-
v	variables"
_generic_user_object
':%
2Adam/dense_101/kernel/m
!:2Adam/dense_101/bias/m
5:3	2$Adam/lstm_303/lstm_cell_303/kernel/m
?:=	d2.Adam/lstm_303/lstm_cell_303/recurrent_kernel/m
/:-2"Adam/lstm_303/lstm_cell_303/bias/m
5:3	dÈ2$Adam/lstm_304/lstm_cell_304/kernel/m
?:=	2È2.Adam/lstm_304/lstm_cell_304/recurrent_kernel/m
/:-È2"Adam/lstm_304/lstm_cell_304/bias/m
4:22(2$Adam/lstm_305/lstm_cell_305/kernel/m
>:<
(2.Adam/lstm_305/lstm_cell_305/recurrent_kernel/m
.:,(2"Adam/lstm_305/lstm_cell_305/bias/m
':%
2Adam/dense_101/kernel/v
!:2Adam/dense_101/bias/v
5:3	2$Adam/lstm_303/lstm_cell_303/kernel/v
?:=	d2.Adam/lstm_303/lstm_cell_303/recurrent_kernel/v
/:-2"Adam/lstm_303/lstm_cell_303/bias/v
5:3	dÈ2$Adam/lstm_304/lstm_cell_304/kernel/v
?:=	2È2.Adam/lstm_304/lstm_cell_304/recurrent_kernel/v
/:-È2"Adam/lstm_304/lstm_cell_304/bias/v
4:22(2$Adam/lstm_305/lstm_cell_305/kernel/v
>:<
(2.Adam/lstm_305/lstm_cell_305/recurrent_kernel/v
.:,(2"Adam/lstm_305/lstm_cell_305/bias/v
2
/__inference_sequential_101_layer_call_fn_449291
/__inference_sequential_101_layer_call_fn_450029
/__inference_sequential_101_layer_call_fn_450056
/__inference_sequential_101_layer_call_fn_449907À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ö2ó
J__inference_sequential_101_layer_call_and_return_conditional_losses_450483
J__inference_sequential_101_layer_call_and_return_conditional_losses_450910
J__inference_sequential_101_layer_call_and_return_conditional_losses_449937
J__inference_sequential_101_layer_call_and_return_conditional_losses_449967À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ÓB?
!__inference__wrapped_model_447742lstm_303_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
2
)__inference_lstm_303_layer_call_fn_450921
)__inference_lstm_303_layer_call_fn_450932
)__inference_lstm_303_layer_call_fn_450943
)__inference_lstm_303_layer_call_fn_450954Ġ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ó2?
D__inference_lstm_303_layer_call_and_return_conditional_losses_451097
D__inference_lstm_303_layer_call_and_return_conditional_losses_451240
D__inference_lstm_303_layer_call_and_return_conditional_losses_451383
D__inference_lstm_303_layer_call_and_return_conditional_losses_451526Ġ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
2
)__inference_lstm_304_layer_call_fn_451537
)__inference_lstm_304_layer_call_fn_451548
)__inference_lstm_304_layer_call_fn_451559
)__inference_lstm_304_layer_call_fn_451570Ġ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ó2?
D__inference_lstm_304_layer_call_and_return_conditional_losses_451713
D__inference_lstm_304_layer_call_and_return_conditional_losses_451856
D__inference_lstm_304_layer_call_and_return_conditional_losses_451999
D__inference_lstm_304_layer_call_and_return_conditional_losses_452142Ġ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
2
)__inference_lstm_305_layer_call_fn_452153
)__inference_lstm_305_layer_call_fn_452164
)__inference_lstm_305_layer_call_fn_452175
)__inference_lstm_305_layer_call_fn_452186Ġ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ó2?
D__inference_lstm_305_layer_call_and_return_conditional_losses_452329
D__inference_lstm_305_layer_call_and_return_conditional_losses_452472
D__inference_lstm_305_layer_call_and_return_conditional_losses_452615
D__inference_lstm_305_layer_call_and_return_conditional_losses_452758Ġ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
Ô2Ñ
*__inference_dense_101_layer_call_fn_452767˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ï2ì
E__inference_dense_101_layer_call_and_return_conditional_losses_452777˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ÒBÏ
$__inference_signature_wrapper_450002lstm_303_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
˘2
-__inference_lstm_cell_72_layer_call_fn_452794
-__inference_lstm_cell_72_layer_call_fn_452811?
µ²ħ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
Ĝ2Ġ
H__inference_lstm_cell_72_layer_call_and_return_conditional_losses_452843
H__inference_lstm_cell_72_layer_call_and_return_conditional_losses_452875?
µ²ħ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
˘2
-__inference_lstm_cell_73_layer_call_fn_452892
-__inference_lstm_cell_73_layer_call_fn_452909?
µ²ħ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
Ĝ2Ġ
H__inference_lstm_cell_73_layer_call_and_return_conditional_losses_452941
H__inference_lstm_cell_73_layer_call_and_return_conditional_losses_452973?
µ²ħ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
˘2
-__inference_lstm_cell_74_layer_call_fn_452990
-__inference_lstm_cell_74_layer_call_fn_453007?
µ²ħ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
Ĝ2Ġ
H__inference_lstm_cell_74_layer_call_and_return_conditional_losses_453039
H__inference_lstm_cell_74_layer_call_and_return_conditional_losses_453071?
µ²ħ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 §
!__inference__wrapped_model_447742-./012345!";˘8
1˘.
,)
lstm_303_input˙˙˙˙˙˙˙˙˙
Ş "5Ş2
0
	dense_101# 
	dense_101˙˙˙˙˙˙˙˙˙?
E__inference_dense_101_layer_call_and_return_conditional_losses_452777\!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 }
*__inference_dense_101_layer_call_fn_452767O!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "˙˙˙˙˙˙˙˙˙Ó
D__inference_lstm_303_layer_call_and_return_conditional_losses_451097-./O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "2˘/
(%
0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 Ó
D__inference_lstm_303_layer_call_and_return_conditional_losses_451240-./O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p

 
Ş "2˘/
(%
0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 ı
D__inference_lstm_303_layer_call_and_return_conditional_losses_451383q-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p 

 
Ş ")˘&

0˙˙˙˙˙˙˙˙˙d
 ı
D__inference_lstm_303_layer_call_and_return_conditional_losses_451526q-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p

 
Ş ")˘&

0˙˙˙˙˙˙˙˙˙d
 Ş
)__inference_lstm_303_layer_call_fn_450921}-./O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "%"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙dŞ
)__inference_lstm_303_layer_call_fn_450932}-./O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p

 
Ş "%"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
)__inference_lstm_303_layer_call_fn_450943d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙d
)__inference_lstm_303_layer_call_fn_450954d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p

 
Ş "˙˙˙˙˙˙˙˙˙dÓ
D__inference_lstm_304_layer_call_and_return_conditional_losses_451713012O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d

 
p 

 
Ş "2˘/
(%
0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 Ó
D__inference_lstm_304_layer_call_and_return_conditional_losses_451856012O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d

 
p

 
Ş "2˘/
(%
0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 ı
D__inference_lstm_304_layer_call_and_return_conditional_losses_451999q012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p 

 
Ş ")˘&

0˙˙˙˙˙˙˙˙˙2
 ı
D__inference_lstm_304_layer_call_and_return_conditional_losses_452142q012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p

 
Ş ")˘&

0˙˙˙˙˙˙˙˙˙2
 Ş
)__inference_lstm_304_layer_call_fn_451537}012O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d

 
p 

 
Ş "%"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2Ş
)__inference_lstm_304_layer_call_fn_451548}012O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d

 
p

 
Ş "%"˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
)__inference_lstm_304_layer_call_fn_451559d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙2
)__inference_lstm_304_layer_call_fn_451570d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p

 
Ş "˙˙˙˙˙˙˙˙˙2Ċ
D__inference_lstm_305_layer_call_and_return_conditional_losses_452329}345O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2

 
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙

 Ċ
D__inference_lstm_305_layer_call_and_return_conditional_losses_452472}345O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2

 
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙

 µ
D__inference_lstm_305_layer_call_and_return_conditional_losses_452615m345?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙2

 
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙

 µ
D__inference_lstm_305_layer_call_and_return_conditional_losses_452758m345?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙2

 
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙

 
)__inference_lstm_305_layer_call_fn_452153p345O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙

)__inference_lstm_305_layer_call_fn_452164p345O˘L
E˘B
41
/,
inputs/0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2

 
p

 
Ş "˙˙˙˙˙˙˙˙˙

)__inference_lstm_305_layer_call_fn_452175`345?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙2

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙

)__inference_lstm_305_layer_call_fn_452186`345?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙2

 
p

 
Ş "˙˙˙˙˙˙˙˙˙
Ê
H__inference_lstm_cell_72_layer_call_and_return_conditional_losses_452843ŭ-./˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙
K˘H
"
states/0˙˙˙˙˙˙˙˙˙d
"
states/1˙˙˙˙˙˙˙˙˙d
p 
Ş "s˘p
i˘f

0/0˙˙˙˙˙˙˙˙˙d
EB

0/1/0˙˙˙˙˙˙˙˙˙d

0/1/1˙˙˙˙˙˙˙˙˙d
 Ê
H__inference_lstm_cell_72_layer_call_and_return_conditional_losses_452875ŭ-./˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙
K˘H
"
states/0˙˙˙˙˙˙˙˙˙d
"
states/1˙˙˙˙˙˙˙˙˙d
p
Ş "s˘p
i˘f

0/0˙˙˙˙˙˙˙˙˙d
EB

0/1/0˙˙˙˙˙˙˙˙˙d

0/1/1˙˙˙˙˙˙˙˙˙d
 
-__inference_lstm_cell_72_layer_call_fn_452794í-./˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙
K˘H
"
states/0˙˙˙˙˙˙˙˙˙d
"
states/1˙˙˙˙˙˙˙˙˙d
p 
Ş "c˘`

0˙˙˙˙˙˙˙˙˙d
A>

1/0˙˙˙˙˙˙˙˙˙d

1/1˙˙˙˙˙˙˙˙˙d
-__inference_lstm_cell_72_layer_call_fn_452811í-./˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙
K˘H
"
states/0˙˙˙˙˙˙˙˙˙d
"
states/1˙˙˙˙˙˙˙˙˙d
p
Ş "c˘`

0˙˙˙˙˙˙˙˙˙d
A>

1/0˙˙˙˙˙˙˙˙˙d

1/1˙˙˙˙˙˙˙˙˙dÊ
H__inference_lstm_cell_73_layer_call_and_return_conditional_losses_452941ŭ012˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙d
K˘H
"
states/0˙˙˙˙˙˙˙˙˙2
"
states/1˙˙˙˙˙˙˙˙˙2
p 
Ş "s˘p
i˘f

0/0˙˙˙˙˙˙˙˙˙2
EB

0/1/0˙˙˙˙˙˙˙˙˙2

0/1/1˙˙˙˙˙˙˙˙˙2
 Ê
H__inference_lstm_cell_73_layer_call_and_return_conditional_losses_452973ŭ012˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙d
K˘H
"
states/0˙˙˙˙˙˙˙˙˙2
"
states/1˙˙˙˙˙˙˙˙˙2
p
Ş "s˘p
i˘f

0/0˙˙˙˙˙˙˙˙˙2
EB

0/1/0˙˙˙˙˙˙˙˙˙2

0/1/1˙˙˙˙˙˙˙˙˙2
 
-__inference_lstm_cell_73_layer_call_fn_452892í012˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙d
K˘H
"
states/0˙˙˙˙˙˙˙˙˙2
"
states/1˙˙˙˙˙˙˙˙˙2
p 
Ş "c˘`

0˙˙˙˙˙˙˙˙˙2
A>

1/0˙˙˙˙˙˙˙˙˙2

1/1˙˙˙˙˙˙˙˙˙2
-__inference_lstm_cell_73_layer_call_fn_452909í012˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙d
K˘H
"
states/0˙˙˙˙˙˙˙˙˙2
"
states/1˙˙˙˙˙˙˙˙˙2
p
Ş "c˘`

0˙˙˙˙˙˙˙˙˙2
A>

1/0˙˙˙˙˙˙˙˙˙2

1/1˙˙˙˙˙˙˙˙˙2Ê
H__inference_lstm_cell_74_layer_call_and_return_conditional_losses_453039ŭ345˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙2
K˘H
"
states/0˙˙˙˙˙˙˙˙˙

"
states/1˙˙˙˙˙˙˙˙˙

p 
Ş "s˘p
i˘f

0/0˙˙˙˙˙˙˙˙˙

EB

0/1/0˙˙˙˙˙˙˙˙˙


0/1/1˙˙˙˙˙˙˙˙˙

 Ê
H__inference_lstm_cell_74_layer_call_and_return_conditional_losses_453071ŭ345˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙2
K˘H
"
states/0˙˙˙˙˙˙˙˙˙

"
states/1˙˙˙˙˙˙˙˙˙

p
Ş "s˘p
i˘f

0/0˙˙˙˙˙˙˙˙˙

EB

0/1/0˙˙˙˙˙˙˙˙˙


0/1/1˙˙˙˙˙˙˙˙˙

 
-__inference_lstm_cell_74_layer_call_fn_452990í345˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙2
K˘H
"
states/0˙˙˙˙˙˙˙˙˙

"
states/1˙˙˙˙˙˙˙˙˙

p 
Ş "c˘`

0˙˙˙˙˙˙˙˙˙

A>

1/0˙˙˙˙˙˙˙˙˙


1/1˙˙˙˙˙˙˙˙˙

-__inference_lstm_cell_74_layer_call_fn_453007í345˘}
v˘s
 
inputs˙˙˙˙˙˙˙˙˙2
K˘H
"
states/0˙˙˙˙˙˙˙˙˙

"
states/1˙˙˙˙˙˙˙˙˙

p
Ş "c˘`

0˙˙˙˙˙˙˙˙˙

A>

1/0˙˙˙˙˙˙˙˙˙


1/1˙˙˙˙˙˙˙˙˙
Ç
J__inference_sequential_101_layer_call_and_return_conditional_losses_449937y-./012345!"C˘@
9˘6
,)
lstm_303_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ç
J__inference_sequential_101_layer_call_and_return_conditional_losses_449967y-./012345!"C˘@
9˘6
,)
lstm_303_input˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ż
J__inference_sequential_101_layer_call_and_return_conditional_losses_450483q-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ż
J__inference_sequential_101_layer_call_and_return_conditional_losses_450910q-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 
/__inference_sequential_101_layer_call_fn_449291l-./012345!"C˘@
9˘6
,)
lstm_303_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
/__inference_sequential_101_layer_call_fn_449907l-./012345!"C˘@
9˘6
,)
lstm_303_input˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙
/__inference_sequential_101_layer_call_fn_450029d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
/__inference_sequential_101_layer_call_fn_450056d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙ĵ
$__inference_signature_wrapper_450002-./012345!"M˘J
˘ 
CŞ@
>
lstm_303_input,)
lstm_303_input˙˙˙˙˙˙˙˙˙"5Ş2
0
	dense_101# 
	dense_101˙˙˙˙˙˙˙˙˙