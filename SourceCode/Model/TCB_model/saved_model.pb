½/
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
"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28-
z
dense_80/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_80/kernel
s
#dense_80/kernel/Read/ReadVariableOpReadVariableOpdense_80/kernel*
_output_shapes

:
*
dtype0
r
dense_80/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_80/bias
k
!dense_80/bias/Read/ReadVariableOpReadVariableOpdense_80/bias*
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
lstm_240/lstm_cell_240/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*.
shared_namelstm_240/lstm_cell_240/kernel

1lstm_240/lstm_cell_240/kernel/Read/ReadVariableOpReadVariableOplstm_240/lstm_cell_240/kernel*
_output_shapes
:	*
dtype0
Ğ
'lstm_240/lstm_cell_240/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*8
shared_name)'lstm_240/lstm_cell_240/recurrent_kernel
¤
;lstm_240/lstm_cell_240/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_240/lstm_cell_240/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_240/lstm_cell_240/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelstm_240/lstm_cell_240/bias

/lstm_240/lstm_cell_240/bias/Read/ReadVariableOpReadVariableOplstm_240/lstm_cell_240/bias*
_output_shapes	
:*
dtype0

lstm_241/lstm_cell_241/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*.
shared_namelstm_241/lstm_cell_241/kernel

1lstm_241/lstm_cell_241/kernel/Read/ReadVariableOpReadVariableOplstm_241/lstm_cell_241/kernel*
_output_shapes
:	dÈ*
dtype0
Ğ
'lstm_241/lstm_cell_241/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*8
shared_name)'lstm_241/lstm_cell_241/recurrent_kernel
¤
;lstm_241/lstm_cell_241/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_241/lstm_cell_241/recurrent_kernel*
_output_shapes
:	2È*
dtype0

lstm_241/lstm_cell_241/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*,
shared_namelstm_241/lstm_cell_241/bias

/lstm_241/lstm_cell_241/bias/Read/ReadVariableOpReadVariableOplstm_241/lstm_cell_241/bias*
_output_shapes	
:È*
dtype0

lstm_242/lstm_cell_242/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_242/lstm_cell_242/kernel

1lstm_242/lstm_cell_242/kernel/Read/ReadVariableOpReadVariableOplstm_242/lstm_cell_242/kernel*
_output_shapes

:2(*
dtype0
Ş
'lstm_242/lstm_cell_242/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_242/lstm_cell_242/recurrent_kernel
£
;lstm_242/lstm_cell_242/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_242/lstm_cell_242/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_242/lstm_cell_242/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_242/lstm_cell_242/bias

/lstm_242/lstm_cell_242/bias/Read/ReadVariableOpReadVariableOplstm_242/lstm_cell_242/bias*
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

Adam/dense_80/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_80/kernel/m

*Adam/dense_80/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_80/kernel/m*
_output_shapes

:
*
dtype0

Adam/dense_80/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_80/bias/m
y
(Adam/dense_80/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_80/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_240/lstm_cell_240/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_240/lstm_cell_240/kernel/m

8Adam/lstm_240/lstm_cell_240/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_240/lstm_cell_240/kernel/m*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_240/lstm_cell_240/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_240/lstm_cell_240/recurrent_kernel/m
²
BAdam/lstm_240/lstm_cell_240/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_240/lstm_cell_240/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

"Adam/lstm_240/lstm_cell_240/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_240/lstm_cell_240/bias/m

6Adam/lstm_240/lstm_cell_240/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_240/lstm_cell_240/bias/m*
_output_shapes	
:*
dtype0
?
$Adam/lstm_241/lstm_cell_241/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_241/lstm_cell_241/kernel/m

8Adam/lstm_241/lstm_cell_241/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_241/lstm_cell_241/kernel/m*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_241/lstm_cell_241/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_241/lstm_cell_241/recurrent_kernel/m
²
BAdam/lstm_241/lstm_cell_241/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_241/lstm_cell_241/recurrent_kernel/m*
_output_shapes
:	2È*
dtype0

"Adam/lstm_241/lstm_cell_241/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_241/lstm_cell_241/bias/m

6Adam/lstm_241/lstm_cell_241/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_241/lstm_cell_241/bias/m*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_242/lstm_cell_242/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_242/lstm_cell_242/kernel/m

8Adam/lstm_242/lstm_cell_242/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_242/lstm_cell_242/kernel/m*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_242/lstm_cell_242/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_242/lstm_cell_242/recurrent_kernel/m
ħ
BAdam/lstm_242/lstm_cell_242/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_242/lstm_cell_242/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

"Adam/lstm_242/lstm_cell_242/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_242/lstm_cell_242/bias/m

6Adam/lstm_242/lstm_cell_242/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_242/lstm_cell_242/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_80/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_80/kernel/v

*Adam/dense_80/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_80/kernel/v*
_output_shapes

:
*
dtype0

Adam/dense_80/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_80/bias/v
y
(Adam/dense_80/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_80/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_240/lstm_cell_240/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_240/lstm_cell_240/kernel/v

8Adam/lstm_240/lstm_cell_240/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_240/lstm_cell_240/kernel/v*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_240/lstm_cell_240/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_240/lstm_cell_240/recurrent_kernel/v
²
BAdam/lstm_240/lstm_cell_240/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_240/lstm_cell_240/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

"Adam/lstm_240/lstm_cell_240/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_240/lstm_cell_240/bias/v

6Adam/lstm_240/lstm_cell_240/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_240/lstm_cell_240/bias/v*
_output_shapes	
:*
dtype0
?
$Adam/lstm_241/lstm_cell_241/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_241/lstm_cell_241/kernel/v

8Adam/lstm_241/lstm_cell_241/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_241/lstm_cell_241/kernel/v*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_241/lstm_cell_241/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_241/lstm_cell_241/recurrent_kernel/v
²
BAdam/lstm_241/lstm_cell_241/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_241/lstm_cell_241/recurrent_kernel/v*
_output_shapes
:	2È*
dtype0

"Adam/lstm_241/lstm_cell_241/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_241/lstm_cell_241/bias/v

6Adam/lstm_241/lstm_cell_241/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_241/lstm_cell_241/bias/v*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_242/lstm_cell_242/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_242/lstm_cell_242/kernel/v

8Adam/lstm_242/lstm_cell_242/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_242/lstm_cell_242/kernel/v*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_242/lstm_cell_242/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_242/lstm_cell_242/recurrent_kernel/v
ħ
BAdam/lstm_242/lstm_cell_242/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_242/lstm_cell_242/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

"Adam/lstm_242/lstm_cell_242/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_242/lstm_cell_242/bias/v

6Adam/lstm_242/lstm_cell_242/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_242/lstm_cell_242/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
ßA
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*A
valueABA BA
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
[Y
VARIABLE_VALUEdense_80/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_80/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_240/lstm_cell_240/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_240/lstm_cell_240/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_240/lstm_cell_240/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_241/lstm_cell_241/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_241/lstm_cell_241/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_241/lstm_cell_241/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_242/lstm_cell_242/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_242/lstm_cell_242/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_242/lstm_cell_242/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
~|
VARIABLE_VALUEAdam/dense_80/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_80/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_240/lstm_cell_240/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_240/lstm_cell_240/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_240/lstm_cell_240/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_241/lstm_cell_241/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_241/lstm_cell_241/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_241/lstm_cell_241/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_242/lstm_cell_242/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_242/lstm_cell_242/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_242/lstm_cell_242/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_80/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_80/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_240/lstm_cell_240/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_240/lstm_cell_240/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_240/lstm_cell_240/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_241/lstm_cell_241/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_241/lstm_cell_241/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_241/lstm_cell_241/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_242/lstm_cell_242/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_242/lstm_cell_242/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_242/lstm_cell_242/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_240_inputPlaceholder*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0* 
shape:˙˙˙˙˙˙˙˙˙

StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_240_inputlstm_240/lstm_cell_240/kernel'lstm_240/lstm_cell_240/recurrent_kernellstm_240/lstm_cell_240/biaslstm_241/lstm_cell_241/kernel'lstm_241/lstm_cell_241/recurrent_kernellstm_241/lstm_cell_241/biaslstm_242/lstm_cell_242/kernel'lstm_242/lstm_cell_242/recurrent_kernellstm_242/lstm_cell_242/biasdense_80/kerneldense_80/bias*
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
$__inference_signature_wrapper_377092
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
½
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_80/kernel/Read/ReadVariableOp!dense_80/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_240/lstm_cell_240/kernel/Read/ReadVariableOp;lstm_240/lstm_cell_240/recurrent_kernel/Read/ReadVariableOp/lstm_240/lstm_cell_240/bias/Read/ReadVariableOp1lstm_241/lstm_cell_241/kernel/Read/ReadVariableOp;lstm_241/lstm_cell_241/recurrent_kernel/Read/ReadVariableOp/lstm_241/lstm_cell_241/bias/Read/ReadVariableOp1lstm_242/lstm_cell_242/kernel/Read/ReadVariableOp;lstm_242/lstm_cell_242/recurrent_kernel/Read/ReadVariableOp/lstm_242/lstm_cell_242/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_80/kernel/m/Read/ReadVariableOp(Adam/dense_80/bias/m/Read/ReadVariableOp8Adam/lstm_240/lstm_cell_240/kernel/m/Read/ReadVariableOpBAdam/lstm_240/lstm_cell_240/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_240/lstm_cell_240/bias/m/Read/ReadVariableOp8Adam/lstm_241/lstm_cell_241/kernel/m/Read/ReadVariableOpBAdam/lstm_241/lstm_cell_241/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_241/lstm_cell_241/bias/m/Read/ReadVariableOp8Adam/lstm_242/lstm_cell_242/kernel/m/Read/ReadVariableOpBAdam/lstm_242/lstm_cell_242/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_242/lstm_cell_242/bias/m/Read/ReadVariableOp*Adam/dense_80/kernel/v/Read/ReadVariableOp(Adam/dense_80/bias/v/Read/ReadVariableOp8Adam/lstm_240/lstm_cell_240/kernel/v/Read/ReadVariableOpBAdam/lstm_240/lstm_cell_240/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_240/lstm_cell_240/bias/v/Read/ReadVariableOp8Adam/lstm_241/lstm_cell_241/kernel/v/Read/ReadVariableOpBAdam/lstm_241/lstm_cell_241/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_241/lstm_cell_241/bias/v/Read/ReadVariableOp8Adam/lstm_242/lstm_cell_242/kernel/v/Read/ReadVariableOpBAdam/lstm_242/lstm_cell_242/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_242/lstm_cell_242/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_380304

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_80/kerneldense_80/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_240/lstm_cell_240/kernel'lstm_240/lstm_cell_240/recurrent_kernellstm_240/lstm_cell_240/biaslstm_241/lstm_cell_241/kernel'lstm_241/lstm_cell_241/recurrent_kernellstm_241/lstm_cell_241/biaslstm_242/lstm_cell_242/kernel'lstm_242/lstm_cell_242/recurrent_kernellstm_242/lstm_cell_242/biastotalcountAdam/dense_80/kernel/mAdam/dense_80/bias/m$Adam/lstm_240/lstm_cell_240/kernel/m.Adam/lstm_240/lstm_cell_240/recurrent_kernel/m"Adam/lstm_240/lstm_cell_240/bias/m$Adam/lstm_241/lstm_cell_241/kernel/m.Adam/lstm_241/lstm_cell_241/recurrent_kernel/m"Adam/lstm_241/lstm_cell_241/bias/m$Adam/lstm_242/lstm_cell_242/kernel/m.Adam/lstm_242/lstm_cell_242/recurrent_kernel/m"Adam/lstm_242/lstm_cell_242/bias/mAdam/dense_80/kernel/vAdam/dense_80/bias/v$Adam/lstm_240/lstm_cell_240/kernel/v.Adam/lstm_240/lstm_cell_240/recurrent_kernel/v"Adam/lstm_240/lstm_cell_240/bias/v$Adam/lstm_241/lstm_cell_241/kernel/v.Adam/lstm_241/lstm_cell_241/recurrent_kernel/v"Adam/lstm_241/lstm_cell_241/bias/v$Adam/lstm_242/lstm_cell_242/kernel/v.Adam/lstm_242/lstm_cell_242/recurrent_kernel/v"Adam/lstm_242/lstm_cell_242/bias/v*4
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
"__inference__traced_restore_380434½Ó+

ĥ
)__inference_lstm_240_layer_call_fn_378044

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
D__inference_lstm_240_layer_call_and_return_conditional_losses_376877s
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
while_cond_379334
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_379334___redundant_placeholder04
0while_while_cond_379334___redundant_placeholder14
0while_while_cond_379334___redundant_placeholder24
0while_while_cond_379334___redundant_placeholder3
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
¤J

D__inference_lstm_240_layer_call_and_return_conditional_losses_378616

inputs>
+lstm_cell_60_matmul_readvariableop_resource:	@
-lstm_cell_60_matmul_1_readvariableop_resource:	d;
,lstm_cell_60_biasadd_readvariableop_resource:	
identity˘#lstm_cell_60/BiasAdd/ReadVariableOp˘"lstm_cell_60/MatMul/ReadVariableOp˘$lstm_cell_60/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_60/MatMul/ReadVariableOpReadVariableOp+lstm_cell_60_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_60/MatMulMatMulstrided_slice_2:output:0*lstm_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_60/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_60_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_60/MatMul_1MatMulzeros:output:0,lstm_cell_60/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_60/addAddV2lstm_cell_60/MatMul:product:0lstm_cell_60/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_60/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_60_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_60/BiasAddBiasAddlstm_cell_60/add:z:0+lstm_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_60/splitSplit%lstm_cell_60/split/split_dim:output:0lstm_cell_60/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_60/SigmoidSigmoidlstm_cell_60/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_60/Sigmoid_1Sigmoidlstm_cell_60/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_60/mulMullstm_cell_60/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_60/ReluRelulstm_cell_60/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_60/mul_1Mullstm_cell_60/Sigmoid:y:0lstm_cell_60/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_60/add_1AddV2lstm_cell_60/mul:z:0lstm_cell_60/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_60/Sigmoid_2Sigmoidlstm_cell_60/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_60/Relu_1Relulstm_cell_60/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_60/mul_2Mullstm_cell_60/Sigmoid_2:y:0!lstm_cell_60/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_60_matmul_readvariableop_resource-lstm_cell_60_matmul_1_readvariableop_resource,lstm_cell_60_biasadd_readvariableop_resource*
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
while_body_378532*
condR
while_cond_378531*K
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
NoOpNoOp$^lstm_cell_60/BiasAdd/ReadVariableOp#^lstm_cell_60/MatMul/ReadVariableOp%^lstm_cell_60/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_60/BiasAdd/ReadVariableOp#lstm_cell_60/BiasAdd/ReadVariableOp2H
"lstm_cell_60/MatMul/ReadVariableOp"lstm_cell_60/MatMul/ReadVariableOp2L
$lstm_cell_60/MatMul_1/ReadVariableOp$lstm_cell_60/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
˙7
Ê
while_body_379335
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_62_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_62_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_62_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_62_matmul_readvariableop_resource:2(E
3while_lstm_cell_62_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_62_biasadd_readvariableop_resource:(˘)while/lstm_cell_62/BiasAdd/ReadVariableOp˘(while/lstm_cell_62/MatMul/ReadVariableOp˘*while/lstm_cell_62/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_62/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_62_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_62/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_62/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_62_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_62/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_62/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_62/addAddV2#while/lstm_cell_62/MatMul:product:0%while/lstm_cell_62/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_62/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_62_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_62/BiasAddBiasAddwhile/lstm_cell_62/add:z:01while/lstm_cell_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_62/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_62/splitSplit+while/lstm_cell_62/split/split_dim:output:0#while/lstm_cell_62/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_62/SigmoidSigmoid!while/lstm_cell_62/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_62/Sigmoid_1Sigmoid!while/lstm_cell_62/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_62/mulMul while/lstm_cell_62/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_62/ReluRelu!while/lstm_cell_62/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_62/mul_1Mulwhile/lstm_cell_62/Sigmoid:y:0%while/lstm_cell_62/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_62/add_1AddV2while/lstm_cell_62/mul:z:0while/lstm_cell_62/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_62/Sigmoid_2Sigmoid!while/lstm_cell_62/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_62/Relu_1Reluwhile/lstm_cell_62/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_62/mul_2Mul while/lstm_cell_62/Sigmoid_2:y:0'while/lstm_cell_62/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_62/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_62/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_62/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_62/BiasAdd/ReadVariableOp)^while/lstm_cell_62/MatMul/ReadVariableOp+^while/lstm_cell_62/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_62_biasadd_readvariableop_resource4while_lstm_cell_62_biasadd_readvariableop_resource_0"l
3while_lstm_cell_62_matmul_1_readvariableop_resource5while_lstm_cell_62_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_62_matmul_readvariableop_resource3while_lstm_cell_62_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_62/BiasAdd/ReadVariableOp)while/lstm_cell_62/BiasAdd/ReadVariableOp2T
(while/lstm_cell_62/MatMul/ReadVariableOp(while/lstm_cell_62/MatMul/ReadVariableOp2X
*while/lstm_cell_62/MatMul_1/ReadVariableOp*while/lstm_cell_62/MatMul_1/ReadVariableOp: 
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
˙7
Ê
while_body_379764
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_62_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_62_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_62_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_62_matmul_readvariableop_resource:2(E
3while_lstm_cell_62_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_62_biasadd_readvariableop_resource:(˘)while/lstm_cell_62/BiasAdd/ReadVariableOp˘(while/lstm_cell_62/MatMul/ReadVariableOp˘*while/lstm_cell_62/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_62/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_62_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_62/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_62/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_62_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_62/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_62/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_62/addAddV2#while/lstm_cell_62/MatMul:product:0%while/lstm_cell_62/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_62/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_62_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_62/BiasAddBiasAddwhile/lstm_cell_62/add:z:01while/lstm_cell_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_62/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_62/splitSplit+while/lstm_cell_62/split/split_dim:output:0#while/lstm_cell_62/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_62/SigmoidSigmoid!while/lstm_cell_62/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_62/Sigmoid_1Sigmoid!while/lstm_cell_62/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_62/mulMul while/lstm_cell_62/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_62/ReluRelu!while/lstm_cell_62/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_62/mul_1Mulwhile/lstm_cell_62/Sigmoid:y:0%while/lstm_cell_62/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_62/add_1AddV2while/lstm_cell_62/mul:z:0while/lstm_cell_62/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_62/Sigmoid_2Sigmoid!while/lstm_cell_62/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_62/Relu_1Reluwhile/lstm_cell_62/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_62/mul_2Mul while/lstm_cell_62/Sigmoid_2:y:0'while/lstm_cell_62/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_62/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_62/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_62/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_62/BiasAdd/ReadVariableOp)^while/lstm_cell_62/MatMul/ReadVariableOp+^while/lstm_cell_62/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_62_biasadd_readvariableop_resource4while_lstm_cell_62_biasadd_readvariableop_resource_0"l
3while_lstm_cell_62_matmul_1_readvariableop_resource5while_lstm_cell_62_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_62_matmul_readvariableop_resource3while_lstm_cell_62_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_62/BiasAdd/ReadVariableOp)while/lstm_cell_62/BiasAdd/ReadVariableOp2T
(while/lstm_cell_62/MatMul/ReadVariableOp(while/lstm_cell_62/MatMul/ReadVariableOp2X
*while/lstm_cell_62/MatMul_1/ReadVariableOp*while/lstm_cell_62/MatMul_1/ReadVariableOp: 
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
ş

(sequential_80_lstm_241_while_cond_374602J
Fsequential_80_lstm_241_while_sequential_80_lstm_241_while_loop_counterP
Lsequential_80_lstm_241_while_sequential_80_lstm_241_while_maximum_iterations,
(sequential_80_lstm_241_while_placeholder.
*sequential_80_lstm_241_while_placeholder_1.
*sequential_80_lstm_241_while_placeholder_2.
*sequential_80_lstm_241_while_placeholder_3L
Hsequential_80_lstm_241_while_less_sequential_80_lstm_241_strided_slice_1b
^sequential_80_lstm_241_while_sequential_80_lstm_241_while_cond_374602___redundant_placeholder0b
^sequential_80_lstm_241_while_sequential_80_lstm_241_while_cond_374602___redundant_placeholder1b
^sequential_80_lstm_241_while_sequential_80_lstm_241_while_cond_374602___redundant_placeholder2b
^sequential_80_lstm_241_while_sequential_80_lstm_241_while_cond_374602___redundant_placeholder3)
%sequential_80_lstm_241_while_identity
?
!sequential_80/lstm_241/while/LessLess(sequential_80_lstm_241_while_placeholderHsequential_80_lstm_241_while_less_sequential_80_lstm_241_strided_slice_1*
T0*
_output_shapes
: y
%sequential_80/lstm_241/while/IdentityIdentity%sequential_80/lstm_241/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_80_lstm_241_while_identity.sequential_80/lstm_241/while/Identity:output:0*(
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
D__inference_lstm_242_layer_call_and_return_conditional_losses_376547

inputs=
+lstm_cell_62_matmul_readvariableop_resource:2(?
-lstm_cell_62_matmul_1_readvariableop_resource:
(:
,lstm_cell_62_biasadd_readvariableop_resource:(
identity˘#lstm_cell_62/BiasAdd/ReadVariableOp˘"lstm_cell_62/MatMul/ReadVariableOp˘$lstm_cell_62/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_62/MatMul/ReadVariableOpReadVariableOp+lstm_cell_62_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_62/MatMulMatMulstrided_slice_2:output:0*lstm_cell_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_62/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_62_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_62/MatMul_1MatMulzeros:output:0,lstm_cell_62/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_62/addAddV2lstm_cell_62/MatMul:product:0lstm_cell_62/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_62/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_62_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_62/BiasAddBiasAddlstm_cell_62/add:z:0+lstm_cell_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_62/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_62/splitSplit%lstm_cell_62/split/split_dim:output:0lstm_cell_62/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_62/SigmoidSigmoidlstm_cell_62/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_62/Sigmoid_1Sigmoidlstm_cell_62/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_62/mulMullstm_cell_62/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_62/ReluRelulstm_cell_62/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_62/mul_1Mullstm_cell_62/Sigmoid:y:0lstm_cell_62/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_62/add_1AddV2lstm_cell_62/mul:z:0lstm_cell_62/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_62/Sigmoid_2Sigmoidlstm_cell_62/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_62/Relu_1Relulstm_cell_62/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_62/mul_2Mullstm_cell_62/Sigmoid_2:y:0!lstm_cell_62/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_62_matmul_readvariableop_resource-lstm_cell_62_matmul_1_readvariableop_resource,lstm_cell_62_biasadd_readvariableop_resource*
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
while_body_376463*
condR
while_cond_376462*K
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
NoOpNoOp$^lstm_cell_62/BiasAdd/ReadVariableOp#^lstm_cell_62/MatMul/ReadVariableOp%^lstm_cell_62/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_62/BiasAdd/ReadVariableOp#lstm_cell_62/BiasAdd/ReadVariableOp2H
"lstm_cell_62/MatMul/ReadVariableOp"lstm_cell_62/MatMul/ReadVariableOp2L
$lstm_cell_62/MatMul_1/ReadVariableOp$lstm_cell_62/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
S
³
(sequential_80_lstm_240_while_body_374464J
Fsequential_80_lstm_240_while_sequential_80_lstm_240_while_loop_counterP
Lsequential_80_lstm_240_while_sequential_80_lstm_240_while_maximum_iterations,
(sequential_80_lstm_240_while_placeholder.
*sequential_80_lstm_240_while_placeholder_1.
*sequential_80_lstm_240_while_placeholder_2.
*sequential_80_lstm_240_while_placeholder_3I
Esequential_80_lstm_240_while_sequential_80_lstm_240_strided_slice_1_0
sequential_80_lstm_240_while_tensorarrayv2read_tensorlistgetitem_sequential_80_lstm_240_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_80_lstm_240_while_lstm_cell_60_matmul_readvariableop_resource_0:	_
Lsequential_80_lstm_240_while_lstm_cell_60_matmul_1_readvariableop_resource_0:	dZ
Ksequential_80_lstm_240_while_lstm_cell_60_biasadd_readvariableop_resource_0:	)
%sequential_80_lstm_240_while_identity+
'sequential_80_lstm_240_while_identity_1+
'sequential_80_lstm_240_while_identity_2+
'sequential_80_lstm_240_while_identity_3+
'sequential_80_lstm_240_while_identity_4+
'sequential_80_lstm_240_while_identity_5G
Csequential_80_lstm_240_while_sequential_80_lstm_240_strided_slice_1
sequential_80_lstm_240_while_tensorarrayv2read_tensorlistgetitem_sequential_80_lstm_240_tensorarrayunstack_tensorlistfromtensor[
Hsequential_80_lstm_240_while_lstm_cell_60_matmul_readvariableop_resource:	]
Jsequential_80_lstm_240_while_lstm_cell_60_matmul_1_readvariableop_resource:	dX
Isequential_80_lstm_240_while_lstm_cell_60_biasadd_readvariableop_resource:	˘@sequential_80/lstm_240/while/lstm_cell_60/BiasAdd/ReadVariableOp˘?sequential_80/lstm_240/while/lstm_cell_60/MatMul/ReadVariableOp˘Asequential_80/lstm_240/while/lstm_cell_60/MatMul_1/ReadVariableOp
Nsequential_80/lstm_240/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
@sequential_80/lstm_240/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_80_lstm_240_while_tensorarrayv2read_tensorlistgetitem_sequential_80_lstm_240_tensorarrayunstack_tensorlistfromtensor_0(sequential_80_lstm_240_while_placeholderWsequential_80/lstm_240/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ë
?sequential_80/lstm_240/while/lstm_cell_60/MatMul/ReadVariableOpReadVariableOpJsequential_80_lstm_240_while_lstm_cell_60_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0˙
0sequential_80/lstm_240/while/lstm_cell_60/MatMulMatMulGsequential_80/lstm_240/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_80/lstm_240/while/lstm_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ï
Asequential_80/lstm_240/while/lstm_cell_60/MatMul_1/ReadVariableOpReadVariableOpLsequential_80_lstm_240_while_lstm_cell_60_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĉ
2sequential_80/lstm_240/while/lstm_cell_60/MatMul_1MatMul*sequential_80_lstm_240_while_placeholder_2Isequential_80/lstm_240/while/lstm_cell_60/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-sequential_80/lstm_240/while/lstm_cell_60/addAddV2:sequential_80/lstm_240/while/lstm_cell_60/MatMul:product:0<sequential_80/lstm_240/while/lstm_cell_60/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙É
@sequential_80/lstm_240/while/lstm_cell_60/BiasAdd/ReadVariableOpReadVariableOpKsequential_80_lstm_240_while_lstm_cell_60_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ì
1sequential_80/lstm_240/while/lstm_cell_60/BiasAddBiasAdd1sequential_80/lstm_240/while/lstm_cell_60/add:z:0Hsequential_80/lstm_240/while/lstm_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙{
9sequential_80/lstm_240/while/lstm_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_80/lstm_240/while/lstm_cell_60/splitSplitBsequential_80/lstm_240/while/lstm_cell_60/split/split_dim:output:0:sequential_80/lstm_240/while/lstm_cell_60/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split¨
1sequential_80/lstm_240/while/lstm_cell_60/SigmoidSigmoid8sequential_80/lstm_240/while/lstm_cell_60/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŞ
3sequential_80/lstm_240/while/lstm_cell_60/Sigmoid_1Sigmoid8sequential_80/lstm_240/while/lstm_cell_60/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dË
-sequential_80/lstm_240/while/lstm_cell_60/mulMul7sequential_80/lstm_240/while/lstm_cell_60/Sigmoid_1:y:0*sequential_80_lstm_240_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d˘
.sequential_80/lstm_240/while/lstm_cell_60/ReluRelu8sequential_80/lstm_240/while/lstm_cell_60/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŬ
/sequential_80/lstm_240/while/lstm_cell_60/mul_1Mul5sequential_80/lstm_240/while/lstm_cell_60/Sigmoid:y:0<sequential_80/lstm_240/while/lstm_cell_60/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÒ
/sequential_80/lstm_240/while/lstm_cell_60/add_1AddV21sequential_80/lstm_240/while/lstm_cell_60/mul:z:03sequential_80/lstm_240/while/lstm_cell_60/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŞ
3sequential_80/lstm_240/while/lstm_cell_60/Sigmoid_2Sigmoid8sequential_80/lstm_240/while/lstm_cell_60/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
0sequential_80/lstm_240/while/lstm_cell_60/Relu_1Relu3sequential_80/lstm_240/while/lstm_cell_60/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dá
/sequential_80/lstm_240/while/lstm_cell_60/mul_2Mul7sequential_80/lstm_240/while/lstm_cell_60/Sigmoid_2:y:0>sequential_80/lstm_240/while/lstm_cell_60/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
Asequential_80/lstm_240/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_80_lstm_240_while_placeholder_1(sequential_80_lstm_240_while_placeholder3sequential_80/lstm_240/while/lstm_cell_60/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_80/lstm_240/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_80/lstm_240/while/addAddV2(sequential_80_lstm_240_while_placeholder+sequential_80/lstm_240/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_80/lstm_240/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_80/lstm_240/while/add_1AddV2Fsequential_80_lstm_240_while_sequential_80_lstm_240_while_loop_counter-sequential_80/lstm_240/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_80/lstm_240/while/IdentityIdentity&sequential_80/lstm_240/while/add_1:z:0"^sequential_80/lstm_240/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_80/lstm_240/while/Identity_1IdentityLsequential_80_lstm_240_while_sequential_80_lstm_240_while_maximum_iterations"^sequential_80/lstm_240/while/NoOp*
T0*
_output_shapes
: 
'sequential_80/lstm_240/while/Identity_2Identity$sequential_80/lstm_240/while/add:z:0"^sequential_80/lstm_240/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_80/lstm_240/while/Identity_3IdentityQsequential_80/lstm_240/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_80/lstm_240/while/NoOp*
T0*
_output_shapes
: ?
'sequential_80/lstm_240/while/Identity_4Identity3sequential_80/lstm_240/while/lstm_cell_60/mul_2:z:0"^sequential_80/lstm_240/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
'sequential_80/lstm_240/while/Identity_5Identity3sequential_80/lstm_240/while/lstm_cell_60/add_1:z:0"^sequential_80/lstm_240/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĴ
!sequential_80/lstm_240/while/NoOpNoOpA^sequential_80/lstm_240/while/lstm_cell_60/BiasAdd/ReadVariableOp@^sequential_80/lstm_240/while/lstm_cell_60/MatMul/ReadVariableOpB^sequential_80/lstm_240/while/lstm_cell_60/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_80_lstm_240_while_identity.sequential_80/lstm_240/while/Identity:output:0"[
'sequential_80_lstm_240_while_identity_10sequential_80/lstm_240/while/Identity_1:output:0"[
'sequential_80_lstm_240_while_identity_20sequential_80/lstm_240/while/Identity_2:output:0"[
'sequential_80_lstm_240_while_identity_30sequential_80/lstm_240/while/Identity_3:output:0"[
'sequential_80_lstm_240_while_identity_40sequential_80/lstm_240/while/Identity_4:output:0"[
'sequential_80_lstm_240_while_identity_50sequential_80/lstm_240/while/Identity_5:output:0"
Isequential_80_lstm_240_while_lstm_cell_60_biasadd_readvariableop_resourceKsequential_80_lstm_240_while_lstm_cell_60_biasadd_readvariableop_resource_0"
Jsequential_80_lstm_240_while_lstm_cell_60_matmul_1_readvariableop_resourceLsequential_80_lstm_240_while_lstm_cell_60_matmul_1_readvariableop_resource_0"
Hsequential_80_lstm_240_while_lstm_cell_60_matmul_readvariableop_resourceJsequential_80_lstm_240_while_lstm_cell_60_matmul_readvariableop_resource_0"
Csequential_80_lstm_240_while_sequential_80_lstm_240_strided_slice_1Esequential_80_lstm_240_while_sequential_80_lstm_240_strided_slice_1_0"
sequential_80_lstm_240_while_tensorarrayv2read_tensorlistgetitem_sequential_80_lstm_240_tensorarrayunstack_tensorlistfromtensorsequential_80_lstm_240_while_tensorarrayv2read_tensorlistgetitem_sequential_80_lstm_240_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2
@sequential_80/lstm_240/while/lstm_cell_60/BiasAdd/ReadVariableOp@sequential_80/lstm_240/while/lstm_cell_60/BiasAdd/ReadVariableOp2
?sequential_80/lstm_240/while/lstm_cell_60/MatMul/ReadVariableOp?sequential_80/lstm_240/while/lstm_cell_60/MatMul/ReadVariableOp2
Asequential_80/lstm_240/while/lstm_cell_60/MatMul_1/ReadVariableOpAsequential_80/lstm_240/while/lstm_cell_60/MatMul_1/ReadVariableOp: 
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
˙µ
Á
!__inference__wrapped_model_374832
lstm_240_inputU
Bsequential_80_lstm_240_lstm_cell_60_matmul_readvariableop_resource:	W
Dsequential_80_lstm_240_lstm_cell_60_matmul_1_readvariableop_resource:	dR
Csequential_80_lstm_240_lstm_cell_60_biasadd_readvariableop_resource:	U
Bsequential_80_lstm_241_lstm_cell_61_matmul_readvariableop_resource:	dÈW
Dsequential_80_lstm_241_lstm_cell_61_matmul_1_readvariableop_resource:	2ÈR
Csequential_80_lstm_241_lstm_cell_61_biasadd_readvariableop_resource:	ÈT
Bsequential_80_lstm_242_lstm_cell_62_matmul_readvariableop_resource:2(V
Dsequential_80_lstm_242_lstm_cell_62_matmul_1_readvariableop_resource:
(Q
Csequential_80_lstm_242_lstm_cell_62_biasadd_readvariableop_resource:(G
5sequential_80_dense_80_matmul_readvariableop_resource:
D
6sequential_80_dense_80_biasadd_readvariableop_resource:
identity˘-sequential_80/dense_80/BiasAdd/ReadVariableOp˘,sequential_80/dense_80/MatMul/ReadVariableOp˘:sequential_80/lstm_240/lstm_cell_60/BiasAdd/ReadVariableOp˘9sequential_80/lstm_240/lstm_cell_60/MatMul/ReadVariableOp˘;sequential_80/lstm_240/lstm_cell_60/MatMul_1/ReadVariableOp˘sequential_80/lstm_240/while˘:sequential_80/lstm_241/lstm_cell_61/BiasAdd/ReadVariableOp˘9sequential_80/lstm_241/lstm_cell_61/MatMul/ReadVariableOp˘;sequential_80/lstm_241/lstm_cell_61/MatMul_1/ReadVariableOp˘sequential_80/lstm_241/while˘:sequential_80/lstm_242/lstm_cell_62/BiasAdd/ReadVariableOp˘9sequential_80/lstm_242/lstm_cell_62/MatMul/ReadVariableOp˘;sequential_80/lstm_242/lstm_cell_62/MatMul_1/ReadVariableOp˘sequential_80/lstm_242/whileZ
sequential_80/lstm_240/ShapeShapelstm_240_input*
T0*
_output_shapes
:t
*sequential_80/lstm_240/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_80/lstm_240/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_80/lstm_240/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_80/lstm_240/strided_sliceStridedSlice%sequential_80/lstm_240/Shape:output:03sequential_80/lstm_240/strided_slice/stack:output:05sequential_80/lstm_240/strided_slice/stack_1:output:05sequential_80/lstm_240/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_80/lstm_240/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d¸
#sequential_80/lstm_240/zeros/packedPack-sequential_80/lstm_240/strided_slice:output:0.sequential_80/lstm_240/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_80/lstm_240/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_80/lstm_240/zerosFill,sequential_80/lstm_240/zeros/packed:output:0+sequential_80/lstm_240/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙di
'sequential_80/lstm_240/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dĵ
%sequential_80/lstm_240/zeros_1/packedPack-sequential_80/lstm_240/strided_slice:output:00sequential_80/lstm_240/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_80/lstm_240/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_80/lstm_240/zeros_1Fill.sequential_80/lstm_240/zeros_1/packed:output:0-sequential_80/lstm_240/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
%sequential_80/lstm_240/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          £
 sequential_80/lstm_240/transpose	Transposelstm_240_input.sequential_80/lstm_240/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙r
sequential_80/lstm_240/Shape_1Shape$sequential_80/lstm_240/transpose:y:0*
T0*
_output_shapes
:v
,sequential_80/lstm_240/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_80/lstm_240/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_80/lstm_240/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_80/lstm_240/strided_slice_1StridedSlice'sequential_80/lstm_240/Shape_1:output:05sequential_80/lstm_240/strided_slice_1/stack:output:07sequential_80/lstm_240/strided_slice_1/stack_1:output:07sequential_80/lstm_240/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_80/lstm_240/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_80/lstm_240/TensorArrayV2TensorListReserve;sequential_80/lstm_240/TensorArrayV2/element_shape:output:0/sequential_80/lstm_240/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_80/lstm_240/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ?
>sequential_80/lstm_240/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_80/lstm_240/transpose:y:0Usequential_80/lstm_240/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_80/lstm_240/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_80/lstm_240/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_80/lstm_240/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_80/lstm_240/strided_slice_2StridedSlice$sequential_80/lstm_240/transpose:y:05sequential_80/lstm_240/strided_slice_2/stack:output:07sequential_80/lstm_240/strided_slice_2/stack_1:output:07sequential_80/lstm_240/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask½
9sequential_80/lstm_240/lstm_cell_60/MatMul/ReadVariableOpReadVariableOpBsequential_80_lstm_240_lstm_cell_60_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Û
*sequential_80/lstm_240/lstm_cell_60/MatMulMatMul/sequential_80/lstm_240/strided_slice_2:output:0Asequential_80/lstm_240/lstm_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
;sequential_80/lstm_240/lstm_cell_60/MatMul_1/ReadVariableOpReadVariableOpDsequential_80_lstm_240_lstm_cell_60_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ġ
,sequential_80/lstm_240/lstm_cell_60/MatMul_1MatMul%sequential_80/lstm_240/zeros:output:0Csequential_80/lstm_240/lstm_cell_60/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ñ
'sequential_80/lstm_240/lstm_cell_60/addAddV24sequential_80/lstm_240/lstm_cell_60/MatMul:product:06sequential_80/lstm_240/lstm_cell_60/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ğ
:sequential_80/lstm_240/lstm_cell_60/BiasAdd/ReadVariableOpReadVariableOpCsequential_80_lstm_240_lstm_cell_60_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ú
+sequential_80/lstm_240/lstm_cell_60/BiasAddBiasAdd+sequential_80/lstm_240/lstm_cell_60/add:z:0Bsequential_80/lstm_240/lstm_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
3sequential_80/lstm_240/lstm_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_80/lstm_240/lstm_cell_60/splitSplit<sequential_80/lstm_240/lstm_cell_60/split/split_dim:output:04sequential_80/lstm_240/lstm_cell_60/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
+sequential_80/lstm_240/lstm_cell_60/SigmoidSigmoid2sequential_80/lstm_240/lstm_cell_60/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
-sequential_80/lstm_240/lstm_cell_60/Sigmoid_1Sigmoid2sequential_80/lstm_240/lstm_cell_60/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĵ
'sequential_80/lstm_240/lstm_cell_60/mulMul1sequential_80/lstm_240/lstm_cell_60/Sigmoid_1:y:0'sequential_80/lstm_240/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
(sequential_80/lstm_240/lstm_cell_60/ReluRelu2sequential_80/lstm_240/lstm_cell_60/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dË
)sequential_80/lstm_240/lstm_cell_60/mul_1Mul/sequential_80/lstm_240/lstm_cell_60/Sigmoid:y:06sequential_80/lstm_240/lstm_cell_60/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÀ
)sequential_80/lstm_240/lstm_cell_60/add_1AddV2+sequential_80/lstm_240/lstm_cell_60/mul:z:0-sequential_80/lstm_240/lstm_cell_60/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
-sequential_80/lstm_240/lstm_cell_60/Sigmoid_2Sigmoid2sequential_80/lstm_240/lstm_cell_60/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
*sequential_80/lstm_240/lstm_cell_60/Relu_1Relu-sequential_80/lstm_240/lstm_cell_60/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÏ
)sequential_80/lstm_240/lstm_cell_60/mul_2Mul1sequential_80/lstm_240/lstm_cell_60/Sigmoid_2:y:08sequential_80/lstm_240/lstm_cell_60/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
4sequential_80/lstm_240/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ŭ
&sequential_80/lstm_240/TensorArrayV2_1TensorListReserve=sequential_80/lstm_240/TensorArrayV2_1/element_shape:output:0/sequential_80/lstm_240/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_80/lstm_240/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_80/lstm_240/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_80/lstm_240/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_80/lstm_240/whileWhile2sequential_80/lstm_240/while/loop_counter:output:08sequential_80/lstm_240/while/maximum_iterations:output:0$sequential_80/lstm_240/time:output:0/sequential_80/lstm_240/TensorArrayV2_1:handle:0%sequential_80/lstm_240/zeros:output:0'sequential_80/lstm_240/zeros_1:output:0/sequential_80/lstm_240/strided_slice_1:output:0Nsequential_80/lstm_240/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_80_lstm_240_lstm_cell_60_matmul_readvariableop_resourceDsequential_80_lstm_240_lstm_cell_60_matmul_1_readvariableop_resourceCsequential_80_lstm_240_lstm_cell_60_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_80_lstm_240_while_body_374464*4
cond,R*
(sequential_80_lstm_240_while_cond_374463*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
Gsequential_80/lstm_240/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
9sequential_80/lstm_240/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_80/lstm_240/while:output:3Psequential_80/lstm_240/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
,sequential_80/lstm_240/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_80/lstm_240/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_80/lstm_240/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_80/lstm_240/strided_slice_3StridedSliceBsequential_80/lstm_240/TensorArrayV2Stack/TensorListStack:tensor:05sequential_80/lstm_240/strided_slice_3/stack:output:07sequential_80/lstm_240/strided_slice_3/stack_1:output:07sequential_80/lstm_240/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask|
'sequential_80/lstm_240/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_80/lstm_240/transpose_1	TransposeBsequential_80/lstm_240/TensorArrayV2Stack/TensorListStack:tensor:00sequential_80/lstm_240/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dr
sequential_80/lstm_240/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_80/lstm_241/ShapeShape&sequential_80/lstm_240/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_80/lstm_241/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_80/lstm_241/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_80/lstm_241/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_80/lstm_241/strided_sliceStridedSlice%sequential_80/lstm_241/Shape:output:03sequential_80/lstm_241/strided_slice/stack:output:05sequential_80/lstm_241/strided_slice/stack_1:output:05sequential_80/lstm_241/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_80/lstm_241/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2¸
#sequential_80/lstm_241/zeros/packedPack-sequential_80/lstm_241/strided_slice:output:0.sequential_80/lstm_241/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_80/lstm_241/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_80/lstm_241/zerosFill,sequential_80/lstm_241/zeros/packed:output:0+sequential_80/lstm_241/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2i
'sequential_80/lstm_241/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ĵ
%sequential_80/lstm_241/zeros_1/packedPack-sequential_80/lstm_241/strided_slice:output:00sequential_80/lstm_241/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_80/lstm_241/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_80/lstm_241/zeros_1Fill.sequential_80/lstm_241/zeros_1/packed:output:0-sequential_80/lstm_241/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
%sequential_80/lstm_241/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ğ
 sequential_80/lstm_241/transpose	Transpose&sequential_80/lstm_240/transpose_1:y:0.sequential_80/lstm_241/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dr
sequential_80/lstm_241/Shape_1Shape$sequential_80/lstm_241/transpose:y:0*
T0*
_output_shapes
:v
,sequential_80/lstm_241/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_80/lstm_241/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_80/lstm_241/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_80/lstm_241/strided_slice_1StridedSlice'sequential_80/lstm_241/Shape_1:output:05sequential_80/lstm_241/strided_slice_1/stack:output:07sequential_80/lstm_241/strided_slice_1/stack_1:output:07sequential_80/lstm_241/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_80/lstm_241/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_80/lstm_241/TensorArrayV2TensorListReserve;sequential_80/lstm_241/TensorArrayV2/element_shape:output:0/sequential_80/lstm_241/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_80/lstm_241/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ?
>sequential_80/lstm_241/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_80/lstm_241/transpose:y:0Usequential_80/lstm_241/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_80/lstm_241/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_80/lstm_241/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_80/lstm_241/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_80/lstm_241/strided_slice_2StridedSlice$sequential_80/lstm_241/transpose:y:05sequential_80/lstm_241/strided_slice_2/stack:output:07sequential_80/lstm_241/strided_slice_2/stack_1:output:07sequential_80/lstm_241/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask½
9sequential_80/lstm_241/lstm_cell_61/MatMul/ReadVariableOpReadVariableOpBsequential_80_lstm_241_lstm_cell_61_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0Û
*sequential_80/lstm_241/lstm_cell_61/MatMulMatMul/sequential_80/lstm_241/strided_slice_2:output:0Asequential_80/lstm_241/lstm_cell_61/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÁ
;sequential_80/lstm_241/lstm_cell_61/MatMul_1/ReadVariableOpReadVariableOpDsequential_80_lstm_241_lstm_cell_61_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ġ
,sequential_80/lstm_241/lstm_cell_61/MatMul_1MatMul%sequential_80/lstm_241/zeros:output:0Csequential_80/lstm_241/lstm_cell_61/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÑ
'sequential_80/lstm_241/lstm_cell_61/addAddV24sequential_80/lstm_241/lstm_cell_61/MatMul:product:06sequential_80/lstm_241/lstm_cell_61/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èğ
:sequential_80/lstm_241/lstm_cell_61/BiasAdd/ReadVariableOpReadVariableOpCsequential_80_lstm_241_lstm_cell_61_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0Ú
+sequential_80/lstm_241/lstm_cell_61/BiasAddBiasAdd+sequential_80/lstm_241/lstm_cell_61/add:z:0Bsequential_80/lstm_241/lstm_cell_61/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èu
3sequential_80/lstm_241/lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_80/lstm_241/lstm_cell_61/splitSplit<sequential_80/lstm_241/lstm_cell_61/split/split_dim:output:04sequential_80/lstm_241/lstm_cell_61/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
+sequential_80/lstm_241/lstm_cell_61/SigmoidSigmoid2sequential_80/lstm_241/lstm_cell_61/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
-sequential_80/lstm_241/lstm_cell_61/Sigmoid_1Sigmoid2sequential_80/lstm_241/lstm_cell_61/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ĵ
'sequential_80/lstm_241/lstm_cell_61/mulMul1sequential_80/lstm_241/lstm_cell_61/Sigmoid_1:y:0'sequential_80/lstm_241/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
(sequential_80/lstm_241/lstm_cell_61/ReluRelu2sequential_80/lstm_241/lstm_cell_61/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ë
)sequential_80/lstm_241/lstm_cell_61/mul_1Mul/sequential_80/lstm_241/lstm_cell_61/Sigmoid:y:06sequential_80/lstm_241/lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2À
)sequential_80/lstm_241/lstm_cell_61/add_1AddV2+sequential_80/lstm_241/lstm_cell_61/mul:z:0-sequential_80/lstm_241/lstm_cell_61/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
-sequential_80/lstm_241/lstm_cell_61/Sigmoid_2Sigmoid2sequential_80/lstm_241/lstm_cell_61/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
*sequential_80/lstm_241/lstm_cell_61/Relu_1Relu-sequential_80/lstm_241/lstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ï
)sequential_80/lstm_241/lstm_cell_61/mul_2Mul1sequential_80/lstm_241/lstm_cell_61/Sigmoid_2:y:08sequential_80/lstm_241/lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
4sequential_80/lstm_241/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ŭ
&sequential_80/lstm_241/TensorArrayV2_1TensorListReserve=sequential_80/lstm_241/TensorArrayV2_1/element_shape:output:0/sequential_80/lstm_241/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_80/lstm_241/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_80/lstm_241/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_80/lstm_241/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_80/lstm_241/whileWhile2sequential_80/lstm_241/while/loop_counter:output:08sequential_80/lstm_241/while/maximum_iterations:output:0$sequential_80/lstm_241/time:output:0/sequential_80/lstm_241/TensorArrayV2_1:handle:0%sequential_80/lstm_241/zeros:output:0'sequential_80/lstm_241/zeros_1:output:0/sequential_80/lstm_241/strided_slice_1:output:0Nsequential_80/lstm_241/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_80_lstm_241_lstm_cell_61_matmul_readvariableop_resourceDsequential_80_lstm_241_lstm_cell_61_matmul_1_readvariableop_resourceCsequential_80_lstm_241_lstm_cell_61_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_80_lstm_241_while_body_374603*4
cond,R*
(sequential_80_lstm_241_while_cond_374602*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
Gsequential_80/lstm_241/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
9sequential_80/lstm_241/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_80/lstm_241/while:output:3Psequential_80/lstm_241/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
,sequential_80/lstm_241/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_80/lstm_241/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_80/lstm_241/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_80/lstm_241/strided_slice_3StridedSliceBsequential_80/lstm_241/TensorArrayV2Stack/TensorListStack:tensor:05sequential_80/lstm_241/strided_slice_3/stack:output:07sequential_80/lstm_241/strided_slice_3/stack_1:output:07sequential_80/lstm_241/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask|
'sequential_80/lstm_241/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_80/lstm_241/transpose_1	TransposeBsequential_80/lstm_241/TensorArrayV2Stack/TensorListStack:tensor:00sequential_80/lstm_241/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2r
sequential_80/lstm_241/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_80/lstm_242/ShapeShape&sequential_80/lstm_241/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_80/lstm_242/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_80/lstm_242/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_80/lstm_242/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_80/lstm_242/strided_sliceStridedSlice%sequential_80/lstm_242/Shape:output:03sequential_80/lstm_242/strided_slice/stack:output:05sequential_80/lstm_242/strided_slice/stack_1:output:05sequential_80/lstm_242/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_80/lstm_242/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
¸
#sequential_80/lstm_242/zeros/packedPack-sequential_80/lstm_242/strided_slice:output:0.sequential_80/lstm_242/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_80/lstm_242/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_80/lstm_242/zerosFill,sequential_80/lstm_242/zeros/packed:output:0+sequential_80/lstm_242/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
'sequential_80/lstm_242/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ĵ
%sequential_80/lstm_242/zeros_1/packedPack-sequential_80/lstm_242/strided_slice:output:00sequential_80/lstm_242/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_80/lstm_242/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_80/lstm_242/zeros_1Fill.sequential_80/lstm_242/zeros_1/packed:output:0-sequential_80/lstm_242/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
%sequential_80/lstm_242/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ğ
 sequential_80/lstm_242/transpose	Transpose&sequential_80/lstm_241/transpose_1:y:0.sequential_80/lstm_242/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2r
sequential_80/lstm_242/Shape_1Shape$sequential_80/lstm_242/transpose:y:0*
T0*
_output_shapes
:v
,sequential_80/lstm_242/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_80/lstm_242/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_80/lstm_242/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_80/lstm_242/strided_slice_1StridedSlice'sequential_80/lstm_242/Shape_1:output:05sequential_80/lstm_242/strided_slice_1/stack:output:07sequential_80/lstm_242/strided_slice_1/stack_1:output:07sequential_80/lstm_242/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_80/lstm_242/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_80/lstm_242/TensorArrayV2TensorListReserve;sequential_80/lstm_242/TensorArrayV2/element_shape:output:0/sequential_80/lstm_242/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_80/lstm_242/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ?
>sequential_80/lstm_242/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_80/lstm_242/transpose:y:0Usequential_80/lstm_242/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_80/lstm_242/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_80/lstm_242/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_80/lstm_242/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_80/lstm_242/strided_slice_2StridedSlice$sequential_80/lstm_242/transpose:y:05sequential_80/lstm_242/strided_slice_2/stack:output:07sequential_80/lstm_242/strided_slice_2/stack_1:output:07sequential_80/lstm_242/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskĵ
9sequential_80/lstm_242/lstm_cell_62/MatMul/ReadVariableOpReadVariableOpBsequential_80_lstm_242_lstm_cell_62_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ú
*sequential_80/lstm_242/lstm_cell_62/MatMulMatMul/sequential_80/lstm_242/strided_slice_2:output:0Asequential_80/lstm_242/lstm_cell_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(À
;sequential_80/lstm_242/lstm_cell_62/MatMul_1/ReadVariableOpReadVariableOpDsequential_80_lstm_242_lstm_cell_62_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ô
,sequential_80/lstm_242/lstm_cell_62/MatMul_1MatMul%sequential_80/lstm_242/zeros:output:0Csequential_80/lstm_242/lstm_cell_62/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(?
'sequential_80/lstm_242/lstm_cell_62/addAddV24sequential_80/lstm_242/lstm_cell_62/MatMul:product:06sequential_80/lstm_242/lstm_cell_62/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(ş
:sequential_80/lstm_242/lstm_cell_62/BiasAdd/ReadVariableOpReadVariableOpCsequential_80_lstm_242_lstm_cell_62_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ù
+sequential_80/lstm_242/lstm_cell_62/BiasAddBiasAdd+sequential_80/lstm_242/lstm_cell_62/add:z:0Bsequential_80/lstm_242/lstm_cell_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(u
3sequential_80/lstm_242/lstm_cell_62/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_80/lstm_242/lstm_cell_62/splitSplit<sequential_80/lstm_242/lstm_cell_62/split/split_dim:output:04sequential_80/lstm_242/lstm_cell_62/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
+sequential_80/lstm_242/lstm_cell_62/SigmoidSigmoid2sequential_80/lstm_242/lstm_cell_62/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

-sequential_80/lstm_242/lstm_cell_62/Sigmoid_1Sigmoid2sequential_80/lstm_242/lstm_cell_62/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĵ
'sequential_80/lstm_242/lstm_cell_62/mulMul1sequential_80/lstm_242/lstm_cell_62/Sigmoid_1:y:0'sequential_80/lstm_242/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

(sequential_80/lstm_242/lstm_cell_62/ReluRelu2sequential_80/lstm_242/lstm_cell_62/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ë
)sequential_80/lstm_242/lstm_cell_62/mul_1Mul/sequential_80/lstm_242/lstm_cell_62/Sigmoid:y:06sequential_80/lstm_242/lstm_cell_62/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
À
)sequential_80/lstm_242/lstm_cell_62/add_1AddV2+sequential_80/lstm_242/lstm_cell_62/mul:z:0-sequential_80/lstm_242/lstm_cell_62/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

-sequential_80/lstm_242/lstm_cell_62/Sigmoid_2Sigmoid2sequential_80/lstm_242/lstm_cell_62/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

*sequential_80/lstm_242/lstm_cell_62/Relu_1Relu-sequential_80/lstm_242/lstm_cell_62/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ï
)sequential_80/lstm_242/lstm_cell_62/mul_2Mul1sequential_80/lstm_242/lstm_cell_62/Sigmoid_2:y:08sequential_80/lstm_242/lstm_cell_62/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

4sequential_80/lstm_242/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ŭ
&sequential_80/lstm_242/TensorArrayV2_1TensorListReserve=sequential_80/lstm_242/TensorArrayV2_1/element_shape:output:0/sequential_80/lstm_242/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_80/lstm_242/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_80/lstm_242/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_80/lstm_242/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_80/lstm_242/whileWhile2sequential_80/lstm_242/while/loop_counter:output:08sequential_80/lstm_242/while/maximum_iterations:output:0$sequential_80/lstm_242/time:output:0/sequential_80/lstm_242/TensorArrayV2_1:handle:0%sequential_80/lstm_242/zeros:output:0'sequential_80/lstm_242/zeros_1:output:0/sequential_80/lstm_242/strided_slice_1:output:0Nsequential_80/lstm_242/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_80_lstm_242_lstm_cell_62_matmul_readvariableop_resourceDsequential_80_lstm_242_lstm_cell_62_matmul_1_readvariableop_resourceCsequential_80_lstm_242_lstm_cell_62_biasadd_readvariableop_resource*
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
_stateful_parallelism( *4
body,R*
(sequential_80_lstm_242_while_body_374742*4
cond,R*
(sequential_80_lstm_242_while_cond_374741*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
Gsequential_80/lstm_242/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   
9sequential_80/lstm_242/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_80/lstm_242/while:output:3Psequential_80/lstm_242/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0
,sequential_80/lstm_242/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_80/lstm_242/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_80/lstm_242/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_80/lstm_242/strided_slice_3StridedSliceBsequential_80/lstm_242/TensorArrayV2Stack/TensorListStack:tensor:05sequential_80/lstm_242/strided_slice_3/stack:output:07sequential_80/lstm_242/strided_slice_3/stack_1:output:07sequential_80/lstm_242/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_mask|
'sequential_80/lstm_242/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_80/lstm_242/transpose_1	TransposeBsequential_80/lstm_242/TensorArrayV2Stack/TensorListStack:tensor:00sequential_80/lstm_242/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
sequential_80/lstm_242/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ˘
,sequential_80/dense_80/MatMul/ReadVariableOpReadVariableOp5sequential_80_dense_80_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0À
sequential_80/dense_80/MatMulMatMul/sequential_80/lstm_242/strided_slice_3:output:04sequential_80/dense_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
-sequential_80/dense_80/BiasAdd/ReadVariableOpReadVariableOp6sequential_80_dense_80_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ğ
sequential_80/dense_80/BiasAddBiasAdd'sequential_80/dense_80/MatMul:product:05sequential_80/dense_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙v
IdentityIdentity'sequential_80/dense_80/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙§
NoOpNoOp.^sequential_80/dense_80/BiasAdd/ReadVariableOp-^sequential_80/dense_80/MatMul/ReadVariableOp;^sequential_80/lstm_240/lstm_cell_60/BiasAdd/ReadVariableOp:^sequential_80/lstm_240/lstm_cell_60/MatMul/ReadVariableOp<^sequential_80/lstm_240/lstm_cell_60/MatMul_1/ReadVariableOp^sequential_80/lstm_240/while;^sequential_80/lstm_241/lstm_cell_61/BiasAdd/ReadVariableOp:^sequential_80/lstm_241/lstm_cell_61/MatMul/ReadVariableOp<^sequential_80/lstm_241/lstm_cell_61/MatMul_1/ReadVariableOp^sequential_80/lstm_241/while;^sequential_80/lstm_242/lstm_cell_62/BiasAdd/ReadVariableOp:^sequential_80/lstm_242/lstm_cell_62/MatMul/ReadVariableOp<^sequential_80/lstm_242/lstm_cell_62/MatMul_1/ReadVariableOp^sequential_80/lstm_242/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2^
-sequential_80/dense_80/BiasAdd/ReadVariableOp-sequential_80/dense_80/BiasAdd/ReadVariableOp2\
,sequential_80/dense_80/MatMul/ReadVariableOp,sequential_80/dense_80/MatMul/ReadVariableOp2x
:sequential_80/lstm_240/lstm_cell_60/BiasAdd/ReadVariableOp:sequential_80/lstm_240/lstm_cell_60/BiasAdd/ReadVariableOp2v
9sequential_80/lstm_240/lstm_cell_60/MatMul/ReadVariableOp9sequential_80/lstm_240/lstm_cell_60/MatMul/ReadVariableOp2z
;sequential_80/lstm_240/lstm_cell_60/MatMul_1/ReadVariableOp;sequential_80/lstm_240/lstm_cell_60/MatMul_1/ReadVariableOp2<
sequential_80/lstm_240/whilesequential_80/lstm_240/while2x
:sequential_80/lstm_241/lstm_cell_61/BiasAdd/ReadVariableOp:sequential_80/lstm_241/lstm_cell_61/BiasAdd/ReadVariableOp2v
9sequential_80/lstm_241/lstm_cell_61/MatMul/ReadVariableOp9sequential_80/lstm_241/lstm_cell_61/MatMul/ReadVariableOp2z
;sequential_80/lstm_241/lstm_cell_61/MatMul_1/ReadVariableOp;sequential_80/lstm_241/lstm_cell_61/MatMul_1/ReadVariableOp2<
sequential_80/lstm_241/whilesequential_80/lstm_241/while2x
:sequential_80/lstm_242/lstm_cell_62/BiasAdd/ReadVariableOp:sequential_80/lstm_242/lstm_cell_62/BiasAdd/ReadVariableOp2v
9sequential_80/lstm_242/lstm_cell_62/MatMul/ReadVariableOp9sequential_80/lstm_242/lstm_cell_62/MatMul/ReadVariableOp2z
;sequential_80/lstm_242/lstm_cell_62/MatMul_1/ReadVariableOp;sequential_80/lstm_242/lstm_cell_62/MatMul_1/ReadVariableOp2<
sequential_80/lstm_242/whilesequential_80/lstm_242/while:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_240_input
¤J

D__inference_lstm_240_layer_call_and_return_conditional_losses_376877

inputs>
+lstm_cell_60_matmul_readvariableop_resource:	@
-lstm_cell_60_matmul_1_readvariableop_resource:	d;
,lstm_cell_60_biasadd_readvariableop_resource:	
identity˘#lstm_cell_60/BiasAdd/ReadVariableOp˘"lstm_cell_60/MatMul/ReadVariableOp˘$lstm_cell_60/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_60/MatMul/ReadVariableOpReadVariableOp+lstm_cell_60_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_60/MatMulMatMulstrided_slice_2:output:0*lstm_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_60/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_60_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_60/MatMul_1MatMulzeros:output:0,lstm_cell_60/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_60/addAddV2lstm_cell_60/MatMul:product:0lstm_cell_60/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_60/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_60_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_60/BiasAddBiasAddlstm_cell_60/add:z:0+lstm_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_60/splitSplit%lstm_cell_60/split/split_dim:output:0lstm_cell_60/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_60/SigmoidSigmoidlstm_cell_60/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_60/Sigmoid_1Sigmoidlstm_cell_60/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_60/mulMullstm_cell_60/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_60/ReluRelulstm_cell_60/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_60/mul_1Mullstm_cell_60/Sigmoid:y:0lstm_cell_60/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_60/add_1AddV2lstm_cell_60/mul:z:0lstm_cell_60/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_60/Sigmoid_2Sigmoidlstm_cell_60/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_60/Relu_1Relulstm_cell_60/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_60/mul_2Mullstm_cell_60/Sigmoid_2:y:0!lstm_cell_60/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_60_matmul_readvariableop_resource-lstm_cell_60_matmul_1_readvariableop_resource,lstm_cell_60_biasadd_readvariableop_resource*
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
while_body_376793*
condR
while_cond_376792*K
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
NoOpNoOp$^lstm_cell_60/BiasAdd/ReadVariableOp#^lstm_cell_60/MatMul/ReadVariableOp%^lstm_cell_60/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_60/BiasAdd/ReadVariableOp#lstm_cell_60/BiasAdd/ReadVariableOp2H
"lstm_cell_60/MatMul/ReadVariableOp"lstm_cell_60/MatMul/ReadVariableOp2L
$lstm_cell_60/MatMul_1/ReadVariableOp$lstm_cell_60/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ÎB
ê

lstm_242_while_body_377910.
*lstm_242_while_lstm_242_while_loop_counter4
0lstm_242_while_lstm_242_while_maximum_iterations
lstm_242_while_placeholder 
lstm_242_while_placeholder_1 
lstm_242_while_placeholder_2 
lstm_242_while_placeholder_3-
)lstm_242_while_lstm_242_strided_slice_1_0i
elstm_242_while_tensorarrayv2read_tensorlistgetitem_lstm_242_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_242_while_lstm_cell_62_matmul_readvariableop_resource_0:2(P
>lstm_242_while_lstm_cell_62_matmul_1_readvariableop_resource_0:
(K
=lstm_242_while_lstm_cell_62_biasadd_readvariableop_resource_0:(
lstm_242_while_identity
lstm_242_while_identity_1
lstm_242_while_identity_2
lstm_242_while_identity_3
lstm_242_while_identity_4
lstm_242_while_identity_5+
'lstm_242_while_lstm_242_strided_slice_1g
clstm_242_while_tensorarrayv2read_tensorlistgetitem_lstm_242_tensorarrayunstack_tensorlistfromtensorL
:lstm_242_while_lstm_cell_62_matmul_readvariableop_resource:2(N
<lstm_242_while_lstm_cell_62_matmul_1_readvariableop_resource:
(I
;lstm_242_while_lstm_cell_62_biasadd_readvariableop_resource:(˘2lstm_242/while/lstm_cell_62/BiasAdd/ReadVariableOp˘1lstm_242/while/lstm_cell_62/MatMul/ReadVariableOp˘3lstm_242/while/lstm_cell_62/MatMul_1/ReadVariableOp
@lstm_242/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_242/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_242_while_tensorarrayv2read_tensorlistgetitem_lstm_242_tensorarrayunstack_tensorlistfromtensor_0lstm_242_while_placeholderIlstm_242/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_242/while/lstm_cell_62/MatMul/ReadVariableOpReadVariableOp<lstm_242_while_lstm_cell_62_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_242/while/lstm_cell_62/MatMulMatMul9lstm_242/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_242/while/lstm_cell_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_242/while/lstm_cell_62/MatMul_1/ReadVariableOpReadVariableOp>lstm_242_while_lstm_cell_62_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_242/while/lstm_cell_62/MatMul_1MatMullstm_242_while_placeholder_2;lstm_242/while/lstm_cell_62/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_242/while/lstm_cell_62/addAddV2,lstm_242/while/lstm_cell_62/MatMul:product:0.lstm_242/while/lstm_cell_62/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_242/while/lstm_cell_62/BiasAdd/ReadVariableOpReadVariableOp=lstm_242_while_lstm_cell_62_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_242/while/lstm_cell_62/BiasAddBiasAdd#lstm_242/while/lstm_cell_62/add:z:0:lstm_242/while/lstm_cell_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_242/while/lstm_cell_62/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_242/while/lstm_cell_62/splitSplit4lstm_242/while/lstm_cell_62/split/split_dim:output:0,lstm_242/while/lstm_cell_62/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_242/while/lstm_cell_62/SigmoidSigmoid*lstm_242/while/lstm_cell_62/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_242/while/lstm_cell_62/Sigmoid_1Sigmoid*lstm_242/while/lstm_cell_62/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_242/while/lstm_cell_62/mulMul)lstm_242/while/lstm_cell_62/Sigmoid_1:y:0lstm_242_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_242/while/lstm_cell_62/ReluRelu*lstm_242/while/lstm_cell_62/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_242/while/lstm_cell_62/mul_1Mul'lstm_242/while/lstm_cell_62/Sigmoid:y:0.lstm_242/while/lstm_cell_62/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_242/while/lstm_cell_62/add_1AddV2#lstm_242/while/lstm_cell_62/mul:z:0%lstm_242/while/lstm_cell_62/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_242/while/lstm_cell_62/Sigmoid_2Sigmoid*lstm_242/while/lstm_cell_62/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_242/while/lstm_cell_62/Relu_1Relu%lstm_242/while/lstm_cell_62/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_242/while/lstm_cell_62/mul_2Mul)lstm_242/while/lstm_cell_62/Sigmoid_2:y:00lstm_242/while/lstm_cell_62/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_242/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_242_while_placeholder_1lstm_242_while_placeholder%lstm_242/while/lstm_cell_62/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_242/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_242/while/addAddV2lstm_242_while_placeholderlstm_242/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_242/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_242/while/add_1AddV2*lstm_242_while_lstm_242_while_loop_counterlstm_242/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_242/while/IdentityIdentitylstm_242/while/add_1:z:0^lstm_242/while/NoOp*
T0*
_output_shapes
: 
lstm_242/while/Identity_1Identity0lstm_242_while_lstm_242_while_maximum_iterations^lstm_242/while/NoOp*
T0*
_output_shapes
: t
lstm_242/while/Identity_2Identitylstm_242/while/add:z:0^lstm_242/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_242/while/Identity_3IdentityClstm_242/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_242/while/NoOp*
T0*
_output_shapes
: 
lstm_242/while/Identity_4Identity%lstm_242/while/lstm_cell_62/mul_2:z:0^lstm_242/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_242/while/Identity_5Identity%lstm_242/while/lstm_cell_62/add_1:z:0^lstm_242/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_242/while/NoOpNoOp3^lstm_242/while/lstm_cell_62/BiasAdd/ReadVariableOp2^lstm_242/while/lstm_cell_62/MatMul/ReadVariableOp4^lstm_242/while/lstm_cell_62/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_242_while_identity lstm_242/while/Identity:output:0"?
lstm_242_while_identity_1"lstm_242/while/Identity_1:output:0"?
lstm_242_while_identity_2"lstm_242/while/Identity_2:output:0"?
lstm_242_while_identity_3"lstm_242/while/Identity_3:output:0"?
lstm_242_while_identity_4"lstm_242/while/Identity_4:output:0"?
lstm_242_while_identity_5"lstm_242/while/Identity_5:output:0"T
'lstm_242_while_lstm_242_strided_slice_1)lstm_242_while_lstm_242_strided_slice_1_0"|
;lstm_242_while_lstm_cell_62_biasadd_readvariableop_resource=lstm_242_while_lstm_cell_62_biasadd_readvariableop_resource_0"~
<lstm_242_while_lstm_cell_62_matmul_1_readvariableop_resource>lstm_242_while_lstm_cell_62_matmul_1_readvariableop_resource_0"z
:lstm_242_while_lstm_cell_62_matmul_readvariableop_resource<lstm_242_while_lstm_cell_62_matmul_readvariableop_resource_0"Ì
clstm_242_while_tensorarrayv2read_tensorlistgetitem_lstm_242_tensorarrayunstack_tensorlistfromtensorelstm_242_while_tensorarrayv2read_tensorlistgetitem_lstm_242_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_242/while/lstm_cell_62/BiasAdd/ReadVariableOp2lstm_242/while/lstm_cell_62/BiasAdd/ReadVariableOp2f
1lstm_242/while/lstm_cell_62/MatMul/ReadVariableOp1lstm_242/while/lstm_cell_62/MatMul/ReadVariableOp2j
3lstm_242/while/lstm_cell_62/MatMul_1/ReadVariableOp3lstm_242/while/lstm_cell_62/MatMul_1/ReadVariableOp: 
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
ÛB
?

lstm_240_while_body_377205.
*lstm_240_while_lstm_240_while_loop_counter4
0lstm_240_while_lstm_240_while_maximum_iterations
lstm_240_while_placeholder 
lstm_240_while_placeholder_1 
lstm_240_while_placeholder_2 
lstm_240_while_placeholder_3-
)lstm_240_while_lstm_240_strided_slice_1_0i
elstm_240_while_tensorarrayv2read_tensorlistgetitem_lstm_240_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_240_while_lstm_cell_60_matmul_readvariableop_resource_0:	Q
>lstm_240_while_lstm_cell_60_matmul_1_readvariableop_resource_0:	dL
=lstm_240_while_lstm_cell_60_biasadd_readvariableop_resource_0:	
lstm_240_while_identity
lstm_240_while_identity_1
lstm_240_while_identity_2
lstm_240_while_identity_3
lstm_240_while_identity_4
lstm_240_while_identity_5+
'lstm_240_while_lstm_240_strided_slice_1g
clstm_240_while_tensorarrayv2read_tensorlistgetitem_lstm_240_tensorarrayunstack_tensorlistfromtensorM
:lstm_240_while_lstm_cell_60_matmul_readvariableop_resource:	O
<lstm_240_while_lstm_cell_60_matmul_1_readvariableop_resource:	dJ
;lstm_240_while_lstm_cell_60_biasadd_readvariableop_resource:	˘2lstm_240/while/lstm_cell_60/BiasAdd/ReadVariableOp˘1lstm_240/while/lstm_cell_60/MatMul/ReadVariableOp˘3lstm_240/while/lstm_cell_60/MatMul_1/ReadVariableOp
@lstm_240/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_240/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_240_while_tensorarrayv2read_tensorlistgetitem_lstm_240_tensorarrayunstack_tensorlistfromtensor_0lstm_240_while_placeholderIlstm_240/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_240/while/lstm_cell_60/MatMul/ReadVariableOpReadVariableOp<lstm_240_while_lstm_cell_60_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_240/while/lstm_cell_60/MatMulMatMul9lstm_240/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_240/while/lstm_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_240/while/lstm_cell_60/MatMul_1/ReadVariableOpReadVariableOp>lstm_240_while_lstm_cell_60_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_240/while/lstm_cell_60/MatMul_1MatMullstm_240_while_placeholder_2;lstm_240/while/lstm_cell_60/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_240/while/lstm_cell_60/addAddV2,lstm_240/while/lstm_cell_60/MatMul:product:0.lstm_240/while/lstm_cell_60/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_240/while/lstm_cell_60/BiasAdd/ReadVariableOpReadVariableOp=lstm_240_while_lstm_cell_60_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_240/while/lstm_cell_60/BiasAddBiasAdd#lstm_240/while/lstm_cell_60/add:z:0:lstm_240/while/lstm_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_240/while/lstm_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_240/while/lstm_cell_60/splitSplit4lstm_240/while/lstm_cell_60/split/split_dim:output:0,lstm_240/while/lstm_cell_60/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_240/while/lstm_cell_60/SigmoidSigmoid*lstm_240/while/lstm_cell_60/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_240/while/lstm_cell_60/Sigmoid_1Sigmoid*lstm_240/while/lstm_cell_60/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_240/while/lstm_cell_60/mulMul)lstm_240/while/lstm_cell_60/Sigmoid_1:y:0lstm_240_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_240/while/lstm_cell_60/ReluRelu*lstm_240/while/lstm_cell_60/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_240/while/lstm_cell_60/mul_1Mul'lstm_240/while/lstm_cell_60/Sigmoid:y:0.lstm_240/while/lstm_cell_60/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_240/while/lstm_cell_60/add_1AddV2#lstm_240/while/lstm_cell_60/mul:z:0%lstm_240/while/lstm_cell_60/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_240/while/lstm_cell_60/Sigmoid_2Sigmoid*lstm_240/while/lstm_cell_60/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_240/while/lstm_cell_60/Relu_1Relu%lstm_240/while/lstm_cell_60/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_240/while/lstm_cell_60/mul_2Mul)lstm_240/while/lstm_cell_60/Sigmoid_2:y:00lstm_240/while/lstm_cell_60/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_240/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_240_while_placeholder_1lstm_240_while_placeholder%lstm_240/while/lstm_cell_60/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_240/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_240/while/addAddV2lstm_240_while_placeholderlstm_240/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_240/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_240/while/add_1AddV2*lstm_240_while_lstm_240_while_loop_counterlstm_240/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_240/while/IdentityIdentitylstm_240/while/add_1:z:0^lstm_240/while/NoOp*
T0*
_output_shapes
: 
lstm_240/while/Identity_1Identity0lstm_240_while_lstm_240_while_maximum_iterations^lstm_240/while/NoOp*
T0*
_output_shapes
: t
lstm_240/while/Identity_2Identitylstm_240/while/add:z:0^lstm_240/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_240/while/Identity_3IdentityClstm_240/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_240/while/NoOp*
T0*
_output_shapes
: 
lstm_240/while/Identity_4Identity%lstm_240/while/lstm_cell_60/mul_2:z:0^lstm_240/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_240/while/Identity_5Identity%lstm_240/while/lstm_cell_60/add_1:z:0^lstm_240/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_240/while/NoOpNoOp3^lstm_240/while/lstm_cell_60/BiasAdd/ReadVariableOp2^lstm_240/while/lstm_cell_60/MatMul/ReadVariableOp4^lstm_240/while/lstm_cell_60/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_240_while_identity lstm_240/while/Identity:output:0"?
lstm_240_while_identity_1"lstm_240/while/Identity_1:output:0"?
lstm_240_while_identity_2"lstm_240/while/Identity_2:output:0"?
lstm_240_while_identity_3"lstm_240/while/Identity_3:output:0"?
lstm_240_while_identity_4"lstm_240/while/Identity_4:output:0"?
lstm_240_while_identity_5"lstm_240/while/Identity_5:output:0"T
'lstm_240_while_lstm_240_strided_slice_1)lstm_240_while_lstm_240_strided_slice_1_0"|
;lstm_240_while_lstm_cell_60_biasadd_readvariableop_resource=lstm_240_while_lstm_cell_60_biasadd_readvariableop_resource_0"~
<lstm_240_while_lstm_cell_60_matmul_1_readvariableop_resource>lstm_240_while_lstm_cell_60_matmul_1_readvariableop_resource_0"z
:lstm_240_while_lstm_cell_60_matmul_readvariableop_resource<lstm_240_while_lstm_cell_60_matmul_readvariableop_resource_0"Ì
clstm_240_while_tensorarrayv2read_tensorlistgetitem_lstm_240_tensorarrayunstack_tensorlistfromtensorelstm_240_while_tensorarrayv2read_tensorlistgetitem_lstm_240_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_240/while/lstm_cell_60/BiasAdd/ReadVariableOp2lstm_240/while/lstm_cell_60/BiasAdd/ReadVariableOp2f
1lstm_240/while/lstm_cell_60/MatMul/ReadVariableOp1lstm_240/while/lstm_cell_60/MatMul/ReadVariableOp2j
3lstm_240/while/lstm_cell_60/MatMul_1/ReadVariableOp3lstm_240/while/lstm_cell_60/MatMul_1/ReadVariableOp: 
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
Ë

H__inference_lstm_cell_62_layer_call_and_return_conditional_losses_375745

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
µ
?
while_cond_378861
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_378861___redundant_placeholder04
0while_while_cond_378861___redundant_placeholder14
0while_while_cond_378861___redundant_placeholder24
0while_while_cond_378861___redundant_placeholder3
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
8

D__inference_lstm_242_layer_call_and_return_conditional_losses_375873

inputs%
lstm_cell_62_375791:2(%
lstm_cell_62_375793:
(!
lstm_cell_62_375795:(
identity˘$lstm_cell_62/StatefulPartitionedCall˘while;
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
$lstm_cell_62/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_62_375791lstm_cell_62_375793lstm_cell_62_375795*
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
H__inference_lstm_cell_62_layer_call_and_return_conditional_losses_375745n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_62_375791lstm_cell_62_375793lstm_cell_62_375795*
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
while_body_375804*
condR
while_cond_375803*K
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
NoOpNoOp%^lstm_cell_62/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_62/StatefulPartitionedCall$lstm_cell_62/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
?
ó
I__inference_sequential_80_layer_call_and_return_conditional_losses_377027
lstm_240_input"
lstm_240_377000:	"
lstm_240_377002:	d
lstm_240_377004:	"
lstm_241_377007:	dÈ"
lstm_241_377009:	2È
lstm_241_377011:	È!
lstm_242_377014:2(!
lstm_242_377016:
(
lstm_242_377018:(!
dense_80_377021:

dense_80_377023:
identity˘ dense_80/StatefulPartitionedCall˘ lstm_240/StatefulPartitionedCall˘ lstm_241/StatefulPartitionedCall˘ lstm_242/StatefulPartitionedCall
 lstm_240/StatefulPartitionedCallStatefulPartitionedCalllstm_240_inputlstm_240_377000lstm_240_377002lstm_240_377004*
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
D__inference_lstm_240_layer_call_and_return_conditional_losses_376031Ş
 lstm_241/StatefulPartitionedCallStatefulPartitionedCall)lstm_240/StatefulPartitionedCall:output:0lstm_241_377007lstm_241_377009lstm_241_377011*
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
D__inference_lstm_241_layer_call_and_return_conditional_losses_376181Ĥ
 lstm_242/StatefulPartitionedCallStatefulPartitionedCall)lstm_241/StatefulPartitionedCall:output:0lstm_242_377014lstm_242_377016lstm_242_377018*
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
D__inference_lstm_242_layer_call_and_return_conditional_losses_376331
 dense_80/StatefulPartitionedCallStatefulPartitionedCall)lstm_242/StatefulPartitionedCall:output:0dense_80_377021dense_80_377023*
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
GPU 2J 8 *M
fHRF
D__inference_dense_80_layer_call_and_return_conditional_losses_376349x
IdentityIdentity)dense_80/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_80/StatefulPartitionedCall!^lstm_240/StatefulPartitionedCall!^lstm_241/StatefulPartitionedCall!^lstm_242/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_80/StatefulPartitionedCall dense_80/StatefulPartitionedCall2D
 lstm_240/StatefulPartitionedCall lstm_240/StatefulPartitionedCall2D
 lstm_241/StatefulPartitionedCall lstm_241/StatefulPartitionedCall2D
 lstm_242/StatefulPartitionedCall lstm_242/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_240_input
Ğ
¸
)__inference_lstm_240_layer_call_fn_378022
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
D__inference_lstm_240_layer_call_and_return_conditional_losses_375173|
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
Ğ
ë
I__inference_sequential_80_layer_call_and_return_conditional_losses_376945

inputs"
lstm_240_376918:	"
lstm_240_376920:	d
lstm_240_376922:	"
lstm_241_376925:	dÈ"
lstm_241_376927:	2È
lstm_241_376929:	È!
lstm_242_376932:2(!
lstm_242_376934:
(
lstm_242_376936:(!
dense_80_376939:

dense_80_376941:
identity˘ dense_80/StatefulPartitionedCall˘ lstm_240/StatefulPartitionedCall˘ lstm_241/StatefulPartitionedCall˘ lstm_242/StatefulPartitionedCall
 lstm_240/StatefulPartitionedCallStatefulPartitionedCallinputslstm_240_376918lstm_240_376920lstm_240_376922*
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
D__inference_lstm_240_layer_call_and_return_conditional_losses_376877Ş
 lstm_241/StatefulPartitionedCallStatefulPartitionedCall)lstm_240/StatefulPartitionedCall:output:0lstm_241_376925lstm_241_376927lstm_241_376929*
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
D__inference_lstm_241_layer_call_and_return_conditional_losses_376712Ĥ
 lstm_242/StatefulPartitionedCallStatefulPartitionedCall)lstm_241/StatefulPartitionedCall:output:0lstm_242_376932lstm_242_376934lstm_242_376936*
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
D__inference_lstm_242_layer_call_and_return_conditional_losses_376547
 dense_80/StatefulPartitionedCallStatefulPartitionedCall)lstm_242/StatefulPartitionedCall:output:0dense_80_376939dense_80_376941*
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
GPU 2J 8 *M
fHRF
D__inference_dense_80_layer_call_and_return_conditional_losses_376349x
IdentityIdentity)dense_80/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_80/StatefulPartitionedCall!^lstm_240/StatefulPartitionedCall!^lstm_241/StatefulPartitionedCall!^lstm_242/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_80/StatefulPartitionedCall dense_80/StatefulPartitionedCall2D
 lstm_240/StatefulPartitionedCall lstm_240/StatefulPartitionedCall2D
 lstm_241/StatefulPartitionedCall lstm_241/StatefulPartitionedCall2D
 lstm_242/StatefulPartitionedCall lstm_242/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ÔJ

D__inference_lstm_242_layer_call_and_return_conditional_losses_379419
inputs_0=
+lstm_cell_62_matmul_readvariableop_resource:2(?
-lstm_cell_62_matmul_1_readvariableop_resource:
(:
,lstm_cell_62_biasadd_readvariableop_resource:(
identity˘#lstm_cell_62/BiasAdd/ReadVariableOp˘"lstm_cell_62/MatMul/ReadVariableOp˘$lstm_cell_62/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_62/MatMul/ReadVariableOpReadVariableOp+lstm_cell_62_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_62/MatMulMatMulstrided_slice_2:output:0*lstm_cell_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_62/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_62_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_62/MatMul_1MatMulzeros:output:0,lstm_cell_62/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_62/addAddV2lstm_cell_62/MatMul:product:0lstm_cell_62/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_62/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_62_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_62/BiasAddBiasAddlstm_cell_62/add:z:0+lstm_cell_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_62/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_62/splitSplit%lstm_cell_62/split/split_dim:output:0lstm_cell_62/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_62/SigmoidSigmoidlstm_cell_62/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_62/Sigmoid_1Sigmoidlstm_cell_62/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_62/mulMullstm_cell_62/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_62/ReluRelulstm_cell_62/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_62/mul_1Mullstm_cell_62/Sigmoid:y:0lstm_cell_62/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_62/add_1AddV2lstm_cell_62/mul:z:0lstm_cell_62/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_62/Sigmoid_2Sigmoidlstm_cell_62/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_62/Relu_1Relulstm_cell_62/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_62/mul_2Mullstm_cell_62/Sigmoid_2:y:0!lstm_cell_62/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_62_matmul_readvariableop_resource-lstm_cell_62_matmul_1_readvariableop_resource,lstm_cell_62_biasadd_readvariableop_resource*
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
while_body_379335*
condR
while_cond_379334*K
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
NoOpNoOp$^lstm_cell_62/BiasAdd/ReadVariableOp#^lstm_cell_62/MatMul/ReadVariableOp%^lstm_cell_62/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_62/BiasAdd/ReadVariableOp#lstm_cell_62/BiasAdd/ReadVariableOp2H
"lstm_cell_62/MatMul/ReadVariableOp"lstm_cell_62/MatMul/ReadVariableOp2L
$lstm_cell_62/MatMul_1/ReadVariableOp$lstm_cell_62/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
Ġ

H__inference_lstm_cell_60_layer_call_and_return_conditional_losses_375045

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
ÔJ

D__inference_lstm_242_layer_call_and_return_conditional_losses_379562
inputs_0=
+lstm_cell_62_matmul_readvariableop_resource:2(?
-lstm_cell_62_matmul_1_readvariableop_resource:
(:
,lstm_cell_62_biasadd_readvariableop_resource:(
identity˘#lstm_cell_62/BiasAdd/ReadVariableOp˘"lstm_cell_62/MatMul/ReadVariableOp˘$lstm_cell_62/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_62/MatMul/ReadVariableOpReadVariableOp+lstm_cell_62_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_62/MatMulMatMulstrided_slice_2:output:0*lstm_cell_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_62/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_62_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_62/MatMul_1MatMulzeros:output:0,lstm_cell_62/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_62/addAddV2lstm_cell_62/MatMul:product:0lstm_cell_62/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_62/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_62_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_62/BiasAddBiasAddlstm_cell_62/add:z:0+lstm_cell_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_62/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_62/splitSplit%lstm_cell_62/split/split_dim:output:0lstm_cell_62/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_62/SigmoidSigmoidlstm_cell_62/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_62/Sigmoid_1Sigmoidlstm_cell_62/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_62/mulMullstm_cell_62/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_62/ReluRelulstm_cell_62/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_62/mul_1Mullstm_cell_62/Sigmoid:y:0lstm_cell_62/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_62/add_1AddV2lstm_cell_62/mul:z:0lstm_cell_62/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_62/Sigmoid_2Sigmoidlstm_cell_62/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_62/Relu_1Relulstm_cell_62/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_62/mul_2Mullstm_cell_62/Sigmoid_2:y:0!lstm_cell_62/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_62_matmul_readvariableop_resource-lstm_cell_62_matmul_1_readvariableop_resource,lstm_cell_62_biasadd_readvariableop_resource*
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
while_body_379478*
condR
while_cond_379477*K
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
NoOpNoOp$^lstm_cell_62/BiasAdd/ReadVariableOp#^lstm_cell_62/MatMul/ReadVariableOp%^lstm_cell_62/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_62/BiasAdd/ReadVariableOp#lstm_cell_62/BiasAdd/ReadVariableOp2H
"lstm_cell_62/MatMul/ReadVariableOp"lstm_cell_62/MatMul/ReadVariableOp2L
$lstm_cell_62/MatMul_1/ReadVariableOp$lstm_cell_62/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
âJ

D__inference_lstm_240_layer_call_and_return_conditional_losses_378187
inputs_0>
+lstm_cell_60_matmul_readvariableop_resource:	@
-lstm_cell_60_matmul_1_readvariableop_resource:	d;
,lstm_cell_60_biasadd_readvariableop_resource:	
identity˘#lstm_cell_60/BiasAdd/ReadVariableOp˘"lstm_cell_60/MatMul/ReadVariableOp˘$lstm_cell_60/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_60/MatMul/ReadVariableOpReadVariableOp+lstm_cell_60_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_60/MatMulMatMulstrided_slice_2:output:0*lstm_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_60/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_60_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_60/MatMul_1MatMulzeros:output:0,lstm_cell_60/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_60/addAddV2lstm_cell_60/MatMul:product:0lstm_cell_60/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_60/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_60_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_60/BiasAddBiasAddlstm_cell_60/add:z:0+lstm_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_60/splitSplit%lstm_cell_60/split/split_dim:output:0lstm_cell_60/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_60/SigmoidSigmoidlstm_cell_60/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_60/Sigmoid_1Sigmoidlstm_cell_60/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_60/mulMullstm_cell_60/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_60/ReluRelulstm_cell_60/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_60/mul_1Mullstm_cell_60/Sigmoid:y:0lstm_cell_60/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_60/add_1AddV2lstm_cell_60/mul:z:0lstm_cell_60/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_60/Sigmoid_2Sigmoidlstm_cell_60/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_60/Relu_1Relulstm_cell_60/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_60/mul_2Mullstm_cell_60/Sigmoid_2:y:0!lstm_cell_60/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_60_matmul_readvariableop_resource-lstm_cell_60_matmul_1_readvariableop_resource,lstm_cell_60_biasadd_readvariableop_resource*
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
while_body_378103*
condR
while_cond_378102*K
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
NoOpNoOp$^lstm_cell_60/BiasAdd/ReadVariableOp#^lstm_cell_60/MatMul/ReadVariableOp%^lstm_cell_60/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_60/BiasAdd/ReadVariableOp#lstm_cell_60/BiasAdd/ReadVariableOp2H
"lstm_cell_60/MatMul/ReadVariableOp"lstm_cell_60/MatMul/ReadVariableOp2L
$lstm_cell_60/MatMul_1/ReadVariableOp$lstm_cell_60/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
µ
?
while_cond_378245
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_378245___redundant_placeholder04
0while_while_cond_378245___redundant_placeholder14
0while_while_cond_378245___redundant_placeholder24
0while_while_cond_378245___redundant_placeholder3
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
ò

˘
.__inference_sequential_80_layer_call_fn_376381
lstm_240_input
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
identity˘StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCalllstm_240_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8 *R
fMRK
I__inference_sequential_80_layer_call_and_return_conditional_losses_376356o
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
_user_specified_namelstm_240_input
âJ

D__inference_lstm_241_layer_call_and_return_conditional_losses_378946
inputs_0>
+lstm_cell_61_matmul_readvariableop_resource:	dÈ@
-lstm_cell_61_matmul_1_readvariableop_resource:	2È;
,lstm_cell_61_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_61/BiasAdd/ReadVariableOp˘"lstm_cell_61/MatMul/ReadVariableOp˘$lstm_cell_61/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_61/MatMul/ReadVariableOpReadVariableOp+lstm_cell_61_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_61/MatMulMatMulstrided_slice_2:output:0*lstm_cell_61/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_61/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_61_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_61/MatMul_1MatMulzeros:output:0,lstm_cell_61/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_61/addAddV2lstm_cell_61/MatMul:product:0lstm_cell_61/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_61/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_61_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_61/BiasAddBiasAddlstm_cell_61/add:z:0+lstm_cell_61/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_61/splitSplit%lstm_cell_61/split/split_dim:output:0lstm_cell_61/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_61/SigmoidSigmoidlstm_cell_61/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_61/Sigmoid_1Sigmoidlstm_cell_61/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_61/mulMullstm_cell_61/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_61/ReluRelulstm_cell_61/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_61/mul_1Mullstm_cell_61/Sigmoid:y:0lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_61/add_1AddV2lstm_cell_61/mul:z:0lstm_cell_61/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_61/Sigmoid_2Sigmoidlstm_cell_61/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_61/Relu_1Relulstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_61/mul_2Mullstm_cell_61/Sigmoid_2:y:0!lstm_cell_61/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_61_matmul_readvariableop_resource-lstm_cell_61_matmul_1_readvariableop_resource,lstm_cell_61_biasadd_readvariableop_resource*
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
while_body_378862*
condR
while_cond_378861*K
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
NoOpNoOp$^lstm_cell_61/BiasAdd/ReadVariableOp#^lstm_cell_61/MatMul/ReadVariableOp%^lstm_cell_61/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_61/BiasAdd/ReadVariableOp#lstm_cell_61/BiasAdd/ReadVariableOp2H
"lstm_cell_61/MatMul/ReadVariableOp"lstm_cell_61/MatMul/ReadVariableOp2L
$lstm_cell_61/MatMul_1/ReadVariableOp$lstm_cell_61/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
²

÷
lstm_240_while_cond_377204.
*lstm_240_while_lstm_240_while_loop_counter4
0lstm_240_while_lstm_240_while_maximum_iterations
lstm_240_while_placeholder 
lstm_240_while_placeholder_1 
lstm_240_while_placeholder_2 
lstm_240_while_placeholder_30
,lstm_240_while_less_lstm_240_strided_slice_1F
Blstm_240_while_lstm_240_while_cond_377204___redundant_placeholder0F
Blstm_240_while_lstm_240_while_cond_377204___redundant_placeholder1F
Blstm_240_while_lstm_240_while_cond_377204___redundant_placeholder2F
Blstm_240_while_lstm_240_while_cond_377204___redundant_placeholder3
lstm_240_while_identity

lstm_240/while/LessLesslstm_240_while_placeholder,lstm_240_while_less_lstm_240_strided_slice_1*
T0*
_output_shapes
: ]
lstm_240/while/IdentityIdentitylstm_240/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_240_while_identity lstm_240/while/Identity:output:0*(
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
8
?
while_body_378103
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_60_matmul_readvariableop_resource_0:	H
5while_lstm_cell_60_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_60_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_60_matmul_readvariableop_resource:	F
3while_lstm_cell_60_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_60_biasadd_readvariableop_resource:	˘)while/lstm_cell_60/BiasAdd/ReadVariableOp˘(while/lstm_cell_60/MatMul/ReadVariableOp˘*while/lstm_cell_60/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_60/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_60_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_60/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_60/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_60_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_60/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_60/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_60/addAddV2#while/lstm_cell_60/MatMul:product:0%while/lstm_cell_60/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_60/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_60_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_60/BiasAddBiasAddwhile/lstm_cell_60/add:z:01while/lstm_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_60/splitSplit+while/lstm_cell_60/split/split_dim:output:0#while/lstm_cell_60/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_60/SigmoidSigmoid!while/lstm_cell_60/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_60/Sigmoid_1Sigmoid!while/lstm_cell_60/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_60/mulMul while/lstm_cell_60/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_60/ReluRelu!while/lstm_cell_60/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_60/mul_1Mulwhile/lstm_cell_60/Sigmoid:y:0%while/lstm_cell_60/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_60/add_1AddV2while/lstm_cell_60/mul:z:0while/lstm_cell_60/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_60/Sigmoid_2Sigmoid!while/lstm_cell_60/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_60/Relu_1Reluwhile/lstm_cell_60/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_60/mul_2Mul while/lstm_cell_60/Sigmoid_2:y:0'while/lstm_cell_60/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_60/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_60/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_60/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_60/BiasAdd/ReadVariableOp)^while/lstm_cell_60/MatMul/ReadVariableOp+^while/lstm_cell_60/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_60_biasadd_readvariableop_resource4while_lstm_cell_60_biasadd_readvariableop_resource_0"l
3while_lstm_cell_60_matmul_1_readvariableop_resource5while_lstm_cell_60_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_60_matmul_readvariableop_resource3while_lstm_cell_60_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_60/BiasAdd/ReadVariableOp)while/lstm_cell_60/BiasAdd/ReadVariableOp2T
(while/lstm_cell_60/MatMul/ReadVariableOp(while/lstm_cell_60/MatMul/ReadVariableOp2X
*while/lstm_cell_60/MatMul_1/ReadVariableOp*while/lstm_cell_60/MatMul_1/ReadVariableOp: 
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
while_body_379005
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_61_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_61_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_61_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_61_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_61_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_61_biasadd_readvariableop_resource:	È˘)while/lstm_cell_61/BiasAdd/ReadVariableOp˘(while/lstm_cell_61/MatMul/ReadVariableOp˘*while/lstm_cell_61/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_61/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_61_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_61/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_61/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_61/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_61_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_61/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_61/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_61/addAddV2#while/lstm_cell_61/MatMul:product:0%while/lstm_cell_61/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_61/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_61_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_61/BiasAddBiasAddwhile/lstm_cell_61/add:z:01while/lstm_cell_61/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_61/splitSplit+while/lstm_cell_61/split/split_dim:output:0#while/lstm_cell_61/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_61/SigmoidSigmoid!while/lstm_cell_61/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_61/Sigmoid_1Sigmoid!while/lstm_cell_61/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_61/mulMul while/lstm_cell_61/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_61/ReluRelu!while/lstm_cell_61/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_61/mul_1Mulwhile/lstm_cell_61/Sigmoid:y:0%while/lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_61/add_1AddV2while/lstm_cell_61/mul:z:0while/lstm_cell_61/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_61/Sigmoid_2Sigmoid!while/lstm_cell_61/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_61/Relu_1Reluwhile/lstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_61/mul_2Mul while/lstm_cell_61/Sigmoid_2:y:0'while/lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_61/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_61/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_61/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_61/BiasAdd/ReadVariableOp)^while/lstm_cell_61/MatMul/ReadVariableOp+^while/lstm_cell_61/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_61_biasadd_readvariableop_resource4while_lstm_cell_61_biasadd_readvariableop_resource_0"l
3while_lstm_cell_61_matmul_1_readvariableop_resource5while_lstm_cell_61_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_61_matmul_readvariableop_resource3while_lstm_cell_61_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_61/BiasAdd/ReadVariableOp)while/lstm_cell_61/BiasAdd/ReadVariableOp2T
(while/lstm_cell_61/MatMul/ReadVariableOp(while/lstm_cell_61/MatMul/ReadVariableOp2X
*while/lstm_cell_61/MatMul_1/ReadVariableOp*while/lstm_cell_61/MatMul_1/ReadVariableOp: 
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
S
³
(sequential_80_lstm_241_while_body_374603J
Fsequential_80_lstm_241_while_sequential_80_lstm_241_while_loop_counterP
Lsequential_80_lstm_241_while_sequential_80_lstm_241_while_maximum_iterations,
(sequential_80_lstm_241_while_placeholder.
*sequential_80_lstm_241_while_placeholder_1.
*sequential_80_lstm_241_while_placeholder_2.
*sequential_80_lstm_241_while_placeholder_3I
Esequential_80_lstm_241_while_sequential_80_lstm_241_strided_slice_1_0
sequential_80_lstm_241_while_tensorarrayv2read_tensorlistgetitem_sequential_80_lstm_241_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_80_lstm_241_while_lstm_cell_61_matmul_readvariableop_resource_0:	dÈ_
Lsequential_80_lstm_241_while_lstm_cell_61_matmul_1_readvariableop_resource_0:	2ÈZ
Ksequential_80_lstm_241_while_lstm_cell_61_biasadd_readvariableop_resource_0:	È)
%sequential_80_lstm_241_while_identity+
'sequential_80_lstm_241_while_identity_1+
'sequential_80_lstm_241_while_identity_2+
'sequential_80_lstm_241_while_identity_3+
'sequential_80_lstm_241_while_identity_4+
'sequential_80_lstm_241_while_identity_5G
Csequential_80_lstm_241_while_sequential_80_lstm_241_strided_slice_1
sequential_80_lstm_241_while_tensorarrayv2read_tensorlistgetitem_sequential_80_lstm_241_tensorarrayunstack_tensorlistfromtensor[
Hsequential_80_lstm_241_while_lstm_cell_61_matmul_readvariableop_resource:	dÈ]
Jsequential_80_lstm_241_while_lstm_cell_61_matmul_1_readvariableop_resource:	2ÈX
Isequential_80_lstm_241_while_lstm_cell_61_biasadd_readvariableop_resource:	È˘@sequential_80/lstm_241/while/lstm_cell_61/BiasAdd/ReadVariableOp˘?sequential_80/lstm_241/while/lstm_cell_61/MatMul/ReadVariableOp˘Asequential_80/lstm_241/while/lstm_cell_61/MatMul_1/ReadVariableOp
Nsequential_80/lstm_241/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
@sequential_80/lstm_241/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_80_lstm_241_while_tensorarrayv2read_tensorlistgetitem_sequential_80_lstm_241_tensorarrayunstack_tensorlistfromtensor_0(sequential_80_lstm_241_while_placeholderWsequential_80/lstm_241/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ë
?sequential_80/lstm_241/while/lstm_cell_61/MatMul/ReadVariableOpReadVariableOpJsequential_80_lstm_241_while_lstm_cell_61_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0˙
0sequential_80/lstm_241/while/lstm_cell_61/MatMulMatMulGsequential_80/lstm_241/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_80/lstm_241/while/lstm_cell_61/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÏ
Asequential_80/lstm_241/while/lstm_cell_61/MatMul_1/ReadVariableOpReadVariableOpLsequential_80_lstm_241_while_lstm_cell_61_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĉ
2sequential_80/lstm_241/while/lstm_cell_61/MatMul_1MatMul*sequential_80_lstm_241_while_placeholder_2Isequential_80/lstm_241/while/lstm_cell_61/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-sequential_80/lstm_241/while/lstm_cell_61/addAddV2:sequential_80/lstm_241/while/lstm_cell_61/MatMul:product:0<sequential_80/lstm_241/while/lstm_cell_61/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÉ
@sequential_80/lstm_241/while/lstm_cell_61/BiasAdd/ReadVariableOpReadVariableOpKsequential_80_lstm_241_while_lstm_cell_61_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ì
1sequential_80/lstm_241/while/lstm_cell_61/BiasAddBiasAdd1sequential_80/lstm_241/while/lstm_cell_61/add:z:0Hsequential_80/lstm_241/while/lstm_cell_61/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È{
9sequential_80/lstm_241/while/lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_80/lstm_241/while/lstm_cell_61/splitSplitBsequential_80/lstm_241/while/lstm_cell_61/split/split_dim:output:0:sequential_80/lstm_241/while/lstm_cell_61/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split¨
1sequential_80/lstm_241/while/lstm_cell_61/SigmoidSigmoid8sequential_80/lstm_241/while/lstm_cell_61/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ş
3sequential_80/lstm_241/while/lstm_cell_61/Sigmoid_1Sigmoid8sequential_80/lstm_241/while/lstm_cell_61/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ë
-sequential_80/lstm_241/while/lstm_cell_61/mulMul7sequential_80/lstm_241/while/lstm_cell_61/Sigmoid_1:y:0*sequential_80_lstm_241_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2˘
.sequential_80/lstm_241/while/lstm_cell_61/ReluRelu8sequential_80/lstm_241/while/lstm_cell_61/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ŭ
/sequential_80/lstm_241/while/lstm_cell_61/mul_1Mul5sequential_80/lstm_241/while/lstm_cell_61/Sigmoid:y:0<sequential_80/lstm_241/while/lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ò
/sequential_80/lstm_241/while/lstm_cell_61/add_1AddV21sequential_80/lstm_241/while/lstm_cell_61/mul:z:03sequential_80/lstm_241/while/lstm_cell_61/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ş
3sequential_80/lstm_241/while/lstm_cell_61/Sigmoid_2Sigmoid8sequential_80/lstm_241/while/lstm_cell_61/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
0sequential_80/lstm_241/while/lstm_cell_61/Relu_1Relu3sequential_80/lstm_241/while/lstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2á
/sequential_80/lstm_241/while/lstm_cell_61/mul_2Mul7sequential_80/lstm_241/while/lstm_cell_61/Sigmoid_2:y:0>sequential_80/lstm_241/while/lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
Asequential_80/lstm_241/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_80_lstm_241_while_placeholder_1(sequential_80_lstm_241_while_placeholder3sequential_80/lstm_241/while/lstm_cell_61/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_80/lstm_241/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_80/lstm_241/while/addAddV2(sequential_80_lstm_241_while_placeholder+sequential_80/lstm_241/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_80/lstm_241/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_80/lstm_241/while/add_1AddV2Fsequential_80_lstm_241_while_sequential_80_lstm_241_while_loop_counter-sequential_80/lstm_241/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_80/lstm_241/while/IdentityIdentity&sequential_80/lstm_241/while/add_1:z:0"^sequential_80/lstm_241/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_80/lstm_241/while/Identity_1IdentityLsequential_80_lstm_241_while_sequential_80_lstm_241_while_maximum_iterations"^sequential_80/lstm_241/while/NoOp*
T0*
_output_shapes
: 
'sequential_80/lstm_241/while/Identity_2Identity$sequential_80/lstm_241/while/add:z:0"^sequential_80/lstm_241/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_80/lstm_241/while/Identity_3IdentityQsequential_80/lstm_241/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_80/lstm_241/while/NoOp*
T0*
_output_shapes
: ?
'sequential_80/lstm_241/while/Identity_4Identity3sequential_80/lstm_241/while/lstm_cell_61/mul_2:z:0"^sequential_80/lstm_241/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
'sequential_80/lstm_241/while/Identity_5Identity3sequential_80/lstm_241/while/lstm_cell_61/add_1:z:0"^sequential_80/lstm_241/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ĵ
!sequential_80/lstm_241/while/NoOpNoOpA^sequential_80/lstm_241/while/lstm_cell_61/BiasAdd/ReadVariableOp@^sequential_80/lstm_241/while/lstm_cell_61/MatMul/ReadVariableOpB^sequential_80/lstm_241/while/lstm_cell_61/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_80_lstm_241_while_identity.sequential_80/lstm_241/while/Identity:output:0"[
'sequential_80_lstm_241_while_identity_10sequential_80/lstm_241/while/Identity_1:output:0"[
'sequential_80_lstm_241_while_identity_20sequential_80/lstm_241/while/Identity_2:output:0"[
'sequential_80_lstm_241_while_identity_30sequential_80/lstm_241/while/Identity_3:output:0"[
'sequential_80_lstm_241_while_identity_40sequential_80/lstm_241/while/Identity_4:output:0"[
'sequential_80_lstm_241_while_identity_50sequential_80/lstm_241/while/Identity_5:output:0"
Isequential_80_lstm_241_while_lstm_cell_61_biasadd_readvariableop_resourceKsequential_80_lstm_241_while_lstm_cell_61_biasadd_readvariableop_resource_0"
Jsequential_80_lstm_241_while_lstm_cell_61_matmul_1_readvariableop_resourceLsequential_80_lstm_241_while_lstm_cell_61_matmul_1_readvariableop_resource_0"
Hsequential_80_lstm_241_while_lstm_cell_61_matmul_readvariableop_resourceJsequential_80_lstm_241_while_lstm_cell_61_matmul_readvariableop_resource_0"
Csequential_80_lstm_241_while_sequential_80_lstm_241_strided_slice_1Esequential_80_lstm_241_while_sequential_80_lstm_241_strided_slice_1_0"
sequential_80_lstm_241_while_tensorarrayv2read_tensorlistgetitem_sequential_80_lstm_241_tensorarrayunstack_tensorlistfromtensorsequential_80_lstm_241_while_tensorarrayv2read_tensorlistgetitem_sequential_80_lstm_241_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2
@sequential_80/lstm_241/while/lstm_cell_61/BiasAdd/ReadVariableOp@sequential_80/lstm_241/while/lstm_cell_61/BiasAdd/ReadVariableOp2
?sequential_80/lstm_241/while/lstm_cell_61/MatMul/ReadVariableOp?sequential_80/lstm_241/while/lstm_cell_61/MatMul/ReadVariableOp2
Asequential_80/lstm_241/while/lstm_cell_61/MatMul_1/ReadVariableOpAsequential_80/lstm_241/while/lstm_cell_61/MatMul_1/ReadVariableOp: 
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
Ç	
ġ
D__inference_dense_80_layer_call_and_return_conditional_losses_376349

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
ş

(sequential_80_lstm_242_while_cond_374741J
Fsequential_80_lstm_242_while_sequential_80_lstm_242_while_loop_counterP
Lsequential_80_lstm_242_while_sequential_80_lstm_242_while_maximum_iterations,
(sequential_80_lstm_242_while_placeholder.
*sequential_80_lstm_242_while_placeholder_1.
*sequential_80_lstm_242_while_placeholder_2.
*sequential_80_lstm_242_while_placeholder_3L
Hsequential_80_lstm_242_while_less_sequential_80_lstm_242_strided_slice_1b
^sequential_80_lstm_242_while_sequential_80_lstm_242_while_cond_374741___redundant_placeholder0b
^sequential_80_lstm_242_while_sequential_80_lstm_242_while_cond_374741___redundant_placeholder1b
^sequential_80_lstm_242_while_sequential_80_lstm_242_while_cond_374741___redundant_placeholder2b
^sequential_80_lstm_242_while_sequential_80_lstm_242_while_cond_374741___redundant_placeholder3)
%sequential_80_lstm_242_while_identity
?
!sequential_80/lstm_242/while/LessLess(sequential_80_lstm_242_while_placeholderHsequential_80_lstm_242_while_less_sequential_80_lstm_242_strided_slice_1*
T0*
_output_shapes
: y
%sequential_80/lstm_242/while/IdentityIdentity%sequential_80/lstm_242/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_80_lstm_242_while_identity.sequential_80/lstm_242/while/Identity:output:0*(
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
Ú


.__inference_sequential_80_layer_call_fn_377146

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
identity˘StatefulPartitionedCallÓ
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
GPU 2J 8 *R
fMRK
I__inference_sequential_80_layer_call_and_return_conditional_losses_376945o
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
µ
?
while_cond_375803
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_375803___redundant_placeholder04
0while_while_cond_375803___redundant_placeholder14
0while_while_cond_375803___redundant_placeholder24
0while_while_cond_375803___redundant_placeholder3
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
¤J

D__inference_lstm_241_layer_call_and_return_conditional_losses_379232

inputs>
+lstm_cell_61_matmul_readvariableop_resource:	dÈ@
-lstm_cell_61_matmul_1_readvariableop_resource:	2È;
,lstm_cell_61_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_61/BiasAdd/ReadVariableOp˘"lstm_cell_61/MatMul/ReadVariableOp˘$lstm_cell_61/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_61/MatMul/ReadVariableOpReadVariableOp+lstm_cell_61_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_61/MatMulMatMulstrided_slice_2:output:0*lstm_cell_61/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_61/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_61_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_61/MatMul_1MatMulzeros:output:0,lstm_cell_61/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_61/addAddV2lstm_cell_61/MatMul:product:0lstm_cell_61/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_61/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_61_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_61/BiasAddBiasAddlstm_cell_61/add:z:0+lstm_cell_61/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_61/splitSplit%lstm_cell_61/split/split_dim:output:0lstm_cell_61/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_61/SigmoidSigmoidlstm_cell_61/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_61/Sigmoid_1Sigmoidlstm_cell_61/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_61/mulMullstm_cell_61/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_61/ReluRelulstm_cell_61/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_61/mul_1Mullstm_cell_61/Sigmoid:y:0lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_61/add_1AddV2lstm_cell_61/mul:z:0lstm_cell_61/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_61/Sigmoid_2Sigmoidlstm_cell_61/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_61/Relu_1Relulstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_61/mul_2Mullstm_cell_61/Sigmoid_2:y:0!lstm_cell_61/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_61_matmul_readvariableop_resource-lstm_cell_61_matmul_1_readvariableop_resource,lstm_cell_61_biasadd_readvariableop_resource*
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
while_body_379148*
condR
while_cond_379147*K
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
NoOpNoOp$^lstm_cell_61/BiasAdd/ReadVariableOp#^lstm_cell_61/MatMul/ReadVariableOp%^lstm_cell_61/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_61/BiasAdd/ReadVariableOp#lstm_cell_61/BiasAdd/ReadVariableOp2H
"lstm_cell_61/MatMul/ReadVariableOp"lstm_cell_61/MatMul/ReadVariableOp2L
$lstm_cell_61/MatMul_1/ReadVariableOp$lstm_cell_61/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs

ĥ
)__inference_lstm_241_layer_call_fn_378649

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
D__inference_lstm_241_layer_call_and_return_conditional_losses_376181s
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
è
ó
-__inference_lstm_cell_62_layer_call_fn_380097

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
H__inference_lstm_cell_62_layer_call_and_return_conditional_losses_375745o
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
µ
?
while_cond_378531
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_378531___redundant_placeholder04
0while_while_cond_378531___redundant_placeholder14
0while_while_cond_378531___redundant_placeholder24
0while_while_cond_378531___redundant_placeholder3
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
while_cond_374912
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_374912___redundant_placeholder04
0while_while_cond_374912___redundant_placeholder14
0while_while_cond_374912___redundant_placeholder24
0while_while_cond_374912___redundant_placeholder3
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
˙7
Ê
while_body_376463
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_62_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_62_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_62_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_62_matmul_readvariableop_resource:2(E
3while_lstm_cell_62_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_62_biasadd_readvariableop_resource:(˘)while/lstm_cell_62/BiasAdd/ReadVariableOp˘(while/lstm_cell_62/MatMul/ReadVariableOp˘*while/lstm_cell_62/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_62/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_62_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_62/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_62/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_62_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_62/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_62/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_62/addAddV2#while/lstm_cell_62/MatMul:product:0%while/lstm_cell_62/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_62/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_62_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_62/BiasAddBiasAddwhile/lstm_cell_62/add:z:01while/lstm_cell_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_62/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_62/splitSplit+while/lstm_cell_62/split/split_dim:output:0#while/lstm_cell_62/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_62/SigmoidSigmoid!while/lstm_cell_62/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_62/Sigmoid_1Sigmoid!while/lstm_cell_62/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_62/mulMul while/lstm_cell_62/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_62/ReluRelu!while/lstm_cell_62/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_62/mul_1Mulwhile/lstm_cell_62/Sigmoid:y:0%while/lstm_cell_62/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_62/add_1AddV2while/lstm_cell_62/mul:z:0while/lstm_cell_62/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_62/Sigmoid_2Sigmoid!while/lstm_cell_62/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_62/Relu_1Reluwhile/lstm_cell_62/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_62/mul_2Mul while/lstm_cell_62/Sigmoid_2:y:0'while/lstm_cell_62/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_62/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_62/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_62/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_62/BiasAdd/ReadVariableOp)^while/lstm_cell_62/MatMul/ReadVariableOp+^while/lstm_cell_62/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_62_biasadd_readvariableop_resource4while_lstm_cell_62_biasadd_readvariableop_resource_0"l
3while_lstm_cell_62_matmul_1_readvariableop_resource5while_lstm_cell_62_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_62_matmul_readvariableop_resource3while_lstm_cell_62_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_62/BiasAdd/ReadVariableOp)while/lstm_cell_62/BiasAdd/ReadVariableOp2T
(while/lstm_cell_62/MatMul/ReadVariableOp(while/lstm_cell_62/MatMul/ReadVariableOp2X
*while/lstm_cell_62/MatMul_1/ReadVariableOp*while/lstm_cell_62/MatMul_1/ReadVariableOp: 
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
Ó

H__inference_lstm_cell_62_layer_call_and_return_conditional_losses_380129

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
ĉ"
?
while_body_374913
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_60_374937_0:	.
while_lstm_cell_60_374939_0:	d*
while_lstm_cell_60_374941_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_60_374937:	,
while_lstm_cell_60_374939:	d(
while_lstm_cell_60_374941:	˘*while/lstm_cell_60/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_60/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_60_374937_0while_lstm_cell_60_374939_0while_lstm_cell_60_374941_0*
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
H__inference_lstm_cell_60_layer_call_and_return_conditional_losses_374899Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_60/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_60/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_60/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_60/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_60_374937while_lstm_cell_60_374937_0"8
while_lstm_cell_60_374939while_lstm_cell_60_374939_0"8
while_lstm_cell_60_374941while_lstm_cell_60_374941_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_60/StatefulPartitionedCall*while/lstm_cell_60/StatefulPartitionedCall: 
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
ş

(sequential_80_lstm_240_while_cond_374463J
Fsequential_80_lstm_240_while_sequential_80_lstm_240_while_loop_counterP
Lsequential_80_lstm_240_while_sequential_80_lstm_240_while_maximum_iterations,
(sequential_80_lstm_240_while_placeholder.
*sequential_80_lstm_240_while_placeholder_1.
*sequential_80_lstm_240_while_placeholder_2.
*sequential_80_lstm_240_while_placeholder_3L
Hsequential_80_lstm_240_while_less_sequential_80_lstm_240_strided_slice_1b
^sequential_80_lstm_240_while_sequential_80_lstm_240_while_cond_374463___redundant_placeholder0b
^sequential_80_lstm_240_while_sequential_80_lstm_240_while_cond_374463___redundant_placeholder1b
^sequential_80_lstm_240_while_sequential_80_lstm_240_while_cond_374463___redundant_placeholder2b
^sequential_80_lstm_240_while_sequential_80_lstm_240_while_cond_374463___redundant_placeholder3)
%sequential_80_lstm_240_while_identity
?
!sequential_80/lstm_240/while/LessLess(sequential_80_lstm_240_while_placeholderHsequential_80_lstm_240_while_less_sequential_80_lstm_240_strided_slice_1*
T0*
_output_shapes
: y
%sequential_80/lstm_240/while/IdentityIdentity%sequential_80/lstm_240/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_80_lstm_240_while_identity.sequential_80/lstm_240/while/Identity:output:0*(
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
while_cond_375103
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_375103___redundant_placeholder04
0while_while_cond_375103___redundant_placeholder14
0while_while_cond_375103___redundant_placeholder24
0while_while_cond_375103___redundant_placeholder3
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
Ğ
ë
I__inference_sequential_80_layer_call_and_return_conditional_losses_376356

inputs"
lstm_240_376032:	"
lstm_240_376034:	d
lstm_240_376036:	"
lstm_241_376182:	dÈ"
lstm_241_376184:	2È
lstm_241_376186:	È!
lstm_242_376332:2(!
lstm_242_376334:
(
lstm_242_376336:(!
dense_80_376350:

dense_80_376352:
identity˘ dense_80/StatefulPartitionedCall˘ lstm_240/StatefulPartitionedCall˘ lstm_241/StatefulPartitionedCall˘ lstm_242/StatefulPartitionedCall
 lstm_240/StatefulPartitionedCallStatefulPartitionedCallinputslstm_240_376032lstm_240_376034lstm_240_376036*
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
D__inference_lstm_240_layer_call_and_return_conditional_losses_376031Ş
 lstm_241/StatefulPartitionedCallStatefulPartitionedCall)lstm_240/StatefulPartitionedCall:output:0lstm_241_376182lstm_241_376184lstm_241_376186*
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
D__inference_lstm_241_layer_call_and_return_conditional_losses_376181Ĥ
 lstm_242/StatefulPartitionedCallStatefulPartitionedCall)lstm_241/StatefulPartitionedCall:output:0lstm_242_376332lstm_242_376334lstm_242_376336*
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
D__inference_lstm_242_layer_call_and_return_conditional_losses_376331
 dense_80/StatefulPartitionedCallStatefulPartitionedCall)lstm_242/StatefulPartitionedCall:output:0dense_80_376350dense_80_376352*
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
GPU 2J 8 *M
fHRF
D__inference_dense_80_layer_call_and_return_conditional_losses_376349x
IdentityIdentity)dense_80/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_80/StatefulPartitionedCall!^lstm_240/StatefulPartitionedCall!^lstm_241/StatefulPartitionedCall!^lstm_242/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_80/StatefulPartitionedCall dense_80/StatefulPartitionedCall2D
 lstm_240/StatefulPartitionedCall lstm_240/StatefulPartitionedCall2D
 lstm_241/StatefulPartitionedCall lstm_241/StatefulPartitionedCall2D
 lstm_242/StatefulPartitionedCall lstm_242/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
˙7
Ê
while_body_376247
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_62_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_62_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_62_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_62_matmul_readvariableop_resource:2(E
3while_lstm_cell_62_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_62_biasadd_readvariableop_resource:(˘)while/lstm_cell_62/BiasAdd/ReadVariableOp˘(while/lstm_cell_62/MatMul/ReadVariableOp˘*while/lstm_cell_62/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_62/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_62_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_62/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_62/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_62_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_62/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_62/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_62/addAddV2#while/lstm_cell_62/MatMul:product:0%while/lstm_cell_62/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_62/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_62_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_62/BiasAddBiasAddwhile/lstm_cell_62/add:z:01while/lstm_cell_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_62/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_62/splitSplit+while/lstm_cell_62/split/split_dim:output:0#while/lstm_cell_62/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_62/SigmoidSigmoid!while/lstm_cell_62/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_62/Sigmoid_1Sigmoid!while/lstm_cell_62/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_62/mulMul while/lstm_cell_62/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_62/ReluRelu!while/lstm_cell_62/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_62/mul_1Mulwhile/lstm_cell_62/Sigmoid:y:0%while/lstm_cell_62/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_62/add_1AddV2while/lstm_cell_62/mul:z:0while/lstm_cell_62/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_62/Sigmoid_2Sigmoid!while/lstm_cell_62/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_62/Relu_1Reluwhile/lstm_cell_62/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_62/mul_2Mul while/lstm_cell_62/Sigmoid_2:y:0'while/lstm_cell_62/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_62/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_62/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_62/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_62/BiasAdd/ReadVariableOp)^while/lstm_cell_62/MatMul/ReadVariableOp+^while/lstm_cell_62/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_62_biasadd_readvariableop_resource4while_lstm_cell_62_biasadd_readvariableop_resource_0"l
3while_lstm_cell_62_matmul_1_readvariableop_resource5while_lstm_cell_62_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_62_matmul_readvariableop_resource3while_lstm_cell_62_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_62/BiasAdd/ReadVariableOp)while/lstm_cell_62/BiasAdd/ReadVariableOp2T
(while/lstm_cell_62/MatMul/ReadVariableOp(while/lstm_cell_62/MatMul/ReadVariableOp2X
*while/lstm_cell_62/MatMul_1/ReadVariableOp*while/lstm_cell_62/MatMul_1/ReadVariableOp: 
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
while_body_376097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_61_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_61_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_61_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_61_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_61_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_61_biasadd_readvariableop_resource:	È˘)while/lstm_cell_61/BiasAdd/ReadVariableOp˘(while/lstm_cell_61/MatMul/ReadVariableOp˘*while/lstm_cell_61/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_61/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_61_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_61/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_61/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_61/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_61_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_61/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_61/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_61/addAddV2#while/lstm_cell_61/MatMul:product:0%while/lstm_cell_61/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_61/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_61_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_61/BiasAddBiasAddwhile/lstm_cell_61/add:z:01while/lstm_cell_61/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_61/splitSplit+while/lstm_cell_61/split/split_dim:output:0#while/lstm_cell_61/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_61/SigmoidSigmoid!while/lstm_cell_61/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_61/Sigmoid_1Sigmoid!while/lstm_cell_61/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_61/mulMul while/lstm_cell_61/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_61/ReluRelu!while/lstm_cell_61/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_61/mul_1Mulwhile/lstm_cell_61/Sigmoid:y:0%while/lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_61/add_1AddV2while/lstm_cell_61/mul:z:0while/lstm_cell_61/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_61/Sigmoid_2Sigmoid!while/lstm_cell_61/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_61/Relu_1Reluwhile/lstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_61/mul_2Mul while/lstm_cell_61/Sigmoid_2:y:0'while/lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_61/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_61/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_61/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_61/BiasAdd/ReadVariableOp)^while/lstm_cell_61/MatMul/ReadVariableOp+^while/lstm_cell_61/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_61_biasadd_readvariableop_resource4while_lstm_cell_61_biasadd_readvariableop_resource_0"l
3while_lstm_cell_61_matmul_1_readvariableop_resource5while_lstm_cell_61_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_61_matmul_readvariableop_resource3while_lstm_cell_61_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_61/BiasAdd/ReadVariableOp)while/lstm_cell_61/BiasAdd/ReadVariableOp2T
(while/lstm_cell_61/MatMul/ReadVariableOp(while/lstm_cell_61/MatMul/ReadVariableOp2X
*while/lstm_cell_61/MatMul_1/ReadVariableOp*while/lstm_cell_61/MatMul_1/ReadVariableOp: 
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
while_body_376793
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_60_matmul_readvariableop_resource_0:	H
5while_lstm_cell_60_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_60_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_60_matmul_readvariableop_resource:	F
3while_lstm_cell_60_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_60_biasadd_readvariableop_resource:	˘)while/lstm_cell_60/BiasAdd/ReadVariableOp˘(while/lstm_cell_60/MatMul/ReadVariableOp˘*while/lstm_cell_60/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_60/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_60_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_60/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_60/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_60_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_60/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_60/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_60/addAddV2#while/lstm_cell_60/MatMul:product:0%while/lstm_cell_60/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_60/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_60_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_60/BiasAddBiasAddwhile/lstm_cell_60/add:z:01while/lstm_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_60/splitSplit+while/lstm_cell_60/split/split_dim:output:0#while/lstm_cell_60/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_60/SigmoidSigmoid!while/lstm_cell_60/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_60/Sigmoid_1Sigmoid!while/lstm_cell_60/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_60/mulMul while/lstm_cell_60/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_60/ReluRelu!while/lstm_cell_60/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_60/mul_1Mulwhile/lstm_cell_60/Sigmoid:y:0%while/lstm_cell_60/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_60/add_1AddV2while/lstm_cell_60/mul:z:0while/lstm_cell_60/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_60/Sigmoid_2Sigmoid!while/lstm_cell_60/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_60/Relu_1Reluwhile/lstm_cell_60/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_60/mul_2Mul while/lstm_cell_60/Sigmoid_2:y:0'while/lstm_cell_60/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_60/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_60/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_60/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_60/BiasAdd/ReadVariableOp)^while/lstm_cell_60/MatMul/ReadVariableOp+^while/lstm_cell_60/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_60_biasadd_readvariableop_resource4while_lstm_cell_60_biasadd_readvariableop_resource_0"l
3while_lstm_cell_60_matmul_1_readvariableop_resource5while_lstm_cell_60_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_60_matmul_readvariableop_resource3while_lstm_cell_60_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_60/BiasAdd/ReadVariableOp)while/lstm_cell_60/BiasAdd/ReadVariableOp2T
(while/lstm_cell_60/MatMul/ReadVariableOp(while/lstm_cell_60/MatMul/ReadVariableOp2X
*while/lstm_cell_60/MatMul_1/ReadVariableOp*while/lstm_cell_60/MatMul_1/ReadVariableOp: 
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
ĉ"
?
while_body_375454
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_61_375478_0:	dÈ.
while_lstm_cell_61_375480_0:	2È*
while_lstm_cell_61_375482_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_61_375478:	dÈ,
while_lstm_cell_61_375480:	2È(
while_lstm_cell_61_375482:	È˘*while/lstm_cell_61/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_61/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_61_375478_0while_lstm_cell_61_375480_0while_lstm_cell_61_375482_0*
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
H__inference_lstm_cell_61_layer_call_and_return_conditional_losses_375395Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_61/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_61/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_61/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_61/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_61_375478while_lstm_cell_61_375478_0"8
while_lstm_cell_61_375480while_lstm_cell_61_375480_0"8
while_lstm_cell_61_375482while_lstm_cell_61_375482_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_61/StatefulPartitionedCall*while/lstm_cell_61/StatefulPartitionedCall: 
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
è
ó
-__inference_lstm_cell_62_layer_call_fn_380080

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
H__inference_lstm_cell_62_layer_call_and_return_conditional_losses_375599o
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
µ
?
while_cond_379004
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_379004___redundant_placeholder04
0while_while_cond_379004___redundant_placeholder14
0while_while_cond_379004___redundant_placeholder24
0while_while_cond_379004___redundant_placeholder3
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
Ó

H__inference_lstm_cell_62_layer_call_and_return_conditional_losses_380161

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
while_body_379621
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_62_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_62_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_62_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_62_matmul_readvariableop_resource:2(E
3while_lstm_cell_62_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_62_biasadd_readvariableop_resource:(˘)while/lstm_cell_62/BiasAdd/ReadVariableOp˘(while/lstm_cell_62/MatMul/ReadVariableOp˘*while/lstm_cell_62/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_62/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_62_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_62/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_62/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_62_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_62/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_62/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_62/addAddV2#while/lstm_cell_62/MatMul:product:0%while/lstm_cell_62/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_62/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_62_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_62/BiasAddBiasAddwhile/lstm_cell_62/add:z:01while/lstm_cell_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_62/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_62/splitSplit+while/lstm_cell_62/split/split_dim:output:0#while/lstm_cell_62/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_62/SigmoidSigmoid!while/lstm_cell_62/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_62/Sigmoid_1Sigmoid!while/lstm_cell_62/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_62/mulMul while/lstm_cell_62/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_62/ReluRelu!while/lstm_cell_62/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_62/mul_1Mulwhile/lstm_cell_62/Sigmoid:y:0%while/lstm_cell_62/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_62/add_1AddV2while/lstm_cell_62/mul:z:0while/lstm_cell_62/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_62/Sigmoid_2Sigmoid!while/lstm_cell_62/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_62/Relu_1Reluwhile/lstm_cell_62/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_62/mul_2Mul while/lstm_cell_62/Sigmoid_2:y:0'while/lstm_cell_62/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_62/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_62/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_62/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_62/BiasAdd/ReadVariableOp)^while/lstm_cell_62/MatMul/ReadVariableOp+^while/lstm_cell_62/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_62_biasadd_readvariableop_resource4while_lstm_cell_62_biasadd_readvariableop_resource_0"l
3while_lstm_cell_62_matmul_1_readvariableop_resource5while_lstm_cell_62_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_62_matmul_readvariableop_resource3while_lstm_cell_62_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_62/BiasAdd/ReadVariableOp)while/lstm_cell_62/BiasAdd/ReadVariableOp2T
(while/lstm_cell_62/MatMul/ReadVariableOp(while/lstm_cell_62/MatMul/ReadVariableOp2X
*while/lstm_cell_62/MatMul_1/ReadVariableOp*while/lstm_cell_62/MatMul_1/ReadVariableOp: 
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
H__inference_lstm_cell_62_layer_call_and_return_conditional_losses_375599

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
¤J

D__inference_lstm_241_layer_call_and_return_conditional_losses_376712

inputs>
+lstm_cell_61_matmul_readvariableop_resource:	dÈ@
-lstm_cell_61_matmul_1_readvariableop_resource:	2È;
,lstm_cell_61_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_61/BiasAdd/ReadVariableOp˘"lstm_cell_61/MatMul/ReadVariableOp˘$lstm_cell_61/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_61/MatMul/ReadVariableOpReadVariableOp+lstm_cell_61_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_61/MatMulMatMulstrided_slice_2:output:0*lstm_cell_61/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_61/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_61_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_61/MatMul_1MatMulzeros:output:0,lstm_cell_61/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_61/addAddV2lstm_cell_61/MatMul:product:0lstm_cell_61/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_61/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_61_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_61/BiasAddBiasAddlstm_cell_61/add:z:0+lstm_cell_61/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_61/splitSplit%lstm_cell_61/split/split_dim:output:0lstm_cell_61/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_61/SigmoidSigmoidlstm_cell_61/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_61/Sigmoid_1Sigmoidlstm_cell_61/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_61/mulMullstm_cell_61/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_61/ReluRelulstm_cell_61/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_61/mul_1Mullstm_cell_61/Sigmoid:y:0lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_61/add_1AddV2lstm_cell_61/mul:z:0lstm_cell_61/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_61/Sigmoid_2Sigmoidlstm_cell_61/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_61/Relu_1Relulstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_61/mul_2Mullstm_cell_61/Sigmoid_2:y:0!lstm_cell_61/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_61_matmul_readvariableop_resource-lstm_cell_61_matmul_1_readvariableop_resource,lstm_cell_61_biasadd_readvariableop_resource*
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
while_body_376628*
condR
while_cond_376627*K
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
NoOpNoOp$^lstm_cell_61/BiasAdd/ReadVariableOp#^lstm_cell_61/MatMul/ReadVariableOp%^lstm_cell_61/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_61/BiasAdd/ReadVariableOp#lstm_cell_61/BiasAdd/ReadVariableOp2H
"lstm_cell_61/MatMul/ReadVariableOp"lstm_cell_61/MatMul/ReadVariableOp2L
$lstm_cell_61/MatMul_1/ReadVariableOp$lstm_cell_61/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
µ
?
while_cond_376627
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_376627___redundant_placeholder04
0while_while_cond_376627___redundant_placeholder14
0while_while_cond_376627___redundant_placeholder24
0while_while_cond_376627___redundant_placeholder3
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

µ
)__inference_lstm_242_layer_call_fn_379243
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
D__inference_lstm_242_layer_call_and_return_conditional_losses_375682o
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
J

D__inference_lstm_242_layer_call_and_return_conditional_losses_379705

inputs=
+lstm_cell_62_matmul_readvariableop_resource:2(?
-lstm_cell_62_matmul_1_readvariableop_resource:
(:
,lstm_cell_62_biasadd_readvariableop_resource:(
identity˘#lstm_cell_62/BiasAdd/ReadVariableOp˘"lstm_cell_62/MatMul/ReadVariableOp˘$lstm_cell_62/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_62/MatMul/ReadVariableOpReadVariableOp+lstm_cell_62_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_62/MatMulMatMulstrided_slice_2:output:0*lstm_cell_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_62/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_62_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_62/MatMul_1MatMulzeros:output:0,lstm_cell_62/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_62/addAddV2lstm_cell_62/MatMul:product:0lstm_cell_62/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_62/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_62_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_62/BiasAddBiasAddlstm_cell_62/add:z:0+lstm_cell_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_62/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_62/splitSplit%lstm_cell_62/split/split_dim:output:0lstm_cell_62/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_62/SigmoidSigmoidlstm_cell_62/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_62/Sigmoid_1Sigmoidlstm_cell_62/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_62/mulMullstm_cell_62/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_62/ReluRelulstm_cell_62/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_62/mul_1Mullstm_cell_62/Sigmoid:y:0lstm_cell_62/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_62/add_1AddV2lstm_cell_62/mul:z:0lstm_cell_62/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_62/Sigmoid_2Sigmoidlstm_cell_62/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_62/Relu_1Relulstm_cell_62/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_62/mul_2Mullstm_cell_62/Sigmoid_2:y:0!lstm_cell_62/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_62_matmul_readvariableop_resource-lstm_cell_62_matmul_1_readvariableop_resource,lstm_cell_62_biasadd_readvariableop_resource*
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
while_body_379621*
condR
while_cond_379620*K
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
NoOpNoOp$^lstm_cell_62/BiasAdd/ReadVariableOp#^lstm_cell_62/MatMul/ReadVariableOp%^lstm_cell_62/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_62/BiasAdd/ReadVariableOp#lstm_cell_62/BiasAdd/ReadVariableOp2H
"lstm_cell_62/MatMul/ReadVariableOp"lstm_cell_62/MatMul/ReadVariableOp2L
$lstm_cell_62/MatMul_1/ReadVariableOp$lstm_cell_62/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
S
­
(sequential_80_lstm_242_while_body_374742J
Fsequential_80_lstm_242_while_sequential_80_lstm_242_while_loop_counterP
Lsequential_80_lstm_242_while_sequential_80_lstm_242_while_maximum_iterations,
(sequential_80_lstm_242_while_placeholder.
*sequential_80_lstm_242_while_placeholder_1.
*sequential_80_lstm_242_while_placeholder_2.
*sequential_80_lstm_242_while_placeholder_3I
Esequential_80_lstm_242_while_sequential_80_lstm_242_strided_slice_1_0
sequential_80_lstm_242_while_tensorarrayv2read_tensorlistgetitem_sequential_80_lstm_242_tensorarrayunstack_tensorlistfromtensor_0\
Jsequential_80_lstm_242_while_lstm_cell_62_matmul_readvariableop_resource_0:2(^
Lsequential_80_lstm_242_while_lstm_cell_62_matmul_1_readvariableop_resource_0:
(Y
Ksequential_80_lstm_242_while_lstm_cell_62_biasadd_readvariableop_resource_0:()
%sequential_80_lstm_242_while_identity+
'sequential_80_lstm_242_while_identity_1+
'sequential_80_lstm_242_while_identity_2+
'sequential_80_lstm_242_while_identity_3+
'sequential_80_lstm_242_while_identity_4+
'sequential_80_lstm_242_while_identity_5G
Csequential_80_lstm_242_while_sequential_80_lstm_242_strided_slice_1
sequential_80_lstm_242_while_tensorarrayv2read_tensorlistgetitem_sequential_80_lstm_242_tensorarrayunstack_tensorlistfromtensorZ
Hsequential_80_lstm_242_while_lstm_cell_62_matmul_readvariableop_resource:2(\
Jsequential_80_lstm_242_while_lstm_cell_62_matmul_1_readvariableop_resource:
(W
Isequential_80_lstm_242_while_lstm_cell_62_biasadd_readvariableop_resource:(˘@sequential_80/lstm_242/while/lstm_cell_62/BiasAdd/ReadVariableOp˘?sequential_80/lstm_242/while/lstm_cell_62/MatMul/ReadVariableOp˘Asequential_80/lstm_242/while/lstm_cell_62/MatMul_1/ReadVariableOp
Nsequential_80/lstm_242/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
@sequential_80/lstm_242/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_80_lstm_242_while_tensorarrayv2read_tensorlistgetitem_sequential_80_lstm_242_tensorarrayunstack_tensorlistfromtensor_0(sequential_80_lstm_242_while_placeholderWsequential_80/lstm_242/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0Ê
?sequential_80/lstm_242/while/lstm_cell_62/MatMul/ReadVariableOpReadVariableOpJsequential_80_lstm_242_while_lstm_cell_62_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ŝ
0sequential_80/lstm_242/while/lstm_cell_62/MatMulMatMulGsequential_80/lstm_242/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_80/lstm_242/while/lstm_cell_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Î
Asequential_80/lstm_242/while/lstm_cell_62/MatMul_1/ReadVariableOpReadVariableOpLsequential_80_lstm_242_while_lstm_cell_62_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ċ
2sequential_80/lstm_242/while/lstm_cell_62/MatMul_1MatMul*sequential_80_lstm_242_while_placeholder_2Isequential_80/lstm_242/while/lstm_cell_62/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(â
-sequential_80/lstm_242/while/lstm_cell_62/addAddV2:sequential_80/lstm_242/while/lstm_cell_62/MatMul:product:0<sequential_80/lstm_242/while/lstm_cell_62/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(È
@sequential_80/lstm_242/while/lstm_cell_62/BiasAdd/ReadVariableOpReadVariableOpKsequential_80_lstm_242_while_lstm_cell_62_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ë
1sequential_80/lstm_242/while/lstm_cell_62/BiasAddBiasAdd1sequential_80/lstm_242/while/lstm_cell_62/add:z:0Hsequential_80/lstm_242/while/lstm_cell_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙({
9sequential_80/lstm_242/while/lstm_cell_62/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_80/lstm_242/while/lstm_cell_62/splitSplitBsequential_80/lstm_242/while/lstm_cell_62/split/split_dim:output:0:sequential_80/lstm_242/while/lstm_cell_62/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split¨
1sequential_80/lstm_242/while/lstm_cell_62/SigmoidSigmoid8sequential_80/lstm_242/while/lstm_cell_62/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
3sequential_80/lstm_242/while/lstm_cell_62/Sigmoid_1Sigmoid8sequential_80/lstm_242/while/lstm_cell_62/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ë
-sequential_80/lstm_242/while/lstm_cell_62/mulMul7sequential_80/lstm_242/while/lstm_cell_62/Sigmoid_1:y:0*sequential_80_lstm_242_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˘
.sequential_80/lstm_242/while/lstm_cell_62/ReluRelu8sequential_80/lstm_242/while/lstm_cell_62/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŭ
/sequential_80/lstm_242/while/lstm_cell_62/mul_1Mul5sequential_80/lstm_242/while/lstm_cell_62/Sigmoid:y:0<sequential_80/lstm_242/while/lstm_cell_62/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ò
/sequential_80/lstm_242/while/lstm_cell_62/add_1AddV21sequential_80/lstm_242/while/lstm_cell_62/mul:z:03sequential_80/lstm_242/while/lstm_cell_62/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
3sequential_80/lstm_242/while/lstm_cell_62/Sigmoid_2Sigmoid8sequential_80/lstm_242/while/lstm_cell_62/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

0sequential_80/lstm_242/while/lstm_cell_62/Relu_1Relu3sequential_80/lstm_242/while/lstm_cell_62/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
á
/sequential_80/lstm_242/while/lstm_cell_62/mul_2Mul7sequential_80/lstm_242/while/lstm_cell_62/Sigmoid_2:y:0>sequential_80/lstm_242/while/lstm_cell_62/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
Asequential_80/lstm_242/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_80_lstm_242_while_placeholder_1(sequential_80_lstm_242_while_placeholder3sequential_80/lstm_242/while/lstm_cell_62/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_80/lstm_242/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_80/lstm_242/while/addAddV2(sequential_80_lstm_242_while_placeholder+sequential_80/lstm_242/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_80/lstm_242/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_80/lstm_242/while/add_1AddV2Fsequential_80_lstm_242_while_sequential_80_lstm_242_while_loop_counter-sequential_80/lstm_242/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_80/lstm_242/while/IdentityIdentity&sequential_80/lstm_242/while/add_1:z:0"^sequential_80/lstm_242/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_80/lstm_242/while/Identity_1IdentityLsequential_80_lstm_242_while_sequential_80_lstm_242_while_maximum_iterations"^sequential_80/lstm_242/while/NoOp*
T0*
_output_shapes
: 
'sequential_80/lstm_242/while/Identity_2Identity$sequential_80/lstm_242/while/add:z:0"^sequential_80/lstm_242/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_80/lstm_242/while/Identity_3IdentityQsequential_80/lstm_242/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_80/lstm_242/while/NoOp*
T0*
_output_shapes
: ?
'sequential_80/lstm_242/while/Identity_4Identity3sequential_80/lstm_242/while/lstm_cell_62/mul_2:z:0"^sequential_80/lstm_242/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
'sequential_80/lstm_242/while/Identity_5Identity3sequential_80/lstm_242/while/lstm_cell_62/add_1:z:0"^sequential_80/lstm_242/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĵ
!sequential_80/lstm_242/while/NoOpNoOpA^sequential_80/lstm_242/while/lstm_cell_62/BiasAdd/ReadVariableOp@^sequential_80/lstm_242/while/lstm_cell_62/MatMul/ReadVariableOpB^sequential_80/lstm_242/while/lstm_cell_62/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_80_lstm_242_while_identity.sequential_80/lstm_242/while/Identity:output:0"[
'sequential_80_lstm_242_while_identity_10sequential_80/lstm_242/while/Identity_1:output:0"[
'sequential_80_lstm_242_while_identity_20sequential_80/lstm_242/while/Identity_2:output:0"[
'sequential_80_lstm_242_while_identity_30sequential_80/lstm_242/while/Identity_3:output:0"[
'sequential_80_lstm_242_while_identity_40sequential_80/lstm_242/while/Identity_4:output:0"[
'sequential_80_lstm_242_while_identity_50sequential_80/lstm_242/while/Identity_5:output:0"
Isequential_80_lstm_242_while_lstm_cell_62_biasadd_readvariableop_resourceKsequential_80_lstm_242_while_lstm_cell_62_biasadd_readvariableop_resource_0"
Jsequential_80_lstm_242_while_lstm_cell_62_matmul_1_readvariableop_resourceLsequential_80_lstm_242_while_lstm_cell_62_matmul_1_readvariableop_resource_0"
Hsequential_80_lstm_242_while_lstm_cell_62_matmul_readvariableop_resourceJsequential_80_lstm_242_while_lstm_cell_62_matmul_readvariableop_resource_0"
Csequential_80_lstm_242_while_sequential_80_lstm_242_strided_slice_1Esequential_80_lstm_242_while_sequential_80_lstm_242_strided_slice_1_0"
sequential_80_lstm_242_while_tensorarrayv2read_tensorlistgetitem_sequential_80_lstm_242_tensorarrayunstack_tensorlistfromtensorsequential_80_lstm_242_while_tensorarrayv2read_tensorlistgetitem_sequential_80_lstm_242_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2
@sequential_80/lstm_242/while/lstm_cell_62/BiasAdd/ReadVariableOp@sequential_80/lstm_242/while/lstm_cell_62/BiasAdd/ReadVariableOp2
?sequential_80/lstm_242/while/lstm_cell_62/MatMul/ReadVariableOp?sequential_80/lstm_242/while/lstm_cell_62/MatMul/ReadVariableOp2
Asequential_80/lstm_242/while/lstm_cell_62/MatMul_1/ReadVariableOpAsequential_80/lstm_242/while/lstm_cell_62/MatMul_1/ReadVariableOp: 
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
while_body_378246
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_60_matmul_readvariableop_resource_0:	H
5while_lstm_cell_60_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_60_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_60_matmul_readvariableop_resource:	F
3while_lstm_cell_60_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_60_biasadd_readvariableop_resource:	˘)while/lstm_cell_60/BiasAdd/ReadVariableOp˘(while/lstm_cell_60/MatMul/ReadVariableOp˘*while/lstm_cell_60/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_60/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_60_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_60/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_60/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_60_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_60/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_60/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_60/addAddV2#while/lstm_cell_60/MatMul:product:0%while/lstm_cell_60/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_60/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_60_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_60/BiasAddBiasAddwhile/lstm_cell_60/add:z:01while/lstm_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_60/splitSplit+while/lstm_cell_60/split/split_dim:output:0#while/lstm_cell_60/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_60/SigmoidSigmoid!while/lstm_cell_60/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_60/Sigmoid_1Sigmoid!while/lstm_cell_60/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_60/mulMul while/lstm_cell_60/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_60/ReluRelu!while/lstm_cell_60/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_60/mul_1Mulwhile/lstm_cell_60/Sigmoid:y:0%while/lstm_cell_60/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_60/add_1AddV2while/lstm_cell_60/mul:z:0while/lstm_cell_60/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_60/Sigmoid_2Sigmoid!while/lstm_cell_60/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_60/Relu_1Reluwhile/lstm_cell_60/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_60/mul_2Mul while/lstm_cell_60/Sigmoid_2:y:0'while/lstm_cell_60/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_60/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_60/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_60/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_60/BiasAdd/ReadVariableOp)^while/lstm_cell_60/MatMul/ReadVariableOp+^while/lstm_cell_60/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_60_biasadd_readvariableop_resource4while_lstm_cell_60_biasadd_readvariableop_resource_0"l
3while_lstm_cell_60_matmul_1_readvariableop_resource5while_lstm_cell_60_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_60_matmul_readvariableop_resource3while_lstm_cell_60_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_60/BiasAdd/ReadVariableOp)while/lstm_cell_60/BiasAdd/ReadVariableOp2T
(while/lstm_cell_60/MatMul/ReadVariableOp(while/lstm_cell_60/MatMul/ReadVariableOp2X
*while/lstm_cell_60/MatMul_1/ReadVariableOp*while/lstm_cell_60/MatMul_1/ReadVariableOp: 
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
ö
³
)__inference_lstm_242_layer_call_fn_379265

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
D__inference_lstm_242_layer_call_and_return_conditional_losses_376331o
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
ë
ö
-__inference_lstm_cell_61_layer_call_fn_379999

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
H__inference_lstm_cell_61_layer_call_and_return_conditional_losses_375395o
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
8
?
while_body_378862
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_61_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_61_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_61_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_61_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_61_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_61_biasadd_readvariableop_resource:	È˘)while/lstm_cell_61/BiasAdd/ReadVariableOp˘(while/lstm_cell_61/MatMul/ReadVariableOp˘*while/lstm_cell_61/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_61/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_61_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_61/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_61/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_61/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_61_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_61/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_61/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_61/addAddV2#while/lstm_cell_61/MatMul:product:0%while/lstm_cell_61/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_61/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_61_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_61/BiasAddBiasAddwhile/lstm_cell_61/add:z:01while/lstm_cell_61/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_61/splitSplit+while/lstm_cell_61/split/split_dim:output:0#while/lstm_cell_61/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_61/SigmoidSigmoid!while/lstm_cell_61/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_61/Sigmoid_1Sigmoid!while/lstm_cell_61/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_61/mulMul while/lstm_cell_61/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_61/ReluRelu!while/lstm_cell_61/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_61/mul_1Mulwhile/lstm_cell_61/Sigmoid:y:0%while/lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_61/add_1AddV2while/lstm_cell_61/mul:z:0while/lstm_cell_61/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_61/Sigmoid_2Sigmoid!while/lstm_cell_61/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_61/Relu_1Reluwhile/lstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_61/mul_2Mul while/lstm_cell_61/Sigmoid_2:y:0'while/lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_61/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_61/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_61/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_61/BiasAdd/ReadVariableOp)^while/lstm_cell_61/MatMul/ReadVariableOp+^while/lstm_cell_61/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_61_biasadd_readvariableop_resource4while_lstm_cell_61_biasadd_readvariableop_resource_0"l
3while_lstm_cell_61_matmul_1_readvariableop_resource5while_lstm_cell_61_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_61_matmul_readvariableop_resource3while_lstm_cell_61_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_61/BiasAdd/ReadVariableOp)while/lstm_cell_61/BiasAdd/ReadVariableOp2T
(while/lstm_cell_61/MatMul/ReadVariableOp(while/lstm_cell_61/MatMul/ReadVariableOp2X
*while/lstm_cell_61/MatMul_1/ReadVariableOp*while/lstm_cell_61/MatMul_1/ReadVariableOp: 
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
à"
Ŭ
while_body_375804
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_62_375828_0:2(-
while_lstm_cell_62_375830_0:
()
while_lstm_cell_62_375832_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_62_375828:2(+
while_lstm_cell_62_375830:
('
while_lstm_cell_62_375832:(˘*while/lstm_cell_62/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_62/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_62_375828_0while_lstm_cell_62_375830_0while_lstm_cell_62_375832_0*
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
H__inference_lstm_cell_62_layer_call_and_return_conditional_losses_375745Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_62/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_62/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_62/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_62/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_62_375828while_lstm_cell_62_375828_0"8
while_lstm_cell_62_375830while_lstm_cell_62_375830_0"8
while_lstm_cell_62_375832while_lstm_cell_62_375832_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_62/StatefulPartitionedCall*while/lstm_cell_62/StatefulPartitionedCall: 
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
ħ

I__inference_sequential_80_layer_call_and_return_conditional_losses_378000

inputsG
4lstm_240_lstm_cell_60_matmul_readvariableop_resource:	I
6lstm_240_lstm_cell_60_matmul_1_readvariableop_resource:	dD
5lstm_240_lstm_cell_60_biasadd_readvariableop_resource:	G
4lstm_241_lstm_cell_61_matmul_readvariableop_resource:	dÈI
6lstm_241_lstm_cell_61_matmul_1_readvariableop_resource:	2ÈD
5lstm_241_lstm_cell_61_biasadd_readvariableop_resource:	ÈF
4lstm_242_lstm_cell_62_matmul_readvariableop_resource:2(H
6lstm_242_lstm_cell_62_matmul_1_readvariableop_resource:
(C
5lstm_242_lstm_cell_62_biasadd_readvariableop_resource:(9
'dense_80_matmul_readvariableop_resource:
6
(dense_80_biasadd_readvariableop_resource:
identity˘dense_80/BiasAdd/ReadVariableOp˘dense_80/MatMul/ReadVariableOp˘,lstm_240/lstm_cell_60/BiasAdd/ReadVariableOp˘+lstm_240/lstm_cell_60/MatMul/ReadVariableOp˘-lstm_240/lstm_cell_60/MatMul_1/ReadVariableOp˘lstm_240/while˘,lstm_241/lstm_cell_61/BiasAdd/ReadVariableOp˘+lstm_241/lstm_cell_61/MatMul/ReadVariableOp˘-lstm_241/lstm_cell_61/MatMul_1/ReadVariableOp˘lstm_241/while˘,lstm_242/lstm_cell_62/BiasAdd/ReadVariableOp˘+lstm_242/lstm_cell_62/MatMul/ReadVariableOp˘-lstm_242/lstm_cell_62/MatMul_1/ReadVariableOp˘lstm_242/whileD
lstm_240/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_240/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_240/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_240/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_240/strided_sliceStridedSlicelstm_240/Shape:output:0%lstm_240/strided_slice/stack:output:0'lstm_240/strided_slice/stack_1:output:0'lstm_240/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_240/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_240/zeros/packedPacklstm_240/strided_slice:output:0 lstm_240/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_240/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_240/zerosFilllstm_240/zeros/packed:output:0lstm_240/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_240/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_240/zeros_1/packedPacklstm_240/strided_slice:output:0"lstm_240/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_240/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_240/zeros_1Fill lstm_240/zeros_1/packed:output:0lstm_240/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_240/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_240/transpose	Transposeinputs lstm_240/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_240/Shape_1Shapelstm_240/transpose:y:0*
T0*
_output_shapes
:h
lstm_240/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_240/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_240/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_240/strided_slice_1StridedSlicelstm_240/Shape_1:output:0'lstm_240/strided_slice_1/stack:output:0)lstm_240/strided_slice_1/stack_1:output:0)lstm_240/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_240/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_240/TensorArrayV2TensorListReserve-lstm_240/TensorArrayV2/element_shape:output:0!lstm_240/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_240/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_240/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_240/transpose:y:0Glstm_240/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_240/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_240/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_240/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_240/strided_slice_2StridedSlicelstm_240/transpose:y:0'lstm_240/strided_slice_2/stack:output:0)lstm_240/strided_slice_2/stack_1:output:0)lstm_240/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_240/lstm_cell_60/MatMul/ReadVariableOpReadVariableOp4lstm_240_lstm_cell_60_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_240/lstm_cell_60/MatMulMatMul!lstm_240/strided_slice_2:output:03lstm_240/lstm_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_240/lstm_cell_60/MatMul_1/ReadVariableOpReadVariableOp6lstm_240_lstm_cell_60_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_240/lstm_cell_60/MatMul_1MatMullstm_240/zeros:output:05lstm_240/lstm_cell_60/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_240/lstm_cell_60/addAddV2&lstm_240/lstm_cell_60/MatMul:product:0(lstm_240/lstm_cell_60/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_240/lstm_cell_60/BiasAdd/ReadVariableOpReadVariableOp5lstm_240_lstm_cell_60_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_240/lstm_cell_60/BiasAddBiasAddlstm_240/lstm_cell_60/add:z:04lstm_240/lstm_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_240/lstm_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_240/lstm_cell_60/splitSplit.lstm_240/lstm_cell_60/split/split_dim:output:0&lstm_240/lstm_cell_60/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_240/lstm_cell_60/SigmoidSigmoid$lstm_240/lstm_cell_60/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_240/lstm_cell_60/Sigmoid_1Sigmoid$lstm_240/lstm_cell_60/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_240/lstm_cell_60/mulMul#lstm_240/lstm_cell_60/Sigmoid_1:y:0lstm_240/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_240/lstm_cell_60/ReluRelu$lstm_240/lstm_cell_60/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_240/lstm_cell_60/mul_1Mul!lstm_240/lstm_cell_60/Sigmoid:y:0(lstm_240/lstm_cell_60/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_240/lstm_cell_60/add_1AddV2lstm_240/lstm_cell_60/mul:z:0lstm_240/lstm_cell_60/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_240/lstm_cell_60/Sigmoid_2Sigmoid$lstm_240/lstm_cell_60/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_240/lstm_cell_60/Relu_1Relulstm_240/lstm_cell_60/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_240/lstm_cell_60/mul_2Mul#lstm_240/lstm_cell_60/Sigmoid_2:y:0*lstm_240/lstm_cell_60/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_240/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_240/TensorArrayV2_1TensorListReserve/lstm_240/TensorArrayV2_1/element_shape:output:0!lstm_240/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_240/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_240/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_240/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_240/whileWhile$lstm_240/while/loop_counter:output:0*lstm_240/while/maximum_iterations:output:0lstm_240/time:output:0!lstm_240/TensorArrayV2_1:handle:0lstm_240/zeros:output:0lstm_240/zeros_1:output:0!lstm_240/strided_slice_1:output:0@lstm_240/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_240_lstm_cell_60_matmul_readvariableop_resource6lstm_240_lstm_cell_60_matmul_1_readvariableop_resource5lstm_240_lstm_cell_60_biasadd_readvariableop_resource*
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
lstm_240_while_body_377632*&
condR
lstm_240_while_cond_377631*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_240/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_240/TensorArrayV2Stack/TensorListStackTensorListStacklstm_240/while:output:3Blstm_240/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_240/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_240/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_240/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_240/strided_slice_3StridedSlice4lstm_240/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_240/strided_slice_3/stack:output:0)lstm_240/strided_slice_3/stack_1:output:0)lstm_240/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_240/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_240/transpose_1	Transpose4lstm_240/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_240/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_240/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_241/ShapeShapelstm_240/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_241/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_241/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_241/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_241/strided_sliceStridedSlicelstm_241/Shape:output:0%lstm_241/strided_slice/stack:output:0'lstm_241/strided_slice/stack_1:output:0'lstm_241/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_241/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_241/zeros/packedPacklstm_241/strided_slice:output:0 lstm_241/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_241/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_241/zerosFilllstm_241/zeros/packed:output:0lstm_241/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_241/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_241/zeros_1/packedPacklstm_241/strided_slice:output:0"lstm_241/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_241/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_241/zeros_1Fill lstm_241/zeros_1/packed:output:0lstm_241/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_241/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_241/transpose	Transposelstm_240/transpose_1:y:0 lstm_241/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_241/Shape_1Shapelstm_241/transpose:y:0*
T0*
_output_shapes
:h
lstm_241/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_241/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_241/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_241/strided_slice_1StridedSlicelstm_241/Shape_1:output:0'lstm_241/strided_slice_1/stack:output:0)lstm_241/strided_slice_1/stack_1:output:0)lstm_241/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_241/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_241/TensorArrayV2TensorListReserve-lstm_241/TensorArrayV2/element_shape:output:0!lstm_241/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_241/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_241/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_241/transpose:y:0Glstm_241/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_241/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_241/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_241/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_241/strided_slice_2StridedSlicelstm_241/transpose:y:0'lstm_241/strided_slice_2/stack:output:0)lstm_241/strided_slice_2/stack_1:output:0)lstm_241/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_241/lstm_cell_61/MatMul/ReadVariableOpReadVariableOp4lstm_241_lstm_cell_61_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_241/lstm_cell_61/MatMulMatMul!lstm_241/strided_slice_2:output:03lstm_241/lstm_cell_61/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_241/lstm_cell_61/MatMul_1/ReadVariableOpReadVariableOp6lstm_241_lstm_cell_61_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_241/lstm_cell_61/MatMul_1MatMullstm_241/zeros:output:05lstm_241/lstm_cell_61/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_241/lstm_cell_61/addAddV2&lstm_241/lstm_cell_61/MatMul:product:0(lstm_241/lstm_cell_61/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_241/lstm_cell_61/BiasAdd/ReadVariableOpReadVariableOp5lstm_241_lstm_cell_61_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_241/lstm_cell_61/BiasAddBiasAddlstm_241/lstm_cell_61/add:z:04lstm_241/lstm_cell_61/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_241/lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_241/lstm_cell_61/splitSplit.lstm_241/lstm_cell_61/split/split_dim:output:0&lstm_241/lstm_cell_61/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_241/lstm_cell_61/SigmoidSigmoid$lstm_241/lstm_cell_61/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_241/lstm_cell_61/Sigmoid_1Sigmoid$lstm_241/lstm_cell_61/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_241/lstm_cell_61/mulMul#lstm_241/lstm_cell_61/Sigmoid_1:y:0lstm_241/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_241/lstm_cell_61/ReluRelu$lstm_241/lstm_cell_61/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_241/lstm_cell_61/mul_1Mul!lstm_241/lstm_cell_61/Sigmoid:y:0(lstm_241/lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_241/lstm_cell_61/add_1AddV2lstm_241/lstm_cell_61/mul:z:0lstm_241/lstm_cell_61/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_241/lstm_cell_61/Sigmoid_2Sigmoid$lstm_241/lstm_cell_61/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_241/lstm_cell_61/Relu_1Relulstm_241/lstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_241/lstm_cell_61/mul_2Mul#lstm_241/lstm_cell_61/Sigmoid_2:y:0*lstm_241/lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_241/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_241/TensorArrayV2_1TensorListReserve/lstm_241/TensorArrayV2_1/element_shape:output:0!lstm_241/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_241/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_241/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_241/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_241/whileWhile$lstm_241/while/loop_counter:output:0*lstm_241/while/maximum_iterations:output:0lstm_241/time:output:0!lstm_241/TensorArrayV2_1:handle:0lstm_241/zeros:output:0lstm_241/zeros_1:output:0!lstm_241/strided_slice_1:output:0@lstm_241/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_241_lstm_cell_61_matmul_readvariableop_resource6lstm_241_lstm_cell_61_matmul_1_readvariableop_resource5lstm_241_lstm_cell_61_biasadd_readvariableop_resource*
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
lstm_241_while_body_377771*&
condR
lstm_241_while_cond_377770*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_241/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_241/TensorArrayV2Stack/TensorListStackTensorListStacklstm_241/while:output:3Blstm_241/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_241/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_241/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_241/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_241/strided_slice_3StridedSlice4lstm_241/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_241/strided_slice_3/stack:output:0)lstm_241/strided_slice_3/stack_1:output:0)lstm_241/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_241/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_241/transpose_1	Transpose4lstm_241/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_241/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_241/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_242/ShapeShapelstm_241/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_242/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_242/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_242/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_242/strided_sliceStridedSlicelstm_242/Shape:output:0%lstm_242/strided_slice/stack:output:0'lstm_242/strided_slice/stack_1:output:0'lstm_242/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_242/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_242/zeros/packedPacklstm_242/strided_slice:output:0 lstm_242/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_242/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_242/zerosFilllstm_242/zeros/packed:output:0lstm_242/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_242/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_242/zeros_1/packedPacklstm_242/strided_slice:output:0"lstm_242/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_242/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_242/zeros_1Fill lstm_242/zeros_1/packed:output:0lstm_242/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_242/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_242/transpose	Transposelstm_241/transpose_1:y:0 lstm_242/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_242/Shape_1Shapelstm_242/transpose:y:0*
T0*
_output_shapes
:h
lstm_242/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_242/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_242/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_242/strided_slice_1StridedSlicelstm_242/Shape_1:output:0'lstm_242/strided_slice_1/stack:output:0)lstm_242/strided_slice_1/stack_1:output:0)lstm_242/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_242/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_242/TensorArrayV2TensorListReserve-lstm_242/TensorArrayV2/element_shape:output:0!lstm_242/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_242/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_242/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_242/transpose:y:0Glstm_242/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_242/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_242/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_242/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_242/strided_slice_2StridedSlicelstm_242/transpose:y:0'lstm_242/strided_slice_2/stack:output:0)lstm_242/strided_slice_2/stack_1:output:0)lstm_242/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_242/lstm_cell_62/MatMul/ReadVariableOpReadVariableOp4lstm_242_lstm_cell_62_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_242/lstm_cell_62/MatMulMatMul!lstm_242/strided_slice_2:output:03lstm_242/lstm_cell_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_242/lstm_cell_62/MatMul_1/ReadVariableOpReadVariableOp6lstm_242_lstm_cell_62_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_242/lstm_cell_62/MatMul_1MatMullstm_242/zeros:output:05lstm_242/lstm_cell_62/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_242/lstm_cell_62/addAddV2&lstm_242/lstm_cell_62/MatMul:product:0(lstm_242/lstm_cell_62/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_242/lstm_cell_62/BiasAdd/ReadVariableOpReadVariableOp5lstm_242_lstm_cell_62_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_242/lstm_cell_62/BiasAddBiasAddlstm_242/lstm_cell_62/add:z:04lstm_242/lstm_cell_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_242/lstm_cell_62/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_242/lstm_cell_62/splitSplit.lstm_242/lstm_cell_62/split/split_dim:output:0&lstm_242/lstm_cell_62/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_242/lstm_cell_62/SigmoidSigmoid$lstm_242/lstm_cell_62/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_242/lstm_cell_62/Sigmoid_1Sigmoid$lstm_242/lstm_cell_62/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_242/lstm_cell_62/mulMul#lstm_242/lstm_cell_62/Sigmoid_1:y:0lstm_242/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_242/lstm_cell_62/ReluRelu$lstm_242/lstm_cell_62/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_242/lstm_cell_62/mul_1Mul!lstm_242/lstm_cell_62/Sigmoid:y:0(lstm_242/lstm_cell_62/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_242/lstm_cell_62/add_1AddV2lstm_242/lstm_cell_62/mul:z:0lstm_242/lstm_cell_62/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_242/lstm_cell_62/Sigmoid_2Sigmoid$lstm_242/lstm_cell_62/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_242/lstm_cell_62/Relu_1Relulstm_242/lstm_cell_62/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_242/lstm_cell_62/mul_2Mul#lstm_242/lstm_cell_62/Sigmoid_2:y:0*lstm_242/lstm_cell_62/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_242/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_242/TensorArrayV2_1TensorListReserve/lstm_242/TensorArrayV2_1/element_shape:output:0!lstm_242/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_242/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_242/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_242/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_242/whileWhile$lstm_242/while/loop_counter:output:0*lstm_242/while/maximum_iterations:output:0lstm_242/time:output:0!lstm_242/TensorArrayV2_1:handle:0lstm_242/zeros:output:0lstm_242/zeros_1:output:0!lstm_242/strided_slice_1:output:0@lstm_242/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_242_lstm_cell_62_matmul_readvariableop_resource6lstm_242_lstm_cell_62_matmul_1_readvariableop_resource5lstm_242_lstm_cell_62_biasadd_readvariableop_resource*
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
lstm_242_while_body_377910*&
condR
lstm_242_while_cond_377909*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_242/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_242/TensorArrayV2Stack/TensorListStackTensorListStacklstm_242/while:output:3Blstm_242/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_242/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_242/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_242/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_242/strided_slice_3StridedSlice4lstm_242/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_242/strided_slice_3/stack:output:0)lstm_242/strided_slice_3/stack_1:output:0)lstm_242/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_242/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_242/transpose_1	Transpose4lstm_242/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_242/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_242/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_80/MatMul/ReadVariableOpReadVariableOp'dense_80_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_80/MatMulMatMul!lstm_242/strided_slice_3:output:0&dense_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_80/BiasAdd/ReadVariableOpReadVariableOp(dense_80_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_80/BiasAddBiasAdddense_80/MatMul:product:0'dense_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense_80/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙?
NoOpNoOp ^dense_80/BiasAdd/ReadVariableOp^dense_80/MatMul/ReadVariableOp-^lstm_240/lstm_cell_60/BiasAdd/ReadVariableOp,^lstm_240/lstm_cell_60/MatMul/ReadVariableOp.^lstm_240/lstm_cell_60/MatMul_1/ReadVariableOp^lstm_240/while-^lstm_241/lstm_cell_61/BiasAdd/ReadVariableOp,^lstm_241/lstm_cell_61/MatMul/ReadVariableOp.^lstm_241/lstm_cell_61/MatMul_1/ReadVariableOp^lstm_241/while-^lstm_242/lstm_cell_62/BiasAdd/ReadVariableOp,^lstm_242/lstm_cell_62/MatMul/ReadVariableOp.^lstm_242/lstm_cell_62/MatMul_1/ReadVariableOp^lstm_242/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2B
dense_80/BiasAdd/ReadVariableOpdense_80/BiasAdd/ReadVariableOp2@
dense_80/MatMul/ReadVariableOpdense_80/MatMul/ReadVariableOp2\
,lstm_240/lstm_cell_60/BiasAdd/ReadVariableOp,lstm_240/lstm_cell_60/BiasAdd/ReadVariableOp2Z
+lstm_240/lstm_cell_60/MatMul/ReadVariableOp+lstm_240/lstm_cell_60/MatMul/ReadVariableOp2^
-lstm_240/lstm_cell_60/MatMul_1/ReadVariableOp-lstm_240/lstm_cell_60/MatMul_1/ReadVariableOp2 
lstm_240/whilelstm_240/while2\
,lstm_241/lstm_cell_61/BiasAdd/ReadVariableOp,lstm_241/lstm_cell_61/BiasAdd/ReadVariableOp2Z
+lstm_241/lstm_cell_61/MatMul/ReadVariableOp+lstm_241/lstm_cell_61/MatMul/ReadVariableOp2^
-lstm_241/lstm_cell_61/MatMul_1/ReadVariableOp-lstm_241/lstm_cell_61/MatMul_1/ReadVariableOp2 
lstm_241/whilelstm_241/while2\
,lstm_242/lstm_cell_62/BiasAdd/ReadVariableOp,lstm_242/lstm_cell_62/BiasAdd/ReadVariableOp2Z
+lstm_242/lstm_cell_62/MatMul/ReadVariableOp+lstm_242/lstm_cell_62/MatMul/ReadVariableOp2^
-lstm_242/lstm_cell_62/MatMul_1/ReadVariableOp-lstm_242/lstm_cell_62/MatMul_1/ReadVariableOp2 
lstm_242/whilelstm_242/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8

D__inference_lstm_242_layer_call_and_return_conditional_losses_375682

inputs%
lstm_cell_62_375600:2(%
lstm_cell_62_375602:
(!
lstm_cell_62_375604:(
identity˘$lstm_cell_62/StatefulPartitionedCall˘while;
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
$lstm_cell_62/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_62_375600lstm_cell_62_375602lstm_cell_62_375604*
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
H__inference_lstm_cell_62_layer_call_and_return_conditional_losses_375599n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_62_375600lstm_cell_62_375602lstm_cell_62_375604*
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
while_body_375613*
condR
while_cond_375612*K
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
NoOpNoOp%^lstm_cell_62/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_62/StatefulPartitionedCall$lstm_cell_62/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
ë
ö
-__inference_lstm_cell_60_layer_call_fn_379901

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
H__inference_lstm_cell_60_layer_call_and_return_conditional_losses_375045o
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
Ŭ

H__inference_lstm_cell_61_layer_call_and_return_conditional_losses_380063

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

ĥ
)__inference_lstm_241_layer_call_fn_378660

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
D__inference_lstm_241_layer_call_and_return_conditional_losses_376712s
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
²

÷
lstm_241_while_cond_377770.
*lstm_241_while_lstm_241_while_loop_counter4
0lstm_241_while_lstm_241_while_maximum_iterations
lstm_241_while_placeholder 
lstm_241_while_placeholder_1 
lstm_241_while_placeholder_2 
lstm_241_while_placeholder_30
,lstm_241_while_less_lstm_241_strided_slice_1F
Blstm_241_while_lstm_241_while_cond_377770___redundant_placeholder0F
Blstm_241_while_lstm_241_while_cond_377770___redundant_placeholder1F
Blstm_241_while_lstm_241_while_cond_377770___redundant_placeholder2F
Blstm_241_while_lstm_241_while_cond_377770___redundant_placeholder3
lstm_241_while_identity

lstm_241/while/LessLesslstm_241_while_placeholder,lstm_241_while_less_lstm_241_strided_slice_1*
T0*
_output_shapes
: ]
lstm_241/while/IdentityIdentitylstm_241/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_241_while_identity lstm_241/while/Identity:output:0*(
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
D__inference_lstm_241_layer_call_and_return_conditional_losses_375523

inputs&
lstm_cell_61_375441:	dÈ&
lstm_cell_61_375443:	2È"
lstm_cell_61_375445:	È
identity˘$lstm_cell_61/StatefulPartitionedCall˘while;
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
$lstm_cell_61/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_61_375441lstm_cell_61_375443lstm_cell_61_375445*
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
H__inference_lstm_cell_61_layer_call_and_return_conditional_losses_375395n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_61_375441lstm_cell_61_375443lstm_cell_61_375445*
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
while_body_375454*
condR
while_cond_375453*K
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
NoOpNoOp%^lstm_cell_61/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_61/StatefulPartitionedCall$lstm_cell_61/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
âJ

D__inference_lstm_240_layer_call_and_return_conditional_losses_378330
inputs_0>
+lstm_cell_60_matmul_readvariableop_resource:	@
-lstm_cell_60_matmul_1_readvariableop_resource:	d;
,lstm_cell_60_biasadd_readvariableop_resource:	
identity˘#lstm_cell_60/BiasAdd/ReadVariableOp˘"lstm_cell_60/MatMul/ReadVariableOp˘$lstm_cell_60/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_60/MatMul/ReadVariableOpReadVariableOp+lstm_cell_60_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_60/MatMulMatMulstrided_slice_2:output:0*lstm_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_60/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_60_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_60/MatMul_1MatMulzeros:output:0,lstm_cell_60/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_60/addAddV2lstm_cell_60/MatMul:product:0lstm_cell_60/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_60/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_60_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_60/BiasAddBiasAddlstm_cell_60/add:z:0+lstm_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_60/splitSplit%lstm_cell_60/split/split_dim:output:0lstm_cell_60/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_60/SigmoidSigmoidlstm_cell_60/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_60/Sigmoid_1Sigmoidlstm_cell_60/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_60/mulMullstm_cell_60/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_60/ReluRelulstm_cell_60/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_60/mul_1Mullstm_cell_60/Sigmoid:y:0lstm_cell_60/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_60/add_1AddV2lstm_cell_60/mul:z:0lstm_cell_60/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_60/Sigmoid_2Sigmoidlstm_cell_60/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_60/Relu_1Relulstm_cell_60/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_60/mul_2Mullstm_cell_60/Sigmoid_2:y:0!lstm_cell_60/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_60_matmul_readvariableop_resource-lstm_cell_60_matmul_1_readvariableop_resource,lstm_cell_60_biasadd_readvariableop_resource*
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
while_body_378246*
condR
while_cond_378245*K
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
NoOpNoOp$^lstm_cell_60/BiasAdd/ReadVariableOp#^lstm_cell_60/MatMul/ReadVariableOp%^lstm_cell_60/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_60/BiasAdd/ReadVariableOp#lstm_cell_60/BiasAdd/ReadVariableOp2H
"lstm_cell_60/MatMul/ReadVariableOp"lstm_cell_60/MatMul/ReadVariableOp2L
$lstm_cell_60/MatMul_1/ReadVariableOp$lstm_cell_60/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
ÛB
?

lstm_240_while_body_377632.
*lstm_240_while_lstm_240_while_loop_counter4
0lstm_240_while_lstm_240_while_maximum_iterations
lstm_240_while_placeholder 
lstm_240_while_placeholder_1 
lstm_240_while_placeholder_2 
lstm_240_while_placeholder_3-
)lstm_240_while_lstm_240_strided_slice_1_0i
elstm_240_while_tensorarrayv2read_tensorlistgetitem_lstm_240_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_240_while_lstm_cell_60_matmul_readvariableop_resource_0:	Q
>lstm_240_while_lstm_cell_60_matmul_1_readvariableop_resource_0:	dL
=lstm_240_while_lstm_cell_60_biasadd_readvariableop_resource_0:	
lstm_240_while_identity
lstm_240_while_identity_1
lstm_240_while_identity_2
lstm_240_while_identity_3
lstm_240_while_identity_4
lstm_240_while_identity_5+
'lstm_240_while_lstm_240_strided_slice_1g
clstm_240_while_tensorarrayv2read_tensorlistgetitem_lstm_240_tensorarrayunstack_tensorlistfromtensorM
:lstm_240_while_lstm_cell_60_matmul_readvariableop_resource:	O
<lstm_240_while_lstm_cell_60_matmul_1_readvariableop_resource:	dJ
;lstm_240_while_lstm_cell_60_biasadd_readvariableop_resource:	˘2lstm_240/while/lstm_cell_60/BiasAdd/ReadVariableOp˘1lstm_240/while/lstm_cell_60/MatMul/ReadVariableOp˘3lstm_240/while/lstm_cell_60/MatMul_1/ReadVariableOp
@lstm_240/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_240/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_240_while_tensorarrayv2read_tensorlistgetitem_lstm_240_tensorarrayunstack_tensorlistfromtensor_0lstm_240_while_placeholderIlstm_240/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_240/while/lstm_cell_60/MatMul/ReadVariableOpReadVariableOp<lstm_240_while_lstm_cell_60_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_240/while/lstm_cell_60/MatMulMatMul9lstm_240/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_240/while/lstm_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_240/while/lstm_cell_60/MatMul_1/ReadVariableOpReadVariableOp>lstm_240_while_lstm_cell_60_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_240/while/lstm_cell_60/MatMul_1MatMullstm_240_while_placeholder_2;lstm_240/while/lstm_cell_60/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_240/while/lstm_cell_60/addAddV2,lstm_240/while/lstm_cell_60/MatMul:product:0.lstm_240/while/lstm_cell_60/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_240/while/lstm_cell_60/BiasAdd/ReadVariableOpReadVariableOp=lstm_240_while_lstm_cell_60_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_240/while/lstm_cell_60/BiasAddBiasAdd#lstm_240/while/lstm_cell_60/add:z:0:lstm_240/while/lstm_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_240/while/lstm_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_240/while/lstm_cell_60/splitSplit4lstm_240/while/lstm_cell_60/split/split_dim:output:0,lstm_240/while/lstm_cell_60/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_240/while/lstm_cell_60/SigmoidSigmoid*lstm_240/while/lstm_cell_60/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_240/while/lstm_cell_60/Sigmoid_1Sigmoid*lstm_240/while/lstm_cell_60/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_240/while/lstm_cell_60/mulMul)lstm_240/while/lstm_cell_60/Sigmoid_1:y:0lstm_240_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_240/while/lstm_cell_60/ReluRelu*lstm_240/while/lstm_cell_60/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_240/while/lstm_cell_60/mul_1Mul'lstm_240/while/lstm_cell_60/Sigmoid:y:0.lstm_240/while/lstm_cell_60/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_240/while/lstm_cell_60/add_1AddV2#lstm_240/while/lstm_cell_60/mul:z:0%lstm_240/while/lstm_cell_60/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_240/while/lstm_cell_60/Sigmoid_2Sigmoid*lstm_240/while/lstm_cell_60/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_240/while/lstm_cell_60/Relu_1Relu%lstm_240/while/lstm_cell_60/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_240/while/lstm_cell_60/mul_2Mul)lstm_240/while/lstm_cell_60/Sigmoid_2:y:00lstm_240/while/lstm_cell_60/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_240/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_240_while_placeholder_1lstm_240_while_placeholder%lstm_240/while/lstm_cell_60/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_240/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_240/while/addAddV2lstm_240_while_placeholderlstm_240/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_240/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_240/while/add_1AddV2*lstm_240_while_lstm_240_while_loop_counterlstm_240/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_240/while/IdentityIdentitylstm_240/while/add_1:z:0^lstm_240/while/NoOp*
T0*
_output_shapes
: 
lstm_240/while/Identity_1Identity0lstm_240_while_lstm_240_while_maximum_iterations^lstm_240/while/NoOp*
T0*
_output_shapes
: t
lstm_240/while/Identity_2Identitylstm_240/while/add:z:0^lstm_240/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_240/while/Identity_3IdentityClstm_240/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_240/while/NoOp*
T0*
_output_shapes
: 
lstm_240/while/Identity_4Identity%lstm_240/while/lstm_cell_60/mul_2:z:0^lstm_240/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_240/while/Identity_5Identity%lstm_240/while/lstm_cell_60/add_1:z:0^lstm_240/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_240/while/NoOpNoOp3^lstm_240/while/lstm_cell_60/BiasAdd/ReadVariableOp2^lstm_240/while/lstm_cell_60/MatMul/ReadVariableOp4^lstm_240/while/lstm_cell_60/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_240_while_identity lstm_240/while/Identity:output:0"?
lstm_240_while_identity_1"lstm_240/while/Identity_1:output:0"?
lstm_240_while_identity_2"lstm_240/while/Identity_2:output:0"?
lstm_240_while_identity_3"lstm_240/while/Identity_3:output:0"?
lstm_240_while_identity_4"lstm_240/while/Identity_4:output:0"?
lstm_240_while_identity_5"lstm_240/while/Identity_5:output:0"T
'lstm_240_while_lstm_240_strided_slice_1)lstm_240_while_lstm_240_strided_slice_1_0"|
;lstm_240_while_lstm_cell_60_biasadd_readvariableop_resource=lstm_240_while_lstm_cell_60_biasadd_readvariableop_resource_0"~
<lstm_240_while_lstm_cell_60_matmul_1_readvariableop_resource>lstm_240_while_lstm_cell_60_matmul_1_readvariableop_resource_0"z
:lstm_240_while_lstm_cell_60_matmul_readvariableop_resource<lstm_240_while_lstm_cell_60_matmul_readvariableop_resource_0"Ì
clstm_240_while_tensorarrayv2read_tensorlistgetitem_lstm_240_tensorarrayunstack_tensorlistfromtensorelstm_240_while_tensorarrayv2read_tensorlistgetitem_lstm_240_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_240/while/lstm_cell_60/BiasAdd/ReadVariableOp2lstm_240/while/lstm_cell_60/BiasAdd/ReadVariableOp2f
1lstm_240/while/lstm_cell_60/MatMul/ReadVariableOp1lstm_240/while/lstm_cell_60/MatMul/ReadVariableOp2j
3lstm_240/while/lstm_cell_60/MatMul_1/ReadVariableOp3lstm_240/while/lstm_cell_60/MatMul_1/ReadVariableOp: 
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
Â

)__inference_dense_80_layer_call_fn_379857

inputs
unknown:

	unknown_0:
identity˘StatefulPartitionedCallÙ
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
GPU 2J 8 *M
fHRF
D__inference_dense_80_layer_call_and_return_conditional_losses_376349o
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
ë
ö
-__inference_lstm_cell_60_layer_call_fn_379884

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
H__inference_lstm_cell_60_layer_call_and_return_conditional_losses_374899o
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
ÛB
?

lstm_241_while_body_377344.
*lstm_241_while_lstm_241_while_loop_counter4
0lstm_241_while_lstm_241_while_maximum_iterations
lstm_241_while_placeholder 
lstm_241_while_placeholder_1 
lstm_241_while_placeholder_2 
lstm_241_while_placeholder_3-
)lstm_241_while_lstm_241_strided_slice_1_0i
elstm_241_while_tensorarrayv2read_tensorlistgetitem_lstm_241_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_241_while_lstm_cell_61_matmul_readvariableop_resource_0:	dÈQ
>lstm_241_while_lstm_cell_61_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_241_while_lstm_cell_61_biasadd_readvariableop_resource_0:	È
lstm_241_while_identity
lstm_241_while_identity_1
lstm_241_while_identity_2
lstm_241_while_identity_3
lstm_241_while_identity_4
lstm_241_while_identity_5+
'lstm_241_while_lstm_241_strided_slice_1g
clstm_241_while_tensorarrayv2read_tensorlistgetitem_lstm_241_tensorarrayunstack_tensorlistfromtensorM
:lstm_241_while_lstm_cell_61_matmul_readvariableop_resource:	dÈO
<lstm_241_while_lstm_cell_61_matmul_1_readvariableop_resource:	2ÈJ
;lstm_241_while_lstm_cell_61_biasadd_readvariableop_resource:	È˘2lstm_241/while/lstm_cell_61/BiasAdd/ReadVariableOp˘1lstm_241/while/lstm_cell_61/MatMul/ReadVariableOp˘3lstm_241/while/lstm_cell_61/MatMul_1/ReadVariableOp
@lstm_241/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_241/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_241_while_tensorarrayv2read_tensorlistgetitem_lstm_241_tensorarrayunstack_tensorlistfromtensor_0lstm_241_while_placeholderIlstm_241/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_241/while/lstm_cell_61/MatMul/ReadVariableOpReadVariableOp<lstm_241_while_lstm_cell_61_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_241/while/lstm_cell_61/MatMulMatMul9lstm_241/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_241/while/lstm_cell_61/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_241/while/lstm_cell_61/MatMul_1/ReadVariableOpReadVariableOp>lstm_241_while_lstm_cell_61_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_241/while/lstm_cell_61/MatMul_1MatMullstm_241_while_placeholder_2;lstm_241/while/lstm_cell_61/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_241/while/lstm_cell_61/addAddV2,lstm_241/while/lstm_cell_61/MatMul:product:0.lstm_241/while/lstm_cell_61/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_241/while/lstm_cell_61/BiasAdd/ReadVariableOpReadVariableOp=lstm_241_while_lstm_cell_61_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_241/while/lstm_cell_61/BiasAddBiasAdd#lstm_241/while/lstm_cell_61/add:z:0:lstm_241/while/lstm_cell_61/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_241/while/lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_241/while/lstm_cell_61/splitSplit4lstm_241/while/lstm_cell_61/split/split_dim:output:0,lstm_241/while/lstm_cell_61/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_241/while/lstm_cell_61/SigmoidSigmoid*lstm_241/while/lstm_cell_61/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_241/while/lstm_cell_61/Sigmoid_1Sigmoid*lstm_241/while/lstm_cell_61/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_241/while/lstm_cell_61/mulMul)lstm_241/while/lstm_cell_61/Sigmoid_1:y:0lstm_241_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_241/while/lstm_cell_61/ReluRelu*lstm_241/while/lstm_cell_61/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_241/while/lstm_cell_61/mul_1Mul'lstm_241/while/lstm_cell_61/Sigmoid:y:0.lstm_241/while/lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_241/while/lstm_cell_61/add_1AddV2#lstm_241/while/lstm_cell_61/mul:z:0%lstm_241/while/lstm_cell_61/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_241/while/lstm_cell_61/Sigmoid_2Sigmoid*lstm_241/while/lstm_cell_61/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_241/while/lstm_cell_61/Relu_1Relu%lstm_241/while/lstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_241/while/lstm_cell_61/mul_2Mul)lstm_241/while/lstm_cell_61/Sigmoid_2:y:00lstm_241/while/lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_241/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_241_while_placeholder_1lstm_241_while_placeholder%lstm_241/while/lstm_cell_61/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_241/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_241/while/addAddV2lstm_241_while_placeholderlstm_241/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_241/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_241/while/add_1AddV2*lstm_241_while_lstm_241_while_loop_counterlstm_241/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_241/while/IdentityIdentitylstm_241/while/add_1:z:0^lstm_241/while/NoOp*
T0*
_output_shapes
: 
lstm_241/while/Identity_1Identity0lstm_241_while_lstm_241_while_maximum_iterations^lstm_241/while/NoOp*
T0*
_output_shapes
: t
lstm_241/while/Identity_2Identitylstm_241/while/add:z:0^lstm_241/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_241/while/Identity_3IdentityClstm_241/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_241/while/NoOp*
T0*
_output_shapes
: 
lstm_241/while/Identity_4Identity%lstm_241/while/lstm_cell_61/mul_2:z:0^lstm_241/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_241/while/Identity_5Identity%lstm_241/while/lstm_cell_61/add_1:z:0^lstm_241/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_241/while/NoOpNoOp3^lstm_241/while/lstm_cell_61/BiasAdd/ReadVariableOp2^lstm_241/while/lstm_cell_61/MatMul/ReadVariableOp4^lstm_241/while/lstm_cell_61/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_241_while_identity lstm_241/while/Identity:output:0"?
lstm_241_while_identity_1"lstm_241/while/Identity_1:output:0"?
lstm_241_while_identity_2"lstm_241/while/Identity_2:output:0"?
lstm_241_while_identity_3"lstm_241/while/Identity_3:output:0"?
lstm_241_while_identity_4"lstm_241/while/Identity_4:output:0"?
lstm_241_while_identity_5"lstm_241/while/Identity_5:output:0"T
'lstm_241_while_lstm_241_strided_slice_1)lstm_241_while_lstm_241_strided_slice_1_0"|
;lstm_241_while_lstm_cell_61_biasadd_readvariableop_resource=lstm_241_while_lstm_cell_61_biasadd_readvariableop_resource_0"~
<lstm_241_while_lstm_cell_61_matmul_1_readvariableop_resource>lstm_241_while_lstm_cell_61_matmul_1_readvariableop_resource_0"z
:lstm_241_while_lstm_cell_61_matmul_readvariableop_resource<lstm_241_while_lstm_cell_61_matmul_readvariableop_resource_0"Ì
clstm_241_while_tensorarrayv2read_tensorlistgetitem_lstm_241_tensorarrayunstack_tensorlistfromtensorelstm_241_while_tensorarrayv2read_tensorlistgetitem_lstm_241_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_241/while/lstm_cell_61/BiasAdd/ReadVariableOp2lstm_241/while/lstm_cell_61/BiasAdd/ReadVariableOp2f
1lstm_241/while/lstm_cell_61/MatMul/ReadVariableOp1lstm_241/while/lstm_cell_61/MatMul/ReadVariableOp2j
3lstm_241/while/lstm_cell_61/MatMul_1/ReadVariableOp3lstm_241/while/lstm_cell_61/MatMul_1/ReadVariableOp: 
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
while_cond_376792
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_376792___redundant_placeholder04
0while_while_cond_376792___redundant_placeholder14
0while_while_cond_376792___redundant_placeholder24
0while_while_cond_376792___redundant_placeholder3
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
H__inference_lstm_cell_61_layer_call_and_return_conditional_losses_375249

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

ĥ
)__inference_lstm_240_layer_call_fn_378033

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
D__inference_lstm_240_layer_call_and_return_conditional_losses_376031s
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
²

÷
lstm_242_while_cond_377482.
*lstm_242_while_lstm_242_while_loop_counter4
0lstm_242_while_lstm_242_while_maximum_iterations
lstm_242_while_placeholder 
lstm_242_while_placeholder_1 
lstm_242_while_placeholder_2 
lstm_242_while_placeholder_30
,lstm_242_while_less_lstm_242_strided_slice_1F
Blstm_242_while_lstm_242_while_cond_377482___redundant_placeholder0F
Blstm_242_while_lstm_242_while_cond_377482___redundant_placeholder1F
Blstm_242_while_lstm_242_while_cond_377482___redundant_placeholder2F
Blstm_242_while_lstm_242_while_cond_377482___redundant_placeholder3
lstm_242_while_identity

lstm_242/while/LessLesslstm_242_while_placeholder,lstm_242_while_less_lstm_242_strided_slice_1*
T0*
_output_shapes
: ]
lstm_242/while/IdentityIdentitylstm_242/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_242_while_identity lstm_242/while/Identity:output:0*(
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
D__inference_lstm_240_layer_call_and_return_conditional_losses_378473

inputs>
+lstm_cell_60_matmul_readvariableop_resource:	@
-lstm_cell_60_matmul_1_readvariableop_resource:	d;
,lstm_cell_60_biasadd_readvariableop_resource:	
identity˘#lstm_cell_60/BiasAdd/ReadVariableOp˘"lstm_cell_60/MatMul/ReadVariableOp˘$lstm_cell_60/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_60/MatMul/ReadVariableOpReadVariableOp+lstm_cell_60_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_60/MatMulMatMulstrided_slice_2:output:0*lstm_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_60/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_60_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_60/MatMul_1MatMulzeros:output:0,lstm_cell_60/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_60/addAddV2lstm_cell_60/MatMul:product:0lstm_cell_60/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_60/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_60_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_60/BiasAddBiasAddlstm_cell_60/add:z:0+lstm_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_60/splitSplit%lstm_cell_60/split/split_dim:output:0lstm_cell_60/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_60/SigmoidSigmoidlstm_cell_60/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_60/Sigmoid_1Sigmoidlstm_cell_60/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_60/mulMullstm_cell_60/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_60/ReluRelulstm_cell_60/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_60/mul_1Mullstm_cell_60/Sigmoid:y:0lstm_cell_60/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_60/add_1AddV2lstm_cell_60/mul:z:0lstm_cell_60/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_60/Sigmoid_2Sigmoidlstm_cell_60/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_60/Relu_1Relulstm_cell_60/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_60/mul_2Mullstm_cell_60/Sigmoid_2:y:0!lstm_cell_60/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_60_matmul_readvariableop_resource-lstm_cell_60_matmul_1_readvariableop_resource,lstm_cell_60_biasadd_readvariableop_resource*
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
while_body_378389*
condR
while_cond_378388*K
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
NoOpNoOp$^lstm_cell_60/BiasAdd/ReadVariableOp#^lstm_cell_60/MatMul/ReadVariableOp%^lstm_cell_60/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_60/BiasAdd/ReadVariableOp#lstm_cell_60/BiasAdd/ReadVariableOp2H
"lstm_cell_60/MatMul/ReadVariableOp"lstm_cell_60/MatMul/ReadVariableOp2L
$lstm_cell_60/MatMul_1/ReadVariableOp$lstm_cell_60/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8
?
while_body_378389
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_60_matmul_readvariableop_resource_0:	H
5while_lstm_cell_60_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_60_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_60_matmul_readvariableop_resource:	F
3while_lstm_cell_60_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_60_biasadd_readvariableop_resource:	˘)while/lstm_cell_60/BiasAdd/ReadVariableOp˘(while/lstm_cell_60/MatMul/ReadVariableOp˘*while/lstm_cell_60/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_60/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_60_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_60/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_60/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_60_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_60/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_60/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_60/addAddV2#while/lstm_cell_60/MatMul:product:0%while/lstm_cell_60/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_60/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_60_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_60/BiasAddBiasAddwhile/lstm_cell_60/add:z:01while/lstm_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_60/splitSplit+while/lstm_cell_60/split/split_dim:output:0#while/lstm_cell_60/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_60/SigmoidSigmoid!while/lstm_cell_60/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_60/Sigmoid_1Sigmoid!while/lstm_cell_60/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_60/mulMul while/lstm_cell_60/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_60/ReluRelu!while/lstm_cell_60/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_60/mul_1Mulwhile/lstm_cell_60/Sigmoid:y:0%while/lstm_cell_60/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_60/add_1AddV2while/lstm_cell_60/mul:z:0while/lstm_cell_60/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_60/Sigmoid_2Sigmoid!while/lstm_cell_60/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_60/Relu_1Reluwhile/lstm_cell_60/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_60/mul_2Mul while/lstm_cell_60/Sigmoid_2:y:0'while/lstm_cell_60/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_60/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_60/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_60/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_60/BiasAdd/ReadVariableOp)^while/lstm_cell_60/MatMul/ReadVariableOp+^while/lstm_cell_60/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_60_biasadd_readvariableop_resource4while_lstm_cell_60_biasadd_readvariableop_resource_0"l
3while_lstm_cell_60_matmul_1_readvariableop_resource5while_lstm_cell_60_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_60_matmul_readvariableop_resource3while_lstm_cell_60_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_60/BiasAdd/ReadVariableOp)while/lstm_cell_60/BiasAdd/ReadVariableOp2T
(while/lstm_cell_60/MatMul/ReadVariableOp(while/lstm_cell_60/MatMul/ReadVariableOp2X
*while/lstm_cell_60/MatMul_1/ReadVariableOp*while/lstm_cell_60/MatMul_1/ReadVariableOp: 
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
¤J

D__inference_lstm_241_layer_call_and_return_conditional_losses_376181

inputs>
+lstm_cell_61_matmul_readvariableop_resource:	dÈ@
-lstm_cell_61_matmul_1_readvariableop_resource:	2È;
,lstm_cell_61_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_61/BiasAdd/ReadVariableOp˘"lstm_cell_61/MatMul/ReadVariableOp˘$lstm_cell_61/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_61/MatMul/ReadVariableOpReadVariableOp+lstm_cell_61_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_61/MatMulMatMulstrided_slice_2:output:0*lstm_cell_61/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_61/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_61_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_61/MatMul_1MatMulzeros:output:0,lstm_cell_61/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_61/addAddV2lstm_cell_61/MatMul:product:0lstm_cell_61/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_61/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_61_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_61/BiasAddBiasAddlstm_cell_61/add:z:0+lstm_cell_61/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_61/splitSplit%lstm_cell_61/split/split_dim:output:0lstm_cell_61/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_61/SigmoidSigmoidlstm_cell_61/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_61/Sigmoid_1Sigmoidlstm_cell_61/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_61/mulMullstm_cell_61/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_61/ReluRelulstm_cell_61/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_61/mul_1Mullstm_cell_61/Sigmoid:y:0lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_61/add_1AddV2lstm_cell_61/mul:z:0lstm_cell_61/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_61/Sigmoid_2Sigmoidlstm_cell_61/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_61/Relu_1Relulstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_61/mul_2Mullstm_cell_61/Sigmoid_2:y:0!lstm_cell_61/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_61_matmul_readvariableop_resource-lstm_cell_61_matmul_1_readvariableop_resource,lstm_cell_61_biasadd_readvariableop_resource*
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
while_body_376097*
condR
while_cond_376096*K
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
NoOpNoOp$^lstm_cell_61/BiasAdd/ReadVariableOp#^lstm_cell_61/MatMul/ReadVariableOp%^lstm_cell_61/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_61/BiasAdd/ReadVariableOp#lstm_cell_61/BiasAdd/ReadVariableOp2H
"lstm_cell_61/MatMul/ReadVariableOp"lstm_cell_61/MatMul/ReadVariableOp2L
$lstm_cell_61/MatMul_1/ReadVariableOp$lstm_cell_61/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
µ
?
while_cond_376246
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_376246___redundant_placeholder04
0while_while_cond_376246___redundant_placeholder14
0while_while_cond_376246___redundant_placeholder24
0while_while_cond_376246___redundant_placeholder3
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
ĉ"
?
while_body_375263
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_61_375287_0:	dÈ.
while_lstm_cell_61_375289_0:	2È*
while_lstm_cell_61_375291_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_61_375287:	dÈ,
while_lstm_cell_61_375289:	2È(
while_lstm_cell_61_375291:	È˘*while/lstm_cell_61/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_61/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_61_375287_0while_lstm_cell_61_375289_0while_lstm_cell_61_375291_0*
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
H__inference_lstm_cell_61_layer_call_and_return_conditional_losses_375249Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_61/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_61/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_61/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_61/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_61_375287while_lstm_cell_61_375287_0"8
while_lstm_cell_61_375289while_lstm_cell_61_375289_0"8
while_lstm_cell_61_375291while_lstm_cell_61_375291_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_61/StatefulPartitionedCall*while/lstm_cell_61/StatefulPartitionedCall: 
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
ÛB
?

lstm_241_while_body_377771.
*lstm_241_while_lstm_241_while_loop_counter4
0lstm_241_while_lstm_241_while_maximum_iterations
lstm_241_while_placeholder 
lstm_241_while_placeholder_1 
lstm_241_while_placeholder_2 
lstm_241_while_placeholder_3-
)lstm_241_while_lstm_241_strided_slice_1_0i
elstm_241_while_tensorarrayv2read_tensorlistgetitem_lstm_241_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_241_while_lstm_cell_61_matmul_readvariableop_resource_0:	dÈQ
>lstm_241_while_lstm_cell_61_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_241_while_lstm_cell_61_biasadd_readvariableop_resource_0:	È
lstm_241_while_identity
lstm_241_while_identity_1
lstm_241_while_identity_2
lstm_241_while_identity_3
lstm_241_while_identity_4
lstm_241_while_identity_5+
'lstm_241_while_lstm_241_strided_slice_1g
clstm_241_while_tensorarrayv2read_tensorlistgetitem_lstm_241_tensorarrayunstack_tensorlistfromtensorM
:lstm_241_while_lstm_cell_61_matmul_readvariableop_resource:	dÈO
<lstm_241_while_lstm_cell_61_matmul_1_readvariableop_resource:	2ÈJ
;lstm_241_while_lstm_cell_61_biasadd_readvariableop_resource:	È˘2lstm_241/while/lstm_cell_61/BiasAdd/ReadVariableOp˘1lstm_241/while/lstm_cell_61/MatMul/ReadVariableOp˘3lstm_241/while/lstm_cell_61/MatMul_1/ReadVariableOp
@lstm_241/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_241/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_241_while_tensorarrayv2read_tensorlistgetitem_lstm_241_tensorarrayunstack_tensorlistfromtensor_0lstm_241_while_placeholderIlstm_241/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_241/while/lstm_cell_61/MatMul/ReadVariableOpReadVariableOp<lstm_241_while_lstm_cell_61_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_241/while/lstm_cell_61/MatMulMatMul9lstm_241/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_241/while/lstm_cell_61/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_241/while/lstm_cell_61/MatMul_1/ReadVariableOpReadVariableOp>lstm_241_while_lstm_cell_61_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_241/while/lstm_cell_61/MatMul_1MatMullstm_241_while_placeholder_2;lstm_241/while/lstm_cell_61/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_241/while/lstm_cell_61/addAddV2,lstm_241/while/lstm_cell_61/MatMul:product:0.lstm_241/while/lstm_cell_61/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_241/while/lstm_cell_61/BiasAdd/ReadVariableOpReadVariableOp=lstm_241_while_lstm_cell_61_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_241/while/lstm_cell_61/BiasAddBiasAdd#lstm_241/while/lstm_cell_61/add:z:0:lstm_241/while/lstm_cell_61/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_241/while/lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_241/while/lstm_cell_61/splitSplit4lstm_241/while/lstm_cell_61/split/split_dim:output:0,lstm_241/while/lstm_cell_61/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_241/while/lstm_cell_61/SigmoidSigmoid*lstm_241/while/lstm_cell_61/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_241/while/lstm_cell_61/Sigmoid_1Sigmoid*lstm_241/while/lstm_cell_61/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_241/while/lstm_cell_61/mulMul)lstm_241/while/lstm_cell_61/Sigmoid_1:y:0lstm_241_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_241/while/lstm_cell_61/ReluRelu*lstm_241/while/lstm_cell_61/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_241/while/lstm_cell_61/mul_1Mul'lstm_241/while/lstm_cell_61/Sigmoid:y:0.lstm_241/while/lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_241/while/lstm_cell_61/add_1AddV2#lstm_241/while/lstm_cell_61/mul:z:0%lstm_241/while/lstm_cell_61/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_241/while/lstm_cell_61/Sigmoid_2Sigmoid*lstm_241/while/lstm_cell_61/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_241/while/lstm_cell_61/Relu_1Relu%lstm_241/while/lstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_241/while/lstm_cell_61/mul_2Mul)lstm_241/while/lstm_cell_61/Sigmoid_2:y:00lstm_241/while/lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_241/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_241_while_placeholder_1lstm_241_while_placeholder%lstm_241/while/lstm_cell_61/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_241/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_241/while/addAddV2lstm_241_while_placeholderlstm_241/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_241/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_241/while/add_1AddV2*lstm_241_while_lstm_241_while_loop_counterlstm_241/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_241/while/IdentityIdentitylstm_241/while/add_1:z:0^lstm_241/while/NoOp*
T0*
_output_shapes
: 
lstm_241/while/Identity_1Identity0lstm_241_while_lstm_241_while_maximum_iterations^lstm_241/while/NoOp*
T0*
_output_shapes
: t
lstm_241/while/Identity_2Identitylstm_241/while/add:z:0^lstm_241/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_241/while/Identity_3IdentityClstm_241/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_241/while/NoOp*
T0*
_output_shapes
: 
lstm_241/while/Identity_4Identity%lstm_241/while/lstm_cell_61/mul_2:z:0^lstm_241/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_241/while/Identity_5Identity%lstm_241/while/lstm_cell_61/add_1:z:0^lstm_241/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_241/while/NoOpNoOp3^lstm_241/while/lstm_cell_61/BiasAdd/ReadVariableOp2^lstm_241/while/lstm_cell_61/MatMul/ReadVariableOp4^lstm_241/while/lstm_cell_61/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_241_while_identity lstm_241/while/Identity:output:0"?
lstm_241_while_identity_1"lstm_241/while/Identity_1:output:0"?
lstm_241_while_identity_2"lstm_241/while/Identity_2:output:0"?
lstm_241_while_identity_3"lstm_241/while/Identity_3:output:0"?
lstm_241_while_identity_4"lstm_241/while/Identity_4:output:0"?
lstm_241_while_identity_5"lstm_241/while/Identity_5:output:0"T
'lstm_241_while_lstm_241_strided_slice_1)lstm_241_while_lstm_241_strided_slice_1_0"|
;lstm_241_while_lstm_cell_61_biasadd_readvariableop_resource=lstm_241_while_lstm_cell_61_biasadd_readvariableop_resource_0"~
<lstm_241_while_lstm_cell_61_matmul_1_readvariableop_resource>lstm_241_while_lstm_cell_61_matmul_1_readvariableop_resource_0"z
:lstm_241_while_lstm_cell_61_matmul_readvariableop_resource<lstm_241_while_lstm_cell_61_matmul_readvariableop_resource_0"Ì
clstm_241_while_tensorarrayv2read_tensorlistgetitem_lstm_241_tensorarrayunstack_tensorlistfromtensorelstm_241_while_tensorarrayv2read_tensorlistgetitem_lstm_241_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_241/while/lstm_cell_61/BiasAdd/ReadVariableOp2lstm_241/while/lstm_cell_61/BiasAdd/ReadVariableOp2f
1lstm_241/while/lstm_cell_61/MatMul/ReadVariableOp1lstm_241/while/lstm_cell_61/MatMul/ReadVariableOp2j
3lstm_241/while/lstm_cell_61/MatMul_1/ReadVariableOp3lstm_241/while/lstm_cell_61/MatMul_1/ReadVariableOp: 
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
while_cond_378718
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_378718___redundant_placeholder04
0while_while_cond_378718___redundant_placeholder14
0while_while_cond_378718___redundant_placeholder24
0while_while_cond_378718___redundant_placeholder3
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
?
ó
I__inference_sequential_80_layer_call_and_return_conditional_losses_377057
lstm_240_input"
lstm_240_377030:	"
lstm_240_377032:	d
lstm_240_377034:	"
lstm_241_377037:	dÈ"
lstm_241_377039:	2È
lstm_241_377041:	È!
lstm_242_377044:2(!
lstm_242_377046:
(
lstm_242_377048:(!
dense_80_377051:

dense_80_377053:
identity˘ dense_80/StatefulPartitionedCall˘ lstm_240/StatefulPartitionedCall˘ lstm_241/StatefulPartitionedCall˘ lstm_242/StatefulPartitionedCall
 lstm_240/StatefulPartitionedCallStatefulPartitionedCalllstm_240_inputlstm_240_377030lstm_240_377032lstm_240_377034*
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
D__inference_lstm_240_layer_call_and_return_conditional_losses_376877Ş
 lstm_241/StatefulPartitionedCallStatefulPartitionedCall)lstm_240/StatefulPartitionedCall:output:0lstm_241_377037lstm_241_377039lstm_241_377041*
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
D__inference_lstm_241_layer_call_and_return_conditional_losses_376712Ĥ
 lstm_242/StatefulPartitionedCallStatefulPartitionedCall)lstm_241/StatefulPartitionedCall:output:0lstm_242_377044lstm_242_377046lstm_242_377048*
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
D__inference_lstm_242_layer_call_and_return_conditional_losses_376547
 dense_80/StatefulPartitionedCallStatefulPartitionedCall)lstm_242/StatefulPartitionedCall:output:0dense_80_377051dense_80_377053*
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
GPU 2J 8 *M
fHRF
D__inference_dense_80_layer_call_and_return_conditional_losses_376349x
IdentityIdentity)dense_80/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_80/StatefulPartitionedCall!^lstm_240/StatefulPartitionedCall!^lstm_241/StatefulPartitionedCall!^lstm_242/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_80/StatefulPartitionedCall dense_80/StatefulPartitionedCall2D
 lstm_240/StatefulPartitionedCall lstm_240/StatefulPartitionedCall2D
 lstm_241/StatefulPartitionedCall lstm_241/StatefulPartitionedCall2D
 lstm_242/StatefulPartitionedCall lstm_242/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_240_input
8

D__inference_lstm_241_layer_call_and_return_conditional_losses_375332

inputs&
lstm_cell_61_375250:	dÈ&
lstm_cell_61_375252:	2È"
lstm_cell_61_375254:	È
identity˘$lstm_cell_61/StatefulPartitionedCall˘while;
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
$lstm_cell_61/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_61_375250lstm_cell_61_375252lstm_cell_61_375254*
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
H__inference_lstm_cell_61_layer_call_and_return_conditional_losses_375249n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_61_375250lstm_cell_61_375252lstm_cell_61_375254*
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
while_body_375263*
condR
while_cond_375262*K
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
NoOpNoOp%^lstm_cell_61/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_61/StatefulPartitionedCall$lstm_cell_61/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
8

D__inference_lstm_240_layer_call_and_return_conditional_losses_375173

inputs&
lstm_cell_60_375091:	&
lstm_cell_60_375093:	d"
lstm_cell_60_375095:	
identity˘$lstm_cell_60/StatefulPartitionedCall˘while;
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
$lstm_cell_60/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_60_375091lstm_cell_60_375093lstm_cell_60_375095*
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
H__inference_lstm_cell_60_layer_call_and_return_conditional_losses_375045n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_60_375091lstm_cell_60_375093lstm_cell_60_375095*
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
while_body_375104*
condR
while_cond_375103*K
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
NoOpNoOp%^lstm_cell_60/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_60/StatefulPartitionedCall$lstm_cell_60/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_379620
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_379620___redundant_placeholder04
0while_while_cond_379620___redundant_placeholder14
0while_while_cond_379620___redundant_placeholder24
0while_while_cond_379620___redundant_placeholder3
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
Ğ
¸
)__inference_lstm_241_layer_call_fn_378638
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
D__inference_lstm_241_layer_call_and_return_conditional_losses_375523|
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
ĉ"
?
while_body_375104
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_60_375128_0:	.
while_lstm_cell_60_375130_0:	d*
while_lstm_cell_60_375132_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_60_375128:	,
while_lstm_cell_60_375130:	d(
while_lstm_cell_60_375132:	˘*while/lstm_cell_60/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_60/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_60_375128_0while_lstm_cell_60_375130_0while_lstm_cell_60_375132_0*
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
H__inference_lstm_cell_60_layer_call_and_return_conditional_losses_375045Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_60/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_60/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_60/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_60/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_60_375128while_lstm_cell_60_375128_0"8
while_lstm_cell_60_375130while_lstm_cell_60_375130_0"8
while_lstm_cell_60_375132while_lstm_cell_60_375132_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_60/StatefulPartitionedCall*while/lstm_cell_60/StatefulPartitionedCall: 
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
ò

˘
.__inference_sequential_80_layer_call_fn_376997
lstm_240_input
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
identity˘StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCalllstm_240_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8 *R
fMRK
I__inference_sequential_80_layer_call_and_return_conditional_losses_376945o
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
_user_specified_namelstm_240_input
˙7
Ê
while_body_379478
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_62_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_62_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_62_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_62_matmul_readvariableop_resource:2(E
3while_lstm_cell_62_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_62_biasadd_readvariableop_resource:(˘)while/lstm_cell_62/BiasAdd/ReadVariableOp˘(while/lstm_cell_62/MatMul/ReadVariableOp˘*while/lstm_cell_62/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_62/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_62_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_62/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_62/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_62_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_62/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_62/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_62/addAddV2#while/lstm_cell_62/MatMul:product:0%while/lstm_cell_62/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_62/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_62_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_62/BiasAddBiasAddwhile/lstm_cell_62/add:z:01while/lstm_cell_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_62/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_62/splitSplit+while/lstm_cell_62/split/split_dim:output:0#while/lstm_cell_62/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_62/SigmoidSigmoid!while/lstm_cell_62/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_62/Sigmoid_1Sigmoid!while/lstm_cell_62/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_62/mulMul while/lstm_cell_62/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_62/ReluRelu!while/lstm_cell_62/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_62/mul_1Mulwhile/lstm_cell_62/Sigmoid:y:0%while/lstm_cell_62/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_62/add_1AddV2while/lstm_cell_62/mul:z:0while/lstm_cell_62/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_62/Sigmoid_2Sigmoid!while/lstm_cell_62/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_62/Relu_1Reluwhile/lstm_cell_62/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_62/mul_2Mul while/lstm_cell_62/Sigmoid_2:y:0'while/lstm_cell_62/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_62/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_62/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_62/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_62/BiasAdd/ReadVariableOp)^while/lstm_cell_62/MatMul/ReadVariableOp+^while/lstm_cell_62/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_62_biasadd_readvariableop_resource4while_lstm_cell_62_biasadd_readvariableop_resource_0"l
3while_lstm_cell_62_matmul_1_readvariableop_resource5while_lstm_cell_62_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_62_matmul_readvariableop_resource3while_lstm_cell_62_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_62/BiasAdd/ReadVariableOp)while/lstm_cell_62/BiasAdd/ReadVariableOp2T
(while/lstm_cell_62/MatMul/ReadVariableOp(while/lstm_cell_62/MatMul/ReadVariableOp2X
*while/lstm_cell_62/MatMul_1/ReadVariableOp*while/lstm_cell_62/MatMul_1/ReadVariableOp: 
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
ç¤

"__inference__traced_restore_380434
file_prefix2
 assignvariableop_dense_80_kernel:
.
 assignvariableop_1_dense_80_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_240_lstm_cell_240_kernel:	M
:assignvariableop_8_lstm_240_lstm_cell_240_recurrent_kernel:	d=
.assignvariableop_9_lstm_240_lstm_cell_240_bias:	D
1assignvariableop_10_lstm_241_lstm_cell_241_kernel:	dÈN
;assignvariableop_11_lstm_241_lstm_cell_241_recurrent_kernel:	2È>
/assignvariableop_12_lstm_241_lstm_cell_241_bias:	ÈC
1assignvariableop_13_lstm_242_lstm_cell_242_kernel:2(M
;assignvariableop_14_lstm_242_lstm_cell_242_recurrent_kernel:
(=
/assignvariableop_15_lstm_242_lstm_cell_242_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_80_kernel_m:
6
(assignvariableop_19_adam_dense_80_bias_m:K
8assignvariableop_20_adam_lstm_240_lstm_cell_240_kernel_m:	U
Bassignvariableop_21_adam_lstm_240_lstm_cell_240_recurrent_kernel_m:	dE
6assignvariableop_22_adam_lstm_240_lstm_cell_240_bias_m:	K
8assignvariableop_23_adam_lstm_241_lstm_cell_241_kernel_m:	dÈU
Bassignvariableop_24_adam_lstm_241_lstm_cell_241_recurrent_kernel_m:	2ÈE
6assignvariableop_25_adam_lstm_241_lstm_cell_241_bias_m:	ÈJ
8assignvariableop_26_adam_lstm_242_lstm_cell_242_kernel_m:2(T
Bassignvariableop_27_adam_lstm_242_lstm_cell_242_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_242_lstm_cell_242_bias_m:(<
*assignvariableop_29_adam_dense_80_kernel_v:
6
(assignvariableop_30_adam_dense_80_bias_v:K
8assignvariableop_31_adam_lstm_240_lstm_cell_240_kernel_v:	U
Bassignvariableop_32_adam_lstm_240_lstm_cell_240_recurrent_kernel_v:	dE
6assignvariableop_33_adam_lstm_240_lstm_cell_240_bias_v:	K
8assignvariableop_34_adam_lstm_241_lstm_cell_241_kernel_v:	dÈU
Bassignvariableop_35_adam_lstm_241_lstm_cell_241_recurrent_kernel_v:	2ÈE
6assignvariableop_36_adam_lstm_241_lstm_cell_241_bias_v:	ÈJ
8assignvariableop_37_adam_lstm_242_lstm_cell_242_kernel_v:2(T
Bassignvariableop_38_adam_lstm_242_lstm_cell_242_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_242_lstm_cell_242_bias_v:(
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
:
AssignVariableOpAssignVariableOp assignvariableop_dense_80_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_80_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_240_lstm_cell_240_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_240_lstm_cell_240_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_240_lstm_cell_240_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_241_lstm_cell_241_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_241_lstm_cell_241_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_241_lstm_cell_241_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_242_lstm_cell_242_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_242_lstm_cell_242_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_242_lstm_cell_242_biasIdentity_15:output:0"/device:CPU:0*
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
:
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_80_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_80_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_240_lstm_cell_240_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_240_lstm_cell_240_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_240_lstm_cell_240_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_241_lstm_cell_241_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_241_lstm_cell_241_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_241_lstm_cell_241_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_242_lstm_cell_242_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_242_lstm_cell_242_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_242_lstm_cell_242_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_80_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_80_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_240_lstm_cell_240_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_240_lstm_cell_240_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_240_lstm_cell_240_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_241_lstm_cell_241_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_241_lstm_cell_241_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_241_lstm_cell_241_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_242_lstm_cell_242_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_242_lstm_cell_242_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_242_lstm_cell_242_bias_vIdentity_39:output:0"/device:CPU:0*
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
8
?
while_body_375947
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_60_matmul_readvariableop_resource_0:	H
5while_lstm_cell_60_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_60_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_60_matmul_readvariableop_resource:	F
3while_lstm_cell_60_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_60_biasadd_readvariableop_resource:	˘)while/lstm_cell_60/BiasAdd/ReadVariableOp˘(while/lstm_cell_60/MatMul/ReadVariableOp˘*while/lstm_cell_60/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_60/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_60_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_60/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_60/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_60_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_60/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_60/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_60/addAddV2#while/lstm_cell_60/MatMul:product:0%while/lstm_cell_60/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_60/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_60_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_60/BiasAddBiasAddwhile/lstm_cell_60/add:z:01while/lstm_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_60/splitSplit+while/lstm_cell_60/split/split_dim:output:0#while/lstm_cell_60/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_60/SigmoidSigmoid!while/lstm_cell_60/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_60/Sigmoid_1Sigmoid!while/lstm_cell_60/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_60/mulMul while/lstm_cell_60/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_60/ReluRelu!while/lstm_cell_60/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_60/mul_1Mulwhile/lstm_cell_60/Sigmoid:y:0%while/lstm_cell_60/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_60/add_1AddV2while/lstm_cell_60/mul:z:0while/lstm_cell_60/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_60/Sigmoid_2Sigmoid!while/lstm_cell_60/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_60/Relu_1Reluwhile/lstm_cell_60/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_60/mul_2Mul while/lstm_cell_60/Sigmoid_2:y:0'while/lstm_cell_60/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_60/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_60/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_60/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_60/BiasAdd/ReadVariableOp)^while/lstm_cell_60/MatMul/ReadVariableOp+^while/lstm_cell_60/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_60_biasadd_readvariableop_resource4while_lstm_cell_60_biasadd_readvariableop_resource_0"l
3while_lstm_cell_60_matmul_1_readvariableop_resource5while_lstm_cell_60_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_60_matmul_readvariableop_resource3while_lstm_cell_60_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_60/BiasAdd/ReadVariableOp)while/lstm_cell_60/BiasAdd/ReadVariableOp2T
(while/lstm_cell_60/MatMul/ReadVariableOp(while/lstm_cell_60/MatMul/ReadVariableOp2X
*while/lstm_cell_60/MatMul_1/ReadVariableOp*while/lstm_cell_60/MatMul_1/ReadVariableOp: 
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
Ğ
¸
)__inference_lstm_241_layer_call_fn_378627
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
D__inference_lstm_241_layer_call_and_return_conditional_losses_375332|
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
J

D__inference_lstm_242_layer_call_and_return_conditional_losses_376331

inputs=
+lstm_cell_62_matmul_readvariableop_resource:2(?
-lstm_cell_62_matmul_1_readvariableop_resource:
(:
,lstm_cell_62_biasadd_readvariableop_resource:(
identity˘#lstm_cell_62/BiasAdd/ReadVariableOp˘"lstm_cell_62/MatMul/ReadVariableOp˘$lstm_cell_62/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_62/MatMul/ReadVariableOpReadVariableOp+lstm_cell_62_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_62/MatMulMatMulstrided_slice_2:output:0*lstm_cell_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_62/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_62_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_62/MatMul_1MatMulzeros:output:0,lstm_cell_62/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_62/addAddV2lstm_cell_62/MatMul:product:0lstm_cell_62/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_62/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_62_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_62/BiasAddBiasAddlstm_cell_62/add:z:0+lstm_cell_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_62/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_62/splitSplit%lstm_cell_62/split/split_dim:output:0lstm_cell_62/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_62/SigmoidSigmoidlstm_cell_62/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_62/Sigmoid_1Sigmoidlstm_cell_62/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_62/mulMullstm_cell_62/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_62/ReluRelulstm_cell_62/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_62/mul_1Mullstm_cell_62/Sigmoid:y:0lstm_cell_62/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_62/add_1AddV2lstm_cell_62/mul:z:0lstm_cell_62/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_62/Sigmoid_2Sigmoidlstm_cell_62/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_62/Relu_1Relulstm_cell_62/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_62/mul_2Mullstm_cell_62/Sigmoid_2:y:0!lstm_cell_62/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_62_matmul_readvariableop_resource-lstm_cell_62_matmul_1_readvariableop_resource,lstm_cell_62_biasadd_readvariableop_resource*
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
while_body_376247*
condR
while_cond_376246*K
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
NoOpNoOp$^lstm_cell_62/BiasAdd/ReadVariableOp#^lstm_cell_62/MatMul/ReadVariableOp%^lstm_cell_62/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_62/BiasAdd/ReadVariableOp#lstm_cell_62/BiasAdd/ReadVariableOp2H
"lstm_cell_62/MatMul/ReadVariableOp"lstm_cell_62/MatMul/ReadVariableOp2L
$lstm_cell_62/MatMul_1/ReadVariableOp$lstm_cell_62/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
µ
?
while_cond_375612
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_375612___redundant_placeholder04
0while_while_cond_375612___redundant_placeholder14
0while_while_cond_375612___redundant_placeholder24
0while_while_cond_375612___redundant_placeholder3
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
H__inference_lstm_cell_60_layer_call_and_return_conditional_losses_374899

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
à"
Ŭ
while_body_375613
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_62_375637_0:2(-
while_lstm_cell_62_375639_0:
()
while_lstm_cell_62_375641_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_62_375637:2(+
while_lstm_cell_62_375639:
('
while_lstm_cell_62_375641:(˘*while/lstm_cell_62/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_62/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_62_375637_0while_lstm_cell_62_375639_0while_lstm_cell_62_375641_0*
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
H__inference_lstm_cell_62_layer_call_and_return_conditional_losses_375599Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_62/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_62/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_62/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_62/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_62_375637while_lstm_cell_62_375637_0"8
while_lstm_cell_62_375639while_lstm_cell_62_375639_0"8
while_lstm_cell_62_375641while_lstm_cell_62_375641_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_62/StatefulPartitionedCall*while/lstm_cell_62/StatefulPartitionedCall: 
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
while_cond_376096
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_376096___redundant_placeholder04
0while_while_cond_376096___redundant_placeholder14
0while_while_cond_376096___redundant_placeholder24
0while_while_cond_376096___redundant_placeholder3
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
áW

__inference__traced_save_380304
file_prefix.
*savev2_dense_80_kernel_read_readvariableop,
(savev2_dense_80_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_240_lstm_cell_240_kernel_read_readvariableopF
Bsavev2_lstm_240_lstm_cell_240_recurrent_kernel_read_readvariableop:
6savev2_lstm_240_lstm_cell_240_bias_read_readvariableop<
8savev2_lstm_241_lstm_cell_241_kernel_read_readvariableopF
Bsavev2_lstm_241_lstm_cell_241_recurrent_kernel_read_readvariableop:
6savev2_lstm_241_lstm_cell_241_bias_read_readvariableop<
8savev2_lstm_242_lstm_cell_242_kernel_read_readvariableopF
Bsavev2_lstm_242_lstm_cell_242_recurrent_kernel_read_readvariableop:
6savev2_lstm_242_lstm_cell_242_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_80_kernel_m_read_readvariableop3
/savev2_adam_dense_80_bias_m_read_readvariableopC
?savev2_adam_lstm_240_lstm_cell_240_kernel_m_read_readvariableopM
Isavev2_adam_lstm_240_lstm_cell_240_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_240_lstm_cell_240_bias_m_read_readvariableopC
?savev2_adam_lstm_241_lstm_cell_241_kernel_m_read_readvariableopM
Isavev2_adam_lstm_241_lstm_cell_241_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_241_lstm_cell_241_bias_m_read_readvariableopC
?savev2_adam_lstm_242_lstm_cell_242_kernel_m_read_readvariableopM
Isavev2_adam_lstm_242_lstm_cell_242_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_242_lstm_cell_242_bias_m_read_readvariableop5
1savev2_adam_dense_80_kernel_v_read_readvariableop3
/savev2_adam_dense_80_bias_v_read_readvariableopC
?savev2_adam_lstm_240_lstm_cell_240_kernel_v_read_readvariableopM
Isavev2_adam_lstm_240_lstm_cell_240_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_240_lstm_cell_240_bias_v_read_readvariableopC
?savev2_adam_lstm_241_lstm_cell_241_kernel_v_read_readvariableopM
Isavev2_adam_lstm_241_lstm_cell_241_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_241_lstm_cell_241_bias_v_read_readvariableopC
?savev2_adam_lstm_242_lstm_cell_242_kernel_v_read_readvariableopM
Isavev2_adam_lstm_242_lstm_cell_242_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_242_lstm_cell_242_bias_v_read_readvariableop
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
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ê
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_80_kernel_read_readvariableop(savev2_dense_80_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_240_lstm_cell_240_kernel_read_readvariableopBsavev2_lstm_240_lstm_cell_240_recurrent_kernel_read_readvariableop6savev2_lstm_240_lstm_cell_240_bias_read_readvariableop8savev2_lstm_241_lstm_cell_241_kernel_read_readvariableopBsavev2_lstm_241_lstm_cell_241_recurrent_kernel_read_readvariableop6savev2_lstm_241_lstm_cell_241_bias_read_readvariableop8savev2_lstm_242_lstm_cell_242_kernel_read_readvariableopBsavev2_lstm_242_lstm_cell_242_recurrent_kernel_read_readvariableop6savev2_lstm_242_lstm_cell_242_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_80_kernel_m_read_readvariableop/savev2_adam_dense_80_bias_m_read_readvariableop?savev2_adam_lstm_240_lstm_cell_240_kernel_m_read_readvariableopIsavev2_adam_lstm_240_lstm_cell_240_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_240_lstm_cell_240_bias_m_read_readvariableop?savev2_adam_lstm_241_lstm_cell_241_kernel_m_read_readvariableopIsavev2_adam_lstm_241_lstm_cell_241_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_241_lstm_cell_241_bias_m_read_readvariableop?savev2_adam_lstm_242_lstm_cell_242_kernel_m_read_readvariableopIsavev2_adam_lstm_242_lstm_cell_242_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_242_lstm_cell_242_bias_m_read_readvariableop1savev2_adam_dense_80_kernel_v_read_readvariableop/savev2_adam_dense_80_bias_v_read_readvariableop?savev2_adam_lstm_240_lstm_cell_240_kernel_v_read_readvariableopIsavev2_adam_lstm_240_lstm_cell_240_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_240_lstm_cell_240_bias_v_read_readvariableop?savev2_adam_lstm_241_lstm_cell_241_kernel_v_read_readvariableopIsavev2_adam_lstm_241_lstm_cell_241_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_241_lstm_cell_241_bias_v_read_readvariableop?savev2_adam_lstm_242_lstm_cell_242_kernel_v_read_readvariableopIsavev2_adam_lstm_242_lstm_cell_242_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_242_lstm_cell_242_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
²

÷
lstm_240_while_cond_377631.
*lstm_240_while_lstm_240_while_loop_counter4
0lstm_240_while_lstm_240_while_maximum_iterations
lstm_240_while_placeholder 
lstm_240_while_placeholder_1 
lstm_240_while_placeholder_2 
lstm_240_while_placeholder_30
,lstm_240_while_less_lstm_240_strided_slice_1F
Blstm_240_while_lstm_240_while_cond_377631___redundant_placeholder0F
Blstm_240_while_lstm_240_while_cond_377631___redundant_placeholder1F
Blstm_240_while_lstm_240_while_cond_377631___redundant_placeholder2F
Blstm_240_while_lstm_240_while_cond_377631___redundant_placeholder3
lstm_240_while_identity

lstm_240/while/LessLesslstm_240_while_placeholder,lstm_240_while_less_lstm_240_strided_slice_1*
T0*
_output_shapes
: ]
lstm_240/while/IdentityIdentitylstm_240/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_240_while_identity lstm_240/while/Identity:output:0*(
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
¤J

D__inference_lstm_240_layer_call_and_return_conditional_losses_376031

inputs>
+lstm_cell_60_matmul_readvariableop_resource:	@
-lstm_cell_60_matmul_1_readvariableop_resource:	d;
,lstm_cell_60_biasadd_readvariableop_resource:	
identity˘#lstm_cell_60/BiasAdd/ReadVariableOp˘"lstm_cell_60/MatMul/ReadVariableOp˘$lstm_cell_60/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_60/MatMul/ReadVariableOpReadVariableOp+lstm_cell_60_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_60/MatMulMatMulstrided_slice_2:output:0*lstm_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_60/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_60_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_60/MatMul_1MatMulzeros:output:0,lstm_cell_60/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_60/addAddV2lstm_cell_60/MatMul:product:0lstm_cell_60/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_60/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_60_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_60/BiasAddBiasAddlstm_cell_60/add:z:0+lstm_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_60/splitSplit%lstm_cell_60/split/split_dim:output:0lstm_cell_60/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_60/SigmoidSigmoidlstm_cell_60/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_60/Sigmoid_1Sigmoidlstm_cell_60/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_60/mulMullstm_cell_60/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_60/ReluRelulstm_cell_60/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_60/mul_1Mullstm_cell_60/Sigmoid:y:0lstm_cell_60/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_60/add_1AddV2lstm_cell_60/mul:z:0lstm_cell_60/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_60/Sigmoid_2Sigmoidlstm_cell_60/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_60/Relu_1Relulstm_cell_60/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_60/mul_2Mullstm_cell_60/Sigmoid_2:y:0!lstm_cell_60/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_60_matmul_readvariableop_resource-lstm_cell_60_matmul_1_readvariableop_resource,lstm_cell_60_biasadd_readvariableop_resource*
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
while_body_375947*
condR
while_cond_375946*K
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
NoOpNoOp$^lstm_cell_60/BiasAdd/ReadVariableOp#^lstm_cell_60/MatMul/ReadVariableOp%^lstm_cell_60/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_60/BiasAdd/ReadVariableOp#lstm_cell_60/BiasAdd/ReadVariableOp2H
"lstm_cell_60/MatMul/ReadVariableOp"lstm_cell_60/MatMul/ReadVariableOp2L
$lstm_cell_60/MatMul_1/ReadVariableOp$lstm_cell_60/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8
?
while_body_376628
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_61_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_61_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_61_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_61_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_61_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_61_biasadd_readvariableop_resource:	È˘)while/lstm_cell_61/BiasAdd/ReadVariableOp˘(while/lstm_cell_61/MatMul/ReadVariableOp˘*while/lstm_cell_61/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_61/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_61_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_61/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_61/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_61/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_61_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_61/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_61/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_61/addAddV2#while/lstm_cell_61/MatMul:product:0%while/lstm_cell_61/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_61/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_61_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_61/BiasAddBiasAddwhile/lstm_cell_61/add:z:01while/lstm_cell_61/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_61/splitSplit+while/lstm_cell_61/split/split_dim:output:0#while/lstm_cell_61/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_61/SigmoidSigmoid!while/lstm_cell_61/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_61/Sigmoid_1Sigmoid!while/lstm_cell_61/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_61/mulMul while/lstm_cell_61/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_61/ReluRelu!while/lstm_cell_61/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_61/mul_1Mulwhile/lstm_cell_61/Sigmoid:y:0%while/lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_61/add_1AddV2while/lstm_cell_61/mul:z:0while/lstm_cell_61/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_61/Sigmoid_2Sigmoid!while/lstm_cell_61/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_61/Relu_1Reluwhile/lstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_61/mul_2Mul while/lstm_cell_61/Sigmoid_2:y:0'while/lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_61/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_61/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_61/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_61/BiasAdd/ReadVariableOp)^while/lstm_cell_61/MatMul/ReadVariableOp+^while/lstm_cell_61/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_61_biasadd_readvariableop_resource4while_lstm_cell_61_biasadd_readvariableop_resource_0"l
3while_lstm_cell_61_matmul_1_readvariableop_resource5while_lstm_cell_61_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_61_matmul_readvariableop_resource3while_lstm_cell_61_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_61/BiasAdd/ReadVariableOp)while/lstm_cell_61/BiasAdd/ReadVariableOp2T
(while/lstm_cell_61/MatMul/ReadVariableOp(while/lstm_cell_61/MatMul/ReadVariableOp2X
*while/lstm_cell_61/MatMul_1/ReadVariableOp*while/lstm_cell_61/MatMul_1/ReadVariableOp: 
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
while_cond_378388
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_378388___redundant_placeholder04
0while_while_cond_378388___redundant_placeholder14
0while_while_cond_378388___redundant_placeholder24
0while_while_cond_378388___redundant_placeholder3
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
lstm_242_while_cond_377909.
*lstm_242_while_lstm_242_while_loop_counter4
0lstm_242_while_lstm_242_while_maximum_iterations
lstm_242_while_placeholder 
lstm_242_while_placeholder_1 
lstm_242_while_placeholder_2 
lstm_242_while_placeholder_30
,lstm_242_while_less_lstm_242_strided_slice_1F
Blstm_242_while_lstm_242_while_cond_377909___redundant_placeholder0F
Blstm_242_while_lstm_242_while_cond_377909___redundant_placeholder1F
Blstm_242_while_lstm_242_while_cond_377909___redundant_placeholder2F
Blstm_242_while_lstm_242_while_cond_377909___redundant_placeholder3
lstm_242_while_identity

lstm_242/while/LessLesslstm_242_while_placeholder,lstm_242_while_less_lstm_242_strided_slice_1*
T0*
_output_shapes
: ]
lstm_242/while/IdentityIdentitylstm_242/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_242_while_identity lstm_242/while/Identity:output:0*(
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
while_body_378532
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_60_matmul_readvariableop_resource_0:	H
5while_lstm_cell_60_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_60_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_60_matmul_readvariableop_resource:	F
3while_lstm_cell_60_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_60_biasadd_readvariableop_resource:	˘)while/lstm_cell_60/BiasAdd/ReadVariableOp˘(while/lstm_cell_60/MatMul/ReadVariableOp˘*while/lstm_cell_60/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_60/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_60_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_60/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_60/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_60_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_60/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_60/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_60/addAddV2#while/lstm_cell_60/MatMul:product:0%while/lstm_cell_60/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_60/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_60_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_60/BiasAddBiasAddwhile/lstm_cell_60/add:z:01while/lstm_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_60/splitSplit+while/lstm_cell_60/split/split_dim:output:0#while/lstm_cell_60/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_60/SigmoidSigmoid!while/lstm_cell_60/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_60/Sigmoid_1Sigmoid!while/lstm_cell_60/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_60/mulMul while/lstm_cell_60/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_60/ReluRelu!while/lstm_cell_60/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_60/mul_1Mulwhile/lstm_cell_60/Sigmoid:y:0%while/lstm_cell_60/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_60/add_1AddV2while/lstm_cell_60/mul:z:0while/lstm_cell_60/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_60/Sigmoid_2Sigmoid!while/lstm_cell_60/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_60/Relu_1Reluwhile/lstm_cell_60/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_60/mul_2Mul while/lstm_cell_60/Sigmoid_2:y:0'while/lstm_cell_60/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_60/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_60/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_60/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_60/BiasAdd/ReadVariableOp)^while/lstm_cell_60/MatMul/ReadVariableOp+^while/lstm_cell_60/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_60_biasadd_readvariableop_resource4while_lstm_cell_60_biasadd_readvariableop_resource_0"l
3while_lstm_cell_60_matmul_1_readvariableop_resource5while_lstm_cell_60_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_60_matmul_readvariableop_resource3while_lstm_cell_60_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_60/BiasAdd/ReadVariableOp)while/lstm_cell_60/BiasAdd/ReadVariableOp2T
(while/lstm_cell_60/MatMul/ReadVariableOp(while/lstm_cell_60/MatMul/ReadVariableOp2X
*while/lstm_cell_60/MatMul_1/ReadVariableOp*while/lstm_cell_60/MatMul_1/ReadVariableOp: 
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
ÎB
ê

lstm_242_while_body_377483.
*lstm_242_while_lstm_242_while_loop_counter4
0lstm_242_while_lstm_242_while_maximum_iterations
lstm_242_while_placeholder 
lstm_242_while_placeholder_1 
lstm_242_while_placeholder_2 
lstm_242_while_placeholder_3-
)lstm_242_while_lstm_242_strided_slice_1_0i
elstm_242_while_tensorarrayv2read_tensorlistgetitem_lstm_242_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_242_while_lstm_cell_62_matmul_readvariableop_resource_0:2(P
>lstm_242_while_lstm_cell_62_matmul_1_readvariableop_resource_0:
(K
=lstm_242_while_lstm_cell_62_biasadd_readvariableop_resource_0:(
lstm_242_while_identity
lstm_242_while_identity_1
lstm_242_while_identity_2
lstm_242_while_identity_3
lstm_242_while_identity_4
lstm_242_while_identity_5+
'lstm_242_while_lstm_242_strided_slice_1g
clstm_242_while_tensorarrayv2read_tensorlistgetitem_lstm_242_tensorarrayunstack_tensorlistfromtensorL
:lstm_242_while_lstm_cell_62_matmul_readvariableop_resource:2(N
<lstm_242_while_lstm_cell_62_matmul_1_readvariableop_resource:
(I
;lstm_242_while_lstm_cell_62_biasadd_readvariableop_resource:(˘2lstm_242/while/lstm_cell_62/BiasAdd/ReadVariableOp˘1lstm_242/while/lstm_cell_62/MatMul/ReadVariableOp˘3lstm_242/while/lstm_cell_62/MatMul_1/ReadVariableOp
@lstm_242/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_242/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_242_while_tensorarrayv2read_tensorlistgetitem_lstm_242_tensorarrayunstack_tensorlistfromtensor_0lstm_242_while_placeholderIlstm_242/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_242/while/lstm_cell_62/MatMul/ReadVariableOpReadVariableOp<lstm_242_while_lstm_cell_62_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_242/while/lstm_cell_62/MatMulMatMul9lstm_242/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_242/while/lstm_cell_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_242/while/lstm_cell_62/MatMul_1/ReadVariableOpReadVariableOp>lstm_242_while_lstm_cell_62_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_242/while/lstm_cell_62/MatMul_1MatMullstm_242_while_placeholder_2;lstm_242/while/lstm_cell_62/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_242/while/lstm_cell_62/addAddV2,lstm_242/while/lstm_cell_62/MatMul:product:0.lstm_242/while/lstm_cell_62/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_242/while/lstm_cell_62/BiasAdd/ReadVariableOpReadVariableOp=lstm_242_while_lstm_cell_62_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_242/while/lstm_cell_62/BiasAddBiasAdd#lstm_242/while/lstm_cell_62/add:z:0:lstm_242/while/lstm_cell_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_242/while/lstm_cell_62/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_242/while/lstm_cell_62/splitSplit4lstm_242/while/lstm_cell_62/split/split_dim:output:0,lstm_242/while/lstm_cell_62/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_242/while/lstm_cell_62/SigmoidSigmoid*lstm_242/while/lstm_cell_62/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_242/while/lstm_cell_62/Sigmoid_1Sigmoid*lstm_242/while/lstm_cell_62/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_242/while/lstm_cell_62/mulMul)lstm_242/while/lstm_cell_62/Sigmoid_1:y:0lstm_242_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_242/while/lstm_cell_62/ReluRelu*lstm_242/while/lstm_cell_62/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_242/while/lstm_cell_62/mul_1Mul'lstm_242/while/lstm_cell_62/Sigmoid:y:0.lstm_242/while/lstm_cell_62/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_242/while/lstm_cell_62/add_1AddV2#lstm_242/while/lstm_cell_62/mul:z:0%lstm_242/while/lstm_cell_62/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_242/while/lstm_cell_62/Sigmoid_2Sigmoid*lstm_242/while/lstm_cell_62/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_242/while/lstm_cell_62/Relu_1Relu%lstm_242/while/lstm_cell_62/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_242/while/lstm_cell_62/mul_2Mul)lstm_242/while/lstm_cell_62/Sigmoid_2:y:00lstm_242/while/lstm_cell_62/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_242/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_242_while_placeholder_1lstm_242_while_placeholder%lstm_242/while/lstm_cell_62/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_242/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_242/while/addAddV2lstm_242_while_placeholderlstm_242/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_242/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_242/while/add_1AddV2*lstm_242_while_lstm_242_while_loop_counterlstm_242/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_242/while/IdentityIdentitylstm_242/while/add_1:z:0^lstm_242/while/NoOp*
T0*
_output_shapes
: 
lstm_242/while/Identity_1Identity0lstm_242_while_lstm_242_while_maximum_iterations^lstm_242/while/NoOp*
T0*
_output_shapes
: t
lstm_242/while/Identity_2Identitylstm_242/while/add:z:0^lstm_242/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_242/while/Identity_3IdentityClstm_242/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_242/while/NoOp*
T0*
_output_shapes
: 
lstm_242/while/Identity_4Identity%lstm_242/while/lstm_cell_62/mul_2:z:0^lstm_242/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_242/while/Identity_5Identity%lstm_242/while/lstm_cell_62/add_1:z:0^lstm_242/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_242/while/NoOpNoOp3^lstm_242/while/lstm_cell_62/BiasAdd/ReadVariableOp2^lstm_242/while/lstm_cell_62/MatMul/ReadVariableOp4^lstm_242/while/lstm_cell_62/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_242_while_identity lstm_242/while/Identity:output:0"?
lstm_242_while_identity_1"lstm_242/while/Identity_1:output:0"?
lstm_242_while_identity_2"lstm_242/while/Identity_2:output:0"?
lstm_242_while_identity_3"lstm_242/while/Identity_3:output:0"?
lstm_242_while_identity_4"lstm_242/while/Identity_4:output:0"?
lstm_242_while_identity_5"lstm_242/while/Identity_5:output:0"T
'lstm_242_while_lstm_242_strided_slice_1)lstm_242_while_lstm_242_strided_slice_1_0"|
;lstm_242_while_lstm_cell_62_biasadd_readvariableop_resource=lstm_242_while_lstm_cell_62_biasadd_readvariableop_resource_0"~
<lstm_242_while_lstm_cell_62_matmul_1_readvariableop_resource>lstm_242_while_lstm_cell_62_matmul_1_readvariableop_resource_0"z
:lstm_242_while_lstm_cell_62_matmul_readvariableop_resource<lstm_242_while_lstm_cell_62_matmul_readvariableop_resource_0"Ì
clstm_242_while_tensorarrayv2read_tensorlistgetitem_lstm_242_tensorarrayunstack_tensorlistfromtensorelstm_242_while_tensorarrayv2read_tensorlistgetitem_lstm_242_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_242/while/lstm_cell_62/BiasAdd/ReadVariableOp2lstm_242/while/lstm_cell_62/BiasAdd/ReadVariableOp2f
1lstm_242/while/lstm_cell_62/MatMul/ReadVariableOp1lstm_242/while/lstm_cell_62/MatMul/ReadVariableOp2j
3lstm_242/while/lstm_cell_62/MatMul_1/ReadVariableOp3lstm_242/while/lstm_cell_62/MatMul_1/ReadVariableOp: 
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
$__inference_signature_wrapper_377092
lstm_240_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_240_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_374832o
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
_user_specified_namelstm_240_input
ö
³
)__inference_lstm_242_layer_call_fn_379276

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
D__inference_lstm_242_layer_call_and_return_conditional_losses_376547o
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
µ
?
while_cond_375946
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_375946___redundant_placeholder04
0while_while_cond_375946___redundant_placeholder14
0while_while_cond_375946___redundant_placeholder24
0while_while_cond_375946___redundant_placeholder3
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
Ŭ

H__inference_lstm_cell_60_layer_call_and_return_conditional_losses_379965

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
µ
?
while_cond_379147
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_379147___redundant_placeholder04
0while_while_cond_379147___redundant_placeholder14
0while_while_cond_379147___redundant_placeholder24
0while_while_cond_379147___redundant_placeholder3
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
ħ

I__inference_sequential_80_layer_call_and_return_conditional_losses_377573

inputsG
4lstm_240_lstm_cell_60_matmul_readvariableop_resource:	I
6lstm_240_lstm_cell_60_matmul_1_readvariableop_resource:	dD
5lstm_240_lstm_cell_60_biasadd_readvariableop_resource:	G
4lstm_241_lstm_cell_61_matmul_readvariableop_resource:	dÈI
6lstm_241_lstm_cell_61_matmul_1_readvariableop_resource:	2ÈD
5lstm_241_lstm_cell_61_biasadd_readvariableop_resource:	ÈF
4lstm_242_lstm_cell_62_matmul_readvariableop_resource:2(H
6lstm_242_lstm_cell_62_matmul_1_readvariableop_resource:
(C
5lstm_242_lstm_cell_62_biasadd_readvariableop_resource:(9
'dense_80_matmul_readvariableop_resource:
6
(dense_80_biasadd_readvariableop_resource:
identity˘dense_80/BiasAdd/ReadVariableOp˘dense_80/MatMul/ReadVariableOp˘,lstm_240/lstm_cell_60/BiasAdd/ReadVariableOp˘+lstm_240/lstm_cell_60/MatMul/ReadVariableOp˘-lstm_240/lstm_cell_60/MatMul_1/ReadVariableOp˘lstm_240/while˘,lstm_241/lstm_cell_61/BiasAdd/ReadVariableOp˘+lstm_241/lstm_cell_61/MatMul/ReadVariableOp˘-lstm_241/lstm_cell_61/MatMul_1/ReadVariableOp˘lstm_241/while˘,lstm_242/lstm_cell_62/BiasAdd/ReadVariableOp˘+lstm_242/lstm_cell_62/MatMul/ReadVariableOp˘-lstm_242/lstm_cell_62/MatMul_1/ReadVariableOp˘lstm_242/whileD
lstm_240/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_240/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_240/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_240/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_240/strided_sliceStridedSlicelstm_240/Shape:output:0%lstm_240/strided_slice/stack:output:0'lstm_240/strided_slice/stack_1:output:0'lstm_240/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_240/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_240/zeros/packedPacklstm_240/strided_slice:output:0 lstm_240/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_240/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_240/zerosFilllstm_240/zeros/packed:output:0lstm_240/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_240/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_240/zeros_1/packedPacklstm_240/strided_slice:output:0"lstm_240/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_240/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_240/zeros_1Fill lstm_240/zeros_1/packed:output:0lstm_240/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_240/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_240/transpose	Transposeinputs lstm_240/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_240/Shape_1Shapelstm_240/transpose:y:0*
T0*
_output_shapes
:h
lstm_240/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_240/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_240/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_240/strided_slice_1StridedSlicelstm_240/Shape_1:output:0'lstm_240/strided_slice_1/stack:output:0)lstm_240/strided_slice_1/stack_1:output:0)lstm_240/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_240/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_240/TensorArrayV2TensorListReserve-lstm_240/TensorArrayV2/element_shape:output:0!lstm_240/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_240/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_240/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_240/transpose:y:0Glstm_240/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_240/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_240/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_240/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_240/strided_slice_2StridedSlicelstm_240/transpose:y:0'lstm_240/strided_slice_2/stack:output:0)lstm_240/strided_slice_2/stack_1:output:0)lstm_240/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_240/lstm_cell_60/MatMul/ReadVariableOpReadVariableOp4lstm_240_lstm_cell_60_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_240/lstm_cell_60/MatMulMatMul!lstm_240/strided_slice_2:output:03lstm_240/lstm_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_240/lstm_cell_60/MatMul_1/ReadVariableOpReadVariableOp6lstm_240_lstm_cell_60_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_240/lstm_cell_60/MatMul_1MatMullstm_240/zeros:output:05lstm_240/lstm_cell_60/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_240/lstm_cell_60/addAddV2&lstm_240/lstm_cell_60/MatMul:product:0(lstm_240/lstm_cell_60/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_240/lstm_cell_60/BiasAdd/ReadVariableOpReadVariableOp5lstm_240_lstm_cell_60_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_240/lstm_cell_60/BiasAddBiasAddlstm_240/lstm_cell_60/add:z:04lstm_240/lstm_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_240/lstm_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_240/lstm_cell_60/splitSplit.lstm_240/lstm_cell_60/split/split_dim:output:0&lstm_240/lstm_cell_60/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_240/lstm_cell_60/SigmoidSigmoid$lstm_240/lstm_cell_60/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_240/lstm_cell_60/Sigmoid_1Sigmoid$lstm_240/lstm_cell_60/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_240/lstm_cell_60/mulMul#lstm_240/lstm_cell_60/Sigmoid_1:y:0lstm_240/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_240/lstm_cell_60/ReluRelu$lstm_240/lstm_cell_60/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_240/lstm_cell_60/mul_1Mul!lstm_240/lstm_cell_60/Sigmoid:y:0(lstm_240/lstm_cell_60/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_240/lstm_cell_60/add_1AddV2lstm_240/lstm_cell_60/mul:z:0lstm_240/lstm_cell_60/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_240/lstm_cell_60/Sigmoid_2Sigmoid$lstm_240/lstm_cell_60/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_240/lstm_cell_60/Relu_1Relulstm_240/lstm_cell_60/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_240/lstm_cell_60/mul_2Mul#lstm_240/lstm_cell_60/Sigmoid_2:y:0*lstm_240/lstm_cell_60/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_240/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_240/TensorArrayV2_1TensorListReserve/lstm_240/TensorArrayV2_1/element_shape:output:0!lstm_240/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_240/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_240/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_240/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_240/whileWhile$lstm_240/while/loop_counter:output:0*lstm_240/while/maximum_iterations:output:0lstm_240/time:output:0!lstm_240/TensorArrayV2_1:handle:0lstm_240/zeros:output:0lstm_240/zeros_1:output:0!lstm_240/strided_slice_1:output:0@lstm_240/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_240_lstm_cell_60_matmul_readvariableop_resource6lstm_240_lstm_cell_60_matmul_1_readvariableop_resource5lstm_240_lstm_cell_60_biasadd_readvariableop_resource*
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
lstm_240_while_body_377205*&
condR
lstm_240_while_cond_377204*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_240/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_240/TensorArrayV2Stack/TensorListStackTensorListStacklstm_240/while:output:3Blstm_240/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_240/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_240/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_240/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_240/strided_slice_3StridedSlice4lstm_240/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_240/strided_slice_3/stack:output:0)lstm_240/strided_slice_3/stack_1:output:0)lstm_240/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_240/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_240/transpose_1	Transpose4lstm_240/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_240/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_240/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_241/ShapeShapelstm_240/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_241/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_241/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_241/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_241/strided_sliceStridedSlicelstm_241/Shape:output:0%lstm_241/strided_slice/stack:output:0'lstm_241/strided_slice/stack_1:output:0'lstm_241/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_241/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_241/zeros/packedPacklstm_241/strided_slice:output:0 lstm_241/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_241/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_241/zerosFilllstm_241/zeros/packed:output:0lstm_241/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_241/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_241/zeros_1/packedPacklstm_241/strided_slice:output:0"lstm_241/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_241/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_241/zeros_1Fill lstm_241/zeros_1/packed:output:0lstm_241/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_241/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_241/transpose	Transposelstm_240/transpose_1:y:0 lstm_241/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_241/Shape_1Shapelstm_241/transpose:y:0*
T0*
_output_shapes
:h
lstm_241/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_241/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_241/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_241/strided_slice_1StridedSlicelstm_241/Shape_1:output:0'lstm_241/strided_slice_1/stack:output:0)lstm_241/strided_slice_1/stack_1:output:0)lstm_241/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_241/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_241/TensorArrayV2TensorListReserve-lstm_241/TensorArrayV2/element_shape:output:0!lstm_241/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_241/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_241/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_241/transpose:y:0Glstm_241/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_241/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_241/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_241/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_241/strided_slice_2StridedSlicelstm_241/transpose:y:0'lstm_241/strided_slice_2/stack:output:0)lstm_241/strided_slice_2/stack_1:output:0)lstm_241/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_241/lstm_cell_61/MatMul/ReadVariableOpReadVariableOp4lstm_241_lstm_cell_61_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_241/lstm_cell_61/MatMulMatMul!lstm_241/strided_slice_2:output:03lstm_241/lstm_cell_61/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_241/lstm_cell_61/MatMul_1/ReadVariableOpReadVariableOp6lstm_241_lstm_cell_61_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_241/lstm_cell_61/MatMul_1MatMullstm_241/zeros:output:05lstm_241/lstm_cell_61/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_241/lstm_cell_61/addAddV2&lstm_241/lstm_cell_61/MatMul:product:0(lstm_241/lstm_cell_61/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_241/lstm_cell_61/BiasAdd/ReadVariableOpReadVariableOp5lstm_241_lstm_cell_61_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_241/lstm_cell_61/BiasAddBiasAddlstm_241/lstm_cell_61/add:z:04lstm_241/lstm_cell_61/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_241/lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_241/lstm_cell_61/splitSplit.lstm_241/lstm_cell_61/split/split_dim:output:0&lstm_241/lstm_cell_61/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_241/lstm_cell_61/SigmoidSigmoid$lstm_241/lstm_cell_61/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_241/lstm_cell_61/Sigmoid_1Sigmoid$lstm_241/lstm_cell_61/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_241/lstm_cell_61/mulMul#lstm_241/lstm_cell_61/Sigmoid_1:y:0lstm_241/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_241/lstm_cell_61/ReluRelu$lstm_241/lstm_cell_61/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_241/lstm_cell_61/mul_1Mul!lstm_241/lstm_cell_61/Sigmoid:y:0(lstm_241/lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_241/lstm_cell_61/add_1AddV2lstm_241/lstm_cell_61/mul:z:0lstm_241/lstm_cell_61/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_241/lstm_cell_61/Sigmoid_2Sigmoid$lstm_241/lstm_cell_61/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_241/lstm_cell_61/Relu_1Relulstm_241/lstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_241/lstm_cell_61/mul_2Mul#lstm_241/lstm_cell_61/Sigmoid_2:y:0*lstm_241/lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_241/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_241/TensorArrayV2_1TensorListReserve/lstm_241/TensorArrayV2_1/element_shape:output:0!lstm_241/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_241/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_241/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_241/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_241/whileWhile$lstm_241/while/loop_counter:output:0*lstm_241/while/maximum_iterations:output:0lstm_241/time:output:0!lstm_241/TensorArrayV2_1:handle:0lstm_241/zeros:output:0lstm_241/zeros_1:output:0!lstm_241/strided_slice_1:output:0@lstm_241/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_241_lstm_cell_61_matmul_readvariableop_resource6lstm_241_lstm_cell_61_matmul_1_readvariableop_resource5lstm_241_lstm_cell_61_biasadd_readvariableop_resource*
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
lstm_241_while_body_377344*&
condR
lstm_241_while_cond_377343*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_241/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_241/TensorArrayV2Stack/TensorListStackTensorListStacklstm_241/while:output:3Blstm_241/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_241/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_241/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_241/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_241/strided_slice_3StridedSlice4lstm_241/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_241/strided_slice_3/stack:output:0)lstm_241/strided_slice_3/stack_1:output:0)lstm_241/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_241/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_241/transpose_1	Transpose4lstm_241/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_241/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_241/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_242/ShapeShapelstm_241/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_242/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_242/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_242/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_242/strided_sliceStridedSlicelstm_242/Shape:output:0%lstm_242/strided_slice/stack:output:0'lstm_242/strided_slice/stack_1:output:0'lstm_242/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_242/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_242/zeros/packedPacklstm_242/strided_slice:output:0 lstm_242/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_242/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_242/zerosFilllstm_242/zeros/packed:output:0lstm_242/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_242/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_242/zeros_1/packedPacklstm_242/strided_slice:output:0"lstm_242/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_242/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_242/zeros_1Fill lstm_242/zeros_1/packed:output:0lstm_242/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_242/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_242/transpose	Transposelstm_241/transpose_1:y:0 lstm_242/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_242/Shape_1Shapelstm_242/transpose:y:0*
T0*
_output_shapes
:h
lstm_242/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_242/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_242/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_242/strided_slice_1StridedSlicelstm_242/Shape_1:output:0'lstm_242/strided_slice_1/stack:output:0)lstm_242/strided_slice_1/stack_1:output:0)lstm_242/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_242/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_242/TensorArrayV2TensorListReserve-lstm_242/TensorArrayV2/element_shape:output:0!lstm_242/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_242/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_242/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_242/transpose:y:0Glstm_242/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_242/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_242/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_242/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_242/strided_slice_2StridedSlicelstm_242/transpose:y:0'lstm_242/strided_slice_2/stack:output:0)lstm_242/strided_slice_2/stack_1:output:0)lstm_242/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_242/lstm_cell_62/MatMul/ReadVariableOpReadVariableOp4lstm_242_lstm_cell_62_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_242/lstm_cell_62/MatMulMatMul!lstm_242/strided_slice_2:output:03lstm_242/lstm_cell_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_242/lstm_cell_62/MatMul_1/ReadVariableOpReadVariableOp6lstm_242_lstm_cell_62_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_242/lstm_cell_62/MatMul_1MatMullstm_242/zeros:output:05lstm_242/lstm_cell_62/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_242/lstm_cell_62/addAddV2&lstm_242/lstm_cell_62/MatMul:product:0(lstm_242/lstm_cell_62/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_242/lstm_cell_62/BiasAdd/ReadVariableOpReadVariableOp5lstm_242_lstm_cell_62_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_242/lstm_cell_62/BiasAddBiasAddlstm_242/lstm_cell_62/add:z:04lstm_242/lstm_cell_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_242/lstm_cell_62/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_242/lstm_cell_62/splitSplit.lstm_242/lstm_cell_62/split/split_dim:output:0&lstm_242/lstm_cell_62/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_242/lstm_cell_62/SigmoidSigmoid$lstm_242/lstm_cell_62/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_242/lstm_cell_62/Sigmoid_1Sigmoid$lstm_242/lstm_cell_62/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_242/lstm_cell_62/mulMul#lstm_242/lstm_cell_62/Sigmoid_1:y:0lstm_242/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_242/lstm_cell_62/ReluRelu$lstm_242/lstm_cell_62/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_242/lstm_cell_62/mul_1Mul!lstm_242/lstm_cell_62/Sigmoid:y:0(lstm_242/lstm_cell_62/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_242/lstm_cell_62/add_1AddV2lstm_242/lstm_cell_62/mul:z:0lstm_242/lstm_cell_62/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_242/lstm_cell_62/Sigmoid_2Sigmoid$lstm_242/lstm_cell_62/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_242/lstm_cell_62/Relu_1Relulstm_242/lstm_cell_62/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_242/lstm_cell_62/mul_2Mul#lstm_242/lstm_cell_62/Sigmoid_2:y:0*lstm_242/lstm_cell_62/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_242/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_242/TensorArrayV2_1TensorListReserve/lstm_242/TensorArrayV2_1/element_shape:output:0!lstm_242/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_242/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_242/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_242/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_242/whileWhile$lstm_242/while/loop_counter:output:0*lstm_242/while/maximum_iterations:output:0lstm_242/time:output:0!lstm_242/TensorArrayV2_1:handle:0lstm_242/zeros:output:0lstm_242/zeros_1:output:0!lstm_242/strided_slice_1:output:0@lstm_242/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_242_lstm_cell_62_matmul_readvariableop_resource6lstm_242_lstm_cell_62_matmul_1_readvariableop_resource5lstm_242_lstm_cell_62_biasadd_readvariableop_resource*
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
lstm_242_while_body_377483*&
condR
lstm_242_while_cond_377482*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_242/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_242/TensorArrayV2Stack/TensorListStackTensorListStacklstm_242/while:output:3Blstm_242/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_242/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_242/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_242/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_242/strided_slice_3StridedSlice4lstm_242/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_242/strided_slice_3/stack:output:0)lstm_242/strided_slice_3/stack_1:output:0)lstm_242/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_242/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_242/transpose_1	Transpose4lstm_242/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_242/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_242/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_80/MatMul/ReadVariableOpReadVariableOp'dense_80_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_80/MatMulMatMul!lstm_242/strided_slice_3:output:0&dense_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_80/BiasAdd/ReadVariableOpReadVariableOp(dense_80_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_80/BiasAddBiasAdddense_80/MatMul:product:0'dense_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense_80/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙?
NoOpNoOp ^dense_80/BiasAdd/ReadVariableOp^dense_80/MatMul/ReadVariableOp-^lstm_240/lstm_cell_60/BiasAdd/ReadVariableOp,^lstm_240/lstm_cell_60/MatMul/ReadVariableOp.^lstm_240/lstm_cell_60/MatMul_1/ReadVariableOp^lstm_240/while-^lstm_241/lstm_cell_61/BiasAdd/ReadVariableOp,^lstm_241/lstm_cell_61/MatMul/ReadVariableOp.^lstm_241/lstm_cell_61/MatMul_1/ReadVariableOp^lstm_241/while-^lstm_242/lstm_cell_62/BiasAdd/ReadVariableOp,^lstm_242/lstm_cell_62/MatMul/ReadVariableOp.^lstm_242/lstm_cell_62/MatMul_1/ReadVariableOp^lstm_242/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2B
dense_80/BiasAdd/ReadVariableOpdense_80/BiasAdd/ReadVariableOp2@
dense_80/MatMul/ReadVariableOpdense_80/MatMul/ReadVariableOp2\
,lstm_240/lstm_cell_60/BiasAdd/ReadVariableOp,lstm_240/lstm_cell_60/BiasAdd/ReadVariableOp2Z
+lstm_240/lstm_cell_60/MatMul/ReadVariableOp+lstm_240/lstm_cell_60/MatMul/ReadVariableOp2^
-lstm_240/lstm_cell_60/MatMul_1/ReadVariableOp-lstm_240/lstm_cell_60/MatMul_1/ReadVariableOp2 
lstm_240/whilelstm_240/while2\
,lstm_241/lstm_cell_61/BiasAdd/ReadVariableOp,lstm_241/lstm_cell_61/BiasAdd/ReadVariableOp2Z
+lstm_241/lstm_cell_61/MatMul/ReadVariableOp+lstm_241/lstm_cell_61/MatMul/ReadVariableOp2^
-lstm_241/lstm_cell_61/MatMul_1/ReadVariableOp-lstm_241/lstm_cell_61/MatMul_1/ReadVariableOp2 
lstm_241/whilelstm_241/while2\
,lstm_242/lstm_cell_62/BiasAdd/ReadVariableOp,lstm_242/lstm_cell_62/BiasAdd/ReadVariableOp2Z
+lstm_242/lstm_cell_62/MatMul/ReadVariableOp+lstm_242/lstm_cell_62/MatMul/ReadVariableOp2^
-lstm_242/lstm_cell_62/MatMul_1/ReadVariableOp-lstm_242/lstm_cell_62/MatMul_1/ReadVariableOp2 
lstm_242/whilelstm_242/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ġ

H__inference_lstm_cell_61_layer_call_and_return_conditional_losses_375395

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
Ç	
ġ
D__inference_dense_80_layer_call_and_return_conditional_losses_379867

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
J

D__inference_lstm_242_layer_call_and_return_conditional_losses_379848

inputs=
+lstm_cell_62_matmul_readvariableop_resource:2(?
-lstm_cell_62_matmul_1_readvariableop_resource:
(:
,lstm_cell_62_biasadd_readvariableop_resource:(
identity˘#lstm_cell_62/BiasAdd/ReadVariableOp˘"lstm_cell_62/MatMul/ReadVariableOp˘$lstm_cell_62/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_62/MatMul/ReadVariableOpReadVariableOp+lstm_cell_62_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_62/MatMulMatMulstrided_slice_2:output:0*lstm_cell_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_62/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_62_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_62/MatMul_1MatMulzeros:output:0,lstm_cell_62/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_62/addAddV2lstm_cell_62/MatMul:product:0lstm_cell_62/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_62/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_62_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_62/BiasAddBiasAddlstm_cell_62/add:z:0+lstm_cell_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_62/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_62/splitSplit%lstm_cell_62/split/split_dim:output:0lstm_cell_62/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_62/SigmoidSigmoidlstm_cell_62/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_62/Sigmoid_1Sigmoidlstm_cell_62/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_62/mulMullstm_cell_62/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_62/ReluRelulstm_cell_62/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_62/mul_1Mullstm_cell_62/Sigmoid:y:0lstm_cell_62/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_62/add_1AddV2lstm_cell_62/mul:z:0lstm_cell_62/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_62/Sigmoid_2Sigmoidlstm_cell_62/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_62/Relu_1Relulstm_cell_62/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_62/mul_2Mullstm_cell_62/Sigmoid_2:y:0!lstm_cell_62/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_62_matmul_readvariableop_resource-lstm_cell_62_matmul_1_readvariableop_resource,lstm_cell_62_biasadd_readvariableop_resource*
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
while_body_379764*
condR
while_cond_379763*K
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
NoOpNoOp$^lstm_cell_62/BiasAdd/ReadVariableOp#^lstm_cell_62/MatMul/ReadVariableOp%^lstm_cell_62/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_62/BiasAdd/ReadVariableOp#lstm_cell_62/BiasAdd/ReadVariableOp2H
"lstm_cell_62/MatMul/ReadVariableOp"lstm_cell_62/MatMul/ReadVariableOp2L
$lstm_cell_62/MatMul_1/ReadVariableOp$lstm_cell_62/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
µ
?
while_cond_379477
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_379477___redundant_placeholder04
0while_while_cond_379477___redundant_placeholder14
0while_while_cond_379477___redundant_placeholder24
0while_while_cond_379477___redundant_placeholder3
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
âJ

D__inference_lstm_241_layer_call_and_return_conditional_losses_378803
inputs_0>
+lstm_cell_61_matmul_readvariableop_resource:	dÈ@
-lstm_cell_61_matmul_1_readvariableop_resource:	2È;
,lstm_cell_61_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_61/BiasAdd/ReadVariableOp˘"lstm_cell_61/MatMul/ReadVariableOp˘$lstm_cell_61/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_61/MatMul/ReadVariableOpReadVariableOp+lstm_cell_61_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_61/MatMulMatMulstrided_slice_2:output:0*lstm_cell_61/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_61/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_61_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_61/MatMul_1MatMulzeros:output:0,lstm_cell_61/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_61/addAddV2lstm_cell_61/MatMul:product:0lstm_cell_61/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_61/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_61_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_61/BiasAddBiasAddlstm_cell_61/add:z:0+lstm_cell_61/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_61/splitSplit%lstm_cell_61/split/split_dim:output:0lstm_cell_61/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_61/SigmoidSigmoidlstm_cell_61/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_61/Sigmoid_1Sigmoidlstm_cell_61/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_61/mulMullstm_cell_61/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_61/ReluRelulstm_cell_61/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_61/mul_1Mullstm_cell_61/Sigmoid:y:0lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_61/add_1AddV2lstm_cell_61/mul:z:0lstm_cell_61/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_61/Sigmoid_2Sigmoidlstm_cell_61/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_61/Relu_1Relulstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_61/mul_2Mullstm_cell_61/Sigmoid_2:y:0!lstm_cell_61/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_61_matmul_readvariableop_resource-lstm_cell_61_matmul_1_readvariableop_resource,lstm_cell_61_biasadd_readvariableop_resource*
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
while_body_378719*
condR
while_cond_378718*K
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
NoOpNoOp$^lstm_cell_61/BiasAdd/ReadVariableOp#^lstm_cell_61/MatMul/ReadVariableOp%^lstm_cell_61/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_61/BiasAdd/ReadVariableOp#lstm_cell_61/BiasAdd/ReadVariableOp2H
"lstm_cell_61/MatMul/ReadVariableOp"lstm_cell_61/MatMul/ReadVariableOp2L
$lstm_cell_61/MatMul_1/ReadVariableOp$lstm_cell_61/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
Ğ
¸
)__inference_lstm_240_layer_call_fn_378011
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
D__inference_lstm_240_layer_call_and_return_conditional_losses_374982|
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
²

÷
lstm_241_while_cond_377343.
*lstm_241_while_lstm_241_while_loop_counter4
0lstm_241_while_lstm_241_while_maximum_iterations
lstm_241_while_placeholder 
lstm_241_while_placeholder_1 
lstm_241_while_placeholder_2 
lstm_241_while_placeholder_30
,lstm_241_while_less_lstm_241_strided_slice_1F
Blstm_241_while_lstm_241_while_cond_377343___redundant_placeholder0F
Blstm_241_while_lstm_241_while_cond_377343___redundant_placeholder1F
Blstm_241_while_lstm_241_while_cond_377343___redundant_placeholder2F
Blstm_241_while_lstm_241_while_cond_377343___redundant_placeholder3
lstm_241_while_identity

lstm_241/while/LessLesslstm_241_while_placeholder,lstm_241_while_less_lstm_241_strided_slice_1*
T0*
_output_shapes
: ]
lstm_241/while/IdentityIdentitylstm_241/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_241_while_identity lstm_241/while/Identity:output:0*(
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
ë
ö
-__inference_lstm_cell_61_layer_call_fn_379982

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
H__inference_lstm_cell_61_layer_call_and_return_conditional_losses_375249o
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
8

D__inference_lstm_240_layer_call_and_return_conditional_losses_374982

inputs&
lstm_cell_60_374900:	&
lstm_cell_60_374902:	d"
lstm_cell_60_374904:	
identity˘$lstm_cell_60/StatefulPartitionedCall˘while;
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
$lstm_cell_60/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_60_374900lstm_cell_60_374902lstm_cell_60_374904*
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
H__inference_lstm_cell_60_layer_call_and_return_conditional_losses_374899n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_60_374900lstm_cell_60_374902lstm_cell_60_374904*
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
while_body_374913*
condR
while_cond_374912*K
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
NoOpNoOp%^lstm_cell_60/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_60/StatefulPartitionedCall$lstm_cell_60/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8
?
while_body_379148
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_61_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_61_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_61_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_61_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_61_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_61_biasadd_readvariableop_resource:	È˘)while/lstm_cell_61/BiasAdd/ReadVariableOp˘(while/lstm_cell_61/MatMul/ReadVariableOp˘*while/lstm_cell_61/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_61/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_61_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_61/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_61/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_61/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_61_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_61/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_61/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_61/addAddV2#while/lstm_cell_61/MatMul:product:0%while/lstm_cell_61/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_61/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_61_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_61/BiasAddBiasAddwhile/lstm_cell_61/add:z:01while/lstm_cell_61/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_61/splitSplit+while/lstm_cell_61/split/split_dim:output:0#while/lstm_cell_61/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_61/SigmoidSigmoid!while/lstm_cell_61/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_61/Sigmoid_1Sigmoid!while/lstm_cell_61/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_61/mulMul while/lstm_cell_61/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_61/ReluRelu!while/lstm_cell_61/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_61/mul_1Mulwhile/lstm_cell_61/Sigmoid:y:0%while/lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_61/add_1AddV2while/lstm_cell_61/mul:z:0while/lstm_cell_61/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_61/Sigmoid_2Sigmoid!while/lstm_cell_61/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_61/Relu_1Reluwhile/lstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_61/mul_2Mul while/lstm_cell_61/Sigmoid_2:y:0'while/lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_61/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_61/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_61/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_61/BiasAdd/ReadVariableOp)^while/lstm_cell_61/MatMul/ReadVariableOp+^while/lstm_cell_61/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_61_biasadd_readvariableop_resource4while_lstm_cell_61_biasadd_readvariableop_resource_0"l
3while_lstm_cell_61_matmul_1_readvariableop_resource5while_lstm_cell_61_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_61_matmul_readvariableop_resource3while_lstm_cell_61_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_61/BiasAdd/ReadVariableOp)while/lstm_cell_61/BiasAdd/ReadVariableOp2T
(while/lstm_cell_61/MatMul/ReadVariableOp(while/lstm_cell_61/MatMul/ReadVariableOp2X
*while/lstm_cell_61/MatMul_1/ReadVariableOp*while/lstm_cell_61/MatMul_1/ReadVariableOp: 
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
Ú


.__inference_sequential_80_layer_call_fn_377119

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
identity˘StatefulPartitionedCallÓ
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
GPU 2J 8 *R
fMRK
I__inference_sequential_80_layer_call_and_return_conditional_losses_376356o
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
µ
?
while_cond_378102
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_378102___redundant_placeholder04
0while_while_cond_378102___redundant_placeholder14
0while_while_cond_378102___redundant_placeholder24
0while_while_cond_378102___redundant_placeholder3
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
8
?
while_body_378719
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_61_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_61_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_61_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_61_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_61_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_61_biasadd_readvariableop_resource:	È˘)while/lstm_cell_61/BiasAdd/ReadVariableOp˘(while/lstm_cell_61/MatMul/ReadVariableOp˘*while/lstm_cell_61/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_61/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_61_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_61/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_61/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_61/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_61_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_61/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_61/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_61/addAddV2#while/lstm_cell_61/MatMul:product:0%while/lstm_cell_61/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_61/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_61_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_61/BiasAddBiasAddwhile/lstm_cell_61/add:z:01while/lstm_cell_61/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_61/splitSplit+while/lstm_cell_61/split/split_dim:output:0#while/lstm_cell_61/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_61/SigmoidSigmoid!while/lstm_cell_61/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_61/Sigmoid_1Sigmoid!while/lstm_cell_61/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_61/mulMul while/lstm_cell_61/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_61/ReluRelu!while/lstm_cell_61/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_61/mul_1Mulwhile/lstm_cell_61/Sigmoid:y:0%while/lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_61/add_1AddV2while/lstm_cell_61/mul:z:0while/lstm_cell_61/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_61/Sigmoid_2Sigmoid!while/lstm_cell_61/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_61/Relu_1Reluwhile/lstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_61/mul_2Mul while/lstm_cell_61/Sigmoid_2:y:0'while/lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_61/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_61/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_61/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_61/BiasAdd/ReadVariableOp)^while/lstm_cell_61/MatMul/ReadVariableOp+^while/lstm_cell_61/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_61_biasadd_readvariableop_resource4while_lstm_cell_61_biasadd_readvariableop_resource_0"l
3while_lstm_cell_61_matmul_1_readvariableop_resource5while_lstm_cell_61_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_61_matmul_readvariableop_resource3while_lstm_cell_61_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_61/BiasAdd/ReadVariableOp)while/lstm_cell_61/BiasAdd/ReadVariableOp2T
(while/lstm_cell_61/MatMul/ReadVariableOp(while/lstm_cell_61/MatMul/ReadVariableOp2X
*while/lstm_cell_61/MatMul_1/ReadVariableOp*while/lstm_cell_61/MatMul_1/ReadVariableOp: 
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

µ
)__inference_lstm_242_layer_call_fn_379254
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
D__inference_lstm_242_layer_call_and_return_conditional_losses_375873o
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
¤J

D__inference_lstm_241_layer_call_and_return_conditional_losses_379089

inputs>
+lstm_cell_61_matmul_readvariableop_resource:	dÈ@
-lstm_cell_61_matmul_1_readvariableop_resource:	2È;
,lstm_cell_61_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_61/BiasAdd/ReadVariableOp˘"lstm_cell_61/MatMul/ReadVariableOp˘$lstm_cell_61/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_61/MatMul/ReadVariableOpReadVariableOp+lstm_cell_61_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_61/MatMulMatMulstrided_slice_2:output:0*lstm_cell_61/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_61/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_61_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_61/MatMul_1MatMulzeros:output:0,lstm_cell_61/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_61/addAddV2lstm_cell_61/MatMul:product:0lstm_cell_61/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_61/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_61_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_61/BiasAddBiasAddlstm_cell_61/add:z:0+lstm_cell_61/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_61/splitSplit%lstm_cell_61/split/split_dim:output:0lstm_cell_61/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_61/SigmoidSigmoidlstm_cell_61/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_61/Sigmoid_1Sigmoidlstm_cell_61/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_61/mulMullstm_cell_61/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_61/ReluRelulstm_cell_61/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_61/mul_1Mullstm_cell_61/Sigmoid:y:0lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_61/add_1AddV2lstm_cell_61/mul:z:0lstm_cell_61/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_61/Sigmoid_2Sigmoidlstm_cell_61/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_61/Relu_1Relulstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_61/mul_2Mullstm_cell_61/Sigmoid_2:y:0!lstm_cell_61/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_61_matmul_readvariableop_resource-lstm_cell_61_matmul_1_readvariableop_resource,lstm_cell_61_biasadd_readvariableop_resource*
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
while_body_379005*
condR
while_cond_379004*K
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
NoOpNoOp$^lstm_cell_61/BiasAdd/ReadVariableOp#^lstm_cell_61/MatMul/ReadVariableOp%^lstm_cell_61/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_61/BiasAdd/ReadVariableOp#lstm_cell_61/BiasAdd/ReadVariableOp2H
"lstm_cell_61/MatMul/ReadVariableOp"lstm_cell_61/MatMul/ReadVariableOp2L
$lstm_cell_61/MatMul_1/ReadVariableOp$lstm_cell_61/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
Ŭ

H__inference_lstm_cell_61_layer_call_and_return_conditional_losses_380031

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
µ
?
while_cond_376462
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_376462___redundant_placeholder04
0while_while_cond_376462___redundant_placeholder14
0while_while_cond_376462___redundant_placeholder24
0while_while_cond_376462___redundant_placeholder3
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
while_cond_375453
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_375453___redundant_placeholder04
0while_while_cond_375453___redundant_placeholder14
0while_while_cond_375453___redundant_placeholder24
0while_while_cond_375453___redundant_placeholder3
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
while_cond_379763
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_379763___redundant_placeholder04
0while_while_cond_379763___redundant_placeholder14
0while_while_cond_379763___redundant_placeholder24
0while_while_cond_379763___redundant_placeholder3
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
while_cond_375262
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_375262___redundant_placeholder04
0while_while_cond_375262___redundant_placeholder14
0while_while_cond_375262___redundant_placeholder24
0while_while_cond_375262___redundant_placeholder3
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
Ŭ

H__inference_lstm_cell_60_layer_call_and_return_conditional_losses_379933

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
states/1"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*½
serving_defaultİ
M
lstm_240_input;
 serving_default_lstm_240_input:0˙˙˙˙˙˙˙˙˙<
dense_800
StatefulPartitionedCall:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:ŭ?
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
!:
2dense_80/kernel
:2dense_80/bias
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
0:.	2lstm_240/lstm_cell_240/kernel
::8	d2'lstm_240/lstm_cell_240/recurrent_kernel
*:(2lstm_240/lstm_cell_240/bias
0:.	dÈ2lstm_241/lstm_cell_241/kernel
::8	2È2'lstm_241/lstm_cell_241/recurrent_kernel
*:(È2lstm_241/lstm_cell_241/bias
/:-2(2lstm_242/lstm_cell_242/kernel
9:7
(2'lstm_242/lstm_cell_242/recurrent_kernel
):'(2lstm_242/lstm_cell_242/bias
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
&:$
2Adam/dense_80/kernel/m
 :2Adam/dense_80/bias/m
5:3	2$Adam/lstm_240/lstm_cell_240/kernel/m
?:=	d2.Adam/lstm_240/lstm_cell_240/recurrent_kernel/m
/:-2"Adam/lstm_240/lstm_cell_240/bias/m
5:3	dÈ2$Adam/lstm_241/lstm_cell_241/kernel/m
?:=	2È2.Adam/lstm_241/lstm_cell_241/recurrent_kernel/m
/:-È2"Adam/lstm_241/lstm_cell_241/bias/m
4:22(2$Adam/lstm_242/lstm_cell_242/kernel/m
>:<
(2.Adam/lstm_242/lstm_cell_242/recurrent_kernel/m
.:,(2"Adam/lstm_242/lstm_cell_242/bias/m
&:$
2Adam/dense_80/kernel/v
 :2Adam/dense_80/bias/v
5:3	2$Adam/lstm_240/lstm_cell_240/kernel/v
?:=	d2.Adam/lstm_240/lstm_cell_240/recurrent_kernel/v
/:-2"Adam/lstm_240/lstm_cell_240/bias/v
5:3	dÈ2$Adam/lstm_241/lstm_cell_241/kernel/v
?:=	2È2.Adam/lstm_241/lstm_cell_241/recurrent_kernel/v
/:-È2"Adam/lstm_241/lstm_cell_241/bias/v
4:22(2$Adam/lstm_242/lstm_cell_242/kernel/v
>:<
(2.Adam/lstm_242/lstm_cell_242/recurrent_kernel/v
.:,(2"Adam/lstm_242/lstm_cell_242/bias/v
2
.__inference_sequential_80_layer_call_fn_376381
.__inference_sequential_80_layer_call_fn_377119
.__inference_sequential_80_layer_call_fn_377146
.__inference_sequential_80_layer_call_fn_376997À
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
ò2ï
I__inference_sequential_80_layer_call_and_return_conditional_losses_377573
I__inference_sequential_80_layer_call_and_return_conditional_losses_378000
I__inference_sequential_80_layer_call_and_return_conditional_losses_377027
I__inference_sequential_80_layer_call_and_return_conditional_losses_377057À
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
!__inference__wrapped_model_374832lstm_240_input"
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
)__inference_lstm_240_layer_call_fn_378011
)__inference_lstm_240_layer_call_fn_378022
)__inference_lstm_240_layer_call_fn_378033
)__inference_lstm_240_layer_call_fn_378044Ġ
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
D__inference_lstm_240_layer_call_and_return_conditional_losses_378187
D__inference_lstm_240_layer_call_and_return_conditional_losses_378330
D__inference_lstm_240_layer_call_and_return_conditional_losses_378473
D__inference_lstm_240_layer_call_and_return_conditional_losses_378616Ġ
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
)__inference_lstm_241_layer_call_fn_378627
)__inference_lstm_241_layer_call_fn_378638
)__inference_lstm_241_layer_call_fn_378649
)__inference_lstm_241_layer_call_fn_378660Ġ
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
D__inference_lstm_241_layer_call_and_return_conditional_losses_378803
D__inference_lstm_241_layer_call_and_return_conditional_losses_378946
D__inference_lstm_241_layer_call_and_return_conditional_losses_379089
D__inference_lstm_241_layer_call_and_return_conditional_losses_379232Ġ
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
)__inference_lstm_242_layer_call_fn_379243
)__inference_lstm_242_layer_call_fn_379254
)__inference_lstm_242_layer_call_fn_379265
)__inference_lstm_242_layer_call_fn_379276Ġ
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
D__inference_lstm_242_layer_call_and_return_conditional_losses_379419
D__inference_lstm_242_layer_call_and_return_conditional_losses_379562
D__inference_lstm_242_layer_call_and_return_conditional_losses_379705
D__inference_lstm_242_layer_call_and_return_conditional_losses_379848Ġ
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
Ó2?
)__inference_dense_80_layer_call_fn_379857˘
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
î2ë
D__inference_dense_80_layer_call_and_return_conditional_losses_379867˘
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
$__inference_signature_wrapper_377092lstm_240_input"
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
-__inference_lstm_cell_60_layer_call_fn_379884
-__inference_lstm_cell_60_layer_call_fn_379901?
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
H__inference_lstm_cell_60_layer_call_and_return_conditional_losses_379933
H__inference_lstm_cell_60_layer_call_and_return_conditional_losses_379965?
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
-__inference_lstm_cell_61_layer_call_fn_379982
-__inference_lstm_cell_61_layer_call_fn_379999?
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
H__inference_lstm_cell_61_layer_call_and_return_conditional_losses_380031
H__inference_lstm_cell_61_layer_call_and_return_conditional_losses_380063?
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
-__inference_lstm_cell_62_layer_call_fn_380080
-__inference_lstm_cell_62_layer_call_fn_380097?
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
H__inference_lstm_cell_62_layer_call_and_return_conditional_losses_380129
H__inference_lstm_cell_62_layer_call_and_return_conditional_losses_380161?
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
 ¤
!__inference__wrapped_model_374832-./012345!";˘8
1˘.
,)
lstm_240_input˙˙˙˙˙˙˙˙˙
Ş "3Ş0
.
dense_80"
dense_80˙˙˙˙˙˙˙˙˙¤
D__inference_dense_80_layer_call_and_return_conditional_losses_379867\!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 |
)__inference_dense_80_layer_call_fn_379857O!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "˙˙˙˙˙˙˙˙˙Ó
D__inference_lstm_240_layer_call_and_return_conditional_losses_378187-./O˘L
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
D__inference_lstm_240_layer_call_and_return_conditional_losses_378330-./O˘L
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
D__inference_lstm_240_layer_call_and_return_conditional_losses_378473q-./?˘<
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
D__inference_lstm_240_layer_call_and_return_conditional_losses_378616q-./?˘<
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
)__inference_lstm_240_layer_call_fn_378011}-./O˘L
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
)__inference_lstm_240_layer_call_fn_378022}-./O˘L
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
)__inference_lstm_240_layer_call_fn_378033d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙d
)__inference_lstm_240_layer_call_fn_378044d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p

 
Ş "˙˙˙˙˙˙˙˙˙dÓ
D__inference_lstm_241_layer_call_and_return_conditional_losses_378803012O˘L
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
D__inference_lstm_241_layer_call_and_return_conditional_losses_378946012O˘L
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
D__inference_lstm_241_layer_call_and_return_conditional_losses_379089q012?˘<
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
D__inference_lstm_241_layer_call_and_return_conditional_losses_379232q012?˘<
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
)__inference_lstm_241_layer_call_fn_378627}012O˘L
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
)__inference_lstm_241_layer_call_fn_378638}012O˘L
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
)__inference_lstm_241_layer_call_fn_378649d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙2
)__inference_lstm_241_layer_call_fn_378660d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p

 
Ş "˙˙˙˙˙˙˙˙˙2Ċ
D__inference_lstm_242_layer_call_and_return_conditional_losses_379419}345O˘L
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
D__inference_lstm_242_layer_call_and_return_conditional_losses_379562}345O˘L
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
D__inference_lstm_242_layer_call_and_return_conditional_losses_379705m345?˘<
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
D__inference_lstm_242_layer_call_and_return_conditional_losses_379848m345?˘<
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
)__inference_lstm_242_layer_call_fn_379243p345O˘L
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
)__inference_lstm_242_layer_call_fn_379254p345O˘L
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
)__inference_lstm_242_layer_call_fn_379265`345?˘<
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
)__inference_lstm_242_layer_call_fn_379276`345?˘<
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
H__inference_lstm_cell_60_layer_call_and_return_conditional_losses_379933ŭ-./˘}
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
H__inference_lstm_cell_60_layer_call_and_return_conditional_losses_379965ŭ-./˘}
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
-__inference_lstm_cell_60_layer_call_fn_379884í-./˘}
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
-__inference_lstm_cell_60_layer_call_fn_379901í-./˘}
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
H__inference_lstm_cell_61_layer_call_and_return_conditional_losses_380031ŭ012˘}
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
H__inference_lstm_cell_61_layer_call_and_return_conditional_losses_380063ŭ012˘}
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
-__inference_lstm_cell_61_layer_call_fn_379982í012˘}
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
-__inference_lstm_cell_61_layer_call_fn_379999í012˘}
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
H__inference_lstm_cell_62_layer_call_and_return_conditional_losses_380129ŭ345˘}
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
H__inference_lstm_cell_62_layer_call_and_return_conditional_losses_380161ŭ345˘}
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
-__inference_lstm_cell_62_layer_call_fn_380080í345˘}
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
-__inference_lstm_cell_62_layer_call_fn_380097í345˘}
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
Ĉ
I__inference_sequential_80_layer_call_and_return_conditional_losses_377027y-./012345!"C˘@
9˘6
,)
lstm_240_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ĉ
I__inference_sequential_80_layer_call_and_return_conditional_losses_377057y-./012345!"C˘@
9˘6
,)
lstm_240_input˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ?
I__inference_sequential_80_layer_call_and_return_conditional_losses_377573q-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ?
I__inference_sequential_80_layer_call_and_return_conditional_losses_378000q-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 
.__inference_sequential_80_layer_call_fn_376381l-./012345!"C˘@
9˘6
,)
lstm_240_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_80_layer_call_fn_376997l-./012345!"C˘@
9˘6
,)
lstm_240_input˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_80_layer_call_fn_377119d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_80_layer_call_fn_377146d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙ş
$__inference_signature_wrapper_377092-./012345!"M˘J
˘ 
CŞ@
>
lstm_240_input,)
lstm_240_input˙˙˙˙˙˙˙˙˙"3Ş0
.
dense_80"
dense_80˙˙˙˙˙˙˙˙˙