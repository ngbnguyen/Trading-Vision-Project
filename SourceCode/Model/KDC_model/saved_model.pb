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
dense_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_47/kernel
s
#dense_47/kernel/Read/ReadVariableOpReadVariableOpdense_47/kernel*
_output_shapes

:
*
dtype0
r
dense_47/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_47/bias
k
!dense_47/bias/Read/ReadVariableOpReadVariableOpdense_47/bias*
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
lstm_141/lstm_cell_141/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*.
shared_namelstm_141/lstm_cell_141/kernel

1lstm_141/lstm_cell_141/kernel/Read/ReadVariableOpReadVariableOplstm_141/lstm_cell_141/kernel*
_output_shapes
:	*
dtype0
Ğ
'lstm_141/lstm_cell_141/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*8
shared_name)'lstm_141/lstm_cell_141/recurrent_kernel
¤
;lstm_141/lstm_cell_141/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_141/lstm_cell_141/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_141/lstm_cell_141/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelstm_141/lstm_cell_141/bias

/lstm_141/lstm_cell_141/bias/Read/ReadVariableOpReadVariableOplstm_141/lstm_cell_141/bias*
_output_shapes	
:*
dtype0

lstm_142/lstm_cell_142/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*.
shared_namelstm_142/lstm_cell_142/kernel

1lstm_142/lstm_cell_142/kernel/Read/ReadVariableOpReadVariableOplstm_142/lstm_cell_142/kernel*
_output_shapes
:	dÈ*
dtype0
Ğ
'lstm_142/lstm_cell_142/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*8
shared_name)'lstm_142/lstm_cell_142/recurrent_kernel
¤
;lstm_142/lstm_cell_142/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_142/lstm_cell_142/recurrent_kernel*
_output_shapes
:	2È*
dtype0

lstm_142/lstm_cell_142/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*,
shared_namelstm_142/lstm_cell_142/bias

/lstm_142/lstm_cell_142/bias/Read/ReadVariableOpReadVariableOplstm_142/lstm_cell_142/bias*
_output_shapes	
:È*
dtype0

lstm_143/lstm_cell_143/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_143/lstm_cell_143/kernel

1lstm_143/lstm_cell_143/kernel/Read/ReadVariableOpReadVariableOplstm_143/lstm_cell_143/kernel*
_output_shapes

:2(*
dtype0
Ş
'lstm_143/lstm_cell_143/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_143/lstm_cell_143/recurrent_kernel
£
;lstm_143/lstm_cell_143/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_143/lstm_cell_143/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_143/lstm_cell_143/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_143/lstm_cell_143/bias

/lstm_143/lstm_cell_143/bias/Read/ReadVariableOpReadVariableOplstm_143/lstm_cell_143/bias*
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
Adam/dense_47/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_47/kernel/m

*Adam/dense_47/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_47/kernel/m*
_output_shapes

:
*
dtype0

Adam/dense_47/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_47/bias/m
y
(Adam/dense_47/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_47/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_141/lstm_cell_141/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_141/lstm_cell_141/kernel/m

8Adam/lstm_141/lstm_cell_141/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_141/lstm_cell_141/kernel/m*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_141/lstm_cell_141/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_141/lstm_cell_141/recurrent_kernel/m
²
BAdam/lstm_141/lstm_cell_141/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_141/lstm_cell_141/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

"Adam/lstm_141/lstm_cell_141/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_141/lstm_cell_141/bias/m

6Adam/lstm_141/lstm_cell_141/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_141/lstm_cell_141/bias/m*
_output_shapes	
:*
dtype0
?
$Adam/lstm_142/lstm_cell_142/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_142/lstm_cell_142/kernel/m

8Adam/lstm_142/lstm_cell_142/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_142/lstm_cell_142/kernel/m*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_142/lstm_cell_142/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_142/lstm_cell_142/recurrent_kernel/m
²
BAdam/lstm_142/lstm_cell_142/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_142/lstm_cell_142/recurrent_kernel/m*
_output_shapes
:	2È*
dtype0

"Adam/lstm_142/lstm_cell_142/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_142/lstm_cell_142/bias/m

6Adam/lstm_142/lstm_cell_142/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_142/lstm_cell_142/bias/m*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_143/lstm_cell_143/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_143/lstm_cell_143/kernel/m

8Adam/lstm_143/lstm_cell_143/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_143/lstm_cell_143/kernel/m*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_143/lstm_cell_143/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_143/lstm_cell_143/recurrent_kernel/m
ħ
BAdam/lstm_143/lstm_cell_143/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_143/lstm_cell_143/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

"Adam/lstm_143/lstm_cell_143/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_143/lstm_cell_143/bias/m

6Adam/lstm_143/lstm_cell_143/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_143/lstm_cell_143/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_47/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_47/kernel/v

*Adam/dense_47/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_47/kernel/v*
_output_shapes

:
*
dtype0

Adam/dense_47/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_47/bias/v
y
(Adam/dense_47/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_47/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_141/lstm_cell_141/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_141/lstm_cell_141/kernel/v

8Adam/lstm_141/lstm_cell_141/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_141/lstm_cell_141/kernel/v*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_141/lstm_cell_141/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_141/lstm_cell_141/recurrent_kernel/v
²
BAdam/lstm_141/lstm_cell_141/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_141/lstm_cell_141/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

"Adam/lstm_141/lstm_cell_141/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_141/lstm_cell_141/bias/v

6Adam/lstm_141/lstm_cell_141/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_141/lstm_cell_141/bias/v*
_output_shapes	
:*
dtype0
?
$Adam/lstm_142/lstm_cell_142/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_142/lstm_cell_142/kernel/v

8Adam/lstm_142/lstm_cell_142/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_142/lstm_cell_142/kernel/v*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_142/lstm_cell_142/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_142/lstm_cell_142/recurrent_kernel/v
²
BAdam/lstm_142/lstm_cell_142/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_142/lstm_cell_142/recurrent_kernel/v*
_output_shapes
:	2È*
dtype0

"Adam/lstm_142/lstm_cell_142/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_142/lstm_cell_142/bias/v

6Adam/lstm_142/lstm_cell_142/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_142/lstm_cell_142/bias/v*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_143/lstm_cell_143/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_143/lstm_cell_143/kernel/v

8Adam/lstm_143/lstm_cell_143/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_143/lstm_cell_143/kernel/v*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_143/lstm_cell_143/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_143/lstm_cell_143/recurrent_kernel/v
ħ
BAdam/lstm_143/lstm_cell_143/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_143/lstm_cell_143/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

"Adam/lstm_143/lstm_cell_143/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_143/lstm_cell_143/bias/v

6Adam/lstm_143/lstm_cell_143/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_143/lstm_cell_143/bias/v*
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
VARIABLE_VALUEdense_47/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_47/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_141/lstm_cell_141/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_141/lstm_cell_141/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_141/lstm_cell_141/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_142/lstm_cell_142/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_142/lstm_cell_142/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_142/lstm_cell_142/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_143/lstm_cell_143/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_143/lstm_cell_143/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_143/lstm_cell_143/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_47/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_47/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_141/lstm_cell_141/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_141/lstm_cell_141/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_141/lstm_cell_141/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_142/lstm_cell_142/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_142/lstm_cell_142/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_142/lstm_cell_142/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_143/lstm_cell_143/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_143/lstm_cell_143/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_143/lstm_cell_143/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_47/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_47/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_141/lstm_cell_141/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_141/lstm_cell_141/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_141/lstm_cell_141/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_142/lstm_cell_142/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_142/lstm_cell_142/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_142/lstm_cell_142/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_143/lstm_cell_143/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_143/lstm_cell_143/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_143/lstm_cell_143/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_141_inputPlaceholder*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0* 
shape:˙˙˙˙˙˙˙˙˙

StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_141_inputlstm_141/lstm_cell_141/kernel'lstm_141/lstm_cell_141/recurrent_kernellstm_141/lstm_cell_141/biaslstm_142/lstm_cell_142/kernel'lstm_142/lstm_cell_142/recurrent_kernellstm_142/lstm_cell_142/biaslstm_143/lstm_cell_143/kernel'lstm_143/lstm_cell_143/recurrent_kernellstm_143/lstm_cell_143/biasdense_47/kerneldense_47/bias*
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
$__inference_signature_wrapper_214287
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
½
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_47/kernel/Read/ReadVariableOp!dense_47/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_141/lstm_cell_141/kernel/Read/ReadVariableOp;lstm_141/lstm_cell_141/recurrent_kernel/Read/ReadVariableOp/lstm_141/lstm_cell_141/bias/Read/ReadVariableOp1lstm_142/lstm_cell_142/kernel/Read/ReadVariableOp;lstm_142/lstm_cell_142/recurrent_kernel/Read/ReadVariableOp/lstm_142/lstm_cell_142/bias/Read/ReadVariableOp1lstm_143/lstm_cell_143/kernel/Read/ReadVariableOp;lstm_143/lstm_cell_143/recurrent_kernel/Read/ReadVariableOp/lstm_143/lstm_cell_143/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_47/kernel/m/Read/ReadVariableOp(Adam/dense_47/bias/m/Read/ReadVariableOp8Adam/lstm_141/lstm_cell_141/kernel/m/Read/ReadVariableOpBAdam/lstm_141/lstm_cell_141/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_141/lstm_cell_141/bias/m/Read/ReadVariableOp8Adam/lstm_142/lstm_cell_142/kernel/m/Read/ReadVariableOpBAdam/lstm_142/lstm_cell_142/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_142/lstm_cell_142/bias/m/Read/ReadVariableOp8Adam/lstm_143/lstm_cell_143/kernel/m/Read/ReadVariableOpBAdam/lstm_143/lstm_cell_143/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_143/lstm_cell_143/bias/m/Read/ReadVariableOp*Adam/dense_47/kernel/v/Read/ReadVariableOp(Adam/dense_47/bias/v/Read/ReadVariableOp8Adam/lstm_141/lstm_cell_141/kernel/v/Read/ReadVariableOpBAdam/lstm_141/lstm_cell_141/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_141/lstm_cell_141/bias/v/Read/ReadVariableOp8Adam/lstm_142/lstm_cell_142/kernel/v/Read/ReadVariableOpBAdam/lstm_142/lstm_cell_142/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_142/lstm_cell_142/bias/v/Read/ReadVariableOp8Adam/lstm_143/lstm_cell_143/kernel/v/Read/ReadVariableOpBAdam/lstm_143/lstm_cell_143/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_143/lstm_cell_143/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_217499

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_47/kerneldense_47/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_141/lstm_cell_141/kernel'lstm_141/lstm_cell_141/recurrent_kernellstm_141/lstm_cell_141/biaslstm_142/lstm_cell_142/kernel'lstm_142/lstm_cell_142/recurrent_kernellstm_142/lstm_cell_142/biaslstm_143/lstm_cell_143/kernel'lstm_143/lstm_cell_143/recurrent_kernellstm_143/lstm_cell_143/biastotalcountAdam/dense_47/kernel/mAdam/dense_47/bias/m$Adam/lstm_141/lstm_cell_141/kernel/m.Adam/lstm_141/lstm_cell_141/recurrent_kernel/m"Adam/lstm_141/lstm_cell_141/bias/m$Adam/lstm_142/lstm_cell_142/kernel/m.Adam/lstm_142/lstm_cell_142/recurrent_kernel/m"Adam/lstm_142/lstm_cell_142/bias/m$Adam/lstm_143/lstm_cell_143/kernel/m.Adam/lstm_143/lstm_cell_143/recurrent_kernel/m"Adam/lstm_143/lstm_cell_143/bias/mAdam/dense_47/kernel/vAdam/dense_47/bias/v$Adam/lstm_141/lstm_cell_141/kernel/v.Adam/lstm_141/lstm_cell_141/recurrent_kernel/v"Adam/lstm_141/lstm_cell_141/bias/v$Adam/lstm_142/lstm_cell_142/kernel/v.Adam/lstm_142/lstm_cell_142/recurrent_kernel/v"Adam/lstm_142/lstm_cell_142/bias/v$Adam/lstm_143/lstm_cell_143/kernel/v.Adam/lstm_143/lstm_cell_143/recurrent_kernel/v"Adam/lstm_143/lstm_cell_143/bias/v*4
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
"__inference__traced_restore_217629½Ó+
²

÷
lstm_141_while_cond_214399.
*lstm_141_while_lstm_141_while_loop_counter4
0lstm_141_while_lstm_141_while_maximum_iterations
lstm_141_while_placeholder 
lstm_141_while_placeholder_1 
lstm_141_while_placeholder_2 
lstm_141_while_placeholder_30
,lstm_141_while_less_lstm_141_strided_slice_1F
Blstm_141_while_lstm_141_while_cond_214399___redundant_placeholder0F
Blstm_141_while_lstm_141_while_cond_214399___redundant_placeholder1F
Blstm_141_while_lstm_141_while_cond_214399___redundant_placeholder2F
Blstm_141_while_lstm_141_while_cond_214399___redundant_placeholder3
lstm_141_while_identity

lstm_141/while/LessLesslstm_141_while_placeholder,lstm_141_while_less_lstm_141_strided_slice_1*
T0*
_output_shapes
: ]
lstm_141/while/IdentityIdentitylstm_141/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_141_while_identity lstm_141/while/Identity:output:0*(
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
˙µ
Á
!__inference__wrapped_model_212027
lstm_141_inputU
Bsequential_47_lstm_141_lstm_cell_33_matmul_readvariableop_resource:	W
Dsequential_47_lstm_141_lstm_cell_33_matmul_1_readvariableop_resource:	dR
Csequential_47_lstm_141_lstm_cell_33_biasadd_readvariableop_resource:	U
Bsequential_47_lstm_142_lstm_cell_34_matmul_readvariableop_resource:	dÈW
Dsequential_47_lstm_142_lstm_cell_34_matmul_1_readvariableop_resource:	2ÈR
Csequential_47_lstm_142_lstm_cell_34_biasadd_readvariableop_resource:	ÈT
Bsequential_47_lstm_143_lstm_cell_35_matmul_readvariableop_resource:2(V
Dsequential_47_lstm_143_lstm_cell_35_matmul_1_readvariableop_resource:
(Q
Csequential_47_lstm_143_lstm_cell_35_biasadd_readvariableop_resource:(G
5sequential_47_dense_47_matmul_readvariableop_resource:
D
6sequential_47_dense_47_biasadd_readvariableop_resource:
identity˘-sequential_47/dense_47/BiasAdd/ReadVariableOp˘,sequential_47/dense_47/MatMul/ReadVariableOp˘:sequential_47/lstm_141/lstm_cell_33/BiasAdd/ReadVariableOp˘9sequential_47/lstm_141/lstm_cell_33/MatMul/ReadVariableOp˘;sequential_47/lstm_141/lstm_cell_33/MatMul_1/ReadVariableOp˘sequential_47/lstm_141/while˘:sequential_47/lstm_142/lstm_cell_34/BiasAdd/ReadVariableOp˘9sequential_47/lstm_142/lstm_cell_34/MatMul/ReadVariableOp˘;sequential_47/lstm_142/lstm_cell_34/MatMul_1/ReadVariableOp˘sequential_47/lstm_142/while˘:sequential_47/lstm_143/lstm_cell_35/BiasAdd/ReadVariableOp˘9sequential_47/lstm_143/lstm_cell_35/MatMul/ReadVariableOp˘;sequential_47/lstm_143/lstm_cell_35/MatMul_1/ReadVariableOp˘sequential_47/lstm_143/whileZ
sequential_47/lstm_141/ShapeShapelstm_141_input*
T0*
_output_shapes
:t
*sequential_47/lstm_141/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_47/lstm_141/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_47/lstm_141/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_47/lstm_141/strided_sliceStridedSlice%sequential_47/lstm_141/Shape:output:03sequential_47/lstm_141/strided_slice/stack:output:05sequential_47/lstm_141/strided_slice/stack_1:output:05sequential_47/lstm_141/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_47/lstm_141/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d¸
#sequential_47/lstm_141/zeros/packedPack-sequential_47/lstm_141/strided_slice:output:0.sequential_47/lstm_141/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_47/lstm_141/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_47/lstm_141/zerosFill,sequential_47/lstm_141/zeros/packed:output:0+sequential_47/lstm_141/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙di
'sequential_47/lstm_141/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dĵ
%sequential_47/lstm_141/zeros_1/packedPack-sequential_47/lstm_141/strided_slice:output:00sequential_47/lstm_141/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_47/lstm_141/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_47/lstm_141/zeros_1Fill.sequential_47/lstm_141/zeros_1/packed:output:0-sequential_47/lstm_141/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
%sequential_47/lstm_141/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          £
 sequential_47/lstm_141/transpose	Transposelstm_141_input.sequential_47/lstm_141/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙r
sequential_47/lstm_141/Shape_1Shape$sequential_47/lstm_141/transpose:y:0*
T0*
_output_shapes
:v
,sequential_47/lstm_141/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_47/lstm_141/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_47/lstm_141/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_47/lstm_141/strided_slice_1StridedSlice'sequential_47/lstm_141/Shape_1:output:05sequential_47/lstm_141/strided_slice_1/stack:output:07sequential_47/lstm_141/strided_slice_1/stack_1:output:07sequential_47/lstm_141/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_47/lstm_141/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_47/lstm_141/TensorArrayV2TensorListReserve;sequential_47/lstm_141/TensorArrayV2/element_shape:output:0/sequential_47/lstm_141/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_47/lstm_141/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ?
>sequential_47/lstm_141/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_47/lstm_141/transpose:y:0Usequential_47/lstm_141/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_47/lstm_141/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_47/lstm_141/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_47/lstm_141/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_47/lstm_141/strided_slice_2StridedSlice$sequential_47/lstm_141/transpose:y:05sequential_47/lstm_141/strided_slice_2/stack:output:07sequential_47/lstm_141/strided_slice_2/stack_1:output:07sequential_47/lstm_141/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask½
9sequential_47/lstm_141/lstm_cell_33/MatMul/ReadVariableOpReadVariableOpBsequential_47_lstm_141_lstm_cell_33_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Û
*sequential_47/lstm_141/lstm_cell_33/MatMulMatMul/sequential_47/lstm_141/strided_slice_2:output:0Asequential_47/lstm_141/lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
;sequential_47/lstm_141/lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOpDsequential_47_lstm_141_lstm_cell_33_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ġ
,sequential_47/lstm_141/lstm_cell_33/MatMul_1MatMul%sequential_47/lstm_141/zeros:output:0Csequential_47/lstm_141/lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ñ
'sequential_47/lstm_141/lstm_cell_33/addAddV24sequential_47/lstm_141/lstm_cell_33/MatMul:product:06sequential_47/lstm_141/lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ğ
:sequential_47/lstm_141/lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOpCsequential_47_lstm_141_lstm_cell_33_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ú
+sequential_47/lstm_141/lstm_cell_33/BiasAddBiasAdd+sequential_47/lstm_141/lstm_cell_33/add:z:0Bsequential_47/lstm_141/lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
3sequential_47/lstm_141/lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_47/lstm_141/lstm_cell_33/splitSplit<sequential_47/lstm_141/lstm_cell_33/split/split_dim:output:04sequential_47/lstm_141/lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
+sequential_47/lstm_141/lstm_cell_33/SigmoidSigmoid2sequential_47/lstm_141/lstm_cell_33/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
-sequential_47/lstm_141/lstm_cell_33/Sigmoid_1Sigmoid2sequential_47/lstm_141/lstm_cell_33/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĵ
'sequential_47/lstm_141/lstm_cell_33/mulMul1sequential_47/lstm_141/lstm_cell_33/Sigmoid_1:y:0'sequential_47/lstm_141/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
(sequential_47/lstm_141/lstm_cell_33/ReluRelu2sequential_47/lstm_141/lstm_cell_33/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dË
)sequential_47/lstm_141/lstm_cell_33/mul_1Mul/sequential_47/lstm_141/lstm_cell_33/Sigmoid:y:06sequential_47/lstm_141/lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÀ
)sequential_47/lstm_141/lstm_cell_33/add_1AddV2+sequential_47/lstm_141/lstm_cell_33/mul:z:0-sequential_47/lstm_141/lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
-sequential_47/lstm_141/lstm_cell_33/Sigmoid_2Sigmoid2sequential_47/lstm_141/lstm_cell_33/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
*sequential_47/lstm_141/lstm_cell_33/Relu_1Relu-sequential_47/lstm_141/lstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÏ
)sequential_47/lstm_141/lstm_cell_33/mul_2Mul1sequential_47/lstm_141/lstm_cell_33/Sigmoid_2:y:08sequential_47/lstm_141/lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
4sequential_47/lstm_141/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ŭ
&sequential_47/lstm_141/TensorArrayV2_1TensorListReserve=sequential_47/lstm_141/TensorArrayV2_1/element_shape:output:0/sequential_47/lstm_141/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_47/lstm_141/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_47/lstm_141/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_47/lstm_141/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_47/lstm_141/whileWhile2sequential_47/lstm_141/while/loop_counter:output:08sequential_47/lstm_141/while/maximum_iterations:output:0$sequential_47/lstm_141/time:output:0/sequential_47/lstm_141/TensorArrayV2_1:handle:0%sequential_47/lstm_141/zeros:output:0'sequential_47/lstm_141/zeros_1:output:0/sequential_47/lstm_141/strided_slice_1:output:0Nsequential_47/lstm_141/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_47_lstm_141_lstm_cell_33_matmul_readvariableop_resourceDsequential_47_lstm_141_lstm_cell_33_matmul_1_readvariableop_resourceCsequential_47_lstm_141_lstm_cell_33_biasadd_readvariableop_resource*
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
(sequential_47_lstm_141_while_body_211659*4
cond,R*
(sequential_47_lstm_141_while_cond_211658*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
Gsequential_47/lstm_141/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
9sequential_47/lstm_141/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_47/lstm_141/while:output:3Psequential_47/lstm_141/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
,sequential_47/lstm_141/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_47/lstm_141/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_47/lstm_141/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_47/lstm_141/strided_slice_3StridedSliceBsequential_47/lstm_141/TensorArrayV2Stack/TensorListStack:tensor:05sequential_47/lstm_141/strided_slice_3/stack:output:07sequential_47/lstm_141/strided_slice_3/stack_1:output:07sequential_47/lstm_141/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask|
'sequential_47/lstm_141/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_47/lstm_141/transpose_1	TransposeBsequential_47/lstm_141/TensorArrayV2Stack/TensorListStack:tensor:00sequential_47/lstm_141/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dr
sequential_47/lstm_141/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_47/lstm_142/ShapeShape&sequential_47/lstm_141/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_47/lstm_142/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_47/lstm_142/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_47/lstm_142/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_47/lstm_142/strided_sliceStridedSlice%sequential_47/lstm_142/Shape:output:03sequential_47/lstm_142/strided_slice/stack:output:05sequential_47/lstm_142/strided_slice/stack_1:output:05sequential_47/lstm_142/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_47/lstm_142/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2¸
#sequential_47/lstm_142/zeros/packedPack-sequential_47/lstm_142/strided_slice:output:0.sequential_47/lstm_142/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_47/lstm_142/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_47/lstm_142/zerosFill,sequential_47/lstm_142/zeros/packed:output:0+sequential_47/lstm_142/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2i
'sequential_47/lstm_142/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ĵ
%sequential_47/lstm_142/zeros_1/packedPack-sequential_47/lstm_142/strided_slice:output:00sequential_47/lstm_142/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_47/lstm_142/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_47/lstm_142/zeros_1Fill.sequential_47/lstm_142/zeros_1/packed:output:0-sequential_47/lstm_142/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
%sequential_47/lstm_142/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ğ
 sequential_47/lstm_142/transpose	Transpose&sequential_47/lstm_141/transpose_1:y:0.sequential_47/lstm_142/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dr
sequential_47/lstm_142/Shape_1Shape$sequential_47/lstm_142/transpose:y:0*
T0*
_output_shapes
:v
,sequential_47/lstm_142/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_47/lstm_142/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_47/lstm_142/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_47/lstm_142/strided_slice_1StridedSlice'sequential_47/lstm_142/Shape_1:output:05sequential_47/lstm_142/strided_slice_1/stack:output:07sequential_47/lstm_142/strided_slice_1/stack_1:output:07sequential_47/lstm_142/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_47/lstm_142/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_47/lstm_142/TensorArrayV2TensorListReserve;sequential_47/lstm_142/TensorArrayV2/element_shape:output:0/sequential_47/lstm_142/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_47/lstm_142/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ?
>sequential_47/lstm_142/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_47/lstm_142/transpose:y:0Usequential_47/lstm_142/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_47/lstm_142/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_47/lstm_142/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_47/lstm_142/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_47/lstm_142/strided_slice_2StridedSlice$sequential_47/lstm_142/transpose:y:05sequential_47/lstm_142/strided_slice_2/stack:output:07sequential_47/lstm_142/strided_slice_2/stack_1:output:07sequential_47/lstm_142/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask½
9sequential_47/lstm_142/lstm_cell_34/MatMul/ReadVariableOpReadVariableOpBsequential_47_lstm_142_lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0Û
*sequential_47/lstm_142/lstm_cell_34/MatMulMatMul/sequential_47/lstm_142/strided_slice_2:output:0Asequential_47/lstm_142/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÁ
;sequential_47/lstm_142/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOpDsequential_47_lstm_142_lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ġ
,sequential_47/lstm_142/lstm_cell_34/MatMul_1MatMul%sequential_47/lstm_142/zeros:output:0Csequential_47/lstm_142/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÑ
'sequential_47/lstm_142/lstm_cell_34/addAddV24sequential_47/lstm_142/lstm_cell_34/MatMul:product:06sequential_47/lstm_142/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èğ
:sequential_47/lstm_142/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOpCsequential_47_lstm_142_lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0Ú
+sequential_47/lstm_142/lstm_cell_34/BiasAddBiasAdd+sequential_47/lstm_142/lstm_cell_34/add:z:0Bsequential_47/lstm_142/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èu
3sequential_47/lstm_142/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_47/lstm_142/lstm_cell_34/splitSplit<sequential_47/lstm_142/lstm_cell_34/split/split_dim:output:04sequential_47/lstm_142/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
+sequential_47/lstm_142/lstm_cell_34/SigmoidSigmoid2sequential_47/lstm_142/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
-sequential_47/lstm_142/lstm_cell_34/Sigmoid_1Sigmoid2sequential_47/lstm_142/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ĵ
'sequential_47/lstm_142/lstm_cell_34/mulMul1sequential_47/lstm_142/lstm_cell_34/Sigmoid_1:y:0'sequential_47/lstm_142/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
(sequential_47/lstm_142/lstm_cell_34/ReluRelu2sequential_47/lstm_142/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ë
)sequential_47/lstm_142/lstm_cell_34/mul_1Mul/sequential_47/lstm_142/lstm_cell_34/Sigmoid:y:06sequential_47/lstm_142/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2À
)sequential_47/lstm_142/lstm_cell_34/add_1AddV2+sequential_47/lstm_142/lstm_cell_34/mul:z:0-sequential_47/lstm_142/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
-sequential_47/lstm_142/lstm_cell_34/Sigmoid_2Sigmoid2sequential_47/lstm_142/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
*sequential_47/lstm_142/lstm_cell_34/Relu_1Relu-sequential_47/lstm_142/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ï
)sequential_47/lstm_142/lstm_cell_34/mul_2Mul1sequential_47/lstm_142/lstm_cell_34/Sigmoid_2:y:08sequential_47/lstm_142/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
4sequential_47/lstm_142/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ŭ
&sequential_47/lstm_142/TensorArrayV2_1TensorListReserve=sequential_47/lstm_142/TensorArrayV2_1/element_shape:output:0/sequential_47/lstm_142/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_47/lstm_142/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_47/lstm_142/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_47/lstm_142/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_47/lstm_142/whileWhile2sequential_47/lstm_142/while/loop_counter:output:08sequential_47/lstm_142/while/maximum_iterations:output:0$sequential_47/lstm_142/time:output:0/sequential_47/lstm_142/TensorArrayV2_1:handle:0%sequential_47/lstm_142/zeros:output:0'sequential_47/lstm_142/zeros_1:output:0/sequential_47/lstm_142/strided_slice_1:output:0Nsequential_47/lstm_142/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_47_lstm_142_lstm_cell_34_matmul_readvariableop_resourceDsequential_47_lstm_142_lstm_cell_34_matmul_1_readvariableop_resourceCsequential_47_lstm_142_lstm_cell_34_biasadd_readvariableop_resource*
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
(sequential_47_lstm_142_while_body_211798*4
cond,R*
(sequential_47_lstm_142_while_cond_211797*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
Gsequential_47/lstm_142/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
9sequential_47/lstm_142/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_47/lstm_142/while:output:3Psequential_47/lstm_142/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
,sequential_47/lstm_142/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_47/lstm_142/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_47/lstm_142/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_47/lstm_142/strided_slice_3StridedSliceBsequential_47/lstm_142/TensorArrayV2Stack/TensorListStack:tensor:05sequential_47/lstm_142/strided_slice_3/stack:output:07sequential_47/lstm_142/strided_slice_3/stack_1:output:07sequential_47/lstm_142/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask|
'sequential_47/lstm_142/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_47/lstm_142/transpose_1	TransposeBsequential_47/lstm_142/TensorArrayV2Stack/TensorListStack:tensor:00sequential_47/lstm_142/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2r
sequential_47/lstm_142/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_47/lstm_143/ShapeShape&sequential_47/lstm_142/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_47/lstm_143/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_47/lstm_143/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_47/lstm_143/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_47/lstm_143/strided_sliceStridedSlice%sequential_47/lstm_143/Shape:output:03sequential_47/lstm_143/strided_slice/stack:output:05sequential_47/lstm_143/strided_slice/stack_1:output:05sequential_47/lstm_143/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_47/lstm_143/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
¸
#sequential_47/lstm_143/zeros/packedPack-sequential_47/lstm_143/strided_slice:output:0.sequential_47/lstm_143/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_47/lstm_143/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_47/lstm_143/zerosFill,sequential_47/lstm_143/zeros/packed:output:0+sequential_47/lstm_143/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
'sequential_47/lstm_143/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ĵ
%sequential_47/lstm_143/zeros_1/packedPack-sequential_47/lstm_143/strided_slice:output:00sequential_47/lstm_143/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_47/lstm_143/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_47/lstm_143/zeros_1Fill.sequential_47/lstm_143/zeros_1/packed:output:0-sequential_47/lstm_143/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
%sequential_47/lstm_143/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ğ
 sequential_47/lstm_143/transpose	Transpose&sequential_47/lstm_142/transpose_1:y:0.sequential_47/lstm_143/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2r
sequential_47/lstm_143/Shape_1Shape$sequential_47/lstm_143/transpose:y:0*
T0*
_output_shapes
:v
,sequential_47/lstm_143/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_47/lstm_143/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_47/lstm_143/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_47/lstm_143/strided_slice_1StridedSlice'sequential_47/lstm_143/Shape_1:output:05sequential_47/lstm_143/strided_slice_1/stack:output:07sequential_47/lstm_143/strided_slice_1/stack_1:output:07sequential_47/lstm_143/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_47/lstm_143/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_47/lstm_143/TensorArrayV2TensorListReserve;sequential_47/lstm_143/TensorArrayV2/element_shape:output:0/sequential_47/lstm_143/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_47/lstm_143/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ?
>sequential_47/lstm_143/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_47/lstm_143/transpose:y:0Usequential_47/lstm_143/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_47/lstm_143/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_47/lstm_143/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_47/lstm_143/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_47/lstm_143/strided_slice_2StridedSlice$sequential_47/lstm_143/transpose:y:05sequential_47/lstm_143/strided_slice_2/stack:output:07sequential_47/lstm_143/strided_slice_2/stack_1:output:07sequential_47/lstm_143/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskĵ
9sequential_47/lstm_143/lstm_cell_35/MatMul/ReadVariableOpReadVariableOpBsequential_47_lstm_143_lstm_cell_35_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ú
*sequential_47/lstm_143/lstm_cell_35/MatMulMatMul/sequential_47/lstm_143/strided_slice_2:output:0Asequential_47/lstm_143/lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(À
;sequential_47/lstm_143/lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOpDsequential_47_lstm_143_lstm_cell_35_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ô
,sequential_47/lstm_143/lstm_cell_35/MatMul_1MatMul%sequential_47/lstm_143/zeros:output:0Csequential_47/lstm_143/lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(?
'sequential_47/lstm_143/lstm_cell_35/addAddV24sequential_47/lstm_143/lstm_cell_35/MatMul:product:06sequential_47/lstm_143/lstm_cell_35/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(ş
:sequential_47/lstm_143/lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOpCsequential_47_lstm_143_lstm_cell_35_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ù
+sequential_47/lstm_143/lstm_cell_35/BiasAddBiasAdd+sequential_47/lstm_143/lstm_cell_35/add:z:0Bsequential_47/lstm_143/lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(u
3sequential_47/lstm_143/lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_47/lstm_143/lstm_cell_35/splitSplit<sequential_47/lstm_143/lstm_cell_35/split/split_dim:output:04sequential_47/lstm_143/lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
+sequential_47/lstm_143/lstm_cell_35/SigmoidSigmoid2sequential_47/lstm_143/lstm_cell_35/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

-sequential_47/lstm_143/lstm_cell_35/Sigmoid_1Sigmoid2sequential_47/lstm_143/lstm_cell_35/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĵ
'sequential_47/lstm_143/lstm_cell_35/mulMul1sequential_47/lstm_143/lstm_cell_35/Sigmoid_1:y:0'sequential_47/lstm_143/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

(sequential_47/lstm_143/lstm_cell_35/ReluRelu2sequential_47/lstm_143/lstm_cell_35/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ë
)sequential_47/lstm_143/lstm_cell_35/mul_1Mul/sequential_47/lstm_143/lstm_cell_35/Sigmoid:y:06sequential_47/lstm_143/lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
À
)sequential_47/lstm_143/lstm_cell_35/add_1AddV2+sequential_47/lstm_143/lstm_cell_35/mul:z:0-sequential_47/lstm_143/lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

-sequential_47/lstm_143/lstm_cell_35/Sigmoid_2Sigmoid2sequential_47/lstm_143/lstm_cell_35/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

*sequential_47/lstm_143/lstm_cell_35/Relu_1Relu-sequential_47/lstm_143/lstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ï
)sequential_47/lstm_143/lstm_cell_35/mul_2Mul1sequential_47/lstm_143/lstm_cell_35/Sigmoid_2:y:08sequential_47/lstm_143/lstm_cell_35/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

4sequential_47/lstm_143/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ŭ
&sequential_47/lstm_143/TensorArrayV2_1TensorListReserve=sequential_47/lstm_143/TensorArrayV2_1/element_shape:output:0/sequential_47/lstm_143/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_47/lstm_143/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_47/lstm_143/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_47/lstm_143/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_47/lstm_143/whileWhile2sequential_47/lstm_143/while/loop_counter:output:08sequential_47/lstm_143/while/maximum_iterations:output:0$sequential_47/lstm_143/time:output:0/sequential_47/lstm_143/TensorArrayV2_1:handle:0%sequential_47/lstm_143/zeros:output:0'sequential_47/lstm_143/zeros_1:output:0/sequential_47/lstm_143/strided_slice_1:output:0Nsequential_47/lstm_143/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_47_lstm_143_lstm_cell_35_matmul_readvariableop_resourceDsequential_47_lstm_143_lstm_cell_35_matmul_1_readvariableop_resourceCsequential_47_lstm_143_lstm_cell_35_biasadd_readvariableop_resource*
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
(sequential_47_lstm_143_while_body_211937*4
cond,R*
(sequential_47_lstm_143_while_cond_211936*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
Gsequential_47/lstm_143/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   
9sequential_47/lstm_143/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_47/lstm_143/while:output:3Psequential_47/lstm_143/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0
,sequential_47/lstm_143/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_47/lstm_143/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_47/lstm_143/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_47/lstm_143/strided_slice_3StridedSliceBsequential_47/lstm_143/TensorArrayV2Stack/TensorListStack:tensor:05sequential_47/lstm_143/strided_slice_3/stack:output:07sequential_47/lstm_143/strided_slice_3/stack_1:output:07sequential_47/lstm_143/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_mask|
'sequential_47/lstm_143/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_47/lstm_143/transpose_1	TransposeBsequential_47/lstm_143/TensorArrayV2Stack/TensorListStack:tensor:00sequential_47/lstm_143/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
sequential_47/lstm_143/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ˘
,sequential_47/dense_47/MatMul/ReadVariableOpReadVariableOp5sequential_47_dense_47_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0À
sequential_47/dense_47/MatMulMatMul/sequential_47/lstm_143/strided_slice_3:output:04sequential_47/dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
-sequential_47/dense_47/BiasAdd/ReadVariableOpReadVariableOp6sequential_47_dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ğ
sequential_47/dense_47/BiasAddBiasAdd'sequential_47/dense_47/MatMul:product:05sequential_47/dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙v
IdentityIdentity'sequential_47/dense_47/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙§
NoOpNoOp.^sequential_47/dense_47/BiasAdd/ReadVariableOp-^sequential_47/dense_47/MatMul/ReadVariableOp;^sequential_47/lstm_141/lstm_cell_33/BiasAdd/ReadVariableOp:^sequential_47/lstm_141/lstm_cell_33/MatMul/ReadVariableOp<^sequential_47/lstm_141/lstm_cell_33/MatMul_1/ReadVariableOp^sequential_47/lstm_141/while;^sequential_47/lstm_142/lstm_cell_34/BiasAdd/ReadVariableOp:^sequential_47/lstm_142/lstm_cell_34/MatMul/ReadVariableOp<^sequential_47/lstm_142/lstm_cell_34/MatMul_1/ReadVariableOp^sequential_47/lstm_142/while;^sequential_47/lstm_143/lstm_cell_35/BiasAdd/ReadVariableOp:^sequential_47/lstm_143/lstm_cell_35/MatMul/ReadVariableOp<^sequential_47/lstm_143/lstm_cell_35/MatMul_1/ReadVariableOp^sequential_47/lstm_143/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2^
-sequential_47/dense_47/BiasAdd/ReadVariableOp-sequential_47/dense_47/BiasAdd/ReadVariableOp2\
,sequential_47/dense_47/MatMul/ReadVariableOp,sequential_47/dense_47/MatMul/ReadVariableOp2x
:sequential_47/lstm_141/lstm_cell_33/BiasAdd/ReadVariableOp:sequential_47/lstm_141/lstm_cell_33/BiasAdd/ReadVariableOp2v
9sequential_47/lstm_141/lstm_cell_33/MatMul/ReadVariableOp9sequential_47/lstm_141/lstm_cell_33/MatMul/ReadVariableOp2z
;sequential_47/lstm_141/lstm_cell_33/MatMul_1/ReadVariableOp;sequential_47/lstm_141/lstm_cell_33/MatMul_1/ReadVariableOp2<
sequential_47/lstm_141/whilesequential_47/lstm_141/while2x
:sequential_47/lstm_142/lstm_cell_34/BiasAdd/ReadVariableOp:sequential_47/lstm_142/lstm_cell_34/BiasAdd/ReadVariableOp2v
9sequential_47/lstm_142/lstm_cell_34/MatMul/ReadVariableOp9sequential_47/lstm_142/lstm_cell_34/MatMul/ReadVariableOp2z
;sequential_47/lstm_142/lstm_cell_34/MatMul_1/ReadVariableOp;sequential_47/lstm_142/lstm_cell_34/MatMul_1/ReadVariableOp2<
sequential_47/lstm_142/whilesequential_47/lstm_142/while2x
:sequential_47/lstm_143/lstm_cell_35/BiasAdd/ReadVariableOp:sequential_47/lstm_143/lstm_cell_35/BiasAdd/ReadVariableOp2v
9sequential_47/lstm_143/lstm_cell_35/MatMul/ReadVariableOp9sequential_47/lstm_143/lstm_cell_35/MatMul/ReadVariableOp2z
;sequential_47/lstm_143/lstm_cell_35/MatMul_1/ReadVariableOp;sequential_47/lstm_143/lstm_cell_35/MatMul_1/ReadVariableOp2<
sequential_47/lstm_143/whilesequential_47/lstm_143/while:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_141_input
à"
Ŭ
while_body_212999
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_35_213023_0:2(-
while_lstm_cell_35_213025_0:
()
while_lstm_cell_35_213027_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_35_213023:2(+
while_lstm_cell_35_213025:
('
while_lstm_cell_35_213027:(˘*while/lstm_cell_35/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_35/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_35_213023_0while_lstm_cell_35_213025_0while_lstm_cell_35_213027_0*
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
H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_212940Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_35/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_35/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_35/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_35_213023while_lstm_cell_35_213023_0"8
while_lstm_cell_35_213025while_lstm_cell_35_213025_0"8
while_lstm_cell_35_213027while_lstm_cell_35_213027_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_35/StatefulPartitionedCall*while/lstm_cell_35/StatefulPartitionedCall: 
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

ĥ
)__inference_lstm_142_layer_call_fn_215855

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
D__inference_lstm_142_layer_call_and_return_conditional_losses_213907s
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
lstm_143_while_cond_214677.
*lstm_143_while_lstm_143_while_loop_counter4
0lstm_143_while_lstm_143_while_maximum_iterations
lstm_143_while_placeholder 
lstm_143_while_placeholder_1 
lstm_143_while_placeholder_2 
lstm_143_while_placeholder_30
,lstm_143_while_less_lstm_143_strided_slice_1F
Blstm_143_while_lstm_143_while_cond_214677___redundant_placeholder0F
Blstm_143_while_lstm_143_while_cond_214677___redundant_placeholder1F
Blstm_143_while_lstm_143_while_cond_214677___redundant_placeholder2F
Blstm_143_while_lstm_143_while_cond_214677___redundant_placeholder3
lstm_143_while_identity

lstm_143/while/LessLesslstm_143_while_placeholder,lstm_143_while_less_lstm_143_strided_slice_1*
T0*
_output_shapes
: ]
lstm_143/while/IdentityIdentitylstm_143/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_143_while_identity lstm_143/while/Identity:output:0*(
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
Ç	
ġ
D__inference_dense_47_layer_call_and_return_conditional_losses_217062

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
Ó

H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_217356

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
µ
?
while_cond_212807
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_212807___redundant_placeholder04
0while_while_cond_212807___redundant_placeholder14
0while_while_cond_212807___redundant_placeholder24
0while_while_cond_212807___redundant_placeholder3
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
˙7
Ê
while_body_213442
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_35_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_35_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_35_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_35_matmul_readvariableop_resource:2(E
3while_lstm_cell_35_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_35_biasadd_readvariableop_resource:(˘)while/lstm_cell_35/BiasAdd/ReadVariableOp˘(while/lstm_cell_35/MatMul/ReadVariableOp˘*while/lstm_cell_35/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_35/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_35_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_35/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_35_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_35/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_35/addAddV2#while/lstm_cell_35/MatMul:product:0%while/lstm_cell_35/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_35_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_35/BiasAddBiasAddwhile/lstm_cell_35/add:z:01while/lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_35/splitSplit+while/lstm_cell_35/split/split_dim:output:0#while/lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_35/SigmoidSigmoid!while/lstm_cell_35/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_35/Sigmoid_1Sigmoid!while/lstm_cell_35/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_35/mulMul while/lstm_cell_35/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_35/ReluRelu!while/lstm_cell_35/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_35/mul_1Mulwhile/lstm_cell_35/Sigmoid:y:0%while/lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_35/add_1AddV2while/lstm_cell_35/mul:z:0while/lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_35/Sigmoid_2Sigmoid!while/lstm_cell_35/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_35/Relu_1Reluwhile/lstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_35/mul_2Mul while/lstm_cell_35/Sigmoid_2:y:0'while/lstm_cell_35/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_35/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_35/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_35/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_35/BiasAdd/ReadVariableOp)^while/lstm_cell_35/MatMul/ReadVariableOp+^while/lstm_cell_35/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_35_biasadd_readvariableop_resource4while_lstm_cell_35_biasadd_readvariableop_resource_0"l
3while_lstm_cell_35_matmul_1_readvariableop_resource5while_lstm_cell_35_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_35_matmul_readvariableop_resource3while_lstm_cell_35_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_35/BiasAdd/ReadVariableOp)while/lstm_cell_35/BiasAdd/ReadVariableOp2T
(while/lstm_cell_35/MatMul/ReadVariableOp(while/lstm_cell_35/MatMul/ReadVariableOp2X
*while/lstm_cell_35/MatMul_1/ReadVariableOp*while/lstm_cell_35/MatMul_1/ReadVariableOp: 
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
while_cond_213657
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_213657___redundant_placeholder04
0while_while_cond_213657___redundant_placeholder14
0while_while_cond_213657___redundant_placeholder24
0while_while_cond_213657___redundant_placeholder3
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
while_cond_216056
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_216056___redundant_placeholder04
0while_while_cond_216056___redundant_placeholder14
0while_while_cond_216056___redundant_placeholder24
0while_while_cond_216056___redundant_placeholder3
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
¤J

D__inference_lstm_141_layer_call_and_return_conditional_losses_213226

inputs>
+lstm_cell_33_matmul_readvariableop_resource:	@
-lstm_cell_33_matmul_1_readvariableop_resource:	d;
,lstm_cell_33_biasadd_readvariableop_resource:	
identity˘#lstm_cell_33/BiasAdd/ReadVariableOp˘"lstm_cell_33/MatMul/ReadVariableOp˘$lstm_cell_33/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_33/MatMul/ReadVariableOpReadVariableOp+lstm_cell_33_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_33/MatMulMatMulstrided_slice_2:output:0*lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_33_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_33/MatMul_1MatMulzeros:output:0,lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_33/addAddV2lstm_cell_33/MatMul:product:0lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_33_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_33/BiasAddBiasAddlstm_cell_33/add:z:0+lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_33/splitSplit%lstm_cell_33/split/split_dim:output:0lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_33/SigmoidSigmoidlstm_cell_33/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_33/Sigmoid_1Sigmoidlstm_cell_33/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_33/mulMullstm_cell_33/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_33/ReluRelulstm_cell_33/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_33/mul_1Mullstm_cell_33/Sigmoid:y:0lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_33/add_1AddV2lstm_cell_33/mul:z:0lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_33/Sigmoid_2Sigmoidlstm_cell_33/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_33/Relu_1Relulstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_33/mul_2Mullstm_cell_33/Sigmoid_2:y:0!lstm_cell_33/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_33_matmul_readvariableop_resource-lstm_cell_33_matmul_1_readvariableop_resource,lstm_cell_33_biasadd_readvariableop_resource*
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
while_body_213142*
condR
while_cond_213141*K
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
NoOpNoOp$^lstm_cell_33/BiasAdd/ReadVariableOp#^lstm_cell_33/MatMul/ReadVariableOp%^lstm_cell_33/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_33/BiasAdd/ReadVariableOp#lstm_cell_33/BiasAdd/ReadVariableOp2H
"lstm_cell_33/MatMul/ReadVariableOp"lstm_cell_33/MatMul/ReadVariableOp2L
$lstm_cell_33/MatMul_1/ReadVariableOp$lstm_cell_33/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

µ
)__inference_lstm_143_layer_call_fn_216438
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
D__inference_lstm_143_layer_call_and_return_conditional_losses_212877o
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
ħ

I__inference_sequential_47_layer_call_and_return_conditional_losses_215195

inputsG
4lstm_141_lstm_cell_33_matmul_readvariableop_resource:	I
6lstm_141_lstm_cell_33_matmul_1_readvariableop_resource:	dD
5lstm_141_lstm_cell_33_biasadd_readvariableop_resource:	G
4lstm_142_lstm_cell_34_matmul_readvariableop_resource:	dÈI
6lstm_142_lstm_cell_34_matmul_1_readvariableop_resource:	2ÈD
5lstm_142_lstm_cell_34_biasadd_readvariableop_resource:	ÈF
4lstm_143_lstm_cell_35_matmul_readvariableop_resource:2(H
6lstm_143_lstm_cell_35_matmul_1_readvariableop_resource:
(C
5lstm_143_lstm_cell_35_biasadd_readvariableop_resource:(9
'dense_47_matmul_readvariableop_resource:
6
(dense_47_biasadd_readvariableop_resource:
identity˘dense_47/BiasAdd/ReadVariableOp˘dense_47/MatMul/ReadVariableOp˘,lstm_141/lstm_cell_33/BiasAdd/ReadVariableOp˘+lstm_141/lstm_cell_33/MatMul/ReadVariableOp˘-lstm_141/lstm_cell_33/MatMul_1/ReadVariableOp˘lstm_141/while˘,lstm_142/lstm_cell_34/BiasAdd/ReadVariableOp˘+lstm_142/lstm_cell_34/MatMul/ReadVariableOp˘-lstm_142/lstm_cell_34/MatMul_1/ReadVariableOp˘lstm_142/while˘,lstm_143/lstm_cell_35/BiasAdd/ReadVariableOp˘+lstm_143/lstm_cell_35/MatMul/ReadVariableOp˘-lstm_143/lstm_cell_35/MatMul_1/ReadVariableOp˘lstm_143/whileD
lstm_141/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_141/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_141/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_141/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_141/strided_sliceStridedSlicelstm_141/Shape:output:0%lstm_141/strided_slice/stack:output:0'lstm_141/strided_slice/stack_1:output:0'lstm_141/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_141/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_141/zeros/packedPacklstm_141/strided_slice:output:0 lstm_141/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_141/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_141/zerosFilllstm_141/zeros/packed:output:0lstm_141/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_141/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_141/zeros_1/packedPacklstm_141/strided_slice:output:0"lstm_141/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_141/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_141/zeros_1Fill lstm_141/zeros_1/packed:output:0lstm_141/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_141/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_141/transpose	Transposeinputs lstm_141/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_141/Shape_1Shapelstm_141/transpose:y:0*
T0*
_output_shapes
:h
lstm_141/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_141/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_141/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_141/strided_slice_1StridedSlicelstm_141/Shape_1:output:0'lstm_141/strided_slice_1/stack:output:0)lstm_141/strided_slice_1/stack_1:output:0)lstm_141/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_141/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_141/TensorArrayV2TensorListReserve-lstm_141/TensorArrayV2/element_shape:output:0!lstm_141/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_141/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_141/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_141/transpose:y:0Glstm_141/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_141/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_141/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_141/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_141/strided_slice_2StridedSlicelstm_141/transpose:y:0'lstm_141/strided_slice_2/stack:output:0)lstm_141/strided_slice_2/stack_1:output:0)lstm_141/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_141/lstm_cell_33/MatMul/ReadVariableOpReadVariableOp4lstm_141_lstm_cell_33_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_141/lstm_cell_33/MatMulMatMul!lstm_141/strided_slice_2:output:03lstm_141/lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_141/lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp6lstm_141_lstm_cell_33_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_141/lstm_cell_33/MatMul_1MatMullstm_141/zeros:output:05lstm_141/lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_141/lstm_cell_33/addAddV2&lstm_141/lstm_cell_33/MatMul:product:0(lstm_141/lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_141/lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp5lstm_141_lstm_cell_33_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_141/lstm_cell_33/BiasAddBiasAddlstm_141/lstm_cell_33/add:z:04lstm_141/lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_141/lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_141/lstm_cell_33/splitSplit.lstm_141/lstm_cell_33/split/split_dim:output:0&lstm_141/lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_141/lstm_cell_33/SigmoidSigmoid$lstm_141/lstm_cell_33/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_141/lstm_cell_33/Sigmoid_1Sigmoid$lstm_141/lstm_cell_33/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_141/lstm_cell_33/mulMul#lstm_141/lstm_cell_33/Sigmoid_1:y:0lstm_141/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_141/lstm_cell_33/ReluRelu$lstm_141/lstm_cell_33/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_141/lstm_cell_33/mul_1Mul!lstm_141/lstm_cell_33/Sigmoid:y:0(lstm_141/lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_141/lstm_cell_33/add_1AddV2lstm_141/lstm_cell_33/mul:z:0lstm_141/lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_141/lstm_cell_33/Sigmoid_2Sigmoid$lstm_141/lstm_cell_33/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_141/lstm_cell_33/Relu_1Relulstm_141/lstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_141/lstm_cell_33/mul_2Mul#lstm_141/lstm_cell_33/Sigmoid_2:y:0*lstm_141/lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_141/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_141/TensorArrayV2_1TensorListReserve/lstm_141/TensorArrayV2_1/element_shape:output:0!lstm_141/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_141/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_141/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_141/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_141/whileWhile$lstm_141/while/loop_counter:output:0*lstm_141/while/maximum_iterations:output:0lstm_141/time:output:0!lstm_141/TensorArrayV2_1:handle:0lstm_141/zeros:output:0lstm_141/zeros_1:output:0!lstm_141/strided_slice_1:output:0@lstm_141/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_141_lstm_cell_33_matmul_readvariableop_resource6lstm_141_lstm_cell_33_matmul_1_readvariableop_resource5lstm_141_lstm_cell_33_biasadd_readvariableop_resource*
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
lstm_141_while_body_214827*&
condR
lstm_141_while_cond_214826*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_141/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_141/TensorArrayV2Stack/TensorListStackTensorListStacklstm_141/while:output:3Blstm_141/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_141/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_141/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_141/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_141/strided_slice_3StridedSlice4lstm_141/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_141/strided_slice_3/stack:output:0)lstm_141/strided_slice_3/stack_1:output:0)lstm_141/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_141/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_141/transpose_1	Transpose4lstm_141/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_141/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_141/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_142/ShapeShapelstm_141/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_142/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_142/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_142/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_142/strided_sliceStridedSlicelstm_142/Shape:output:0%lstm_142/strided_slice/stack:output:0'lstm_142/strided_slice/stack_1:output:0'lstm_142/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_142/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_142/zeros/packedPacklstm_142/strided_slice:output:0 lstm_142/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_142/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_142/zerosFilllstm_142/zeros/packed:output:0lstm_142/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_142/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_142/zeros_1/packedPacklstm_142/strided_slice:output:0"lstm_142/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_142/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_142/zeros_1Fill lstm_142/zeros_1/packed:output:0lstm_142/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_142/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_142/transpose	Transposelstm_141/transpose_1:y:0 lstm_142/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_142/Shape_1Shapelstm_142/transpose:y:0*
T0*
_output_shapes
:h
lstm_142/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_142/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_142/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_142/strided_slice_1StridedSlicelstm_142/Shape_1:output:0'lstm_142/strided_slice_1/stack:output:0)lstm_142/strided_slice_1/stack_1:output:0)lstm_142/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_142/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_142/TensorArrayV2TensorListReserve-lstm_142/TensorArrayV2/element_shape:output:0!lstm_142/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_142/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_142/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_142/transpose:y:0Glstm_142/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_142/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_142/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_142/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_142/strided_slice_2StridedSlicelstm_142/transpose:y:0'lstm_142/strided_slice_2/stack:output:0)lstm_142/strided_slice_2/stack_1:output:0)lstm_142/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_142/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp4lstm_142_lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_142/lstm_cell_34/MatMulMatMul!lstm_142/strided_slice_2:output:03lstm_142/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_142/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp6lstm_142_lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_142/lstm_cell_34/MatMul_1MatMullstm_142/zeros:output:05lstm_142/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_142/lstm_cell_34/addAddV2&lstm_142/lstm_cell_34/MatMul:product:0(lstm_142/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_142/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp5lstm_142_lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_142/lstm_cell_34/BiasAddBiasAddlstm_142/lstm_cell_34/add:z:04lstm_142/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_142/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_142/lstm_cell_34/splitSplit.lstm_142/lstm_cell_34/split/split_dim:output:0&lstm_142/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_142/lstm_cell_34/SigmoidSigmoid$lstm_142/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_142/lstm_cell_34/Sigmoid_1Sigmoid$lstm_142/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_142/lstm_cell_34/mulMul#lstm_142/lstm_cell_34/Sigmoid_1:y:0lstm_142/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_142/lstm_cell_34/ReluRelu$lstm_142/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_142/lstm_cell_34/mul_1Mul!lstm_142/lstm_cell_34/Sigmoid:y:0(lstm_142/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_142/lstm_cell_34/add_1AddV2lstm_142/lstm_cell_34/mul:z:0lstm_142/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_142/lstm_cell_34/Sigmoid_2Sigmoid$lstm_142/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_142/lstm_cell_34/Relu_1Relulstm_142/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_142/lstm_cell_34/mul_2Mul#lstm_142/lstm_cell_34/Sigmoid_2:y:0*lstm_142/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_142/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_142/TensorArrayV2_1TensorListReserve/lstm_142/TensorArrayV2_1/element_shape:output:0!lstm_142/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_142/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_142/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_142/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_142/whileWhile$lstm_142/while/loop_counter:output:0*lstm_142/while/maximum_iterations:output:0lstm_142/time:output:0!lstm_142/TensorArrayV2_1:handle:0lstm_142/zeros:output:0lstm_142/zeros_1:output:0!lstm_142/strided_slice_1:output:0@lstm_142/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_142_lstm_cell_34_matmul_readvariableop_resource6lstm_142_lstm_cell_34_matmul_1_readvariableop_resource5lstm_142_lstm_cell_34_biasadd_readvariableop_resource*
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
lstm_142_while_body_214966*&
condR
lstm_142_while_cond_214965*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_142/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_142/TensorArrayV2Stack/TensorListStackTensorListStacklstm_142/while:output:3Blstm_142/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_142/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_142/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_142/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_142/strided_slice_3StridedSlice4lstm_142/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_142/strided_slice_3/stack:output:0)lstm_142/strided_slice_3/stack_1:output:0)lstm_142/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_142/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_142/transpose_1	Transpose4lstm_142/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_142/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_142/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_143/ShapeShapelstm_142/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_143/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_143/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_143/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_143/strided_sliceStridedSlicelstm_143/Shape:output:0%lstm_143/strided_slice/stack:output:0'lstm_143/strided_slice/stack_1:output:0'lstm_143/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_143/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_143/zeros/packedPacklstm_143/strided_slice:output:0 lstm_143/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_143/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_143/zerosFilllstm_143/zeros/packed:output:0lstm_143/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_143/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_143/zeros_1/packedPacklstm_143/strided_slice:output:0"lstm_143/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_143/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_143/zeros_1Fill lstm_143/zeros_1/packed:output:0lstm_143/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_143/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_143/transpose	Transposelstm_142/transpose_1:y:0 lstm_143/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_143/Shape_1Shapelstm_143/transpose:y:0*
T0*
_output_shapes
:h
lstm_143/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_143/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_143/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_143/strided_slice_1StridedSlicelstm_143/Shape_1:output:0'lstm_143/strided_slice_1/stack:output:0)lstm_143/strided_slice_1/stack_1:output:0)lstm_143/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_143/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_143/TensorArrayV2TensorListReserve-lstm_143/TensorArrayV2/element_shape:output:0!lstm_143/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_143/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_143/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_143/transpose:y:0Glstm_143/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_143/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_143/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_143/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_143/strided_slice_2StridedSlicelstm_143/transpose:y:0'lstm_143/strided_slice_2/stack:output:0)lstm_143/strided_slice_2/stack_1:output:0)lstm_143/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_143/lstm_cell_35/MatMul/ReadVariableOpReadVariableOp4lstm_143_lstm_cell_35_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_143/lstm_cell_35/MatMulMatMul!lstm_143/strided_slice_2:output:03lstm_143/lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_143/lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp6lstm_143_lstm_cell_35_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_143/lstm_cell_35/MatMul_1MatMullstm_143/zeros:output:05lstm_143/lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_143/lstm_cell_35/addAddV2&lstm_143/lstm_cell_35/MatMul:product:0(lstm_143/lstm_cell_35/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_143/lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp5lstm_143_lstm_cell_35_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_143/lstm_cell_35/BiasAddBiasAddlstm_143/lstm_cell_35/add:z:04lstm_143/lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_143/lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_143/lstm_cell_35/splitSplit.lstm_143/lstm_cell_35/split/split_dim:output:0&lstm_143/lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_143/lstm_cell_35/SigmoidSigmoid$lstm_143/lstm_cell_35/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_143/lstm_cell_35/Sigmoid_1Sigmoid$lstm_143/lstm_cell_35/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_143/lstm_cell_35/mulMul#lstm_143/lstm_cell_35/Sigmoid_1:y:0lstm_143/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_143/lstm_cell_35/ReluRelu$lstm_143/lstm_cell_35/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_143/lstm_cell_35/mul_1Mul!lstm_143/lstm_cell_35/Sigmoid:y:0(lstm_143/lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_143/lstm_cell_35/add_1AddV2lstm_143/lstm_cell_35/mul:z:0lstm_143/lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_143/lstm_cell_35/Sigmoid_2Sigmoid$lstm_143/lstm_cell_35/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_143/lstm_cell_35/Relu_1Relulstm_143/lstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_143/lstm_cell_35/mul_2Mul#lstm_143/lstm_cell_35/Sigmoid_2:y:0*lstm_143/lstm_cell_35/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_143/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_143/TensorArrayV2_1TensorListReserve/lstm_143/TensorArrayV2_1/element_shape:output:0!lstm_143/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_143/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_143/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_143/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_143/whileWhile$lstm_143/while/loop_counter:output:0*lstm_143/while/maximum_iterations:output:0lstm_143/time:output:0!lstm_143/TensorArrayV2_1:handle:0lstm_143/zeros:output:0lstm_143/zeros_1:output:0!lstm_143/strided_slice_1:output:0@lstm_143/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_143_lstm_cell_35_matmul_readvariableop_resource6lstm_143_lstm_cell_35_matmul_1_readvariableop_resource5lstm_143_lstm_cell_35_biasadd_readvariableop_resource*
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
lstm_143_while_body_215105*&
condR
lstm_143_while_cond_215104*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_143/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_143/TensorArrayV2Stack/TensorListStackTensorListStacklstm_143/while:output:3Blstm_143/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_143/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_143/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_143/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_143/strided_slice_3StridedSlice4lstm_143/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_143/strided_slice_3/stack:output:0)lstm_143/strided_slice_3/stack_1:output:0)lstm_143/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_143/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_143/transpose_1	Transpose4lstm_143/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_143/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_143/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_47/MatMul/ReadVariableOpReadVariableOp'dense_47_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_47/MatMulMatMul!lstm_143/strided_slice_3:output:0&dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_47/BiasAdd/ReadVariableOpReadVariableOp(dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_47/BiasAddBiasAdddense_47/MatMul:product:0'dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense_47/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙?
NoOpNoOp ^dense_47/BiasAdd/ReadVariableOp^dense_47/MatMul/ReadVariableOp-^lstm_141/lstm_cell_33/BiasAdd/ReadVariableOp,^lstm_141/lstm_cell_33/MatMul/ReadVariableOp.^lstm_141/lstm_cell_33/MatMul_1/ReadVariableOp^lstm_141/while-^lstm_142/lstm_cell_34/BiasAdd/ReadVariableOp,^lstm_142/lstm_cell_34/MatMul/ReadVariableOp.^lstm_142/lstm_cell_34/MatMul_1/ReadVariableOp^lstm_142/while-^lstm_143/lstm_cell_35/BiasAdd/ReadVariableOp,^lstm_143/lstm_cell_35/MatMul/ReadVariableOp.^lstm_143/lstm_cell_35/MatMul_1/ReadVariableOp^lstm_143/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2B
dense_47/BiasAdd/ReadVariableOpdense_47/BiasAdd/ReadVariableOp2@
dense_47/MatMul/ReadVariableOpdense_47/MatMul/ReadVariableOp2\
,lstm_141/lstm_cell_33/BiasAdd/ReadVariableOp,lstm_141/lstm_cell_33/BiasAdd/ReadVariableOp2Z
+lstm_141/lstm_cell_33/MatMul/ReadVariableOp+lstm_141/lstm_cell_33/MatMul/ReadVariableOp2^
-lstm_141/lstm_cell_33/MatMul_1/ReadVariableOp-lstm_141/lstm_cell_33/MatMul_1/ReadVariableOp2 
lstm_141/whilelstm_141/while2\
,lstm_142/lstm_cell_34/BiasAdd/ReadVariableOp,lstm_142/lstm_cell_34/BiasAdd/ReadVariableOp2Z
+lstm_142/lstm_cell_34/MatMul/ReadVariableOp+lstm_142/lstm_cell_34/MatMul/ReadVariableOp2^
-lstm_142/lstm_cell_34/MatMul_1/ReadVariableOp-lstm_142/lstm_cell_34/MatMul_1/ReadVariableOp2 
lstm_142/whilelstm_142/while2\
,lstm_143/lstm_cell_35/BiasAdd/ReadVariableOp,lstm_143/lstm_cell_35/BiasAdd/ReadVariableOp2Z
+lstm_143/lstm_cell_35/MatMul/ReadVariableOp+lstm_143/lstm_cell_35/MatMul/ReadVariableOp2^
-lstm_143/lstm_cell_35/MatMul_1/ReadVariableOp-lstm_143/lstm_cell_35/MatMul_1/ReadVariableOp2 
lstm_143/whilelstm_143/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Â

)__inference_dense_47_layer_call_fn_217052

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
D__inference_dense_47_layer_call_and_return_conditional_losses_213544o
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
µ
?
while_cond_216199
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_216199___redundant_placeholder04
0while_while_cond_216199___redundant_placeholder14
0while_while_cond_216199___redundant_placeholder24
0while_while_cond_216199___redundant_placeholder3
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

ĥ
)__inference_lstm_141_layer_call_fn_215228

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
D__inference_lstm_141_layer_call_and_return_conditional_losses_213226s
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
ÎB
ê

lstm_143_while_body_214678.
*lstm_143_while_lstm_143_while_loop_counter4
0lstm_143_while_lstm_143_while_maximum_iterations
lstm_143_while_placeholder 
lstm_143_while_placeholder_1 
lstm_143_while_placeholder_2 
lstm_143_while_placeholder_3-
)lstm_143_while_lstm_143_strided_slice_1_0i
elstm_143_while_tensorarrayv2read_tensorlistgetitem_lstm_143_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_143_while_lstm_cell_35_matmul_readvariableop_resource_0:2(P
>lstm_143_while_lstm_cell_35_matmul_1_readvariableop_resource_0:
(K
=lstm_143_while_lstm_cell_35_biasadd_readvariableop_resource_0:(
lstm_143_while_identity
lstm_143_while_identity_1
lstm_143_while_identity_2
lstm_143_while_identity_3
lstm_143_while_identity_4
lstm_143_while_identity_5+
'lstm_143_while_lstm_143_strided_slice_1g
clstm_143_while_tensorarrayv2read_tensorlistgetitem_lstm_143_tensorarrayunstack_tensorlistfromtensorL
:lstm_143_while_lstm_cell_35_matmul_readvariableop_resource:2(N
<lstm_143_while_lstm_cell_35_matmul_1_readvariableop_resource:
(I
;lstm_143_while_lstm_cell_35_biasadd_readvariableop_resource:(˘2lstm_143/while/lstm_cell_35/BiasAdd/ReadVariableOp˘1lstm_143/while/lstm_cell_35/MatMul/ReadVariableOp˘3lstm_143/while/lstm_cell_35/MatMul_1/ReadVariableOp
@lstm_143/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_143/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_143_while_tensorarrayv2read_tensorlistgetitem_lstm_143_tensorarrayunstack_tensorlistfromtensor_0lstm_143_while_placeholderIlstm_143/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_143/while/lstm_cell_35/MatMul/ReadVariableOpReadVariableOp<lstm_143_while_lstm_cell_35_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_143/while/lstm_cell_35/MatMulMatMul9lstm_143/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_143/while/lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_143/while/lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp>lstm_143_while_lstm_cell_35_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_143/while/lstm_cell_35/MatMul_1MatMullstm_143_while_placeholder_2;lstm_143/while/lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_143/while/lstm_cell_35/addAddV2,lstm_143/while/lstm_cell_35/MatMul:product:0.lstm_143/while/lstm_cell_35/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_143/while/lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp=lstm_143_while_lstm_cell_35_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_143/while/lstm_cell_35/BiasAddBiasAdd#lstm_143/while/lstm_cell_35/add:z:0:lstm_143/while/lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_143/while/lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_143/while/lstm_cell_35/splitSplit4lstm_143/while/lstm_cell_35/split/split_dim:output:0,lstm_143/while/lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_143/while/lstm_cell_35/SigmoidSigmoid*lstm_143/while/lstm_cell_35/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_143/while/lstm_cell_35/Sigmoid_1Sigmoid*lstm_143/while/lstm_cell_35/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_143/while/lstm_cell_35/mulMul)lstm_143/while/lstm_cell_35/Sigmoid_1:y:0lstm_143_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_143/while/lstm_cell_35/ReluRelu*lstm_143/while/lstm_cell_35/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_143/while/lstm_cell_35/mul_1Mul'lstm_143/while/lstm_cell_35/Sigmoid:y:0.lstm_143/while/lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_143/while/lstm_cell_35/add_1AddV2#lstm_143/while/lstm_cell_35/mul:z:0%lstm_143/while/lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_143/while/lstm_cell_35/Sigmoid_2Sigmoid*lstm_143/while/lstm_cell_35/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_143/while/lstm_cell_35/Relu_1Relu%lstm_143/while/lstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_143/while/lstm_cell_35/mul_2Mul)lstm_143/while/lstm_cell_35/Sigmoid_2:y:00lstm_143/while/lstm_cell_35/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_143/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_143_while_placeholder_1lstm_143_while_placeholder%lstm_143/while/lstm_cell_35/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_143/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_143/while/addAddV2lstm_143_while_placeholderlstm_143/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_143/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_143/while/add_1AddV2*lstm_143_while_lstm_143_while_loop_counterlstm_143/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_143/while/IdentityIdentitylstm_143/while/add_1:z:0^lstm_143/while/NoOp*
T0*
_output_shapes
: 
lstm_143/while/Identity_1Identity0lstm_143_while_lstm_143_while_maximum_iterations^lstm_143/while/NoOp*
T0*
_output_shapes
: t
lstm_143/while/Identity_2Identitylstm_143/while/add:z:0^lstm_143/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_143/while/Identity_3IdentityClstm_143/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_143/while/NoOp*
T0*
_output_shapes
: 
lstm_143/while/Identity_4Identity%lstm_143/while/lstm_cell_35/mul_2:z:0^lstm_143/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_143/while/Identity_5Identity%lstm_143/while/lstm_cell_35/add_1:z:0^lstm_143/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_143/while/NoOpNoOp3^lstm_143/while/lstm_cell_35/BiasAdd/ReadVariableOp2^lstm_143/while/lstm_cell_35/MatMul/ReadVariableOp4^lstm_143/while/lstm_cell_35/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_143_while_identity lstm_143/while/Identity:output:0"?
lstm_143_while_identity_1"lstm_143/while/Identity_1:output:0"?
lstm_143_while_identity_2"lstm_143/while/Identity_2:output:0"?
lstm_143_while_identity_3"lstm_143/while/Identity_3:output:0"?
lstm_143_while_identity_4"lstm_143/while/Identity_4:output:0"?
lstm_143_while_identity_5"lstm_143/while/Identity_5:output:0"T
'lstm_143_while_lstm_143_strided_slice_1)lstm_143_while_lstm_143_strided_slice_1_0"|
;lstm_143_while_lstm_cell_35_biasadd_readvariableop_resource=lstm_143_while_lstm_cell_35_biasadd_readvariableop_resource_0"~
<lstm_143_while_lstm_cell_35_matmul_1_readvariableop_resource>lstm_143_while_lstm_cell_35_matmul_1_readvariableop_resource_0"z
:lstm_143_while_lstm_cell_35_matmul_readvariableop_resource<lstm_143_while_lstm_cell_35_matmul_readvariableop_resource_0"Ì
clstm_143_while_tensorarrayv2read_tensorlistgetitem_lstm_143_tensorarrayunstack_tensorlistfromtensorelstm_143_while_tensorarrayv2read_tensorlistgetitem_lstm_143_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_143/while/lstm_cell_35/BiasAdd/ReadVariableOp2lstm_143/while/lstm_cell_35/BiasAdd/ReadVariableOp2f
1lstm_143/while/lstm_cell_35/MatMul/ReadVariableOp1lstm_143/while/lstm_cell_35/MatMul/ReadVariableOp2j
3lstm_143/while/lstm_cell_35/MatMul_1/ReadVariableOp3lstm_143/while/lstm_cell_35/MatMul_1/ReadVariableOp: 
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
"__inference__traced_restore_217629
file_prefix2
 assignvariableop_dense_47_kernel:
.
 assignvariableop_1_dense_47_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_141_lstm_cell_141_kernel:	M
:assignvariableop_8_lstm_141_lstm_cell_141_recurrent_kernel:	d=
.assignvariableop_9_lstm_141_lstm_cell_141_bias:	D
1assignvariableop_10_lstm_142_lstm_cell_142_kernel:	dÈN
;assignvariableop_11_lstm_142_lstm_cell_142_recurrent_kernel:	2È>
/assignvariableop_12_lstm_142_lstm_cell_142_bias:	ÈC
1assignvariableop_13_lstm_143_lstm_cell_143_kernel:2(M
;assignvariableop_14_lstm_143_lstm_cell_143_recurrent_kernel:
(=
/assignvariableop_15_lstm_143_lstm_cell_143_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_47_kernel_m:
6
(assignvariableop_19_adam_dense_47_bias_m:K
8assignvariableop_20_adam_lstm_141_lstm_cell_141_kernel_m:	U
Bassignvariableop_21_adam_lstm_141_lstm_cell_141_recurrent_kernel_m:	dE
6assignvariableop_22_adam_lstm_141_lstm_cell_141_bias_m:	K
8assignvariableop_23_adam_lstm_142_lstm_cell_142_kernel_m:	dÈU
Bassignvariableop_24_adam_lstm_142_lstm_cell_142_recurrent_kernel_m:	2ÈE
6assignvariableop_25_adam_lstm_142_lstm_cell_142_bias_m:	ÈJ
8assignvariableop_26_adam_lstm_143_lstm_cell_143_kernel_m:2(T
Bassignvariableop_27_adam_lstm_143_lstm_cell_143_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_143_lstm_cell_143_bias_m:(<
*assignvariableop_29_adam_dense_47_kernel_v:
6
(assignvariableop_30_adam_dense_47_bias_v:K
8assignvariableop_31_adam_lstm_141_lstm_cell_141_kernel_v:	U
Bassignvariableop_32_adam_lstm_141_lstm_cell_141_recurrent_kernel_v:	dE
6assignvariableop_33_adam_lstm_141_lstm_cell_141_bias_v:	K
8assignvariableop_34_adam_lstm_142_lstm_cell_142_kernel_v:	dÈU
Bassignvariableop_35_adam_lstm_142_lstm_cell_142_recurrent_kernel_v:	2ÈE
6assignvariableop_36_adam_lstm_142_lstm_cell_142_bias_v:	ÈJ
8assignvariableop_37_adam_lstm_143_lstm_cell_143_kernel_v:2(T
Bassignvariableop_38_adam_lstm_143_lstm_cell_143_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_143_lstm_cell_143_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_47_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_47_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_141_lstm_cell_141_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_141_lstm_cell_141_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_141_lstm_cell_141_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_142_lstm_cell_142_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_142_lstm_cell_142_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_142_lstm_cell_142_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_143_lstm_cell_143_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_143_lstm_cell_143_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_143_lstm_cell_143_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_47_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_47_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_141_lstm_cell_141_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_141_lstm_cell_141_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_141_lstm_cell_141_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_142_lstm_cell_142_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_142_lstm_cell_142_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_142_lstm_cell_142_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_143_lstm_cell_143_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_143_lstm_cell_143_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_143_lstm_cell_143_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_47_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_47_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_141_lstm_cell_141_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_141_lstm_cell_141_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_141_lstm_cell_141_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_142_lstm_cell_142_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_142_lstm_cell_142_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_142_lstm_cell_142_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_143_lstm_cell_143_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_143_lstm_cell_143_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_143_lstm_cell_143_bias_vIdentity_39:output:0"/device:CPU:0*
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
Ğ
ë
I__inference_sequential_47_layer_call_and_return_conditional_losses_213551

inputs"
lstm_141_213227:	"
lstm_141_213229:	d
lstm_141_213231:	"
lstm_142_213377:	dÈ"
lstm_142_213379:	2È
lstm_142_213381:	È!
lstm_143_213527:2(!
lstm_143_213529:
(
lstm_143_213531:(!
dense_47_213545:

dense_47_213547:
identity˘ dense_47/StatefulPartitionedCall˘ lstm_141/StatefulPartitionedCall˘ lstm_142/StatefulPartitionedCall˘ lstm_143/StatefulPartitionedCall
 lstm_141/StatefulPartitionedCallStatefulPartitionedCallinputslstm_141_213227lstm_141_213229lstm_141_213231*
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
D__inference_lstm_141_layer_call_and_return_conditional_losses_213226Ş
 lstm_142/StatefulPartitionedCallStatefulPartitionedCall)lstm_141/StatefulPartitionedCall:output:0lstm_142_213377lstm_142_213379lstm_142_213381*
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
D__inference_lstm_142_layer_call_and_return_conditional_losses_213376Ĥ
 lstm_143/StatefulPartitionedCallStatefulPartitionedCall)lstm_142/StatefulPartitionedCall:output:0lstm_143_213527lstm_143_213529lstm_143_213531*
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
D__inference_lstm_143_layer_call_and_return_conditional_losses_213526
 dense_47/StatefulPartitionedCallStatefulPartitionedCall)lstm_143/StatefulPartitionedCall:output:0dense_47_213545dense_47_213547*
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
D__inference_dense_47_layer_call_and_return_conditional_losses_213544x
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_47/StatefulPartitionedCall!^lstm_141/StatefulPartitionedCall!^lstm_142/StatefulPartitionedCall!^lstm_143/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2D
 lstm_141/StatefulPartitionedCall lstm_141/StatefulPartitionedCall2D
 lstm_142/StatefulPartitionedCall lstm_142/StatefulPartitionedCall2D
 lstm_143/StatefulPartitionedCall lstm_143/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_213441
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_213441___redundant_placeholder04
0while_while_cond_213441___redundant_placeholder14
0while_while_cond_213441___redundant_placeholder24
0while_while_cond_213441___redundant_placeholder3
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
ş

(sequential_47_lstm_143_while_cond_211936J
Fsequential_47_lstm_143_while_sequential_47_lstm_143_while_loop_counterP
Lsequential_47_lstm_143_while_sequential_47_lstm_143_while_maximum_iterations,
(sequential_47_lstm_143_while_placeholder.
*sequential_47_lstm_143_while_placeholder_1.
*sequential_47_lstm_143_while_placeholder_2.
*sequential_47_lstm_143_while_placeholder_3L
Hsequential_47_lstm_143_while_less_sequential_47_lstm_143_strided_slice_1b
^sequential_47_lstm_143_while_sequential_47_lstm_143_while_cond_211936___redundant_placeholder0b
^sequential_47_lstm_143_while_sequential_47_lstm_143_while_cond_211936___redundant_placeholder1b
^sequential_47_lstm_143_while_sequential_47_lstm_143_while_cond_211936___redundant_placeholder2b
^sequential_47_lstm_143_while_sequential_47_lstm_143_while_cond_211936___redundant_placeholder3)
%sequential_47_lstm_143_while_identity
?
!sequential_47/lstm_143/while/LessLess(sequential_47_lstm_143_while_placeholderHsequential_47_lstm_143_while_less_sequential_47_lstm_143_strided_slice_1*
T0*
_output_shapes
: y
%sequential_47/lstm_143/while/IdentityIdentity%sequential_47/lstm_143/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_47_lstm_143_while_identity.sequential_47/lstm_143/while/Identity:output:0*(
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
8

D__inference_lstm_142_layer_call_and_return_conditional_losses_212718

inputs&
lstm_cell_34_212636:	dÈ&
lstm_cell_34_212638:	2È"
lstm_cell_34_212640:	È
identity˘$lstm_cell_34/StatefulPartitionedCall˘while;
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
$lstm_cell_34/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_34_212636lstm_cell_34_212638lstm_cell_34_212640*
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
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_212590n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_34_212636lstm_cell_34_212638lstm_cell_34_212640*
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
while_body_212649*
condR
while_cond_212648*K
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
NoOpNoOp%^lstm_cell_34/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_34/StatefulPartitionedCall$lstm_cell_34/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
µ
?
while_cond_212648
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_212648___redundant_placeholder04
0while_while_cond_212648___redundant_placeholder14
0while_while_cond_212648___redundant_placeholder24
0while_while_cond_212648___redundant_placeholder3
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
while_cond_215726
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_215726___redundant_placeholder04
0while_while_cond_215726___redundant_placeholder14
0while_while_cond_215726___redundant_placeholder24
0while_while_cond_215726___redundant_placeholder3
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
Ë

H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_212940

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
while_cond_216529
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_216529___redundant_placeholder04
0while_while_cond_216529___redundant_placeholder14
0while_while_cond_216529___redundant_placeholder24
0while_while_cond_216529___redundant_placeholder3
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
ö
³
)__inference_lstm_143_layer_call_fn_216460

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
D__inference_lstm_143_layer_call_and_return_conditional_losses_213526o
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
while_cond_212107
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_212107___redundant_placeholder04
0while_while_cond_212107___redundant_placeholder14
0while_while_cond_212107___redundant_placeholder24
0while_while_cond_212107___redundant_placeholder3
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
ÛB
?

lstm_141_while_body_214827.
*lstm_141_while_lstm_141_while_loop_counter4
0lstm_141_while_lstm_141_while_maximum_iterations
lstm_141_while_placeholder 
lstm_141_while_placeholder_1 
lstm_141_while_placeholder_2 
lstm_141_while_placeholder_3-
)lstm_141_while_lstm_141_strided_slice_1_0i
elstm_141_while_tensorarrayv2read_tensorlistgetitem_lstm_141_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_141_while_lstm_cell_33_matmul_readvariableop_resource_0:	Q
>lstm_141_while_lstm_cell_33_matmul_1_readvariableop_resource_0:	dL
=lstm_141_while_lstm_cell_33_biasadd_readvariableop_resource_0:	
lstm_141_while_identity
lstm_141_while_identity_1
lstm_141_while_identity_2
lstm_141_while_identity_3
lstm_141_while_identity_4
lstm_141_while_identity_5+
'lstm_141_while_lstm_141_strided_slice_1g
clstm_141_while_tensorarrayv2read_tensorlistgetitem_lstm_141_tensorarrayunstack_tensorlistfromtensorM
:lstm_141_while_lstm_cell_33_matmul_readvariableop_resource:	O
<lstm_141_while_lstm_cell_33_matmul_1_readvariableop_resource:	dJ
;lstm_141_while_lstm_cell_33_biasadd_readvariableop_resource:	˘2lstm_141/while/lstm_cell_33/BiasAdd/ReadVariableOp˘1lstm_141/while/lstm_cell_33/MatMul/ReadVariableOp˘3lstm_141/while/lstm_cell_33/MatMul_1/ReadVariableOp
@lstm_141/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_141/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_141_while_tensorarrayv2read_tensorlistgetitem_lstm_141_tensorarrayunstack_tensorlistfromtensor_0lstm_141_while_placeholderIlstm_141/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_141/while/lstm_cell_33/MatMul/ReadVariableOpReadVariableOp<lstm_141_while_lstm_cell_33_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_141/while/lstm_cell_33/MatMulMatMul9lstm_141/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_141/while/lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_141/while/lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp>lstm_141_while_lstm_cell_33_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_141/while/lstm_cell_33/MatMul_1MatMullstm_141_while_placeholder_2;lstm_141/while/lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_141/while/lstm_cell_33/addAddV2,lstm_141/while/lstm_cell_33/MatMul:product:0.lstm_141/while/lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_141/while/lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp=lstm_141_while_lstm_cell_33_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_141/while/lstm_cell_33/BiasAddBiasAdd#lstm_141/while/lstm_cell_33/add:z:0:lstm_141/while/lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_141/while/lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_141/while/lstm_cell_33/splitSplit4lstm_141/while/lstm_cell_33/split/split_dim:output:0,lstm_141/while/lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_141/while/lstm_cell_33/SigmoidSigmoid*lstm_141/while/lstm_cell_33/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_141/while/lstm_cell_33/Sigmoid_1Sigmoid*lstm_141/while/lstm_cell_33/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_141/while/lstm_cell_33/mulMul)lstm_141/while/lstm_cell_33/Sigmoid_1:y:0lstm_141_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_141/while/lstm_cell_33/ReluRelu*lstm_141/while/lstm_cell_33/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_141/while/lstm_cell_33/mul_1Mul'lstm_141/while/lstm_cell_33/Sigmoid:y:0.lstm_141/while/lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_141/while/lstm_cell_33/add_1AddV2#lstm_141/while/lstm_cell_33/mul:z:0%lstm_141/while/lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_141/while/lstm_cell_33/Sigmoid_2Sigmoid*lstm_141/while/lstm_cell_33/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_141/while/lstm_cell_33/Relu_1Relu%lstm_141/while/lstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_141/while/lstm_cell_33/mul_2Mul)lstm_141/while/lstm_cell_33/Sigmoid_2:y:00lstm_141/while/lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_141/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_141_while_placeholder_1lstm_141_while_placeholder%lstm_141/while/lstm_cell_33/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_141/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_141/while/addAddV2lstm_141_while_placeholderlstm_141/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_141/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_141/while/add_1AddV2*lstm_141_while_lstm_141_while_loop_counterlstm_141/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_141/while/IdentityIdentitylstm_141/while/add_1:z:0^lstm_141/while/NoOp*
T0*
_output_shapes
: 
lstm_141/while/Identity_1Identity0lstm_141_while_lstm_141_while_maximum_iterations^lstm_141/while/NoOp*
T0*
_output_shapes
: t
lstm_141/while/Identity_2Identitylstm_141/while/add:z:0^lstm_141/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_141/while/Identity_3IdentityClstm_141/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_141/while/NoOp*
T0*
_output_shapes
: 
lstm_141/while/Identity_4Identity%lstm_141/while/lstm_cell_33/mul_2:z:0^lstm_141/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_141/while/Identity_5Identity%lstm_141/while/lstm_cell_33/add_1:z:0^lstm_141/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_141/while/NoOpNoOp3^lstm_141/while/lstm_cell_33/BiasAdd/ReadVariableOp2^lstm_141/while/lstm_cell_33/MatMul/ReadVariableOp4^lstm_141/while/lstm_cell_33/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_141_while_identity lstm_141/while/Identity:output:0"?
lstm_141_while_identity_1"lstm_141/while/Identity_1:output:0"?
lstm_141_while_identity_2"lstm_141/while/Identity_2:output:0"?
lstm_141_while_identity_3"lstm_141/while/Identity_3:output:0"?
lstm_141_while_identity_4"lstm_141/while/Identity_4:output:0"?
lstm_141_while_identity_5"lstm_141/while/Identity_5:output:0"T
'lstm_141_while_lstm_141_strided_slice_1)lstm_141_while_lstm_141_strided_slice_1_0"|
;lstm_141_while_lstm_cell_33_biasadd_readvariableop_resource=lstm_141_while_lstm_cell_33_biasadd_readvariableop_resource_0"~
<lstm_141_while_lstm_cell_33_matmul_1_readvariableop_resource>lstm_141_while_lstm_cell_33_matmul_1_readvariableop_resource_0"z
:lstm_141_while_lstm_cell_33_matmul_readvariableop_resource<lstm_141_while_lstm_cell_33_matmul_readvariableop_resource_0"Ì
clstm_141_while_tensorarrayv2read_tensorlistgetitem_lstm_141_tensorarrayunstack_tensorlistfromtensorelstm_141_while_tensorarrayv2read_tensorlistgetitem_lstm_141_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_141/while/lstm_cell_33/BiasAdd/ReadVariableOp2lstm_141/while/lstm_cell_33/BiasAdd/ReadVariableOp2f
1lstm_141/while/lstm_cell_33/MatMul/ReadVariableOp1lstm_141/while/lstm_cell_33/MatMul/ReadVariableOp2j
3lstm_141/while/lstm_cell_33/MatMul_1/ReadVariableOp3lstm_141/while/lstm_cell_33/MatMul_1/ReadVariableOp: 
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
.__inference_sequential_47_layer_call_fn_214192
lstm_141_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_141_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
I__inference_sequential_47_layer_call_and_return_conditional_losses_214140o
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
_user_specified_namelstm_141_input
Ŭ

H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_217160

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

ĥ
)__inference_lstm_142_layer_call_fn_215844

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
D__inference_lstm_142_layer_call_and_return_conditional_losses_213376s
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
ÛB
?

lstm_142_while_body_214966.
*lstm_142_while_lstm_142_while_loop_counter4
0lstm_142_while_lstm_142_while_maximum_iterations
lstm_142_while_placeholder 
lstm_142_while_placeholder_1 
lstm_142_while_placeholder_2 
lstm_142_while_placeholder_3-
)lstm_142_while_lstm_142_strided_slice_1_0i
elstm_142_while_tensorarrayv2read_tensorlistgetitem_lstm_142_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_142_while_lstm_cell_34_matmul_readvariableop_resource_0:	dÈQ
>lstm_142_while_lstm_cell_34_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_142_while_lstm_cell_34_biasadd_readvariableop_resource_0:	È
lstm_142_while_identity
lstm_142_while_identity_1
lstm_142_while_identity_2
lstm_142_while_identity_3
lstm_142_while_identity_4
lstm_142_while_identity_5+
'lstm_142_while_lstm_142_strided_slice_1g
clstm_142_while_tensorarrayv2read_tensorlistgetitem_lstm_142_tensorarrayunstack_tensorlistfromtensorM
:lstm_142_while_lstm_cell_34_matmul_readvariableop_resource:	dÈO
<lstm_142_while_lstm_cell_34_matmul_1_readvariableop_resource:	2ÈJ
;lstm_142_while_lstm_cell_34_biasadd_readvariableop_resource:	È˘2lstm_142/while/lstm_cell_34/BiasAdd/ReadVariableOp˘1lstm_142/while/lstm_cell_34/MatMul/ReadVariableOp˘3lstm_142/while/lstm_cell_34/MatMul_1/ReadVariableOp
@lstm_142/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_142/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_142_while_tensorarrayv2read_tensorlistgetitem_lstm_142_tensorarrayunstack_tensorlistfromtensor_0lstm_142_while_placeholderIlstm_142/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_142/while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp<lstm_142_while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_142/while/lstm_cell_34/MatMulMatMul9lstm_142/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_142/while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_142/while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp>lstm_142_while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_142/while/lstm_cell_34/MatMul_1MatMullstm_142_while_placeholder_2;lstm_142/while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_142/while/lstm_cell_34/addAddV2,lstm_142/while/lstm_cell_34/MatMul:product:0.lstm_142/while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_142/while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp=lstm_142_while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_142/while/lstm_cell_34/BiasAddBiasAdd#lstm_142/while/lstm_cell_34/add:z:0:lstm_142/while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_142/while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_142/while/lstm_cell_34/splitSplit4lstm_142/while/lstm_cell_34/split/split_dim:output:0,lstm_142/while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_142/while/lstm_cell_34/SigmoidSigmoid*lstm_142/while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_142/while/lstm_cell_34/Sigmoid_1Sigmoid*lstm_142/while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_142/while/lstm_cell_34/mulMul)lstm_142/while/lstm_cell_34/Sigmoid_1:y:0lstm_142_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_142/while/lstm_cell_34/ReluRelu*lstm_142/while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_142/while/lstm_cell_34/mul_1Mul'lstm_142/while/lstm_cell_34/Sigmoid:y:0.lstm_142/while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_142/while/lstm_cell_34/add_1AddV2#lstm_142/while/lstm_cell_34/mul:z:0%lstm_142/while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_142/while/lstm_cell_34/Sigmoid_2Sigmoid*lstm_142/while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_142/while/lstm_cell_34/Relu_1Relu%lstm_142/while/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_142/while/lstm_cell_34/mul_2Mul)lstm_142/while/lstm_cell_34/Sigmoid_2:y:00lstm_142/while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_142/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_142_while_placeholder_1lstm_142_while_placeholder%lstm_142/while/lstm_cell_34/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_142/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_142/while/addAddV2lstm_142_while_placeholderlstm_142/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_142/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_142/while/add_1AddV2*lstm_142_while_lstm_142_while_loop_counterlstm_142/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_142/while/IdentityIdentitylstm_142/while/add_1:z:0^lstm_142/while/NoOp*
T0*
_output_shapes
: 
lstm_142/while/Identity_1Identity0lstm_142_while_lstm_142_while_maximum_iterations^lstm_142/while/NoOp*
T0*
_output_shapes
: t
lstm_142/while/Identity_2Identitylstm_142/while/add:z:0^lstm_142/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_142/while/Identity_3IdentityClstm_142/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_142/while/NoOp*
T0*
_output_shapes
: 
lstm_142/while/Identity_4Identity%lstm_142/while/lstm_cell_34/mul_2:z:0^lstm_142/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_142/while/Identity_5Identity%lstm_142/while/lstm_cell_34/add_1:z:0^lstm_142/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_142/while/NoOpNoOp3^lstm_142/while/lstm_cell_34/BiasAdd/ReadVariableOp2^lstm_142/while/lstm_cell_34/MatMul/ReadVariableOp4^lstm_142/while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_142_while_identity lstm_142/while/Identity:output:0"?
lstm_142_while_identity_1"lstm_142/while/Identity_1:output:0"?
lstm_142_while_identity_2"lstm_142/while/Identity_2:output:0"?
lstm_142_while_identity_3"lstm_142/while/Identity_3:output:0"?
lstm_142_while_identity_4"lstm_142/while/Identity_4:output:0"?
lstm_142_while_identity_5"lstm_142/while/Identity_5:output:0"T
'lstm_142_while_lstm_142_strided_slice_1)lstm_142_while_lstm_142_strided_slice_1_0"|
;lstm_142_while_lstm_cell_34_biasadd_readvariableop_resource=lstm_142_while_lstm_cell_34_biasadd_readvariableop_resource_0"~
<lstm_142_while_lstm_cell_34_matmul_1_readvariableop_resource>lstm_142_while_lstm_cell_34_matmul_1_readvariableop_resource_0"z
:lstm_142_while_lstm_cell_34_matmul_readvariableop_resource<lstm_142_while_lstm_cell_34_matmul_readvariableop_resource_0"Ì
clstm_142_while_tensorarrayv2read_tensorlistgetitem_lstm_142_tensorarrayunstack_tensorlistfromtensorelstm_142_while_tensorarrayv2read_tensorlistgetitem_lstm_142_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_142/while/lstm_cell_34/BiasAdd/ReadVariableOp2lstm_142/while/lstm_cell_34/BiasAdd/ReadVariableOp2f
1lstm_142/while/lstm_cell_34/MatMul/ReadVariableOp1lstm_142/while/lstm_cell_34/MatMul/ReadVariableOp2j
3lstm_142/while/lstm_cell_34/MatMul_1/ReadVariableOp3lstm_142/while/lstm_cell_34/MatMul_1/ReadVariableOp: 
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
D__inference_lstm_141_layer_call_and_return_conditional_losses_212177

inputs&
lstm_cell_33_212095:	&
lstm_cell_33_212097:	d"
lstm_cell_33_212099:	
identity˘$lstm_cell_33/StatefulPartitionedCall˘while;
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
$lstm_cell_33/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_33_212095lstm_cell_33_212097lstm_cell_33_212099*
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
H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_212094n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_33_212095lstm_cell_33_212097lstm_cell_33_212099*
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
while_body_212108*
condR
while_cond_212107*K
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
NoOpNoOp%^lstm_cell_33/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_33/StatefulPartitionedCall$lstm_cell_33/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8
?
while_body_216343
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_34_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_34_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_34_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_34_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_34_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_34_biasadd_readvariableop_resource:	È˘)while/lstm_cell_34/BiasAdd/ReadVariableOp˘(while/lstm_cell_34/MatMul/ReadVariableOp˘*while/lstm_cell_34/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_34/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_34/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_34/addAddV2#while/lstm_cell_34/MatMul:product:0%while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_34/BiasAddBiasAddwhile/lstm_cell_34/add:z:01while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_34/splitSplit+while/lstm_cell_34/split/split_dim:output:0#while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_34/SigmoidSigmoid!while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_34/Sigmoid_1Sigmoid!while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_34/mulMul while/lstm_cell_34/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_34/ReluRelu!while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_34/mul_1Mulwhile/lstm_cell_34/Sigmoid:y:0%while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_34/add_1AddV2while/lstm_cell_34/mul:z:0while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_34/Sigmoid_2Sigmoid!while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_34/Relu_1Reluwhile/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_34/mul_2Mul while/lstm_cell_34/Sigmoid_2:y:0'while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_34/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_34/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_34/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_34/BiasAdd/ReadVariableOp)^while/lstm_cell_34/MatMul/ReadVariableOp+^while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_34_biasadd_readvariableop_resource4while_lstm_cell_34_biasadd_readvariableop_resource_0"l
3while_lstm_cell_34_matmul_1_readvariableop_resource5while_lstm_cell_34_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_34_matmul_readvariableop_resource3while_lstm_cell_34_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_34/BiasAdd/ReadVariableOp)while/lstm_cell_34/BiasAdd/ReadVariableOp2T
(while/lstm_cell_34/MatMul/ReadVariableOp(while/lstm_cell_34/MatMul/ReadVariableOp2X
*while/lstm_cell_34/MatMul_1/ReadVariableOp*while/lstm_cell_34/MatMul_1/ReadVariableOp: 
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
lstm_143_while_cond_215104.
*lstm_143_while_lstm_143_while_loop_counter4
0lstm_143_while_lstm_143_while_maximum_iterations
lstm_143_while_placeholder 
lstm_143_while_placeholder_1 
lstm_143_while_placeholder_2 
lstm_143_while_placeholder_30
,lstm_143_while_less_lstm_143_strided_slice_1F
Blstm_143_while_lstm_143_while_cond_215104___redundant_placeholder0F
Blstm_143_while_lstm_143_while_cond_215104___redundant_placeholder1F
Blstm_143_while_lstm_143_while_cond_215104___redundant_placeholder2F
Blstm_143_while_lstm_143_while_cond_215104___redundant_placeholder3
lstm_143_while_identity

lstm_143/while/LessLesslstm_143_while_placeholder,lstm_143_while_less_lstm_143_strided_slice_1*
T0*
_output_shapes
: ]
lstm_143/while/IdentityIdentitylstm_143/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_143_while_identity lstm_143/while/Identity:output:0*(
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
while_body_212649
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_34_212673_0:	dÈ.
while_lstm_cell_34_212675_0:	2È*
while_lstm_cell_34_212677_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_34_212673:	dÈ,
while_lstm_cell_34_212675:	2È(
while_lstm_cell_34_212677:	È˘*while/lstm_cell_34/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_34/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_34_212673_0while_lstm_cell_34_212675_0while_lstm_cell_34_212677_0*
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
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_212590Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_34/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_34/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_34/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_34/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_34_212673while_lstm_cell_34_212673_0"8
while_lstm_cell_34_212675while_lstm_cell_34_212675_0"8
while_lstm_cell_34_212677while_lstm_cell_34_212677_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_34/StatefulPartitionedCall*while/lstm_cell_34/StatefulPartitionedCall: 
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
D__inference_lstm_141_layer_call_and_return_conditional_losses_212368

inputs&
lstm_cell_33_212286:	&
lstm_cell_33_212288:	d"
lstm_cell_33_212290:	
identity˘$lstm_cell_33/StatefulPartitionedCall˘while;
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
$lstm_cell_33/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_33_212286lstm_cell_33_212288lstm_cell_33_212290*
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
H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_212240n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_33_212286lstm_cell_33_212288lstm_cell_33_212290*
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
while_body_212299*
condR
while_cond_212298*K
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
NoOpNoOp%^lstm_cell_33/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_33/StatefulPartitionedCall$lstm_cell_33/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_212998
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_212998___redundant_placeholder04
0while_while_cond_212998___redundant_placeholder14
0while_while_cond_212998___redundant_placeholder24
0while_while_cond_212998___redundant_placeholder3
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

lstm_143_while_body_215105.
*lstm_143_while_lstm_143_while_loop_counter4
0lstm_143_while_lstm_143_while_maximum_iterations
lstm_143_while_placeholder 
lstm_143_while_placeholder_1 
lstm_143_while_placeholder_2 
lstm_143_while_placeholder_3-
)lstm_143_while_lstm_143_strided_slice_1_0i
elstm_143_while_tensorarrayv2read_tensorlistgetitem_lstm_143_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_143_while_lstm_cell_35_matmul_readvariableop_resource_0:2(P
>lstm_143_while_lstm_cell_35_matmul_1_readvariableop_resource_0:
(K
=lstm_143_while_lstm_cell_35_biasadd_readvariableop_resource_0:(
lstm_143_while_identity
lstm_143_while_identity_1
lstm_143_while_identity_2
lstm_143_while_identity_3
lstm_143_while_identity_4
lstm_143_while_identity_5+
'lstm_143_while_lstm_143_strided_slice_1g
clstm_143_while_tensorarrayv2read_tensorlistgetitem_lstm_143_tensorarrayunstack_tensorlistfromtensorL
:lstm_143_while_lstm_cell_35_matmul_readvariableop_resource:2(N
<lstm_143_while_lstm_cell_35_matmul_1_readvariableop_resource:
(I
;lstm_143_while_lstm_cell_35_biasadd_readvariableop_resource:(˘2lstm_143/while/lstm_cell_35/BiasAdd/ReadVariableOp˘1lstm_143/while/lstm_cell_35/MatMul/ReadVariableOp˘3lstm_143/while/lstm_cell_35/MatMul_1/ReadVariableOp
@lstm_143/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_143/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_143_while_tensorarrayv2read_tensorlistgetitem_lstm_143_tensorarrayunstack_tensorlistfromtensor_0lstm_143_while_placeholderIlstm_143/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_143/while/lstm_cell_35/MatMul/ReadVariableOpReadVariableOp<lstm_143_while_lstm_cell_35_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_143/while/lstm_cell_35/MatMulMatMul9lstm_143/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_143/while/lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_143/while/lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp>lstm_143_while_lstm_cell_35_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_143/while/lstm_cell_35/MatMul_1MatMullstm_143_while_placeholder_2;lstm_143/while/lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_143/while/lstm_cell_35/addAddV2,lstm_143/while/lstm_cell_35/MatMul:product:0.lstm_143/while/lstm_cell_35/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_143/while/lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp=lstm_143_while_lstm_cell_35_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_143/while/lstm_cell_35/BiasAddBiasAdd#lstm_143/while/lstm_cell_35/add:z:0:lstm_143/while/lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_143/while/lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_143/while/lstm_cell_35/splitSplit4lstm_143/while/lstm_cell_35/split/split_dim:output:0,lstm_143/while/lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_143/while/lstm_cell_35/SigmoidSigmoid*lstm_143/while/lstm_cell_35/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_143/while/lstm_cell_35/Sigmoid_1Sigmoid*lstm_143/while/lstm_cell_35/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_143/while/lstm_cell_35/mulMul)lstm_143/while/lstm_cell_35/Sigmoid_1:y:0lstm_143_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_143/while/lstm_cell_35/ReluRelu*lstm_143/while/lstm_cell_35/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_143/while/lstm_cell_35/mul_1Mul'lstm_143/while/lstm_cell_35/Sigmoid:y:0.lstm_143/while/lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_143/while/lstm_cell_35/add_1AddV2#lstm_143/while/lstm_cell_35/mul:z:0%lstm_143/while/lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_143/while/lstm_cell_35/Sigmoid_2Sigmoid*lstm_143/while/lstm_cell_35/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_143/while/lstm_cell_35/Relu_1Relu%lstm_143/while/lstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_143/while/lstm_cell_35/mul_2Mul)lstm_143/while/lstm_cell_35/Sigmoid_2:y:00lstm_143/while/lstm_cell_35/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_143/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_143_while_placeholder_1lstm_143_while_placeholder%lstm_143/while/lstm_cell_35/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_143/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_143/while/addAddV2lstm_143_while_placeholderlstm_143/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_143/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_143/while/add_1AddV2*lstm_143_while_lstm_143_while_loop_counterlstm_143/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_143/while/IdentityIdentitylstm_143/while/add_1:z:0^lstm_143/while/NoOp*
T0*
_output_shapes
: 
lstm_143/while/Identity_1Identity0lstm_143_while_lstm_143_while_maximum_iterations^lstm_143/while/NoOp*
T0*
_output_shapes
: t
lstm_143/while/Identity_2Identitylstm_143/while/add:z:0^lstm_143/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_143/while/Identity_3IdentityClstm_143/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_143/while/NoOp*
T0*
_output_shapes
: 
lstm_143/while/Identity_4Identity%lstm_143/while/lstm_cell_35/mul_2:z:0^lstm_143/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_143/while/Identity_5Identity%lstm_143/while/lstm_cell_35/add_1:z:0^lstm_143/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_143/while/NoOpNoOp3^lstm_143/while/lstm_cell_35/BiasAdd/ReadVariableOp2^lstm_143/while/lstm_cell_35/MatMul/ReadVariableOp4^lstm_143/while/lstm_cell_35/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_143_while_identity lstm_143/while/Identity:output:0"?
lstm_143_while_identity_1"lstm_143/while/Identity_1:output:0"?
lstm_143_while_identity_2"lstm_143/while/Identity_2:output:0"?
lstm_143_while_identity_3"lstm_143/while/Identity_3:output:0"?
lstm_143_while_identity_4"lstm_143/while/Identity_4:output:0"?
lstm_143_while_identity_5"lstm_143/while/Identity_5:output:0"T
'lstm_143_while_lstm_143_strided_slice_1)lstm_143_while_lstm_143_strided_slice_1_0"|
;lstm_143_while_lstm_cell_35_biasadd_readvariableop_resource=lstm_143_while_lstm_cell_35_biasadd_readvariableop_resource_0"~
<lstm_143_while_lstm_cell_35_matmul_1_readvariableop_resource>lstm_143_while_lstm_cell_35_matmul_1_readvariableop_resource_0"z
:lstm_143_while_lstm_cell_35_matmul_readvariableop_resource<lstm_143_while_lstm_cell_35_matmul_readvariableop_resource_0"Ì
clstm_143_while_tensorarrayv2read_tensorlistgetitem_lstm_143_tensorarrayunstack_tensorlistfromtensorelstm_143_while_tensorarrayv2read_tensorlistgetitem_lstm_143_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_143/while/lstm_cell_35/BiasAdd/ReadVariableOp2lstm_143/while/lstm_cell_35/BiasAdd/ReadVariableOp2f
1lstm_143/while/lstm_cell_35/MatMul/ReadVariableOp1lstm_143/while/lstm_cell_35/MatMul/ReadVariableOp2j
3lstm_143/while/lstm_cell_35/MatMul_1/ReadVariableOp3lstm_143/while/lstm_cell_35/MatMul_1/ReadVariableOp: 
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
Ğ
ë
I__inference_sequential_47_layer_call_and_return_conditional_losses_214140

inputs"
lstm_141_214113:	"
lstm_141_214115:	d
lstm_141_214117:	"
lstm_142_214120:	dÈ"
lstm_142_214122:	2È
lstm_142_214124:	È!
lstm_143_214127:2(!
lstm_143_214129:
(
lstm_143_214131:(!
dense_47_214134:

dense_47_214136:
identity˘ dense_47/StatefulPartitionedCall˘ lstm_141/StatefulPartitionedCall˘ lstm_142/StatefulPartitionedCall˘ lstm_143/StatefulPartitionedCall
 lstm_141/StatefulPartitionedCallStatefulPartitionedCallinputslstm_141_214113lstm_141_214115lstm_141_214117*
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
D__inference_lstm_141_layer_call_and_return_conditional_losses_214072Ş
 lstm_142/StatefulPartitionedCallStatefulPartitionedCall)lstm_141/StatefulPartitionedCall:output:0lstm_142_214120lstm_142_214122lstm_142_214124*
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
D__inference_lstm_142_layer_call_and_return_conditional_losses_213907Ĥ
 lstm_143/StatefulPartitionedCallStatefulPartitionedCall)lstm_142/StatefulPartitionedCall:output:0lstm_143_214127lstm_143_214129lstm_143_214131*
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
D__inference_lstm_143_layer_call_and_return_conditional_losses_213742
 dense_47/StatefulPartitionedCallStatefulPartitionedCall)lstm_143/StatefulPartitionedCall:output:0dense_47_214134dense_47_214136*
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
D__inference_dense_47_layer_call_and_return_conditional_losses_213544x
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_47/StatefulPartitionedCall!^lstm_141/StatefulPartitionedCall!^lstm_142/StatefulPartitionedCall!^lstm_143/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2D
 lstm_141/StatefulPartitionedCall lstm_141/StatefulPartitionedCall2D
 lstm_142/StatefulPartitionedCall lstm_142/StatefulPartitionedCall2D
 lstm_143/StatefulPartitionedCall lstm_143/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ö
³
)__inference_lstm_143_layer_call_fn_216471

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
D__inference_lstm_143_layer_call_and_return_conditional_losses_213742o
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
D__inference_lstm_142_layer_call_and_return_conditional_losses_216427

inputs>
+lstm_cell_34_matmul_readvariableop_resource:	dÈ@
-lstm_cell_34_matmul_1_readvariableop_resource:	2È;
,lstm_cell_34_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_34/BiasAdd/ReadVariableOp˘"lstm_cell_34/MatMul/ReadVariableOp˘$lstm_cell_34/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_34/MatMul/ReadVariableOpReadVariableOp+lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_34/MatMulMatMulstrided_slice_2:output:0*lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_34/MatMul_1MatMulzeros:output:0,lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_34/addAddV2lstm_cell_34/MatMul:product:0lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_34/BiasAddBiasAddlstm_cell_34/add:z:0+lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_34/splitSplit%lstm_cell_34/split/split_dim:output:0lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_34/SigmoidSigmoidlstm_cell_34/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_34/Sigmoid_1Sigmoidlstm_cell_34/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_34/mulMullstm_cell_34/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_34/ReluRelulstm_cell_34/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_34/mul_1Mullstm_cell_34/Sigmoid:y:0lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_34/add_1AddV2lstm_cell_34/mul:z:0lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_34/Sigmoid_2Sigmoidlstm_cell_34/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_34/Relu_1Relulstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_34/mul_2Mullstm_cell_34/Sigmoid_2:y:0!lstm_cell_34/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_34_matmul_readvariableop_resource-lstm_cell_34_matmul_1_readvariableop_resource,lstm_cell_34_biasadd_readvariableop_resource*
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
while_body_216343*
condR
while_cond_216342*K
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
NoOpNoOp$^lstm_cell_34/BiasAdd/ReadVariableOp#^lstm_cell_34/MatMul/ReadVariableOp%^lstm_cell_34/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_34/BiasAdd/ReadVariableOp#lstm_cell_34/BiasAdd/ReadVariableOp2H
"lstm_cell_34/MatMul/ReadVariableOp"lstm_cell_34/MatMul/ReadVariableOp2L
$lstm_cell_34/MatMul_1/ReadVariableOp$lstm_cell_34/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
À


$__inference_signature_wrapper_214287
lstm_141_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_141_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_212027o
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
_user_specified_namelstm_141_input
ÔJ

D__inference_lstm_143_layer_call_and_return_conditional_losses_216757
inputs_0=
+lstm_cell_35_matmul_readvariableop_resource:2(?
-lstm_cell_35_matmul_1_readvariableop_resource:
(:
,lstm_cell_35_biasadd_readvariableop_resource:(
identity˘#lstm_cell_35/BiasAdd/ReadVariableOp˘"lstm_cell_35/MatMul/ReadVariableOp˘$lstm_cell_35/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_35/MatMul/ReadVariableOpReadVariableOp+lstm_cell_35_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_35/MatMulMatMulstrided_slice_2:output:0*lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_35_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_35/MatMul_1MatMulzeros:output:0,lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_35/addAddV2lstm_cell_35/MatMul:product:0lstm_cell_35/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_35_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_35/BiasAddBiasAddlstm_cell_35/add:z:0+lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_35/splitSplit%lstm_cell_35/split/split_dim:output:0lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_35/SigmoidSigmoidlstm_cell_35/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_35/Sigmoid_1Sigmoidlstm_cell_35/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_35/mulMullstm_cell_35/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_35/ReluRelulstm_cell_35/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_35/mul_1Mullstm_cell_35/Sigmoid:y:0lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_35/add_1AddV2lstm_cell_35/mul:z:0lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_35/Sigmoid_2Sigmoidlstm_cell_35/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_35/Relu_1Relulstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_35/mul_2Mullstm_cell_35/Sigmoid_2:y:0!lstm_cell_35/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_35_matmul_readvariableop_resource-lstm_cell_35_matmul_1_readvariableop_resource,lstm_cell_35_biasadd_readvariableop_resource*
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
while_body_216673*
condR
while_cond_216672*K
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
NoOpNoOp$^lstm_cell_35/BiasAdd/ReadVariableOp#^lstm_cell_35/MatMul/ReadVariableOp%^lstm_cell_35/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_35/BiasAdd/ReadVariableOp#lstm_cell_35/BiasAdd/ReadVariableOp2H
"lstm_cell_35/MatMul/ReadVariableOp"lstm_cell_35/MatMul/ReadVariableOp2L
$lstm_cell_35/MatMul_1/ReadVariableOp$lstm_cell_35/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
µ
?
while_cond_215913
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_215913___redundant_placeholder04
0while_while_cond_215913___redundant_placeholder14
0while_while_cond_215913___redundant_placeholder24
0while_while_cond_215913___redundant_placeholder3
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
S
³
(sequential_47_lstm_141_while_body_211659J
Fsequential_47_lstm_141_while_sequential_47_lstm_141_while_loop_counterP
Lsequential_47_lstm_141_while_sequential_47_lstm_141_while_maximum_iterations,
(sequential_47_lstm_141_while_placeholder.
*sequential_47_lstm_141_while_placeholder_1.
*sequential_47_lstm_141_while_placeholder_2.
*sequential_47_lstm_141_while_placeholder_3I
Esequential_47_lstm_141_while_sequential_47_lstm_141_strided_slice_1_0
sequential_47_lstm_141_while_tensorarrayv2read_tensorlistgetitem_sequential_47_lstm_141_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_47_lstm_141_while_lstm_cell_33_matmul_readvariableop_resource_0:	_
Lsequential_47_lstm_141_while_lstm_cell_33_matmul_1_readvariableop_resource_0:	dZ
Ksequential_47_lstm_141_while_lstm_cell_33_biasadd_readvariableop_resource_0:	)
%sequential_47_lstm_141_while_identity+
'sequential_47_lstm_141_while_identity_1+
'sequential_47_lstm_141_while_identity_2+
'sequential_47_lstm_141_while_identity_3+
'sequential_47_lstm_141_while_identity_4+
'sequential_47_lstm_141_while_identity_5G
Csequential_47_lstm_141_while_sequential_47_lstm_141_strided_slice_1
sequential_47_lstm_141_while_tensorarrayv2read_tensorlistgetitem_sequential_47_lstm_141_tensorarrayunstack_tensorlistfromtensor[
Hsequential_47_lstm_141_while_lstm_cell_33_matmul_readvariableop_resource:	]
Jsequential_47_lstm_141_while_lstm_cell_33_matmul_1_readvariableop_resource:	dX
Isequential_47_lstm_141_while_lstm_cell_33_biasadd_readvariableop_resource:	˘@sequential_47/lstm_141/while/lstm_cell_33/BiasAdd/ReadVariableOp˘?sequential_47/lstm_141/while/lstm_cell_33/MatMul/ReadVariableOp˘Asequential_47/lstm_141/while/lstm_cell_33/MatMul_1/ReadVariableOp
Nsequential_47/lstm_141/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
@sequential_47/lstm_141/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_47_lstm_141_while_tensorarrayv2read_tensorlistgetitem_sequential_47_lstm_141_tensorarrayunstack_tensorlistfromtensor_0(sequential_47_lstm_141_while_placeholderWsequential_47/lstm_141/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ë
?sequential_47/lstm_141/while/lstm_cell_33/MatMul/ReadVariableOpReadVariableOpJsequential_47_lstm_141_while_lstm_cell_33_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0˙
0sequential_47/lstm_141/while/lstm_cell_33/MatMulMatMulGsequential_47/lstm_141/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_47/lstm_141/while/lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ï
Asequential_47/lstm_141/while/lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOpLsequential_47_lstm_141_while_lstm_cell_33_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĉ
2sequential_47/lstm_141/while/lstm_cell_33/MatMul_1MatMul*sequential_47_lstm_141_while_placeholder_2Isequential_47/lstm_141/while/lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-sequential_47/lstm_141/while/lstm_cell_33/addAddV2:sequential_47/lstm_141/while/lstm_cell_33/MatMul:product:0<sequential_47/lstm_141/while/lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙É
@sequential_47/lstm_141/while/lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOpKsequential_47_lstm_141_while_lstm_cell_33_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ì
1sequential_47/lstm_141/while/lstm_cell_33/BiasAddBiasAdd1sequential_47/lstm_141/while/lstm_cell_33/add:z:0Hsequential_47/lstm_141/while/lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙{
9sequential_47/lstm_141/while/lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_47/lstm_141/while/lstm_cell_33/splitSplitBsequential_47/lstm_141/while/lstm_cell_33/split/split_dim:output:0:sequential_47/lstm_141/while/lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split¨
1sequential_47/lstm_141/while/lstm_cell_33/SigmoidSigmoid8sequential_47/lstm_141/while/lstm_cell_33/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŞ
3sequential_47/lstm_141/while/lstm_cell_33/Sigmoid_1Sigmoid8sequential_47/lstm_141/while/lstm_cell_33/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dË
-sequential_47/lstm_141/while/lstm_cell_33/mulMul7sequential_47/lstm_141/while/lstm_cell_33/Sigmoid_1:y:0*sequential_47_lstm_141_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d˘
.sequential_47/lstm_141/while/lstm_cell_33/ReluRelu8sequential_47/lstm_141/while/lstm_cell_33/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŬ
/sequential_47/lstm_141/while/lstm_cell_33/mul_1Mul5sequential_47/lstm_141/while/lstm_cell_33/Sigmoid:y:0<sequential_47/lstm_141/while/lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÒ
/sequential_47/lstm_141/while/lstm_cell_33/add_1AddV21sequential_47/lstm_141/while/lstm_cell_33/mul:z:03sequential_47/lstm_141/while/lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŞ
3sequential_47/lstm_141/while/lstm_cell_33/Sigmoid_2Sigmoid8sequential_47/lstm_141/while/lstm_cell_33/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
0sequential_47/lstm_141/while/lstm_cell_33/Relu_1Relu3sequential_47/lstm_141/while/lstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dá
/sequential_47/lstm_141/while/lstm_cell_33/mul_2Mul7sequential_47/lstm_141/while/lstm_cell_33/Sigmoid_2:y:0>sequential_47/lstm_141/while/lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
Asequential_47/lstm_141/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_47_lstm_141_while_placeholder_1(sequential_47_lstm_141_while_placeholder3sequential_47/lstm_141/while/lstm_cell_33/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_47/lstm_141/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_47/lstm_141/while/addAddV2(sequential_47_lstm_141_while_placeholder+sequential_47/lstm_141/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_47/lstm_141/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_47/lstm_141/while/add_1AddV2Fsequential_47_lstm_141_while_sequential_47_lstm_141_while_loop_counter-sequential_47/lstm_141/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_47/lstm_141/while/IdentityIdentity&sequential_47/lstm_141/while/add_1:z:0"^sequential_47/lstm_141/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_47/lstm_141/while/Identity_1IdentityLsequential_47_lstm_141_while_sequential_47_lstm_141_while_maximum_iterations"^sequential_47/lstm_141/while/NoOp*
T0*
_output_shapes
: 
'sequential_47/lstm_141/while/Identity_2Identity$sequential_47/lstm_141/while/add:z:0"^sequential_47/lstm_141/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_47/lstm_141/while/Identity_3IdentityQsequential_47/lstm_141/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_47/lstm_141/while/NoOp*
T0*
_output_shapes
: ?
'sequential_47/lstm_141/while/Identity_4Identity3sequential_47/lstm_141/while/lstm_cell_33/mul_2:z:0"^sequential_47/lstm_141/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
'sequential_47/lstm_141/while/Identity_5Identity3sequential_47/lstm_141/while/lstm_cell_33/add_1:z:0"^sequential_47/lstm_141/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĴ
!sequential_47/lstm_141/while/NoOpNoOpA^sequential_47/lstm_141/while/lstm_cell_33/BiasAdd/ReadVariableOp@^sequential_47/lstm_141/while/lstm_cell_33/MatMul/ReadVariableOpB^sequential_47/lstm_141/while/lstm_cell_33/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_47_lstm_141_while_identity.sequential_47/lstm_141/while/Identity:output:0"[
'sequential_47_lstm_141_while_identity_10sequential_47/lstm_141/while/Identity_1:output:0"[
'sequential_47_lstm_141_while_identity_20sequential_47/lstm_141/while/Identity_2:output:0"[
'sequential_47_lstm_141_while_identity_30sequential_47/lstm_141/while/Identity_3:output:0"[
'sequential_47_lstm_141_while_identity_40sequential_47/lstm_141/while/Identity_4:output:0"[
'sequential_47_lstm_141_while_identity_50sequential_47/lstm_141/while/Identity_5:output:0"
Isequential_47_lstm_141_while_lstm_cell_33_biasadd_readvariableop_resourceKsequential_47_lstm_141_while_lstm_cell_33_biasadd_readvariableop_resource_0"
Jsequential_47_lstm_141_while_lstm_cell_33_matmul_1_readvariableop_resourceLsequential_47_lstm_141_while_lstm_cell_33_matmul_1_readvariableop_resource_0"
Hsequential_47_lstm_141_while_lstm_cell_33_matmul_readvariableop_resourceJsequential_47_lstm_141_while_lstm_cell_33_matmul_readvariableop_resource_0"
Csequential_47_lstm_141_while_sequential_47_lstm_141_strided_slice_1Esequential_47_lstm_141_while_sequential_47_lstm_141_strided_slice_1_0"
sequential_47_lstm_141_while_tensorarrayv2read_tensorlistgetitem_sequential_47_lstm_141_tensorarrayunstack_tensorlistfromtensorsequential_47_lstm_141_while_tensorarrayv2read_tensorlistgetitem_sequential_47_lstm_141_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2
@sequential_47/lstm_141/while/lstm_cell_33/BiasAdd/ReadVariableOp@sequential_47/lstm_141/while/lstm_cell_33/BiasAdd/ReadVariableOp2
?sequential_47/lstm_141/while/lstm_cell_33/MatMul/ReadVariableOp?sequential_47/lstm_141/while/lstm_cell_33/MatMul/ReadVariableOp2
Asequential_47/lstm_141/while/lstm_cell_33/MatMul_1/ReadVariableOpAsequential_47/lstm_141/while/lstm_cell_33/MatMul_1/ReadVariableOp: 
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
while_cond_216342
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_216342___redundant_placeholder04
0while_while_cond_216342___redundant_placeholder14
0while_while_cond_216342___redundant_placeholder24
0while_while_cond_216342___redundant_placeholder3
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
lstm_141_while_cond_214826.
*lstm_141_while_lstm_141_while_loop_counter4
0lstm_141_while_lstm_141_while_maximum_iterations
lstm_141_while_placeholder 
lstm_141_while_placeholder_1 
lstm_141_while_placeholder_2 
lstm_141_while_placeholder_30
,lstm_141_while_less_lstm_141_strided_slice_1F
Blstm_141_while_lstm_141_while_cond_214826___redundant_placeholder0F
Blstm_141_while_lstm_141_while_cond_214826___redundant_placeholder1F
Blstm_141_while_lstm_141_while_cond_214826___redundant_placeholder2F
Blstm_141_while_lstm_141_while_cond_214826___redundant_placeholder3
lstm_141_while_identity

lstm_141/while/LessLesslstm_141_while_placeholder,lstm_141_while_less_lstm_141_strided_slice_1*
T0*
_output_shapes
: ]
lstm_141/while/IdentityIdentitylstm_141/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_141_while_identity lstm_141/while/Identity:output:0*(
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
while_body_216057
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_34_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_34_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_34_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_34_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_34_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_34_biasadd_readvariableop_resource:	È˘)while/lstm_cell_34/BiasAdd/ReadVariableOp˘(while/lstm_cell_34/MatMul/ReadVariableOp˘*while/lstm_cell_34/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_34/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_34/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_34/addAddV2#while/lstm_cell_34/MatMul:product:0%while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_34/BiasAddBiasAddwhile/lstm_cell_34/add:z:01while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_34/splitSplit+while/lstm_cell_34/split/split_dim:output:0#while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_34/SigmoidSigmoid!while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_34/Sigmoid_1Sigmoid!while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_34/mulMul while/lstm_cell_34/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_34/ReluRelu!while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_34/mul_1Mulwhile/lstm_cell_34/Sigmoid:y:0%while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_34/add_1AddV2while/lstm_cell_34/mul:z:0while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_34/Sigmoid_2Sigmoid!while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_34/Relu_1Reluwhile/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_34/mul_2Mul while/lstm_cell_34/Sigmoid_2:y:0'while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_34/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_34/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_34/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_34/BiasAdd/ReadVariableOp)^while/lstm_cell_34/MatMul/ReadVariableOp+^while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_34_biasadd_readvariableop_resource4while_lstm_cell_34_biasadd_readvariableop_resource_0"l
3while_lstm_cell_34_matmul_1_readvariableop_resource5while_lstm_cell_34_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_34_matmul_readvariableop_resource3while_lstm_cell_34_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_34/BiasAdd/ReadVariableOp)while/lstm_cell_34/BiasAdd/ReadVariableOp2T
(while/lstm_cell_34/MatMul/ReadVariableOp(while/lstm_cell_34/MatMul/ReadVariableOp2X
*while/lstm_cell_34/MatMul_1/ReadVariableOp*while/lstm_cell_34/MatMul_1/ReadVariableOp: 
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
ë
ö
-__inference_lstm_cell_33_layer_call_fn_217096

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
H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_212240o
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
?
ó
I__inference_sequential_47_layer_call_and_return_conditional_losses_214222
lstm_141_input"
lstm_141_214195:	"
lstm_141_214197:	d
lstm_141_214199:	"
lstm_142_214202:	dÈ"
lstm_142_214204:	2È
lstm_142_214206:	È!
lstm_143_214209:2(!
lstm_143_214211:
(
lstm_143_214213:(!
dense_47_214216:

dense_47_214218:
identity˘ dense_47/StatefulPartitionedCall˘ lstm_141/StatefulPartitionedCall˘ lstm_142/StatefulPartitionedCall˘ lstm_143/StatefulPartitionedCall
 lstm_141/StatefulPartitionedCallStatefulPartitionedCalllstm_141_inputlstm_141_214195lstm_141_214197lstm_141_214199*
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
D__inference_lstm_141_layer_call_and_return_conditional_losses_213226Ş
 lstm_142/StatefulPartitionedCallStatefulPartitionedCall)lstm_141/StatefulPartitionedCall:output:0lstm_142_214202lstm_142_214204lstm_142_214206*
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
D__inference_lstm_142_layer_call_and_return_conditional_losses_213376Ĥ
 lstm_143/StatefulPartitionedCallStatefulPartitionedCall)lstm_142/StatefulPartitionedCall:output:0lstm_143_214209lstm_143_214211lstm_143_214213*
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
D__inference_lstm_143_layer_call_and_return_conditional_losses_213526
 dense_47/StatefulPartitionedCallStatefulPartitionedCall)lstm_143/StatefulPartitionedCall:output:0dense_47_214216dense_47_214218*
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
D__inference_dense_47_layer_call_and_return_conditional_losses_213544x
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_47/StatefulPartitionedCall!^lstm_141/StatefulPartitionedCall!^lstm_142/StatefulPartitionedCall!^lstm_143/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2D
 lstm_141/StatefulPartitionedCall lstm_141/StatefulPartitionedCall2D
 lstm_142/StatefulPartitionedCall lstm_142/StatefulPartitionedCall2D
 lstm_143/StatefulPartitionedCall lstm_143/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_141_input
8

D__inference_lstm_142_layer_call_and_return_conditional_losses_212527

inputs&
lstm_cell_34_212445:	dÈ&
lstm_cell_34_212447:	2È"
lstm_cell_34_212449:	È
identity˘$lstm_cell_34/StatefulPartitionedCall˘while;
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
$lstm_cell_34/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_34_212445lstm_cell_34_212447lstm_cell_34_212449*
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
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_212444n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_34_212445lstm_cell_34_212447lstm_cell_34_212449*
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
while_body_212458*
condR
while_cond_212457*K
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
NoOpNoOp%^lstm_cell_34/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_34/StatefulPartitionedCall$lstm_cell_34/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
8
?
while_body_215914
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_34_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_34_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_34_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_34_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_34_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_34_biasadd_readvariableop_resource:	È˘)while/lstm_cell_34/BiasAdd/ReadVariableOp˘(while/lstm_cell_34/MatMul/ReadVariableOp˘*while/lstm_cell_34/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_34/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_34/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_34/addAddV2#while/lstm_cell_34/MatMul:product:0%while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_34/BiasAddBiasAddwhile/lstm_cell_34/add:z:01while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_34/splitSplit+while/lstm_cell_34/split/split_dim:output:0#while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_34/SigmoidSigmoid!while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_34/Sigmoid_1Sigmoid!while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_34/mulMul while/lstm_cell_34/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_34/ReluRelu!while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_34/mul_1Mulwhile/lstm_cell_34/Sigmoid:y:0%while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_34/add_1AddV2while/lstm_cell_34/mul:z:0while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_34/Sigmoid_2Sigmoid!while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_34/Relu_1Reluwhile/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_34/mul_2Mul while/lstm_cell_34/Sigmoid_2:y:0'while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_34/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_34/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_34/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_34/BiasAdd/ReadVariableOp)^while/lstm_cell_34/MatMul/ReadVariableOp+^while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_34_biasadd_readvariableop_resource4while_lstm_cell_34_biasadd_readvariableop_resource_0"l
3while_lstm_cell_34_matmul_1_readvariableop_resource5while_lstm_cell_34_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_34_matmul_readvariableop_resource3while_lstm_cell_34_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_34/BiasAdd/ReadVariableOp)while/lstm_cell_34/BiasAdd/ReadVariableOp2T
(while/lstm_cell_34/MatMul/ReadVariableOp(while/lstm_cell_34/MatMul/ReadVariableOp2X
*while/lstm_cell_34/MatMul_1/ReadVariableOp*while/lstm_cell_34/MatMul_1/ReadVariableOp: 
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
Ŭ

H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_217258

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
¤J

D__inference_lstm_141_layer_call_and_return_conditional_losses_215811

inputs>
+lstm_cell_33_matmul_readvariableop_resource:	@
-lstm_cell_33_matmul_1_readvariableop_resource:	d;
,lstm_cell_33_biasadd_readvariableop_resource:	
identity˘#lstm_cell_33/BiasAdd/ReadVariableOp˘"lstm_cell_33/MatMul/ReadVariableOp˘$lstm_cell_33/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_33/MatMul/ReadVariableOpReadVariableOp+lstm_cell_33_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_33/MatMulMatMulstrided_slice_2:output:0*lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_33_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_33/MatMul_1MatMulzeros:output:0,lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_33/addAddV2lstm_cell_33/MatMul:product:0lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_33_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_33/BiasAddBiasAddlstm_cell_33/add:z:0+lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_33/splitSplit%lstm_cell_33/split/split_dim:output:0lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_33/SigmoidSigmoidlstm_cell_33/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_33/Sigmoid_1Sigmoidlstm_cell_33/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_33/mulMullstm_cell_33/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_33/ReluRelulstm_cell_33/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_33/mul_1Mullstm_cell_33/Sigmoid:y:0lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_33/add_1AddV2lstm_cell_33/mul:z:0lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_33/Sigmoid_2Sigmoidlstm_cell_33/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_33/Relu_1Relulstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_33/mul_2Mullstm_cell_33/Sigmoid_2:y:0!lstm_cell_33/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_33_matmul_readvariableop_resource-lstm_cell_33_matmul_1_readvariableop_resource,lstm_cell_33_biasadd_readvariableop_resource*
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
while_body_215727*
condR
while_cond_215726*K
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
NoOpNoOp$^lstm_cell_33/BiasAdd/ReadVariableOp#^lstm_cell_33/MatMul/ReadVariableOp%^lstm_cell_33/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_33/BiasAdd/ReadVariableOp#lstm_cell_33/BiasAdd/ReadVariableOp2H
"lstm_cell_33/MatMul/ReadVariableOp"lstm_cell_33/MatMul/ReadVariableOp2L
$lstm_cell_33/MatMul_1/ReadVariableOp$lstm_cell_33/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
è
ó
-__inference_lstm_cell_35_layer_call_fn_217292

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
H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_212940o
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
while_cond_215297
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_215297___redundant_placeholder04
0while_while_cond_215297___redundant_placeholder14
0while_while_cond_215297___redundant_placeholder24
0while_while_cond_215297___redundant_placeholder3
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
while_body_213988
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_33_matmul_readvariableop_resource_0:	H
5while_lstm_cell_33_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_33_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_33_matmul_readvariableop_resource:	F
3while_lstm_cell_33_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_33_biasadd_readvariableop_resource:	˘)while/lstm_cell_33/BiasAdd/ReadVariableOp˘(while/lstm_cell_33/MatMul/ReadVariableOp˘*while/lstm_cell_33/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_33/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_33_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_33/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_33_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_33/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_33/addAddV2#while/lstm_cell_33/MatMul:product:0%while/lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_33_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_33/BiasAddBiasAddwhile/lstm_cell_33/add:z:01while/lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_33/splitSplit+while/lstm_cell_33/split/split_dim:output:0#while/lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_33/SigmoidSigmoid!while/lstm_cell_33/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_33/Sigmoid_1Sigmoid!while/lstm_cell_33/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_33/mulMul while/lstm_cell_33/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_33/ReluRelu!while/lstm_cell_33/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_33/mul_1Mulwhile/lstm_cell_33/Sigmoid:y:0%while/lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_33/add_1AddV2while/lstm_cell_33/mul:z:0while/lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_33/Sigmoid_2Sigmoid!while/lstm_cell_33/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_33/Relu_1Reluwhile/lstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_33/mul_2Mul while/lstm_cell_33/Sigmoid_2:y:0'while/lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_33/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_33/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_33/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_33/BiasAdd/ReadVariableOp)^while/lstm_cell_33/MatMul/ReadVariableOp+^while/lstm_cell_33/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_33_biasadd_readvariableop_resource4while_lstm_cell_33_biasadd_readvariableop_resource_0"l
3while_lstm_cell_33_matmul_1_readvariableop_resource5while_lstm_cell_33_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_33_matmul_readvariableop_resource3while_lstm_cell_33_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_33/BiasAdd/ReadVariableOp)while/lstm_cell_33/BiasAdd/ReadVariableOp2T
(while/lstm_cell_33/MatMul/ReadVariableOp(while/lstm_cell_33/MatMul/ReadVariableOp2X
*while/lstm_cell_33/MatMul_1/ReadVariableOp*while/lstm_cell_33/MatMul_1/ReadVariableOp: 
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

lstm_141_while_body_214400.
*lstm_141_while_lstm_141_while_loop_counter4
0lstm_141_while_lstm_141_while_maximum_iterations
lstm_141_while_placeholder 
lstm_141_while_placeholder_1 
lstm_141_while_placeholder_2 
lstm_141_while_placeholder_3-
)lstm_141_while_lstm_141_strided_slice_1_0i
elstm_141_while_tensorarrayv2read_tensorlistgetitem_lstm_141_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_141_while_lstm_cell_33_matmul_readvariableop_resource_0:	Q
>lstm_141_while_lstm_cell_33_matmul_1_readvariableop_resource_0:	dL
=lstm_141_while_lstm_cell_33_biasadd_readvariableop_resource_0:	
lstm_141_while_identity
lstm_141_while_identity_1
lstm_141_while_identity_2
lstm_141_while_identity_3
lstm_141_while_identity_4
lstm_141_while_identity_5+
'lstm_141_while_lstm_141_strided_slice_1g
clstm_141_while_tensorarrayv2read_tensorlistgetitem_lstm_141_tensorarrayunstack_tensorlistfromtensorM
:lstm_141_while_lstm_cell_33_matmul_readvariableop_resource:	O
<lstm_141_while_lstm_cell_33_matmul_1_readvariableop_resource:	dJ
;lstm_141_while_lstm_cell_33_biasadd_readvariableop_resource:	˘2lstm_141/while/lstm_cell_33/BiasAdd/ReadVariableOp˘1lstm_141/while/lstm_cell_33/MatMul/ReadVariableOp˘3lstm_141/while/lstm_cell_33/MatMul_1/ReadVariableOp
@lstm_141/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_141/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_141_while_tensorarrayv2read_tensorlistgetitem_lstm_141_tensorarrayunstack_tensorlistfromtensor_0lstm_141_while_placeholderIlstm_141/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_141/while/lstm_cell_33/MatMul/ReadVariableOpReadVariableOp<lstm_141_while_lstm_cell_33_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_141/while/lstm_cell_33/MatMulMatMul9lstm_141/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_141/while/lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_141/while/lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp>lstm_141_while_lstm_cell_33_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_141/while/lstm_cell_33/MatMul_1MatMullstm_141_while_placeholder_2;lstm_141/while/lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_141/while/lstm_cell_33/addAddV2,lstm_141/while/lstm_cell_33/MatMul:product:0.lstm_141/while/lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_141/while/lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp=lstm_141_while_lstm_cell_33_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_141/while/lstm_cell_33/BiasAddBiasAdd#lstm_141/while/lstm_cell_33/add:z:0:lstm_141/while/lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_141/while/lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_141/while/lstm_cell_33/splitSplit4lstm_141/while/lstm_cell_33/split/split_dim:output:0,lstm_141/while/lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_141/while/lstm_cell_33/SigmoidSigmoid*lstm_141/while/lstm_cell_33/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_141/while/lstm_cell_33/Sigmoid_1Sigmoid*lstm_141/while/lstm_cell_33/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_141/while/lstm_cell_33/mulMul)lstm_141/while/lstm_cell_33/Sigmoid_1:y:0lstm_141_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_141/while/lstm_cell_33/ReluRelu*lstm_141/while/lstm_cell_33/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_141/while/lstm_cell_33/mul_1Mul'lstm_141/while/lstm_cell_33/Sigmoid:y:0.lstm_141/while/lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_141/while/lstm_cell_33/add_1AddV2#lstm_141/while/lstm_cell_33/mul:z:0%lstm_141/while/lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_141/while/lstm_cell_33/Sigmoid_2Sigmoid*lstm_141/while/lstm_cell_33/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_141/while/lstm_cell_33/Relu_1Relu%lstm_141/while/lstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_141/while/lstm_cell_33/mul_2Mul)lstm_141/while/lstm_cell_33/Sigmoid_2:y:00lstm_141/while/lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_141/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_141_while_placeholder_1lstm_141_while_placeholder%lstm_141/while/lstm_cell_33/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_141/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_141/while/addAddV2lstm_141_while_placeholderlstm_141/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_141/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_141/while/add_1AddV2*lstm_141_while_lstm_141_while_loop_counterlstm_141/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_141/while/IdentityIdentitylstm_141/while/add_1:z:0^lstm_141/while/NoOp*
T0*
_output_shapes
: 
lstm_141/while/Identity_1Identity0lstm_141_while_lstm_141_while_maximum_iterations^lstm_141/while/NoOp*
T0*
_output_shapes
: t
lstm_141/while/Identity_2Identitylstm_141/while/add:z:0^lstm_141/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_141/while/Identity_3IdentityClstm_141/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_141/while/NoOp*
T0*
_output_shapes
: 
lstm_141/while/Identity_4Identity%lstm_141/while/lstm_cell_33/mul_2:z:0^lstm_141/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_141/while/Identity_5Identity%lstm_141/while/lstm_cell_33/add_1:z:0^lstm_141/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_141/while/NoOpNoOp3^lstm_141/while/lstm_cell_33/BiasAdd/ReadVariableOp2^lstm_141/while/lstm_cell_33/MatMul/ReadVariableOp4^lstm_141/while/lstm_cell_33/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_141_while_identity lstm_141/while/Identity:output:0"?
lstm_141_while_identity_1"lstm_141/while/Identity_1:output:0"?
lstm_141_while_identity_2"lstm_141/while/Identity_2:output:0"?
lstm_141_while_identity_3"lstm_141/while/Identity_3:output:0"?
lstm_141_while_identity_4"lstm_141/while/Identity_4:output:0"?
lstm_141_while_identity_5"lstm_141/while/Identity_5:output:0"T
'lstm_141_while_lstm_141_strided_slice_1)lstm_141_while_lstm_141_strided_slice_1_0"|
;lstm_141_while_lstm_cell_33_biasadd_readvariableop_resource=lstm_141_while_lstm_cell_33_biasadd_readvariableop_resource_0"~
<lstm_141_while_lstm_cell_33_matmul_1_readvariableop_resource>lstm_141_while_lstm_cell_33_matmul_1_readvariableop_resource_0"z
:lstm_141_while_lstm_cell_33_matmul_readvariableop_resource<lstm_141_while_lstm_cell_33_matmul_readvariableop_resource_0"Ì
clstm_141_while_tensorarrayv2read_tensorlistgetitem_lstm_141_tensorarrayunstack_tensorlistfromtensorelstm_141_while_tensorarrayv2read_tensorlistgetitem_lstm_141_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_141/while/lstm_cell_33/BiasAdd/ReadVariableOp2lstm_141/while/lstm_cell_33/BiasAdd/ReadVariableOp2f
1lstm_141/while/lstm_cell_33/MatMul/ReadVariableOp1lstm_141/while/lstm_cell_33/MatMul/ReadVariableOp2j
3lstm_141/while/lstm_cell_33/MatMul_1/ReadVariableOp3lstm_141/while/lstm_cell_33/MatMul_1/ReadVariableOp: 
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
while_body_213658
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_35_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_35_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_35_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_35_matmul_readvariableop_resource:2(E
3while_lstm_cell_35_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_35_biasadd_readvariableop_resource:(˘)while/lstm_cell_35/BiasAdd/ReadVariableOp˘(while/lstm_cell_35/MatMul/ReadVariableOp˘*while/lstm_cell_35/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_35/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_35_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_35/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_35_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_35/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_35/addAddV2#while/lstm_cell_35/MatMul:product:0%while/lstm_cell_35/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_35_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_35/BiasAddBiasAddwhile/lstm_cell_35/add:z:01while/lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_35/splitSplit+while/lstm_cell_35/split/split_dim:output:0#while/lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_35/SigmoidSigmoid!while/lstm_cell_35/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_35/Sigmoid_1Sigmoid!while/lstm_cell_35/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_35/mulMul while/lstm_cell_35/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_35/ReluRelu!while/lstm_cell_35/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_35/mul_1Mulwhile/lstm_cell_35/Sigmoid:y:0%while/lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_35/add_1AddV2while/lstm_cell_35/mul:z:0while/lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_35/Sigmoid_2Sigmoid!while/lstm_cell_35/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_35/Relu_1Reluwhile/lstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_35/mul_2Mul while/lstm_cell_35/Sigmoid_2:y:0'while/lstm_cell_35/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_35/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_35/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_35/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_35/BiasAdd/ReadVariableOp)^while/lstm_cell_35/MatMul/ReadVariableOp+^while/lstm_cell_35/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_35_biasadd_readvariableop_resource4while_lstm_cell_35_biasadd_readvariableop_resource_0"l
3while_lstm_cell_35_matmul_1_readvariableop_resource5while_lstm_cell_35_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_35_matmul_readvariableop_resource3while_lstm_cell_35_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_35/BiasAdd/ReadVariableOp)while/lstm_cell_35/BiasAdd/ReadVariableOp2T
(while/lstm_cell_35/MatMul/ReadVariableOp(while/lstm_cell_35/MatMul/ReadVariableOp2X
*while/lstm_cell_35/MatMul_1/ReadVariableOp*while/lstm_cell_35/MatMul_1/ReadVariableOp: 
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
lstm_142_while_cond_214965.
*lstm_142_while_lstm_142_while_loop_counter4
0lstm_142_while_lstm_142_while_maximum_iterations
lstm_142_while_placeholder 
lstm_142_while_placeholder_1 
lstm_142_while_placeholder_2 
lstm_142_while_placeholder_30
,lstm_142_while_less_lstm_142_strided_slice_1F
Blstm_142_while_lstm_142_while_cond_214965___redundant_placeholder0F
Blstm_142_while_lstm_142_while_cond_214965___redundant_placeholder1F
Blstm_142_while_lstm_142_while_cond_214965___redundant_placeholder2F
Blstm_142_while_lstm_142_while_cond_214965___redundant_placeholder3
lstm_142_while_identity

lstm_142/while/LessLesslstm_142_while_placeholder,lstm_142_while_less_lstm_142_strided_slice_1*
T0*
_output_shapes
: ]
lstm_142/while/IdentityIdentitylstm_142/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_142_while_identity lstm_142/while/Identity:output:0*(
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
I__inference_sequential_47_layer_call_and_return_conditional_losses_214768

inputsG
4lstm_141_lstm_cell_33_matmul_readvariableop_resource:	I
6lstm_141_lstm_cell_33_matmul_1_readvariableop_resource:	dD
5lstm_141_lstm_cell_33_biasadd_readvariableop_resource:	G
4lstm_142_lstm_cell_34_matmul_readvariableop_resource:	dÈI
6lstm_142_lstm_cell_34_matmul_1_readvariableop_resource:	2ÈD
5lstm_142_lstm_cell_34_biasadd_readvariableop_resource:	ÈF
4lstm_143_lstm_cell_35_matmul_readvariableop_resource:2(H
6lstm_143_lstm_cell_35_matmul_1_readvariableop_resource:
(C
5lstm_143_lstm_cell_35_biasadd_readvariableop_resource:(9
'dense_47_matmul_readvariableop_resource:
6
(dense_47_biasadd_readvariableop_resource:
identity˘dense_47/BiasAdd/ReadVariableOp˘dense_47/MatMul/ReadVariableOp˘,lstm_141/lstm_cell_33/BiasAdd/ReadVariableOp˘+lstm_141/lstm_cell_33/MatMul/ReadVariableOp˘-lstm_141/lstm_cell_33/MatMul_1/ReadVariableOp˘lstm_141/while˘,lstm_142/lstm_cell_34/BiasAdd/ReadVariableOp˘+lstm_142/lstm_cell_34/MatMul/ReadVariableOp˘-lstm_142/lstm_cell_34/MatMul_1/ReadVariableOp˘lstm_142/while˘,lstm_143/lstm_cell_35/BiasAdd/ReadVariableOp˘+lstm_143/lstm_cell_35/MatMul/ReadVariableOp˘-lstm_143/lstm_cell_35/MatMul_1/ReadVariableOp˘lstm_143/whileD
lstm_141/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_141/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_141/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_141/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_141/strided_sliceStridedSlicelstm_141/Shape:output:0%lstm_141/strided_slice/stack:output:0'lstm_141/strided_slice/stack_1:output:0'lstm_141/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_141/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_141/zeros/packedPacklstm_141/strided_slice:output:0 lstm_141/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_141/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_141/zerosFilllstm_141/zeros/packed:output:0lstm_141/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_141/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_141/zeros_1/packedPacklstm_141/strided_slice:output:0"lstm_141/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_141/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_141/zeros_1Fill lstm_141/zeros_1/packed:output:0lstm_141/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_141/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_141/transpose	Transposeinputs lstm_141/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_141/Shape_1Shapelstm_141/transpose:y:0*
T0*
_output_shapes
:h
lstm_141/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_141/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_141/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_141/strided_slice_1StridedSlicelstm_141/Shape_1:output:0'lstm_141/strided_slice_1/stack:output:0)lstm_141/strided_slice_1/stack_1:output:0)lstm_141/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_141/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_141/TensorArrayV2TensorListReserve-lstm_141/TensorArrayV2/element_shape:output:0!lstm_141/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_141/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_141/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_141/transpose:y:0Glstm_141/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_141/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_141/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_141/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_141/strided_slice_2StridedSlicelstm_141/transpose:y:0'lstm_141/strided_slice_2/stack:output:0)lstm_141/strided_slice_2/stack_1:output:0)lstm_141/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_141/lstm_cell_33/MatMul/ReadVariableOpReadVariableOp4lstm_141_lstm_cell_33_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_141/lstm_cell_33/MatMulMatMul!lstm_141/strided_slice_2:output:03lstm_141/lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_141/lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp6lstm_141_lstm_cell_33_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_141/lstm_cell_33/MatMul_1MatMullstm_141/zeros:output:05lstm_141/lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_141/lstm_cell_33/addAddV2&lstm_141/lstm_cell_33/MatMul:product:0(lstm_141/lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_141/lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp5lstm_141_lstm_cell_33_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_141/lstm_cell_33/BiasAddBiasAddlstm_141/lstm_cell_33/add:z:04lstm_141/lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_141/lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_141/lstm_cell_33/splitSplit.lstm_141/lstm_cell_33/split/split_dim:output:0&lstm_141/lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_141/lstm_cell_33/SigmoidSigmoid$lstm_141/lstm_cell_33/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_141/lstm_cell_33/Sigmoid_1Sigmoid$lstm_141/lstm_cell_33/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_141/lstm_cell_33/mulMul#lstm_141/lstm_cell_33/Sigmoid_1:y:0lstm_141/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_141/lstm_cell_33/ReluRelu$lstm_141/lstm_cell_33/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_141/lstm_cell_33/mul_1Mul!lstm_141/lstm_cell_33/Sigmoid:y:0(lstm_141/lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_141/lstm_cell_33/add_1AddV2lstm_141/lstm_cell_33/mul:z:0lstm_141/lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_141/lstm_cell_33/Sigmoid_2Sigmoid$lstm_141/lstm_cell_33/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_141/lstm_cell_33/Relu_1Relulstm_141/lstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_141/lstm_cell_33/mul_2Mul#lstm_141/lstm_cell_33/Sigmoid_2:y:0*lstm_141/lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_141/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_141/TensorArrayV2_1TensorListReserve/lstm_141/TensorArrayV2_1/element_shape:output:0!lstm_141/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_141/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_141/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_141/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_141/whileWhile$lstm_141/while/loop_counter:output:0*lstm_141/while/maximum_iterations:output:0lstm_141/time:output:0!lstm_141/TensorArrayV2_1:handle:0lstm_141/zeros:output:0lstm_141/zeros_1:output:0!lstm_141/strided_slice_1:output:0@lstm_141/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_141_lstm_cell_33_matmul_readvariableop_resource6lstm_141_lstm_cell_33_matmul_1_readvariableop_resource5lstm_141_lstm_cell_33_biasadd_readvariableop_resource*
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
lstm_141_while_body_214400*&
condR
lstm_141_while_cond_214399*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_141/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_141/TensorArrayV2Stack/TensorListStackTensorListStacklstm_141/while:output:3Blstm_141/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_141/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_141/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_141/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_141/strided_slice_3StridedSlice4lstm_141/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_141/strided_slice_3/stack:output:0)lstm_141/strided_slice_3/stack_1:output:0)lstm_141/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_141/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_141/transpose_1	Transpose4lstm_141/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_141/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_141/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_142/ShapeShapelstm_141/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_142/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_142/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_142/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_142/strided_sliceStridedSlicelstm_142/Shape:output:0%lstm_142/strided_slice/stack:output:0'lstm_142/strided_slice/stack_1:output:0'lstm_142/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_142/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_142/zeros/packedPacklstm_142/strided_slice:output:0 lstm_142/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_142/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_142/zerosFilllstm_142/zeros/packed:output:0lstm_142/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_142/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_142/zeros_1/packedPacklstm_142/strided_slice:output:0"lstm_142/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_142/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_142/zeros_1Fill lstm_142/zeros_1/packed:output:0lstm_142/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_142/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_142/transpose	Transposelstm_141/transpose_1:y:0 lstm_142/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_142/Shape_1Shapelstm_142/transpose:y:0*
T0*
_output_shapes
:h
lstm_142/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_142/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_142/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_142/strided_slice_1StridedSlicelstm_142/Shape_1:output:0'lstm_142/strided_slice_1/stack:output:0)lstm_142/strided_slice_1/stack_1:output:0)lstm_142/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_142/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_142/TensorArrayV2TensorListReserve-lstm_142/TensorArrayV2/element_shape:output:0!lstm_142/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_142/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_142/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_142/transpose:y:0Glstm_142/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_142/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_142/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_142/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_142/strided_slice_2StridedSlicelstm_142/transpose:y:0'lstm_142/strided_slice_2/stack:output:0)lstm_142/strided_slice_2/stack_1:output:0)lstm_142/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_142/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp4lstm_142_lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_142/lstm_cell_34/MatMulMatMul!lstm_142/strided_slice_2:output:03lstm_142/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_142/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp6lstm_142_lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_142/lstm_cell_34/MatMul_1MatMullstm_142/zeros:output:05lstm_142/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_142/lstm_cell_34/addAddV2&lstm_142/lstm_cell_34/MatMul:product:0(lstm_142/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_142/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp5lstm_142_lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_142/lstm_cell_34/BiasAddBiasAddlstm_142/lstm_cell_34/add:z:04lstm_142/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_142/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_142/lstm_cell_34/splitSplit.lstm_142/lstm_cell_34/split/split_dim:output:0&lstm_142/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_142/lstm_cell_34/SigmoidSigmoid$lstm_142/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_142/lstm_cell_34/Sigmoid_1Sigmoid$lstm_142/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_142/lstm_cell_34/mulMul#lstm_142/lstm_cell_34/Sigmoid_1:y:0lstm_142/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_142/lstm_cell_34/ReluRelu$lstm_142/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_142/lstm_cell_34/mul_1Mul!lstm_142/lstm_cell_34/Sigmoid:y:0(lstm_142/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_142/lstm_cell_34/add_1AddV2lstm_142/lstm_cell_34/mul:z:0lstm_142/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_142/lstm_cell_34/Sigmoid_2Sigmoid$lstm_142/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_142/lstm_cell_34/Relu_1Relulstm_142/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_142/lstm_cell_34/mul_2Mul#lstm_142/lstm_cell_34/Sigmoid_2:y:0*lstm_142/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_142/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_142/TensorArrayV2_1TensorListReserve/lstm_142/TensorArrayV2_1/element_shape:output:0!lstm_142/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_142/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_142/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_142/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_142/whileWhile$lstm_142/while/loop_counter:output:0*lstm_142/while/maximum_iterations:output:0lstm_142/time:output:0!lstm_142/TensorArrayV2_1:handle:0lstm_142/zeros:output:0lstm_142/zeros_1:output:0!lstm_142/strided_slice_1:output:0@lstm_142/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_142_lstm_cell_34_matmul_readvariableop_resource6lstm_142_lstm_cell_34_matmul_1_readvariableop_resource5lstm_142_lstm_cell_34_biasadd_readvariableop_resource*
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
lstm_142_while_body_214539*&
condR
lstm_142_while_cond_214538*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_142/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_142/TensorArrayV2Stack/TensorListStackTensorListStacklstm_142/while:output:3Blstm_142/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_142/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_142/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_142/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_142/strided_slice_3StridedSlice4lstm_142/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_142/strided_slice_3/stack:output:0)lstm_142/strided_slice_3/stack_1:output:0)lstm_142/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_142/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_142/transpose_1	Transpose4lstm_142/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_142/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_142/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_143/ShapeShapelstm_142/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_143/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_143/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_143/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_143/strided_sliceStridedSlicelstm_143/Shape:output:0%lstm_143/strided_slice/stack:output:0'lstm_143/strided_slice/stack_1:output:0'lstm_143/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_143/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_143/zeros/packedPacklstm_143/strided_slice:output:0 lstm_143/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_143/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_143/zerosFilllstm_143/zeros/packed:output:0lstm_143/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_143/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_143/zeros_1/packedPacklstm_143/strided_slice:output:0"lstm_143/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_143/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_143/zeros_1Fill lstm_143/zeros_1/packed:output:0lstm_143/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_143/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_143/transpose	Transposelstm_142/transpose_1:y:0 lstm_143/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_143/Shape_1Shapelstm_143/transpose:y:0*
T0*
_output_shapes
:h
lstm_143/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_143/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_143/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_143/strided_slice_1StridedSlicelstm_143/Shape_1:output:0'lstm_143/strided_slice_1/stack:output:0)lstm_143/strided_slice_1/stack_1:output:0)lstm_143/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_143/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_143/TensorArrayV2TensorListReserve-lstm_143/TensorArrayV2/element_shape:output:0!lstm_143/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_143/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_143/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_143/transpose:y:0Glstm_143/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_143/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_143/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_143/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_143/strided_slice_2StridedSlicelstm_143/transpose:y:0'lstm_143/strided_slice_2/stack:output:0)lstm_143/strided_slice_2/stack_1:output:0)lstm_143/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_143/lstm_cell_35/MatMul/ReadVariableOpReadVariableOp4lstm_143_lstm_cell_35_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_143/lstm_cell_35/MatMulMatMul!lstm_143/strided_slice_2:output:03lstm_143/lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_143/lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp6lstm_143_lstm_cell_35_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_143/lstm_cell_35/MatMul_1MatMullstm_143/zeros:output:05lstm_143/lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_143/lstm_cell_35/addAddV2&lstm_143/lstm_cell_35/MatMul:product:0(lstm_143/lstm_cell_35/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_143/lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp5lstm_143_lstm_cell_35_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_143/lstm_cell_35/BiasAddBiasAddlstm_143/lstm_cell_35/add:z:04lstm_143/lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_143/lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_143/lstm_cell_35/splitSplit.lstm_143/lstm_cell_35/split/split_dim:output:0&lstm_143/lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_143/lstm_cell_35/SigmoidSigmoid$lstm_143/lstm_cell_35/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_143/lstm_cell_35/Sigmoid_1Sigmoid$lstm_143/lstm_cell_35/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_143/lstm_cell_35/mulMul#lstm_143/lstm_cell_35/Sigmoid_1:y:0lstm_143/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_143/lstm_cell_35/ReluRelu$lstm_143/lstm_cell_35/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_143/lstm_cell_35/mul_1Mul!lstm_143/lstm_cell_35/Sigmoid:y:0(lstm_143/lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_143/lstm_cell_35/add_1AddV2lstm_143/lstm_cell_35/mul:z:0lstm_143/lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_143/lstm_cell_35/Sigmoid_2Sigmoid$lstm_143/lstm_cell_35/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_143/lstm_cell_35/Relu_1Relulstm_143/lstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_143/lstm_cell_35/mul_2Mul#lstm_143/lstm_cell_35/Sigmoid_2:y:0*lstm_143/lstm_cell_35/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_143/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_143/TensorArrayV2_1TensorListReserve/lstm_143/TensorArrayV2_1/element_shape:output:0!lstm_143/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_143/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_143/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_143/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_143/whileWhile$lstm_143/while/loop_counter:output:0*lstm_143/while/maximum_iterations:output:0lstm_143/time:output:0!lstm_143/TensorArrayV2_1:handle:0lstm_143/zeros:output:0lstm_143/zeros_1:output:0!lstm_143/strided_slice_1:output:0@lstm_143/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_143_lstm_cell_35_matmul_readvariableop_resource6lstm_143_lstm_cell_35_matmul_1_readvariableop_resource5lstm_143_lstm_cell_35_biasadd_readvariableop_resource*
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
lstm_143_while_body_214678*&
condR
lstm_143_while_cond_214677*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_143/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_143/TensorArrayV2Stack/TensorListStackTensorListStacklstm_143/while:output:3Blstm_143/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_143/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_143/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_143/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_143/strided_slice_3StridedSlice4lstm_143/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_143/strided_slice_3/stack:output:0)lstm_143/strided_slice_3/stack_1:output:0)lstm_143/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_143/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_143/transpose_1	Transpose4lstm_143/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_143/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_143/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_47/MatMul/ReadVariableOpReadVariableOp'dense_47_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_47/MatMulMatMul!lstm_143/strided_slice_3:output:0&dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_47/BiasAdd/ReadVariableOpReadVariableOp(dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_47/BiasAddBiasAdddense_47/MatMul:product:0'dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense_47/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙?
NoOpNoOp ^dense_47/BiasAdd/ReadVariableOp^dense_47/MatMul/ReadVariableOp-^lstm_141/lstm_cell_33/BiasAdd/ReadVariableOp,^lstm_141/lstm_cell_33/MatMul/ReadVariableOp.^lstm_141/lstm_cell_33/MatMul_1/ReadVariableOp^lstm_141/while-^lstm_142/lstm_cell_34/BiasAdd/ReadVariableOp,^lstm_142/lstm_cell_34/MatMul/ReadVariableOp.^lstm_142/lstm_cell_34/MatMul_1/ReadVariableOp^lstm_142/while-^lstm_143/lstm_cell_35/BiasAdd/ReadVariableOp,^lstm_143/lstm_cell_35/MatMul/ReadVariableOp.^lstm_143/lstm_cell_35/MatMul_1/ReadVariableOp^lstm_143/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2B
dense_47/BiasAdd/ReadVariableOpdense_47/BiasAdd/ReadVariableOp2@
dense_47/MatMul/ReadVariableOpdense_47/MatMul/ReadVariableOp2\
,lstm_141/lstm_cell_33/BiasAdd/ReadVariableOp,lstm_141/lstm_cell_33/BiasAdd/ReadVariableOp2Z
+lstm_141/lstm_cell_33/MatMul/ReadVariableOp+lstm_141/lstm_cell_33/MatMul/ReadVariableOp2^
-lstm_141/lstm_cell_33/MatMul_1/ReadVariableOp-lstm_141/lstm_cell_33/MatMul_1/ReadVariableOp2 
lstm_141/whilelstm_141/while2\
,lstm_142/lstm_cell_34/BiasAdd/ReadVariableOp,lstm_142/lstm_cell_34/BiasAdd/ReadVariableOp2Z
+lstm_142/lstm_cell_34/MatMul/ReadVariableOp+lstm_142/lstm_cell_34/MatMul/ReadVariableOp2^
-lstm_142/lstm_cell_34/MatMul_1/ReadVariableOp-lstm_142/lstm_cell_34/MatMul_1/ReadVariableOp2 
lstm_142/whilelstm_142/while2\
,lstm_143/lstm_cell_35/BiasAdd/ReadVariableOp,lstm_143/lstm_cell_35/BiasAdd/ReadVariableOp2Z
+lstm_143/lstm_cell_35/MatMul/ReadVariableOp+lstm_143/lstm_cell_35/MatMul/ReadVariableOp2^
-lstm_143/lstm_cell_35/MatMul_1/ReadVariableOp-lstm_143/lstm_cell_35/MatMul_1/ReadVariableOp2 
lstm_143/whilelstm_143/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
à"
Ŭ
while_body_212808
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_35_212832_0:2(-
while_lstm_cell_35_212834_0:
()
while_lstm_cell_35_212836_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_35_212832:2(+
while_lstm_cell_35_212834:
('
while_lstm_cell_35_212836:(˘*while/lstm_cell_35/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_35/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_35_212832_0while_lstm_cell_35_212834_0while_lstm_cell_35_212836_0*
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
H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_212794Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_35/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_35/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_35/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_35_212832while_lstm_cell_35_212832_0"8
while_lstm_cell_35_212834while_lstm_cell_35_212834_0"8
while_lstm_cell_35_212836while_lstm_cell_35_212836_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_35/StatefulPartitionedCall*while/lstm_cell_35/StatefulPartitionedCall: 
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
(sequential_47_lstm_141_while_cond_211658J
Fsequential_47_lstm_141_while_sequential_47_lstm_141_while_loop_counterP
Lsequential_47_lstm_141_while_sequential_47_lstm_141_while_maximum_iterations,
(sequential_47_lstm_141_while_placeholder.
*sequential_47_lstm_141_while_placeholder_1.
*sequential_47_lstm_141_while_placeholder_2.
*sequential_47_lstm_141_while_placeholder_3L
Hsequential_47_lstm_141_while_less_sequential_47_lstm_141_strided_slice_1b
^sequential_47_lstm_141_while_sequential_47_lstm_141_while_cond_211658___redundant_placeholder0b
^sequential_47_lstm_141_while_sequential_47_lstm_141_while_cond_211658___redundant_placeholder1b
^sequential_47_lstm_141_while_sequential_47_lstm_141_while_cond_211658___redundant_placeholder2b
^sequential_47_lstm_141_while_sequential_47_lstm_141_while_cond_211658___redundant_placeholder3)
%sequential_47_lstm_141_while_identity
?
!sequential_47/lstm_141/while/LessLess(sequential_47_lstm_141_while_placeholderHsequential_47_lstm_141_while_less_sequential_47_lstm_141_strided_slice_1*
T0*
_output_shapes
: y
%sequential_47/lstm_141/while/IdentityIdentity%sequential_47/lstm_141/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_47_lstm_141_while_identity.sequential_47/lstm_141/while/Identity:output:0*(
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
H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_212094

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
while_cond_215440
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_215440___redundant_placeholder04
0while_while_cond_215440___redundant_placeholder14
0while_while_cond_215440___redundant_placeholder24
0while_while_cond_215440___redundant_placeholder3
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
Ë

H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_212794

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
Ġ

H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_212444

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
µ
?
while_cond_213987
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_213987___redundant_placeholder04
0while_while_cond_213987___redundant_placeholder14
0while_while_cond_213987___redundant_placeholder24
0while_while_cond_213987___redundant_placeholder3
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
while_body_215727
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_33_matmul_readvariableop_resource_0:	H
5while_lstm_cell_33_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_33_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_33_matmul_readvariableop_resource:	F
3while_lstm_cell_33_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_33_biasadd_readvariableop_resource:	˘)while/lstm_cell_33/BiasAdd/ReadVariableOp˘(while/lstm_cell_33/MatMul/ReadVariableOp˘*while/lstm_cell_33/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_33/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_33_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_33/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_33_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_33/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_33/addAddV2#while/lstm_cell_33/MatMul:product:0%while/lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_33_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_33/BiasAddBiasAddwhile/lstm_cell_33/add:z:01while/lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_33/splitSplit+while/lstm_cell_33/split/split_dim:output:0#while/lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_33/SigmoidSigmoid!while/lstm_cell_33/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_33/Sigmoid_1Sigmoid!while/lstm_cell_33/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_33/mulMul while/lstm_cell_33/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_33/ReluRelu!while/lstm_cell_33/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_33/mul_1Mulwhile/lstm_cell_33/Sigmoid:y:0%while/lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_33/add_1AddV2while/lstm_cell_33/mul:z:0while/lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_33/Sigmoid_2Sigmoid!while/lstm_cell_33/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_33/Relu_1Reluwhile/lstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_33/mul_2Mul while/lstm_cell_33/Sigmoid_2:y:0'while/lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_33/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_33/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_33/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_33/BiasAdd/ReadVariableOp)^while/lstm_cell_33/MatMul/ReadVariableOp+^while/lstm_cell_33/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_33_biasadd_readvariableop_resource4while_lstm_cell_33_biasadd_readvariableop_resource_0"l
3while_lstm_cell_33_matmul_1_readvariableop_resource5while_lstm_cell_33_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_33_matmul_readvariableop_resource3while_lstm_cell_33_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_33/BiasAdd/ReadVariableOp)while/lstm_cell_33/BiasAdd/ReadVariableOp2T
(while/lstm_cell_33/MatMul/ReadVariableOp(while/lstm_cell_33/MatMul/ReadVariableOp2X
*while/lstm_cell_33/MatMul_1/ReadVariableOp*while/lstm_cell_33/MatMul_1/ReadVariableOp: 
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
while_body_213292
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_34_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_34_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_34_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_34_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_34_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_34_biasadd_readvariableop_resource:	È˘)while/lstm_cell_34/BiasAdd/ReadVariableOp˘(while/lstm_cell_34/MatMul/ReadVariableOp˘*while/lstm_cell_34/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_34/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_34/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_34/addAddV2#while/lstm_cell_34/MatMul:product:0%while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_34/BiasAddBiasAddwhile/lstm_cell_34/add:z:01while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_34/splitSplit+while/lstm_cell_34/split/split_dim:output:0#while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_34/SigmoidSigmoid!while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_34/Sigmoid_1Sigmoid!while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_34/mulMul while/lstm_cell_34/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_34/ReluRelu!while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_34/mul_1Mulwhile/lstm_cell_34/Sigmoid:y:0%while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_34/add_1AddV2while/lstm_cell_34/mul:z:0while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_34/Sigmoid_2Sigmoid!while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_34/Relu_1Reluwhile/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_34/mul_2Mul while/lstm_cell_34/Sigmoid_2:y:0'while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_34/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_34/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_34/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_34/BiasAdd/ReadVariableOp)^while/lstm_cell_34/MatMul/ReadVariableOp+^while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_34_biasadd_readvariableop_resource4while_lstm_cell_34_biasadd_readvariableop_resource_0"l
3while_lstm_cell_34_matmul_1_readvariableop_resource5while_lstm_cell_34_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_34_matmul_readvariableop_resource3while_lstm_cell_34_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_34/BiasAdd/ReadVariableOp)while/lstm_cell_34/BiasAdd/ReadVariableOp2T
(while/lstm_cell_34/MatMul/ReadVariableOp(while/lstm_cell_34/MatMul/ReadVariableOp2X
*while/lstm_cell_34/MatMul_1/ReadVariableOp*while/lstm_cell_34/MatMul_1/ReadVariableOp: 
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
Ğ
¸
)__inference_lstm_142_layer_call_fn_215822
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
D__inference_lstm_142_layer_call_and_return_conditional_losses_212527|
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
¤J

D__inference_lstm_142_layer_call_and_return_conditional_losses_216284

inputs>
+lstm_cell_34_matmul_readvariableop_resource:	dÈ@
-lstm_cell_34_matmul_1_readvariableop_resource:	2È;
,lstm_cell_34_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_34/BiasAdd/ReadVariableOp˘"lstm_cell_34/MatMul/ReadVariableOp˘$lstm_cell_34/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_34/MatMul/ReadVariableOpReadVariableOp+lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_34/MatMulMatMulstrided_slice_2:output:0*lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_34/MatMul_1MatMulzeros:output:0,lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_34/addAddV2lstm_cell_34/MatMul:product:0lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_34/BiasAddBiasAddlstm_cell_34/add:z:0+lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_34/splitSplit%lstm_cell_34/split/split_dim:output:0lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_34/SigmoidSigmoidlstm_cell_34/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_34/Sigmoid_1Sigmoidlstm_cell_34/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_34/mulMullstm_cell_34/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_34/ReluRelulstm_cell_34/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_34/mul_1Mullstm_cell_34/Sigmoid:y:0lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_34/add_1AddV2lstm_cell_34/mul:z:0lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_34/Sigmoid_2Sigmoidlstm_cell_34/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_34/Relu_1Relulstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_34/mul_2Mullstm_cell_34/Sigmoid_2:y:0!lstm_cell_34/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_34_matmul_readvariableop_resource-lstm_cell_34_matmul_1_readvariableop_resource,lstm_cell_34_biasadd_readvariableop_resource*
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
while_body_216200*
condR
while_cond_216199*K
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
NoOpNoOp$^lstm_cell_34/BiasAdd/ReadVariableOp#^lstm_cell_34/MatMul/ReadVariableOp%^lstm_cell_34/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_34/BiasAdd/ReadVariableOp#lstm_cell_34/BiasAdd/ReadVariableOp2H
"lstm_cell_34/MatMul/ReadVariableOp"lstm_cell_34/MatMul/ReadVariableOp2L
$lstm_cell_34/MatMul_1/ReadVariableOp$lstm_cell_34/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
µ
?
while_cond_216815
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_216815___redundant_placeholder04
0while_while_cond_216815___redundant_placeholder14
0while_while_cond_216815___redundant_placeholder24
0while_while_cond_216815___redundant_placeholder3
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

D__inference_lstm_143_layer_call_and_return_conditional_losses_212877

inputs%
lstm_cell_35_212795:2(%
lstm_cell_35_212797:
(!
lstm_cell_35_212799:(
identity˘$lstm_cell_35/StatefulPartitionedCall˘while;
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
$lstm_cell_35/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_35_212795lstm_cell_35_212797lstm_cell_35_212799*
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
H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_212794n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_35_212795lstm_cell_35_212797lstm_cell_35_212799*
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
while_body_212808*
condR
while_cond_212807*K
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
NoOpNoOp%^lstm_cell_35/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_35/StatefulPartitionedCall$lstm_cell_35/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
è
ó
-__inference_lstm_cell_35_layer_call_fn_217275

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
H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_212794o
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
while_cond_213141
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_213141___redundant_placeholder04
0while_while_cond_213141___redundant_placeholder14
0while_while_cond_213141___redundant_placeholder24
0while_while_cond_213141___redundant_placeholder3
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
âJ

D__inference_lstm_141_layer_call_and_return_conditional_losses_215525
inputs_0>
+lstm_cell_33_matmul_readvariableop_resource:	@
-lstm_cell_33_matmul_1_readvariableop_resource:	d;
,lstm_cell_33_biasadd_readvariableop_resource:	
identity˘#lstm_cell_33/BiasAdd/ReadVariableOp˘"lstm_cell_33/MatMul/ReadVariableOp˘$lstm_cell_33/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_33/MatMul/ReadVariableOpReadVariableOp+lstm_cell_33_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_33/MatMulMatMulstrided_slice_2:output:0*lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_33_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_33/MatMul_1MatMulzeros:output:0,lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_33/addAddV2lstm_cell_33/MatMul:product:0lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_33_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_33/BiasAddBiasAddlstm_cell_33/add:z:0+lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_33/splitSplit%lstm_cell_33/split/split_dim:output:0lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_33/SigmoidSigmoidlstm_cell_33/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_33/Sigmoid_1Sigmoidlstm_cell_33/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_33/mulMullstm_cell_33/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_33/ReluRelulstm_cell_33/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_33/mul_1Mullstm_cell_33/Sigmoid:y:0lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_33/add_1AddV2lstm_cell_33/mul:z:0lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_33/Sigmoid_2Sigmoidlstm_cell_33/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_33/Relu_1Relulstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_33/mul_2Mullstm_cell_33/Sigmoid_2:y:0!lstm_cell_33/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_33_matmul_readvariableop_resource-lstm_cell_33_matmul_1_readvariableop_resource,lstm_cell_33_biasadd_readvariableop_resource*
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
while_body_215441*
condR
while_cond_215440*K
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
NoOpNoOp$^lstm_cell_33/BiasAdd/ReadVariableOp#^lstm_cell_33/MatMul/ReadVariableOp%^lstm_cell_33/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_33/BiasAdd/ReadVariableOp#lstm_cell_33/BiasAdd/ReadVariableOp2H
"lstm_cell_33/MatMul/ReadVariableOp"lstm_cell_33/MatMul/ReadVariableOp2L
$lstm_cell_33/MatMul_1/ReadVariableOp$lstm_cell_33/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
˙7
Ê
while_body_216530
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_35_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_35_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_35_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_35_matmul_readvariableop_resource:2(E
3while_lstm_cell_35_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_35_biasadd_readvariableop_resource:(˘)while/lstm_cell_35/BiasAdd/ReadVariableOp˘(while/lstm_cell_35/MatMul/ReadVariableOp˘*while/lstm_cell_35/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_35/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_35_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_35/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_35_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_35/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_35/addAddV2#while/lstm_cell_35/MatMul:product:0%while/lstm_cell_35/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_35_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_35/BiasAddBiasAddwhile/lstm_cell_35/add:z:01while/lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_35/splitSplit+while/lstm_cell_35/split/split_dim:output:0#while/lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_35/SigmoidSigmoid!while/lstm_cell_35/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_35/Sigmoid_1Sigmoid!while/lstm_cell_35/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_35/mulMul while/lstm_cell_35/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_35/ReluRelu!while/lstm_cell_35/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_35/mul_1Mulwhile/lstm_cell_35/Sigmoid:y:0%while/lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_35/add_1AddV2while/lstm_cell_35/mul:z:0while/lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_35/Sigmoid_2Sigmoid!while/lstm_cell_35/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_35/Relu_1Reluwhile/lstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_35/mul_2Mul while/lstm_cell_35/Sigmoid_2:y:0'while/lstm_cell_35/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_35/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_35/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_35/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_35/BiasAdd/ReadVariableOp)^while/lstm_cell_35/MatMul/ReadVariableOp+^while/lstm_cell_35/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_35_biasadd_readvariableop_resource4while_lstm_cell_35_biasadd_readvariableop_resource_0"l
3while_lstm_cell_35_matmul_1_readvariableop_resource5while_lstm_cell_35_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_35_matmul_readvariableop_resource3while_lstm_cell_35_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_35/BiasAdd/ReadVariableOp)while/lstm_cell_35/BiasAdd/ReadVariableOp2T
(while/lstm_cell_35/MatMul/ReadVariableOp(while/lstm_cell_35/MatMul/ReadVariableOp2X
*while/lstm_cell_35/MatMul_1/ReadVariableOp*while/lstm_cell_35/MatMul_1/ReadVariableOp: 
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
while_body_215441
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_33_matmul_readvariableop_resource_0:	H
5while_lstm_cell_33_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_33_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_33_matmul_readvariableop_resource:	F
3while_lstm_cell_33_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_33_biasadd_readvariableop_resource:	˘)while/lstm_cell_33/BiasAdd/ReadVariableOp˘(while/lstm_cell_33/MatMul/ReadVariableOp˘*while/lstm_cell_33/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_33/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_33_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_33/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_33_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_33/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_33/addAddV2#while/lstm_cell_33/MatMul:product:0%while/lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_33_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_33/BiasAddBiasAddwhile/lstm_cell_33/add:z:01while/lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_33/splitSplit+while/lstm_cell_33/split/split_dim:output:0#while/lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_33/SigmoidSigmoid!while/lstm_cell_33/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_33/Sigmoid_1Sigmoid!while/lstm_cell_33/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_33/mulMul while/lstm_cell_33/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_33/ReluRelu!while/lstm_cell_33/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_33/mul_1Mulwhile/lstm_cell_33/Sigmoid:y:0%while/lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_33/add_1AddV2while/lstm_cell_33/mul:z:0while/lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_33/Sigmoid_2Sigmoid!while/lstm_cell_33/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_33/Relu_1Reluwhile/lstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_33/mul_2Mul while/lstm_cell_33/Sigmoid_2:y:0'while/lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_33/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_33/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_33/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_33/BiasAdd/ReadVariableOp)^while/lstm_cell_33/MatMul/ReadVariableOp+^while/lstm_cell_33/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_33_biasadd_readvariableop_resource4while_lstm_cell_33_biasadd_readvariableop_resource_0"l
3while_lstm_cell_33_matmul_1_readvariableop_resource5while_lstm_cell_33_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_33_matmul_readvariableop_resource3while_lstm_cell_33_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_33/BiasAdd/ReadVariableOp)while/lstm_cell_33/BiasAdd/ReadVariableOp2T
(while/lstm_cell_33/MatMul/ReadVariableOp(while/lstm_cell_33/MatMul/ReadVariableOp2X
*while/lstm_cell_33/MatMul_1/ReadVariableOp*while/lstm_cell_33/MatMul_1/ReadVariableOp: 
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
)__inference_lstm_141_layer_call_fn_215217
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
D__inference_lstm_141_layer_call_and_return_conditional_losses_212368|
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

µ
)__inference_lstm_143_layer_call_fn_216449
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
D__inference_lstm_143_layer_call_and_return_conditional_losses_213068o
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
ò

˘
.__inference_sequential_47_layer_call_fn_213576
lstm_141_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_141_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
I__inference_sequential_47_layer_call_and_return_conditional_losses_213551o
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
_user_specified_namelstm_141_input
S
³
(sequential_47_lstm_142_while_body_211798J
Fsequential_47_lstm_142_while_sequential_47_lstm_142_while_loop_counterP
Lsequential_47_lstm_142_while_sequential_47_lstm_142_while_maximum_iterations,
(sequential_47_lstm_142_while_placeholder.
*sequential_47_lstm_142_while_placeholder_1.
*sequential_47_lstm_142_while_placeholder_2.
*sequential_47_lstm_142_while_placeholder_3I
Esequential_47_lstm_142_while_sequential_47_lstm_142_strided_slice_1_0
sequential_47_lstm_142_while_tensorarrayv2read_tensorlistgetitem_sequential_47_lstm_142_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_47_lstm_142_while_lstm_cell_34_matmul_readvariableop_resource_0:	dÈ_
Lsequential_47_lstm_142_while_lstm_cell_34_matmul_1_readvariableop_resource_0:	2ÈZ
Ksequential_47_lstm_142_while_lstm_cell_34_biasadd_readvariableop_resource_0:	È)
%sequential_47_lstm_142_while_identity+
'sequential_47_lstm_142_while_identity_1+
'sequential_47_lstm_142_while_identity_2+
'sequential_47_lstm_142_while_identity_3+
'sequential_47_lstm_142_while_identity_4+
'sequential_47_lstm_142_while_identity_5G
Csequential_47_lstm_142_while_sequential_47_lstm_142_strided_slice_1
sequential_47_lstm_142_while_tensorarrayv2read_tensorlistgetitem_sequential_47_lstm_142_tensorarrayunstack_tensorlistfromtensor[
Hsequential_47_lstm_142_while_lstm_cell_34_matmul_readvariableop_resource:	dÈ]
Jsequential_47_lstm_142_while_lstm_cell_34_matmul_1_readvariableop_resource:	2ÈX
Isequential_47_lstm_142_while_lstm_cell_34_biasadd_readvariableop_resource:	È˘@sequential_47/lstm_142/while/lstm_cell_34/BiasAdd/ReadVariableOp˘?sequential_47/lstm_142/while/lstm_cell_34/MatMul/ReadVariableOp˘Asequential_47/lstm_142/while/lstm_cell_34/MatMul_1/ReadVariableOp
Nsequential_47/lstm_142/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
@sequential_47/lstm_142/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_47_lstm_142_while_tensorarrayv2read_tensorlistgetitem_sequential_47_lstm_142_tensorarrayunstack_tensorlistfromtensor_0(sequential_47_lstm_142_while_placeholderWsequential_47/lstm_142/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ë
?sequential_47/lstm_142/while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOpJsequential_47_lstm_142_while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0˙
0sequential_47/lstm_142/while/lstm_cell_34/MatMulMatMulGsequential_47/lstm_142/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_47/lstm_142/while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÏ
Asequential_47/lstm_142/while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOpLsequential_47_lstm_142_while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĉ
2sequential_47/lstm_142/while/lstm_cell_34/MatMul_1MatMul*sequential_47_lstm_142_while_placeholder_2Isequential_47/lstm_142/while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-sequential_47/lstm_142/while/lstm_cell_34/addAddV2:sequential_47/lstm_142/while/lstm_cell_34/MatMul:product:0<sequential_47/lstm_142/while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÉ
@sequential_47/lstm_142/while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOpKsequential_47_lstm_142_while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ì
1sequential_47/lstm_142/while/lstm_cell_34/BiasAddBiasAdd1sequential_47/lstm_142/while/lstm_cell_34/add:z:0Hsequential_47/lstm_142/while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È{
9sequential_47/lstm_142/while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_47/lstm_142/while/lstm_cell_34/splitSplitBsequential_47/lstm_142/while/lstm_cell_34/split/split_dim:output:0:sequential_47/lstm_142/while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split¨
1sequential_47/lstm_142/while/lstm_cell_34/SigmoidSigmoid8sequential_47/lstm_142/while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ş
3sequential_47/lstm_142/while/lstm_cell_34/Sigmoid_1Sigmoid8sequential_47/lstm_142/while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ë
-sequential_47/lstm_142/while/lstm_cell_34/mulMul7sequential_47/lstm_142/while/lstm_cell_34/Sigmoid_1:y:0*sequential_47_lstm_142_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2˘
.sequential_47/lstm_142/while/lstm_cell_34/ReluRelu8sequential_47/lstm_142/while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ŭ
/sequential_47/lstm_142/while/lstm_cell_34/mul_1Mul5sequential_47/lstm_142/while/lstm_cell_34/Sigmoid:y:0<sequential_47/lstm_142/while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ò
/sequential_47/lstm_142/while/lstm_cell_34/add_1AddV21sequential_47/lstm_142/while/lstm_cell_34/mul:z:03sequential_47/lstm_142/while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ş
3sequential_47/lstm_142/while/lstm_cell_34/Sigmoid_2Sigmoid8sequential_47/lstm_142/while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
0sequential_47/lstm_142/while/lstm_cell_34/Relu_1Relu3sequential_47/lstm_142/while/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2á
/sequential_47/lstm_142/while/lstm_cell_34/mul_2Mul7sequential_47/lstm_142/while/lstm_cell_34/Sigmoid_2:y:0>sequential_47/lstm_142/while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
Asequential_47/lstm_142/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_47_lstm_142_while_placeholder_1(sequential_47_lstm_142_while_placeholder3sequential_47/lstm_142/while/lstm_cell_34/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_47/lstm_142/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_47/lstm_142/while/addAddV2(sequential_47_lstm_142_while_placeholder+sequential_47/lstm_142/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_47/lstm_142/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_47/lstm_142/while/add_1AddV2Fsequential_47_lstm_142_while_sequential_47_lstm_142_while_loop_counter-sequential_47/lstm_142/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_47/lstm_142/while/IdentityIdentity&sequential_47/lstm_142/while/add_1:z:0"^sequential_47/lstm_142/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_47/lstm_142/while/Identity_1IdentityLsequential_47_lstm_142_while_sequential_47_lstm_142_while_maximum_iterations"^sequential_47/lstm_142/while/NoOp*
T0*
_output_shapes
: 
'sequential_47/lstm_142/while/Identity_2Identity$sequential_47/lstm_142/while/add:z:0"^sequential_47/lstm_142/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_47/lstm_142/while/Identity_3IdentityQsequential_47/lstm_142/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_47/lstm_142/while/NoOp*
T0*
_output_shapes
: ?
'sequential_47/lstm_142/while/Identity_4Identity3sequential_47/lstm_142/while/lstm_cell_34/mul_2:z:0"^sequential_47/lstm_142/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
'sequential_47/lstm_142/while/Identity_5Identity3sequential_47/lstm_142/while/lstm_cell_34/add_1:z:0"^sequential_47/lstm_142/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ĵ
!sequential_47/lstm_142/while/NoOpNoOpA^sequential_47/lstm_142/while/lstm_cell_34/BiasAdd/ReadVariableOp@^sequential_47/lstm_142/while/lstm_cell_34/MatMul/ReadVariableOpB^sequential_47/lstm_142/while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_47_lstm_142_while_identity.sequential_47/lstm_142/while/Identity:output:0"[
'sequential_47_lstm_142_while_identity_10sequential_47/lstm_142/while/Identity_1:output:0"[
'sequential_47_lstm_142_while_identity_20sequential_47/lstm_142/while/Identity_2:output:0"[
'sequential_47_lstm_142_while_identity_30sequential_47/lstm_142/while/Identity_3:output:0"[
'sequential_47_lstm_142_while_identity_40sequential_47/lstm_142/while/Identity_4:output:0"[
'sequential_47_lstm_142_while_identity_50sequential_47/lstm_142/while/Identity_5:output:0"
Isequential_47_lstm_142_while_lstm_cell_34_biasadd_readvariableop_resourceKsequential_47_lstm_142_while_lstm_cell_34_biasadd_readvariableop_resource_0"
Jsequential_47_lstm_142_while_lstm_cell_34_matmul_1_readvariableop_resourceLsequential_47_lstm_142_while_lstm_cell_34_matmul_1_readvariableop_resource_0"
Hsequential_47_lstm_142_while_lstm_cell_34_matmul_readvariableop_resourceJsequential_47_lstm_142_while_lstm_cell_34_matmul_readvariableop_resource_0"
Csequential_47_lstm_142_while_sequential_47_lstm_142_strided_slice_1Esequential_47_lstm_142_while_sequential_47_lstm_142_strided_slice_1_0"
sequential_47_lstm_142_while_tensorarrayv2read_tensorlistgetitem_sequential_47_lstm_142_tensorarrayunstack_tensorlistfromtensorsequential_47_lstm_142_while_tensorarrayv2read_tensorlistgetitem_sequential_47_lstm_142_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2
@sequential_47/lstm_142/while/lstm_cell_34/BiasAdd/ReadVariableOp@sequential_47/lstm_142/while/lstm_cell_34/BiasAdd/ReadVariableOp2
?sequential_47/lstm_142/while/lstm_cell_34/MatMul/ReadVariableOp?sequential_47/lstm_142/while/lstm_cell_34/MatMul/ReadVariableOp2
Asequential_47/lstm_142/while/lstm_cell_34/MatMul_1/ReadVariableOpAsequential_47/lstm_142/while/lstm_cell_34/MatMul_1/ReadVariableOp: 
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
J

D__inference_lstm_143_layer_call_and_return_conditional_losses_217043

inputs=
+lstm_cell_35_matmul_readvariableop_resource:2(?
-lstm_cell_35_matmul_1_readvariableop_resource:
(:
,lstm_cell_35_biasadd_readvariableop_resource:(
identity˘#lstm_cell_35/BiasAdd/ReadVariableOp˘"lstm_cell_35/MatMul/ReadVariableOp˘$lstm_cell_35/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_35/MatMul/ReadVariableOpReadVariableOp+lstm_cell_35_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_35/MatMulMatMulstrided_slice_2:output:0*lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_35_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_35/MatMul_1MatMulzeros:output:0,lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_35/addAddV2lstm_cell_35/MatMul:product:0lstm_cell_35/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_35_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_35/BiasAddBiasAddlstm_cell_35/add:z:0+lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_35/splitSplit%lstm_cell_35/split/split_dim:output:0lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_35/SigmoidSigmoidlstm_cell_35/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_35/Sigmoid_1Sigmoidlstm_cell_35/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_35/mulMullstm_cell_35/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_35/ReluRelulstm_cell_35/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_35/mul_1Mullstm_cell_35/Sigmoid:y:0lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_35/add_1AddV2lstm_cell_35/mul:z:0lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_35/Sigmoid_2Sigmoidlstm_cell_35/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_35/Relu_1Relulstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_35/mul_2Mullstm_cell_35/Sigmoid_2:y:0!lstm_cell_35/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_35_matmul_readvariableop_resource-lstm_cell_35_matmul_1_readvariableop_resource,lstm_cell_35_biasadd_readvariableop_resource*
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
while_body_216959*
condR
while_cond_216958*K
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
NoOpNoOp$^lstm_cell_35/BiasAdd/ReadVariableOp#^lstm_cell_35/MatMul/ReadVariableOp%^lstm_cell_35/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_35/BiasAdd/ReadVariableOp#lstm_cell_35/BiasAdd/ReadVariableOp2H
"lstm_cell_35/MatMul/ReadVariableOp"lstm_cell_35/MatMul/ReadVariableOp2L
$lstm_cell_35/MatMul_1/ReadVariableOp$lstm_cell_35/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
ÔJ

D__inference_lstm_143_layer_call_and_return_conditional_losses_216614
inputs_0=
+lstm_cell_35_matmul_readvariableop_resource:2(?
-lstm_cell_35_matmul_1_readvariableop_resource:
(:
,lstm_cell_35_biasadd_readvariableop_resource:(
identity˘#lstm_cell_35/BiasAdd/ReadVariableOp˘"lstm_cell_35/MatMul/ReadVariableOp˘$lstm_cell_35/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_35/MatMul/ReadVariableOpReadVariableOp+lstm_cell_35_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_35/MatMulMatMulstrided_slice_2:output:0*lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_35_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_35/MatMul_1MatMulzeros:output:0,lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_35/addAddV2lstm_cell_35/MatMul:product:0lstm_cell_35/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_35_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_35/BiasAddBiasAddlstm_cell_35/add:z:0+lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_35/splitSplit%lstm_cell_35/split/split_dim:output:0lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_35/SigmoidSigmoidlstm_cell_35/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_35/Sigmoid_1Sigmoidlstm_cell_35/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_35/mulMullstm_cell_35/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_35/ReluRelulstm_cell_35/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_35/mul_1Mullstm_cell_35/Sigmoid:y:0lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_35/add_1AddV2lstm_cell_35/mul:z:0lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_35/Sigmoid_2Sigmoidlstm_cell_35/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_35/Relu_1Relulstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_35/mul_2Mullstm_cell_35/Sigmoid_2:y:0!lstm_cell_35/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_35_matmul_readvariableop_resource-lstm_cell_35_matmul_1_readvariableop_resource,lstm_cell_35_biasadd_readvariableop_resource*
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
while_body_216530*
condR
while_cond_216529*K
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
NoOpNoOp$^lstm_cell_35/BiasAdd/ReadVariableOp#^lstm_cell_35/MatMul/ReadVariableOp%^lstm_cell_35/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_35/BiasAdd/ReadVariableOp#lstm_cell_35/BiasAdd/ReadVariableOp2H
"lstm_cell_35/MatMul/ReadVariableOp"lstm_cell_35/MatMul/ReadVariableOp2L
$lstm_cell_35/MatMul_1/ReadVariableOp$lstm_cell_35/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
8
?
while_body_213823
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_34_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_34_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_34_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_34_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_34_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_34_biasadd_readvariableop_resource:	È˘)while/lstm_cell_34/BiasAdd/ReadVariableOp˘(while/lstm_cell_34/MatMul/ReadVariableOp˘*while/lstm_cell_34/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_34/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_34/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_34/addAddV2#while/lstm_cell_34/MatMul:product:0%while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_34/BiasAddBiasAddwhile/lstm_cell_34/add:z:01while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_34/splitSplit+while/lstm_cell_34/split/split_dim:output:0#while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_34/SigmoidSigmoid!while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_34/Sigmoid_1Sigmoid!while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_34/mulMul while/lstm_cell_34/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_34/ReluRelu!while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_34/mul_1Mulwhile/lstm_cell_34/Sigmoid:y:0%while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_34/add_1AddV2while/lstm_cell_34/mul:z:0while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_34/Sigmoid_2Sigmoid!while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_34/Relu_1Reluwhile/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_34/mul_2Mul while/lstm_cell_34/Sigmoid_2:y:0'while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_34/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_34/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_34/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_34/BiasAdd/ReadVariableOp)^while/lstm_cell_34/MatMul/ReadVariableOp+^while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_34_biasadd_readvariableop_resource4while_lstm_cell_34_biasadd_readvariableop_resource_0"l
3while_lstm_cell_34_matmul_1_readvariableop_resource5while_lstm_cell_34_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_34_matmul_readvariableop_resource3while_lstm_cell_34_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_34/BiasAdd/ReadVariableOp)while/lstm_cell_34/BiasAdd/ReadVariableOp2T
(while/lstm_cell_34/MatMul/ReadVariableOp(while/lstm_cell_34/MatMul/ReadVariableOp2X
*while/lstm_cell_34/MatMul_1/ReadVariableOp*while/lstm_cell_34/MatMul_1/ReadVariableOp: 
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
Ğ
¸
)__inference_lstm_142_layer_call_fn_215833
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
D__inference_lstm_142_layer_call_and_return_conditional_losses_212718|
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
áW

__inference__traced_save_217499
file_prefix.
*savev2_dense_47_kernel_read_readvariableop,
(savev2_dense_47_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_141_lstm_cell_141_kernel_read_readvariableopF
Bsavev2_lstm_141_lstm_cell_141_recurrent_kernel_read_readvariableop:
6savev2_lstm_141_lstm_cell_141_bias_read_readvariableop<
8savev2_lstm_142_lstm_cell_142_kernel_read_readvariableopF
Bsavev2_lstm_142_lstm_cell_142_recurrent_kernel_read_readvariableop:
6savev2_lstm_142_lstm_cell_142_bias_read_readvariableop<
8savev2_lstm_143_lstm_cell_143_kernel_read_readvariableopF
Bsavev2_lstm_143_lstm_cell_143_recurrent_kernel_read_readvariableop:
6savev2_lstm_143_lstm_cell_143_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_47_kernel_m_read_readvariableop3
/savev2_adam_dense_47_bias_m_read_readvariableopC
?savev2_adam_lstm_141_lstm_cell_141_kernel_m_read_readvariableopM
Isavev2_adam_lstm_141_lstm_cell_141_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_141_lstm_cell_141_bias_m_read_readvariableopC
?savev2_adam_lstm_142_lstm_cell_142_kernel_m_read_readvariableopM
Isavev2_adam_lstm_142_lstm_cell_142_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_142_lstm_cell_142_bias_m_read_readvariableopC
?savev2_adam_lstm_143_lstm_cell_143_kernel_m_read_readvariableopM
Isavev2_adam_lstm_143_lstm_cell_143_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_143_lstm_cell_143_bias_m_read_readvariableop5
1savev2_adam_dense_47_kernel_v_read_readvariableop3
/savev2_adam_dense_47_bias_v_read_readvariableopC
?savev2_adam_lstm_141_lstm_cell_141_kernel_v_read_readvariableopM
Isavev2_adam_lstm_141_lstm_cell_141_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_141_lstm_cell_141_bias_v_read_readvariableopC
?savev2_adam_lstm_142_lstm_cell_142_kernel_v_read_readvariableopM
Isavev2_adam_lstm_142_lstm_cell_142_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_142_lstm_cell_142_bias_v_read_readvariableopC
?savev2_adam_lstm_143_lstm_cell_143_kernel_v_read_readvariableopM
Isavev2_adam_lstm_143_lstm_cell_143_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_143_lstm_cell_143_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_47_kernel_read_readvariableop(savev2_dense_47_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_141_lstm_cell_141_kernel_read_readvariableopBsavev2_lstm_141_lstm_cell_141_recurrent_kernel_read_readvariableop6savev2_lstm_141_lstm_cell_141_bias_read_readvariableop8savev2_lstm_142_lstm_cell_142_kernel_read_readvariableopBsavev2_lstm_142_lstm_cell_142_recurrent_kernel_read_readvariableop6savev2_lstm_142_lstm_cell_142_bias_read_readvariableop8savev2_lstm_143_lstm_cell_143_kernel_read_readvariableopBsavev2_lstm_143_lstm_cell_143_recurrent_kernel_read_readvariableop6savev2_lstm_143_lstm_cell_143_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_47_kernel_m_read_readvariableop/savev2_adam_dense_47_bias_m_read_readvariableop?savev2_adam_lstm_141_lstm_cell_141_kernel_m_read_readvariableopIsavev2_adam_lstm_141_lstm_cell_141_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_141_lstm_cell_141_bias_m_read_readvariableop?savev2_adam_lstm_142_lstm_cell_142_kernel_m_read_readvariableopIsavev2_adam_lstm_142_lstm_cell_142_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_142_lstm_cell_142_bias_m_read_readvariableop?savev2_adam_lstm_143_lstm_cell_143_kernel_m_read_readvariableopIsavev2_adam_lstm_143_lstm_cell_143_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_143_lstm_cell_143_bias_m_read_readvariableop1savev2_adam_dense_47_kernel_v_read_readvariableop/savev2_adam_dense_47_bias_v_read_readvariableop?savev2_adam_lstm_141_lstm_cell_141_kernel_v_read_readvariableopIsavev2_adam_lstm_141_lstm_cell_141_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_141_lstm_cell_141_bias_v_read_readvariableop?savev2_adam_lstm_142_lstm_cell_142_kernel_v_read_readvariableopIsavev2_adam_lstm_142_lstm_cell_142_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_142_lstm_cell_142_bias_v_read_readvariableop?savev2_adam_lstm_143_lstm_cell_143_kernel_v_read_readvariableopIsavev2_adam_lstm_143_lstm_cell_143_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_143_lstm_cell_143_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
Ġ

H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_212590

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
Ú


.__inference_sequential_47_layer_call_fn_214341

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
I__inference_sequential_47_layer_call_and_return_conditional_losses_214140o
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
D__inference_lstm_141_layer_call_and_return_conditional_losses_215382
inputs_0>
+lstm_cell_33_matmul_readvariableop_resource:	@
-lstm_cell_33_matmul_1_readvariableop_resource:	d;
,lstm_cell_33_biasadd_readvariableop_resource:	
identity˘#lstm_cell_33/BiasAdd/ReadVariableOp˘"lstm_cell_33/MatMul/ReadVariableOp˘$lstm_cell_33/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_33/MatMul/ReadVariableOpReadVariableOp+lstm_cell_33_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_33/MatMulMatMulstrided_slice_2:output:0*lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_33_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_33/MatMul_1MatMulzeros:output:0,lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_33/addAddV2lstm_cell_33/MatMul:product:0lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_33_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_33/BiasAddBiasAddlstm_cell_33/add:z:0+lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_33/splitSplit%lstm_cell_33/split/split_dim:output:0lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_33/SigmoidSigmoidlstm_cell_33/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_33/Sigmoid_1Sigmoidlstm_cell_33/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_33/mulMullstm_cell_33/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_33/ReluRelulstm_cell_33/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_33/mul_1Mullstm_cell_33/Sigmoid:y:0lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_33/add_1AddV2lstm_cell_33/mul:z:0lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_33/Sigmoid_2Sigmoidlstm_cell_33/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_33/Relu_1Relulstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_33/mul_2Mullstm_cell_33/Sigmoid_2:y:0!lstm_cell_33/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_33_matmul_readvariableop_resource-lstm_cell_33_matmul_1_readvariableop_resource,lstm_cell_33_biasadd_readvariableop_resource*
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
while_body_215298*
condR
while_cond_215297*K
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
NoOpNoOp$^lstm_cell_33/BiasAdd/ReadVariableOp#^lstm_cell_33/MatMul/ReadVariableOp%^lstm_cell_33/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_33/BiasAdd/ReadVariableOp#lstm_cell_33/BiasAdd/ReadVariableOp2H
"lstm_cell_33/MatMul/ReadVariableOp"lstm_cell_33/MatMul/ReadVariableOp2L
$lstm_cell_33/MatMul_1/ReadVariableOp$lstm_cell_33/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
µ
?
while_cond_213291
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_213291___redundant_placeholder04
0while_while_cond_213291___redundant_placeholder14
0while_while_cond_213291___redundant_placeholder24
0while_while_cond_213291___redundant_placeholder3
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
¤J

D__inference_lstm_142_layer_call_and_return_conditional_losses_213907

inputs>
+lstm_cell_34_matmul_readvariableop_resource:	dÈ@
-lstm_cell_34_matmul_1_readvariableop_resource:	2È;
,lstm_cell_34_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_34/BiasAdd/ReadVariableOp˘"lstm_cell_34/MatMul/ReadVariableOp˘$lstm_cell_34/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_34/MatMul/ReadVariableOpReadVariableOp+lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_34/MatMulMatMulstrided_slice_2:output:0*lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_34/MatMul_1MatMulzeros:output:0,lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_34/addAddV2lstm_cell_34/MatMul:product:0lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_34/BiasAddBiasAddlstm_cell_34/add:z:0+lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_34/splitSplit%lstm_cell_34/split/split_dim:output:0lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_34/SigmoidSigmoidlstm_cell_34/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_34/Sigmoid_1Sigmoidlstm_cell_34/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_34/mulMullstm_cell_34/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_34/ReluRelulstm_cell_34/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_34/mul_1Mullstm_cell_34/Sigmoid:y:0lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_34/add_1AddV2lstm_cell_34/mul:z:0lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_34/Sigmoid_2Sigmoidlstm_cell_34/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_34/Relu_1Relulstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_34/mul_2Mullstm_cell_34/Sigmoid_2:y:0!lstm_cell_34/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_34_matmul_readvariableop_resource-lstm_cell_34_matmul_1_readvariableop_resource,lstm_cell_34_biasadd_readvariableop_resource*
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
while_body_213823*
condR
while_cond_213822*K
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
NoOpNoOp$^lstm_cell_34/BiasAdd/ReadVariableOp#^lstm_cell_34/MatMul/ReadVariableOp%^lstm_cell_34/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_34/BiasAdd/ReadVariableOp#lstm_cell_34/BiasAdd/ReadVariableOp2H
"lstm_cell_34/MatMul/ReadVariableOp"lstm_cell_34/MatMul/ReadVariableOp2L
$lstm_cell_34/MatMul_1/ReadVariableOp$lstm_cell_34/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
˙7
Ê
while_body_216673
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_35_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_35_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_35_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_35_matmul_readvariableop_resource:2(E
3while_lstm_cell_35_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_35_biasadd_readvariableop_resource:(˘)while/lstm_cell_35/BiasAdd/ReadVariableOp˘(while/lstm_cell_35/MatMul/ReadVariableOp˘*while/lstm_cell_35/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_35/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_35_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_35/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_35_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_35/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_35/addAddV2#while/lstm_cell_35/MatMul:product:0%while/lstm_cell_35/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_35_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_35/BiasAddBiasAddwhile/lstm_cell_35/add:z:01while/lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_35/splitSplit+while/lstm_cell_35/split/split_dim:output:0#while/lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_35/SigmoidSigmoid!while/lstm_cell_35/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_35/Sigmoid_1Sigmoid!while/lstm_cell_35/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_35/mulMul while/lstm_cell_35/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_35/ReluRelu!while/lstm_cell_35/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_35/mul_1Mulwhile/lstm_cell_35/Sigmoid:y:0%while/lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_35/add_1AddV2while/lstm_cell_35/mul:z:0while/lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_35/Sigmoid_2Sigmoid!while/lstm_cell_35/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_35/Relu_1Reluwhile/lstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_35/mul_2Mul while/lstm_cell_35/Sigmoid_2:y:0'while/lstm_cell_35/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_35/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_35/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_35/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_35/BiasAdd/ReadVariableOp)^while/lstm_cell_35/MatMul/ReadVariableOp+^while/lstm_cell_35/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_35_biasadd_readvariableop_resource4while_lstm_cell_35_biasadd_readvariableop_resource_0"l
3while_lstm_cell_35_matmul_1_readvariableop_resource5while_lstm_cell_35_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_35_matmul_readvariableop_resource3while_lstm_cell_35_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_35/BiasAdd/ReadVariableOp)while/lstm_cell_35/BiasAdd/ReadVariableOp2T
(while/lstm_cell_35/MatMul/ReadVariableOp(while/lstm_cell_35/MatMul/ReadVariableOp2X
*while/lstm_cell_35/MatMul_1/ReadVariableOp*while/lstm_cell_35/MatMul_1/ReadVariableOp: 
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
while_cond_216958
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_216958___redundant_placeholder04
0while_while_cond_216958___redundant_placeholder14
0while_while_cond_216958___redundant_placeholder24
0while_while_cond_216958___redundant_placeholder3
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
D__inference_lstm_142_layer_call_and_return_conditional_losses_215998
inputs_0>
+lstm_cell_34_matmul_readvariableop_resource:	dÈ@
-lstm_cell_34_matmul_1_readvariableop_resource:	2È;
,lstm_cell_34_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_34/BiasAdd/ReadVariableOp˘"lstm_cell_34/MatMul/ReadVariableOp˘$lstm_cell_34/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_34/MatMul/ReadVariableOpReadVariableOp+lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_34/MatMulMatMulstrided_slice_2:output:0*lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_34/MatMul_1MatMulzeros:output:0,lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_34/addAddV2lstm_cell_34/MatMul:product:0lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_34/BiasAddBiasAddlstm_cell_34/add:z:0+lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_34/splitSplit%lstm_cell_34/split/split_dim:output:0lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_34/SigmoidSigmoidlstm_cell_34/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_34/Sigmoid_1Sigmoidlstm_cell_34/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_34/mulMullstm_cell_34/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_34/ReluRelulstm_cell_34/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_34/mul_1Mullstm_cell_34/Sigmoid:y:0lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_34/add_1AddV2lstm_cell_34/mul:z:0lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_34/Sigmoid_2Sigmoidlstm_cell_34/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_34/Relu_1Relulstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_34/mul_2Mullstm_cell_34/Sigmoid_2:y:0!lstm_cell_34/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_34_matmul_readvariableop_resource-lstm_cell_34_matmul_1_readvariableop_resource,lstm_cell_34_biasadd_readvariableop_resource*
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
while_body_215914*
condR
while_cond_215913*K
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
NoOpNoOp$^lstm_cell_34/BiasAdd/ReadVariableOp#^lstm_cell_34/MatMul/ReadVariableOp%^lstm_cell_34/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_34/BiasAdd/ReadVariableOp#lstm_cell_34/BiasAdd/ReadVariableOp2H
"lstm_cell_34/MatMul/ReadVariableOp"lstm_cell_34/MatMul/ReadVariableOp2L
$lstm_cell_34/MatMul_1/ReadVariableOp$lstm_cell_34/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
Ŭ

H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_217128

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
D__inference_lstm_142_layer_call_and_return_conditional_losses_216141
inputs_0>
+lstm_cell_34_matmul_readvariableop_resource:	dÈ@
-lstm_cell_34_matmul_1_readvariableop_resource:	2È;
,lstm_cell_34_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_34/BiasAdd/ReadVariableOp˘"lstm_cell_34/MatMul/ReadVariableOp˘$lstm_cell_34/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_34/MatMul/ReadVariableOpReadVariableOp+lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_34/MatMulMatMulstrided_slice_2:output:0*lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_34/MatMul_1MatMulzeros:output:0,lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_34/addAddV2lstm_cell_34/MatMul:product:0lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_34/BiasAddBiasAddlstm_cell_34/add:z:0+lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_34/splitSplit%lstm_cell_34/split/split_dim:output:0lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_34/SigmoidSigmoidlstm_cell_34/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_34/Sigmoid_1Sigmoidlstm_cell_34/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_34/mulMullstm_cell_34/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_34/ReluRelulstm_cell_34/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_34/mul_1Mullstm_cell_34/Sigmoid:y:0lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_34/add_1AddV2lstm_cell_34/mul:z:0lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_34/Sigmoid_2Sigmoidlstm_cell_34/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_34/Relu_1Relulstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_34/mul_2Mullstm_cell_34/Sigmoid_2:y:0!lstm_cell_34/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_34_matmul_readvariableop_resource-lstm_cell_34_matmul_1_readvariableop_resource,lstm_cell_34_biasadd_readvariableop_resource*
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
while_body_216057*
condR
while_cond_216056*K
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
NoOpNoOp$^lstm_cell_34/BiasAdd/ReadVariableOp#^lstm_cell_34/MatMul/ReadVariableOp%^lstm_cell_34/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_34/BiasAdd/ReadVariableOp#lstm_cell_34/BiasAdd/ReadVariableOp2H
"lstm_cell_34/MatMul/ReadVariableOp"lstm_cell_34/MatMul/ReadVariableOp2L
$lstm_cell_34/MatMul_1/ReadVariableOp$lstm_cell_34/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
Ç	
ġ
D__inference_dense_47_layer_call_and_return_conditional_losses_213544

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
while_cond_212457
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_212457___redundant_placeholder04
0while_while_cond_212457___redundant_placeholder14
0while_while_cond_212457___redundant_placeholder24
0while_while_cond_212457___redundant_placeholder3
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
while_cond_212298
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_212298___redundant_placeholder04
0while_while_cond_212298___redundant_placeholder14
0while_while_cond_212298___redundant_placeholder24
0while_while_cond_212298___redundant_placeholder3
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
Ú


.__inference_sequential_47_layer_call_fn_214314

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
I__inference_sequential_47_layer_call_and_return_conditional_losses_213551o
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
while_cond_216672
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_216672___redundant_placeholder04
0while_while_cond_216672___redundant_placeholder14
0while_while_cond_216672___redundant_placeholder24
0while_while_cond_216672___redundant_placeholder3
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
Ó

H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_217324

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
J

D__inference_lstm_143_layer_call_and_return_conditional_losses_213526

inputs=
+lstm_cell_35_matmul_readvariableop_resource:2(?
-lstm_cell_35_matmul_1_readvariableop_resource:
(:
,lstm_cell_35_biasadd_readvariableop_resource:(
identity˘#lstm_cell_35/BiasAdd/ReadVariableOp˘"lstm_cell_35/MatMul/ReadVariableOp˘$lstm_cell_35/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_35/MatMul/ReadVariableOpReadVariableOp+lstm_cell_35_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_35/MatMulMatMulstrided_slice_2:output:0*lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_35_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_35/MatMul_1MatMulzeros:output:0,lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_35/addAddV2lstm_cell_35/MatMul:product:0lstm_cell_35/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_35_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_35/BiasAddBiasAddlstm_cell_35/add:z:0+lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_35/splitSplit%lstm_cell_35/split/split_dim:output:0lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_35/SigmoidSigmoidlstm_cell_35/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_35/Sigmoid_1Sigmoidlstm_cell_35/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_35/mulMullstm_cell_35/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_35/ReluRelulstm_cell_35/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_35/mul_1Mullstm_cell_35/Sigmoid:y:0lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_35/add_1AddV2lstm_cell_35/mul:z:0lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_35/Sigmoid_2Sigmoidlstm_cell_35/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_35/Relu_1Relulstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_35/mul_2Mullstm_cell_35/Sigmoid_2:y:0!lstm_cell_35/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_35_matmul_readvariableop_resource-lstm_cell_35_matmul_1_readvariableop_resource,lstm_cell_35_biasadd_readvariableop_resource*
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
while_body_213442*
condR
while_cond_213441*K
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
NoOpNoOp$^lstm_cell_35/BiasAdd/ReadVariableOp#^lstm_cell_35/MatMul/ReadVariableOp%^lstm_cell_35/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_35/BiasAdd/ReadVariableOp#lstm_cell_35/BiasAdd/ReadVariableOp2H
"lstm_cell_35/MatMul/ReadVariableOp"lstm_cell_35/MatMul/ReadVariableOp2L
$lstm_cell_35/MatMul_1/ReadVariableOp$lstm_cell_35/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
8
?
while_body_215298
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_33_matmul_readvariableop_resource_0:	H
5while_lstm_cell_33_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_33_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_33_matmul_readvariableop_resource:	F
3while_lstm_cell_33_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_33_biasadd_readvariableop_resource:	˘)while/lstm_cell_33/BiasAdd/ReadVariableOp˘(while/lstm_cell_33/MatMul/ReadVariableOp˘*while/lstm_cell_33/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_33/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_33_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_33/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_33_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_33/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_33/addAddV2#while/lstm_cell_33/MatMul:product:0%while/lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_33_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_33/BiasAddBiasAddwhile/lstm_cell_33/add:z:01while/lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_33/splitSplit+while/lstm_cell_33/split/split_dim:output:0#while/lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_33/SigmoidSigmoid!while/lstm_cell_33/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_33/Sigmoid_1Sigmoid!while/lstm_cell_33/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_33/mulMul while/lstm_cell_33/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_33/ReluRelu!while/lstm_cell_33/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_33/mul_1Mulwhile/lstm_cell_33/Sigmoid:y:0%while/lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_33/add_1AddV2while/lstm_cell_33/mul:z:0while/lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_33/Sigmoid_2Sigmoid!while/lstm_cell_33/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_33/Relu_1Reluwhile/lstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_33/mul_2Mul while/lstm_cell_33/Sigmoid_2:y:0'while/lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_33/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_33/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_33/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_33/BiasAdd/ReadVariableOp)^while/lstm_cell_33/MatMul/ReadVariableOp+^while/lstm_cell_33/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_33_biasadd_readvariableop_resource4while_lstm_cell_33_biasadd_readvariableop_resource_0"l
3while_lstm_cell_33_matmul_1_readvariableop_resource5while_lstm_cell_33_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_33_matmul_readvariableop_resource3while_lstm_cell_33_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_33/BiasAdd/ReadVariableOp)while/lstm_cell_33/BiasAdd/ReadVariableOp2T
(while/lstm_cell_33/MatMul/ReadVariableOp(while/lstm_cell_33/MatMul/ReadVariableOp2X
*while/lstm_cell_33/MatMul_1/ReadVariableOp*while/lstm_cell_33/MatMul_1/ReadVariableOp: 
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
ë
ö
-__inference_lstm_cell_34_layer_call_fn_217194

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
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_212590o
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
J

D__inference_lstm_143_layer_call_and_return_conditional_losses_213742

inputs=
+lstm_cell_35_matmul_readvariableop_resource:2(?
-lstm_cell_35_matmul_1_readvariableop_resource:
(:
,lstm_cell_35_biasadd_readvariableop_resource:(
identity˘#lstm_cell_35/BiasAdd/ReadVariableOp˘"lstm_cell_35/MatMul/ReadVariableOp˘$lstm_cell_35/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_35/MatMul/ReadVariableOpReadVariableOp+lstm_cell_35_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_35/MatMulMatMulstrided_slice_2:output:0*lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_35_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_35/MatMul_1MatMulzeros:output:0,lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_35/addAddV2lstm_cell_35/MatMul:product:0lstm_cell_35/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_35_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_35/BiasAddBiasAddlstm_cell_35/add:z:0+lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_35/splitSplit%lstm_cell_35/split/split_dim:output:0lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_35/SigmoidSigmoidlstm_cell_35/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_35/Sigmoid_1Sigmoidlstm_cell_35/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_35/mulMullstm_cell_35/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_35/ReluRelulstm_cell_35/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_35/mul_1Mullstm_cell_35/Sigmoid:y:0lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_35/add_1AddV2lstm_cell_35/mul:z:0lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_35/Sigmoid_2Sigmoidlstm_cell_35/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_35/Relu_1Relulstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_35/mul_2Mullstm_cell_35/Sigmoid_2:y:0!lstm_cell_35/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_35_matmul_readvariableop_resource-lstm_cell_35_matmul_1_readvariableop_resource,lstm_cell_35_biasadd_readvariableop_resource*
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
while_body_213658*
condR
while_cond_213657*K
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
NoOpNoOp$^lstm_cell_35/BiasAdd/ReadVariableOp#^lstm_cell_35/MatMul/ReadVariableOp%^lstm_cell_35/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_35/BiasAdd/ReadVariableOp#lstm_cell_35/BiasAdd/ReadVariableOp2H
"lstm_cell_35/MatMul/ReadVariableOp"lstm_cell_35/MatMul/ReadVariableOp2L
$lstm_cell_35/MatMul_1/ReadVariableOp$lstm_cell_35/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
8
?
while_body_216200
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_34_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_34_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_34_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_34_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_34_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_34_biasadd_readvariableop_resource:	È˘)while/lstm_cell_34/BiasAdd/ReadVariableOp˘(while/lstm_cell_34/MatMul/ReadVariableOp˘*while/lstm_cell_34/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_34/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_34/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_34/addAddV2#while/lstm_cell_34/MatMul:product:0%while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_34/BiasAddBiasAddwhile/lstm_cell_34/add:z:01while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_34/splitSplit+while/lstm_cell_34/split/split_dim:output:0#while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_34/SigmoidSigmoid!while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_34/Sigmoid_1Sigmoid!while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_34/mulMul while/lstm_cell_34/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_34/ReluRelu!while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_34/mul_1Mulwhile/lstm_cell_34/Sigmoid:y:0%while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_34/add_1AddV2while/lstm_cell_34/mul:z:0while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_34/Sigmoid_2Sigmoid!while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_34/Relu_1Reluwhile/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_34/mul_2Mul while/lstm_cell_34/Sigmoid_2:y:0'while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_34/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_34/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_34/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_34/BiasAdd/ReadVariableOp)^while/lstm_cell_34/MatMul/ReadVariableOp+^while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_34_biasadd_readvariableop_resource4while_lstm_cell_34_biasadd_readvariableop_resource_0"l
3while_lstm_cell_34_matmul_1_readvariableop_resource5while_lstm_cell_34_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_34_matmul_readvariableop_resource3while_lstm_cell_34_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_34/BiasAdd/ReadVariableOp)while/lstm_cell_34/BiasAdd/ReadVariableOp2T
(while/lstm_cell_34/MatMul/ReadVariableOp(while/lstm_cell_34/MatMul/ReadVariableOp2X
*while/lstm_cell_34/MatMul_1/ReadVariableOp*while/lstm_cell_34/MatMul_1/ReadVariableOp: 
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
while_cond_213822
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_213822___redundant_placeholder04
0while_while_cond_213822___redundant_placeholder14
0while_while_cond_213822___redundant_placeholder24
0while_while_cond_213822___redundant_placeholder3
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
?
while_body_213142
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_33_matmul_readvariableop_resource_0:	H
5while_lstm_cell_33_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_33_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_33_matmul_readvariableop_resource:	F
3while_lstm_cell_33_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_33_biasadd_readvariableop_resource:	˘)while/lstm_cell_33/BiasAdd/ReadVariableOp˘(while/lstm_cell_33/MatMul/ReadVariableOp˘*while/lstm_cell_33/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_33/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_33_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_33/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_33_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_33/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_33/addAddV2#while/lstm_cell_33/MatMul:product:0%while/lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_33_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_33/BiasAddBiasAddwhile/lstm_cell_33/add:z:01while/lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_33/splitSplit+while/lstm_cell_33/split/split_dim:output:0#while/lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_33/SigmoidSigmoid!while/lstm_cell_33/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_33/Sigmoid_1Sigmoid!while/lstm_cell_33/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_33/mulMul while/lstm_cell_33/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_33/ReluRelu!while/lstm_cell_33/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_33/mul_1Mulwhile/lstm_cell_33/Sigmoid:y:0%while/lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_33/add_1AddV2while/lstm_cell_33/mul:z:0while/lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_33/Sigmoid_2Sigmoid!while/lstm_cell_33/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_33/Relu_1Reluwhile/lstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_33/mul_2Mul while/lstm_cell_33/Sigmoid_2:y:0'while/lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_33/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_33/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_33/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_33/BiasAdd/ReadVariableOp)^while/lstm_cell_33/MatMul/ReadVariableOp+^while/lstm_cell_33/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_33_biasadd_readvariableop_resource4while_lstm_cell_33_biasadd_readvariableop_resource_0"l
3while_lstm_cell_33_matmul_1_readvariableop_resource5while_lstm_cell_33_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_33_matmul_readvariableop_resource3while_lstm_cell_33_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_33/BiasAdd/ReadVariableOp)while/lstm_cell_33/BiasAdd/ReadVariableOp2T
(while/lstm_cell_33/MatMul/ReadVariableOp(while/lstm_cell_33/MatMul/ReadVariableOp2X
*while/lstm_cell_33/MatMul_1/ReadVariableOp*while/lstm_cell_33/MatMul_1/ReadVariableOp: 
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
while_body_212299
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_33_212323_0:	.
while_lstm_cell_33_212325_0:	d*
while_lstm_cell_33_212327_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_33_212323:	,
while_lstm_cell_33_212325:	d(
while_lstm_cell_33_212327:	˘*while/lstm_cell_33/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_33/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_33_212323_0while_lstm_cell_33_212325_0while_lstm_cell_33_212327_0*
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
H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_212240Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_33/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_33/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_33/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_33/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_33_212323while_lstm_cell_33_212323_0"8
while_lstm_cell_33_212325while_lstm_cell_33_212325_0"8
while_lstm_cell_33_212327while_lstm_cell_33_212327_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_33/StatefulPartitionedCall*while/lstm_cell_33/StatefulPartitionedCall: 
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

D__inference_lstm_143_layer_call_and_return_conditional_losses_213068

inputs%
lstm_cell_35_212986:2(%
lstm_cell_35_212988:
(!
lstm_cell_35_212990:(
identity˘$lstm_cell_35/StatefulPartitionedCall˘while;
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
$lstm_cell_35/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_35_212986lstm_cell_35_212988lstm_cell_35_212990*
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
H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_212940n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_35_212986lstm_cell_35_212988lstm_cell_35_212990*
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
while_body_212999*
condR
while_cond_212998*K
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
NoOpNoOp%^lstm_cell_35/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_35/StatefulPartitionedCall$lstm_cell_35/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
¤J

D__inference_lstm_142_layer_call_and_return_conditional_losses_213376

inputs>
+lstm_cell_34_matmul_readvariableop_resource:	dÈ@
-lstm_cell_34_matmul_1_readvariableop_resource:	2È;
,lstm_cell_34_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_34/BiasAdd/ReadVariableOp˘"lstm_cell_34/MatMul/ReadVariableOp˘$lstm_cell_34/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_34/MatMul/ReadVariableOpReadVariableOp+lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_34/MatMulMatMulstrided_slice_2:output:0*lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_34/MatMul_1MatMulzeros:output:0,lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_34/addAddV2lstm_cell_34/MatMul:product:0lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_34/BiasAddBiasAddlstm_cell_34/add:z:0+lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_34/splitSplit%lstm_cell_34/split/split_dim:output:0lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_34/SigmoidSigmoidlstm_cell_34/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_34/Sigmoid_1Sigmoidlstm_cell_34/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_34/mulMullstm_cell_34/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_34/ReluRelulstm_cell_34/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_34/mul_1Mullstm_cell_34/Sigmoid:y:0lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_34/add_1AddV2lstm_cell_34/mul:z:0lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_34/Sigmoid_2Sigmoidlstm_cell_34/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_34/Relu_1Relulstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_34/mul_2Mullstm_cell_34/Sigmoid_2:y:0!lstm_cell_34/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_34_matmul_readvariableop_resource-lstm_cell_34_matmul_1_readvariableop_resource,lstm_cell_34_biasadd_readvariableop_resource*
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
while_body_213292*
condR
while_cond_213291*K
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
NoOpNoOp$^lstm_cell_34/BiasAdd/ReadVariableOp#^lstm_cell_34/MatMul/ReadVariableOp%^lstm_cell_34/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_34/BiasAdd/ReadVariableOp#lstm_cell_34/BiasAdd/ReadVariableOp2H
"lstm_cell_34/MatMul/ReadVariableOp"lstm_cell_34/MatMul/ReadVariableOp2L
$lstm_cell_34/MatMul_1/ReadVariableOp$lstm_cell_34/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
ĉ"
?
while_body_212108
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_33_212132_0:	.
while_lstm_cell_33_212134_0:	d*
while_lstm_cell_33_212136_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_33_212132:	,
while_lstm_cell_33_212134:	d(
while_lstm_cell_33_212136:	˘*while/lstm_cell_33/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_33/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_33_212132_0while_lstm_cell_33_212134_0while_lstm_cell_33_212136_0*
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
H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_212094Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_33/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_33/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_33/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_33/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_33_212132while_lstm_cell_33_212132_0"8
while_lstm_cell_33_212134while_lstm_cell_33_212134_0"8
while_lstm_cell_33_212136while_lstm_cell_33_212136_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_33/StatefulPartitionedCall*while/lstm_cell_33/StatefulPartitionedCall: 
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
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_217226

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
ş

(sequential_47_lstm_142_while_cond_211797J
Fsequential_47_lstm_142_while_sequential_47_lstm_142_while_loop_counterP
Lsequential_47_lstm_142_while_sequential_47_lstm_142_while_maximum_iterations,
(sequential_47_lstm_142_while_placeholder.
*sequential_47_lstm_142_while_placeholder_1.
*sequential_47_lstm_142_while_placeholder_2.
*sequential_47_lstm_142_while_placeholder_3L
Hsequential_47_lstm_142_while_less_sequential_47_lstm_142_strided_slice_1b
^sequential_47_lstm_142_while_sequential_47_lstm_142_while_cond_211797___redundant_placeholder0b
^sequential_47_lstm_142_while_sequential_47_lstm_142_while_cond_211797___redundant_placeholder1b
^sequential_47_lstm_142_while_sequential_47_lstm_142_while_cond_211797___redundant_placeholder2b
^sequential_47_lstm_142_while_sequential_47_lstm_142_while_cond_211797___redundant_placeholder3)
%sequential_47_lstm_142_while_identity
?
!sequential_47/lstm_142/while/LessLess(sequential_47_lstm_142_while_placeholderHsequential_47_lstm_142_while_less_sequential_47_lstm_142_strided_slice_1*
T0*
_output_shapes
: y
%sequential_47/lstm_142/while/IdentityIdentity%sequential_47/lstm_142/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_47_lstm_142_while_identity.sequential_47/lstm_142/while/Identity:output:0*(
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
-__inference_lstm_cell_33_layer_call_fn_217079

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
H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_212094o
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
Ğ
¸
)__inference_lstm_141_layer_call_fn_215206
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
D__inference_lstm_141_layer_call_and_return_conditional_losses_212177|
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
Ġ

H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_212240

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
¤J

D__inference_lstm_141_layer_call_and_return_conditional_losses_215668

inputs>
+lstm_cell_33_matmul_readvariableop_resource:	@
-lstm_cell_33_matmul_1_readvariableop_resource:	d;
,lstm_cell_33_biasadd_readvariableop_resource:	
identity˘#lstm_cell_33/BiasAdd/ReadVariableOp˘"lstm_cell_33/MatMul/ReadVariableOp˘$lstm_cell_33/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_33/MatMul/ReadVariableOpReadVariableOp+lstm_cell_33_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_33/MatMulMatMulstrided_slice_2:output:0*lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_33_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_33/MatMul_1MatMulzeros:output:0,lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_33/addAddV2lstm_cell_33/MatMul:product:0lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_33_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_33/BiasAddBiasAddlstm_cell_33/add:z:0+lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_33/splitSplit%lstm_cell_33/split/split_dim:output:0lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_33/SigmoidSigmoidlstm_cell_33/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_33/Sigmoid_1Sigmoidlstm_cell_33/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_33/mulMullstm_cell_33/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_33/ReluRelulstm_cell_33/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_33/mul_1Mullstm_cell_33/Sigmoid:y:0lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_33/add_1AddV2lstm_cell_33/mul:z:0lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_33/Sigmoid_2Sigmoidlstm_cell_33/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_33/Relu_1Relulstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_33/mul_2Mullstm_cell_33/Sigmoid_2:y:0!lstm_cell_33/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_33_matmul_readvariableop_resource-lstm_cell_33_matmul_1_readvariableop_resource,lstm_cell_33_biasadd_readvariableop_resource*
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
while_body_215584*
condR
while_cond_215583*K
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
NoOpNoOp$^lstm_cell_33/BiasAdd/ReadVariableOp#^lstm_cell_33/MatMul/ReadVariableOp%^lstm_cell_33/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_33/BiasAdd/ReadVariableOp#lstm_cell_33/BiasAdd/ReadVariableOp2H
"lstm_cell_33/MatMul/ReadVariableOp"lstm_cell_33/MatMul/ReadVariableOp2L
$lstm_cell_33/MatMul_1/ReadVariableOp$lstm_cell_33/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
S
­
(sequential_47_lstm_143_while_body_211937J
Fsequential_47_lstm_143_while_sequential_47_lstm_143_while_loop_counterP
Lsequential_47_lstm_143_while_sequential_47_lstm_143_while_maximum_iterations,
(sequential_47_lstm_143_while_placeholder.
*sequential_47_lstm_143_while_placeholder_1.
*sequential_47_lstm_143_while_placeholder_2.
*sequential_47_lstm_143_while_placeholder_3I
Esequential_47_lstm_143_while_sequential_47_lstm_143_strided_slice_1_0
sequential_47_lstm_143_while_tensorarrayv2read_tensorlistgetitem_sequential_47_lstm_143_tensorarrayunstack_tensorlistfromtensor_0\
Jsequential_47_lstm_143_while_lstm_cell_35_matmul_readvariableop_resource_0:2(^
Lsequential_47_lstm_143_while_lstm_cell_35_matmul_1_readvariableop_resource_0:
(Y
Ksequential_47_lstm_143_while_lstm_cell_35_biasadd_readvariableop_resource_0:()
%sequential_47_lstm_143_while_identity+
'sequential_47_lstm_143_while_identity_1+
'sequential_47_lstm_143_while_identity_2+
'sequential_47_lstm_143_while_identity_3+
'sequential_47_lstm_143_while_identity_4+
'sequential_47_lstm_143_while_identity_5G
Csequential_47_lstm_143_while_sequential_47_lstm_143_strided_slice_1
sequential_47_lstm_143_while_tensorarrayv2read_tensorlistgetitem_sequential_47_lstm_143_tensorarrayunstack_tensorlistfromtensorZ
Hsequential_47_lstm_143_while_lstm_cell_35_matmul_readvariableop_resource:2(\
Jsequential_47_lstm_143_while_lstm_cell_35_matmul_1_readvariableop_resource:
(W
Isequential_47_lstm_143_while_lstm_cell_35_biasadd_readvariableop_resource:(˘@sequential_47/lstm_143/while/lstm_cell_35/BiasAdd/ReadVariableOp˘?sequential_47/lstm_143/while/lstm_cell_35/MatMul/ReadVariableOp˘Asequential_47/lstm_143/while/lstm_cell_35/MatMul_1/ReadVariableOp
Nsequential_47/lstm_143/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
@sequential_47/lstm_143/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_47_lstm_143_while_tensorarrayv2read_tensorlistgetitem_sequential_47_lstm_143_tensorarrayunstack_tensorlistfromtensor_0(sequential_47_lstm_143_while_placeholderWsequential_47/lstm_143/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0Ê
?sequential_47/lstm_143/while/lstm_cell_35/MatMul/ReadVariableOpReadVariableOpJsequential_47_lstm_143_while_lstm_cell_35_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ŝ
0sequential_47/lstm_143/while/lstm_cell_35/MatMulMatMulGsequential_47/lstm_143/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_47/lstm_143/while/lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Î
Asequential_47/lstm_143/while/lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOpLsequential_47_lstm_143_while_lstm_cell_35_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ċ
2sequential_47/lstm_143/while/lstm_cell_35/MatMul_1MatMul*sequential_47_lstm_143_while_placeholder_2Isequential_47/lstm_143/while/lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(â
-sequential_47/lstm_143/while/lstm_cell_35/addAddV2:sequential_47/lstm_143/while/lstm_cell_35/MatMul:product:0<sequential_47/lstm_143/while/lstm_cell_35/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(È
@sequential_47/lstm_143/while/lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOpKsequential_47_lstm_143_while_lstm_cell_35_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ë
1sequential_47/lstm_143/while/lstm_cell_35/BiasAddBiasAdd1sequential_47/lstm_143/while/lstm_cell_35/add:z:0Hsequential_47/lstm_143/while/lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙({
9sequential_47/lstm_143/while/lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_47/lstm_143/while/lstm_cell_35/splitSplitBsequential_47/lstm_143/while/lstm_cell_35/split/split_dim:output:0:sequential_47/lstm_143/while/lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split¨
1sequential_47/lstm_143/while/lstm_cell_35/SigmoidSigmoid8sequential_47/lstm_143/while/lstm_cell_35/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
3sequential_47/lstm_143/while/lstm_cell_35/Sigmoid_1Sigmoid8sequential_47/lstm_143/while/lstm_cell_35/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ë
-sequential_47/lstm_143/while/lstm_cell_35/mulMul7sequential_47/lstm_143/while/lstm_cell_35/Sigmoid_1:y:0*sequential_47_lstm_143_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˘
.sequential_47/lstm_143/while/lstm_cell_35/ReluRelu8sequential_47/lstm_143/while/lstm_cell_35/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŭ
/sequential_47/lstm_143/while/lstm_cell_35/mul_1Mul5sequential_47/lstm_143/while/lstm_cell_35/Sigmoid:y:0<sequential_47/lstm_143/while/lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ò
/sequential_47/lstm_143/while/lstm_cell_35/add_1AddV21sequential_47/lstm_143/while/lstm_cell_35/mul:z:03sequential_47/lstm_143/while/lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
3sequential_47/lstm_143/while/lstm_cell_35/Sigmoid_2Sigmoid8sequential_47/lstm_143/while/lstm_cell_35/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

0sequential_47/lstm_143/while/lstm_cell_35/Relu_1Relu3sequential_47/lstm_143/while/lstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
á
/sequential_47/lstm_143/while/lstm_cell_35/mul_2Mul7sequential_47/lstm_143/while/lstm_cell_35/Sigmoid_2:y:0>sequential_47/lstm_143/while/lstm_cell_35/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
Asequential_47/lstm_143/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_47_lstm_143_while_placeholder_1(sequential_47_lstm_143_while_placeholder3sequential_47/lstm_143/while/lstm_cell_35/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_47/lstm_143/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_47/lstm_143/while/addAddV2(sequential_47_lstm_143_while_placeholder+sequential_47/lstm_143/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_47/lstm_143/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_47/lstm_143/while/add_1AddV2Fsequential_47_lstm_143_while_sequential_47_lstm_143_while_loop_counter-sequential_47/lstm_143/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_47/lstm_143/while/IdentityIdentity&sequential_47/lstm_143/while/add_1:z:0"^sequential_47/lstm_143/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_47/lstm_143/while/Identity_1IdentityLsequential_47_lstm_143_while_sequential_47_lstm_143_while_maximum_iterations"^sequential_47/lstm_143/while/NoOp*
T0*
_output_shapes
: 
'sequential_47/lstm_143/while/Identity_2Identity$sequential_47/lstm_143/while/add:z:0"^sequential_47/lstm_143/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_47/lstm_143/while/Identity_3IdentityQsequential_47/lstm_143/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_47/lstm_143/while/NoOp*
T0*
_output_shapes
: ?
'sequential_47/lstm_143/while/Identity_4Identity3sequential_47/lstm_143/while/lstm_cell_35/mul_2:z:0"^sequential_47/lstm_143/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
'sequential_47/lstm_143/while/Identity_5Identity3sequential_47/lstm_143/while/lstm_cell_35/add_1:z:0"^sequential_47/lstm_143/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĵ
!sequential_47/lstm_143/while/NoOpNoOpA^sequential_47/lstm_143/while/lstm_cell_35/BiasAdd/ReadVariableOp@^sequential_47/lstm_143/while/lstm_cell_35/MatMul/ReadVariableOpB^sequential_47/lstm_143/while/lstm_cell_35/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_47_lstm_143_while_identity.sequential_47/lstm_143/while/Identity:output:0"[
'sequential_47_lstm_143_while_identity_10sequential_47/lstm_143/while/Identity_1:output:0"[
'sequential_47_lstm_143_while_identity_20sequential_47/lstm_143/while/Identity_2:output:0"[
'sequential_47_lstm_143_while_identity_30sequential_47/lstm_143/while/Identity_3:output:0"[
'sequential_47_lstm_143_while_identity_40sequential_47/lstm_143/while/Identity_4:output:0"[
'sequential_47_lstm_143_while_identity_50sequential_47/lstm_143/while/Identity_5:output:0"
Isequential_47_lstm_143_while_lstm_cell_35_biasadd_readvariableop_resourceKsequential_47_lstm_143_while_lstm_cell_35_biasadd_readvariableop_resource_0"
Jsequential_47_lstm_143_while_lstm_cell_35_matmul_1_readvariableop_resourceLsequential_47_lstm_143_while_lstm_cell_35_matmul_1_readvariableop_resource_0"
Hsequential_47_lstm_143_while_lstm_cell_35_matmul_readvariableop_resourceJsequential_47_lstm_143_while_lstm_cell_35_matmul_readvariableop_resource_0"
Csequential_47_lstm_143_while_sequential_47_lstm_143_strided_slice_1Esequential_47_lstm_143_while_sequential_47_lstm_143_strided_slice_1_0"
sequential_47_lstm_143_while_tensorarrayv2read_tensorlistgetitem_sequential_47_lstm_143_tensorarrayunstack_tensorlistfromtensorsequential_47_lstm_143_while_tensorarrayv2read_tensorlistgetitem_sequential_47_lstm_143_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2
@sequential_47/lstm_143/while/lstm_cell_35/BiasAdd/ReadVariableOp@sequential_47/lstm_143/while/lstm_cell_35/BiasAdd/ReadVariableOp2
?sequential_47/lstm_143/while/lstm_cell_35/MatMul/ReadVariableOp?sequential_47/lstm_143/while/lstm_cell_35/MatMul/ReadVariableOp2
Asequential_47/lstm_143/while/lstm_cell_35/MatMul_1/ReadVariableOpAsequential_47/lstm_143/while/lstm_cell_35/MatMul_1/ReadVariableOp: 
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
J

D__inference_lstm_143_layer_call_and_return_conditional_losses_216900

inputs=
+lstm_cell_35_matmul_readvariableop_resource:2(?
-lstm_cell_35_matmul_1_readvariableop_resource:
(:
,lstm_cell_35_biasadd_readvariableop_resource:(
identity˘#lstm_cell_35/BiasAdd/ReadVariableOp˘"lstm_cell_35/MatMul/ReadVariableOp˘$lstm_cell_35/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_35/MatMul/ReadVariableOpReadVariableOp+lstm_cell_35_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_35/MatMulMatMulstrided_slice_2:output:0*lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_35_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_35/MatMul_1MatMulzeros:output:0,lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_35/addAddV2lstm_cell_35/MatMul:product:0lstm_cell_35/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_35_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_35/BiasAddBiasAddlstm_cell_35/add:z:0+lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_35/splitSplit%lstm_cell_35/split/split_dim:output:0lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_35/SigmoidSigmoidlstm_cell_35/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_35/Sigmoid_1Sigmoidlstm_cell_35/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_35/mulMullstm_cell_35/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_35/ReluRelulstm_cell_35/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_35/mul_1Mullstm_cell_35/Sigmoid:y:0lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_35/add_1AddV2lstm_cell_35/mul:z:0lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_35/Sigmoid_2Sigmoidlstm_cell_35/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_35/Relu_1Relulstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_35/mul_2Mullstm_cell_35/Sigmoid_2:y:0!lstm_cell_35/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_35_matmul_readvariableop_resource-lstm_cell_35_matmul_1_readvariableop_resource,lstm_cell_35_biasadd_readvariableop_resource*
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
while_body_216816*
condR
while_cond_216815*K
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
NoOpNoOp$^lstm_cell_35/BiasAdd/ReadVariableOp#^lstm_cell_35/MatMul/ReadVariableOp%^lstm_cell_35/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_35/BiasAdd/ReadVariableOp#lstm_cell_35/BiasAdd/ReadVariableOp2H
"lstm_cell_35/MatMul/ReadVariableOp"lstm_cell_35/MatMul/ReadVariableOp2L
$lstm_cell_35/MatMul_1/ReadVariableOp$lstm_cell_35/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
˙7
Ê
while_body_216816
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_35_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_35_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_35_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_35_matmul_readvariableop_resource:2(E
3while_lstm_cell_35_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_35_biasadd_readvariableop_resource:(˘)while/lstm_cell_35/BiasAdd/ReadVariableOp˘(while/lstm_cell_35/MatMul/ReadVariableOp˘*while/lstm_cell_35/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_35/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_35_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_35/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_35_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_35/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_35/addAddV2#while/lstm_cell_35/MatMul:product:0%while/lstm_cell_35/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_35_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_35/BiasAddBiasAddwhile/lstm_cell_35/add:z:01while/lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_35/splitSplit+while/lstm_cell_35/split/split_dim:output:0#while/lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_35/SigmoidSigmoid!while/lstm_cell_35/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_35/Sigmoid_1Sigmoid!while/lstm_cell_35/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_35/mulMul while/lstm_cell_35/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_35/ReluRelu!while/lstm_cell_35/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_35/mul_1Mulwhile/lstm_cell_35/Sigmoid:y:0%while/lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_35/add_1AddV2while/lstm_cell_35/mul:z:0while/lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_35/Sigmoid_2Sigmoid!while/lstm_cell_35/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_35/Relu_1Reluwhile/lstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_35/mul_2Mul while/lstm_cell_35/Sigmoid_2:y:0'while/lstm_cell_35/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_35/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_35/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_35/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_35/BiasAdd/ReadVariableOp)^while/lstm_cell_35/MatMul/ReadVariableOp+^while/lstm_cell_35/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_35_biasadd_readvariableop_resource4while_lstm_cell_35_biasadd_readvariableop_resource_0"l
3while_lstm_cell_35_matmul_1_readvariableop_resource5while_lstm_cell_35_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_35_matmul_readvariableop_resource3while_lstm_cell_35_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_35/BiasAdd/ReadVariableOp)while/lstm_cell_35/BiasAdd/ReadVariableOp2T
(while/lstm_cell_35/MatMul/ReadVariableOp(while/lstm_cell_35/MatMul/ReadVariableOp2X
*while/lstm_cell_35/MatMul_1/ReadVariableOp*while/lstm_cell_35/MatMul_1/ReadVariableOp: 
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
?
ó
I__inference_sequential_47_layer_call_and_return_conditional_losses_214252
lstm_141_input"
lstm_141_214225:	"
lstm_141_214227:	d
lstm_141_214229:	"
lstm_142_214232:	dÈ"
lstm_142_214234:	2È
lstm_142_214236:	È!
lstm_143_214239:2(!
lstm_143_214241:
(
lstm_143_214243:(!
dense_47_214246:

dense_47_214248:
identity˘ dense_47/StatefulPartitionedCall˘ lstm_141/StatefulPartitionedCall˘ lstm_142/StatefulPartitionedCall˘ lstm_143/StatefulPartitionedCall
 lstm_141/StatefulPartitionedCallStatefulPartitionedCalllstm_141_inputlstm_141_214225lstm_141_214227lstm_141_214229*
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
D__inference_lstm_141_layer_call_and_return_conditional_losses_214072Ş
 lstm_142/StatefulPartitionedCallStatefulPartitionedCall)lstm_141/StatefulPartitionedCall:output:0lstm_142_214232lstm_142_214234lstm_142_214236*
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
D__inference_lstm_142_layer_call_and_return_conditional_losses_213907Ĥ
 lstm_143/StatefulPartitionedCallStatefulPartitionedCall)lstm_142/StatefulPartitionedCall:output:0lstm_143_214239lstm_143_214241lstm_143_214243*
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
D__inference_lstm_143_layer_call_and_return_conditional_losses_213742
 dense_47/StatefulPartitionedCallStatefulPartitionedCall)lstm_143/StatefulPartitionedCall:output:0dense_47_214246dense_47_214248*
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
D__inference_dense_47_layer_call_and_return_conditional_losses_213544x
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_47/StatefulPartitionedCall!^lstm_141/StatefulPartitionedCall!^lstm_142/StatefulPartitionedCall!^lstm_143/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2D
 lstm_141/StatefulPartitionedCall lstm_141/StatefulPartitionedCall2D
 lstm_142/StatefulPartitionedCall lstm_142/StatefulPartitionedCall2D
 lstm_143/StatefulPartitionedCall lstm_143/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_141_input
ĉ"
?
while_body_212458
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_34_212482_0:	dÈ.
while_lstm_cell_34_212484_0:	2È*
while_lstm_cell_34_212486_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_34_212482:	dÈ,
while_lstm_cell_34_212484:	2È(
while_lstm_cell_34_212486:	È˘*while/lstm_cell_34/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_34/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_34_212482_0while_lstm_cell_34_212484_0while_lstm_cell_34_212486_0*
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
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_212444Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_34/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_34/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_34/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_34/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_34_212482while_lstm_cell_34_212482_0"8
while_lstm_cell_34_212484while_lstm_cell_34_212484_0"8
while_lstm_cell_34_212486while_lstm_cell_34_212486_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_34/StatefulPartitionedCall*while/lstm_cell_34/StatefulPartitionedCall: 
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
˙7
Ê
while_body_216959
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_35_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_35_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_35_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_35_matmul_readvariableop_resource:2(E
3while_lstm_cell_35_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_35_biasadd_readvariableop_resource:(˘)while/lstm_cell_35/BiasAdd/ReadVariableOp˘(while/lstm_cell_35/MatMul/ReadVariableOp˘*while/lstm_cell_35/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_35/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_35_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_35/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_35/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_35_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_35/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_35/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_35/addAddV2#while/lstm_cell_35/MatMul:product:0%while/lstm_cell_35/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_35/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_35_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_35/BiasAddBiasAddwhile/lstm_cell_35/add:z:01while/lstm_cell_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_35/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_35/splitSplit+while/lstm_cell_35/split/split_dim:output:0#while/lstm_cell_35/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_35/SigmoidSigmoid!while/lstm_cell_35/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_35/Sigmoid_1Sigmoid!while/lstm_cell_35/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_35/mulMul while/lstm_cell_35/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_35/ReluRelu!while/lstm_cell_35/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_35/mul_1Mulwhile/lstm_cell_35/Sigmoid:y:0%while/lstm_cell_35/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_35/add_1AddV2while/lstm_cell_35/mul:z:0while/lstm_cell_35/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_35/Sigmoid_2Sigmoid!while/lstm_cell_35/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_35/Relu_1Reluwhile/lstm_cell_35/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_35/mul_2Mul while/lstm_cell_35/Sigmoid_2:y:0'while/lstm_cell_35/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_35/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_35/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_35/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_35/BiasAdd/ReadVariableOp)^while/lstm_cell_35/MatMul/ReadVariableOp+^while/lstm_cell_35/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_35_biasadd_readvariableop_resource4while_lstm_cell_35_biasadd_readvariableop_resource_0"l
3while_lstm_cell_35_matmul_1_readvariableop_resource5while_lstm_cell_35_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_35_matmul_readvariableop_resource3while_lstm_cell_35_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_35/BiasAdd/ReadVariableOp)while/lstm_cell_35/BiasAdd/ReadVariableOp2T
(while/lstm_cell_35/MatMul/ReadVariableOp(while/lstm_cell_35/MatMul/ReadVariableOp2X
*while/lstm_cell_35/MatMul_1/ReadVariableOp*while/lstm_cell_35/MatMul_1/ReadVariableOp: 
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

ĥ
)__inference_lstm_141_layer_call_fn_215239

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
D__inference_lstm_141_layer_call_and_return_conditional_losses_214072s
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
¤J

D__inference_lstm_141_layer_call_and_return_conditional_losses_214072

inputs>
+lstm_cell_33_matmul_readvariableop_resource:	@
-lstm_cell_33_matmul_1_readvariableop_resource:	d;
,lstm_cell_33_biasadd_readvariableop_resource:	
identity˘#lstm_cell_33/BiasAdd/ReadVariableOp˘"lstm_cell_33/MatMul/ReadVariableOp˘$lstm_cell_33/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_33/MatMul/ReadVariableOpReadVariableOp+lstm_cell_33_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_33/MatMulMatMulstrided_slice_2:output:0*lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_33_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_33/MatMul_1MatMulzeros:output:0,lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_33/addAddV2lstm_cell_33/MatMul:product:0lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_33_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_33/BiasAddBiasAddlstm_cell_33/add:z:0+lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_33/splitSplit%lstm_cell_33/split/split_dim:output:0lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_33/SigmoidSigmoidlstm_cell_33/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_33/Sigmoid_1Sigmoidlstm_cell_33/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_33/mulMullstm_cell_33/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_33/ReluRelulstm_cell_33/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_33/mul_1Mullstm_cell_33/Sigmoid:y:0lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_33/add_1AddV2lstm_cell_33/mul:z:0lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_33/Sigmoid_2Sigmoidlstm_cell_33/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_33/Relu_1Relulstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_33/mul_2Mullstm_cell_33/Sigmoid_2:y:0!lstm_cell_33/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_33_matmul_readvariableop_resource-lstm_cell_33_matmul_1_readvariableop_resource,lstm_cell_33_biasadd_readvariableop_resource*
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
while_body_213988*
condR
while_cond_213987*K
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
NoOpNoOp$^lstm_cell_33/BiasAdd/ReadVariableOp#^lstm_cell_33/MatMul/ReadVariableOp%^lstm_cell_33/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_33/BiasAdd/ReadVariableOp#lstm_cell_33/BiasAdd/ReadVariableOp2H
"lstm_cell_33/MatMul/ReadVariableOp"lstm_cell_33/MatMul/ReadVariableOp2L
$lstm_cell_33/MatMul_1/ReadVariableOp$lstm_cell_33/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8
?
while_body_215584
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_33_matmul_readvariableop_resource_0:	H
5while_lstm_cell_33_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_33_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_33_matmul_readvariableop_resource:	F
3while_lstm_cell_33_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_33_biasadd_readvariableop_resource:	˘)while/lstm_cell_33/BiasAdd/ReadVariableOp˘(while/lstm_cell_33/MatMul/ReadVariableOp˘*while/lstm_cell_33/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_33/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_33_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_33/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_33_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_33/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_33/addAddV2#while/lstm_cell_33/MatMul:product:0%while/lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_33_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_33/BiasAddBiasAddwhile/lstm_cell_33/add:z:01while/lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_33/splitSplit+while/lstm_cell_33/split/split_dim:output:0#while/lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_33/SigmoidSigmoid!while/lstm_cell_33/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_33/Sigmoid_1Sigmoid!while/lstm_cell_33/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_33/mulMul while/lstm_cell_33/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_33/ReluRelu!while/lstm_cell_33/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_33/mul_1Mulwhile/lstm_cell_33/Sigmoid:y:0%while/lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_33/add_1AddV2while/lstm_cell_33/mul:z:0while/lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_33/Sigmoid_2Sigmoid!while/lstm_cell_33/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_33/Relu_1Reluwhile/lstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_33/mul_2Mul while/lstm_cell_33/Sigmoid_2:y:0'while/lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_33/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_33/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_33/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_33/BiasAdd/ReadVariableOp)^while/lstm_cell_33/MatMul/ReadVariableOp+^while/lstm_cell_33/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_33_biasadd_readvariableop_resource4while_lstm_cell_33_biasadd_readvariableop_resource_0"l
3while_lstm_cell_33_matmul_1_readvariableop_resource5while_lstm_cell_33_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_33_matmul_readvariableop_resource3while_lstm_cell_33_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_33/BiasAdd/ReadVariableOp)while/lstm_cell_33/BiasAdd/ReadVariableOp2T
(while/lstm_cell_33/MatMul/ReadVariableOp(while/lstm_cell_33/MatMul/ReadVariableOp2X
*while/lstm_cell_33/MatMul_1/ReadVariableOp*while/lstm_cell_33/MatMul_1/ReadVariableOp: 
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
ë
ö
-__inference_lstm_cell_34_layer_call_fn_217177

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
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_212444o
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
µ
?
while_cond_215583
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_215583___redundant_placeholder04
0while_while_cond_215583___redundant_placeholder14
0while_while_cond_215583___redundant_placeholder24
0while_while_cond_215583___redundant_placeholder3
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
lstm_142_while_cond_214538.
*lstm_142_while_lstm_142_while_loop_counter4
0lstm_142_while_lstm_142_while_maximum_iterations
lstm_142_while_placeholder 
lstm_142_while_placeholder_1 
lstm_142_while_placeholder_2 
lstm_142_while_placeholder_30
,lstm_142_while_less_lstm_142_strided_slice_1F
Blstm_142_while_lstm_142_while_cond_214538___redundant_placeholder0F
Blstm_142_while_lstm_142_while_cond_214538___redundant_placeholder1F
Blstm_142_while_lstm_142_while_cond_214538___redundant_placeholder2F
Blstm_142_while_lstm_142_while_cond_214538___redundant_placeholder3
lstm_142_while_identity

lstm_142/while/LessLesslstm_142_while_placeholder,lstm_142_while_less_lstm_142_strided_slice_1*
T0*
_output_shapes
: ]
lstm_142/while/IdentityIdentitylstm_142/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_142_while_identity lstm_142/while/Identity:output:0*(
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

lstm_142_while_body_214539.
*lstm_142_while_lstm_142_while_loop_counter4
0lstm_142_while_lstm_142_while_maximum_iterations
lstm_142_while_placeholder 
lstm_142_while_placeholder_1 
lstm_142_while_placeholder_2 
lstm_142_while_placeholder_3-
)lstm_142_while_lstm_142_strided_slice_1_0i
elstm_142_while_tensorarrayv2read_tensorlistgetitem_lstm_142_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_142_while_lstm_cell_34_matmul_readvariableop_resource_0:	dÈQ
>lstm_142_while_lstm_cell_34_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_142_while_lstm_cell_34_biasadd_readvariableop_resource_0:	È
lstm_142_while_identity
lstm_142_while_identity_1
lstm_142_while_identity_2
lstm_142_while_identity_3
lstm_142_while_identity_4
lstm_142_while_identity_5+
'lstm_142_while_lstm_142_strided_slice_1g
clstm_142_while_tensorarrayv2read_tensorlistgetitem_lstm_142_tensorarrayunstack_tensorlistfromtensorM
:lstm_142_while_lstm_cell_34_matmul_readvariableop_resource:	dÈO
<lstm_142_while_lstm_cell_34_matmul_1_readvariableop_resource:	2ÈJ
;lstm_142_while_lstm_cell_34_biasadd_readvariableop_resource:	È˘2lstm_142/while/lstm_cell_34/BiasAdd/ReadVariableOp˘1lstm_142/while/lstm_cell_34/MatMul/ReadVariableOp˘3lstm_142/while/lstm_cell_34/MatMul_1/ReadVariableOp
@lstm_142/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_142/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_142_while_tensorarrayv2read_tensorlistgetitem_lstm_142_tensorarrayunstack_tensorlistfromtensor_0lstm_142_while_placeholderIlstm_142/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_142/while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp<lstm_142_while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_142/while/lstm_cell_34/MatMulMatMul9lstm_142/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_142/while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_142/while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp>lstm_142_while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_142/while/lstm_cell_34/MatMul_1MatMullstm_142_while_placeholder_2;lstm_142/while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_142/while/lstm_cell_34/addAddV2,lstm_142/while/lstm_cell_34/MatMul:product:0.lstm_142/while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_142/while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp=lstm_142_while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_142/while/lstm_cell_34/BiasAddBiasAdd#lstm_142/while/lstm_cell_34/add:z:0:lstm_142/while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_142/while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_142/while/lstm_cell_34/splitSplit4lstm_142/while/lstm_cell_34/split/split_dim:output:0,lstm_142/while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_142/while/lstm_cell_34/SigmoidSigmoid*lstm_142/while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_142/while/lstm_cell_34/Sigmoid_1Sigmoid*lstm_142/while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_142/while/lstm_cell_34/mulMul)lstm_142/while/lstm_cell_34/Sigmoid_1:y:0lstm_142_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_142/while/lstm_cell_34/ReluRelu*lstm_142/while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_142/while/lstm_cell_34/mul_1Mul'lstm_142/while/lstm_cell_34/Sigmoid:y:0.lstm_142/while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_142/while/lstm_cell_34/add_1AddV2#lstm_142/while/lstm_cell_34/mul:z:0%lstm_142/while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_142/while/lstm_cell_34/Sigmoid_2Sigmoid*lstm_142/while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_142/while/lstm_cell_34/Relu_1Relu%lstm_142/while/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_142/while/lstm_cell_34/mul_2Mul)lstm_142/while/lstm_cell_34/Sigmoid_2:y:00lstm_142/while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_142/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_142_while_placeholder_1lstm_142_while_placeholder%lstm_142/while/lstm_cell_34/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_142/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_142/while/addAddV2lstm_142_while_placeholderlstm_142/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_142/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_142/while/add_1AddV2*lstm_142_while_lstm_142_while_loop_counterlstm_142/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_142/while/IdentityIdentitylstm_142/while/add_1:z:0^lstm_142/while/NoOp*
T0*
_output_shapes
: 
lstm_142/while/Identity_1Identity0lstm_142_while_lstm_142_while_maximum_iterations^lstm_142/while/NoOp*
T0*
_output_shapes
: t
lstm_142/while/Identity_2Identitylstm_142/while/add:z:0^lstm_142/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_142/while/Identity_3IdentityClstm_142/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_142/while/NoOp*
T0*
_output_shapes
: 
lstm_142/while/Identity_4Identity%lstm_142/while/lstm_cell_34/mul_2:z:0^lstm_142/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_142/while/Identity_5Identity%lstm_142/while/lstm_cell_34/add_1:z:0^lstm_142/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_142/while/NoOpNoOp3^lstm_142/while/lstm_cell_34/BiasAdd/ReadVariableOp2^lstm_142/while/lstm_cell_34/MatMul/ReadVariableOp4^lstm_142/while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_142_while_identity lstm_142/while/Identity:output:0"?
lstm_142_while_identity_1"lstm_142/while/Identity_1:output:0"?
lstm_142_while_identity_2"lstm_142/while/Identity_2:output:0"?
lstm_142_while_identity_3"lstm_142/while/Identity_3:output:0"?
lstm_142_while_identity_4"lstm_142/while/Identity_4:output:0"?
lstm_142_while_identity_5"lstm_142/while/Identity_5:output:0"T
'lstm_142_while_lstm_142_strided_slice_1)lstm_142_while_lstm_142_strided_slice_1_0"|
;lstm_142_while_lstm_cell_34_biasadd_readvariableop_resource=lstm_142_while_lstm_cell_34_biasadd_readvariableop_resource_0"~
<lstm_142_while_lstm_cell_34_matmul_1_readvariableop_resource>lstm_142_while_lstm_cell_34_matmul_1_readvariableop_resource_0"z
:lstm_142_while_lstm_cell_34_matmul_readvariableop_resource<lstm_142_while_lstm_cell_34_matmul_readvariableop_resource_0"Ì
clstm_142_while_tensorarrayv2read_tensorlistgetitem_lstm_142_tensorarrayunstack_tensorlistfromtensorelstm_142_while_tensorarrayv2read_tensorlistgetitem_lstm_142_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_142/while/lstm_cell_34/BiasAdd/ReadVariableOp2lstm_142/while/lstm_cell_34/BiasAdd/ReadVariableOp2f
1lstm_142/while/lstm_cell_34/MatMul/ReadVariableOp1lstm_142/while/lstm_cell_34/MatMul/ReadVariableOp2j
3lstm_142/while/lstm_cell_34/MatMul_1/ReadVariableOp3lstm_142/while/lstm_cell_34/MatMul_1/ReadVariableOp: 
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
: "L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*½
serving_defaultİ
M
lstm_141_input;
 serving_default_lstm_141_input:0˙˙˙˙˙˙˙˙˙<
dense_470
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
2dense_47/kernel
:2dense_47/bias
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
0:.	2lstm_141/lstm_cell_141/kernel
::8	d2'lstm_141/lstm_cell_141/recurrent_kernel
*:(2lstm_141/lstm_cell_141/bias
0:.	dÈ2lstm_142/lstm_cell_142/kernel
::8	2È2'lstm_142/lstm_cell_142/recurrent_kernel
*:(È2lstm_142/lstm_cell_142/bias
/:-2(2lstm_143/lstm_cell_143/kernel
9:7
(2'lstm_143/lstm_cell_143/recurrent_kernel
):'(2lstm_143/lstm_cell_143/bias
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
2Adam/dense_47/kernel/m
 :2Adam/dense_47/bias/m
5:3	2$Adam/lstm_141/lstm_cell_141/kernel/m
?:=	d2.Adam/lstm_141/lstm_cell_141/recurrent_kernel/m
/:-2"Adam/lstm_141/lstm_cell_141/bias/m
5:3	dÈ2$Adam/lstm_142/lstm_cell_142/kernel/m
?:=	2È2.Adam/lstm_142/lstm_cell_142/recurrent_kernel/m
/:-È2"Adam/lstm_142/lstm_cell_142/bias/m
4:22(2$Adam/lstm_143/lstm_cell_143/kernel/m
>:<
(2.Adam/lstm_143/lstm_cell_143/recurrent_kernel/m
.:,(2"Adam/lstm_143/lstm_cell_143/bias/m
&:$
2Adam/dense_47/kernel/v
 :2Adam/dense_47/bias/v
5:3	2$Adam/lstm_141/lstm_cell_141/kernel/v
?:=	d2.Adam/lstm_141/lstm_cell_141/recurrent_kernel/v
/:-2"Adam/lstm_141/lstm_cell_141/bias/v
5:3	dÈ2$Adam/lstm_142/lstm_cell_142/kernel/v
?:=	2È2.Adam/lstm_142/lstm_cell_142/recurrent_kernel/v
/:-È2"Adam/lstm_142/lstm_cell_142/bias/v
4:22(2$Adam/lstm_143/lstm_cell_143/kernel/v
>:<
(2.Adam/lstm_143/lstm_cell_143/recurrent_kernel/v
.:,(2"Adam/lstm_143/lstm_cell_143/bias/v
2
.__inference_sequential_47_layer_call_fn_213576
.__inference_sequential_47_layer_call_fn_214314
.__inference_sequential_47_layer_call_fn_214341
.__inference_sequential_47_layer_call_fn_214192À
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
I__inference_sequential_47_layer_call_and_return_conditional_losses_214768
I__inference_sequential_47_layer_call_and_return_conditional_losses_215195
I__inference_sequential_47_layer_call_and_return_conditional_losses_214222
I__inference_sequential_47_layer_call_and_return_conditional_losses_214252À
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
!__inference__wrapped_model_212027lstm_141_input"
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
)__inference_lstm_141_layer_call_fn_215206
)__inference_lstm_141_layer_call_fn_215217
)__inference_lstm_141_layer_call_fn_215228
)__inference_lstm_141_layer_call_fn_215239Ġ
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
D__inference_lstm_141_layer_call_and_return_conditional_losses_215382
D__inference_lstm_141_layer_call_and_return_conditional_losses_215525
D__inference_lstm_141_layer_call_and_return_conditional_losses_215668
D__inference_lstm_141_layer_call_and_return_conditional_losses_215811Ġ
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
)__inference_lstm_142_layer_call_fn_215822
)__inference_lstm_142_layer_call_fn_215833
)__inference_lstm_142_layer_call_fn_215844
)__inference_lstm_142_layer_call_fn_215855Ġ
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
D__inference_lstm_142_layer_call_and_return_conditional_losses_215998
D__inference_lstm_142_layer_call_and_return_conditional_losses_216141
D__inference_lstm_142_layer_call_and_return_conditional_losses_216284
D__inference_lstm_142_layer_call_and_return_conditional_losses_216427Ġ
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
)__inference_lstm_143_layer_call_fn_216438
)__inference_lstm_143_layer_call_fn_216449
)__inference_lstm_143_layer_call_fn_216460
)__inference_lstm_143_layer_call_fn_216471Ġ
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
D__inference_lstm_143_layer_call_and_return_conditional_losses_216614
D__inference_lstm_143_layer_call_and_return_conditional_losses_216757
D__inference_lstm_143_layer_call_and_return_conditional_losses_216900
D__inference_lstm_143_layer_call_and_return_conditional_losses_217043Ġ
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
)__inference_dense_47_layer_call_fn_217052˘
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
D__inference_dense_47_layer_call_and_return_conditional_losses_217062˘
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
$__inference_signature_wrapper_214287lstm_141_input"
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
-__inference_lstm_cell_33_layer_call_fn_217079
-__inference_lstm_cell_33_layer_call_fn_217096?
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
H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_217128
H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_217160?
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
-__inference_lstm_cell_34_layer_call_fn_217177
-__inference_lstm_cell_34_layer_call_fn_217194?
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
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_217226
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_217258?
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
-__inference_lstm_cell_35_layer_call_fn_217275
-__inference_lstm_cell_35_layer_call_fn_217292?
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
H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_217324
H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_217356?
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
!__inference__wrapped_model_212027-./012345!";˘8
1˘.
,)
lstm_141_input˙˙˙˙˙˙˙˙˙
Ş "3Ş0
.
dense_47"
dense_47˙˙˙˙˙˙˙˙˙¤
D__inference_dense_47_layer_call_and_return_conditional_losses_217062\!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 |
)__inference_dense_47_layer_call_fn_217052O!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "˙˙˙˙˙˙˙˙˙Ó
D__inference_lstm_141_layer_call_and_return_conditional_losses_215382-./O˘L
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
D__inference_lstm_141_layer_call_and_return_conditional_losses_215525-./O˘L
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
D__inference_lstm_141_layer_call_and_return_conditional_losses_215668q-./?˘<
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
D__inference_lstm_141_layer_call_and_return_conditional_losses_215811q-./?˘<
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
)__inference_lstm_141_layer_call_fn_215206}-./O˘L
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
)__inference_lstm_141_layer_call_fn_215217}-./O˘L
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
)__inference_lstm_141_layer_call_fn_215228d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙d
)__inference_lstm_141_layer_call_fn_215239d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p

 
Ş "˙˙˙˙˙˙˙˙˙dÓ
D__inference_lstm_142_layer_call_and_return_conditional_losses_215998012O˘L
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
D__inference_lstm_142_layer_call_and_return_conditional_losses_216141012O˘L
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
D__inference_lstm_142_layer_call_and_return_conditional_losses_216284q012?˘<
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
D__inference_lstm_142_layer_call_and_return_conditional_losses_216427q012?˘<
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
)__inference_lstm_142_layer_call_fn_215822}012O˘L
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
)__inference_lstm_142_layer_call_fn_215833}012O˘L
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
)__inference_lstm_142_layer_call_fn_215844d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙2
)__inference_lstm_142_layer_call_fn_215855d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p

 
Ş "˙˙˙˙˙˙˙˙˙2Ċ
D__inference_lstm_143_layer_call_and_return_conditional_losses_216614}345O˘L
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
D__inference_lstm_143_layer_call_and_return_conditional_losses_216757}345O˘L
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
D__inference_lstm_143_layer_call_and_return_conditional_losses_216900m345?˘<
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
D__inference_lstm_143_layer_call_and_return_conditional_losses_217043m345?˘<
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
)__inference_lstm_143_layer_call_fn_216438p345O˘L
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
)__inference_lstm_143_layer_call_fn_216449p345O˘L
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
)__inference_lstm_143_layer_call_fn_216460`345?˘<
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
)__inference_lstm_143_layer_call_fn_216471`345?˘<
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
H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_217128ŭ-./˘}
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
H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_217160ŭ-./˘}
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
-__inference_lstm_cell_33_layer_call_fn_217079í-./˘}
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
-__inference_lstm_cell_33_layer_call_fn_217096í-./˘}
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
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_217226ŭ012˘}
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
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_217258ŭ012˘}
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
-__inference_lstm_cell_34_layer_call_fn_217177í012˘}
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
-__inference_lstm_cell_34_layer_call_fn_217194í012˘}
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
H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_217324ŭ345˘}
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
H__inference_lstm_cell_35_layer_call_and_return_conditional_losses_217356ŭ345˘}
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
-__inference_lstm_cell_35_layer_call_fn_217275í345˘}
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
-__inference_lstm_cell_35_layer_call_fn_217292í345˘}
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
I__inference_sequential_47_layer_call_and_return_conditional_losses_214222y-./012345!"C˘@
9˘6
,)
lstm_141_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ĉ
I__inference_sequential_47_layer_call_and_return_conditional_losses_214252y-./012345!"C˘@
9˘6
,)
lstm_141_input˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ?
I__inference_sequential_47_layer_call_and_return_conditional_losses_214768q-./012345!";˘8
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
I__inference_sequential_47_layer_call_and_return_conditional_losses_215195q-./012345!";˘8
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
.__inference_sequential_47_layer_call_fn_213576l-./012345!"C˘@
9˘6
,)
lstm_141_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_47_layer_call_fn_214192l-./012345!"C˘@
9˘6
,)
lstm_141_input˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_47_layer_call_fn_214314d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_47_layer_call_fn_214341d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙ş
$__inference_signature_wrapper_214287-./012345!"M˘J
˘ 
CŞ@
>
lstm_141_input,)
lstm_141_input˙˙˙˙˙˙˙˙˙"3Ş0
.
dense_47"
dense_47˙˙˙˙˙˙˙˙˙