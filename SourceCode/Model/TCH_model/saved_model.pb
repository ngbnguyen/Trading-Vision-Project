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
dense_81/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_81/kernel
s
#dense_81/kernel/Read/ReadVariableOpReadVariableOpdense_81/kernel*
_output_shapes

:
*
dtype0
r
dense_81/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_81/bias
k
!dense_81/bias/Read/ReadVariableOpReadVariableOpdense_81/bias*
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
lstm_243/lstm_cell_243/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*.
shared_namelstm_243/lstm_cell_243/kernel

1lstm_243/lstm_cell_243/kernel/Read/ReadVariableOpReadVariableOplstm_243/lstm_cell_243/kernel*
_output_shapes
:	*
dtype0
Ğ
'lstm_243/lstm_cell_243/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*8
shared_name)'lstm_243/lstm_cell_243/recurrent_kernel
¤
;lstm_243/lstm_cell_243/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_243/lstm_cell_243/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_243/lstm_cell_243/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelstm_243/lstm_cell_243/bias

/lstm_243/lstm_cell_243/bias/Read/ReadVariableOpReadVariableOplstm_243/lstm_cell_243/bias*
_output_shapes	
:*
dtype0

lstm_244/lstm_cell_244/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*.
shared_namelstm_244/lstm_cell_244/kernel

1lstm_244/lstm_cell_244/kernel/Read/ReadVariableOpReadVariableOplstm_244/lstm_cell_244/kernel*
_output_shapes
:	dÈ*
dtype0
Ğ
'lstm_244/lstm_cell_244/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*8
shared_name)'lstm_244/lstm_cell_244/recurrent_kernel
¤
;lstm_244/lstm_cell_244/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_244/lstm_cell_244/recurrent_kernel*
_output_shapes
:	2È*
dtype0

lstm_244/lstm_cell_244/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*,
shared_namelstm_244/lstm_cell_244/bias

/lstm_244/lstm_cell_244/bias/Read/ReadVariableOpReadVariableOplstm_244/lstm_cell_244/bias*
_output_shapes	
:È*
dtype0

lstm_245/lstm_cell_245/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_245/lstm_cell_245/kernel

1lstm_245/lstm_cell_245/kernel/Read/ReadVariableOpReadVariableOplstm_245/lstm_cell_245/kernel*
_output_shapes

:2(*
dtype0
Ş
'lstm_245/lstm_cell_245/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_245/lstm_cell_245/recurrent_kernel
£
;lstm_245/lstm_cell_245/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_245/lstm_cell_245/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_245/lstm_cell_245/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_245/lstm_cell_245/bias

/lstm_245/lstm_cell_245/bias/Read/ReadVariableOpReadVariableOplstm_245/lstm_cell_245/bias*
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
Adam/dense_81/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_81/kernel/m

*Adam/dense_81/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_81/kernel/m*
_output_shapes

:
*
dtype0

Adam/dense_81/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_81/bias/m
y
(Adam/dense_81/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_81/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_243/lstm_cell_243/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_243/lstm_cell_243/kernel/m

8Adam/lstm_243/lstm_cell_243/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_243/lstm_cell_243/kernel/m*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_243/lstm_cell_243/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_243/lstm_cell_243/recurrent_kernel/m
²
BAdam/lstm_243/lstm_cell_243/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_243/lstm_cell_243/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

"Adam/lstm_243/lstm_cell_243/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_243/lstm_cell_243/bias/m

6Adam/lstm_243/lstm_cell_243/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_243/lstm_cell_243/bias/m*
_output_shapes	
:*
dtype0
?
$Adam/lstm_244/lstm_cell_244/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_244/lstm_cell_244/kernel/m

8Adam/lstm_244/lstm_cell_244/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_244/lstm_cell_244/kernel/m*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_244/lstm_cell_244/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_244/lstm_cell_244/recurrent_kernel/m
²
BAdam/lstm_244/lstm_cell_244/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_244/lstm_cell_244/recurrent_kernel/m*
_output_shapes
:	2È*
dtype0

"Adam/lstm_244/lstm_cell_244/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_244/lstm_cell_244/bias/m

6Adam/lstm_244/lstm_cell_244/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_244/lstm_cell_244/bias/m*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_245/lstm_cell_245/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_245/lstm_cell_245/kernel/m

8Adam/lstm_245/lstm_cell_245/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_245/lstm_cell_245/kernel/m*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_245/lstm_cell_245/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_245/lstm_cell_245/recurrent_kernel/m
ħ
BAdam/lstm_245/lstm_cell_245/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_245/lstm_cell_245/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

"Adam/lstm_245/lstm_cell_245/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_245/lstm_cell_245/bias/m

6Adam/lstm_245/lstm_cell_245/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_245/lstm_cell_245/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_81/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_81/kernel/v

*Adam/dense_81/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_81/kernel/v*
_output_shapes

:
*
dtype0

Adam/dense_81/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_81/bias/v
y
(Adam/dense_81/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_81/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_243/lstm_cell_243/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_243/lstm_cell_243/kernel/v

8Adam/lstm_243/lstm_cell_243/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_243/lstm_cell_243/kernel/v*
_output_shapes
:	*
dtype0
ı
.Adam/lstm_243/lstm_cell_243/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_243/lstm_cell_243/recurrent_kernel/v
²
BAdam/lstm_243/lstm_cell_243/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_243/lstm_cell_243/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

"Adam/lstm_243/lstm_cell_243/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_243/lstm_cell_243/bias/v

6Adam/lstm_243/lstm_cell_243/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_243/lstm_cell_243/bias/v*
_output_shapes	
:*
dtype0
?
$Adam/lstm_244/lstm_cell_244/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*5
shared_name&$Adam/lstm_244/lstm_cell_244/kernel/v

8Adam/lstm_244/lstm_cell_244/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_244/lstm_cell_244/kernel/v*
_output_shapes
:	dÈ*
dtype0
ı
.Adam/lstm_244/lstm_cell_244/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*?
shared_name0.Adam/lstm_244/lstm_cell_244/recurrent_kernel/v
²
BAdam/lstm_244/lstm_cell_244/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_244/lstm_cell_244/recurrent_kernel/v*
_output_shapes
:	2È*
dtype0

"Adam/lstm_244/lstm_cell_244/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*3
shared_name$"Adam/lstm_244/lstm_cell_244/bias/v

6Adam/lstm_244/lstm_cell_244/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_244/lstm_cell_244/bias/v*
_output_shapes	
:È*
dtype0
¤
$Adam/lstm_245/lstm_cell_245/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_245/lstm_cell_245/kernel/v

8Adam/lstm_245/lstm_cell_245/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_245/lstm_cell_245/kernel/v*
_output_shapes

:2(*
dtype0
¸
.Adam/lstm_245/lstm_cell_245/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_245/lstm_cell_245/recurrent_kernel/v
ħ
BAdam/lstm_245/lstm_cell_245/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_245/lstm_cell_245/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

"Adam/lstm_245/lstm_cell_245/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_245/lstm_cell_245/bias/v

6Adam/lstm_245/lstm_cell_245/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_245/lstm_cell_245/bias/v*
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
VARIABLE_VALUEdense_81/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_81/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_243/lstm_cell_243/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_243/lstm_cell_243/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_243/lstm_cell_243/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_244/lstm_cell_244/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_244/lstm_cell_244/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_244/lstm_cell_244/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_245/lstm_cell_245/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_245/lstm_cell_245/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_245/lstm_cell_245/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_81/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_81/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_243/lstm_cell_243/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_243/lstm_cell_243/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_243/lstm_cell_243/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_244/lstm_cell_244/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_244/lstm_cell_244/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_244/lstm_cell_244/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_245/lstm_cell_245/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_245/lstm_cell_245/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_245/lstm_cell_245/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_81/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_81/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_243/lstm_cell_243/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_243/lstm_cell_243/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_243/lstm_cell_243/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_244/lstm_cell_244/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_244/lstm_cell_244/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_244/lstm_cell_244/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_245/lstm_cell_245/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_245/lstm_cell_245/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_245/lstm_cell_245/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_243_inputPlaceholder*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0* 
shape:˙˙˙˙˙˙˙˙˙

StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_243_inputlstm_243/lstm_cell_243/kernel'lstm_243/lstm_cell_243/recurrent_kernellstm_243/lstm_cell_243/biaslstm_244/lstm_cell_244/kernel'lstm_244/lstm_cell_244/recurrent_kernellstm_244/lstm_cell_244/biaslstm_245/lstm_cell_245/kernel'lstm_245/lstm_cell_245/recurrent_kernellstm_245/lstm_cell_245/biasdense_81/kerneldense_81/bias*
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
$__inference_signature_wrapper_395086
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
½
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_81/kernel/Read/ReadVariableOp!dense_81/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_243/lstm_cell_243/kernel/Read/ReadVariableOp;lstm_243/lstm_cell_243/recurrent_kernel/Read/ReadVariableOp/lstm_243/lstm_cell_243/bias/Read/ReadVariableOp1lstm_244/lstm_cell_244/kernel/Read/ReadVariableOp;lstm_244/lstm_cell_244/recurrent_kernel/Read/ReadVariableOp/lstm_244/lstm_cell_244/bias/Read/ReadVariableOp1lstm_245/lstm_cell_245/kernel/Read/ReadVariableOp;lstm_245/lstm_cell_245/recurrent_kernel/Read/ReadVariableOp/lstm_245/lstm_cell_245/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_81/kernel/m/Read/ReadVariableOp(Adam/dense_81/bias/m/Read/ReadVariableOp8Adam/lstm_243/lstm_cell_243/kernel/m/Read/ReadVariableOpBAdam/lstm_243/lstm_cell_243/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_243/lstm_cell_243/bias/m/Read/ReadVariableOp8Adam/lstm_244/lstm_cell_244/kernel/m/Read/ReadVariableOpBAdam/lstm_244/lstm_cell_244/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_244/lstm_cell_244/bias/m/Read/ReadVariableOp8Adam/lstm_245/lstm_cell_245/kernel/m/Read/ReadVariableOpBAdam/lstm_245/lstm_cell_245/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_245/lstm_cell_245/bias/m/Read/ReadVariableOp*Adam/dense_81/kernel/v/Read/ReadVariableOp(Adam/dense_81/bias/v/Read/ReadVariableOp8Adam/lstm_243/lstm_cell_243/kernel/v/Read/ReadVariableOpBAdam/lstm_243/lstm_cell_243/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_243/lstm_cell_243/bias/v/Read/ReadVariableOp8Adam/lstm_244/lstm_cell_244/kernel/v/Read/ReadVariableOpBAdam/lstm_244/lstm_cell_244/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_244/lstm_cell_244/bias/v/Read/ReadVariableOp8Adam/lstm_245/lstm_cell_245/kernel/v/Read/ReadVariableOpBAdam/lstm_245/lstm_cell_245/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_245/lstm_cell_245/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_398298

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_81/kerneldense_81/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_243/lstm_cell_243/kernel'lstm_243/lstm_cell_243/recurrent_kernellstm_243/lstm_cell_243/biaslstm_244/lstm_cell_244/kernel'lstm_244/lstm_cell_244/recurrent_kernellstm_244/lstm_cell_244/biaslstm_245/lstm_cell_245/kernel'lstm_245/lstm_cell_245/recurrent_kernellstm_245/lstm_cell_245/biastotalcountAdam/dense_81/kernel/mAdam/dense_81/bias/m$Adam/lstm_243/lstm_cell_243/kernel/m.Adam/lstm_243/lstm_cell_243/recurrent_kernel/m"Adam/lstm_243/lstm_cell_243/bias/m$Adam/lstm_244/lstm_cell_244/kernel/m.Adam/lstm_244/lstm_cell_244/recurrent_kernel/m"Adam/lstm_244/lstm_cell_244/bias/m$Adam/lstm_245/lstm_cell_245/kernel/m.Adam/lstm_245/lstm_cell_245/recurrent_kernel/m"Adam/lstm_245/lstm_cell_245/bias/mAdam/dense_81/kernel/vAdam/dense_81/bias/v$Adam/lstm_243/lstm_cell_243/kernel/v.Adam/lstm_243/lstm_cell_243/recurrent_kernel/v"Adam/lstm_243/lstm_cell_243/bias/v$Adam/lstm_244/lstm_cell_244/kernel/v.Adam/lstm_244/lstm_cell_244/recurrent_kernel/v"Adam/lstm_244/lstm_cell_244/bias/v$Adam/lstm_245/lstm_cell_245/kernel/v.Adam/lstm_245/lstm_cell_245/recurrent_kernel/v"Adam/lstm_245/lstm_cell_245/bias/v*4
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
"__inference__traced_restore_398428½Ó+
J

D__inference_lstm_245_layer_call_and_return_conditional_losses_397699

inputs=
+lstm_cell_65_matmul_readvariableop_resource:2(?
-lstm_cell_65_matmul_1_readvariableop_resource:
(:
,lstm_cell_65_biasadd_readvariableop_resource:(
identity˘#lstm_cell_65/BiasAdd/ReadVariableOp˘"lstm_cell_65/MatMul/ReadVariableOp˘$lstm_cell_65/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_65/MatMul/ReadVariableOpReadVariableOp+lstm_cell_65_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_65/MatMulMatMulstrided_slice_2:output:0*lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_65_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_65/MatMul_1MatMulzeros:output:0,lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_65/addAddV2lstm_cell_65/MatMul:product:0lstm_cell_65/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_65_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_65/BiasAddBiasAddlstm_cell_65/add:z:0+lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_65/splitSplit%lstm_cell_65/split/split_dim:output:0lstm_cell_65/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_65/SigmoidSigmoidlstm_cell_65/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_65/Sigmoid_1Sigmoidlstm_cell_65/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_65/mulMullstm_cell_65/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_65/ReluRelulstm_cell_65/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_65/mul_1Mullstm_cell_65/Sigmoid:y:0lstm_cell_65/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_65/add_1AddV2lstm_cell_65/mul:z:0lstm_cell_65/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_65/Sigmoid_2Sigmoidlstm_cell_65/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_65/Relu_1Relulstm_cell_65/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_65/mul_2Mullstm_cell_65/Sigmoid_2:y:0!lstm_cell_65/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_65_matmul_readvariableop_resource-lstm_cell_65_matmul_1_readvariableop_resource,lstm_cell_65_biasadd_readvariableop_resource*
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
while_body_397615*
condR
while_cond_397614*K
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
NoOpNoOp$^lstm_cell_65/BiasAdd/ReadVariableOp#^lstm_cell_65/MatMul/ReadVariableOp%^lstm_cell_65/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_65/BiasAdd/ReadVariableOp#lstm_cell_65/BiasAdd/ReadVariableOp2H
"lstm_cell_65/MatMul/ReadVariableOp"lstm_cell_65/MatMul/ReadVariableOp2L
$lstm_cell_65/MatMul_1/ReadVariableOp$lstm_cell_65/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
À


$__inference_signature_wrapper_395086
lstm_243_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_243_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_392826o
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
_user_specified_namelstm_243_input
ÛB
?

lstm_244_while_body_395765.
*lstm_244_while_lstm_244_while_loop_counter4
0lstm_244_while_lstm_244_while_maximum_iterations
lstm_244_while_placeholder 
lstm_244_while_placeholder_1 
lstm_244_while_placeholder_2 
lstm_244_while_placeholder_3-
)lstm_244_while_lstm_244_strided_slice_1_0i
elstm_244_while_tensorarrayv2read_tensorlistgetitem_lstm_244_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_244_while_lstm_cell_64_matmul_readvariableop_resource_0:	dÈQ
>lstm_244_while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_244_while_lstm_cell_64_biasadd_readvariableop_resource_0:	È
lstm_244_while_identity
lstm_244_while_identity_1
lstm_244_while_identity_2
lstm_244_while_identity_3
lstm_244_while_identity_4
lstm_244_while_identity_5+
'lstm_244_while_lstm_244_strided_slice_1g
clstm_244_while_tensorarrayv2read_tensorlistgetitem_lstm_244_tensorarrayunstack_tensorlistfromtensorM
:lstm_244_while_lstm_cell_64_matmul_readvariableop_resource:	dÈO
<lstm_244_while_lstm_cell_64_matmul_1_readvariableop_resource:	2ÈJ
;lstm_244_while_lstm_cell_64_biasadd_readvariableop_resource:	È˘2lstm_244/while/lstm_cell_64/BiasAdd/ReadVariableOp˘1lstm_244/while/lstm_cell_64/MatMul/ReadVariableOp˘3lstm_244/while/lstm_cell_64/MatMul_1/ReadVariableOp
@lstm_244/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_244/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_244_while_tensorarrayv2read_tensorlistgetitem_lstm_244_tensorarrayunstack_tensorlistfromtensor_0lstm_244_while_placeholderIlstm_244/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_244/while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp<lstm_244_while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_244/while/lstm_cell_64/MatMulMatMul9lstm_244/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_244/while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_244/while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp>lstm_244_while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_244/while/lstm_cell_64/MatMul_1MatMullstm_244_while_placeholder_2;lstm_244/while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_244/while/lstm_cell_64/addAddV2,lstm_244/while/lstm_cell_64/MatMul:product:0.lstm_244/while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_244/while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp=lstm_244_while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_244/while/lstm_cell_64/BiasAddBiasAdd#lstm_244/while/lstm_cell_64/add:z:0:lstm_244/while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_244/while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_244/while/lstm_cell_64/splitSplit4lstm_244/while/lstm_cell_64/split/split_dim:output:0,lstm_244/while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_244/while/lstm_cell_64/SigmoidSigmoid*lstm_244/while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_244/while/lstm_cell_64/Sigmoid_1Sigmoid*lstm_244/while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_244/while/lstm_cell_64/mulMul)lstm_244/while/lstm_cell_64/Sigmoid_1:y:0lstm_244_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_244/while/lstm_cell_64/ReluRelu*lstm_244/while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_244/while/lstm_cell_64/mul_1Mul'lstm_244/while/lstm_cell_64/Sigmoid:y:0.lstm_244/while/lstm_cell_64/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_244/while/lstm_cell_64/add_1AddV2#lstm_244/while/lstm_cell_64/mul:z:0%lstm_244/while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_244/while/lstm_cell_64/Sigmoid_2Sigmoid*lstm_244/while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_244/while/lstm_cell_64/Relu_1Relu%lstm_244/while/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_244/while/lstm_cell_64/mul_2Mul)lstm_244/while/lstm_cell_64/Sigmoid_2:y:00lstm_244/while/lstm_cell_64/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_244/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_244_while_placeholder_1lstm_244_while_placeholder%lstm_244/while/lstm_cell_64/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_244/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_244/while/addAddV2lstm_244_while_placeholderlstm_244/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_244/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_244/while/add_1AddV2*lstm_244_while_lstm_244_while_loop_counterlstm_244/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_244/while/IdentityIdentitylstm_244/while/add_1:z:0^lstm_244/while/NoOp*
T0*
_output_shapes
: 
lstm_244/while/Identity_1Identity0lstm_244_while_lstm_244_while_maximum_iterations^lstm_244/while/NoOp*
T0*
_output_shapes
: t
lstm_244/while/Identity_2Identitylstm_244/while/add:z:0^lstm_244/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_244/while/Identity_3IdentityClstm_244/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_244/while/NoOp*
T0*
_output_shapes
: 
lstm_244/while/Identity_4Identity%lstm_244/while/lstm_cell_64/mul_2:z:0^lstm_244/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_244/while/Identity_5Identity%lstm_244/while/lstm_cell_64/add_1:z:0^lstm_244/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_244/while/NoOpNoOp3^lstm_244/while/lstm_cell_64/BiasAdd/ReadVariableOp2^lstm_244/while/lstm_cell_64/MatMul/ReadVariableOp4^lstm_244/while/lstm_cell_64/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_244_while_identity lstm_244/while/Identity:output:0"?
lstm_244_while_identity_1"lstm_244/while/Identity_1:output:0"?
lstm_244_while_identity_2"lstm_244/while/Identity_2:output:0"?
lstm_244_while_identity_3"lstm_244/while/Identity_3:output:0"?
lstm_244_while_identity_4"lstm_244/while/Identity_4:output:0"?
lstm_244_while_identity_5"lstm_244/while/Identity_5:output:0"T
'lstm_244_while_lstm_244_strided_slice_1)lstm_244_while_lstm_244_strided_slice_1_0"|
;lstm_244_while_lstm_cell_64_biasadd_readvariableop_resource=lstm_244_while_lstm_cell_64_biasadd_readvariableop_resource_0"~
<lstm_244_while_lstm_cell_64_matmul_1_readvariableop_resource>lstm_244_while_lstm_cell_64_matmul_1_readvariableop_resource_0"z
:lstm_244_while_lstm_cell_64_matmul_readvariableop_resource<lstm_244_while_lstm_cell_64_matmul_readvariableop_resource_0"Ì
clstm_244_while_tensorarrayv2read_tensorlistgetitem_lstm_244_tensorarrayunstack_tensorlistfromtensorelstm_244_while_tensorarrayv2read_tensorlistgetitem_lstm_244_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_244/while/lstm_cell_64/BiasAdd/ReadVariableOp2lstm_244/while/lstm_cell_64/BiasAdd/ReadVariableOp2f
1lstm_244/while/lstm_cell_64/MatMul/ReadVariableOp1lstm_244/while/lstm_cell_64/MatMul/ReadVariableOp2j
3lstm_244/while/lstm_cell_64/MatMul_1/ReadVariableOp3lstm_244/while/lstm_cell_64/MatMul_1/ReadVariableOp: 
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
H__inference_lstm_cell_63_layer_call_and_return_conditional_losses_392893

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
while_cond_392906
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_392906___redundant_placeholder04
0while_while_cond_392906___redundant_placeholder14
0while_while_cond_392906___redundant_placeholder24
0while_while_cond_392906___redundant_placeholder3
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
¤J

D__inference_lstm_244_layer_call_and_return_conditional_losses_397083

inputs>
+lstm_cell_64_matmul_readvariableop_resource:	dÈ@
-lstm_cell_64_matmul_1_readvariableop_resource:	2È;
,lstm_cell_64_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_64/BiasAdd/ReadVariableOp˘"lstm_cell_64/MatMul/ReadVariableOp˘$lstm_cell_64/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_64/MatMul/ReadVariableOpReadVariableOp+lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_64/MatMulMatMulstrided_slice_2:output:0*lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_64/MatMul_1MatMulzeros:output:0,lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_64/addAddV2lstm_cell_64/MatMul:product:0lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_64/BiasAddBiasAddlstm_cell_64/add:z:0+lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_64/splitSplit%lstm_cell_64/split/split_dim:output:0lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_64/SigmoidSigmoidlstm_cell_64/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_64/Sigmoid_1Sigmoidlstm_cell_64/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_64/mulMullstm_cell_64/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_64/ReluRelulstm_cell_64/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_64/mul_1Mullstm_cell_64/Sigmoid:y:0lstm_cell_64/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_64/add_1AddV2lstm_cell_64/mul:z:0lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_64/Sigmoid_2Sigmoidlstm_cell_64/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_64/Relu_1Relulstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_64/mul_2Mullstm_cell_64/Sigmoid_2:y:0!lstm_cell_64/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_64_matmul_readvariableop_resource-lstm_cell_64_matmul_1_readvariableop_resource,lstm_cell_64_biasadd_readvariableop_resource*
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
while_body_396999*
condR
while_cond_396998*K
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
NoOpNoOp$^lstm_cell_64/BiasAdd/ReadVariableOp#^lstm_cell_64/MatMul/ReadVariableOp%^lstm_cell_64/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_64/BiasAdd/ReadVariableOp#lstm_cell_64/BiasAdd/ReadVariableOp2H
"lstm_cell_64/MatMul/ReadVariableOp"lstm_cell_64/MatMul/ReadVariableOp2L
$lstm_cell_64/MatMul_1/ReadVariableOp$lstm_cell_64/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
ö
³
)__inference_lstm_245_layer_call_fn_397259

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
D__inference_lstm_245_layer_call_and_return_conditional_losses_394325o
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
ĉ"
?
while_body_393448
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_64_393472_0:	dÈ.
while_lstm_cell_64_393474_0:	2È*
while_lstm_cell_64_393476_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_64_393472:	dÈ,
while_lstm_cell_64_393474:	2È(
while_lstm_cell_64_393476:	È˘*while/lstm_cell_64/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_64/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_64_393472_0while_lstm_cell_64_393474_0while_lstm_cell_64_393476_0*
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
H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_393389Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_64/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_64/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_64/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_64/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_64_393472while_lstm_cell_64_393472_0"8
while_lstm_cell_64_393474while_lstm_cell_64_393474_0"8
while_lstm_cell_64_393476while_lstm_cell_64_393476_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_64/StatefulPartitionedCall*while/lstm_cell_64/StatefulPartitionedCall: 
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
ĉ"
?
while_body_393098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_63_393122_0:	.
while_lstm_cell_63_393124_0:	d*
while_lstm_cell_63_393126_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_63_393122:	,
while_lstm_cell_63_393124:	d(
while_lstm_cell_63_393126:	˘*while/lstm_cell_63/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_63/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_63_393122_0while_lstm_cell_63_393124_0while_lstm_cell_63_393126_0*
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
H__inference_lstm_cell_63_layer_call_and_return_conditional_losses_393039Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_63/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_63/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_63/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_63/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_63_393122while_lstm_cell_63_393122_0"8
while_lstm_cell_63_393124while_lstm_cell_63_393124_0"8
while_lstm_cell_63_393126while_lstm_cell_63_393126_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_63/StatefulPartitionedCall*while/lstm_cell_63/StatefulPartitionedCall: 
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

ĥ
)__inference_lstm_243_layer_call_fn_396038

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
D__inference_lstm_243_layer_call_and_return_conditional_losses_394871s
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
ÔJ

D__inference_lstm_245_layer_call_and_return_conditional_losses_397556
inputs_0=
+lstm_cell_65_matmul_readvariableop_resource:2(?
-lstm_cell_65_matmul_1_readvariableop_resource:
(:
,lstm_cell_65_biasadd_readvariableop_resource:(
identity˘#lstm_cell_65/BiasAdd/ReadVariableOp˘"lstm_cell_65/MatMul/ReadVariableOp˘$lstm_cell_65/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_65/MatMul/ReadVariableOpReadVariableOp+lstm_cell_65_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_65/MatMulMatMulstrided_slice_2:output:0*lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_65_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_65/MatMul_1MatMulzeros:output:0,lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_65/addAddV2lstm_cell_65/MatMul:product:0lstm_cell_65/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_65_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_65/BiasAddBiasAddlstm_cell_65/add:z:0+lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_65/splitSplit%lstm_cell_65/split/split_dim:output:0lstm_cell_65/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_65/SigmoidSigmoidlstm_cell_65/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_65/Sigmoid_1Sigmoidlstm_cell_65/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_65/mulMullstm_cell_65/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_65/ReluRelulstm_cell_65/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_65/mul_1Mullstm_cell_65/Sigmoid:y:0lstm_cell_65/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_65/add_1AddV2lstm_cell_65/mul:z:0lstm_cell_65/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_65/Sigmoid_2Sigmoidlstm_cell_65/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_65/Relu_1Relulstm_cell_65/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_65/mul_2Mullstm_cell_65/Sigmoid_2:y:0!lstm_cell_65/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_65_matmul_readvariableop_resource-lstm_cell_65_matmul_1_readvariableop_resource,lstm_cell_65_biasadd_readvariableop_resource*
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
while_body_397472*
condR
while_cond_397471*K
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
NoOpNoOp$^lstm_cell_65/BiasAdd/ReadVariableOp#^lstm_cell_65/MatMul/ReadVariableOp%^lstm_cell_65/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_65/BiasAdd/ReadVariableOp#lstm_cell_65/BiasAdd/ReadVariableOp2H
"lstm_cell_65/MatMul/ReadVariableOp"lstm_cell_65/MatMul/ReadVariableOp2L
$lstm_cell_65/MatMul_1/ReadVariableOp$lstm_cell_65/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
¤J

D__inference_lstm_243_layer_call_and_return_conditional_losses_394871

inputs>
+lstm_cell_63_matmul_readvariableop_resource:	@
-lstm_cell_63_matmul_1_readvariableop_resource:	d;
,lstm_cell_63_biasadd_readvariableop_resource:	
identity˘#lstm_cell_63/BiasAdd/ReadVariableOp˘"lstm_cell_63/MatMul/ReadVariableOp˘$lstm_cell_63/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_63/MatMul/ReadVariableOpReadVariableOp+lstm_cell_63_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_63/MatMulMatMulstrided_slice_2:output:0*lstm_cell_63/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_63/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_63_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_63/MatMul_1MatMulzeros:output:0,lstm_cell_63/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_63/addAddV2lstm_cell_63/MatMul:product:0lstm_cell_63/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_63/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_63_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_63/BiasAddBiasAddlstm_cell_63/add:z:0+lstm_cell_63/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_63/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_63/splitSplit%lstm_cell_63/split/split_dim:output:0lstm_cell_63/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_63/SigmoidSigmoidlstm_cell_63/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_63/Sigmoid_1Sigmoidlstm_cell_63/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_63/mulMullstm_cell_63/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_63/ReluRelulstm_cell_63/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_63/mul_1Mullstm_cell_63/Sigmoid:y:0lstm_cell_63/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_63/add_1AddV2lstm_cell_63/mul:z:0lstm_cell_63/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_63/Sigmoid_2Sigmoidlstm_cell_63/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_63/Relu_1Relulstm_cell_63/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_63/mul_2Mullstm_cell_63/Sigmoid_2:y:0!lstm_cell_63/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_63_matmul_readvariableop_resource-lstm_cell_63_matmul_1_readvariableop_resource,lstm_cell_63_biasadd_readvariableop_resource*
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
while_body_394787*
condR
while_cond_394786*K
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
NoOpNoOp$^lstm_cell_63/BiasAdd/ReadVariableOp#^lstm_cell_63/MatMul/ReadVariableOp%^lstm_cell_63/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_63/BiasAdd/ReadVariableOp#lstm_cell_63/BiasAdd/ReadVariableOp2H
"lstm_cell_63/MatMul/ReadVariableOp"lstm_cell_63/MatMul/ReadVariableOp2L
$lstm_cell_63/MatMul_1/ReadVariableOp$lstm_cell_63/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
²

÷
lstm_245_while_cond_395476.
*lstm_245_while_lstm_245_while_loop_counter4
0lstm_245_while_lstm_245_while_maximum_iterations
lstm_245_while_placeholder 
lstm_245_while_placeholder_1 
lstm_245_while_placeholder_2 
lstm_245_while_placeholder_30
,lstm_245_while_less_lstm_245_strided_slice_1F
Blstm_245_while_lstm_245_while_cond_395476___redundant_placeholder0F
Blstm_245_while_lstm_245_while_cond_395476___redundant_placeholder1F
Blstm_245_while_lstm_245_while_cond_395476___redundant_placeholder2F
Blstm_245_while_lstm_245_while_cond_395476___redundant_placeholder3
lstm_245_while_identity

lstm_245/while/LessLesslstm_245_while_placeholder,lstm_245_while_less_lstm_245_strided_slice_1*
T0*
_output_shapes
: ]
lstm_245/while/IdentityIdentitylstm_245/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_245_while_identity lstm_245/while/Identity:output:0*(
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
)__inference_lstm_244_layer_call_fn_396621
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
D__inference_lstm_244_layer_call_and_return_conditional_losses_393326|
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
ç¤

"__inference__traced_restore_398428
file_prefix2
 assignvariableop_dense_81_kernel:
.
 assignvariableop_1_dense_81_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_243_lstm_cell_243_kernel:	M
:assignvariableop_8_lstm_243_lstm_cell_243_recurrent_kernel:	d=
.assignvariableop_9_lstm_243_lstm_cell_243_bias:	D
1assignvariableop_10_lstm_244_lstm_cell_244_kernel:	dÈN
;assignvariableop_11_lstm_244_lstm_cell_244_recurrent_kernel:	2È>
/assignvariableop_12_lstm_244_lstm_cell_244_bias:	ÈC
1assignvariableop_13_lstm_245_lstm_cell_245_kernel:2(M
;assignvariableop_14_lstm_245_lstm_cell_245_recurrent_kernel:
(=
/assignvariableop_15_lstm_245_lstm_cell_245_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_81_kernel_m:
6
(assignvariableop_19_adam_dense_81_bias_m:K
8assignvariableop_20_adam_lstm_243_lstm_cell_243_kernel_m:	U
Bassignvariableop_21_adam_lstm_243_lstm_cell_243_recurrent_kernel_m:	dE
6assignvariableop_22_adam_lstm_243_lstm_cell_243_bias_m:	K
8assignvariableop_23_adam_lstm_244_lstm_cell_244_kernel_m:	dÈU
Bassignvariableop_24_adam_lstm_244_lstm_cell_244_recurrent_kernel_m:	2ÈE
6assignvariableop_25_adam_lstm_244_lstm_cell_244_bias_m:	ÈJ
8assignvariableop_26_adam_lstm_245_lstm_cell_245_kernel_m:2(T
Bassignvariableop_27_adam_lstm_245_lstm_cell_245_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_245_lstm_cell_245_bias_m:(<
*assignvariableop_29_adam_dense_81_kernel_v:
6
(assignvariableop_30_adam_dense_81_bias_v:K
8assignvariableop_31_adam_lstm_243_lstm_cell_243_kernel_v:	U
Bassignvariableop_32_adam_lstm_243_lstm_cell_243_recurrent_kernel_v:	dE
6assignvariableop_33_adam_lstm_243_lstm_cell_243_bias_v:	K
8assignvariableop_34_adam_lstm_244_lstm_cell_244_kernel_v:	dÈU
Bassignvariableop_35_adam_lstm_244_lstm_cell_244_recurrent_kernel_v:	2ÈE
6assignvariableop_36_adam_lstm_244_lstm_cell_244_bias_v:	ÈJ
8assignvariableop_37_adam_lstm_245_lstm_cell_245_kernel_v:2(T
Bassignvariableop_38_adam_lstm_245_lstm_cell_245_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_245_lstm_cell_245_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_81_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_81_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_243_lstm_cell_243_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_243_lstm_cell_243_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_243_lstm_cell_243_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_244_lstm_cell_244_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_244_lstm_cell_244_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_244_lstm_cell_244_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_245_lstm_cell_245_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ĵ
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_245_lstm_cell_245_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_245_lstm_cell_245_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_81_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_81_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_243_lstm_cell_243_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_243_lstm_cell_243_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_243_lstm_cell_243_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_244_lstm_cell_244_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_244_lstm_cell_244_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_244_lstm_cell_244_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_245_lstm_cell_245_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_245_lstm_cell_245_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_245_lstm_cell_245_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_81_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_81_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_243_lstm_cell_243_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_243_lstm_cell_243_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_243_lstm_cell_243_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_244_lstm_cell_244_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_244_lstm_cell_244_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_244_lstm_cell_244_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:İ
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_245_lstm_cell_245_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_245_lstm_cell_245_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_245_lstm_cell_245_bias_vIdentity_39:output:0"/device:CPU:0*
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
Ú


.__inference_sequential_81_layer_call_fn_395140

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
I__inference_sequential_81_layer_call_and_return_conditional_losses_394939o
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
while_cond_396525
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_396525___redundant_placeholder04
0while_while_cond_396525___redundant_placeholder14
0while_while_cond_396525___redundant_placeholder24
0while_while_cond_396525___redundant_placeholder3
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
Â

)__inference_dense_81_layer_call_fn_397851

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
D__inference_dense_81_layer_call_and_return_conditional_losses_394343o
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
-__inference_lstm_cell_63_layer_call_fn_397895

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
H__inference_lstm_cell_63_layer_call_and_return_conditional_losses_393039o
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
¤J

D__inference_lstm_244_layer_call_and_return_conditional_losses_397226

inputs>
+lstm_cell_64_matmul_readvariableop_resource:	dÈ@
-lstm_cell_64_matmul_1_readvariableop_resource:	2È;
,lstm_cell_64_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_64/BiasAdd/ReadVariableOp˘"lstm_cell_64/MatMul/ReadVariableOp˘$lstm_cell_64/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_64/MatMul/ReadVariableOpReadVariableOp+lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_64/MatMulMatMulstrided_slice_2:output:0*lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_64/MatMul_1MatMulzeros:output:0,lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_64/addAddV2lstm_cell_64/MatMul:product:0lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_64/BiasAddBiasAddlstm_cell_64/add:z:0+lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_64/splitSplit%lstm_cell_64/split/split_dim:output:0lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_64/SigmoidSigmoidlstm_cell_64/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_64/Sigmoid_1Sigmoidlstm_cell_64/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_64/mulMullstm_cell_64/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_64/ReluRelulstm_cell_64/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_64/mul_1Mullstm_cell_64/Sigmoid:y:0lstm_cell_64/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_64/add_1AddV2lstm_cell_64/mul:z:0lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_64/Sigmoid_2Sigmoidlstm_cell_64/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_64/Relu_1Relulstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_64/mul_2Mullstm_cell_64/Sigmoid_2:y:0!lstm_cell_64/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_64_matmul_readvariableop_resource-lstm_cell_64_matmul_1_readvariableop_resource,lstm_cell_64_biasadd_readvariableop_resource*
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
while_body_397142*
condR
while_cond_397141*K
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
NoOpNoOp$^lstm_cell_64/BiasAdd/ReadVariableOp#^lstm_cell_64/MatMul/ReadVariableOp%^lstm_cell_64/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_64/BiasAdd/ReadVariableOp#lstm_cell_64/BiasAdd/ReadVariableOp2H
"lstm_cell_64/MatMul/ReadVariableOp"lstm_cell_64/MatMul/ReadVariableOp2L
$lstm_cell_64/MatMul_1/ReadVariableOp$lstm_cell_64/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
Ŭ

H__inference_lstm_cell_63_layer_call_and_return_conditional_losses_397927

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
8
?
while_body_394787
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_63_matmul_readvariableop_resource_0:	H
5while_lstm_cell_63_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_63_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_63_matmul_readvariableop_resource:	F
3while_lstm_cell_63_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_63_biasadd_readvariableop_resource:	˘)while/lstm_cell_63/BiasAdd/ReadVariableOp˘(while/lstm_cell_63/MatMul/ReadVariableOp˘*while/lstm_cell_63/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_63/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_63_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_63/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_63/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_63/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_63_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_63/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_63/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_63/addAddV2#while/lstm_cell_63/MatMul:product:0%while/lstm_cell_63/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_63/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_63_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_63/BiasAddBiasAddwhile/lstm_cell_63/add:z:01while/lstm_cell_63/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_63/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_63/splitSplit+while/lstm_cell_63/split/split_dim:output:0#while/lstm_cell_63/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_63/SigmoidSigmoid!while/lstm_cell_63/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_63/Sigmoid_1Sigmoid!while/lstm_cell_63/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_63/mulMul while/lstm_cell_63/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_63/ReluRelu!while/lstm_cell_63/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_63/mul_1Mulwhile/lstm_cell_63/Sigmoid:y:0%while/lstm_cell_63/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_63/add_1AddV2while/lstm_cell_63/mul:z:0while/lstm_cell_63/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_63/Sigmoid_2Sigmoid!while/lstm_cell_63/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_63/Relu_1Reluwhile/lstm_cell_63/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_63/mul_2Mul while/lstm_cell_63/Sigmoid_2:y:0'while/lstm_cell_63/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_63/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_63/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_63/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_63/BiasAdd/ReadVariableOp)^while/lstm_cell_63/MatMul/ReadVariableOp+^while/lstm_cell_63/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_63_biasadd_readvariableop_resource4while_lstm_cell_63_biasadd_readvariableop_resource_0"l
3while_lstm_cell_63_matmul_1_readvariableop_resource5while_lstm_cell_63_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_63_matmul_readvariableop_resource3while_lstm_cell_63_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_63/BiasAdd/ReadVariableOp)while/lstm_cell_63/BiasAdd/ReadVariableOp2T
(while/lstm_cell_63/MatMul/ReadVariableOp(while/lstm_cell_63/MatMul/ReadVariableOp2X
*while/lstm_cell_63/MatMul_1/ReadVariableOp*while/lstm_cell_63/MatMul_1/ReadVariableOp: 
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

ĥ
)__inference_lstm_244_layer_call_fn_396654

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
D__inference_lstm_244_layer_call_and_return_conditional_losses_394706s
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
ÎB
ê

lstm_245_while_body_395904.
*lstm_245_while_lstm_245_while_loop_counter4
0lstm_245_while_lstm_245_while_maximum_iterations
lstm_245_while_placeholder 
lstm_245_while_placeholder_1 
lstm_245_while_placeholder_2 
lstm_245_while_placeholder_3-
)lstm_245_while_lstm_245_strided_slice_1_0i
elstm_245_while_tensorarrayv2read_tensorlistgetitem_lstm_245_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_245_while_lstm_cell_65_matmul_readvariableop_resource_0:2(P
>lstm_245_while_lstm_cell_65_matmul_1_readvariableop_resource_0:
(K
=lstm_245_while_lstm_cell_65_biasadd_readvariableop_resource_0:(
lstm_245_while_identity
lstm_245_while_identity_1
lstm_245_while_identity_2
lstm_245_while_identity_3
lstm_245_while_identity_4
lstm_245_while_identity_5+
'lstm_245_while_lstm_245_strided_slice_1g
clstm_245_while_tensorarrayv2read_tensorlistgetitem_lstm_245_tensorarrayunstack_tensorlistfromtensorL
:lstm_245_while_lstm_cell_65_matmul_readvariableop_resource:2(N
<lstm_245_while_lstm_cell_65_matmul_1_readvariableop_resource:
(I
;lstm_245_while_lstm_cell_65_biasadd_readvariableop_resource:(˘2lstm_245/while/lstm_cell_65/BiasAdd/ReadVariableOp˘1lstm_245/while/lstm_cell_65/MatMul/ReadVariableOp˘3lstm_245/while/lstm_cell_65/MatMul_1/ReadVariableOp
@lstm_245/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_245/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_245_while_tensorarrayv2read_tensorlistgetitem_lstm_245_tensorarrayunstack_tensorlistfromtensor_0lstm_245_while_placeholderIlstm_245/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_245/while/lstm_cell_65/MatMul/ReadVariableOpReadVariableOp<lstm_245_while_lstm_cell_65_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_245/while/lstm_cell_65/MatMulMatMul9lstm_245/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_245/while/lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_245/while/lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp>lstm_245_while_lstm_cell_65_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_245/while/lstm_cell_65/MatMul_1MatMullstm_245_while_placeholder_2;lstm_245/while/lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_245/while/lstm_cell_65/addAddV2,lstm_245/while/lstm_cell_65/MatMul:product:0.lstm_245/while/lstm_cell_65/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_245/while/lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp=lstm_245_while_lstm_cell_65_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_245/while/lstm_cell_65/BiasAddBiasAdd#lstm_245/while/lstm_cell_65/add:z:0:lstm_245/while/lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_245/while/lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_245/while/lstm_cell_65/splitSplit4lstm_245/while/lstm_cell_65/split/split_dim:output:0,lstm_245/while/lstm_cell_65/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_245/while/lstm_cell_65/SigmoidSigmoid*lstm_245/while/lstm_cell_65/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_245/while/lstm_cell_65/Sigmoid_1Sigmoid*lstm_245/while/lstm_cell_65/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_245/while/lstm_cell_65/mulMul)lstm_245/while/lstm_cell_65/Sigmoid_1:y:0lstm_245_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_245/while/lstm_cell_65/ReluRelu*lstm_245/while/lstm_cell_65/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_245/while/lstm_cell_65/mul_1Mul'lstm_245/while/lstm_cell_65/Sigmoid:y:0.lstm_245/while/lstm_cell_65/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_245/while/lstm_cell_65/add_1AddV2#lstm_245/while/lstm_cell_65/mul:z:0%lstm_245/while/lstm_cell_65/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_245/while/lstm_cell_65/Sigmoid_2Sigmoid*lstm_245/while/lstm_cell_65/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_245/while/lstm_cell_65/Relu_1Relu%lstm_245/while/lstm_cell_65/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_245/while/lstm_cell_65/mul_2Mul)lstm_245/while/lstm_cell_65/Sigmoid_2:y:00lstm_245/while/lstm_cell_65/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_245/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_245_while_placeholder_1lstm_245_while_placeholder%lstm_245/while/lstm_cell_65/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_245/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_245/while/addAddV2lstm_245_while_placeholderlstm_245/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_245/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_245/while/add_1AddV2*lstm_245_while_lstm_245_while_loop_counterlstm_245/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_245/while/IdentityIdentitylstm_245/while/add_1:z:0^lstm_245/while/NoOp*
T0*
_output_shapes
: 
lstm_245/while/Identity_1Identity0lstm_245_while_lstm_245_while_maximum_iterations^lstm_245/while/NoOp*
T0*
_output_shapes
: t
lstm_245/while/Identity_2Identitylstm_245/while/add:z:0^lstm_245/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_245/while/Identity_3IdentityClstm_245/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_245/while/NoOp*
T0*
_output_shapes
: 
lstm_245/while/Identity_4Identity%lstm_245/while/lstm_cell_65/mul_2:z:0^lstm_245/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_245/while/Identity_5Identity%lstm_245/while/lstm_cell_65/add_1:z:0^lstm_245/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_245/while/NoOpNoOp3^lstm_245/while/lstm_cell_65/BiasAdd/ReadVariableOp2^lstm_245/while/lstm_cell_65/MatMul/ReadVariableOp4^lstm_245/while/lstm_cell_65/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_245_while_identity lstm_245/while/Identity:output:0"?
lstm_245_while_identity_1"lstm_245/while/Identity_1:output:0"?
lstm_245_while_identity_2"lstm_245/while/Identity_2:output:0"?
lstm_245_while_identity_3"lstm_245/while/Identity_3:output:0"?
lstm_245_while_identity_4"lstm_245/while/Identity_4:output:0"?
lstm_245_while_identity_5"lstm_245/while/Identity_5:output:0"T
'lstm_245_while_lstm_245_strided_slice_1)lstm_245_while_lstm_245_strided_slice_1_0"|
;lstm_245_while_lstm_cell_65_biasadd_readvariableop_resource=lstm_245_while_lstm_cell_65_biasadd_readvariableop_resource_0"~
<lstm_245_while_lstm_cell_65_matmul_1_readvariableop_resource>lstm_245_while_lstm_cell_65_matmul_1_readvariableop_resource_0"z
:lstm_245_while_lstm_cell_65_matmul_readvariableop_resource<lstm_245_while_lstm_cell_65_matmul_readvariableop_resource_0"Ì
clstm_245_while_tensorarrayv2read_tensorlistgetitem_lstm_245_tensorarrayunstack_tensorlistfromtensorelstm_245_while_tensorarrayv2read_tensorlistgetitem_lstm_245_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_245/while/lstm_cell_65/BiasAdd/ReadVariableOp2lstm_245/while/lstm_cell_65/BiasAdd/ReadVariableOp2f
1lstm_245/while/lstm_cell_65/MatMul/ReadVariableOp1lstm_245/while/lstm_cell_65/MatMul/ReadVariableOp2j
3lstm_245/while/lstm_cell_65/MatMul_1/ReadVariableOp3lstm_245/while/lstm_cell_65/MatMul_1/ReadVariableOp: 
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
while_cond_393797
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_393797___redundant_placeholder04
0while_while_cond_393797___redundant_placeholder14
0while_while_cond_393797___redundant_placeholder24
0while_while_cond_393797___redundant_placeholder3
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
ò

˘
.__inference_sequential_81_layer_call_fn_394991
lstm_243_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_243_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
I__inference_sequential_81_layer_call_and_return_conditional_losses_394939o
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
_user_specified_namelstm_243_input
²

÷
lstm_245_while_cond_395903.
*lstm_245_while_lstm_245_while_loop_counter4
0lstm_245_while_lstm_245_while_maximum_iterations
lstm_245_while_placeholder 
lstm_245_while_placeholder_1 
lstm_245_while_placeholder_2 
lstm_245_while_placeholder_30
,lstm_245_while_less_lstm_245_strided_slice_1F
Blstm_245_while_lstm_245_while_cond_395903___redundant_placeholder0F
Blstm_245_while_lstm_245_while_cond_395903___redundant_placeholder1F
Blstm_245_while_lstm_245_while_cond_395903___redundant_placeholder2F
Blstm_245_while_lstm_245_while_cond_395903___redundant_placeholder3
lstm_245_while_identity

lstm_245/while/LessLesslstm_245_while_placeholder,lstm_245_while_less_lstm_245_strided_slice_1*
T0*
_output_shapes
: ]
lstm_245/while/IdentityIdentitylstm_245/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_245_while_identity lstm_245/while/Identity:output:0*(
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
áW

__inference__traced_save_398298
file_prefix.
*savev2_dense_81_kernel_read_readvariableop,
(savev2_dense_81_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_243_lstm_cell_243_kernel_read_readvariableopF
Bsavev2_lstm_243_lstm_cell_243_recurrent_kernel_read_readvariableop:
6savev2_lstm_243_lstm_cell_243_bias_read_readvariableop<
8savev2_lstm_244_lstm_cell_244_kernel_read_readvariableopF
Bsavev2_lstm_244_lstm_cell_244_recurrent_kernel_read_readvariableop:
6savev2_lstm_244_lstm_cell_244_bias_read_readvariableop<
8savev2_lstm_245_lstm_cell_245_kernel_read_readvariableopF
Bsavev2_lstm_245_lstm_cell_245_recurrent_kernel_read_readvariableop:
6savev2_lstm_245_lstm_cell_245_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_81_kernel_m_read_readvariableop3
/savev2_adam_dense_81_bias_m_read_readvariableopC
?savev2_adam_lstm_243_lstm_cell_243_kernel_m_read_readvariableopM
Isavev2_adam_lstm_243_lstm_cell_243_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_243_lstm_cell_243_bias_m_read_readvariableopC
?savev2_adam_lstm_244_lstm_cell_244_kernel_m_read_readvariableopM
Isavev2_adam_lstm_244_lstm_cell_244_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_244_lstm_cell_244_bias_m_read_readvariableopC
?savev2_adam_lstm_245_lstm_cell_245_kernel_m_read_readvariableopM
Isavev2_adam_lstm_245_lstm_cell_245_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_245_lstm_cell_245_bias_m_read_readvariableop5
1savev2_adam_dense_81_kernel_v_read_readvariableop3
/savev2_adam_dense_81_bias_v_read_readvariableopC
?savev2_adam_lstm_243_lstm_cell_243_kernel_v_read_readvariableopM
Isavev2_adam_lstm_243_lstm_cell_243_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_243_lstm_cell_243_bias_v_read_readvariableopC
?savev2_adam_lstm_244_lstm_cell_244_kernel_v_read_readvariableopM
Isavev2_adam_lstm_244_lstm_cell_244_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_244_lstm_cell_244_bias_v_read_readvariableopC
?savev2_adam_lstm_245_lstm_cell_245_kernel_v_read_readvariableopM
Isavev2_adam_lstm_245_lstm_cell_245_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_245_lstm_cell_245_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_81_kernel_read_readvariableop(savev2_dense_81_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_243_lstm_cell_243_kernel_read_readvariableopBsavev2_lstm_243_lstm_cell_243_recurrent_kernel_read_readvariableop6savev2_lstm_243_lstm_cell_243_bias_read_readvariableop8savev2_lstm_244_lstm_cell_244_kernel_read_readvariableopBsavev2_lstm_244_lstm_cell_244_recurrent_kernel_read_readvariableop6savev2_lstm_244_lstm_cell_244_bias_read_readvariableop8savev2_lstm_245_lstm_cell_245_kernel_read_readvariableopBsavev2_lstm_245_lstm_cell_245_recurrent_kernel_read_readvariableop6savev2_lstm_245_lstm_cell_245_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_81_kernel_m_read_readvariableop/savev2_adam_dense_81_bias_m_read_readvariableop?savev2_adam_lstm_243_lstm_cell_243_kernel_m_read_readvariableopIsavev2_adam_lstm_243_lstm_cell_243_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_243_lstm_cell_243_bias_m_read_readvariableop?savev2_adam_lstm_244_lstm_cell_244_kernel_m_read_readvariableopIsavev2_adam_lstm_244_lstm_cell_244_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_244_lstm_cell_244_bias_m_read_readvariableop?savev2_adam_lstm_245_lstm_cell_245_kernel_m_read_readvariableopIsavev2_adam_lstm_245_lstm_cell_245_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_245_lstm_cell_245_bias_m_read_readvariableop1savev2_adam_dense_81_kernel_v_read_readvariableop/savev2_adam_dense_81_bias_v_read_readvariableop?savev2_adam_lstm_243_lstm_cell_243_kernel_v_read_readvariableopIsavev2_adam_lstm_243_lstm_cell_243_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_243_lstm_cell_243_bias_v_read_readvariableop?savev2_adam_lstm_244_lstm_cell_244_kernel_v_read_readvariableopIsavev2_adam_lstm_244_lstm_cell_244_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_244_lstm_cell_244_bias_v_read_readvariableop?savev2_adam_lstm_245_lstm_cell_245_kernel_v_read_readvariableopIsavev2_adam_lstm_245_lstm_cell_245_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_245_lstm_cell_245_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
¤J

D__inference_lstm_244_layer_call_and_return_conditional_losses_394706

inputs>
+lstm_cell_64_matmul_readvariableop_resource:	dÈ@
-lstm_cell_64_matmul_1_readvariableop_resource:	2È;
,lstm_cell_64_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_64/BiasAdd/ReadVariableOp˘"lstm_cell_64/MatMul/ReadVariableOp˘$lstm_cell_64/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_64/MatMul/ReadVariableOpReadVariableOp+lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_64/MatMulMatMulstrided_slice_2:output:0*lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_64/MatMul_1MatMulzeros:output:0,lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_64/addAddV2lstm_cell_64/MatMul:product:0lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_64/BiasAddBiasAddlstm_cell_64/add:z:0+lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_64/splitSplit%lstm_cell_64/split/split_dim:output:0lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_64/SigmoidSigmoidlstm_cell_64/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_64/Sigmoid_1Sigmoidlstm_cell_64/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_64/mulMullstm_cell_64/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_64/ReluRelulstm_cell_64/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_64/mul_1Mullstm_cell_64/Sigmoid:y:0lstm_cell_64/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_64/add_1AddV2lstm_cell_64/mul:z:0lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_64/Sigmoid_2Sigmoidlstm_cell_64/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_64/Relu_1Relulstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_64/mul_2Mullstm_cell_64/Sigmoid_2:y:0!lstm_cell_64/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_64_matmul_readvariableop_resource-lstm_cell_64_matmul_1_readvariableop_resource,lstm_cell_64_biasadd_readvariableop_resource*
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
while_body_394622*
condR
while_cond_394621*K
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
NoOpNoOp$^lstm_cell_64/BiasAdd/ReadVariableOp#^lstm_cell_64/MatMul/ReadVariableOp%^lstm_cell_64/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_64/BiasAdd/ReadVariableOp#lstm_cell_64/BiasAdd/ReadVariableOp2H
"lstm_cell_64/MatMul/ReadVariableOp"lstm_cell_64/MatMul/ReadVariableOp2L
$lstm_cell_64/MatMul_1/ReadVariableOp$lstm_cell_64/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
?
ó
I__inference_sequential_81_layer_call_and_return_conditional_losses_395021
lstm_243_input"
lstm_243_394994:	"
lstm_243_394996:	d
lstm_243_394998:	"
lstm_244_395001:	dÈ"
lstm_244_395003:	2È
lstm_244_395005:	È!
lstm_245_395008:2(!
lstm_245_395010:
(
lstm_245_395012:(!
dense_81_395015:

dense_81_395017:
identity˘ dense_81/StatefulPartitionedCall˘ lstm_243/StatefulPartitionedCall˘ lstm_244/StatefulPartitionedCall˘ lstm_245/StatefulPartitionedCall
 lstm_243/StatefulPartitionedCallStatefulPartitionedCalllstm_243_inputlstm_243_394994lstm_243_394996lstm_243_394998*
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
D__inference_lstm_243_layer_call_and_return_conditional_losses_394025Ş
 lstm_244/StatefulPartitionedCallStatefulPartitionedCall)lstm_243/StatefulPartitionedCall:output:0lstm_244_395001lstm_244_395003lstm_244_395005*
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
D__inference_lstm_244_layer_call_and_return_conditional_losses_394175Ĥ
 lstm_245/StatefulPartitionedCallStatefulPartitionedCall)lstm_244/StatefulPartitionedCall:output:0lstm_245_395008lstm_245_395010lstm_245_395012*
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
D__inference_lstm_245_layer_call_and_return_conditional_losses_394325
 dense_81/StatefulPartitionedCallStatefulPartitionedCall)lstm_245/StatefulPartitionedCall:output:0dense_81_395015dense_81_395017*
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
D__inference_dense_81_layer_call_and_return_conditional_losses_394343x
IdentityIdentity)dense_81/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_81/StatefulPartitionedCall!^lstm_243/StatefulPartitionedCall!^lstm_244/StatefulPartitionedCall!^lstm_245/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_81/StatefulPartitionedCall dense_81/StatefulPartitionedCall2D
 lstm_243/StatefulPartitionedCall lstm_243/StatefulPartitionedCall2D
 lstm_244/StatefulPartitionedCall lstm_244/StatefulPartitionedCall2D
 lstm_245/StatefulPartitionedCall lstm_245/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_243_input
Ŭ

H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_398057

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
˙7
Ê
while_body_394457
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_65_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_65_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_65_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_65_matmul_readvariableop_resource:2(E
3while_lstm_cell_65_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_65_biasadd_readvariableop_resource:(˘)while/lstm_cell_65/BiasAdd/ReadVariableOp˘(while/lstm_cell_65/MatMul/ReadVariableOp˘*while/lstm_cell_65/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_65/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_65_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_65/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_65_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_65/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_65/addAddV2#while/lstm_cell_65/MatMul:product:0%while/lstm_cell_65/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_65_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_65/BiasAddBiasAddwhile/lstm_cell_65/add:z:01while/lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_65/splitSplit+while/lstm_cell_65/split/split_dim:output:0#while/lstm_cell_65/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_65/SigmoidSigmoid!while/lstm_cell_65/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_65/Sigmoid_1Sigmoid!while/lstm_cell_65/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_65/mulMul while/lstm_cell_65/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_65/ReluRelu!while/lstm_cell_65/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_65/mul_1Mulwhile/lstm_cell_65/Sigmoid:y:0%while/lstm_cell_65/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_65/add_1AddV2while/lstm_cell_65/mul:z:0while/lstm_cell_65/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_65/Sigmoid_2Sigmoid!while/lstm_cell_65/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_65/Relu_1Reluwhile/lstm_cell_65/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_65/mul_2Mul while/lstm_cell_65/Sigmoid_2:y:0'while/lstm_cell_65/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_65/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_65/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_65/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_65_biasadd_readvariableop_resource4while_lstm_cell_65_biasadd_readvariableop_resource_0"l
3while_lstm_cell_65_matmul_1_readvariableop_resource5while_lstm_cell_65_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_65_matmul_readvariableop_resource3while_lstm_cell_65_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_65/BiasAdd/ReadVariableOp)while/lstm_cell_65/BiasAdd/ReadVariableOp2T
(while/lstm_cell_65/MatMul/ReadVariableOp(while/lstm_cell_65/MatMul/ReadVariableOp2X
*while/lstm_cell_65/MatMul_1/ReadVariableOp*while/lstm_cell_65/MatMul_1/ReadVariableOp: 
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
while_body_396856
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_64_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_64_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_64_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_64_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_64_biasadd_readvariableop_resource:	È˘)while/lstm_cell_64/BiasAdd/ReadVariableOp˘(while/lstm_cell_64/MatMul/ReadVariableOp˘*while/lstm_cell_64/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_64/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_64/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_64/addAddV2#while/lstm_cell_64/MatMul:product:0%while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_64/BiasAddBiasAddwhile/lstm_cell_64/add:z:01while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_64/splitSplit+while/lstm_cell_64/split/split_dim:output:0#while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_64/SigmoidSigmoid!while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_64/Sigmoid_1Sigmoid!while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_64/mulMul while/lstm_cell_64/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_64/ReluRelu!while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_64/mul_1Mulwhile/lstm_cell_64/Sigmoid:y:0%while/lstm_cell_64/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_64/add_1AddV2while/lstm_cell_64/mul:z:0while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_64/Sigmoid_2Sigmoid!while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_64/Relu_1Reluwhile/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_64/mul_2Mul while/lstm_cell_64/Sigmoid_2:y:0'while/lstm_cell_64/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_64/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_64/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_64/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_64_biasadd_readvariableop_resource4while_lstm_cell_64_biasadd_readvariableop_resource_0"l
3while_lstm_cell_64_matmul_1_readvariableop_resource5while_lstm_cell_64_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_64_matmul_readvariableop_resource3while_lstm_cell_64_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_64/BiasAdd/ReadVariableOp)while/lstm_cell_64/BiasAdd/ReadVariableOp2T
(while/lstm_cell_64/MatMul/ReadVariableOp(while/lstm_cell_64/MatMul/ReadVariableOp2X
*while/lstm_cell_64/MatMul_1/ReadVariableOp*while/lstm_cell_64/MatMul_1/ReadVariableOp: 
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
while_body_396713
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_64_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_64_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_64_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_64_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_64_biasadd_readvariableop_resource:	È˘)while/lstm_cell_64/BiasAdd/ReadVariableOp˘(while/lstm_cell_64/MatMul/ReadVariableOp˘*while/lstm_cell_64/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_64/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_64/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_64/addAddV2#while/lstm_cell_64/MatMul:product:0%while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_64/BiasAddBiasAddwhile/lstm_cell_64/add:z:01while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_64/splitSplit+while/lstm_cell_64/split/split_dim:output:0#while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_64/SigmoidSigmoid!while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_64/Sigmoid_1Sigmoid!while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_64/mulMul while/lstm_cell_64/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_64/ReluRelu!while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_64/mul_1Mulwhile/lstm_cell_64/Sigmoid:y:0%while/lstm_cell_64/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_64/add_1AddV2while/lstm_cell_64/mul:z:0while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_64/Sigmoid_2Sigmoid!while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_64/Relu_1Reluwhile/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_64/mul_2Mul while/lstm_cell_64/Sigmoid_2:y:0'while/lstm_cell_64/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_64/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_64/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_64/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_64_biasadd_readvariableop_resource4while_lstm_cell_64_biasadd_readvariableop_resource_0"l
3while_lstm_cell_64_matmul_1_readvariableop_resource5while_lstm_cell_64_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_64_matmul_readvariableop_resource3while_lstm_cell_64_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_64/BiasAdd/ReadVariableOp)while/lstm_cell_64/BiasAdd/ReadVariableOp2T
(while/lstm_cell_64/MatMul/ReadVariableOp(while/lstm_cell_64/MatMul/ReadVariableOp2X
*while/lstm_cell_64/MatMul_1/ReadVariableOp*while/lstm_cell_64/MatMul_1/ReadVariableOp: 
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
Ğ
ë
I__inference_sequential_81_layer_call_and_return_conditional_losses_394939

inputs"
lstm_243_394912:	"
lstm_243_394914:	d
lstm_243_394916:	"
lstm_244_394919:	dÈ"
lstm_244_394921:	2È
lstm_244_394923:	È!
lstm_245_394926:2(!
lstm_245_394928:
(
lstm_245_394930:(!
dense_81_394933:

dense_81_394935:
identity˘ dense_81/StatefulPartitionedCall˘ lstm_243/StatefulPartitionedCall˘ lstm_244/StatefulPartitionedCall˘ lstm_245/StatefulPartitionedCall
 lstm_243/StatefulPartitionedCallStatefulPartitionedCallinputslstm_243_394912lstm_243_394914lstm_243_394916*
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
D__inference_lstm_243_layer_call_and_return_conditional_losses_394871Ş
 lstm_244/StatefulPartitionedCallStatefulPartitionedCall)lstm_243/StatefulPartitionedCall:output:0lstm_244_394919lstm_244_394921lstm_244_394923*
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
D__inference_lstm_244_layer_call_and_return_conditional_losses_394706Ĥ
 lstm_245/StatefulPartitionedCallStatefulPartitionedCall)lstm_244/StatefulPartitionedCall:output:0lstm_245_394926lstm_245_394928lstm_245_394930*
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
D__inference_lstm_245_layer_call_and_return_conditional_losses_394541
 dense_81/StatefulPartitionedCallStatefulPartitionedCall)lstm_245/StatefulPartitionedCall:output:0dense_81_394933dense_81_394935*
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
D__inference_dense_81_layer_call_and_return_conditional_losses_394343x
IdentityIdentity)dense_81/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_81/StatefulPartitionedCall!^lstm_243/StatefulPartitionedCall!^lstm_244/StatefulPartitionedCall!^lstm_245/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_81/StatefulPartitionedCall dense_81/StatefulPartitionedCall2D
 lstm_243/StatefulPartitionedCall lstm_243/StatefulPartitionedCall2D
 lstm_244/StatefulPartitionedCall lstm_244/StatefulPartitionedCall2D
 lstm_245/StatefulPartitionedCall lstm_245/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
²

÷
lstm_244_while_cond_395337.
*lstm_244_while_lstm_244_while_loop_counter4
0lstm_244_while_lstm_244_while_maximum_iterations
lstm_244_while_placeholder 
lstm_244_while_placeholder_1 
lstm_244_while_placeholder_2 
lstm_244_while_placeholder_30
,lstm_244_while_less_lstm_244_strided_slice_1F
Blstm_244_while_lstm_244_while_cond_395337___redundant_placeholder0F
Blstm_244_while_lstm_244_while_cond_395337___redundant_placeholder1F
Blstm_244_while_lstm_244_while_cond_395337___redundant_placeholder2F
Blstm_244_while_lstm_244_while_cond_395337___redundant_placeholder3
lstm_244_while_identity

lstm_244/while/LessLesslstm_244_while_placeholder,lstm_244_while_less_lstm_244_strided_slice_1*
T0*
_output_shapes
: ]
lstm_244/while/IdentityIdentitylstm_244/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_244_while_identity lstm_244/while/Identity:output:0*(
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
à"
Ŭ
while_body_393607
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_65_393631_0:2(-
while_lstm_cell_65_393633_0:
()
while_lstm_cell_65_393635_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_65_393631:2(+
while_lstm_cell_65_393633:
('
while_lstm_cell_65_393635:(˘*while/lstm_cell_65/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_65/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_65_393631_0while_lstm_cell_65_393633_0while_lstm_cell_65_393635_0*
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
H__inference_lstm_cell_65_layer_call_and_return_conditional_losses_393593Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_65/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_65/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_65/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_65/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_65_393631while_lstm_cell_65_393631_0"8
while_lstm_cell_65_393633while_lstm_cell_65_393633_0"8
while_lstm_cell_65_393635while_lstm_cell_65_393635_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_65/StatefulPartitionedCall*while/lstm_cell_65/StatefulPartitionedCall: 
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
while_body_393941
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_63_matmul_readvariableop_resource_0:	H
5while_lstm_cell_63_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_63_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_63_matmul_readvariableop_resource:	F
3while_lstm_cell_63_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_63_biasadd_readvariableop_resource:	˘)while/lstm_cell_63/BiasAdd/ReadVariableOp˘(while/lstm_cell_63/MatMul/ReadVariableOp˘*while/lstm_cell_63/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_63/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_63_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_63/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_63/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_63/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_63_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_63/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_63/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_63/addAddV2#while/lstm_cell_63/MatMul:product:0%while/lstm_cell_63/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_63/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_63_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_63/BiasAddBiasAddwhile/lstm_cell_63/add:z:01while/lstm_cell_63/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_63/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_63/splitSplit+while/lstm_cell_63/split/split_dim:output:0#while/lstm_cell_63/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_63/SigmoidSigmoid!while/lstm_cell_63/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_63/Sigmoid_1Sigmoid!while/lstm_cell_63/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_63/mulMul while/lstm_cell_63/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_63/ReluRelu!while/lstm_cell_63/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_63/mul_1Mulwhile/lstm_cell_63/Sigmoid:y:0%while/lstm_cell_63/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_63/add_1AddV2while/lstm_cell_63/mul:z:0while/lstm_cell_63/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_63/Sigmoid_2Sigmoid!while/lstm_cell_63/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_63/Relu_1Reluwhile/lstm_cell_63/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_63/mul_2Mul while/lstm_cell_63/Sigmoid_2:y:0'while/lstm_cell_63/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_63/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_63/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_63/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_63/BiasAdd/ReadVariableOp)^while/lstm_cell_63/MatMul/ReadVariableOp+^while/lstm_cell_63/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_63_biasadd_readvariableop_resource4while_lstm_cell_63_biasadd_readvariableop_resource_0"l
3while_lstm_cell_63_matmul_1_readvariableop_resource5while_lstm_cell_63_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_63_matmul_readvariableop_resource3while_lstm_cell_63_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_63/BiasAdd/ReadVariableOp)while/lstm_cell_63/BiasAdd/ReadVariableOp2T
(while/lstm_cell_63/MatMul/ReadVariableOp(while/lstm_cell_63/MatMul/ReadVariableOp2X
*while/lstm_cell_63/MatMul_1/ReadVariableOp*while/lstm_cell_63/MatMul_1/ReadVariableOp: 
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
)__inference_lstm_245_layer_call_fn_397237
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
D__inference_lstm_245_layer_call_and_return_conditional_losses_393676o
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
8

D__inference_lstm_244_layer_call_and_return_conditional_losses_393326

inputs&
lstm_cell_64_393244:	dÈ&
lstm_cell_64_393246:	2È"
lstm_cell_64_393248:	È
identity˘$lstm_cell_64/StatefulPartitionedCall˘while;
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
$lstm_cell_64/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_64_393244lstm_cell_64_393246lstm_cell_64_393248*
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
H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_393243n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_64_393244lstm_cell_64_393246lstm_cell_64_393248*
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
while_body_393257*
condR
while_cond_393256*K
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
NoOpNoOp%^lstm_cell_64/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_64/StatefulPartitionedCall$lstm_cell_64/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
à"
Ŭ
while_body_393798
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_65_393822_0:2(-
while_lstm_cell_65_393824_0:
()
while_lstm_cell_65_393826_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_65_393822:2(+
while_lstm_cell_65_393824:
('
while_lstm_cell_65_393826:(˘*while/lstm_cell_65/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0³
*while/lstm_cell_65/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_65_393822_0while_lstm_cell_65_393824_0while_lstm_cell_65_393826_0*
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
H__inference_lstm_cell_65_layer_call_and_return_conditional_losses_393739Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_65/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_65/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/Identity_5Identity3while/lstm_cell_65/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y

while/NoOpNoOp+^while/lstm_cell_65/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_65_393822while_lstm_cell_65_393822_0"8
while_lstm_cell_65_393824while_lstm_cell_65_393824_0"8
while_lstm_cell_65_393826while_lstm_cell_65_393826_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2X
*while/lstm_cell_65/StatefulPartitionedCall*while/lstm_cell_65/StatefulPartitionedCall: 
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
Ğ
¸
)__inference_lstm_243_layer_call_fn_396016
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
D__inference_lstm_243_layer_call_and_return_conditional_losses_393167|
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
H__inference_lstm_cell_63_layer_call_and_return_conditional_losses_393039

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
˙7
Ê
while_body_397329
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_65_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_65_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_65_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_65_matmul_readvariableop_resource:2(E
3while_lstm_cell_65_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_65_biasadd_readvariableop_resource:(˘)while/lstm_cell_65/BiasAdd/ReadVariableOp˘(while/lstm_cell_65/MatMul/ReadVariableOp˘*while/lstm_cell_65/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_65/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_65_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_65/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_65_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_65/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_65/addAddV2#while/lstm_cell_65/MatMul:product:0%while/lstm_cell_65/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_65_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_65/BiasAddBiasAddwhile/lstm_cell_65/add:z:01while/lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_65/splitSplit+while/lstm_cell_65/split/split_dim:output:0#while/lstm_cell_65/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_65/SigmoidSigmoid!while/lstm_cell_65/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_65/Sigmoid_1Sigmoid!while/lstm_cell_65/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_65/mulMul while/lstm_cell_65/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_65/ReluRelu!while/lstm_cell_65/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_65/mul_1Mulwhile/lstm_cell_65/Sigmoid:y:0%while/lstm_cell_65/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_65/add_1AddV2while/lstm_cell_65/mul:z:0while/lstm_cell_65/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_65/Sigmoid_2Sigmoid!while/lstm_cell_65/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_65/Relu_1Reluwhile/lstm_cell_65/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_65/mul_2Mul while/lstm_cell_65/Sigmoid_2:y:0'while/lstm_cell_65/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_65/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_65/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_65/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_65_biasadd_readvariableop_resource4while_lstm_cell_65_biasadd_readvariableop_resource_0"l
3while_lstm_cell_65_matmul_1_readvariableop_resource5while_lstm_cell_65_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_65_matmul_readvariableop_resource3while_lstm_cell_65_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_65/BiasAdd/ReadVariableOp)while/lstm_cell_65/BiasAdd/ReadVariableOp2T
(while/lstm_cell_65/MatMul/ReadVariableOp(while/lstm_cell_65/MatMul/ReadVariableOp2X
*while/lstm_cell_65/MatMul_1/ReadVariableOp*while/lstm_cell_65/MatMul_1/ReadVariableOp: 
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
while_cond_396712
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_396712___redundant_placeholder04
0while_while_cond_396712___redundant_placeholder14
0while_while_cond_396712___redundant_placeholder24
0while_while_cond_396712___redundant_placeholder3
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
˙7
Ê
while_body_397758
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_65_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_65_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_65_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_65_matmul_readvariableop_resource:2(E
3while_lstm_cell_65_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_65_biasadd_readvariableop_resource:(˘)while/lstm_cell_65/BiasAdd/ReadVariableOp˘(while/lstm_cell_65/MatMul/ReadVariableOp˘*while/lstm_cell_65/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_65/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_65_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_65/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_65_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_65/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_65/addAddV2#while/lstm_cell_65/MatMul:product:0%while/lstm_cell_65/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_65_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_65/BiasAddBiasAddwhile/lstm_cell_65/add:z:01while/lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_65/splitSplit+while/lstm_cell_65/split/split_dim:output:0#while/lstm_cell_65/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_65/SigmoidSigmoid!while/lstm_cell_65/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_65/Sigmoid_1Sigmoid!while/lstm_cell_65/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_65/mulMul while/lstm_cell_65/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_65/ReluRelu!while/lstm_cell_65/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_65/mul_1Mulwhile/lstm_cell_65/Sigmoid:y:0%while/lstm_cell_65/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_65/add_1AddV2while/lstm_cell_65/mul:z:0while/lstm_cell_65/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_65/Sigmoid_2Sigmoid!while/lstm_cell_65/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_65/Relu_1Reluwhile/lstm_cell_65/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_65/mul_2Mul while/lstm_cell_65/Sigmoid_2:y:0'while/lstm_cell_65/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_65/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_65/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_65/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_65_biasadd_readvariableop_resource4while_lstm_cell_65_biasadd_readvariableop_resource_0"l
3while_lstm_cell_65_matmul_1_readvariableop_resource5while_lstm_cell_65_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_65_matmul_readvariableop_resource3while_lstm_cell_65_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_65/BiasAdd/ReadVariableOp)while/lstm_cell_65/BiasAdd/ReadVariableOp2T
(while/lstm_cell_65/MatMul/ReadVariableOp(while/lstm_cell_65/MatMul/ReadVariableOp2X
*while/lstm_cell_65/MatMul_1/ReadVariableOp*while/lstm_cell_65/MatMul_1/ReadVariableOp: 
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
ò

˘
.__inference_sequential_81_layer_call_fn_394375
lstm_243_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_243_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
I__inference_sequential_81_layer_call_and_return_conditional_losses_394350o
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
_user_specified_namelstm_243_input
âJ

D__inference_lstm_244_layer_call_and_return_conditional_losses_396797
inputs_0>
+lstm_cell_64_matmul_readvariableop_resource:	dÈ@
-lstm_cell_64_matmul_1_readvariableop_resource:	2È;
,lstm_cell_64_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_64/BiasAdd/ReadVariableOp˘"lstm_cell_64/MatMul/ReadVariableOp˘$lstm_cell_64/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_64/MatMul/ReadVariableOpReadVariableOp+lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_64/MatMulMatMulstrided_slice_2:output:0*lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_64/MatMul_1MatMulzeros:output:0,lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_64/addAddV2lstm_cell_64/MatMul:product:0lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_64/BiasAddBiasAddlstm_cell_64/add:z:0+lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_64/splitSplit%lstm_cell_64/split/split_dim:output:0lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_64/SigmoidSigmoidlstm_cell_64/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_64/Sigmoid_1Sigmoidlstm_cell_64/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_64/mulMullstm_cell_64/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_64/ReluRelulstm_cell_64/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_64/mul_1Mullstm_cell_64/Sigmoid:y:0lstm_cell_64/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_64/add_1AddV2lstm_cell_64/mul:z:0lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_64/Sigmoid_2Sigmoidlstm_cell_64/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_64/Relu_1Relulstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_64/mul_2Mullstm_cell_64/Sigmoid_2:y:0!lstm_cell_64/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_64_matmul_readvariableop_resource-lstm_cell_64_matmul_1_readvariableop_resource,lstm_cell_64_biasadd_readvariableop_resource*
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
while_body_396713*
condR
while_cond_396712*K
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
NoOpNoOp$^lstm_cell_64/BiasAdd/ReadVariableOp#^lstm_cell_64/MatMul/ReadVariableOp%^lstm_cell_64/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_64/BiasAdd/ReadVariableOp#lstm_cell_64/BiasAdd/ReadVariableOp2H
"lstm_cell_64/MatMul/ReadVariableOp"lstm_cell_64/MatMul/ReadVariableOp2L
$lstm_cell_64/MatMul_1/ReadVariableOp$lstm_cell_64/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
¤J

D__inference_lstm_243_layer_call_and_return_conditional_losses_396610

inputs>
+lstm_cell_63_matmul_readvariableop_resource:	@
-lstm_cell_63_matmul_1_readvariableop_resource:	d;
,lstm_cell_63_biasadd_readvariableop_resource:	
identity˘#lstm_cell_63/BiasAdd/ReadVariableOp˘"lstm_cell_63/MatMul/ReadVariableOp˘$lstm_cell_63/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_63/MatMul/ReadVariableOpReadVariableOp+lstm_cell_63_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_63/MatMulMatMulstrided_slice_2:output:0*lstm_cell_63/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_63/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_63_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_63/MatMul_1MatMulzeros:output:0,lstm_cell_63/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_63/addAddV2lstm_cell_63/MatMul:product:0lstm_cell_63/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_63/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_63_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_63/BiasAddBiasAddlstm_cell_63/add:z:0+lstm_cell_63/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_63/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_63/splitSplit%lstm_cell_63/split/split_dim:output:0lstm_cell_63/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_63/SigmoidSigmoidlstm_cell_63/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_63/Sigmoid_1Sigmoidlstm_cell_63/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_63/mulMullstm_cell_63/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_63/ReluRelulstm_cell_63/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_63/mul_1Mullstm_cell_63/Sigmoid:y:0lstm_cell_63/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_63/add_1AddV2lstm_cell_63/mul:z:0lstm_cell_63/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_63/Sigmoid_2Sigmoidlstm_cell_63/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_63/Relu_1Relulstm_cell_63/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_63/mul_2Mullstm_cell_63/Sigmoid_2:y:0!lstm_cell_63/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_63_matmul_readvariableop_resource-lstm_cell_63_matmul_1_readvariableop_resource,lstm_cell_63_biasadd_readvariableop_resource*
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
while_body_396526*
condR
while_cond_396525*K
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
NoOpNoOp$^lstm_cell_63/BiasAdd/ReadVariableOp#^lstm_cell_63/MatMul/ReadVariableOp%^lstm_cell_63/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_63/BiasAdd/ReadVariableOp#lstm_cell_63/BiasAdd/ReadVariableOp2H
"lstm_cell_63/MatMul/ReadVariableOp"lstm_cell_63/MatMul/ReadVariableOp2L
$lstm_cell_63/MatMul_1/ReadVariableOp$lstm_cell_63/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_394456
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_394456___redundant_placeholder04
0while_while_cond_394456___redundant_placeholder14
0while_while_cond_394456___redundant_placeholder24
0while_while_cond_394456___redundant_placeholder3
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
ÛB
?

lstm_243_while_body_395199.
*lstm_243_while_lstm_243_while_loop_counter4
0lstm_243_while_lstm_243_while_maximum_iterations
lstm_243_while_placeholder 
lstm_243_while_placeholder_1 
lstm_243_while_placeholder_2 
lstm_243_while_placeholder_3-
)lstm_243_while_lstm_243_strided_slice_1_0i
elstm_243_while_tensorarrayv2read_tensorlistgetitem_lstm_243_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_243_while_lstm_cell_63_matmul_readvariableop_resource_0:	Q
>lstm_243_while_lstm_cell_63_matmul_1_readvariableop_resource_0:	dL
=lstm_243_while_lstm_cell_63_biasadd_readvariableop_resource_0:	
lstm_243_while_identity
lstm_243_while_identity_1
lstm_243_while_identity_2
lstm_243_while_identity_3
lstm_243_while_identity_4
lstm_243_while_identity_5+
'lstm_243_while_lstm_243_strided_slice_1g
clstm_243_while_tensorarrayv2read_tensorlistgetitem_lstm_243_tensorarrayunstack_tensorlistfromtensorM
:lstm_243_while_lstm_cell_63_matmul_readvariableop_resource:	O
<lstm_243_while_lstm_cell_63_matmul_1_readvariableop_resource:	dJ
;lstm_243_while_lstm_cell_63_biasadd_readvariableop_resource:	˘2lstm_243/while/lstm_cell_63/BiasAdd/ReadVariableOp˘1lstm_243/while/lstm_cell_63/MatMul/ReadVariableOp˘3lstm_243/while/lstm_cell_63/MatMul_1/ReadVariableOp
@lstm_243/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_243/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_243_while_tensorarrayv2read_tensorlistgetitem_lstm_243_tensorarrayunstack_tensorlistfromtensor_0lstm_243_while_placeholderIlstm_243/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_243/while/lstm_cell_63/MatMul/ReadVariableOpReadVariableOp<lstm_243_while_lstm_cell_63_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_243/while/lstm_cell_63/MatMulMatMul9lstm_243/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_243/while/lstm_cell_63/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_243/while/lstm_cell_63/MatMul_1/ReadVariableOpReadVariableOp>lstm_243_while_lstm_cell_63_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_243/while/lstm_cell_63/MatMul_1MatMullstm_243_while_placeholder_2;lstm_243/while/lstm_cell_63/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_243/while/lstm_cell_63/addAddV2,lstm_243/while/lstm_cell_63/MatMul:product:0.lstm_243/while/lstm_cell_63/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_243/while/lstm_cell_63/BiasAdd/ReadVariableOpReadVariableOp=lstm_243_while_lstm_cell_63_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_243/while/lstm_cell_63/BiasAddBiasAdd#lstm_243/while/lstm_cell_63/add:z:0:lstm_243/while/lstm_cell_63/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_243/while/lstm_cell_63/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_243/while/lstm_cell_63/splitSplit4lstm_243/while/lstm_cell_63/split/split_dim:output:0,lstm_243/while/lstm_cell_63/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_243/while/lstm_cell_63/SigmoidSigmoid*lstm_243/while/lstm_cell_63/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_243/while/lstm_cell_63/Sigmoid_1Sigmoid*lstm_243/while/lstm_cell_63/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_243/while/lstm_cell_63/mulMul)lstm_243/while/lstm_cell_63/Sigmoid_1:y:0lstm_243_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_243/while/lstm_cell_63/ReluRelu*lstm_243/while/lstm_cell_63/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_243/while/lstm_cell_63/mul_1Mul'lstm_243/while/lstm_cell_63/Sigmoid:y:0.lstm_243/while/lstm_cell_63/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_243/while/lstm_cell_63/add_1AddV2#lstm_243/while/lstm_cell_63/mul:z:0%lstm_243/while/lstm_cell_63/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_243/while/lstm_cell_63/Sigmoid_2Sigmoid*lstm_243/while/lstm_cell_63/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_243/while/lstm_cell_63/Relu_1Relu%lstm_243/while/lstm_cell_63/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_243/while/lstm_cell_63/mul_2Mul)lstm_243/while/lstm_cell_63/Sigmoid_2:y:00lstm_243/while/lstm_cell_63/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_243/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_243_while_placeholder_1lstm_243_while_placeholder%lstm_243/while/lstm_cell_63/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_243/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_243/while/addAddV2lstm_243_while_placeholderlstm_243/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_243/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_243/while/add_1AddV2*lstm_243_while_lstm_243_while_loop_counterlstm_243/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_243/while/IdentityIdentitylstm_243/while/add_1:z:0^lstm_243/while/NoOp*
T0*
_output_shapes
: 
lstm_243/while/Identity_1Identity0lstm_243_while_lstm_243_while_maximum_iterations^lstm_243/while/NoOp*
T0*
_output_shapes
: t
lstm_243/while/Identity_2Identitylstm_243/while/add:z:0^lstm_243/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_243/while/Identity_3IdentityClstm_243/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_243/while/NoOp*
T0*
_output_shapes
: 
lstm_243/while/Identity_4Identity%lstm_243/while/lstm_cell_63/mul_2:z:0^lstm_243/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_243/while/Identity_5Identity%lstm_243/while/lstm_cell_63/add_1:z:0^lstm_243/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_243/while/NoOpNoOp3^lstm_243/while/lstm_cell_63/BiasAdd/ReadVariableOp2^lstm_243/while/lstm_cell_63/MatMul/ReadVariableOp4^lstm_243/while/lstm_cell_63/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_243_while_identity lstm_243/while/Identity:output:0"?
lstm_243_while_identity_1"lstm_243/while/Identity_1:output:0"?
lstm_243_while_identity_2"lstm_243/while/Identity_2:output:0"?
lstm_243_while_identity_3"lstm_243/while/Identity_3:output:0"?
lstm_243_while_identity_4"lstm_243/while/Identity_4:output:0"?
lstm_243_while_identity_5"lstm_243/while/Identity_5:output:0"T
'lstm_243_while_lstm_243_strided_slice_1)lstm_243_while_lstm_243_strided_slice_1_0"|
;lstm_243_while_lstm_cell_63_biasadd_readvariableop_resource=lstm_243_while_lstm_cell_63_biasadd_readvariableop_resource_0"~
<lstm_243_while_lstm_cell_63_matmul_1_readvariableop_resource>lstm_243_while_lstm_cell_63_matmul_1_readvariableop_resource_0"z
:lstm_243_while_lstm_cell_63_matmul_readvariableop_resource<lstm_243_while_lstm_cell_63_matmul_readvariableop_resource_0"Ì
clstm_243_while_tensorarrayv2read_tensorlistgetitem_lstm_243_tensorarrayunstack_tensorlistfromtensorelstm_243_while_tensorarrayv2read_tensorlistgetitem_lstm_243_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_243/while/lstm_cell_63/BiasAdd/ReadVariableOp2lstm_243/while/lstm_cell_63/BiasAdd/ReadVariableOp2f
1lstm_243/while/lstm_cell_63/MatMul/ReadVariableOp1lstm_243/while/lstm_cell_63/MatMul/ReadVariableOp2j
3lstm_243/while/lstm_cell_63/MatMul_1/ReadVariableOp3lstm_243/while/lstm_cell_63/MatMul_1/ReadVariableOp: 
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
(sequential_81_lstm_245_while_cond_392735J
Fsequential_81_lstm_245_while_sequential_81_lstm_245_while_loop_counterP
Lsequential_81_lstm_245_while_sequential_81_lstm_245_while_maximum_iterations,
(sequential_81_lstm_245_while_placeholder.
*sequential_81_lstm_245_while_placeholder_1.
*sequential_81_lstm_245_while_placeholder_2.
*sequential_81_lstm_245_while_placeholder_3L
Hsequential_81_lstm_245_while_less_sequential_81_lstm_245_strided_slice_1b
^sequential_81_lstm_245_while_sequential_81_lstm_245_while_cond_392735___redundant_placeholder0b
^sequential_81_lstm_245_while_sequential_81_lstm_245_while_cond_392735___redundant_placeholder1b
^sequential_81_lstm_245_while_sequential_81_lstm_245_while_cond_392735___redundant_placeholder2b
^sequential_81_lstm_245_while_sequential_81_lstm_245_while_cond_392735___redundant_placeholder3)
%sequential_81_lstm_245_while_identity
?
!sequential_81/lstm_245/while/LessLess(sequential_81_lstm_245_while_placeholderHsequential_81_lstm_245_while_less_sequential_81_lstm_245_strided_slice_1*
T0*
_output_shapes
: y
%sequential_81/lstm_245/while/IdentityIdentity%sequential_81/lstm_245/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_81_lstm_245_while_identity.sequential_81/lstm_245/while/Identity:output:0*(
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
while_cond_393097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_393097___redundant_placeholder04
0while_while_cond_393097___redundant_placeholder14
0while_while_cond_393097___redundant_placeholder24
0while_while_cond_393097___redundant_placeholder3
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
while_body_396526
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_63_matmul_readvariableop_resource_0:	H
5while_lstm_cell_63_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_63_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_63_matmul_readvariableop_resource:	F
3while_lstm_cell_63_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_63_biasadd_readvariableop_resource:	˘)while/lstm_cell_63/BiasAdd/ReadVariableOp˘(while/lstm_cell_63/MatMul/ReadVariableOp˘*while/lstm_cell_63/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_63/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_63_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_63/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_63/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_63/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_63_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_63/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_63/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_63/addAddV2#while/lstm_cell_63/MatMul:product:0%while/lstm_cell_63/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_63/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_63_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_63/BiasAddBiasAddwhile/lstm_cell_63/add:z:01while/lstm_cell_63/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_63/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_63/splitSplit+while/lstm_cell_63/split/split_dim:output:0#while/lstm_cell_63/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_63/SigmoidSigmoid!while/lstm_cell_63/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_63/Sigmoid_1Sigmoid!while/lstm_cell_63/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_63/mulMul while/lstm_cell_63/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_63/ReluRelu!while/lstm_cell_63/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_63/mul_1Mulwhile/lstm_cell_63/Sigmoid:y:0%while/lstm_cell_63/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_63/add_1AddV2while/lstm_cell_63/mul:z:0while/lstm_cell_63/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_63/Sigmoid_2Sigmoid!while/lstm_cell_63/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_63/Relu_1Reluwhile/lstm_cell_63/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_63/mul_2Mul while/lstm_cell_63/Sigmoid_2:y:0'while/lstm_cell_63/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_63/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_63/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_63/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_63/BiasAdd/ReadVariableOp)^while/lstm_cell_63/MatMul/ReadVariableOp+^while/lstm_cell_63/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_63_biasadd_readvariableop_resource4while_lstm_cell_63_biasadd_readvariableop_resource_0"l
3while_lstm_cell_63_matmul_1_readvariableop_resource5while_lstm_cell_63_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_63_matmul_readvariableop_resource3while_lstm_cell_63_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_63/BiasAdd/ReadVariableOp)while/lstm_cell_63/BiasAdd/ReadVariableOp2T
(while/lstm_cell_63/MatMul/ReadVariableOp(while/lstm_cell_63/MatMul/ReadVariableOp2X
*while/lstm_cell_63/MatMul_1/ReadVariableOp*while/lstm_cell_63/MatMul_1/ReadVariableOp: 
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
while_body_396240
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_63_matmul_readvariableop_resource_0:	H
5while_lstm_cell_63_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_63_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_63_matmul_readvariableop_resource:	F
3while_lstm_cell_63_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_63_biasadd_readvariableop_resource:	˘)while/lstm_cell_63/BiasAdd/ReadVariableOp˘(while/lstm_cell_63/MatMul/ReadVariableOp˘*while/lstm_cell_63/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_63/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_63_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_63/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_63/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_63/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_63_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_63/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_63/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_63/addAddV2#while/lstm_cell_63/MatMul:product:0%while/lstm_cell_63/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_63/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_63_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_63/BiasAddBiasAddwhile/lstm_cell_63/add:z:01while/lstm_cell_63/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_63/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_63/splitSplit+while/lstm_cell_63/split/split_dim:output:0#while/lstm_cell_63/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_63/SigmoidSigmoid!while/lstm_cell_63/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_63/Sigmoid_1Sigmoid!while/lstm_cell_63/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_63/mulMul while/lstm_cell_63/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_63/ReluRelu!while/lstm_cell_63/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_63/mul_1Mulwhile/lstm_cell_63/Sigmoid:y:0%while/lstm_cell_63/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_63/add_1AddV2while/lstm_cell_63/mul:z:0while/lstm_cell_63/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_63/Sigmoid_2Sigmoid!while/lstm_cell_63/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_63/Relu_1Reluwhile/lstm_cell_63/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_63/mul_2Mul while/lstm_cell_63/Sigmoid_2:y:0'while/lstm_cell_63/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_63/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_63/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_63/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_63/BiasAdd/ReadVariableOp)^while/lstm_cell_63/MatMul/ReadVariableOp+^while/lstm_cell_63/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_63_biasadd_readvariableop_resource4while_lstm_cell_63_biasadd_readvariableop_resource_0"l
3while_lstm_cell_63_matmul_1_readvariableop_resource5while_lstm_cell_63_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_63_matmul_readvariableop_resource3while_lstm_cell_63_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_63/BiasAdd/ReadVariableOp)while/lstm_cell_63/BiasAdd/ReadVariableOp2T
(while/lstm_cell_63/MatMul/ReadVariableOp(while/lstm_cell_63/MatMul/ReadVariableOp2X
*while/lstm_cell_63/MatMul_1/ReadVariableOp*while/lstm_cell_63/MatMul_1/ReadVariableOp: 
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
(sequential_81_lstm_243_while_cond_392457J
Fsequential_81_lstm_243_while_sequential_81_lstm_243_while_loop_counterP
Lsequential_81_lstm_243_while_sequential_81_lstm_243_while_maximum_iterations,
(sequential_81_lstm_243_while_placeholder.
*sequential_81_lstm_243_while_placeholder_1.
*sequential_81_lstm_243_while_placeholder_2.
*sequential_81_lstm_243_while_placeholder_3L
Hsequential_81_lstm_243_while_less_sequential_81_lstm_243_strided_slice_1b
^sequential_81_lstm_243_while_sequential_81_lstm_243_while_cond_392457___redundant_placeholder0b
^sequential_81_lstm_243_while_sequential_81_lstm_243_while_cond_392457___redundant_placeholder1b
^sequential_81_lstm_243_while_sequential_81_lstm_243_while_cond_392457___redundant_placeholder2b
^sequential_81_lstm_243_while_sequential_81_lstm_243_while_cond_392457___redundant_placeholder3)
%sequential_81_lstm_243_while_identity
?
!sequential_81/lstm_243/while/LessLess(sequential_81_lstm_243_while_placeholderHsequential_81_lstm_243_while_less_sequential_81_lstm_243_strided_slice_1*
T0*
_output_shapes
: y
%sequential_81/lstm_243/while/IdentityIdentity%sequential_81/lstm_243/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_81_lstm_243_while_identity.sequential_81/lstm_243/while/Identity:output:0*(
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

µ
)__inference_lstm_245_layer_call_fn_397248
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
D__inference_lstm_245_layer_call_and_return_conditional_losses_393867o
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
8

D__inference_lstm_243_layer_call_and_return_conditional_losses_393167

inputs&
lstm_cell_63_393085:	&
lstm_cell_63_393087:	d"
lstm_cell_63_393089:	
identity˘$lstm_cell_63/StatefulPartitionedCall˘while;
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
$lstm_cell_63/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_63_393085lstm_cell_63_393087lstm_cell_63_393089*
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
H__inference_lstm_cell_63_layer_call_and_return_conditional_losses_393039n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_63_393085lstm_cell_63_393087lstm_cell_63_393089*
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
while_body_393098*
condR
while_cond_393097*K
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
NoOpNoOp%^lstm_cell_63/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_63/StatefulPartitionedCall$lstm_cell_63/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ë
ö
-__inference_lstm_cell_64_layer_call_fn_397993

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
H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_393389o
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
while_cond_397141
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_397141___redundant_placeholder04
0while_while_cond_397141___redundant_placeholder14
0while_while_cond_397141___redundant_placeholder24
0while_while_cond_397141___redundant_placeholder3
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
D__inference_lstm_245_layer_call_and_return_conditional_losses_393867

inputs%
lstm_cell_65_393785:2(%
lstm_cell_65_393787:
(!
lstm_cell_65_393789:(
identity˘$lstm_cell_65/StatefulPartitionedCall˘while;
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
$lstm_cell_65/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_65_393785lstm_cell_65_393787lstm_cell_65_393789*
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
H__inference_lstm_cell_65_layer_call_and_return_conditional_losses_393739n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_65_393785lstm_cell_65_393787lstm_cell_65_393789*
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
while_body_393798*
condR
while_cond_393797*K
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
NoOpNoOp%^lstm_cell_65/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_65/StatefulPartitionedCall$lstm_cell_65/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
Ŭ

H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_398025

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
Ŭ

H__inference_lstm_cell_63_layer_call_and_return_conditional_losses_397959

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
J

D__inference_lstm_245_layer_call_and_return_conditional_losses_394541

inputs=
+lstm_cell_65_matmul_readvariableop_resource:2(?
-lstm_cell_65_matmul_1_readvariableop_resource:
(:
,lstm_cell_65_biasadd_readvariableop_resource:(
identity˘#lstm_cell_65/BiasAdd/ReadVariableOp˘"lstm_cell_65/MatMul/ReadVariableOp˘$lstm_cell_65/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_65/MatMul/ReadVariableOpReadVariableOp+lstm_cell_65_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_65/MatMulMatMulstrided_slice_2:output:0*lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_65_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_65/MatMul_1MatMulzeros:output:0,lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_65/addAddV2lstm_cell_65/MatMul:product:0lstm_cell_65/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_65_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_65/BiasAddBiasAddlstm_cell_65/add:z:0+lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_65/splitSplit%lstm_cell_65/split/split_dim:output:0lstm_cell_65/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_65/SigmoidSigmoidlstm_cell_65/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_65/Sigmoid_1Sigmoidlstm_cell_65/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_65/mulMullstm_cell_65/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_65/ReluRelulstm_cell_65/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_65/mul_1Mullstm_cell_65/Sigmoid:y:0lstm_cell_65/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_65/add_1AddV2lstm_cell_65/mul:z:0lstm_cell_65/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_65/Sigmoid_2Sigmoidlstm_cell_65/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_65/Relu_1Relulstm_cell_65/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_65/mul_2Mullstm_cell_65/Sigmoid_2:y:0!lstm_cell_65/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_65_matmul_readvariableop_resource-lstm_cell_65_matmul_1_readvariableop_resource,lstm_cell_65_biasadd_readvariableop_resource*
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
while_body_394457*
condR
while_cond_394456*K
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
NoOpNoOp$^lstm_cell_65/BiasAdd/ReadVariableOp#^lstm_cell_65/MatMul/ReadVariableOp%^lstm_cell_65/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_65/BiasAdd/ReadVariableOp#lstm_cell_65/BiasAdd/ReadVariableOp2H
"lstm_cell_65/MatMul/ReadVariableOp"lstm_cell_65/MatMul/ReadVariableOp2L
$lstm_cell_65/MatMul_1/ReadVariableOp$lstm_cell_65/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
Ë

H__inference_lstm_cell_65_layer_call_and_return_conditional_losses_393593

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
ë
ö
-__inference_lstm_cell_63_layer_call_fn_397878

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
H__inference_lstm_cell_63_layer_call_and_return_conditional_losses_392893o
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
8

D__inference_lstm_243_layer_call_and_return_conditional_losses_392976

inputs&
lstm_cell_63_392894:	&
lstm_cell_63_392896:	d"
lstm_cell_63_392898:	
identity˘$lstm_cell_63/StatefulPartitionedCall˘while;
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
$lstm_cell_63/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_63_392894lstm_cell_63_392896lstm_cell_63_392898*
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
H__inference_lstm_cell_63_layer_call_and_return_conditional_losses_392893n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_63_392894lstm_cell_63_392896lstm_cell_63_392898*
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
while_body_392907*
condR
while_cond_392906*K
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
NoOpNoOp%^lstm_cell_63/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2L
$lstm_cell_63/StatefulPartitionedCall$lstm_cell_63/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_394090
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_394090___redundant_placeholder04
0while_while_cond_394090___redundant_placeholder14
0while_while_cond_394090___redundant_placeholder24
0while_while_cond_394090___redundant_placeholder3
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
D__inference_lstm_245_layer_call_and_return_conditional_losses_394325

inputs=
+lstm_cell_65_matmul_readvariableop_resource:2(?
-lstm_cell_65_matmul_1_readvariableop_resource:
(:
,lstm_cell_65_biasadd_readvariableop_resource:(
identity˘#lstm_cell_65/BiasAdd/ReadVariableOp˘"lstm_cell_65/MatMul/ReadVariableOp˘$lstm_cell_65/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_65/MatMul/ReadVariableOpReadVariableOp+lstm_cell_65_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_65/MatMulMatMulstrided_slice_2:output:0*lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_65_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_65/MatMul_1MatMulzeros:output:0,lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_65/addAddV2lstm_cell_65/MatMul:product:0lstm_cell_65/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_65_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_65/BiasAddBiasAddlstm_cell_65/add:z:0+lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_65/splitSplit%lstm_cell_65/split/split_dim:output:0lstm_cell_65/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_65/SigmoidSigmoidlstm_cell_65/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_65/Sigmoid_1Sigmoidlstm_cell_65/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_65/mulMullstm_cell_65/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_65/ReluRelulstm_cell_65/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_65/mul_1Mullstm_cell_65/Sigmoid:y:0lstm_cell_65/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_65/add_1AddV2lstm_cell_65/mul:z:0lstm_cell_65/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_65/Sigmoid_2Sigmoidlstm_cell_65/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_65/Relu_1Relulstm_cell_65/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_65/mul_2Mullstm_cell_65/Sigmoid_2:y:0!lstm_cell_65/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_65_matmul_readvariableop_resource-lstm_cell_65_matmul_1_readvariableop_resource,lstm_cell_65_biasadd_readvariableop_resource*
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
while_body_394241*
condR
while_cond_394240*K
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
NoOpNoOp$^lstm_cell_65/BiasAdd/ReadVariableOp#^lstm_cell_65/MatMul/ReadVariableOp%^lstm_cell_65/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_65/BiasAdd/ReadVariableOp#lstm_cell_65/BiasAdd/ReadVariableOp2H
"lstm_cell_65/MatMul/ReadVariableOp"lstm_cell_65/MatMul/ReadVariableOp2L
$lstm_cell_65/MatMul_1/ReadVariableOp$lstm_cell_65/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
Ġ

H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_393243

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
Ó

H__inference_lstm_cell_65_layer_call_and_return_conditional_losses_398123

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
8
?
while_body_394622
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_64_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_64_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_64_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_64_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_64_biasadd_readvariableop_resource:	È˘)while/lstm_cell_64/BiasAdd/ReadVariableOp˘(while/lstm_cell_64/MatMul/ReadVariableOp˘*while/lstm_cell_64/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_64/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_64/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_64/addAddV2#while/lstm_cell_64/MatMul:product:0%while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_64/BiasAddBiasAddwhile/lstm_cell_64/add:z:01while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_64/splitSplit+while/lstm_cell_64/split/split_dim:output:0#while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_64/SigmoidSigmoid!while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_64/Sigmoid_1Sigmoid!while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_64/mulMul while/lstm_cell_64/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_64/ReluRelu!while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_64/mul_1Mulwhile/lstm_cell_64/Sigmoid:y:0%while/lstm_cell_64/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_64/add_1AddV2while/lstm_cell_64/mul:z:0while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_64/Sigmoid_2Sigmoid!while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_64/Relu_1Reluwhile/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_64/mul_2Mul while/lstm_cell_64/Sigmoid_2:y:0'while/lstm_cell_64/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_64/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_64/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_64/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_64_biasadd_readvariableop_resource4while_lstm_cell_64_biasadd_readvariableop_resource_0"l
3while_lstm_cell_64_matmul_1_readvariableop_resource5while_lstm_cell_64_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_64_matmul_readvariableop_resource3while_lstm_cell_64_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_64/BiasAdd/ReadVariableOp)while/lstm_cell_64/BiasAdd/ReadVariableOp2T
(while/lstm_cell_64/MatMul/ReadVariableOp(while/lstm_cell_64/MatMul/ReadVariableOp2X
*while/lstm_cell_64/MatMul_1/ReadVariableOp*while/lstm_cell_64/MatMul_1/ReadVariableOp: 
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
ħ

I__inference_sequential_81_layer_call_and_return_conditional_losses_395567

inputsG
4lstm_243_lstm_cell_63_matmul_readvariableop_resource:	I
6lstm_243_lstm_cell_63_matmul_1_readvariableop_resource:	dD
5lstm_243_lstm_cell_63_biasadd_readvariableop_resource:	G
4lstm_244_lstm_cell_64_matmul_readvariableop_resource:	dÈI
6lstm_244_lstm_cell_64_matmul_1_readvariableop_resource:	2ÈD
5lstm_244_lstm_cell_64_biasadd_readvariableop_resource:	ÈF
4lstm_245_lstm_cell_65_matmul_readvariableop_resource:2(H
6lstm_245_lstm_cell_65_matmul_1_readvariableop_resource:
(C
5lstm_245_lstm_cell_65_biasadd_readvariableop_resource:(9
'dense_81_matmul_readvariableop_resource:
6
(dense_81_biasadd_readvariableop_resource:
identity˘dense_81/BiasAdd/ReadVariableOp˘dense_81/MatMul/ReadVariableOp˘,lstm_243/lstm_cell_63/BiasAdd/ReadVariableOp˘+lstm_243/lstm_cell_63/MatMul/ReadVariableOp˘-lstm_243/lstm_cell_63/MatMul_1/ReadVariableOp˘lstm_243/while˘,lstm_244/lstm_cell_64/BiasAdd/ReadVariableOp˘+lstm_244/lstm_cell_64/MatMul/ReadVariableOp˘-lstm_244/lstm_cell_64/MatMul_1/ReadVariableOp˘lstm_244/while˘,lstm_245/lstm_cell_65/BiasAdd/ReadVariableOp˘+lstm_245/lstm_cell_65/MatMul/ReadVariableOp˘-lstm_245/lstm_cell_65/MatMul_1/ReadVariableOp˘lstm_245/whileD
lstm_243/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_243/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_243/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_243/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_243/strided_sliceStridedSlicelstm_243/Shape:output:0%lstm_243/strided_slice/stack:output:0'lstm_243/strided_slice/stack_1:output:0'lstm_243/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_243/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_243/zeros/packedPacklstm_243/strided_slice:output:0 lstm_243/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_243/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_243/zerosFilllstm_243/zeros/packed:output:0lstm_243/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_243/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_243/zeros_1/packedPacklstm_243/strided_slice:output:0"lstm_243/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_243/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_243/zeros_1Fill lstm_243/zeros_1/packed:output:0lstm_243/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_243/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_243/transpose	Transposeinputs lstm_243/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_243/Shape_1Shapelstm_243/transpose:y:0*
T0*
_output_shapes
:h
lstm_243/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_243/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_243/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_243/strided_slice_1StridedSlicelstm_243/Shape_1:output:0'lstm_243/strided_slice_1/stack:output:0)lstm_243/strided_slice_1/stack_1:output:0)lstm_243/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_243/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_243/TensorArrayV2TensorListReserve-lstm_243/TensorArrayV2/element_shape:output:0!lstm_243/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_243/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_243/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_243/transpose:y:0Glstm_243/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_243/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_243/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_243/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_243/strided_slice_2StridedSlicelstm_243/transpose:y:0'lstm_243/strided_slice_2/stack:output:0)lstm_243/strided_slice_2/stack_1:output:0)lstm_243/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_243/lstm_cell_63/MatMul/ReadVariableOpReadVariableOp4lstm_243_lstm_cell_63_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_243/lstm_cell_63/MatMulMatMul!lstm_243/strided_slice_2:output:03lstm_243/lstm_cell_63/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_243/lstm_cell_63/MatMul_1/ReadVariableOpReadVariableOp6lstm_243_lstm_cell_63_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_243/lstm_cell_63/MatMul_1MatMullstm_243/zeros:output:05lstm_243/lstm_cell_63/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_243/lstm_cell_63/addAddV2&lstm_243/lstm_cell_63/MatMul:product:0(lstm_243/lstm_cell_63/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_243/lstm_cell_63/BiasAdd/ReadVariableOpReadVariableOp5lstm_243_lstm_cell_63_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_243/lstm_cell_63/BiasAddBiasAddlstm_243/lstm_cell_63/add:z:04lstm_243/lstm_cell_63/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_243/lstm_cell_63/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_243/lstm_cell_63/splitSplit.lstm_243/lstm_cell_63/split/split_dim:output:0&lstm_243/lstm_cell_63/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_243/lstm_cell_63/SigmoidSigmoid$lstm_243/lstm_cell_63/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_243/lstm_cell_63/Sigmoid_1Sigmoid$lstm_243/lstm_cell_63/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_243/lstm_cell_63/mulMul#lstm_243/lstm_cell_63/Sigmoid_1:y:0lstm_243/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_243/lstm_cell_63/ReluRelu$lstm_243/lstm_cell_63/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_243/lstm_cell_63/mul_1Mul!lstm_243/lstm_cell_63/Sigmoid:y:0(lstm_243/lstm_cell_63/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_243/lstm_cell_63/add_1AddV2lstm_243/lstm_cell_63/mul:z:0lstm_243/lstm_cell_63/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_243/lstm_cell_63/Sigmoid_2Sigmoid$lstm_243/lstm_cell_63/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_243/lstm_cell_63/Relu_1Relulstm_243/lstm_cell_63/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_243/lstm_cell_63/mul_2Mul#lstm_243/lstm_cell_63/Sigmoid_2:y:0*lstm_243/lstm_cell_63/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_243/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_243/TensorArrayV2_1TensorListReserve/lstm_243/TensorArrayV2_1/element_shape:output:0!lstm_243/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_243/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_243/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_243/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_243/whileWhile$lstm_243/while/loop_counter:output:0*lstm_243/while/maximum_iterations:output:0lstm_243/time:output:0!lstm_243/TensorArrayV2_1:handle:0lstm_243/zeros:output:0lstm_243/zeros_1:output:0!lstm_243/strided_slice_1:output:0@lstm_243/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_243_lstm_cell_63_matmul_readvariableop_resource6lstm_243_lstm_cell_63_matmul_1_readvariableop_resource5lstm_243_lstm_cell_63_biasadd_readvariableop_resource*
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
lstm_243_while_body_395199*&
condR
lstm_243_while_cond_395198*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_243/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_243/TensorArrayV2Stack/TensorListStackTensorListStacklstm_243/while:output:3Blstm_243/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_243/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_243/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_243/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_243/strided_slice_3StridedSlice4lstm_243/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_243/strided_slice_3/stack:output:0)lstm_243/strided_slice_3/stack_1:output:0)lstm_243/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_243/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_243/transpose_1	Transpose4lstm_243/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_243/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_243/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_244/ShapeShapelstm_243/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_244/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_244/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_244/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_244/strided_sliceStridedSlicelstm_244/Shape:output:0%lstm_244/strided_slice/stack:output:0'lstm_244/strided_slice/stack_1:output:0'lstm_244/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_244/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_244/zeros/packedPacklstm_244/strided_slice:output:0 lstm_244/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_244/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_244/zerosFilllstm_244/zeros/packed:output:0lstm_244/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_244/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_244/zeros_1/packedPacklstm_244/strided_slice:output:0"lstm_244/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_244/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_244/zeros_1Fill lstm_244/zeros_1/packed:output:0lstm_244/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_244/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_244/transpose	Transposelstm_243/transpose_1:y:0 lstm_244/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_244/Shape_1Shapelstm_244/transpose:y:0*
T0*
_output_shapes
:h
lstm_244/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_244/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_244/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_244/strided_slice_1StridedSlicelstm_244/Shape_1:output:0'lstm_244/strided_slice_1/stack:output:0)lstm_244/strided_slice_1/stack_1:output:0)lstm_244/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_244/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_244/TensorArrayV2TensorListReserve-lstm_244/TensorArrayV2/element_shape:output:0!lstm_244/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_244/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_244/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_244/transpose:y:0Glstm_244/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_244/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_244/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_244/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_244/strided_slice_2StridedSlicelstm_244/transpose:y:0'lstm_244/strided_slice_2/stack:output:0)lstm_244/strided_slice_2/stack_1:output:0)lstm_244/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_244/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp4lstm_244_lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_244/lstm_cell_64/MatMulMatMul!lstm_244/strided_slice_2:output:03lstm_244/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_244/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp6lstm_244_lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_244/lstm_cell_64/MatMul_1MatMullstm_244/zeros:output:05lstm_244/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_244/lstm_cell_64/addAddV2&lstm_244/lstm_cell_64/MatMul:product:0(lstm_244/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_244/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp5lstm_244_lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_244/lstm_cell_64/BiasAddBiasAddlstm_244/lstm_cell_64/add:z:04lstm_244/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_244/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_244/lstm_cell_64/splitSplit.lstm_244/lstm_cell_64/split/split_dim:output:0&lstm_244/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_244/lstm_cell_64/SigmoidSigmoid$lstm_244/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_244/lstm_cell_64/Sigmoid_1Sigmoid$lstm_244/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_244/lstm_cell_64/mulMul#lstm_244/lstm_cell_64/Sigmoid_1:y:0lstm_244/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_244/lstm_cell_64/ReluRelu$lstm_244/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_244/lstm_cell_64/mul_1Mul!lstm_244/lstm_cell_64/Sigmoid:y:0(lstm_244/lstm_cell_64/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_244/lstm_cell_64/add_1AddV2lstm_244/lstm_cell_64/mul:z:0lstm_244/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_244/lstm_cell_64/Sigmoid_2Sigmoid$lstm_244/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_244/lstm_cell_64/Relu_1Relulstm_244/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_244/lstm_cell_64/mul_2Mul#lstm_244/lstm_cell_64/Sigmoid_2:y:0*lstm_244/lstm_cell_64/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_244/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_244/TensorArrayV2_1TensorListReserve/lstm_244/TensorArrayV2_1/element_shape:output:0!lstm_244/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_244/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_244/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_244/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_244/whileWhile$lstm_244/while/loop_counter:output:0*lstm_244/while/maximum_iterations:output:0lstm_244/time:output:0!lstm_244/TensorArrayV2_1:handle:0lstm_244/zeros:output:0lstm_244/zeros_1:output:0!lstm_244/strided_slice_1:output:0@lstm_244/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_244_lstm_cell_64_matmul_readvariableop_resource6lstm_244_lstm_cell_64_matmul_1_readvariableop_resource5lstm_244_lstm_cell_64_biasadd_readvariableop_resource*
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
lstm_244_while_body_395338*&
condR
lstm_244_while_cond_395337*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_244/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_244/TensorArrayV2Stack/TensorListStackTensorListStacklstm_244/while:output:3Blstm_244/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_244/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_244/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_244/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_244/strided_slice_3StridedSlice4lstm_244/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_244/strided_slice_3/stack:output:0)lstm_244/strided_slice_3/stack_1:output:0)lstm_244/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_244/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_244/transpose_1	Transpose4lstm_244/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_244/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_244/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_245/ShapeShapelstm_244/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_245/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_245/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_245/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_245/strided_sliceStridedSlicelstm_245/Shape:output:0%lstm_245/strided_slice/stack:output:0'lstm_245/strided_slice/stack_1:output:0'lstm_245/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_245/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_245/zeros/packedPacklstm_245/strided_slice:output:0 lstm_245/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_245/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_245/zerosFilllstm_245/zeros/packed:output:0lstm_245/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_245/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_245/zeros_1/packedPacklstm_245/strided_slice:output:0"lstm_245/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_245/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_245/zeros_1Fill lstm_245/zeros_1/packed:output:0lstm_245/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_245/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_245/transpose	Transposelstm_244/transpose_1:y:0 lstm_245/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_245/Shape_1Shapelstm_245/transpose:y:0*
T0*
_output_shapes
:h
lstm_245/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_245/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_245/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_245/strided_slice_1StridedSlicelstm_245/Shape_1:output:0'lstm_245/strided_slice_1/stack:output:0)lstm_245/strided_slice_1/stack_1:output:0)lstm_245/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_245/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_245/TensorArrayV2TensorListReserve-lstm_245/TensorArrayV2/element_shape:output:0!lstm_245/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_245/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_245/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_245/transpose:y:0Glstm_245/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_245/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_245/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_245/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_245/strided_slice_2StridedSlicelstm_245/transpose:y:0'lstm_245/strided_slice_2/stack:output:0)lstm_245/strided_slice_2/stack_1:output:0)lstm_245/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_245/lstm_cell_65/MatMul/ReadVariableOpReadVariableOp4lstm_245_lstm_cell_65_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_245/lstm_cell_65/MatMulMatMul!lstm_245/strided_slice_2:output:03lstm_245/lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_245/lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp6lstm_245_lstm_cell_65_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_245/lstm_cell_65/MatMul_1MatMullstm_245/zeros:output:05lstm_245/lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_245/lstm_cell_65/addAddV2&lstm_245/lstm_cell_65/MatMul:product:0(lstm_245/lstm_cell_65/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_245/lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp5lstm_245_lstm_cell_65_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_245/lstm_cell_65/BiasAddBiasAddlstm_245/lstm_cell_65/add:z:04lstm_245/lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_245/lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_245/lstm_cell_65/splitSplit.lstm_245/lstm_cell_65/split/split_dim:output:0&lstm_245/lstm_cell_65/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_245/lstm_cell_65/SigmoidSigmoid$lstm_245/lstm_cell_65/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_245/lstm_cell_65/Sigmoid_1Sigmoid$lstm_245/lstm_cell_65/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_245/lstm_cell_65/mulMul#lstm_245/lstm_cell_65/Sigmoid_1:y:0lstm_245/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_245/lstm_cell_65/ReluRelu$lstm_245/lstm_cell_65/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_245/lstm_cell_65/mul_1Mul!lstm_245/lstm_cell_65/Sigmoid:y:0(lstm_245/lstm_cell_65/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_245/lstm_cell_65/add_1AddV2lstm_245/lstm_cell_65/mul:z:0lstm_245/lstm_cell_65/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_245/lstm_cell_65/Sigmoid_2Sigmoid$lstm_245/lstm_cell_65/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_245/lstm_cell_65/Relu_1Relulstm_245/lstm_cell_65/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_245/lstm_cell_65/mul_2Mul#lstm_245/lstm_cell_65/Sigmoid_2:y:0*lstm_245/lstm_cell_65/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_245/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_245/TensorArrayV2_1TensorListReserve/lstm_245/TensorArrayV2_1/element_shape:output:0!lstm_245/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_245/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_245/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_245/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_245/whileWhile$lstm_245/while/loop_counter:output:0*lstm_245/while/maximum_iterations:output:0lstm_245/time:output:0!lstm_245/TensorArrayV2_1:handle:0lstm_245/zeros:output:0lstm_245/zeros_1:output:0!lstm_245/strided_slice_1:output:0@lstm_245/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_245_lstm_cell_65_matmul_readvariableop_resource6lstm_245_lstm_cell_65_matmul_1_readvariableop_resource5lstm_245_lstm_cell_65_biasadd_readvariableop_resource*
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
lstm_245_while_body_395477*&
condR
lstm_245_while_cond_395476*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_245/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_245/TensorArrayV2Stack/TensorListStackTensorListStacklstm_245/while:output:3Blstm_245/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_245/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_245/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_245/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_245/strided_slice_3StridedSlice4lstm_245/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_245/strided_slice_3/stack:output:0)lstm_245/strided_slice_3/stack_1:output:0)lstm_245/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_245/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_245/transpose_1	Transpose4lstm_245/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_245/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_245/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_81/MatMul/ReadVariableOpReadVariableOp'dense_81_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_81/MatMulMatMul!lstm_245/strided_slice_3:output:0&dense_81/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_81/BiasAdd/ReadVariableOpReadVariableOp(dense_81_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_81/BiasAddBiasAdddense_81/MatMul:product:0'dense_81/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense_81/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙?
NoOpNoOp ^dense_81/BiasAdd/ReadVariableOp^dense_81/MatMul/ReadVariableOp-^lstm_243/lstm_cell_63/BiasAdd/ReadVariableOp,^lstm_243/lstm_cell_63/MatMul/ReadVariableOp.^lstm_243/lstm_cell_63/MatMul_1/ReadVariableOp^lstm_243/while-^lstm_244/lstm_cell_64/BiasAdd/ReadVariableOp,^lstm_244/lstm_cell_64/MatMul/ReadVariableOp.^lstm_244/lstm_cell_64/MatMul_1/ReadVariableOp^lstm_244/while-^lstm_245/lstm_cell_65/BiasAdd/ReadVariableOp,^lstm_245/lstm_cell_65/MatMul/ReadVariableOp.^lstm_245/lstm_cell_65/MatMul_1/ReadVariableOp^lstm_245/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2B
dense_81/BiasAdd/ReadVariableOpdense_81/BiasAdd/ReadVariableOp2@
dense_81/MatMul/ReadVariableOpdense_81/MatMul/ReadVariableOp2\
,lstm_243/lstm_cell_63/BiasAdd/ReadVariableOp,lstm_243/lstm_cell_63/BiasAdd/ReadVariableOp2Z
+lstm_243/lstm_cell_63/MatMul/ReadVariableOp+lstm_243/lstm_cell_63/MatMul/ReadVariableOp2^
-lstm_243/lstm_cell_63/MatMul_1/ReadVariableOp-lstm_243/lstm_cell_63/MatMul_1/ReadVariableOp2 
lstm_243/whilelstm_243/while2\
,lstm_244/lstm_cell_64/BiasAdd/ReadVariableOp,lstm_244/lstm_cell_64/BiasAdd/ReadVariableOp2Z
+lstm_244/lstm_cell_64/MatMul/ReadVariableOp+lstm_244/lstm_cell_64/MatMul/ReadVariableOp2^
-lstm_244/lstm_cell_64/MatMul_1/ReadVariableOp-lstm_244/lstm_cell_64/MatMul_1/ReadVariableOp2 
lstm_244/whilelstm_244/while2\
,lstm_245/lstm_cell_65/BiasAdd/ReadVariableOp,lstm_245/lstm_cell_65/BiasAdd/ReadVariableOp2Z
+lstm_245/lstm_cell_65/MatMul/ReadVariableOp+lstm_245/lstm_cell_65/MatMul/ReadVariableOp2^
-lstm_245/lstm_cell_65/MatMul_1/ReadVariableOp-lstm_245/lstm_cell_65/MatMul_1/ReadVariableOp2 
lstm_245/whilelstm_245/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_397328
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_397328___redundant_placeholder04
0while_while_cond_397328___redundant_placeholder14
0while_while_cond_397328___redundant_placeholder24
0while_while_cond_397328___redundant_placeholder3
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
while_cond_396096
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_396096___redundant_placeholder04
0while_while_cond_396096___redundant_placeholder14
0while_while_cond_396096___redundant_placeholder24
0while_while_cond_396096___redundant_placeholder3
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
while_cond_393447
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_393447___redundant_placeholder04
0while_while_cond_393447___redundant_placeholder14
0while_while_cond_393447___redundant_placeholder24
0while_while_cond_393447___redundant_placeholder3
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
while_cond_397757
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_397757___redundant_placeholder04
0while_while_cond_397757___redundant_placeholder14
0while_while_cond_397757___redundant_placeholder24
0while_while_cond_397757___redundant_placeholder3
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
while_cond_393940
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_393940___redundant_placeholder04
0while_while_cond_393940___redundant_placeholder14
0while_while_cond_393940___redundant_placeholder24
0while_while_cond_393940___redundant_placeholder3
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
H__inference_lstm_cell_65_layer_call_and_return_conditional_losses_398155

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
S
³
(sequential_81_lstm_244_while_body_392597J
Fsequential_81_lstm_244_while_sequential_81_lstm_244_while_loop_counterP
Lsequential_81_lstm_244_while_sequential_81_lstm_244_while_maximum_iterations,
(sequential_81_lstm_244_while_placeholder.
*sequential_81_lstm_244_while_placeholder_1.
*sequential_81_lstm_244_while_placeholder_2.
*sequential_81_lstm_244_while_placeholder_3I
Esequential_81_lstm_244_while_sequential_81_lstm_244_strided_slice_1_0
sequential_81_lstm_244_while_tensorarrayv2read_tensorlistgetitem_sequential_81_lstm_244_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_81_lstm_244_while_lstm_cell_64_matmul_readvariableop_resource_0:	dÈ_
Lsequential_81_lstm_244_while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2ÈZ
Ksequential_81_lstm_244_while_lstm_cell_64_biasadd_readvariableop_resource_0:	È)
%sequential_81_lstm_244_while_identity+
'sequential_81_lstm_244_while_identity_1+
'sequential_81_lstm_244_while_identity_2+
'sequential_81_lstm_244_while_identity_3+
'sequential_81_lstm_244_while_identity_4+
'sequential_81_lstm_244_while_identity_5G
Csequential_81_lstm_244_while_sequential_81_lstm_244_strided_slice_1
sequential_81_lstm_244_while_tensorarrayv2read_tensorlistgetitem_sequential_81_lstm_244_tensorarrayunstack_tensorlistfromtensor[
Hsequential_81_lstm_244_while_lstm_cell_64_matmul_readvariableop_resource:	dÈ]
Jsequential_81_lstm_244_while_lstm_cell_64_matmul_1_readvariableop_resource:	2ÈX
Isequential_81_lstm_244_while_lstm_cell_64_biasadd_readvariableop_resource:	È˘@sequential_81/lstm_244/while/lstm_cell_64/BiasAdd/ReadVariableOp˘?sequential_81/lstm_244/while/lstm_cell_64/MatMul/ReadVariableOp˘Asequential_81/lstm_244/while/lstm_cell_64/MatMul_1/ReadVariableOp
Nsequential_81/lstm_244/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
@sequential_81/lstm_244/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_81_lstm_244_while_tensorarrayv2read_tensorlistgetitem_sequential_81_lstm_244_tensorarrayunstack_tensorlistfromtensor_0(sequential_81_lstm_244_while_placeholderWsequential_81/lstm_244/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ë
?sequential_81/lstm_244/while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOpJsequential_81_lstm_244_while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0˙
0sequential_81/lstm_244/while/lstm_cell_64/MatMulMatMulGsequential_81/lstm_244/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_81/lstm_244/while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÏ
Asequential_81/lstm_244/while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOpLsequential_81_lstm_244_while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĉ
2sequential_81/lstm_244/while/lstm_cell_64/MatMul_1MatMul*sequential_81_lstm_244_while_placeholder_2Isequential_81/lstm_244/while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-sequential_81/lstm_244/while/lstm_cell_64/addAddV2:sequential_81/lstm_244/while/lstm_cell_64/MatMul:product:0<sequential_81/lstm_244/while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÉ
@sequential_81/lstm_244/while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOpKsequential_81_lstm_244_while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0ì
1sequential_81/lstm_244/while/lstm_cell_64/BiasAddBiasAdd1sequential_81/lstm_244/while/lstm_cell_64/add:z:0Hsequential_81/lstm_244/while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È{
9sequential_81/lstm_244/while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_81/lstm_244/while/lstm_cell_64/splitSplitBsequential_81/lstm_244/while/lstm_cell_64/split/split_dim:output:0:sequential_81/lstm_244/while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split¨
1sequential_81/lstm_244/while/lstm_cell_64/SigmoidSigmoid8sequential_81/lstm_244/while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ş
3sequential_81/lstm_244/while/lstm_cell_64/Sigmoid_1Sigmoid8sequential_81/lstm_244/while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ë
-sequential_81/lstm_244/while/lstm_cell_64/mulMul7sequential_81/lstm_244/while/lstm_cell_64/Sigmoid_1:y:0*sequential_81_lstm_244_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2˘
.sequential_81/lstm_244/while/lstm_cell_64/ReluRelu8sequential_81/lstm_244/while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ŭ
/sequential_81/lstm_244/while/lstm_cell_64/mul_1Mul5sequential_81/lstm_244/while/lstm_cell_64/Sigmoid:y:0<sequential_81/lstm_244/while/lstm_cell_64/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ò
/sequential_81/lstm_244/while/lstm_cell_64/add_1AddV21sequential_81/lstm_244/while/lstm_cell_64/mul:z:03sequential_81/lstm_244/while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ş
3sequential_81/lstm_244/while/lstm_cell_64/Sigmoid_2Sigmoid8sequential_81/lstm_244/while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
0sequential_81/lstm_244/while/lstm_cell_64/Relu_1Relu3sequential_81/lstm_244/while/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2á
/sequential_81/lstm_244/while/lstm_cell_64/mul_2Mul7sequential_81/lstm_244/while/lstm_cell_64/Sigmoid_2:y:0>sequential_81/lstm_244/while/lstm_cell_64/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
Asequential_81/lstm_244/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_81_lstm_244_while_placeholder_1(sequential_81_lstm_244_while_placeholder3sequential_81/lstm_244/while/lstm_cell_64/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_81/lstm_244/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_81/lstm_244/while/addAddV2(sequential_81_lstm_244_while_placeholder+sequential_81/lstm_244/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_81/lstm_244/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_81/lstm_244/while/add_1AddV2Fsequential_81_lstm_244_while_sequential_81_lstm_244_while_loop_counter-sequential_81/lstm_244/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_81/lstm_244/while/IdentityIdentity&sequential_81/lstm_244/while/add_1:z:0"^sequential_81/lstm_244/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_81/lstm_244/while/Identity_1IdentityLsequential_81_lstm_244_while_sequential_81_lstm_244_while_maximum_iterations"^sequential_81/lstm_244/while/NoOp*
T0*
_output_shapes
: 
'sequential_81/lstm_244/while/Identity_2Identity$sequential_81/lstm_244/while/add:z:0"^sequential_81/lstm_244/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_81/lstm_244/while/Identity_3IdentityQsequential_81/lstm_244/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_81/lstm_244/while/NoOp*
T0*
_output_shapes
: ?
'sequential_81/lstm_244/while/Identity_4Identity3sequential_81/lstm_244/while/lstm_cell_64/mul_2:z:0"^sequential_81/lstm_244/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
'sequential_81/lstm_244/while/Identity_5Identity3sequential_81/lstm_244/while/lstm_cell_64/add_1:z:0"^sequential_81/lstm_244/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ĵ
!sequential_81/lstm_244/while/NoOpNoOpA^sequential_81/lstm_244/while/lstm_cell_64/BiasAdd/ReadVariableOp@^sequential_81/lstm_244/while/lstm_cell_64/MatMul/ReadVariableOpB^sequential_81/lstm_244/while/lstm_cell_64/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_81_lstm_244_while_identity.sequential_81/lstm_244/while/Identity:output:0"[
'sequential_81_lstm_244_while_identity_10sequential_81/lstm_244/while/Identity_1:output:0"[
'sequential_81_lstm_244_while_identity_20sequential_81/lstm_244/while/Identity_2:output:0"[
'sequential_81_lstm_244_while_identity_30sequential_81/lstm_244/while/Identity_3:output:0"[
'sequential_81_lstm_244_while_identity_40sequential_81/lstm_244/while/Identity_4:output:0"[
'sequential_81_lstm_244_while_identity_50sequential_81/lstm_244/while/Identity_5:output:0"
Isequential_81_lstm_244_while_lstm_cell_64_biasadd_readvariableop_resourceKsequential_81_lstm_244_while_lstm_cell_64_biasadd_readvariableop_resource_0"
Jsequential_81_lstm_244_while_lstm_cell_64_matmul_1_readvariableop_resourceLsequential_81_lstm_244_while_lstm_cell_64_matmul_1_readvariableop_resource_0"
Hsequential_81_lstm_244_while_lstm_cell_64_matmul_readvariableop_resourceJsequential_81_lstm_244_while_lstm_cell_64_matmul_readvariableop_resource_0"
Csequential_81_lstm_244_while_sequential_81_lstm_244_strided_slice_1Esequential_81_lstm_244_while_sequential_81_lstm_244_strided_slice_1_0"
sequential_81_lstm_244_while_tensorarrayv2read_tensorlistgetitem_sequential_81_lstm_244_tensorarrayunstack_tensorlistfromtensorsequential_81_lstm_244_while_tensorarrayv2read_tensorlistgetitem_sequential_81_lstm_244_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2
@sequential_81/lstm_244/while/lstm_cell_64/BiasAdd/ReadVariableOp@sequential_81/lstm_244/while/lstm_cell_64/BiasAdd/ReadVariableOp2
?sequential_81/lstm_244/while/lstm_cell_64/MatMul/ReadVariableOp?sequential_81/lstm_244/while/lstm_cell_64/MatMul/ReadVariableOp2
Asequential_81/lstm_244/while/lstm_cell_64/MatMul_1/ReadVariableOpAsequential_81/lstm_244/while/lstm_cell_64/MatMul_1/ReadVariableOp: 
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
ħ

I__inference_sequential_81_layer_call_and_return_conditional_losses_395994

inputsG
4lstm_243_lstm_cell_63_matmul_readvariableop_resource:	I
6lstm_243_lstm_cell_63_matmul_1_readvariableop_resource:	dD
5lstm_243_lstm_cell_63_biasadd_readvariableop_resource:	G
4lstm_244_lstm_cell_64_matmul_readvariableop_resource:	dÈI
6lstm_244_lstm_cell_64_matmul_1_readvariableop_resource:	2ÈD
5lstm_244_lstm_cell_64_biasadd_readvariableop_resource:	ÈF
4lstm_245_lstm_cell_65_matmul_readvariableop_resource:2(H
6lstm_245_lstm_cell_65_matmul_1_readvariableop_resource:
(C
5lstm_245_lstm_cell_65_biasadd_readvariableop_resource:(9
'dense_81_matmul_readvariableop_resource:
6
(dense_81_biasadd_readvariableop_resource:
identity˘dense_81/BiasAdd/ReadVariableOp˘dense_81/MatMul/ReadVariableOp˘,lstm_243/lstm_cell_63/BiasAdd/ReadVariableOp˘+lstm_243/lstm_cell_63/MatMul/ReadVariableOp˘-lstm_243/lstm_cell_63/MatMul_1/ReadVariableOp˘lstm_243/while˘,lstm_244/lstm_cell_64/BiasAdd/ReadVariableOp˘+lstm_244/lstm_cell_64/MatMul/ReadVariableOp˘-lstm_244/lstm_cell_64/MatMul_1/ReadVariableOp˘lstm_244/while˘,lstm_245/lstm_cell_65/BiasAdd/ReadVariableOp˘+lstm_245/lstm_cell_65/MatMul/ReadVariableOp˘-lstm_245/lstm_cell_65/MatMul_1/ReadVariableOp˘lstm_245/whileD
lstm_243/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_243/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_243/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_243/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_243/strided_sliceStridedSlicelstm_243/Shape:output:0%lstm_243/strided_slice/stack:output:0'lstm_243/strided_slice/stack_1:output:0'lstm_243/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_243/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_243/zeros/packedPacklstm_243/strided_slice:output:0 lstm_243/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_243/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_243/zerosFilllstm_243/zeros/packed:output:0lstm_243/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d[
lstm_243/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_243/zeros_1/packedPacklstm_243/strided_slice:output:0"lstm_243/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_243/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_243/zeros_1Fill lstm_243/zeros_1/packed:output:0lstm_243/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dl
lstm_243/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_243/transpose	Transposeinputs lstm_243/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙V
lstm_243/Shape_1Shapelstm_243/transpose:y:0*
T0*
_output_shapes
:h
lstm_243/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_243/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_243/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_243/strided_slice_1StridedSlicelstm_243/Shape_1:output:0'lstm_243/strided_slice_1/stack:output:0)lstm_243/strided_slice_1/stack_1:output:0)lstm_243/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_243/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_243/TensorArrayV2TensorListReserve-lstm_243/TensorArrayV2/element_shape:output:0!lstm_243/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_243/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   û
0lstm_243/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_243/transpose:y:0Glstm_243/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_243/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_243/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_243/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_243/strided_slice_2StridedSlicelstm_243/transpose:y:0'lstm_243/strided_slice_2/stack:output:0)lstm_243/strided_slice_2/stack_1:output:0)lstm_243/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskĦ
+lstm_243/lstm_cell_63/MatMul/ReadVariableOpReadVariableOp4lstm_243_lstm_cell_63_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ħ
lstm_243/lstm_cell_63/MatMulMatMul!lstm_243/strided_slice_2:output:03lstm_243/lstm_cell_63/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-lstm_243/lstm_cell_63/MatMul_1/ReadVariableOpReadVariableOp6lstm_243_lstm_cell_63_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ğ
lstm_243/lstm_cell_63/MatMul_1MatMullstm_243/zeros:output:05lstm_243/lstm_cell_63/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
lstm_243/lstm_cell_63/addAddV2&lstm_243/lstm_cell_63/MatMul:product:0(lstm_243/lstm_cell_63/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
,lstm_243/lstm_cell_63/BiasAdd/ReadVariableOpReadVariableOp5lstm_243_lstm_cell_63_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
lstm_243/lstm_cell_63/BiasAddBiasAddlstm_243/lstm_cell_63/add:z:04lstm_243/lstm_cell_63/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
%lstm_243/lstm_cell_63/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_243/lstm_cell_63/splitSplit.lstm_243/lstm_cell_63/split/split_dim:output:0&lstm_243/lstm_cell_63/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
lstm_243/lstm_cell_63/SigmoidSigmoid$lstm_243/lstm_cell_63/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_243/lstm_cell_63/Sigmoid_1Sigmoid$lstm_243/lstm_cell_63/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_243/lstm_cell_63/mulMul#lstm_243/lstm_cell_63/Sigmoid_1:y:0lstm_243/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
lstm_243/lstm_cell_63/ReluRelu$lstm_243/lstm_cell_63/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_243/lstm_cell_63/mul_1Mul!lstm_243/lstm_cell_63/Sigmoid:y:0(lstm_243/lstm_cell_63/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_243/lstm_cell_63/add_1AddV2lstm_243/lstm_cell_63/mul:z:0lstm_243/lstm_cell_63/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_243/lstm_cell_63/Sigmoid_2Sigmoid$lstm_243/lstm_cell_63/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_243/lstm_cell_63/Relu_1Relulstm_243/lstm_cell_63/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
lstm_243/lstm_cell_63/mul_2Mul#lstm_243/lstm_cell_63/Sigmoid_2:y:0*lstm_243/lstm_cell_63/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
&lstm_243/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
lstm_243/TensorArrayV2_1TensorListReserve/lstm_243/TensorArrayV2_1/element_shape:output:0!lstm_243/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_243/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_243/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_243/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_243/whileWhile$lstm_243/while/loop_counter:output:0*lstm_243/while/maximum_iterations:output:0lstm_243/time:output:0!lstm_243/TensorArrayV2_1:handle:0lstm_243/zeros:output:0lstm_243/zeros_1:output:0!lstm_243/strided_slice_1:output:0@lstm_243/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_243_lstm_cell_63_matmul_readvariableop_resource6lstm_243_lstm_cell_63_matmul_1_readvariableop_resource5lstm_243_lstm_cell_63_biasadd_readvariableop_resource*
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
lstm_243_while_body_395626*&
condR
lstm_243_while_cond_395625*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
9lstm_243/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ŭ
+lstm_243/TensorArrayV2Stack/TensorListStackTensorListStacklstm_243/while:output:3Blstm_243/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0q
lstm_243/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_243/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_243/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_243/strided_slice_3StridedSlice4lstm_243/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_243/strided_slice_3/stack:output:0)lstm_243/strided_slice_3/stack_1:output:0)lstm_243/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskn
lstm_243/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_243/transpose_1	Transpose4lstm_243/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_243/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dd
lstm_243/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_244/ShapeShapelstm_243/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_244/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_244/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_244/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_244/strided_sliceStridedSlicelstm_244/Shape:output:0%lstm_244/strided_slice/stack:output:0'lstm_244/strided_slice/stack_1:output:0'lstm_244/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_244/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_244/zeros/packedPacklstm_244/strided_slice:output:0 lstm_244/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_244/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_244/zerosFilllstm_244/zeros/packed:output:0lstm_244/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
lstm_244/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_244/zeros_1/packedPacklstm_244/strided_slice:output:0"lstm_244/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_244/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_244/zeros_1Fill lstm_244/zeros_1/packed:output:0lstm_244/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2l
lstm_244/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_244/transpose	Transposelstm_243/transpose_1:y:0 lstm_244/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dV
lstm_244/Shape_1Shapelstm_244/transpose:y:0*
T0*
_output_shapes
:h
lstm_244/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_244/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_244/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_244/strided_slice_1StridedSlicelstm_244/Shape_1:output:0'lstm_244/strided_slice_1/stack:output:0)lstm_244/strided_slice_1/stack_1:output:0)lstm_244/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_244/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_244/TensorArrayV2TensorListReserve-lstm_244/TensorArrayV2/element_shape:output:0!lstm_244/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_244/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   û
0lstm_244/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_244/transpose:y:0Glstm_244/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_244/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_244/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_244/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_244/strided_slice_2StridedSlicelstm_244/transpose:y:0'lstm_244/strided_slice_2/stack:output:0)lstm_244/strided_slice_2/stack_1:output:0)lstm_244/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_maskĦ
+lstm_244/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp4lstm_244_lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0ħ
lstm_244/lstm_cell_64/MatMulMatMul!lstm_244/strided_slice_2:output:03lstm_244/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È?
-lstm_244/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp6lstm_244_lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ğ
lstm_244/lstm_cell_64/MatMul_1MatMullstm_244/zeros:output:05lstm_244/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È§
lstm_244/lstm_cell_64/addAddV2&lstm_244/lstm_cell_64/MatMul:product:0(lstm_244/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
,lstm_244/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp5lstm_244_lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0°
lstm_244/lstm_cell_64/BiasAddBiasAddlstm_244/lstm_cell_64/add:z:04lstm_244/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èg
%lstm_244/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_244/lstm_cell_64/splitSplit.lstm_244/lstm_cell_64/split/split_dim:output:0&lstm_244/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
lstm_244/lstm_cell_64/SigmoidSigmoid$lstm_244/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_244/lstm_cell_64/Sigmoid_1Sigmoid$lstm_244/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_244/lstm_cell_64/mulMul#lstm_244/lstm_cell_64/Sigmoid_1:y:0lstm_244/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
lstm_244/lstm_cell_64/ReluRelu$lstm_244/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_244/lstm_cell_64/mul_1Mul!lstm_244/lstm_cell_64/Sigmoid:y:0(lstm_244/lstm_cell_64/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_244/lstm_cell_64/add_1AddV2lstm_244/lstm_cell_64/mul:z:0lstm_244/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_244/lstm_cell_64/Sigmoid_2Sigmoid$lstm_244/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_244/lstm_cell_64/Relu_1Relulstm_244/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?
lstm_244/lstm_cell_64/mul_2Mul#lstm_244/lstm_cell_64/Sigmoid_2:y:0*lstm_244/lstm_cell_64/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
&lstm_244/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
lstm_244/TensorArrayV2_1TensorListReserve/lstm_244/TensorArrayV2_1/element_shape:output:0!lstm_244/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_244/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_244/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_244/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_244/whileWhile$lstm_244/while/loop_counter:output:0*lstm_244/while/maximum_iterations:output:0lstm_244/time:output:0!lstm_244/TensorArrayV2_1:handle:0lstm_244/zeros:output:0lstm_244/zeros_1:output:0!lstm_244/strided_slice_1:output:0@lstm_244/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_244_lstm_cell_64_matmul_readvariableop_resource6lstm_244_lstm_cell_64_matmul_1_readvariableop_resource5lstm_244_lstm_cell_64_biasadd_readvariableop_resource*
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
lstm_244_while_body_395765*&
condR
lstm_244_while_cond_395764*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
9lstm_244/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ŭ
+lstm_244/TensorArrayV2Stack/TensorListStackTensorListStacklstm_244/while:output:3Blstm_244/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0q
lstm_244/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_244/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_244/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_244/strided_slice_3StridedSlice4lstm_244/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_244/strided_slice_3/stack:output:0)lstm_244/strided_slice_3/stack_1:output:0)lstm_244/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskn
lstm_244/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_244/transpose_1	Transpose4lstm_244/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_244/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2d
lstm_244/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_245/ShapeShapelstm_244/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_245/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_245/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_245/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŝ
lstm_245/strided_sliceStridedSlicelstm_245/Shape:output:0%lstm_245/strided_slice/stack:output:0'lstm_245/strided_slice/stack_1:output:0'lstm_245/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_245/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_245/zeros/packedPacklstm_245/strided_slice:output:0 lstm_245/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_245/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_245/zerosFilllstm_245/zeros/packed:output:0lstm_245/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
lstm_245/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_245/zeros_1/packedPacklstm_245/strided_slice:output:0"lstm_245/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_245/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_245/zeros_1Fill lstm_245/zeros_1/packed:output:0lstm_245/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
lstm_245/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_245/transpose	Transposelstm_244/transpose_1:y:0 lstm_245/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2V
lstm_245/Shape_1Shapelstm_245/transpose:y:0*
T0*
_output_shapes
:h
lstm_245/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_245/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_245/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_245/strided_slice_1StridedSlicelstm_245/Shape_1:output:0'lstm_245/strided_slice_1/stack:output:0)lstm_245/strided_slice_1/stack_1:output:0)lstm_245/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_245/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ï
lstm_245/TensorArrayV2TensorListReserve-lstm_245/TensorArrayV2/element_shape:output:0!lstm_245/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_245/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   û
0lstm_245/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_245/transpose:y:0Glstm_245/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_245/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_245/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_245/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_245/strided_slice_2StridedSlicelstm_245/transpose:y:0'lstm_245/strided_slice_2/stack:output:0)lstm_245/strided_slice_2/stack_1:output:0)lstm_245/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask 
+lstm_245/lstm_cell_65/MatMul/ReadVariableOpReadVariableOp4lstm_245_lstm_cell_65_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0°
lstm_245/lstm_cell_65/MatMulMatMul!lstm_245/strided_slice_2:output:03lstm_245/lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¤
-lstm_245/lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp6lstm_245_lstm_cell_65_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ş
lstm_245/lstm_cell_65/MatMul_1MatMullstm_245/zeros:output:05lstm_245/lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĥ
lstm_245/lstm_cell_65/addAddV2&lstm_245/lstm_cell_65/MatMul:product:0(lstm_245/lstm_cell_65/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
,lstm_245/lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp5lstm_245_lstm_cell_65_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ż
lstm_245/lstm_cell_65/BiasAddBiasAddlstm_245/lstm_cell_65/add:z:04lstm_245/lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(g
%lstm_245/lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĝ
lstm_245/lstm_cell_65/splitSplit.lstm_245/lstm_cell_65/split/split_dim:output:0&lstm_245/lstm_cell_65/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
lstm_245/lstm_cell_65/SigmoidSigmoid$lstm_245/lstm_cell_65/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_245/lstm_cell_65/Sigmoid_1Sigmoid$lstm_245/lstm_cell_65/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_245/lstm_cell_65/mulMul#lstm_245/lstm_cell_65/Sigmoid_1:y:0lstm_245/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
lstm_245/lstm_cell_65/ReluRelu$lstm_245/lstm_cell_65/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_245/lstm_cell_65/mul_1Mul!lstm_245/lstm_cell_65/Sigmoid:y:0(lstm_245/lstm_cell_65/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_245/lstm_cell_65/add_1AddV2lstm_245/lstm_cell_65/mul:z:0lstm_245/lstm_cell_65/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_245/lstm_cell_65/Sigmoid_2Sigmoid$lstm_245/lstm_cell_65/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_245/lstm_cell_65/Relu_1Relulstm_245/lstm_cell_65/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
lstm_245/lstm_cell_65/mul_2Mul#lstm_245/lstm_cell_65/Sigmoid_2:y:0*lstm_245/lstm_cell_65/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
&lstm_245/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ó
lstm_245/TensorArrayV2_1TensorListReserve/lstm_245/TensorArrayV2_1/element_shape:output:0!lstm_245/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_245/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_245/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙]
lstm_245/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_245/whileWhile$lstm_245/while/loop_counter:output:0*lstm_245/while/maximum_iterations:output:0lstm_245/time:output:0!lstm_245/TensorArrayV2_1:handle:0lstm_245/zeros:output:0lstm_245/zeros_1:output:0!lstm_245/strided_slice_1:output:0@lstm_245/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_245_lstm_cell_65_matmul_readvariableop_resource6lstm_245_lstm_cell_65_matmul_1_readvariableop_resource5lstm_245_lstm_cell_65_biasadd_readvariableop_resource*
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
lstm_245_while_body_395904*&
condR
lstm_245_while_cond_395903*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
9lstm_245/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   Ŭ
+lstm_245/TensorArrayV2Stack/TensorListStackTensorListStacklstm_245/while:output:3Blstm_245/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0q
lstm_245/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙j
 lstm_245/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_245/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_245/strided_slice_3StridedSlice4lstm_245/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_245/strided_slice_3/stack:output:0)lstm_245/strided_slice_3/stack_1:output:0)lstm_245/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_maskn
lstm_245/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ħ
lstm_245/transpose_1	Transpose4lstm_245/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_245/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
lstm_245/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_81/MatMul/ReadVariableOpReadVariableOp'dense_81_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_81/MatMulMatMul!lstm_245/strided_slice_3:output:0&dense_81/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_81/BiasAdd/ReadVariableOpReadVariableOp(dense_81_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_81/BiasAddBiasAdddense_81/MatMul:product:0'dense_81/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense_81/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙?
NoOpNoOp ^dense_81/BiasAdd/ReadVariableOp^dense_81/MatMul/ReadVariableOp-^lstm_243/lstm_cell_63/BiasAdd/ReadVariableOp,^lstm_243/lstm_cell_63/MatMul/ReadVariableOp.^lstm_243/lstm_cell_63/MatMul_1/ReadVariableOp^lstm_243/while-^lstm_244/lstm_cell_64/BiasAdd/ReadVariableOp,^lstm_244/lstm_cell_64/MatMul/ReadVariableOp.^lstm_244/lstm_cell_64/MatMul_1/ReadVariableOp^lstm_244/while-^lstm_245/lstm_cell_65/BiasAdd/ReadVariableOp,^lstm_245/lstm_cell_65/MatMul/ReadVariableOp.^lstm_245/lstm_cell_65/MatMul_1/ReadVariableOp^lstm_245/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2B
dense_81/BiasAdd/ReadVariableOpdense_81/BiasAdd/ReadVariableOp2@
dense_81/MatMul/ReadVariableOpdense_81/MatMul/ReadVariableOp2\
,lstm_243/lstm_cell_63/BiasAdd/ReadVariableOp,lstm_243/lstm_cell_63/BiasAdd/ReadVariableOp2Z
+lstm_243/lstm_cell_63/MatMul/ReadVariableOp+lstm_243/lstm_cell_63/MatMul/ReadVariableOp2^
-lstm_243/lstm_cell_63/MatMul_1/ReadVariableOp-lstm_243/lstm_cell_63/MatMul_1/ReadVariableOp2 
lstm_243/whilelstm_243/while2\
,lstm_244/lstm_cell_64/BiasAdd/ReadVariableOp,lstm_244/lstm_cell_64/BiasAdd/ReadVariableOp2Z
+lstm_244/lstm_cell_64/MatMul/ReadVariableOp+lstm_244/lstm_cell_64/MatMul/ReadVariableOp2^
-lstm_244/lstm_cell_64/MatMul_1/ReadVariableOp-lstm_244/lstm_cell_64/MatMul_1/ReadVariableOp2 
lstm_244/whilelstm_244/while2\
,lstm_245/lstm_cell_65/BiasAdd/ReadVariableOp,lstm_245/lstm_cell_65/BiasAdd/ReadVariableOp2Z
+lstm_245/lstm_cell_65/MatMul/ReadVariableOp+lstm_245/lstm_cell_65/MatMul/ReadVariableOp2^
-lstm_245/lstm_cell_65/MatMul_1/ReadVariableOp-lstm_245/lstm_cell_65/MatMul_1/ReadVariableOp2 
lstm_245/whilelstm_245/while:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
8
?
while_body_396097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_63_matmul_readvariableop_resource_0:	H
5while_lstm_cell_63_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_63_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_63_matmul_readvariableop_resource:	F
3while_lstm_cell_63_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_63_biasadd_readvariableop_resource:	˘)while/lstm_cell_63/BiasAdd/ReadVariableOp˘(while/lstm_cell_63/MatMul/ReadVariableOp˘*while/lstm_cell_63/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_63/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_63_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_63/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_63/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_63/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_63_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_63/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_63/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_63/addAddV2#while/lstm_cell_63/MatMul:product:0%while/lstm_cell_63/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_63/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_63_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_63/BiasAddBiasAddwhile/lstm_cell_63/add:z:01while/lstm_cell_63/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_63/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_63/splitSplit+while/lstm_cell_63/split/split_dim:output:0#while/lstm_cell_63/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_63/SigmoidSigmoid!while/lstm_cell_63/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_63/Sigmoid_1Sigmoid!while/lstm_cell_63/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_63/mulMul while/lstm_cell_63/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_63/ReluRelu!while/lstm_cell_63/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_63/mul_1Mulwhile/lstm_cell_63/Sigmoid:y:0%while/lstm_cell_63/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_63/add_1AddV2while/lstm_cell_63/mul:z:0while/lstm_cell_63/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_63/Sigmoid_2Sigmoid!while/lstm_cell_63/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_63/Relu_1Reluwhile/lstm_cell_63/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_63/mul_2Mul while/lstm_cell_63/Sigmoid_2:y:0'while/lstm_cell_63/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_63/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_63/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_63/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_63/BiasAdd/ReadVariableOp)^while/lstm_cell_63/MatMul/ReadVariableOp+^while/lstm_cell_63/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_63_biasadd_readvariableop_resource4while_lstm_cell_63_biasadd_readvariableop_resource_0"l
3while_lstm_cell_63_matmul_1_readvariableop_resource5while_lstm_cell_63_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_63_matmul_readvariableop_resource3while_lstm_cell_63_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_63/BiasAdd/ReadVariableOp)while/lstm_cell_63/BiasAdd/ReadVariableOp2T
(while/lstm_cell_63/MatMul/ReadVariableOp(while/lstm_cell_63/MatMul/ReadVariableOp2X
*while/lstm_cell_63/MatMul_1/ReadVariableOp*while/lstm_cell_63/MatMul_1/ReadVariableOp: 
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
ÔJ

D__inference_lstm_245_layer_call_and_return_conditional_losses_397413
inputs_0=
+lstm_cell_65_matmul_readvariableop_resource:2(?
-lstm_cell_65_matmul_1_readvariableop_resource:
(:
,lstm_cell_65_biasadd_readvariableop_resource:(
identity˘#lstm_cell_65/BiasAdd/ReadVariableOp˘"lstm_cell_65/MatMul/ReadVariableOp˘$lstm_cell_65/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_65/MatMul/ReadVariableOpReadVariableOp+lstm_cell_65_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_65/MatMulMatMulstrided_slice_2:output:0*lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_65_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_65/MatMul_1MatMulzeros:output:0,lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_65/addAddV2lstm_cell_65/MatMul:product:0lstm_cell_65/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_65_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_65/BiasAddBiasAddlstm_cell_65/add:z:0+lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_65/splitSplit%lstm_cell_65/split/split_dim:output:0lstm_cell_65/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_65/SigmoidSigmoidlstm_cell_65/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_65/Sigmoid_1Sigmoidlstm_cell_65/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_65/mulMullstm_cell_65/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_65/ReluRelulstm_cell_65/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_65/mul_1Mullstm_cell_65/Sigmoid:y:0lstm_cell_65/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_65/add_1AddV2lstm_cell_65/mul:z:0lstm_cell_65/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_65/Sigmoid_2Sigmoidlstm_cell_65/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_65/Relu_1Relulstm_cell_65/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_65/mul_2Mullstm_cell_65/Sigmoid_2:y:0!lstm_cell_65/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_65_matmul_readvariableop_resource-lstm_cell_65_matmul_1_readvariableop_resource,lstm_cell_65_biasadd_readvariableop_resource*
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
while_body_397329*
condR
while_cond_397328*K
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
NoOpNoOp$^lstm_cell_65/BiasAdd/ReadVariableOp#^lstm_cell_65/MatMul/ReadVariableOp%^lstm_cell_65/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_65/BiasAdd/ReadVariableOp#lstm_cell_65/BiasAdd/ReadVariableOp2H
"lstm_cell_65/MatMul/ReadVariableOp"lstm_cell_65/MatMul/ReadVariableOp2L
$lstm_cell_65/MatMul_1/ReadVariableOp$lstm_cell_65/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
"
_user_specified_name
inputs/0
ë
ö
-__inference_lstm_cell_64_layer_call_fn_397976

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
H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_393243o
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
Ë

H__inference_lstm_cell_65_layer_call_and_return_conditional_losses_393739

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
while_cond_396998
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_396998___redundant_placeholder04
0while_while_cond_396998___redundant_placeholder14
0while_while_cond_396998___redundant_placeholder24
0while_while_cond_396998___redundant_placeholder3
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
while_cond_396855
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_396855___redundant_placeholder04
0while_while_cond_396855___redundant_placeholder14
0while_while_cond_396855___redundant_placeholder24
0while_while_cond_396855___redundant_placeholder3
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
âJ

D__inference_lstm_244_layer_call_and_return_conditional_losses_396940
inputs_0>
+lstm_cell_64_matmul_readvariableop_resource:	dÈ@
-lstm_cell_64_matmul_1_readvariableop_resource:	2È;
,lstm_cell_64_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_64/BiasAdd/ReadVariableOp˘"lstm_cell_64/MatMul/ReadVariableOp˘$lstm_cell_64/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_64/MatMul/ReadVariableOpReadVariableOp+lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_64/MatMulMatMulstrided_slice_2:output:0*lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_64/MatMul_1MatMulzeros:output:0,lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_64/addAddV2lstm_cell_64/MatMul:product:0lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_64/BiasAddBiasAddlstm_cell_64/add:z:0+lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_64/splitSplit%lstm_cell_64/split/split_dim:output:0lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_64/SigmoidSigmoidlstm_cell_64/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_64/Sigmoid_1Sigmoidlstm_cell_64/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_64/mulMullstm_cell_64/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_64/ReluRelulstm_cell_64/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_64/mul_1Mullstm_cell_64/Sigmoid:y:0lstm_cell_64/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_64/add_1AddV2lstm_cell_64/mul:z:0lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_64/Sigmoid_2Sigmoidlstm_cell_64/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_64/Relu_1Relulstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_64/mul_2Mullstm_cell_64/Sigmoid_2:y:0!lstm_cell_64/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_64_matmul_readvariableop_resource-lstm_cell_64_matmul_1_readvariableop_resource,lstm_cell_64_biasadd_readvariableop_resource*
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
while_body_396856*
condR
while_cond_396855*K
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
NoOpNoOp$^lstm_cell_64/BiasAdd/ReadVariableOp#^lstm_cell_64/MatMul/ReadVariableOp%^lstm_cell_64/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_64/BiasAdd/ReadVariableOp#lstm_cell_64/BiasAdd/ReadVariableOp2H
"lstm_cell_64/MatMul/ReadVariableOp"lstm_cell_64/MatMul/ReadVariableOp2L
$lstm_cell_64/MatMul_1/ReadVariableOp$lstm_cell_64/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
"
_user_specified_name
inputs/0
Ç	
ġ
D__inference_dense_81_layer_call_and_return_conditional_losses_394343

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
D__inference_lstm_245_layer_call_and_return_conditional_losses_397842

inputs=
+lstm_cell_65_matmul_readvariableop_resource:2(?
-lstm_cell_65_matmul_1_readvariableop_resource:
(:
,lstm_cell_65_biasadd_readvariableop_resource:(
identity˘#lstm_cell_65/BiasAdd/ReadVariableOp˘"lstm_cell_65/MatMul/ReadVariableOp˘$lstm_cell_65/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_65/MatMul/ReadVariableOpReadVariableOp+lstm_cell_65_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_65/MatMulMatMulstrided_slice_2:output:0*lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
$lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_65_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_65/MatMul_1MatMulzeros:output:0,lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
lstm_cell_65/addAddV2lstm_cell_65/MatMul:product:0lstm_cell_65/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
#lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_65_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_65/BiasAddBiasAddlstm_cell_65/add:z:0+lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(^
lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_65/splitSplit%lstm_cell_65/split/split_dim:output:0lstm_cell_65/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitn
lstm_cell_65/SigmoidSigmoidlstm_cell_65/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_65/Sigmoid_1Sigmoidlstm_cell_65/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
lstm_cell_65/mulMullstm_cell_65/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
lstm_cell_65/ReluRelulstm_cell_65/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_65/mul_1Mullstm_cell_65/Sigmoid:y:0lstm_cell_65/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
lstm_cell_65/add_1AddV2lstm_cell_65/mul:z:0lstm_cell_65/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
lstm_cell_65/Sigmoid_2Sigmoidlstm_cell_65/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
lstm_cell_65/Relu_1Relulstm_cell_65/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_cell_65/mul_2Mullstm_cell_65/Sigmoid_2:y:0!lstm_cell_65/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_65_matmul_readvariableop_resource-lstm_cell_65_matmul_1_readvariableop_resource,lstm_cell_65_biasadd_readvariableop_resource*
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
while_body_397758*
condR
while_cond_397757*K
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
NoOpNoOp$^lstm_cell_65/BiasAdd/ReadVariableOp#^lstm_cell_65/MatMul/ReadVariableOp%^lstm_cell_65/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : : 2J
#lstm_cell_65/BiasAdd/ReadVariableOp#lstm_cell_65/BiasAdd/ReadVariableOp2H
"lstm_cell_65/MatMul/ReadVariableOp"lstm_cell_65/MatMul/ReadVariableOp2L
$lstm_cell_65/MatMul_1/ReadVariableOp$lstm_cell_65/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
?
ó
I__inference_sequential_81_layer_call_and_return_conditional_losses_395051
lstm_243_input"
lstm_243_395024:	"
lstm_243_395026:	d
lstm_243_395028:	"
lstm_244_395031:	dÈ"
lstm_244_395033:	2È
lstm_244_395035:	È!
lstm_245_395038:2(!
lstm_245_395040:
(
lstm_245_395042:(!
dense_81_395045:

dense_81_395047:
identity˘ dense_81/StatefulPartitionedCall˘ lstm_243/StatefulPartitionedCall˘ lstm_244/StatefulPartitionedCall˘ lstm_245/StatefulPartitionedCall
 lstm_243/StatefulPartitionedCallStatefulPartitionedCalllstm_243_inputlstm_243_395024lstm_243_395026lstm_243_395028*
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
D__inference_lstm_243_layer_call_and_return_conditional_losses_394871Ş
 lstm_244/StatefulPartitionedCallStatefulPartitionedCall)lstm_243/StatefulPartitionedCall:output:0lstm_244_395031lstm_244_395033lstm_244_395035*
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
D__inference_lstm_244_layer_call_and_return_conditional_losses_394706Ĥ
 lstm_245/StatefulPartitionedCallStatefulPartitionedCall)lstm_244/StatefulPartitionedCall:output:0lstm_245_395038lstm_245_395040lstm_245_395042*
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
D__inference_lstm_245_layer_call_and_return_conditional_losses_394541
 dense_81/StatefulPartitionedCallStatefulPartitionedCall)lstm_245/StatefulPartitionedCall:output:0dense_81_395045dense_81_395047*
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
D__inference_dense_81_layer_call_and_return_conditional_losses_394343x
IdentityIdentity)dense_81/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_81/StatefulPartitionedCall!^lstm_243/StatefulPartitionedCall!^lstm_244/StatefulPartitionedCall!^lstm_245/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_81/StatefulPartitionedCall dense_81/StatefulPartitionedCall2D
 lstm_243/StatefulPartitionedCall lstm_243/StatefulPartitionedCall2D
 lstm_244/StatefulPartitionedCall lstm_244/StatefulPartitionedCall2D
 lstm_245/StatefulPartitionedCall lstm_245/StatefulPartitionedCall:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_243_input
ö
³
)__inference_lstm_245_layer_call_fn_397270

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
D__inference_lstm_245_layer_call_and_return_conditional_losses_394541o
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
Ğ
¸
)__inference_lstm_243_layer_call_fn_396005
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
D__inference_lstm_243_layer_call_and_return_conditional_losses_392976|
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
è
ó
-__inference_lstm_cell_65_layer_call_fn_398074

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
H__inference_lstm_cell_65_layer_call_and_return_conditional_losses_393593o
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
Ğ
¸
)__inference_lstm_244_layer_call_fn_396632
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
D__inference_lstm_244_layer_call_and_return_conditional_losses_393517|
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
S
­
(sequential_81_lstm_245_while_body_392736J
Fsequential_81_lstm_245_while_sequential_81_lstm_245_while_loop_counterP
Lsequential_81_lstm_245_while_sequential_81_lstm_245_while_maximum_iterations,
(sequential_81_lstm_245_while_placeholder.
*sequential_81_lstm_245_while_placeholder_1.
*sequential_81_lstm_245_while_placeholder_2.
*sequential_81_lstm_245_while_placeholder_3I
Esequential_81_lstm_245_while_sequential_81_lstm_245_strided_slice_1_0
sequential_81_lstm_245_while_tensorarrayv2read_tensorlistgetitem_sequential_81_lstm_245_tensorarrayunstack_tensorlistfromtensor_0\
Jsequential_81_lstm_245_while_lstm_cell_65_matmul_readvariableop_resource_0:2(^
Lsequential_81_lstm_245_while_lstm_cell_65_matmul_1_readvariableop_resource_0:
(Y
Ksequential_81_lstm_245_while_lstm_cell_65_biasadd_readvariableop_resource_0:()
%sequential_81_lstm_245_while_identity+
'sequential_81_lstm_245_while_identity_1+
'sequential_81_lstm_245_while_identity_2+
'sequential_81_lstm_245_while_identity_3+
'sequential_81_lstm_245_while_identity_4+
'sequential_81_lstm_245_while_identity_5G
Csequential_81_lstm_245_while_sequential_81_lstm_245_strided_slice_1
sequential_81_lstm_245_while_tensorarrayv2read_tensorlistgetitem_sequential_81_lstm_245_tensorarrayunstack_tensorlistfromtensorZ
Hsequential_81_lstm_245_while_lstm_cell_65_matmul_readvariableop_resource:2(\
Jsequential_81_lstm_245_while_lstm_cell_65_matmul_1_readvariableop_resource:
(W
Isequential_81_lstm_245_while_lstm_cell_65_biasadd_readvariableop_resource:(˘@sequential_81/lstm_245/while/lstm_cell_65/BiasAdd/ReadVariableOp˘?sequential_81/lstm_245/while/lstm_cell_65/MatMul/ReadVariableOp˘Asequential_81/lstm_245/while/lstm_cell_65/MatMul_1/ReadVariableOp
Nsequential_81/lstm_245/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
@sequential_81/lstm_245/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_81_lstm_245_while_tensorarrayv2read_tensorlistgetitem_sequential_81_lstm_245_tensorarrayunstack_tensorlistfromtensor_0(sequential_81_lstm_245_while_placeholderWsequential_81/lstm_245/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0Ê
?sequential_81/lstm_245/while/lstm_cell_65/MatMul/ReadVariableOpReadVariableOpJsequential_81_lstm_245_while_lstm_cell_65_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ŝ
0sequential_81/lstm_245/while/lstm_cell_65/MatMulMatMulGsequential_81/lstm_245/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_81/lstm_245/while/lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Î
Asequential_81/lstm_245/while/lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOpLsequential_81_lstm_245_while_lstm_cell_65_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ċ
2sequential_81/lstm_245/while/lstm_cell_65/MatMul_1MatMul*sequential_81_lstm_245_while_placeholder_2Isequential_81/lstm_245/while/lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(â
-sequential_81/lstm_245/while/lstm_cell_65/addAddV2:sequential_81/lstm_245/while/lstm_cell_65/MatMul:product:0<sequential_81/lstm_245/while/lstm_cell_65/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(È
@sequential_81/lstm_245/while/lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOpKsequential_81_lstm_245_while_lstm_cell_65_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ë
1sequential_81/lstm_245/while/lstm_cell_65/BiasAddBiasAdd1sequential_81/lstm_245/while/lstm_cell_65/add:z:0Hsequential_81/lstm_245/while/lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙({
9sequential_81/lstm_245/while/lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_81/lstm_245/while/lstm_cell_65/splitSplitBsequential_81/lstm_245/while/lstm_cell_65/split/split_dim:output:0:sequential_81/lstm_245/while/lstm_cell_65/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split¨
1sequential_81/lstm_245/while/lstm_cell_65/SigmoidSigmoid8sequential_81/lstm_245/while/lstm_cell_65/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
3sequential_81/lstm_245/while/lstm_cell_65/Sigmoid_1Sigmoid8sequential_81/lstm_245/while/lstm_cell_65/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ë
-sequential_81/lstm_245/while/lstm_cell_65/mulMul7sequential_81/lstm_245/while/lstm_cell_65/Sigmoid_1:y:0*sequential_81_lstm_245_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˘
.sequential_81/lstm_245/while/lstm_cell_65/ReluRelu8sequential_81/lstm_245/while/lstm_cell_65/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŭ
/sequential_81/lstm_245/while/lstm_cell_65/mul_1Mul5sequential_81/lstm_245/while/lstm_cell_65/Sigmoid:y:0<sequential_81/lstm_245/while/lstm_cell_65/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ò
/sequential_81/lstm_245/while/lstm_cell_65/add_1AddV21sequential_81/lstm_245/while/lstm_cell_65/mul:z:03sequential_81/lstm_245/while/lstm_cell_65/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
3sequential_81/lstm_245/while/lstm_cell_65/Sigmoid_2Sigmoid8sequential_81/lstm_245/while/lstm_cell_65/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

0sequential_81/lstm_245/while/lstm_cell_65/Relu_1Relu3sequential_81/lstm_245/while/lstm_cell_65/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
á
/sequential_81/lstm_245/while/lstm_cell_65/mul_2Mul7sequential_81/lstm_245/while/lstm_cell_65/Sigmoid_2:y:0>sequential_81/lstm_245/while/lstm_cell_65/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
Asequential_81/lstm_245/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_81_lstm_245_while_placeholder_1(sequential_81_lstm_245_while_placeholder3sequential_81/lstm_245/while/lstm_cell_65/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_81/lstm_245/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_81/lstm_245/while/addAddV2(sequential_81_lstm_245_while_placeholder+sequential_81/lstm_245/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_81/lstm_245/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_81/lstm_245/while/add_1AddV2Fsequential_81_lstm_245_while_sequential_81_lstm_245_while_loop_counter-sequential_81/lstm_245/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_81/lstm_245/while/IdentityIdentity&sequential_81/lstm_245/while/add_1:z:0"^sequential_81/lstm_245/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_81/lstm_245/while/Identity_1IdentityLsequential_81_lstm_245_while_sequential_81_lstm_245_while_maximum_iterations"^sequential_81/lstm_245/while/NoOp*
T0*
_output_shapes
: 
'sequential_81/lstm_245/while/Identity_2Identity$sequential_81/lstm_245/while/add:z:0"^sequential_81/lstm_245/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_81/lstm_245/while/Identity_3IdentityQsequential_81/lstm_245/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_81/lstm_245/while/NoOp*
T0*
_output_shapes
: ?
'sequential_81/lstm_245/while/Identity_4Identity3sequential_81/lstm_245/while/lstm_cell_65/mul_2:z:0"^sequential_81/lstm_245/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?
'sequential_81/lstm_245/while/Identity_5Identity3sequential_81/lstm_245/while/lstm_cell_65/add_1:z:0"^sequential_81/lstm_245/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĵ
!sequential_81/lstm_245/while/NoOpNoOpA^sequential_81/lstm_245/while/lstm_cell_65/BiasAdd/ReadVariableOp@^sequential_81/lstm_245/while/lstm_cell_65/MatMul/ReadVariableOpB^sequential_81/lstm_245/while/lstm_cell_65/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_81_lstm_245_while_identity.sequential_81/lstm_245/while/Identity:output:0"[
'sequential_81_lstm_245_while_identity_10sequential_81/lstm_245/while/Identity_1:output:0"[
'sequential_81_lstm_245_while_identity_20sequential_81/lstm_245/while/Identity_2:output:0"[
'sequential_81_lstm_245_while_identity_30sequential_81/lstm_245/while/Identity_3:output:0"[
'sequential_81_lstm_245_while_identity_40sequential_81/lstm_245/while/Identity_4:output:0"[
'sequential_81_lstm_245_while_identity_50sequential_81/lstm_245/while/Identity_5:output:0"
Isequential_81_lstm_245_while_lstm_cell_65_biasadd_readvariableop_resourceKsequential_81_lstm_245_while_lstm_cell_65_biasadd_readvariableop_resource_0"
Jsequential_81_lstm_245_while_lstm_cell_65_matmul_1_readvariableop_resourceLsequential_81_lstm_245_while_lstm_cell_65_matmul_1_readvariableop_resource_0"
Hsequential_81_lstm_245_while_lstm_cell_65_matmul_readvariableop_resourceJsequential_81_lstm_245_while_lstm_cell_65_matmul_readvariableop_resource_0"
Csequential_81_lstm_245_while_sequential_81_lstm_245_strided_slice_1Esequential_81_lstm_245_while_sequential_81_lstm_245_strided_slice_1_0"
sequential_81_lstm_245_while_tensorarrayv2read_tensorlistgetitem_sequential_81_lstm_245_tensorarrayunstack_tensorlistfromtensorsequential_81_lstm_245_while_tensorarrayv2read_tensorlistgetitem_sequential_81_lstm_245_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2
@sequential_81/lstm_245/while/lstm_cell_65/BiasAdd/ReadVariableOp@sequential_81/lstm_245/while/lstm_cell_65/BiasAdd/ReadVariableOp2
?sequential_81/lstm_245/while/lstm_cell_65/MatMul/ReadVariableOp?sequential_81/lstm_245/while/lstm_cell_65/MatMul/ReadVariableOp2
Asequential_81/lstm_245/while/lstm_cell_65/MatMul_1/ReadVariableOpAsequential_81/lstm_245/while/lstm_cell_65/MatMul_1/ReadVariableOp: 
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
âJ

D__inference_lstm_243_layer_call_and_return_conditional_losses_396181
inputs_0>
+lstm_cell_63_matmul_readvariableop_resource:	@
-lstm_cell_63_matmul_1_readvariableop_resource:	d;
,lstm_cell_63_biasadd_readvariableop_resource:	
identity˘#lstm_cell_63/BiasAdd/ReadVariableOp˘"lstm_cell_63/MatMul/ReadVariableOp˘$lstm_cell_63/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_63/MatMul/ReadVariableOpReadVariableOp+lstm_cell_63_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_63/MatMulMatMulstrided_slice_2:output:0*lstm_cell_63/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_63/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_63_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_63/MatMul_1MatMulzeros:output:0,lstm_cell_63/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_63/addAddV2lstm_cell_63/MatMul:product:0lstm_cell_63/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_63/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_63_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_63/BiasAddBiasAddlstm_cell_63/add:z:0+lstm_cell_63/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_63/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_63/splitSplit%lstm_cell_63/split/split_dim:output:0lstm_cell_63/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_63/SigmoidSigmoidlstm_cell_63/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_63/Sigmoid_1Sigmoidlstm_cell_63/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_63/mulMullstm_cell_63/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_63/ReluRelulstm_cell_63/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_63/mul_1Mullstm_cell_63/Sigmoid:y:0lstm_cell_63/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_63/add_1AddV2lstm_cell_63/mul:z:0lstm_cell_63/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_63/Sigmoid_2Sigmoidlstm_cell_63/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_63/Relu_1Relulstm_cell_63/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_63/mul_2Mullstm_cell_63/Sigmoid_2:y:0!lstm_cell_63/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_63_matmul_readvariableop_resource-lstm_cell_63_matmul_1_readvariableop_resource,lstm_cell_63_biasadd_readvariableop_resource*
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
while_body_396097*
condR
while_cond_396096*K
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
NoOpNoOp$^lstm_cell_63/BiasAdd/ReadVariableOp#^lstm_cell_63/MatMul/ReadVariableOp%^lstm_cell_63/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_63/BiasAdd/ReadVariableOp#lstm_cell_63/BiasAdd/ReadVariableOp2H
"lstm_cell_63/MatMul/ReadVariableOp"lstm_cell_63/MatMul/ReadVariableOp2L
$lstm_cell_63/MatMul_1/ReadVariableOp$lstm_cell_63/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
ĉ"
?
while_body_393257
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_64_393281_0:	dÈ.
while_lstm_cell_64_393283_0:	2È*
while_lstm_cell_64_393285_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_64_393281:	dÈ,
while_lstm_cell_64_393283:	2È(
while_lstm_cell_64_393285:	È˘*while/lstm_cell_64/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0³
*while/lstm_cell_64/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_64_393281_0while_lstm_cell_64_393283_0while_lstm_cell_64_393285_0*
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
H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_393243Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_64/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_64/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/Identity_5Identity3while/lstm_cell_64/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y

while/NoOpNoOp+^while/lstm_cell_64/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_64_393281while_lstm_cell_64_393281_0"8
while_lstm_cell_64_393283while_lstm_cell_64_393283_0"8
while_lstm_cell_64_393285while_lstm_cell_64_393285_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2X
*while/lstm_cell_64/StatefulPartitionedCall*while/lstm_cell_64/StatefulPartitionedCall: 
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
while_cond_397471
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_397471___redundant_placeholder04
0while_while_cond_397471___redundant_placeholder14
0while_while_cond_397471___redundant_placeholder24
0while_while_cond_397471___redundant_placeholder3
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
D__inference_lstm_243_layer_call_and_return_conditional_losses_394025

inputs>
+lstm_cell_63_matmul_readvariableop_resource:	@
-lstm_cell_63_matmul_1_readvariableop_resource:	d;
,lstm_cell_63_biasadd_readvariableop_resource:	
identity˘#lstm_cell_63/BiasAdd/ReadVariableOp˘"lstm_cell_63/MatMul/ReadVariableOp˘$lstm_cell_63/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_63/MatMul/ReadVariableOpReadVariableOp+lstm_cell_63_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_63/MatMulMatMulstrided_slice_2:output:0*lstm_cell_63/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_63/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_63_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_63/MatMul_1MatMulzeros:output:0,lstm_cell_63/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_63/addAddV2lstm_cell_63/MatMul:product:0lstm_cell_63/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_63/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_63_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_63/BiasAddBiasAddlstm_cell_63/add:z:0+lstm_cell_63/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_63/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_63/splitSplit%lstm_cell_63/split/split_dim:output:0lstm_cell_63/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_63/SigmoidSigmoidlstm_cell_63/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_63/Sigmoid_1Sigmoidlstm_cell_63/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_63/mulMullstm_cell_63/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_63/ReluRelulstm_cell_63/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_63/mul_1Mullstm_cell_63/Sigmoid:y:0lstm_cell_63/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_63/add_1AddV2lstm_cell_63/mul:z:0lstm_cell_63/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_63/Sigmoid_2Sigmoidlstm_cell_63/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_63/Relu_1Relulstm_cell_63/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_63/mul_2Mullstm_cell_63/Sigmoid_2:y:0!lstm_cell_63/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_63_matmul_readvariableop_resource-lstm_cell_63_matmul_1_readvariableop_resource,lstm_cell_63_biasadd_readvariableop_resource*
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
while_body_393941*
condR
while_cond_393940*K
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
NoOpNoOp$^lstm_cell_63/BiasAdd/ReadVariableOp#^lstm_cell_63/MatMul/ReadVariableOp%^lstm_cell_63/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_63/BiasAdd/ReadVariableOp#lstm_cell_63/BiasAdd/ReadVariableOp2H
"lstm_cell_63/MatMul/ReadVariableOp"lstm_cell_63/MatMul/ReadVariableOp2L
$lstm_cell_63/MatMul_1/ReadVariableOp$lstm_cell_63/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_394621
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_394621___redundant_placeholder04
0while_while_cond_394621___redundant_placeholder14
0while_while_cond_394621___redundant_placeholder24
0while_while_cond_394621___redundant_placeholder3
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
while_body_397142
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_64_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_64_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_64_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_64_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_64_biasadd_readvariableop_resource:	È˘)while/lstm_cell_64/BiasAdd/ReadVariableOp˘(while/lstm_cell_64/MatMul/ReadVariableOp˘*while/lstm_cell_64/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_64/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_64/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_64/addAddV2#while/lstm_cell_64/MatMul:product:0%while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_64/BiasAddBiasAddwhile/lstm_cell_64/add:z:01while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_64/splitSplit+while/lstm_cell_64/split/split_dim:output:0#while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_64/SigmoidSigmoid!while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_64/Sigmoid_1Sigmoid!while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_64/mulMul while/lstm_cell_64/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_64/ReluRelu!while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_64/mul_1Mulwhile/lstm_cell_64/Sigmoid:y:0%while/lstm_cell_64/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_64/add_1AddV2while/lstm_cell_64/mul:z:0while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_64/Sigmoid_2Sigmoid!while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_64/Relu_1Reluwhile/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_64/mul_2Mul while/lstm_cell_64/Sigmoid_2:y:0'while/lstm_cell_64/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_64/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_64/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_64/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_64_biasadd_readvariableop_resource4while_lstm_cell_64_biasadd_readvariableop_resource_0"l
3while_lstm_cell_64_matmul_1_readvariableop_resource5while_lstm_cell_64_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_64_matmul_readvariableop_resource3while_lstm_cell_64_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_64/BiasAdd/ReadVariableOp)while/lstm_cell_64/BiasAdd/ReadVariableOp2T
(while/lstm_cell_64/MatMul/ReadVariableOp(while/lstm_cell_64/MatMul/ReadVariableOp2X
*while/lstm_cell_64/MatMul_1/ReadVariableOp*while/lstm_cell_64/MatMul_1/ReadVariableOp: 
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

ĥ
)__inference_lstm_243_layer_call_fn_396027

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
D__inference_lstm_243_layer_call_and_return_conditional_losses_394025s
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

ĥ
)__inference_lstm_244_layer_call_fn_396643

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
D__inference_lstm_244_layer_call_and_return_conditional_losses_394175s
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
Ġ

H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_393389

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
D__inference_dense_81_layer_call_and_return_conditional_losses_397861

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
²

÷
lstm_244_while_cond_395764.
*lstm_244_while_lstm_244_while_loop_counter4
0lstm_244_while_lstm_244_while_maximum_iterations
lstm_244_while_placeholder 
lstm_244_while_placeholder_1 
lstm_244_while_placeholder_2 
lstm_244_while_placeholder_30
,lstm_244_while_less_lstm_244_strided_slice_1F
Blstm_244_while_lstm_244_while_cond_395764___redundant_placeholder0F
Blstm_244_while_lstm_244_while_cond_395764___redundant_placeholder1F
Blstm_244_while_lstm_244_while_cond_395764___redundant_placeholder2F
Blstm_244_while_lstm_244_while_cond_395764___redundant_placeholder3
lstm_244_while_identity

lstm_244/while/LessLesslstm_244_while_placeholder,lstm_244_while_less_lstm_244_strided_slice_1*
T0*
_output_shapes
: ]
lstm_244/while/IdentityIdentitylstm_244/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_244_while_identity lstm_244/while/Identity:output:0*(
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
(sequential_81_lstm_243_while_body_392458J
Fsequential_81_lstm_243_while_sequential_81_lstm_243_while_loop_counterP
Lsequential_81_lstm_243_while_sequential_81_lstm_243_while_maximum_iterations,
(sequential_81_lstm_243_while_placeholder.
*sequential_81_lstm_243_while_placeholder_1.
*sequential_81_lstm_243_while_placeholder_2.
*sequential_81_lstm_243_while_placeholder_3I
Esequential_81_lstm_243_while_sequential_81_lstm_243_strided_slice_1_0
sequential_81_lstm_243_while_tensorarrayv2read_tensorlistgetitem_sequential_81_lstm_243_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_81_lstm_243_while_lstm_cell_63_matmul_readvariableop_resource_0:	_
Lsequential_81_lstm_243_while_lstm_cell_63_matmul_1_readvariableop_resource_0:	dZ
Ksequential_81_lstm_243_while_lstm_cell_63_biasadd_readvariableop_resource_0:	)
%sequential_81_lstm_243_while_identity+
'sequential_81_lstm_243_while_identity_1+
'sequential_81_lstm_243_while_identity_2+
'sequential_81_lstm_243_while_identity_3+
'sequential_81_lstm_243_while_identity_4+
'sequential_81_lstm_243_while_identity_5G
Csequential_81_lstm_243_while_sequential_81_lstm_243_strided_slice_1
sequential_81_lstm_243_while_tensorarrayv2read_tensorlistgetitem_sequential_81_lstm_243_tensorarrayunstack_tensorlistfromtensor[
Hsequential_81_lstm_243_while_lstm_cell_63_matmul_readvariableop_resource:	]
Jsequential_81_lstm_243_while_lstm_cell_63_matmul_1_readvariableop_resource:	dX
Isequential_81_lstm_243_while_lstm_cell_63_biasadd_readvariableop_resource:	˘@sequential_81/lstm_243/while/lstm_cell_63/BiasAdd/ReadVariableOp˘?sequential_81/lstm_243/while/lstm_cell_63/MatMul/ReadVariableOp˘Asequential_81/lstm_243/while/lstm_cell_63/MatMul_1/ReadVariableOp
Nsequential_81/lstm_243/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
@sequential_81/lstm_243/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_81_lstm_243_while_tensorarrayv2read_tensorlistgetitem_sequential_81_lstm_243_tensorarrayunstack_tensorlistfromtensor_0(sequential_81_lstm_243_while_placeholderWsequential_81/lstm_243/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ë
?sequential_81/lstm_243/while/lstm_cell_63/MatMul/ReadVariableOpReadVariableOpJsequential_81_lstm_243_while_lstm_cell_63_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0˙
0sequential_81/lstm_243/while/lstm_cell_63/MatMulMatMulGsequential_81/lstm_243/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_81/lstm_243/while/lstm_cell_63/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ï
Asequential_81/lstm_243/while/lstm_cell_63/MatMul_1/ReadVariableOpReadVariableOpLsequential_81_lstm_243_while_lstm_cell_63_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĉ
2sequential_81/lstm_243/while/lstm_cell_63/MatMul_1MatMul*sequential_81_lstm_243_while_placeholder_2Isequential_81/lstm_243/while/lstm_cell_63/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙?
-sequential_81/lstm_243/while/lstm_cell_63/addAddV2:sequential_81/lstm_243/while/lstm_cell_63/MatMul:product:0<sequential_81/lstm_243/while/lstm_cell_63/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙É
@sequential_81/lstm_243/while/lstm_cell_63/BiasAdd/ReadVariableOpReadVariableOpKsequential_81_lstm_243_while_lstm_cell_63_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ì
1sequential_81/lstm_243/while/lstm_cell_63/BiasAddBiasAdd1sequential_81/lstm_243/while/lstm_cell_63/add:z:0Hsequential_81/lstm_243/while/lstm_cell_63/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙{
9sequential_81/lstm_243/while/lstm_cell_63/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
/sequential_81/lstm_243/while/lstm_cell_63/splitSplitBsequential_81/lstm_243/while/lstm_cell_63/split/split_dim:output:0:sequential_81/lstm_243/while/lstm_cell_63/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split¨
1sequential_81/lstm_243/while/lstm_cell_63/SigmoidSigmoid8sequential_81/lstm_243/while/lstm_cell_63/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŞ
3sequential_81/lstm_243/while/lstm_cell_63/Sigmoid_1Sigmoid8sequential_81/lstm_243/while/lstm_cell_63/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dË
-sequential_81/lstm_243/while/lstm_cell_63/mulMul7sequential_81/lstm_243/while/lstm_cell_63/Sigmoid_1:y:0*sequential_81_lstm_243_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d˘
.sequential_81/lstm_243/while/lstm_cell_63/ReluRelu8sequential_81/lstm_243/while/lstm_cell_63/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŬ
/sequential_81/lstm_243/while/lstm_cell_63/mul_1Mul5sequential_81/lstm_243/while/lstm_cell_63/Sigmoid:y:0<sequential_81/lstm_243/while/lstm_cell_63/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÒ
/sequential_81/lstm_243/while/lstm_cell_63/add_1AddV21sequential_81/lstm_243/while/lstm_cell_63/mul:z:03sequential_81/lstm_243/while/lstm_cell_63/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dŞ
3sequential_81/lstm_243/while/lstm_cell_63/Sigmoid_2Sigmoid8sequential_81/lstm_243/while/lstm_cell_63/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
0sequential_81/lstm_243/while/lstm_cell_63/Relu_1Relu3sequential_81/lstm_243/while/lstm_cell_63/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dá
/sequential_81/lstm_243/while/lstm_cell_63/mul_2Mul7sequential_81/lstm_243/while/lstm_cell_63/Sigmoid_2:y:0>sequential_81/lstm_243/while/lstm_cell_63/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
Asequential_81/lstm_243/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_81_lstm_243_while_placeholder_1(sequential_81_lstm_243_while_placeholder3sequential_81/lstm_243/while/lstm_cell_63/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒd
"sequential_81/lstm_243/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ħ
 sequential_81/lstm_243/while/addAddV2(sequential_81_lstm_243_while_placeholder+sequential_81/lstm_243/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_81/lstm_243/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_81/lstm_243/while/add_1AddV2Fsequential_81_lstm_243_while_sequential_81_lstm_243_while_loop_counter-sequential_81/lstm_243/while/add_1/y:output:0*
T0*
_output_shapes
: 
%sequential_81/lstm_243/while/IdentityIdentity&sequential_81/lstm_243/while/add_1:z:0"^sequential_81/lstm_243/while/NoOp*
T0*
_output_shapes
: Ĉ
'sequential_81/lstm_243/while/Identity_1IdentityLsequential_81_lstm_243_while_sequential_81_lstm_243_while_maximum_iterations"^sequential_81/lstm_243/while/NoOp*
T0*
_output_shapes
: 
'sequential_81/lstm_243/while/Identity_2Identity$sequential_81/lstm_243/while/add:z:0"^sequential_81/lstm_243/while/NoOp*
T0*
_output_shapes
: Ë
'sequential_81/lstm_243/while/Identity_3IdentityQsequential_81/lstm_243/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_81/lstm_243/while/NoOp*
T0*
_output_shapes
: ?
'sequential_81/lstm_243/while/Identity_4Identity3sequential_81/lstm_243/while/lstm_cell_63/mul_2:z:0"^sequential_81/lstm_243/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?
'sequential_81/lstm_243/while/Identity_5Identity3sequential_81/lstm_243/while/lstm_cell_63/add_1:z:0"^sequential_81/lstm_243/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĴ
!sequential_81/lstm_243/while/NoOpNoOpA^sequential_81/lstm_243/while/lstm_cell_63/BiasAdd/ReadVariableOp@^sequential_81/lstm_243/while/lstm_cell_63/MatMul/ReadVariableOpB^sequential_81/lstm_243/while/lstm_cell_63/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_81_lstm_243_while_identity.sequential_81/lstm_243/while/Identity:output:0"[
'sequential_81_lstm_243_while_identity_10sequential_81/lstm_243/while/Identity_1:output:0"[
'sequential_81_lstm_243_while_identity_20sequential_81/lstm_243/while/Identity_2:output:0"[
'sequential_81_lstm_243_while_identity_30sequential_81/lstm_243/while/Identity_3:output:0"[
'sequential_81_lstm_243_while_identity_40sequential_81/lstm_243/while/Identity_4:output:0"[
'sequential_81_lstm_243_while_identity_50sequential_81/lstm_243/while/Identity_5:output:0"
Isequential_81_lstm_243_while_lstm_cell_63_biasadd_readvariableop_resourceKsequential_81_lstm_243_while_lstm_cell_63_biasadd_readvariableop_resource_0"
Jsequential_81_lstm_243_while_lstm_cell_63_matmul_1_readvariableop_resourceLsequential_81_lstm_243_while_lstm_cell_63_matmul_1_readvariableop_resource_0"
Hsequential_81_lstm_243_while_lstm_cell_63_matmul_readvariableop_resourceJsequential_81_lstm_243_while_lstm_cell_63_matmul_readvariableop_resource_0"
Csequential_81_lstm_243_while_sequential_81_lstm_243_strided_slice_1Esequential_81_lstm_243_while_sequential_81_lstm_243_strided_slice_1_0"
sequential_81_lstm_243_while_tensorarrayv2read_tensorlistgetitem_sequential_81_lstm_243_tensorarrayunstack_tensorlistfromtensorsequential_81_lstm_243_while_tensorarrayv2read_tensorlistgetitem_sequential_81_lstm_243_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2
@sequential_81/lstm_243/while/lstm_cell_63/BiasAdd/ReadVariableOp@sequential_81/lstm_243/while/lstm_cell_63/BiasAdd/ReadVariableOp2
?sequential_81/lstm_243/while/lstm_cell_63/MatMul/ReadVariableOp?sequential_81/lstm_243/while/lstm_cell_63/MatMul/ReadVariableOp2
Asequential_81/lstm_243/while/lstm_cell_63/MatMul_1/ReadVariableOpAsequential_81/lstm_243/while/lstm_cell_63/MatMul_1/ReadVariableOp: 
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
²

÷
lstm_243_while_cond_395625.
*lstm_243_while_lstm_243_while_loop_counter4
0lstm_243_while_lstm_243_while_maximum_iterations
lstm_243_while_placeholder 
lstm_243_while_placeholder_1 
lstm_243_while_placeholder_2 
lstm_243_while_placeholder_30
,lstm_243_while_less_lstm_243_strided_slice_1F
Blstm_243_while_lstm_243_while_cond_395625___redundant_placeholder0F
Blstm_243_while_lstm_243_while_cond_395625___redundant_placeholder1F
Blstm_243_while_lstm_243_while_cond_395625___redundant_placeholder2F
Blstm_243_while_lstm_243_while_cond_395625___redundant_placeholder3
lstm_243_while_identity

lstm_243/while/LessLesslstm_243_while_placeholder,lstm_243_while_less_lstm_243_strided_slice_1*
T0*
_output_shapes
: ]
lstm_243/while/IdentityIdentitylstm_243/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_243_while_identity lstm_243/while/Identity:output:0*(
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
8

D__inference_lstm_244_layer_call_and_return_conditional_losses_393517

inputs&
lstm_cell_64_393435:	dÈ&
lstm_cell_64_393437:	2È"
lstm_cell_64_393439:	È
identity˘$lstm_cell_64/StatefulPartitionedCall˘while;
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
$lstm_cell_64/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_64_393435lstm_cell_64_393437lstm_cell_64_393439*
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
H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_393389n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_64_393435lstm_cell_64_393437lstm_cell_64_393439*
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
while_body_393448*
condR
while_cond_393447*K
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
NoOpNoOp%^lstm_cell_64/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d: : : 2L
$lstm_cell_64/StatefulPartitionedCall$lstm_cell_64/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
ÎB
ê

lstm_245_while_body_395477.
*lstm_245_while_lstm_245_while_loop_counter4
0lstm_245_while_lstm_245_while_maximum_iterations
lstm_245_while_placeholder 
lstm_245_while_placeholder_1 
lstm_245_while_placeholder_2 
lstm_245_while_placeholder_3-
)lstm_245_while_lstm_245_strided_slice_1_0i
elstm_245_while_tensorarrayv2read_tensorlistgetitem_lstm_245_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_245_while_lstm_cell_65_matmul_readvariableop_resource_0:2(P
>lstm_245_while_lstm_cell_65_matmul_1_readvariableop_resource_0:
(K
=lstm_245_while_lstm_cell_65_biasadd_readvariableop_resource_0:(
lstm_245_while_identity
lstm_245_while_identity_1
lstm_245_while_identity_2
lstm_245_while_identity_3
lstm_245_while_identity_4
lstm_245_while_identity_5+
'lstm_245_while_lstm_245_strided_slice_1g
clstm_245_while_tensorarrayv2read_tensorlistgetitem_lstm_245_tensorarrayunstack_tensorlistfromtensorL
:lstm_245_while_lstm_cell_65_matmul_readvariableop_resource:2(N
<lstm_245_while_lstm_cell_65_matmul_1_readvariableop_resource:
(I
;lstm_245_while_lstm_cell_65_biasadd_readvariableop_resource:(˘2lstm_245/while/lstm_cell_65/BiasAdd/ReadVariableOp˘1lstm_245/while/lstm_cell_65/MatMul/ReadVariableOp˘3lstm_245/while/lstm_cell_65/MatMul_1/ReadVariableOp
@lstm_245/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ó
2lstm_245/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_245_while_tensorarrayv2read_tensorlistgetitem_lstm_245_tensorarrayunstack_tensorlistfromtensor_0lstm_245_while_placeholderIlstm_245/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0?
1lstm_245/while/lstm_cell_65/MatMul/ReadVariableOpReadVariableOp<lstm_245_while_lstm_cell_65_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ô
"lstm_245/while/lstm_cell_65/MatMulMatMul9lstm_245/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_245/while/lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(²
3lstm_245/while/lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp>lstm_245_while_lstm_cell_65_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ğ
$lstm_245/while/lstm_cell_65/MatMul_1MatMullstm_245_while_placeholder_2;lstm_245/while/lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(¸
lstm_245/while/lstm_cell_65/addAddV2,lstm_245/while/lstm_cell_65/MatMul:product:0.lstm_245/while/lstm_cell_65/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(Ĵ
2lstm_245/while/lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp=lstm_245_while_lstm_cell_65_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Á
#lstm_245/while/lstm_cell_65/BiasAddBiasAdd#lstm_245/while/lstm_cell_65/add:z:0:lstm_245/while/lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(m
+lstm_245/while/lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_245/while/lstm_cell_65/splitSplit4lstm_245/while/lstm_cell_65/split/split_dim:output:0,lstm_245/while/lstm_cell_65/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
#lstm_245/while/lstm_cell_65/SigmoidSigmoid*lstm_245/while/lstm_cell_65/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_245/while/lstm_cell_65/Sigmoid_1Sigmoid*lstm_245/while/lstm_cell_65/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ħ
lstm_245/while/lstm_cell_65/mulMul)lstm_245/while/lstm_cell_65/Sigmoid_1:y:0lstm_245_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 lstm_245/while/lstm_cell_65/ReluRelu*lstm_245/while/lstm_cell_65/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
³
!lstm_245/while/lstm_cell_65/mul_1Mul'lstm_245/while/lstm_cell_65/Sigmoid:y:0.lstm_245/while/lstm_cell_65/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
!lstm_245/while/lstm_cell_65/add_1AddV2#lstm_245/while/lstm_cell_65/mul:z:0%lstm_245/while/lstm_cell_65/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%lstm_245/while/lstm_cell_65/Sigmoid_2Sigmoid*lstm_245/while/lstm_cell_65/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

"lstm_245/while/lstm_cell_65/Relu_1Relu%lstm_245/while/lstm_cell_65/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
·
!lstm_245/while/lstm_cell_65/mul_2Mul)lstm_245/while/lstm_cell_65/Sigmoid_2:y:00lstm_245/while/lstm_cell_65/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
3lstm_245/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_245_while_placeholder_1lstm_245_while_placeholder%lstm_245/while/lstm_cell_65/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_245/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_245/while/addAddV2lstm_245_while_placeholderlstm_245/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_245/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_245/while/add_1AddV2*lstm_245_while_lstm_245_while_loop_counterlstm_245/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_245/while/IdentityIdentitylstm_245/while/add_1:z:0^lstm_245/while/NoOp*
T0*
_output_shapes
: 
lstm_245/while/Identity_1Identity0lstm_245_while_lstm_245_while_maximum_iterations^lstm_245/while/NoOp*
T0*
_output_shapes
: t
lstm_245/while/Identity_2Identitylstm_245/while/add:z:0^lstm_245/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_245/while/Identity_3IdentityClstm_245/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_245/while/NoOp*
T0*
_output_shapes
: 
lstm_245/while/Identity_4Identity%lstm_245/while/lstm_cell_65/mul_2:z:0^lstm_245/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lstm_245/while/Identity_5Identity%lstm_245/while/lstm_cell_65/add_1:z:0^lstm_245/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
lstm_245/while/NoOpNoOp3^lstm_245/while/lstm_cell_65/BiasAdd/ReadVariableOp2^lstm_245/while/lstm_cell_65/MatMul/ReadVariableOp4^lstm_245/while/lstm_cell_65/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_245_while_identity lstm_245/while/Identity:output:0"?
lstm_245_while_identity_1"lstm_245/while/Identity_1:output:0"?
lstm_245_while_identity_2"lstm_245/while/Identity_2:output:0"?
lstm_245_while_identity_3"lstm_245/while/Identity_3:output:0"?
lstm_245_while_identity_4"lstm_245/while/Identity_4:output:0"?
lstm_245_while_identity_5"lstm_245/while/Identity_5:output:0"T
'lstm_245_while_lstm_245_strided_slice_1)lstm_245_while_lstm_245_strided_slice_1_0"|
;lstm_245_while_lstm_cell_65_biasadd_readvariableop_resource=lstm_245_while_lstm_cell_65_biasadd_readvariableop_resource_0"~
<lstm_245_while_lstm_cell_65_matmul_1_readvariableop_resource>lstm_245_while_lstm_cell_65_matmul_1_readvariableop_resource_0"z
:lstm_245_while_lstm_cell_65_matmul_readvariableop_resource<lstm_245_while_lstm_cell_65_matmul_readvariableop_resource_0"Ì
clstm_245_while_tensorarrayv2read_tensorlistgetitem_lstm_245_tensorarrayunstack_tensorlistfromtensorelstm_245_while_tensorarrayv2read_tensorlistgetitem_lstm_245_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2h
2lstm_245/while/lstm_cell_65/BiasAdd/ReadVariableOp2lstm_245/while/lstm_cell_65/BiasAdd/ReadVariableOp2f
1lstm_245/while/lstm_cell_65/MatMul/ReadVariableOp1lstm_245/while/lstm_cell_65/MatMul/ReadVariableOp2j
3lstm_245/while/lstm_cell_65/MatMul_1/ReadVariableOp3lstm_245/while/lstm_cell_65/MatMul_1/ReadVariableOp: 
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
while_cond_396239
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_396239___redundant_placeholder04
0while_while_cond_396239___redundant_placeholder14
0while_while_cond_396239___redundant_placeholder24
0while_while_cond_396239___redundant_placeholder3
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
while_cond_396382
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_396382___redundant_placeholder04
0while_while_cond_396382___redundant_placeholder14
0while_while_cond_396382___redundant_placeholder24
0while_while_cond_396382___redundant_placeholder3
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
D__inference_lstm_243_layer_call_and_return_conditional_losses_396324
inputs_0>
+lstm_cell_63_matmul_readvariableop_resource:	@
-lstm_cell_63_matmul_1_readvariableop_resource:	d;
,lstm_cell_63_biasadd_readvariableop_resource:	
identity˘#lstm_cell_63/BiasAdd/ReadVariableOp˘"lstm_cell_63/MatMul/ReadVariableOp˘$lstm_cell_63/MatMul_1/ReadVariableOp˘while=
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
"lstm_cell_63/MatMul/ReadVariableOpReadVariableOp+lstm_cell_63_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_63/MatMulMatMulstrided_slice_2:output:0*lstm_cell_63/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_63/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_63_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_63/MatMul_1MatMulzeros:output:0,lstm_cell_63/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_63/addAddV2lstm_cell_63/MatMul:product:0lstm_cell_63/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_63/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_63_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_63/BiasAddBiasAddlstm_cell_63/add:z:0+lstm_cell_63/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_63/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_63/splitSplit%lstm_cell_63/split/split_dim:output:0lstm_cell_63/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_63/SigmoidSigmoidlstm_cell_63/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_63/Sigmoid_1Sigmoidlstm_cell_63/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_63/mulMullstm_cell_63/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_63/ReluRelulstm_cell_63/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_63/mul_1Mullstm_cell_63/Sigmoid:y:0lstm_cell_63/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_63/add_1AddV2lstm_cell_63/mul:z:0lstm_cell_63/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_63/Sigmoid_2Sigmoidlstm_cell_63/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_63/Relu_1Relulstm_cell_63/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_63/mul_2Mullstm_cell_63/Sigmoid_2:y:0!lstm_cell_63/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_63_matmul_readvariableop_resource-lstm_cell_63_matmul_1_readvariableop_resource,lstm_cell_63_biasadd_readvariableop_resource*
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
while_body_396240*
condR
while_cond_396239*K
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
NoOpNoOp$^lstm_cell_63/BiasAdd/ReadVariableOp#^lstm_cell_63/MatMul/ReadVariableOp%^lstm_cell_63/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_63/BiasAdd/ReadVariableOp#lstm_cell_63/BiasAdd/ReadVariableOp2H
"lstm_cell_63/MatMul/ReadVariableOp"lstm_cell_63/MatMul/ReadVariableOp2L
$lstm_cell_63/MatMul_1/ReadVariableOp$lstm_cell_63/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0
¤J

D__inference_lstm_244_layer_call_and_return_conditional_losses_394175

inputs>
+lstm_cell_64_matmul_readvariableop_resource:	dÈ@
-lstm_cell_64_matmul_1_readvariableop_resource:	2È;
,lstm_cell_64_biasadd_readvariableop_resource:	È
identity˘#lstm_cell_64/BiasAdd/ReadVariableOp˘"lstm_cell_64/MatMul/ReadVariableOp˘$lstm_cell_64/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_64/MatMul/ReadVariableOpReadVariableOp+lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_64/MatMulMatMulstrided_slice_2:output:0*lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
$lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_64/MatMul_1MatMulzeros:output:0,lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
lstm_cell_64/addAddV2lstm_cell_64/MatMul:product:0lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
#lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_64/BiasAddBiasAddlstm_cell_64/add:z:0+lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È^
lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_64/splitSplit%lstm_cell_64/split/split_dim:output:0lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitn
lstm_cell_64/SigmoidSigmoidlstm_cell_64/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_64/Sigmoid_1Sigmoidlstm_cell_64/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
lstm_cell_64/mulMullstm_cell_64/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2h
lstm_cell_64/ReluRelulstm_cell_64/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_64/mul_1Mullstm_cell_64/Sigmoid:y:0lstm_cell_64/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2{
lstm_cell_64/add_1AddV2lstm_cell_64/mul:z:0lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
lstm_cell_64/Sigmoid_2Sigmoidlstm_cell_64/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2e
lstm_cell_64/Relu_1Relulstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_cell_64/mul_2Mullstm_cell_64/Sigmoid_2:y:0!lstm_cell_64/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_64_matmul_readvariableop_resource-lstm_cell_64_matmul_1_readvariableop_resource,lstm_cell_64_biasadd_readvariableop_resource*
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
while_body_394091*
condR
while_cond_394090*K
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
NoOpNoOp$^lstm_cell_64/BiasAdd/ReadVariableOp#^lstm_cell_64/MatMul/ReadVariableOp%^lstm_cell_64/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙d: : : 2J
#lstm_cell_64/BiasAdd/ReadVariableOp#lstm_cell_64/BiasAdd/ReadVariableOp2H
"lstm_cell_64/MatMul/ReadVariableOp"lstm_cell_64/MatMul/ReadVariableOp2L
$lstm_cell_64/MatMul_1/ReadVariableOp$lstm_cell_64/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 
_user_specified_nameinputs
˙7
Ê
while_body_397615
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_65_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_65_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_65_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_65_matmul_readvariableop_resource:2(E
3while_lstm_cell_65_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_65_biasadd_readvariableop_resource:(˘)while/lstm_cell_65/BiasAdd/ReadVariableOp˘(while/lstm_cell_65/MatMul/ReadVariableOp˘*while/lstm_cell_65/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_65/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_65_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_65/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_65_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_65/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_65/addAddV2#while/lstm_cell_65/MatMul:product:0%while/lstm_cell_65/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_65_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_65/BiasAddBiasAddwhile/lstm_cell_65/add:z:01while/lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_65/splitSplit+while/lstm_cell_65/split/split_dim:output:0#while/lstm_cell_65/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_65/SigmoidSigmoid!while/lstm_cell_65/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_65/Sigmoid_1Sigmoid!while/lstm_cell_65/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_65/mulMul while/lstm_cell_65/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_65/ReluRelu!while/lstm_cell_65/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_65/mul_1Mulwhile/lstm_cell_65/Sigmoid:y:0%while/lstm_cell_65/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_65/add_1AddV2while/lstm_cell_65/mul:z:0while/lstm_cell_65/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_65/Sigmoid_2Sigmoid!while/lstm_cell_65/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_65/Relu_1Reluwhile/lstm_cell_65/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_65/mul_2Mul while/lstm_cell_65/Sigmoid_2:y:0'while/lstm_cell_65/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_65/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_65/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_65/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_65_biasadd_readvariableop_resource4while_lstm_cell_65_biasadd_readvariableop_resource_0"l
3while_lstm_cell_65_matmul_1_readvariableop_resource5while_lstm_cell_65_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_65_matmul_readvariableop_resource3while_lstm_cell_65_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_65/BiasAdd/ReadVariableOp)while/lstm_cell_65/BiasAdd/ReadVariableOp2T
(while/lstm_cell_65/MatMul/ReadVariableOp(while/lstm_cell_65/MatMul/ReadVariableOp2X
*while/lstm_cell_65/MatMul_1/ReadVariableOp*while/lstm_cell_65/MatMul_1/ReadVariableOp: 
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
while_body_394091
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_64_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_64_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_64_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_64_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_64_biasadd_readvariableop_resource:	È˘)while/lstm_cell_64/BiasAdd/ReadVariableOp˘(while/lstm_cell_64/MatMul/ReadVariableOp˘*while/lstm_cell_64/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_64/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_64/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_64/addAddV2#while/lstm_cell_64/MatMul:product:0%while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_64/BiasAddBiasAddwhile/lstm_cell_64/add:z:01while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_64/splitSplit+while/lstm_cell_64/split/split_dim:output:0#while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_64/SigmoidSigmoid!while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_64/Sigmoid_1Sigmoid!while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_64/mulMul while/lstm_cell_64/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_64/ReluRelu!while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_64/mul_1Mulwhile/lstm_cell_64/Sigmoid:y:0%while/lstm_cell_64/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_64/add_1AddV2while/lstm_cell_64/mul:z:0while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_64/Sigmoid_2Sigmoid!while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_64/Relu_1Reluwhile/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_64/mul_2Mul while/lstm_cell_64/Sigmoid_2:y:0'while/lstm_cell_64/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_64/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_64/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_64/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_64_biasadd_readvariableop_resource4while_lstm_cell_64_biasadd_readvariableop_resource_0"l
3while_lstm_cell_64_matmul_1_readvariableop_resource5while_lstm_cell_64_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_64_matmul_readvariableop_resource3while_lstm_cell_64_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_64/BiasAdd/ReadVariableOp)while/lstm_cell_64/BiasAdd/ReadVariableOp2T
(while/lstm_cell_64/MatMul/ReadVariableOp(while/lstm_cell_64/MatMul/ReadVariableOp2X
*while/lstm_cell_64/MatMul_1/ReadVariableOp*while/lstm_cell_64/MatMul_1/ReadVariableOp: 
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
while_cond_394786
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_394786___redundant_placeholder04
0while_while_cond_394786___redundant_placeholder14
0while_while_cond_394786___redundant_placeholder24
0while_while_cond_394786___redundant_placeholder3
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
˙µ
Á
!__inference__wrapped_model_392826
lstm_243_inputU
Bsequential_81_lstm_243_lstm_cell_63_matmul_readvariableop_resource:	W
Dsequential_81_lstm_243_lstm_cell_63_matmul_1_readvariableop_resource:	dR
Csequential_81_lstm_243_lstm_cell_63_biasadd_readvariableop_resource:	U
Bsequential_81_lstm_244_lstm_cell_64_matmul_readvariableop_resource:	dÈW
Dsequential_81_lstm_244_lstm_cell_64_matmul_1_readvariableop_resource:	2ÈR
Csequential_81_lstm_244_lstm_cell_64_biasadd_readvariableop_resource:	ÈT
Bsequential_81_lstm_245_lstm_cell_65_matmul_readvariableop_resource:2(V
Dsequential_81_lstm_245_lstm_cell_65_matmul_1_readvariableop_resource:
(Q
Csequential_81_lstm_245_lstm_cell_65_biasadd_readvariableop_resource:(G
5sequential_81_dense_81_matmul_readvariableop_resource:
D
6sequential_81_dense_81_biasadd_readvariableop_resource:
identity˘-sequential_81/dense_81/BiasAdd/ReadVariableOp˘,sequential_81/dense_81/MatMul/ReadVariableOp˘:sequential_81/lstm_243/lstm_cell_63/BiasAdd/ReadVariableOp˘9sequential_81/lstm_243/lstm_cell_63/MatMul/ReadVariableOp˘;sequential_81/lstm_243/lstm_cell_63/MatMul_1/ReadVariableOp˘sequential_81/lstm_243/while˘:sequential_81/lstm_244/lstm_cell_64/BiasAdd/ReadVariableOp˘9sequential_81/lstm_244/lstm_cell_64/MatMul/ReadVariableOp˘;sequential_81/lstm_244/lstm_cell_64/MatMul_1/ReadVariableOp˘sequential_81/lstm_244/while˘:sequential_81/lstm_245/lstm_cell_65/BiasAdd/ReadVariableOp˘9sequential_81/lstm_245/lstm_cell_65/MatMul/ReadVariableOp˘;sequential_81/lstm_245/lstm_cell_65/MatMul_1/ReadVariableOp˘sequential_81/lstm_245/whileZ
sequential_81/lstm_243/ShapeShapelstm_243_input*
T0*
_output_shapes
:t
*sequential_81/lstm_243/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_81/lstm_243/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_81/lstm_243/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_81/lstm_243/strided_sliceStridedSlice%sequential_81/lstm_243/Shape:output:03sequential_81/lstm_243/strided_slice/stack:output:05sequential_81/lstm_243/strided_slice/stack_1:output:05sequential_81/lstm_243/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_81/lstm_243/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d¸
#sequential_81/lstm_243/zeros/packedPack-sequential_81/lstm_243/strided_slice:output:0.sequential_81/lstm_243/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_81/lstm_243/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_81/lstm_243/zerosFill,sequential_81/lstm_243/zeros/packed:output:0+sequential_81/lstm_243/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙di
'sequential_81/lstm_243/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dĵ
%sequential_81/lstm_243/zeros_1/packedPack-sequential_81/lstm_243/strided_slice:output:00sequential_81/lstm_243/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_81/lstm_243/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_81/lstm_243/zeros_1Fill.sequential_81/lstm_243/zeros_1/packed:output:0-sequential_81/lstm_243/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dz
%sequential_81/lstm_243/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          £
 sequential_81/lstm_243/transpose	Transposelstm_243_input.sequential_81/lstm_243/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙r
sequential_81/lstm_243/Shape_1Shape$sequential_81/lstm_243/transpose:y:0*
T0*
_output_shapes
:v
,sequential_81/lstm_243/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_81/lstm_243/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_81/lstm_243/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_81/lstm_243/strided_slice_1StridedSlice'sequential_81/lstm_243/Shape_1:output:05sequential_81/lstm_243/strided_slice_1/stack:output:07sequential_81/lstm_243/strided_slice_1/stack_1:output:07sequential_81/lstm_243/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_81/lstm_243/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_81/lstm_243/TensorArrayV2TensorListReserve;sequential_81/lstm_243/TensorArrayV2/element_shape:output:0/sequential_81/lstm_243/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_81/lstm_243/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ?
>sequential_81/lstm_243/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_81/lstm_243/transpose:y:0Usequential_81/lstm_243/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_81/lstm_243/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_81/lstm_243/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_81/lstm_243/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_81/lstm_243/strided_slice_2StridedSlice$sequential_81/lstm_243/transpose:y:05sequential_81/lstm_243/strided_slice_2/stack:output:07sequential_81/lstm_243/strided_slice_2/stack_1:output:07sequential_81/lstm_243/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask½
9sequential_81/lstm_243/lstm_cell_63/MatMul/ReadVariableOpReadVariableOpBsequential_81_lstm_243_lstm_cell_63_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Û
*sequential_81/lstm_243/lstm_cell_63/MatMulMatMul/sequential_81/lstm_243/strided_slice_2:output:0Asequential_81/lstm_243/lstm_cell_63/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
;sequential_81/lstm_243/lstm_cell_63/MatMul_1/ReadVariableOpReadVariableOpDsequential_81_lstm_243_lstm_cell_63_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ġ
,sequential_81/lstm_243/lstm_cell_63/MatMul_1MatMul%sequential_81/lstm_243/zeros:output:0Csequential_81/lstm_243/lstm_cell_63/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ñ
'sequential_81/lstm_243/lstm_cell_63/addAddV24sequential_81/lstm_243/lstm_cell_63/MatMul:product:06sequential_81/lstm_243/lstm_cell_63/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ğ
:sequential_81/lstm_243/lstm_cell_63/BiasAdd/ReadVariableOpReadVariableOpCsequential_81_lstm_243_lstm_cell_63_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ú
+sequential_81/lstm_243/lstm_cell_63/BiasAddBiasAdd+sequential_81/lstm_243/lstm_cell_63/add:z:0Bsequential_81/lstm_243/lstm_cell_63/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
3sequential_81/lstm_243/lstm_cell_63/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_81/lstm_243/lstm_cell_63/splitSplit<sequential_81/lstm_243/lstm_cell_63/split/split_dim:output:04sequential_81/lstm_243/lstm_cell_63/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
+sequential_81/lstm_243/lstm_cell_63/SigmoidSigmoid2sequential_81/lstm_243/lstm_cell_63/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
-sequential_81/lstm_243/lstm_cell_63/Sigmoid_1Sigmoid2sequential_81/lstm_243/lstm_cell_63/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĵ
'sequential_81/lstm_243/lstm_cell_63/mulMul1sequential_81/lstm_243/lstm_cell_63/Sigmoid_1:y:0'sequential_81/lstm_243/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
(sequential_81/lstm_243/lstm_cell_63/ReluRelu2sequential_81/lstm_243/lstm_cell_63/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dË
)sequential_81/lstm_243/lstm_cell_63/mul_1Mul/sequential_81/lstm_243/lstm_cell_63/Sigmoid:y:06sequential_81/lstm_243/lstm_cell_63/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÀ
)sequential_81/lstm_243/lstm_cell_63/add_1AddV2+sequential_81/lstm_243/lstm_cell_63/mul:z:0-sequential_81/lstm_243/lstm_cell_63/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
-sequential_81/lstm_243/lstm_cell_63/Sigmoid_2Sigmoid2sequential_81/lstm_243/lstm_cell_63/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
*sequential_81/lstm_243/lstm_cell_63/Relu_1Relu-sequential_81/lstm_243/lstm_cell_63/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dÏ
)sequential_81/lstm_243/lstm_cell_63/mul_2Mul1sequential_81/lstm_243/lstm_cell_63/Sigmoid_2:y:08sequential_81/lstm_243/lstm_cell_63/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
4sequential_81/lstm_243/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ŭ
&sequential_81/lstm_243/TensorArrayV2_1TensorListReserve=sequential_81/lstm_243/TensorArrayV2_1/element_shape:output:0/sequential_81/lstm_243/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_81/lstm_243/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_81/lstm_243/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_81/lstm_243/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_81/lstm_243/whileWhile2sequential_81/lstm_243/while/loop_counter:output:08sequential_81/lstm_243/while/maximum_iterations:output:0$sequential_81/lstm_243/time:output:0/sequential_81/lstm_243/TensorArrayV2_1:handle:0%sequential_81/lstm_243/zeros:output:0'sequential_81/lstm_243/zeros_1:output:0/sequential_81/lstm_243/strided_slice_1:output:0Nsequential_81/lstm_243/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_81_lstm_243_lstm_cell_63_matmul_readvariableop_resourceDsequential_81_lstm_243_lstm_cell_63_matmul_1_readvariableop_resourceCsequential_81_lstm_243_lstm_cell_63_biasadd_readvariableop_resource*
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
(sequential_81_lstm_243_while_body_392458*4
cond,R*
(sequential_81_lstm_243_while_cond_392457*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : *
parallel_iterations 
Gsequential_81/lstm_243/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   
9sequential_81/lstm_243/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_81/lstm_243/while:output:3Psequential_81/lstm_243/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
,sequential_81/lstm_243/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_81/lstm_243/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_81/lstm_243/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_81/lstm_243/strided_slice_3StridedSliceBsequential_81/lstm_243/TensorArrayV2Stack/TensorListStack:tensor:05sequential_81/lstm_243/strided_slice_3/stack:output:07sequential_81/lstm_243/strided_slice_3/stack_1:output:07sequential_81/lstm_243/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask|
'sequential_81/lstm_243/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_81/lstm_243/transpose_1	TransposeBsequential_81/lstm_243/TensorArrayV2Stack/TensorListStack:tensor:00sequential_81/lstm_243/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dr
sequential_81/lstm_243/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_81/lstm_244/ShapeShape&sequential_81/lstm_243/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_81/lstm_244/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_81/lstm_244/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_81/lstm_244/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_81/lstm_244/strided_sliceStridedSlice%sequential_81/lstm_244/Shape:output:03sequential_81/lstm_244/strided_slice/stack:output:05sequential_81/lstm_244/strided_slice/stack_1:output:05sequential_81/lstm_244/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_81/lstm_244/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2¸
#sequential_81/lstm_244/zeros/packedPack-sequential_81/lstm_244/strided_slice:output:0.sequential_81/lstm_244/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_81/lstm_244/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_81/lstm_244/zerosFill,sequential_81/lstm_244/zeros/packed:output:0+sequential_81/lstm_244/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2i
'sequential_81/lstm_244/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ĵ
%sequential_81/lstm_244/zeros_1/packedPack-sequential_81/lstm_244/strided_slice:output:00sequential_81/lstm_244/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_81/lstm_244/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_81/lstm_244/zeros_1Fill.sequential_81/lstm_244/zeros_1/packed:output:0-sequential_81/lstm_244/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2z
%sequential_81/lstm_244/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ğ
 sequential_81/lstm_244/transpose	Transpose&sequential_81/lstm_243/transpose_1:y:0.sequential_81/lstm_244/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙dr
sequential_81/lstm_244/Shape_1Shape$sequential_81/lstm_244/transpose:y:0*
T0*
_output_shapes
:v
,sequential_81/lstm_244/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_81/lstm_244/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_81/lstm_244/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_81/lstm_244/strided_slice_1StridedSlice'sequential_81/lstm_244/Shape_1:output:05sequential_81/lstm_244/strided_slice_1/stack:output:07sequential_81/lstm_244/strided_slice_1/stack_1:output:07sequential_81/lstm_244/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_81/lstm_244/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_81/lstm_244/TensorArrayV2TensorListReserve;sequential_81/lstm_244/TensorArrayV2/element_shape:output:0/sequential_81/lstm_244/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_81/lstm_244/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   ?
>sequential_81/lstm_244/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_81/lstm_244/transpose:y:0Usequential_81/lstm_244/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_81/lstm_244/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_81/lstm_244/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_81/lstm_244/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_81/lstm_244/strided_slice_2StridedSlice$sequential_81/lstm_244/transpose:y:05sequential_81/lstm_244/strided_slice_2/stack:output:07sequential_81/lstm_244/strided_slice_2/stack_1:output:07sequential_81/lstm_244/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
shrink_axis_mask½
9sequential_81/lstm_244/lstm_cell_64/MatMul/ReadVariableOpReadVariableOpBsequential_81_lstm_244_lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0Û
*sequential_81/lstm_244/lstm_cell_64/MatMulMatMul/sequential_81/lstm_244/strided_slice_2:output:0Asequential_81/lstm_244/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÁ
;sequential_81/lstm_244/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOpDsequential_81_lstm_244_lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ġ
,sequential_81/lstm_244/lstm_cell_64/MatMul_1MatMul%sequential_81/lstm_244/zeros:output:0Csequential_81/lstm_244/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈÑ
'sequential_81/lstm_244/lstm_cell_64/addAddV24sequential_81/lstm_244/lstm_cell_64/MatMul:product:06sequential_81/lstm_244/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èğ
:sequential_81/lstm_244/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOpCsequential_81_lstm_244_lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0Ú
+sequential_81/lstm_244/lstm_cell_64/BiasAddBiasAdd+sequential_81/lstm_244/lstm_cell_64/add:z:0Bsequential_81/lstm_244/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èu
3sequential_81/lstm_244/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_81/lstm_244/lstm_cell_64/splitSplit<sequential_81/lstm_244/lstm_cell_64/split/split_dim:output:04sequential_81/lstm_244/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
+sequential_81/lstm_244/lstm_cell_64/SigmoidSigmoid2sequential_81/lstm_244/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
-sequential_81/lstm_244/lstm_cell_64/Sigmoid_1Sigmoid2sequential_81/lstm_244/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ĵ
'sequential_81/lstm_244/lstm_cell_64/mulMul1sequential_81/lstm_244/lstm_cell_64/Sigmoid_1:y:0'sequential_81/lstm_244/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
(sequential_81/lstm_244/lstm_cell_64/ReluRelu2sequential_81/lstm_244/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ë
)sequential_81/lstm_244/lstm_cell_64/mul_1Mul/sequential_81/lstm_244/lstm_cell_64/Sigmoid:y:06sequential_81/lstm_244/lstm_cell_64/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2À
)sequential_81/lstm_244/lstm_cell_64/add_1AddV2+sequential_81/lstm_244/lstm_cell_64/mul:z:0-sequential_81/lstm_244/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
-sequential_81/lstm_244/lstm_cell_64/Sigmoid_2Sigmoid2sequential_81/lstm_244/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
*sequential_81/lstm_244/lstm_cell_64/Relu_1Relu-sequential_81/lstm_244/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ï
)sequential_81/lstm_244/lstm_cell_64/mul_2Mul1sequential_81/lstm_244/lstm_cell_64/Sigmoid_2:y:08sequential_81/lstm_244/lstm_cell_64/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
4sequential_81/lstm_244/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ŭ
&sequential_81/lstm_244/TensorArrayV2_1TensorListReserve=sequential_81/lstm_244/TensorArrayV2_1/element_shape:output:0/sequential_81/lstm_244/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_81/lstm_244/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_81/lstm_244/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_81/lstm_244/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_81/lstm_244/whileWhile2sequential_81/lstm_244/while/loop_counter:output:08sequential_81/lstm_244/while/maximum_iterations:output:0$sequential_81/lstm_244/time:output:0/sequential_81/lstm_244/TensorArrayV2_1:handle:0%sequential_81/lstm_244/zeros:output:0'sequential_81/lstm_244/zeros_1:output:0/sequential_81/lstm_244/strided_slice_1:output:0Nsequential_81/lstm_244/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_81_lstm_244_lstm_cell_64_matmul_readvariableop_resourceDsequential_81_lstm_244_lstm_cell_64_matmul_1_readvariableop_resourceCsequential_81_lstm_244_lstm_cell_64_biasadd_readvariableop_resource*
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
(sequential_81_lstm_244_while_body_392597*4
cond,R*
(sequential_81_lstm_244_while_cond_392596*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : *
parallel_iterations 
Gsequential_81/lstm_244/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   
9sequential_81/lstm_244/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_81/lstm_244/while:output:3Psequential_81/lstm_244/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
,sequential_81/lstm_244/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_81/lstm_244/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_81/lstm_244/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_81/lstm_244/strided_slice_3StridedSliceBsequential_81/lstm_244/TensorArrayV2Stack/TensorListStack:tensor:05sequential_81/lstm_244/strided_slice_3/stack:output:07sequential_81/lstm_244/strided_slice_3/stack_1:output:07sequential_81/lstm_244/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_mask|
'sequential_81/lstm_244/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_81/lstm_244/transpose_1	TransposeBsequential_81/lstm_244/TensorArrayV2Stack/TensorListStack:tensor:00sequential_81/lstm_244/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2r
sequential_81/lstm_244/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_81/lstm_245/ShapeShape&sequential_81/lstm_244/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_81/lstm_245/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_81/lstm_245/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_81/lstm_245/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_81/lstm_245/strided_sliceStridedSlice%sequential_81/lstm_245/Shape:output:03sequential_81/lstm_245/strided_slice/stack:output:05sequential_81/lstm_245/strided_slice/stack_1:output:05sequential_81/lstm_245/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_81/lstm_245/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
¸
#sequential_81/lstm_245/zeros/packedPack-sequential_81/lstm_245/strided_slice:output:0.sequential_81/lstm_245/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_81/lstm_245/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ħ
sequential_81/lstm_245/zerosFill,sequential_81/lstm_245/zeros/packed:output:0+sequential_81/lstm_245/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
'sequential_81/lstm_245/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ĵ
%sequential_81/lstm_245/zeros_1/packedPack-sequential_81/lstm_245/strided_slice:output:00sequential_81/lstm_245/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_81/lstm_245/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
sequential_81/lstm_245/zeros_1Fill.sequential_81/lstm_245/zeros_1/packed:output:0-sequential_81/lstm_245/zeros_1/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
%sequential_81/lstm_245/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ğ
 sequential_81/lstm_245/transpose	Transpose&sequential_81/lstm_244/transpose_1:y:0.sequential_81/lstm_245/transpose/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2r
sequential_81/lstm_245/Shape_1Shape$sequential_81/lstm_245/transpose:y:0*
T0*
_output_shapes
:v
,sequential_81/lstm_245/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_81/lstm_245/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_81/lstm_245/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_81/lstm_245/strided_slice_1StridedSlice'sequential_81/lstm_245/Shape_1:output:05sequential_81/lstm_245/strided_slice_1/stack:output:07sequential_81/lstm_245/strided_slice_1/stack_1:output:07sequential_81/lstm_245/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_81/lstm_245/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ù
$sequential_81/lstm_245/TensorArrayV2TensorListReserve;sequential_81/lstm_245/TensorArrayV2/element_shape:output:0/sequential_81/lstm_245/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Lsequential_81/lstm_245/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   ?
>sequential_81/lstm_245/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_81/lstm_245/transpose:y:0Usequential_81/lstm_245/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
,sequential_81/lstm_245/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_81/lstm_245/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_81/lstm_245/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
&sequential_81/lstm_245/strided_slice_2StridedSlice$sequential_81/lstm_245/transpose:y:05sequential_81/lstm_245/strided_slice_2/stack:output:07sequential_81/lstm_245/strided_slice_2/stack_1:output:07sequential_81/lstm_245/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
shrink_axis_maskĵ
9sequential_81/lstm_245/lstm_cell_65/MatMul/ReadVariableOpReadVariableOpBsequential_81_lstm_245_lstm_cell_65_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ú
*sequential_81/lstm_245/lstm_cell_65/MatMulMatMul/sequential_81/lstm_245/strided_slice_2:output:0Asequential_81/lstm_245/lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(À
;sequential_81/lstm_245/lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOpDsequential_81_lstm_245_lstm_cell_65_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ô
,sequential_81/lstm_245/lstm_cell_65/MatMul_1MatMul%sequential_81/lstm_245/zeros:output:0Csequential_81/lstm_245/lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(?
'sequential_81/lstm_245/lstm_cell_65/addAddV24sequential_81/lstm_245/lstm_cell_65/MatMul:product:06sequential_81/lstm_245/lstm_cell_65/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(ş
:sequential_81/lstm_245/lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOpCsequential_81_lstm_245_lstm_cell_65_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ù
+sequential_81/lstm_245/lstm_cell_65/BiasAddBiasAdd+sequential_81/lstm_245/lstm_cell_65/add:z:0Bsequential_81/lstm_245/lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(u
3sequential_81/lstm_245/lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˘
)sequential_81/lstm_245/lstm_cell_65/splitSplit<sequential_81/lstm_245/lstm_cell_65/split/split_dim:output:04sequential_81/lstm_245/lstm_cell_65/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_split
+sequential_81/lstm_245/lstm_cell_65/SigmoidSigmoid2sequential_81/lstm_245/lstm_cell_65/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

-sequential_81/lstm_245/lstm_cell_65/Sigmoid_1Sigmoid2sequential_81/lstm_245/lstm_cell_65/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĵ
'sequential_81/lstm_245/lstm_cell_65/mulMul1sequential_81/lstm_245/lstm_cell_65/Sigmoid_1:y:0'sequential_81/lstm_245/zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

(sequential_81/lstm_245/lstm_cell_65/ReluRelu2sequential_81/lstm_245/lstm_cell_65/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ë
)sequential_81/lstm_245/lstm_cell_65/mul_1Mul/sequential_81/lstm_245/lstm_cell_65/Sigmoid:y:06sequential_81/lstm_245/lstm_cell_65/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
À
)sequential_81/lstm_245/lstm_cell_65/add_1AddV2+sequential_81/lstm_245/lstm_cell_65/mul:z:0-sequential_81/lstm_245/lstm_cell_65/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

-sequential_81/lstm_245/lstm_cell_65/Sigmoid_2Sigmoid2sequential_81/lstm_245/lstm_cell_65/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

*sequential_81/lstm_245/lstm_cell_65/Relu_1Relu-sequential_81/lstm_245/lstm_cell_65/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ï
)sequential_81/lstm_245/lstm_cell_65/mul_2Mul1sequential_81/lstm_245/lstm_cell_65/Sigmoid_2:y:08sequential_81/lstm_245/lstm_cell_65/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

4sequential_81/lstm_245/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   ŭ
&sequential_81/lstm_245/TensorArrayV2_1TensorListReserve=sequential_81/lstm_245/TensorArrayV2_1/element_shape:output:0/sequential_81/lstm_245/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ]
sequential_81/lstm_245/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_81/lstm_245/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙k
)sequential_81/lstm_245/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_81/lstm_245/whileWhile2sequential_81/lstm_245/while/loop_counter:output:08sequential_81/lstm_245/while/maximum_iterations:output:0$sequential_81/lstm_245/time:output:0/sequential_81/lstm_245/TensorArrayV2_1:handle:0%sequential_81/lstm_245/zeros:output:0'sequential_81/lstm_245/zeros_1:output:0/sequential_81/lstm_245/strided_slice_1:output:0Nsequential_81/lstm_245/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_81_lstm_245_lstm_cell_65_matmul_readvariableop_resourceDsequential_81_lstm_245_lstm_cell_65_matmul_1_readvariableop_resourceCsequential_81_lstm_245_lstm_cell_65_biasadd_readvariableop_resource*
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
(sequential_81_lstm_245_while_body_392736*4
cond,R*
(sequential_81_lstm_245_while_cond_392735*K
output_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : *
parallel_iterations 
Gsequential_81/lstm_245/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙
   
9sequential_81/lstm_245/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_81/lstm_245/while:output:3Psequential_81/lstm_245/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
element_dtype0
,sequential_81/lstm_245/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙x
.sequential_81/lstm_245/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_81/lstm_245/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ú
&sequential_81/lstm_245/strided_slice_3StridedSliceBsequential_81/lstm_245/TensorArrayV2Stack/TensorListStack:tensor:05sequential_81/lstm_245/strided_slice_3/stack:output:07sequential_81/lstm_245/strided_slice_3/stack_1:output:07sequential_81/lstm_245/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shrink_axis_mask|
'sequential_81/lstm_245/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Û
"sequential_81/lstm_245/transpose_1	TransposeBsequential_81/lstm_245/TensorArrayV2Stack/TensorListStack:tensor:00sequential_81/lstm_245/transpose_1/perm:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
sequential_81/lstm_245/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ˘
,sequential_81/dense_81/MatMul/ReadVariableOpReadVariableOp5sequential_81_dense_81_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0À
sequential_81/dense_81/MatMulMatMul/sequential_81/lstm_245/strided_slice_3:output:04sequential_81/dense_81/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
-sequential_81/dense_81/BiasAdd/ReadVariableOpReadVariableOp6sequential_81_dense_81_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ğ
sequential_81/dense_81/BiasAddBiasAdd'sequential_81/dense_81/MatMul:product:05sequential_81/dense_81/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙v
IdentityIdentity'sequential_81/dense_81/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙§
NoOpNoOp.^sequential_81/dense_81/BiasAdd/ReadVariableOp-^sequential_81/dense_81/MatMul/ReadVariableOp;^sequential_81/lstm_243/lstm_cell_63/BiasAdd/ReadVariableOp:^sequential_81/lstm_243/lstm_cell_63/MatMul/ReadVariableOp<^sequential_81/lstm_243/lstm_cell_63/MatMul_1/ReadVariableOp^sequential_81/lstm_243/while;^sequential_81/lstm_244/lstm_cell_64/BiasAdd/ReadVariableOp:^sequential_81/lstm_244/lstm_cell_64/MatMul/ReadVariableOp<^sequential_81/lstm_244/lstm_cell_64/MatMul_1/ReadVariableOp^sequential_81/lstm_244/while;^sequential_81/lstm_245/lstm_cell_65/BiasAdd/ReadVariableOp:^sequential_81/lstm_245/lstm_cell_65/MatMul/ReadVariableOp<^sequential_81/lstm_245/lstm_cell_65/MatMul_1/ReadVariableOp^sequential_81/lstm_245/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2^
-sequential_81/dense_81/BiasAdd/ReadVariableOp-sequential_81/dense_81/BiasAdd/ReadVariableOp2\
,sequential_81/dense_81/MatMul/ReadVariableOp,sequential_81/dense_81/MatMul/ReadVariableOp2x
:sequential_81/lstm_243/lstm_cell_63/BiasAdd/ReadVariableOp:sequential_81/lstm_243/lstm_cell_63/BiasAdd/ReadVariableOp2v
9sequential_81/lstm_243/lstm_cell_63/MatMul/ReadVariableOp9sequential_81/lstm_243/lstm_cell_63/MatMul/ReadVariableOp2z
;sequential_81/lstm_243/lstm_cell_63/MatMul_1/ReadVariableOp;sequential_81/lstm_243/lstm_cell_63/MatMul_1/ReadVariableOp2<
sequential_81/lstm_243/whilesequential_81/lstm_243/while2x
:sequential_81/lstm_244/lstm_cell_64/BiasAdd/ReadVariableOp:sequential_81/lstm_244/lstm_cell_64/BiasAdd/ReadVariableOp2v
9sequential_81/lstm_244/lstm_cell_64/MatMul/ReadVariableOp9sequential_81/lstm_244/lstm_cell_64/MatMul/ReadVariableOp2z
;sequential_81/lstm_244/lstm_cell_64/MatMul_1/ReadVariableOp;sequential_81/lstm_244/lstm_cell_64/MatMul_1/ReadVariableOp2<
sequential_81/lstm_244/whilesequential_81/lstm_244/while2x
:sequential_81/lstm_245/lstm_cell_65/BiasAdd/ReadVariableOp:sequential_81/lstm_245/lstm_cell_65/BiasAdd/ReadVariableOp2v
9sequential_81/lstm_245/lstm_cell_65/MatMul/ReadVariableOp9sequential_81/lstm_245/lstm_cell_65/MatMul/ReadVariableOp2z
;sequential_81/lstm_245/lstm_cell_65/MatMul_1/ReadVariableOp;sequential_81/lstm_245/lstm_cell_65/MatMul_1/ReadVariableOp2<
sequential_81/lstm_245/whilesequential_81/lstm_245/while:[ W
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_namelstm_243_input
Ú


.__inference_sequential_81_layer_call_fn_395113

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
I__inference_sequential_81_layer_call_and_return_conditional_losses_394350o
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
8
?
while_body_396999
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_64_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_64_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_64_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_64_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_64_biasadd_readvariableop_resource:	È˘)while/lstm_cell_64/BiasAdd/ReadVariableOp˘(while/lstm_cell_64/MatMul/ReadVariableOp˘*while/lstm_cell_64/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0
(while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ş
while/lstm_cell_64/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÈĦ
*while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0Ħ
while/lstm_cell_64/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
while/lstm_cell_64/addAddV2#while/lstm_cell_64/MatMul:product:0%while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È
)while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_64/BiasAddBiasAddwhile/lstm_cell_64/add:z:01while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èd
"while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_64/splitSplit+while/lstm_cell_64/split/split_dim:output:0#while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_splitz
while/lstm_cell_64/SigmoidSigmoid!while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_64/Sigmoid_1Sigmoid!while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_64/mulMul while/lstm_cell_64/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2t
while/lstm_cell_64/ReluRelu!while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_64/mul_1Mulwhile/lstm_cell_64/Sigmoid:y:0%while/lstm_cell_64/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_64/add_1AddV2while/lstm_cell_64/mul:z:0while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2|
while/lstm_cell_64/Sigmoid_2Sigmoid!while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
while/lstm_cell_64/Relu_1Reluwhile/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
while/lstm_cell_64/mul_2Mul while/lstm_cell_64/Sigmoid_2:y:0'while/lstm_cell_64/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_64/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_64/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2y
while/Identity_5Identitywhile/lstm_cell_64/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2?

while/NoOpNoOp*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_64_biasadd_readvariableop_resource4while_lstm_cell_64_biasadd_readvariableop_resource_0"l
3while_lstm_cell_64_matmul_1_readvariableop_resource5while_lstm_cell_64_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_64_matmul_readvariableop_resource3while_lstm_cell_64_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2V
)while/lstm_cell_64/BiasAdd/ReadVariableOp)while/lstm_cell_64/BiasAdd/ReadVariableOp2T
(while/lstm_cell_64/MatMul/ReadVariableOp(while/lstm_cell_64/MatMul/ReadVariableOp2X
*while/lstm_cell_64/MatMul_1/ReadVariableOp*while/lstm_cell_64/MatMul_1/ReadVariableOp: 
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
while_cond_394240
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_394240___redundant_placeholder04
0while_while_cond_394240___redundant_placeholder14
0while_while_cond_394240___redundant_placeholder24
0while_while_cond_394240___redundant_placeholder3
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
ÛB
?

lstm_243_while_body_395626.
*lstm_243_while_lstm_243_while_loop_counter4
0lstm_243_while_lstm_243_while_maximum_iterations
lstm_243_while_placeholder 
lstm_243_while_placeholder_1 
lstm_243_while_placeholder_2 
lstm_243_while_placeholder_3-
)lstm_243_while_lstm_243_strided_slice_1_0i
elstm_243_while_tensorarrayv2read_tensorlistgetitem_lstm_243_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_243_while_lstm_cell_63_matmul_readvariableop_resource_0:	Q
>lstm_243_while_lstm_cell_63_matmul_1_readvariableop_resource_0:	dL
=lstm_243_while_lstm_cell_63_biasadd_readvariableop_resource_0:	
lstm_243_while_identity
lstm_243_while_identity_1
lstm_243_while_identity_2
lstm_243_while_identity_3
lstm_243_while_identity_4
lstm_243_while_identity_5+
'lstm_243_while_lstm_243_strided_slice_1g
clstm_243_while_tensorarrayv2read_tensorlistgetitem_lstm_243_tensorarrayunstack_tensorlistfromtensorM
:lstm_243_while_lstm_cell_63_matmul_readvariableop_resource:	O
<lstm_243_while_lstm_cell_63_matmul_1_readvariableop_resource:	dJ
;lstm_243_while_lstm_cell_63_biasadd_readvariableop_resource:	˘2lstm_243/while/lstm_cell_63/BiasAdd/ReadVariableOp˘1lstm_243/while/lstm_cell_63/MatMul/ReadVariableOp˘3lstm_243/while/lstm_cell_63/MatMul_1/ReadVariableOp
@lstm_243/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ó
2lstm_243/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_243_while_tensorarrayv2read_tensorlistgetitem_lstm_243_tensorarrayunstack_tensorlistfromtensor_0lstm_243_while_placeholderIlstm_243/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0Ż
1lstm_243/while/lstm_cell_63/MatMul/ReadVariableOpReadVariableOp<lstm_243_while_lstm_cell_63_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ġ
"lstm_243/while/lstm_cell_63/MatMulMatMul9lstm_243/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_243/while/lstm_cell_63/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙³
3lstm_243/while/lstm_cell_63/MatMul_1/ReadVariableOpReadVariableOp>lstm_243_while_lstm_cell_63_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ĵ
$lstm_243/while/lstm_cell_63/MatMul_1MatMullstm_243_while_placeholder_2;lstm_243/while/lstm_cell_63/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ı
lstm_243/while/lstm_cell_63/addAddV2,lstm_243/while/lstm_cell_63/MatMul:product:0.lstm_243/while/lstm_cell_63/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
2lstm_243/while/lstm_cell_63/BiasAdd/ReadVariableOpReadVariableOp=lstm_243_while_lstm_cell_63_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Â
#lstm_243/while/lstm_cell_63/BiasAddBiasAdd#lstm_243/while/lstm_cell_63/add:z:0:lstm_243/while/lstm_cell_63/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
+lstm_243/while/lstm_cell_63/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_243/while/lstm_cell_63/splitSplit4lstm_243/while/lstm_cell_63/split/split_dim:output:0,lstm_243/while/lstm_cell_63/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_split
#lstm_243/while/lstm_cell_63/SigmoidSigmoid*lstm_243/while/lstm_cell_63/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_243/while/lstm_cell_63/Sigmoid_1Sigmoid*lstm_243/while/lstm_cell_63/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĦ
lstm_243/while/lstm_cell_63/mulMul)lstm_243/while/lstm_cell_63/Sigmoid_1:y:0lstm_243_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
 lstm_243/while/lstm_cell_63/ReluRelu*lstm_243/while/lstm_cell_63/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d³
!lstm_243/while/lstm_cell_63/mul_1Mul'lstm_243/while/lstm_cell_63/Sigmoid:y:0.lstm_243/while/lstm_cell_63/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d¨
!lstm_243/while/lstm_cell_63/add_1AddV2#lstm_243/while/lstm_cell_63/mul:z:0%lstm_243/while/lstm_cell_63/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
%lstm_243/while/lstm_cell_63/Sigmoid_2Sigmoid*lstm_243/while/lstm_cell_63/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"lstm_243/while/lstm_cell_63/Relu_1Relu%lstm_243/while/lstm_cell_63/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d·
!lstm_243/while/lstm_cell_63/mul_2Mul)lstm_243/while/lstm_cell_63/Sigmoid_2:y:00lstm_243/while/lstm_cell_63/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dé
3lstm_243/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_243_while_placeholder_1lstm_243_while_placeholder%lstm_243/while/lstm_cell_63/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_243/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_243/while/addAddV2lstm_243_while_placeholderlstm_243/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_243/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_243/while/add_1AddV2*lstm_243_while_lstm_243_while_loop_counterlstm_243/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_243/while/IdentityIdentitylstm_243/while/add_1:z:0^lstm_243/while/NoOp*
T0*
_output_shapes
: 
lstm_243/while/Identity_1Identity0lstm_243_while_lstm_243_while_maximum_iterations^lstm_243/while/NoOp*
T0*
_output_shapes
: t
lstm_243/while/Identity_2Identitylstm_243/while/add:z:0^lstm_243/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_243/while/Identity_3IdentityClstm_243/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_243/while/NoOp*
T0*
_output_shapes
: 
lstm_243/while/Identity_4Identity%lstm_243/while/lstm_cell_63/mul_2:z:0^lstm_243/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_243/while/Identity_5Identity%lstm_243/while/lstm_cell_63/add_1:z:0^lstm_243/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dô
lstm_243/while/NoOpNoOp3^lstm_243/while/lstm_cell_63/BiasAdd/ReadVariableOp2^lstm_243/while/lstm_cell_63/MatMul/ReadVariableOp4^lstm_243/while/lstm_cell_63/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_243_while_identity lstm_243/while/Identity:output:0"?
lstm_243_while_identity_1"lstm_243/while/Identity_1:output:0"?
lstm_243_while_identity_2"lstm_243/while/Identity_2:output:0"?
lstm_243_while_identity_3"lstm_243/while/Identity_3:output:0"?
lstm_243_while_identity_4"lstm_243/while/Identity_4:output:0"?
lstm_243_while_identity_5"lstm_243/while/Identity_5:output:0"T
'lstm_243_while_lstm_243_strided_slice_1)lstm_243_while_lstm_243_strided_slice_1_0"|
;lstm_243_while_lstm_cell_63_biasadd_readvariableop_resource=lstm_243_while_lstm_cell_63_biasadd_readvariableop_resource_0"~
<lstm_243_while_lstm_cell_63_matmul_1_readvariableop_resource>lstm_243_while_lstm_cell_63_matmul_1_readvariableop_resource_0"z
:lstm_243_while_lstm_cell_63_matmul_readvariableop_resource<lstm_243_while_lstm_cell_63_matmul_readvariableop_resource_0"Ì
clstm_243_while_tensorarrayv2read_tensorlistgetitem_lstm_243_tensorarrayunstack_tensorlistfromtensorelstm_243_while_tensorarrayv2read_tensorlistgetitem_lstm_243_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2h
2lstm_243/while/lstm_cell_63/BiasAdd/ReadVariableOp2lstm_243/while/lstm_cell_63/BiasAdd/ReadVariableOp2f
1lstm_243/while/lstm_cell_63/MatMul/ReadVariableOp1lstm_243/while/lstm_cell_63/MatMul/ReadVariableOp2j
3lstm_243/while/lstm_cell_63/MatMul_1/ReadVariableOp3lstm_243/while/lstm_cell_63/MatMul_1/ReadVariableOp: 
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
while_cond_397614
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_397614___redundant_placeholder04
0while_while_cond_397614___redundant_placeholder14
0while_while_cond_397614___redundant_placeholder24
0while_while_cond_397614___redundant_placeholder3
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
Ğ
ë
I__inference_sequential_81_layer_call_and_return_conditional_losses_394350

inputs"
lstm_243_394026:	"
lstm_243_394028:	d
lstm_243_394030:	"
lstm_244_394176:	dÈ"
lstm_244_394178:	2È
lstm_244_394180:	È!
lstm_245_394326:2(!
lstm_245_394328:
(
lstm_245_394330:(!
dense_81_394344:

dense_81_394346:
identity˘ dense_81/StatefulPartitionedCall˘ lstm_243/StatefulPartitionedCall˘ lstm_244/StatefulPartitionedCall˘ lstm_245/StatefulPartitionedCall
 lstm_243/StatefulPartitionedCallStatefulPartitionedCallinputslstm_243_394026lstm_243_394028lstm_243_394030*
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
D__inference_lstm_243_layer_call_and_return_conditional_losses_394025Ş
 lstm_244/StatefulPartitionedCallStatefulPartitionedCall)lstm_243/StatefulPartitionedCall:output:0lstm_244_394176lstm_244_394178lstm_244_394180*
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
D__inference_lstm_244_layer_call_and_return_conditional_losses_394175Ĥ
 lstm_245/StatefulPartitionedCallStatefulPartitionedCall)lstm_244/StatefulPartitionedCall:output:0lstm_245_394326lstm_245_394328lstm_245_394330*
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
D__inference_lstm_245_layer_call_and_return_conditional_losses_394325
 dense_81/StatefulPartitionedCallStatefulPartitionedCall)lstm_245/StatefulPartitionedCall:output:0dense_81_394344dense_81_394346*
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
D__inference_dense_81_layer_call_and_return_conditional_losses_394343x
IdentityIdentity)dense_81/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ò
NoOpNoOp!^dense_81/StatefulPartitionedCall!^lstm_243/StatefulPartitionedCall!^lstm_244/StatefulPartitionedCall!^lstm_245/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : 2D
 dense_81/StatefulPartitionedCall dense_81/StatefulPartitionedCall2D
 lstm_243/StatefulPartitionedCall lstm_243/StatefulPartitionedCall2D
 lstm_244/StatefulPartitionedCall lstm_244/StatefulPartitionedCall2D
 lstm_245/StatefulPartitionedCall lstm_245/StatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_393256
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_393256___redundant_placeholder04
0while_while_cond_393256___redundant_placeholder14
0while_while_cond_393256___redundant_placeholder24
0while_while_cond_393256___redundant_placeholder3
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
˙7
Ê
while_body_394241
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_65_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_65_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_65_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_65_matmul_readvariableop_resource:2(E
3while_lstm_cell_65_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_65_biasadd_readvariableop_resource:(˘)while/lstm_cell_65/BiasAdd/ReadVariableOp˘(while/lstm_cell_65/MatMul/ReadVariableOp˘*while/lstm_cell_65/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_65/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_65_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_65/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_65_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_65/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_65/addAddV2#while/lstm_cell_65/MatMul:product:0%while/lstm_cell_65/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_65_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_65/BiasAddBiasAddwhile/lstm_cell_65/add:z:01while/lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_65/splitSplit+while/lstm_cell_65/split/split_dim:output:0#while/lstm_cell_65/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_65/SigmoidSigmoid!while/lstm_cell_65/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_65/Sigmoid_1Sigmoid!while/lstm_cell_65/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_65/mulMul while/lstm_cell_65/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_65/ReluRelu!while/lstm_cell_65/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_65/mul_1Mulwhile/lstm_cell_65/Sigmoid:y:0%while/lstm_cell_65/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_65/add_1AddV2while/lstm_cell_65/mul:z:0while/lstm_cell_65/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_65/Sigmoid_2Sigmoid!while/lstm_cell_65/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_65/Relu_1Reluwhile/lstm_cell_65/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_65/mul_2Mul while/lstm_cell_65/Sigmoid_2:y:0'while/lstm_cell_65/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_65/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_65/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_65/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_65_biasadd_readvariableop_resource4while_lstm_cell_65_biasadd_readvariableop_resource_0"l
3while_lstm_cell_65_matmul_1_readvariableop_resource5while_lstm_cell_65_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_65_matmul_readvariableop_resource3while_lstm_cell_65_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_65/BiasAdd/ReadVariableOp)while/lstm_cell_65/BiasAdd/ReadVariableOp2T
(while/lstm_cell_65/MatMul/ReadVariableOp(while/lstm_cell_65/MatMul/ReadVariableOp2X
*while/lstm_cell_65/MatMul_1/ReadVariableOp*while/lstm_cell_65/MatMul_1/ReadVariableOp: 
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
while_body_397472
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_65_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_65_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_65_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_65_matmul_readvariableop_resource:2(E
3while_lstm_cell_65_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_65_biasadd_readvariableop_resource:(˘)while/lstm_cell_65/BiasAdd/ReadVariableOp˘(while/lstm_cell_65/MatMul/ReadVariableOp˘*while/lstm_cell_65/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙2   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
element_dtype0
(while/lstm_cell_65/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_65_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ı
while/lstm_cell_65/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙( 
*while/lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_65_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_65/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
while/lstm_cell_65/addAddV2#while/lstm_cell_65/MatMul:product:0%while/lstm_cell_65/MatMul_1:product:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(
)while/lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_65_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ĥ
while/lstm_cell_65/BiasAddBiasAddwhile/lstm_cell_65/add:z:01while/lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙(d
"while/lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_65/splitSplit+while/lstm_cell_65/split/split_dim:output:0#while/lstm_cell_65/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
*
	num_splitz
while/lstm_cell_65/SigmoidSigmoid!while/lstm_cell_65/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_65/Sigmoid_1Sigmoid!while/lstm_cell_65/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_65/mulMul while/lstm_cell_65/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
while/lstm_cell_65/ReluRelu!while/lstm_cell_65/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_65/mul_1Mulwhile/lstm_cell_65/Sigmoid:y:0%while/lstm_cell_65/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_65/add_1AddV2while/lstm_cell_65/mul:z:0while/lstm_cell_65/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
while/lstm_cell_65/Sigmoid_2Sigmoid!while/lstm_cell_65/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
while/lstm_cell_65/Relu_1Reluwhile/lstm_cell_65/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/lstm_cell_65/mul_2Mul while/lstm_cell_65/Sigmoid_2:y:0'while/lstm_cell_65/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ċ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_65/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_65/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
while/Identity_5Identitywhile/lstm_cell_65/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
?

while/NoOpNoOp*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_65_biasadd_readvariableop_resource4while_lstm_cell_65_biasadd_readvariableop_resource_0"l
3while_lstm_cell_65_matmul_1_readvariableop_resource5while_lstm_cell_65_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_65_matmul_readvariableop_resource3while_lstm_cell_65_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙
:˙˙˙˙˙˙˙˙˙
: : : : : 2V
)while/lstm_cell_65/BiasAdd/ReadVariableOp)while/lstm_cell_65/BiasAdd/ReadVariableOp2T
(while/lstm_cell_65/MatMul/ReadVariableOp(while/lstm_cell_65/MatMul/ReadVariableOp2X
*while/lstm_cell_65/MatMul_1/ReadVariableOp*while/lstm_cell_65/MatMul_1/ReadVariableOp: 
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
lstm_243_while_cond_395198.
*lstm_243_while_lstm_243_while_loop_counter4
0lstm_243_while_lstm_243_while_maximum_iterations
lstm_243_while_placeholder 
lstm_243_while_placeholder_1 
lstm_243_while_placeholder_2 
lstm_243_while_placeholder_30
,lstm_243_while_less_lstm_243_strided_slice_1F
Blstm_243_while_lstm_243_while_cond_395198___redundant_placeholder0F
Blstm_243_while_lstm_243_while_cond_395198___redundant_placeholder1F
Blstm_243_while_lstm_243_while_cond_395198___redundant_placeholder2F
Blstm_243_while_lstm_243_while_cond_395198___redundant_placeholder3
lstm_243_while_identity

lstm_243/while/LessLesslstm_243_while_placeholder,lstm_243_while_less_lstm_243_strided_slice_1*
T0*
_output_shapes
: ]
lstm_243/while/IdentityIdentitylstm_243/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_243_while_identity lstm_243/while/Identity:output:0*(
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
while_body_396383
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_63_matmul_readvariableop_resource_0:	H
5while_lstm_cell_63_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_63_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_63_matmul_readvariableop_resource:	F
3while_lstm_cell_63_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_63_biasadd_readvariableop_resource:	˘)while/lstm_cell_63/BiasAdd/ReadVariableOp˘(while/lstm_cell_63/MatMul/ReadVariableOp˘*while/lstm_cell_63/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
(while/lstm_cell_63/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_63_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ş
while/lstm_cell_63/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_63/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ħ
*while/lstm_cell_63/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_63_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ħ
while/lstm_cell_63/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_63/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/lstm_cell_63/addAddV2#while/lstm_cell_63/MatMul:product:0%while/lstm_cell_63/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)while/lstm_cell_63/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_63_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_63/BiasAddBiasAddwhile/lstm_cell_63/add:z:01while/lstm_cell_63/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"while/lstm_cell_63/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_63/splitSplit+while/lstm_cell_63/split/split_dim:output:0#while/lstm_cell_63/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitz
while/lstm_cell_63/SigmoidSigmoid!while/lstm_cell_63/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_63/Sigmoid_1Sigmoid!while/lstm_cell_63/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_63/mulMul while/lstm_cell_63/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dt
while/lstm_cell_63/ReluRelu!while/lstm_cell_63/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_63/mul_1Mulwhile/lstm_cell_63/Sigmoid:y:0%while/lstm_cell_63/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_63/add_1AddV2while/lstm_cell_63/mul:z:0while/lstm_cell_63/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d|
while/lstm_cell_63/Sigmoid_2Sigmoid!while/lstm_cell_63/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dq
while/lstm_cell_63/Relu_1Reluwhile/lstm_cell_63/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/lstm_cell_63/mul_2Mul while/lstm_cell_63/Sigmoid_2:y:0'while/lstm_cell_63/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dĊ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_63/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_63/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy
while/Identity_5Identitywhile/lstm_cell_63/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d?

while/NoOpNoOp*^while/lstm_cell_63/BiasAdd/ReadVariableOp)^while/lstm_cell_63/MatMul/ReadVariableOp+^while/lstm_cell_63/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_63_biasadd_readvariableop_resource4while_lstm_cell_63_biasadd_readvariableop_resource_0"l
3while_lstm_cell_63_matmul_1_readvariableop_resource5while_lstm_cell_63_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_63_matmul_readvariableop_resource3while_lstm_cell_63_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2V
)while/lstm_cell_63/BiasAdd/ReadVariableOp)while/lstm_cell_63/BiasAdd/ReadVariableOp2T
(while/lstm_cell_63/MatMul/ReadVariableOp(while/lstm_cell_63/MatMul/ReadVariableOp2X
*while/lstm_cell_63/MatMul_1/ReadVariableOp*while/lstm_cell_63/MatMul_1/ReadVariableOp: 
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
D__inference_lstm_243_layer_call_and_return_conditional_losses_396467

inputs>
+lstm_cell_63_matmul_readvariableop_resource:	@
-lstm_cell_63_matmul_1_readvariableop_resource:	d;
,lstm_cell_63_biasadd_readvariableop_resource:	
identity˘#lstm_cell_63/BiasAdd/ReadVariableOp˘"lstm_cell_63/MatMul/ReadVariableOp˘$lstm_cell_63/MatMul_1/ReadVariableOp˘while;
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
"lstm_cell_63/MatMul/ReadVariableOpReadVariableOp+lstm_cell_63_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_63/MatMulMatMulstrided_slice_2:output:0*lstm_cell_63/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$lstm_cell_63/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_63_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_63/MatMul_1MatMulzeros:output:0,lstm_cell_63/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
lstm_cell_63/addAddV2lstm_cell_63/MatMul:product:0lstm_cell_63/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
#lstm_cell_63/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_63_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_63/BiasAddBiasAddlstm_cell_63/add:z:0+lstm_cell_63/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
lstm_cell_63/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ŭ
lstm_cell_63/splitSplit%lstm_cell_63/split/split_dim:output:0lstm_cell_63/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d*
	num_splitn
lstm_cell_63/SigmoidSigmoidlstm_cell_63/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_63/Sigmoid_1Sigmoidlstm_cell_63/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dw
lstm_cell_63/mulMullstm_cell_63/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dh
lstm_cell_63/ReluRelulstm_cell_63/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_63/mul_1Mullstm_cell_63/Sigmoid:y:0lstm_cell_63/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d{
lstm_cell_63/add_1AddV2lstm_cell_63/mul:z:0lstm_cell_63/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dp
lstm_cell_63/Sigmoid_2Sigmoidlstm_cell_63/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙de
lstm_cell_63/Relu_1Relulstm_cell_63/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
lstm_cell_63/mul_2Mullstm_cell_63/Sigmoid_2:y:0!lstm_cell_63/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_63_matmul_readvariableop_resource-lstm_cell_63_matmul_1_readvariableop_resource,lstm_cell_63_biasadd_readvariableop_resource*
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
while_body_396383*
condR
while_cond_396382*K
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
NoOpNoOp$^lstm_cell_63/BiasAdd/ReadVariableOp#^lstm_cell_63/MatMul/ReadVariableOp%^lstm_cell_63/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : 2J
#lstm_cell_63/BiasAdd/ReadVariableOp#lstm_cell_63/BiasAdd/ReadVariableOp2H
"lstm_cell_63/MatMul/ReadVariableOp"lstm_cell_63/MatMul/ReadVariableOp2L
$lstm_cell_63/MatMul_1/ReadVariableOp$lstm_cell_63/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
µ
?
while_cond_393606
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_393606___redundant_placeholder04
0while_while_cond_393606___redundant_placeholder14
0while_while_cond_393606___redundant_placeholder24
0while_while_cond_393606___redundant_placeholder3
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
D__inference_lstm_245_layer_call_and_return_conditional_losses_393676

inputs%
lstm_cell_65_393594:2(%
lstm_cell_65_393596:
(!
lstm_cell_65_393598:(
identity˘$lstm_cell_65/StatefulPartitionedCall˘while;
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
$lstm_cell_65/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_65_393594lstm_cell_65_393596lstm_cell_65_393598*
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
H__inference_lstm_cell_65_layer_call_and_return_conditional_losses_393593n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_65_393594lstm_cell_65_393596lstm_cell_65_393598*
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
while_body_393607*
condR
while_cond_393606*K
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
NoOpNoOp%^lstm_cell_65/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2: : : 2L
$lstm_cell_65/StatefulPartitionedCall$lstm_cell_65/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
ş

(sequential_81_lstm_244_while_cond_392596J
Fsequential_81_lstm_244_while_sequential_81_lstm_244_while_loop_counterP
Lsequential_81_lstm_244_while_sequential_81_lstm_244_while_maximum_iterations,
(sequential_81_lstm_244_while_placeholder.
*sequential_81_lstm_244_while_placeholder_1.
*sequential_81_lstm_244_while_placeholder_2.
*sequential_81_lstm_244_while_placeholder_3L
Hsequential_81_lstm_244_while_less_sequential_81_lstm_244_strided_slice_1b
^sequential_81_lstm_244_while_sequential_81_lstm_244_while_cond_392596___redundant_placeholder0b
^sequential_81_lstm_244_while_sequential_81_lstm_244_while_cond_392596___redundant_placeholder1b
^sequential_81_lstm_244_while_sequential_81_lstm_244_while_cond_392596___redundant_placeholder2b
^sequential_81_lstm_244_while_sequential_81_lstm_244_while_cond_392596___redundant_placeholder3)
%sequential_81_lstm_244_while_identity
?
!sequential_81/lstm_244/while/LessLess(sequential_81_lstm_244_while_placeholderHsequential_81_lstm_244_while_less_sequential_81_lstm_244_strided_slice_1*
T0*
_output_shapes
: y
%sequential_81/lstm_244/while/IdentityIdentity%sequential_81/lstm_244/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_81_lstm_244_while_identity.sequential_81/lstm_244/while/Identity:output:0*(
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
while_body_392907
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_63_392931_0:	.
while_lstm_cell_63_392933_0:	d*
while_lstm_cell_63_392935_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_63_392931:	,
while_lstm_cell_63_392933:	d(
while_lstm_cell_63_392935:	˘*while/lstm_cell_63/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ĥ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0³
*while/lstm_cell_63/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_63_392931_0while_lstm_cell_63_392933_0while_lstm_cell_63_392935_0*
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
H__inference_lstm_cell_63_layer_call_and_return_conditional_losses_392893Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_63/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_63/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
while/Identity_5Identity3while/lstm_cell_63/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙dy

while/NoOpNoOp+^while/lstm_cell_63/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_63_392931while_lstm_cell_63_392931_0"8
while_lstm_cell_63_392933while_lstm_cell_63_392933_0"8
while_lstm_cell_63_392935while_lstm_cell_63_392935_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙d:˙˙˙˙˙˙˙˙˙d: : : : : 2X
*while/lstm_cell_63/StatefulPartitionedCall*while/lstm_cell_63/StatefulPartitionedCall: 
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

lstm_244_while_body_395338.
*lstm_244_while_lstm_244_while_loop_counter4
0lstm_244_while_lstm_244_while_maximum_iterations
lstm_244_while_placeholder 
lstm_244_while_placeholder_1 
lstm_244_while_placeholder_2 
lstm_244_while_placeholder_3-
)lstm_244_while_lstm_244_strided_slice_1_0i
elstm_244_while_tensorarrayv2read_tensorlistgetitem_lstm_244_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_244_while_lstm_cell_64_matmul_readvariableop_resource_0:	dÈQ
>lstm_244_while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2ÈL
=lstm_244_while_lstm_cell_64_biasadd_readvariableop_resource_0:	È
lstm_244_while_identity
lstm_244_while_identity_1
lstm_244_while_identity_2
lstm_244_while_identity_3
lstm_244_while_identity_4
lstm_244_while_identity_5+
'lstm_244_while_lstm_244_strided_slice_1g
clstm_244_while_tensorarrayv2read_tensorlistgetitem_lstm_244_tensorarrayunstack_tensorlistfromtensorM
:lstm_244_while_lstm_cell_64_matmul_readvariableop_resource:	dÈO
<lstm_244_while_lstm_cell_64_matmul_1_readvariableop_resource:	2ÈJ
;lstm_244_while_lstm_cell_64_biasadd_readvariableop_resource:	È˘2lstm_244/while/lstm_cell_64/BiasAdd/ReadVariableOp˘1lstm_244/while/lstm_cell_64/MatMul/ReadVariableOp˘3lstm_244/while/lstm_cell_64/MatMul_1/ReadVariableOp
@lstm_244/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙d   Ó
2lstm_244/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_244_while_tensorarrayv2read_tensorlistgetitem_lstm_244_tensorarrayunstack_tensorlistfromtensor_0lstm_244_while_placeholderIlstm_244/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d*
element_dtype0Ż
1lstm_244/while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp<lstm_244_while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ġ
"lstm_244/while/lstm_cell_64/MatMulMatMul9lstm_244/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_244/while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È³
3lstm_244/while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp>lstm_244_while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ĵ
$lstm_244/while/lstm_cell_64/MatMul_1MatMullstm_244_while_placeholder_2;lstm_244/while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èı
lstm_244/while/lstm_cell_64/addAddV2,lstm_244/while/lstm_cell_64/MatMul:product:0.lstm_244/while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙È­
2lstm_244/while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp=lstm_244_while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0Â
#lstm_244/while/lstm_cell_64/BiasAddBiasAdd#lstm_244/while/lstm_cell_64/add:z:0:lstm_244/while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Èm
+lstm_244/while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_244/while/lstm_cell_64/splitSplit4lstm_244/while/lstm_cell_64/split/split_dim:output:0,lstm_244/while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2*
	num_split
#lstm_244/while/lstm_cell_64/SigmoidSigmoid*lstm_244/while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_244/while/lstm_cell_64/Sigmoid_1Sigmoid*lstm_244/while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ħ
lstm_244/while/lstm_cell_64/mulMul)lstm_244/while/lstm_cell_64/Sigmoid_1:y:0lstm_244_while_placeholder_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 lstm_244/while/lstm_cell_64/ReluRelu*lstm_244/while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2³
!lstm_244/while/lstm_cell_64/mul_1Mul'lstm_244/while/lstm_cell_64/Sigmoid:y:0.lstm_244/while/lstm_cell_64/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2¨
!lstm_244/while/lstm_cell_64/add_1AddV2#lstm_244/while/lstm_cell_64/mul:z:0%lstm_244/while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
%lstm_244/while/lstm_cell_64/Sigmoid_2Sigmoid*lstm_244/while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
"lstm_244/while/lstm_cell_64/Relu_1Relu%lstm_244/while/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2·
!lstm_244/while/lstm_cell_64/mul_2Mul)lstm_244/while/lstm_cell_64/Sigmoid_2:y:00lstm_244/while/lstm_cell_64/Relu_1:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2é
3lstm_244/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_244_while_placeholder_1lstm_244_while_placeholder%lstm_244/while/lstm_cell_64/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_244/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_244/while/addAddV2lstm_244_while_placeholderlstm_244/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_244/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_244/while/add_1AddV2*lstm_244_while_lstm_244_while_loop_counterlstm_244/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_244/while/IdentityIdentitylstm_244/while/add_1:z:0^lstm_244/while/NoOp*
T0*
_output_shapes
: 
lstm_244/while/Identity_1Identity0lstm_244_while_lstm_244_while_maximum_iterations^lstm_244/while/NoOp*
T0*
_output_shapes
: t
lstm_244/while/Identity_2Identitylstm_244/while/add:z:0^lstm_244/while/NoOp*
T0*
_output_shapes
: Ħ
lstm_244/while/Identity_3IdentityClstm_244/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_244/while/NoOp*
T0*
_output_shapes
: 
lstm_244/while/Identity_4Identity%lstm_244/while/lstm_cell_64/mul_2:z:0^lstm_244/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
lstm_244/while/Identity_5Identity%lstm_244/while/lstm_cell_64/add_1:z:0^lstm_244/while/NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2ô
lstm_244/while/NoOpNoOp3^lstm_244/while/lstm_cell_64/BiasAdd/ReadVariableOp2^lstm_244/while/lstm_cell_64/MatMul/ReadVariableOp4^lstm_244/while/lstm_cell_64/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_244_while_identity lstm_244/while/Identity:output:0"?
lstm_244_while_identity_1"lstm_244/while/Identity_1:output:0"?
lstm_244_while_identity_2"lstm_244/while/Identity_2:output:0"?
lstm_244_while_identity_3"lstm_244/while/Identity_3:output:0"?
lstm_244_while_identity_4"lstm_244/while/Identity_4:output:0"?
lstm_244_while_identity_5"lstm_244/while/Identity_5:output:0"T
'lstm_244_while_lstm_244_strided_slice_1)lstm_244_while_lstm_244_strided_slice_1_0"|
;lstm_244_while_lstm_cell_64_biasadd_readvariableop_resource=lstm_244_while_lstm_cell_64_biasadd_readvariableop_resource_0"~
<lstm_244_while_lstm_cell_64_matmul_1_readvariableop_resource>lstm_244_while_lstm_cell_64_matmul_1_readvariableop_resource_0"z
:lstm_244_while_lstm_cell_64_matmul_readvariableop_resource<lstm_244_while_lstm_cell_64_matmul_readvariableop_resource_0"Ì
clstm_244_while_tensorarrayv2read_tensorlistgetitem_lstm_244_tensorarrayunstack_tensorlistfromtensorelstm_244_while_tensorarrayv2read_tensorlistgetitem_lstm_244_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :˙˙˙˙˙˙˙˙˙2:˙˙˙˙˙˙˙˙˙2: : : : : 2h
2lstm_244/while/lstm_cell_64/BiasAdd/ReadVariableOp2lstm_244/while/lstm_cell_64/BiasAdd/ReadVariableOp2f
1lstm_244/while/lstm_cell_64/MatMul/ReadVariableOp1lstm_244/while/lstm_cell_64/MatMul/ReadVariableOp2j
3lstm_244/while/lstm_cell_64/MatMul_1/ReadVariableOp3lstm_244/while/lstm_cell_64/MatMul_1/ReadVariableOp: 
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
-__inference_lstm_cell_65_layer_call_fn_398091

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
H__inference_lstm_cell_65_layer_call_and_return_conditional_losses_393739o
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
lstm_243_input;
 serving_default_lstm_243_input:0˙˙˙˙˙˙˙˙˙<
dense_810
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
2dense_81/kernel
:2dense_81/bias
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
0:.	2lstm_243/lstm_cell_243/kernel
::8	d2'lstm_243/lstm_cell_243/recurrent_kernel
*:(2lstm_243/lstm_cell_243/bias
0:.	dÈ2lstm_244/lstm_cell_244/kernel
::8	2È2'lstm_244/lstm_cell_244/recurrent_kernel
*:(È2lstm_244/lstm_cell_244/bias
/:-2(2lstm_245/lstm_cell_245/kernel
9:7
(2'lstm_245/lstm_cell_245/recurrent_kernel
):'(2lstm_245/lstm_cell_245/bias
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
2Adam/dense_81/kernel/m
 :2Adam/dense_81/bias/m
5:3	2$Adam/lstm_243/lstm_cell_243/kernel/m
?:=	d2.Adam/lstm_243/lstm_cell_243/recurrent_kernel/m
/:-2"Adam/lstm_243/lstm_cell_243/bias/m
5:3	dÈ2$Adam/lstm_244/lstm_cell_244/kernel/m
?:=	2È2.Adam/lstm_244/lstm_cell_244/recurrent_kernel/m
/:-È2"Adam/lstm_244/lstm_cell_244/bias/m
4:22(2$Adam/lstm_245/lstm_cell_245/kernel/m
>:<
(2.Adam/lstm_245/lstm_cell_245/recurrent_kernel/m
.:,(2"Adam/lstm_245/lstm_cell_245/bias/m
&:$
2Adam/dense_81/kernel/v
 :2Adam/dense_81/bias/v
5:3	2$Adam/lstm_243/lstm_cell_243/kernel/v
?:=	d2.Adam/lstm_243/lstm_cell_243/recurrent_kernel/v
/:-2"Adam/lstm_243/lstm_cell_243/bias/v
5:3	dÈ2$Adam/lstm_244/lstm_cell_244/kernel/v
?:=	2È2.Adam/lstm_244/lstm_cell_244/recurrent_kernel/v
/:-È2"Adam/lstm_244/lstm_cell_244/bias/v
4:22(2$Adam/lstm_245/lstm_cell_245/kernel/v
>:<
(2.Adam/lstm_245/lstm_cell_245/recurrent_kernel/v
.:,(2"Adam/lstm_245/lstm_cell_245/bias/v
2
.__inference_sequential_81_layer_call_fn_394375
.__inference_sequential_81_layer_call_fn_395113
.__inference_sequential_81_layer_call_fn_395140
.__inference_sequential_81_layer_call_fn_394991À
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
I__inference_sequential_81_layer_call_and_return_conditional_losses_395567
I__inference_sequential_81_layer_call_and_return_conditional_losses_395994
I__inference_sequential_81_layer_call_and_return_conditional_losses_395021
I__inference_sequential_81_layer_call_and_return_conditional_losses_395051À
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
!__inference__wrapped_model_392826lstm_243_input"
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
)__inference_lstm_243_layer_call_fn_396005
)__inference_lstm_243_layer_call_fn_396016
)__inference_lstm_243_layer_call_fn_396027
)__inference_lstm_243_layer_call_fn_396038Ġ
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
D__inference_lstm_243_layer_call_and_return_conditional_losses_396181
D__inference_lstm_243_layer_call_and_return_conditional_losses_396324
D__inference_lstm_243_layer_call_and_return_conditional_losses_396467
D__inference_lstm_243_layer_call_and_return_conditional_losses_396610Ġ
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
)__inference_lstm_244_layer_call_fn_396621
)__inference_lstm_244_layer_call_fn_396632
)__inference_lstm_244_layer_call_fn_396643
)__inference_lstm_244_layer_call_fn_396654Ġ
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
D__inference_lstm_244_layer_call_and_return_conditional_losses_396797
D__inference_lstm_244_layer_call_and_return_conditional_losses_396940
D__inference_lstm_244_layer_call_and_return_conditional_losses_397083
D__inference_lstm_244_layer_call_and_return_conditional_losses_397226Ġ
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
)__inference_lstm_245_layer_call_fn_397237
)__inference_lstm_245_layer_call_fn_397248
)__inference_lstm_245_layer_call_fn_397259
)__inference_lstm_245_layer_call_fn_397270Ġ
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
D__inference_lstm_245_layer_call_and_return_conditional_losses_397413
D__inference_lstm_245_layer_call_and_return_conditional_losses_397556
D__inference_lstm_245_layer_call_and_return_conditional_losses_397699
D__inference_lstm_245_layer_call_and_return_conditional_losses_397842Ġ
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
)__inference_dense_81_layer_call_fn_397851˘
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
D__inference_dense_81_layer_call_and_return_conditional_losses_397861˘
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
$__inference_signature_wrapper_395086lstm_243_input"
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
-__inference_lstm_cell_63_layer_call_fn_397878
-__inference_lstm_cell_63_layer_call_fn_397895?
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
H__inference_lstm_cell_63_layer_call_and_return_conditional_losses_397927
H__inference_lstm_cell_63_layer_call_and_return_conditional_losses_397959?
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
-__inference_lstm_cell_64_layer_call_fn_397976
-__inference_lstm_cell_64_layer_call_fn_397993?
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
H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_398025
H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_398057?
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
-__inference_lstm_cell_65_layer_call_fn_398074
-__inference_lstm_cell_65_layer_call_fn_398091?
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
H__inference_lstm_cell_65_layer_call_and_return_conditional_losses_398123
H__inference_lstm_cell_65_layer_call_and_return_conditional_losses_398155?
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
!__inference__wrapped_model_392826-./012345!";˘8
1˘.
,)
lstm_243_input˙˙˙˙˙˙˙˙˙
Ş "3Ş0
.
dense_81"
dense_81˙˙˙˙˙˙˙˙˙¤
D__inference_dense_81_layer_call_and_return_conditional_losses_397861\!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 |
)__inference_dense_81_layer_call_fn_397851O!"/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙

Ş "˙˙˙˙˙˙˙˙˙Ó
D__inference_lstm_243_layer_call_and_return_conditional_losses_396181-./O˘L
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
D__inference_lstm_243_layer_call_and_return_conditional_losses_396324-./O˘L
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
D__inference_lstm_243_layer_call_and_return_conditional_losses_396467q-./?˘<
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
D__inference_lstm_243_layer_call_and_return_conditional_losses_396610q-./?˘<
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
)__inference_lstm_243_layer_call_fn_396005}-./O˘L
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
)__inference_lstm_243_layer_call_fn_396016}-./O˘L
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
)__inference_lstm_243_layer_call_fn_396027d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙d
)__inference_lstm_243_layer_call_fn_396038d-./?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙

 
p

 
Ş "˙˙˙˙˙˙˙˙˙dÓ
D__inference_lstm_244_layer_call_and_return_conditional_losses_396797012O˘L
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
D__inference_lstm_244_layer_call_and_return_conditional_losses_396940012O˘L
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
D__inference_lstm_244_layer_call_and_return_conditional_losses_397083q012?˘<
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
D__inference_lstm_244_layer_call_and_return_conditional_losses_397226q012?˘<
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
)__inference_lstm_244_layer_call_fn_396621}012O˘L
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
)__inference_lstm_244_layer_call_fn_396632}012O˘L
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
)__inference_lstm_244_layer_call_fn_396643d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p 

 
Ş "˙˙˙˙˙˙˙˙˙2
)__inference_lstm_244_layer_call_fn_396654d012?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙d

 
p

 
Ş "˙˙˙˙˙˙˙˙˙2Ċ
D__inference_lstm_245_layer_call_and_return_conditional_losses_397413}345O˘L
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
D__inference_lstm_245_layer_call_and_return_conditional_losses_397556}345O˘L
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
D__inference_lstm_245_layer_call_and_return_conditional_losses_397699m345?˘<
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
D__inference_lstm_245_layer_call_and_return_conditional_losses_397842m345?˘<
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
)__inference_lstm_245_layer_call_fn_397237p345O˘L
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
)__inference_lstm_245_layer_call_fn_397248p345O˘L
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
)__inference_lstm_245_layer_call_fn_397259`345?˘<
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
)__inference_lstm_245_layer_call_fn_397270`345?˘<
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
H__inference_lstm_cell_63_layer_call_and_return_conditional_losses_397927ŭ-./˘}
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
H__inference_lstm_cell_63_layer_call_and_return_conditional_losses_397959ŭ-./˘}
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
-__inference_lstm_cell_63_layer_call_fn_397878í-./˘}
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
-__inference_lstm_cell_63_layer_call_fn_397895í-./˘}
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
H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_398025ŭ012˘}
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
H__inference_lstm_cell_64_layer_call_and_return_conditional_losses_398057ŭ012˘}
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
-__inference_lstm_cell_64_layer_call_fn_397976í012˘}
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
-__inference_lstm_cell_64_layer_call_fn_397993í012˘}
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
H__inference_lstm_cell_65_layer_call_and_return_conditional_losses_398123ŭ345˘}
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
H__inference_lstm_cell_65_layer_call_and_return_conditional_losses_398155ŭ345˘}
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
-__inference_lstm_cell_65_layer_call_fn_398074í345˘}
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
-__inference_lstm_cell_65_layer_call_fn_398091í345˘}
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
I__inference_sequential_81_layer_call_and_return_conditional_losses_395021y-./012345!"C˘@
9˘6
,)
lstm_243_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ĉ
I__inference_sequential_81_layer_call_and_return_conditional_losses_395051y-./012345!"C˘@
9˘6
,)
lstm_243_input˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ?
I__inference_sequential_81_layer_call_and_return_conditional_losses_395567q-./012345!";˘8
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
I__inference_sequential_81_layer_call_and_return_conditional_losses_395994q-./012345!";˘8
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
.__inference_sequential_81_layer_call_fn_394375l-./012345!"C˘@
9˘6
,)
lstm_243_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_81_layer_call_fn_394991l-./012345!"C˘@
9˘6
,)
lstm_243_input˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_81_layer_call_fn_395113d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
.__inference_sequential_81_layer_call_fn_395140d-./012345!";˘8
1˘.
$!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙ş
$__inference_signature_wrapper_395086-./012345!"M˘J
˘ 
CŞ@
>
lstm_243_input,)
lstm_243_input˙˙˙˙˙˙˙˙˙"3Ş0
.
dense_81"
dense_81˙˙˙˙˙˙˙˙˙