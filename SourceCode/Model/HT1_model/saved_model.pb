??/
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
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
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements#
handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
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
?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??-
z
dense_41/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_41/kernel
s
#dense_41/kernel/Read/ReadVariableOpReadVariableOpdense_41/kernel*
_output_shapes

:
*
dtype0
r
dense_41/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_41/bias
k
!dense_41/bias/Read/ReadVariableOpReadVariableOpdense_41/bias*
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
?
lstm_123/lstm_cell_123/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_123/lstm_cell_123/kernel
?
1lstm_123/lstm_cell_123/kernel/Read/ReadVariableOpReadVariableOplstm_123/lstm_cell_123/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_123/lstm_cell_123/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_123/lstm_cell_123/recurrent_kernel
?
;lstm_123/lstm_cell_123/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_123/lstm_cell_123/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_123/lstm_cell_123/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_123/lstm_cell_123/bias
?
/lstm_123/lstm_cell_123/bias/Read/ReadVariableOpReadVariableOplstm_123/lstm_cell_123/bias*
_output_shapes	
:?*
dtype0
?
lstm_124/lstm_cell_124/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_124/lstm_cell_124/kernel
?
1lstm_124/lstm_cell_124/kernel/Read/ReadVariableOpReadVariableOplstm_124/lstm_cell_124/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_124/lstm_cell_124/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_124/lstm_cell_124/recurrent_kernel
?
;lstm_124/lstm_cell_124/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_124/lstm_cell_124/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_124/lstm_cell_124/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_124/lstm_cell_124/bias
?
/lstm_124/lstm_cell_124/bias/Read/ReadVariableOpReadVariableOplstm_124/lstm_cell_124/bias*
_output_shapes	
:?*
dtype0
?
lstm_125/lstm_cell_125/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_125/lstm_cell_125/kernel
?
1lstm_125/lstm_cell_125/kernel/Read/ReadVariableOpReadVariableOplstm_125/lstm_cell_125/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_125/lstm_cell_125/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_125/lstm_cell_125/recurrent_kernel
?
;lstm_125/lstm_cell_125/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_125/lstm_cell_125/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_125/lstm_cell_125/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_125/lstm_cell_125/bias
?
/lstm_125/lstm_cell_125/bias/Read/ReadVariableOpReadVariableOplstm_125/lstm_cell_125/bias*
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
?
Adam/dense_41/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_41/kernel/m
?
*Adam/dense_41/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_41/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_41/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_41/bias/m
y
(Adam/dense_41/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_41/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_123/lstm_cell_123/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_123/lstm_cell_123/kernel/m
?
8Adam/lstm_123/lstm_cell_123/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_123/lstm_cell_123/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_123/lstm_cell_123/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_123/lstm_cell_123/recurrent_kernel/m
?
BAdam/lstm_123/lstm_cell_123/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_123/lstm_cell_123/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_123/lstm_cell_123/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_123/lstm_cell_123/bias/m
?
6Adam/lstm_123/lstm_cell_123/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_123/lstm_cell_123/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_124/lstm_cell_124/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_124/lstm_cell_124/kernel/m
?
8Adam/lstm_124/lstm_cell_124/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_124/lstm_cell_124/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_124/lstm_cell_124/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_124/lstm_cell_124/recurrent_kernel/m
?
BAdam/lstm_124/lstm_cell_124/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_124/lstm_cell_124/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_124/lstm_cell_124/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_124/lstm_cell_124/bias/m
?
6Adam/lstm_124/lstm_cell_124/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_124/lstm_cell_124/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_125/lstm_cell_125/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_125/lstm_cell_125/kernel/m
?
8Adam/lstm_125/lstm_cell_125/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_125/lstm_cell_125/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_125/lstm_cell_125/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_125/lstm_cell_125/recurrent_kernel/m
?
BAdam/lstm_125/lstm_cell_125/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_125/lstm_cell_125/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_125/lstm_cell_125/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_125/lstm_cell_125/bias/m
?
6Adam/lstm_125/lstm_cell_125/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_125/lstm_cell_125/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_41/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_41/kernel/v
?
*Adam/dense_41/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_41/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_41/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_41/bias/v
y
(Adam/dense_41/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_41/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_123/lstm_cell_123/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_123/lstm_cell_123/kernel/v
?
8Adam/lstm_123/lstm_cell_123/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_123/lstm_cell_123/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_123/lstm_cell_123/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_123/lstm_cell_123/recurrent_kernel/v
?
BAdam/lstm_123/lstm_cell_123/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_123/lstm_cell_123/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_123/lstm_cell_123/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_123/lstm_cell_123/bias/v
?
6Adam/lstm_123/lstm_cell_123/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_123/lstm_cell_123/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_124/lstm_cell_124/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_124/lstm_cell_124/kernel/v
?
8Adam/lstm_124/lstm_cell_124/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_124/lstm_cell_124/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_124/lstm_cell_124/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_124/lstm_cell_124/recurrent_kernel/v
?
BAdam/lstm_124/lstm_cell_124/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_124/lstm_cell_124/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_124/lstm_cell_124/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_124/lstm_cell_124/bias/v
?
6Adam/lstm_124/lstm_cell_124/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_124/lstm_cell_124/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_125/lstm_cell_125/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_125/lstm_cell_125/kernel/v
?
8Adam/lstm_125/lstm_cell_125/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_125/lstm_cell_125/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_125/lstm_cell_125/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_125/lstm_cell_125/recurrent_kernel/v
?
BAdam/lstm_125/lstm_cell_125/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_125/lstm_cell_125/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_125/lstm_cell_125/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_125/lstm_cell_125/bias/v
?
6Adam/lstm_125/lstm_cell_125/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_125/lstm_cell_125/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
?A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?A
value?AB?A B?A
?
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
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
?

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
?
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m?4m?5m?!v?"v?-v?.v?/v?0v?1v?2v?3v?4v?5v?
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
?
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
?
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
?

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
?
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
?

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
?
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
?

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
VARIABLE_VALUEdense_41/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_41/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1

!0
"1
 
?
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
VARIABLE_VALUElstm_123/lstm_cell_123/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_123/lstm_cell_123/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_123/lstm_cell_123/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_124/lstm_cell_124/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_124/lstm_cell_124/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_124/lstm_cell_124/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_125/lstm_cell_125/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_125/lstm_cell_125/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_125/lstm_cell_125/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
?
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
?
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
?
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
VARIABLE_VALUEAdam/dense_41/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_41/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_123/lstm_cell_123/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_123/lstm_cell_123/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_123/lstm_cell_123/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_124/lstm_cell_124/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_124/lstm_cell_124/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_124/lstm_cell_124/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_125/lstm_cell_125/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_125/lstm_cell_125/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_125/lstm_cell_125/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_41/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_41/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_123/lstm_cell_123/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_123/lstm_cell_123/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_123/lstm_cell_123/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_124/lstm_cell_124/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_124/lstm_cell_124/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_124/lstm_cell_124/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_125/lstm_cell_125/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_125/lstm_cell_125/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_125/lstm_cell_125/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_123_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_123_inputlstm_123/lstm_cell_123/kernel'lstm_123/lstm_cell_123/recurrent_kernellstm_123/lstm_cell_123/biaslstm_124/lstm_cell_124/kernel'lstm_124/lstm_cell_124/recurrent_kernellstm_124/lstm_cell_124/biaslstm_125/lstm_cell_125/kernel'lstm_125/lstm_cell_125/recurrent_kernellstm_125/lstm_cell_125/biasdense_41/kerneldense_41/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_2119713
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_41/kernel/Read/ReadVariableOp!dense_41/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_123/lstm_cell_123/kernel/Read/ReadVariableOp;lstm_123/lstm_cell_123/recurrent_kernel/Read/ReadVariableOp/lstm_123/lstm_cell_123/bias/Read/ReadVariableOp1lstm_124/lstm_cell_124/kernel/Read/ReadVariableOp;lstm_124/lstm_cell_124/recurrent_kernel/Read/ReadVariableOp/lstm_124/lstm_cell_124/bias/Read/ReadVariableOp1lstm_125/lstm_cell_125/kernel/Read/ReadVariableOp;lstm_125/lstm_cell_125/recurrent_kernel/Read/ReadVariableOp/lstm_125/lstm_cell_125/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_41/kernel/m/Read/ReadVariableOp(Adam/dense_41/bias/m/Read/ReadVariableOp8Adam/lstm_123/lstm_cell_123/kernel/m/Read/ReadVariableOpBAdam/lstm_123/lstm_cell_123/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_123/lstm_cell_123/bias/m/Read/ReadVariableOp8Adam/lstm_124/lstm_cell_124/kernel/m/Read/ReadVariableOpBAdam/lstm_124/lstm_cell_124/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_124/lstm_cell_124/bias/m/Read/ReadVariableOp8Adam/lstm_125/lstm_cell_125/kernel/m/Read/ReadVariableOpBAdam/lstm_125/lstm_cell_125/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_125/lstm_cell_125/bias/m/Read/ReadVariableOp*Adam/dense_41/kernel/v/Read/ReadVariableOp(Adam/dense_41/bias/v/Read/ReadVariableOp8Adam/lstm_123/lstm_cell_123/kernel/v/Read/ReadVariableOpBAdam/lstm_123/lstm_cell_123/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_123/lstm_cell_123/bias/v/Read/ReadVariableOp8Adam/lstm_124/lstm_cell_124/kernel/v/Read/ReadVariableOpBAdam/lstm_124/lstm_cell_124/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_124/lstm_cell_124/bias/v/Read/ReadVariableOp8Adam/lstm_125/lstm_cell_125/kernel/v/Read/ReadVariableOpBAdam/lstm_125/lstm_cell_125/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_125/lstm_cell_125/bias/v/Read/ReadVariableOpConst*5
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
GPU 2J 8? *)
f$R"
 __inference__traced_save_2122925
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_41/kerneldense_41/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_123/lstm_cell_123/kernel'lstm_123/lstm_cell_123/recurrent_kernellstm_123/lstm_cell_123/biaslstm_124/lstm_cell_124/kernel'lstm_124/lstm_cell_124/recurrent_kernellstm_124/lstm_cell_124/biaslstm_125/lstm_cell_125/kernel'lstm_125/lstm_cell_125/recurrent_kernellstm_125/lstm_cell_125/biastotalcountAdam/dense_41/kernel/mAdam/dense_41/bias/m$Adam/lstm_123/lstm_cell_123/kernel/m.Adam/lstm_123/lstm_cell_123/recurrent_kernel/m"Adam/lstm_123/lstm_cell_123/bias/m$Adam/lstm_124/lstm_cell_124/kernel/m.Adam/lstm_124/lstm_cell_124/recurrent_kernel/m"Adam/lstm_124/lstm_cell_124/bias/m$Adam/lstm_125/lstm_cell_125/kernel/m.Adam/lstm_125/lstm_cell_125/recurrent_kernel/m"Adam/lstm_125/lstm_cell_125/bias/mAdam/dense_41/kernel/vAdam/dense_41/bias/v$Adam/lstm_123/lstm_cell_123/kernel/v.Adam/lstm_123/lstm_cell_123/recurrent_kernel/v"Adam/lstm_123/lstm_cell_123/bias/v$Adam/lstm_124/lstm_cell_124/kernel/v.Adam/lstm_124/lstm_cell_124/recurrent_kernel/v"Adam/lstm_124/lstm_cell_124/bias/v$Adam/lstm_125/lstm_cell_125/kernel/v.Adam/lstm_125/lstm_cell_125/recurrent_kernel/v"Adam/lstm_125/lstm_cell_125/bias/v*4
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
GPU 2J 8? *,
f'R%
#__inference__traced_restore_2123055??+
?#
?
while_body_2118234
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_350_2118258_0:2(/
while_lstm_cell_350_2118260_0:
(+
while_lstm_cell_350_2118262_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_350_2118258:2(-
while_lstm_cell_350_2118260:
()
while_lstm_cell_350_2118262:(??+while/lstm_cell_350/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_350/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_350_2118258_0while_lstm_cell_350_2118260_0while_lstm_cell_350_2118262_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_350_layer_call_and_return_conditional_losses_2118220?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_350/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity4while/lstm_cell_350/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_350/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_350/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_350_2118258while_lstm_cell_350_2118258_0"<
while_lstm_cell_350_2118260while_lstm_cell_350_2118260_0"<
while_lstm_cell_350_2118262while_lstm_cell_350_2118262_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_350/StatefulPartitionedCall+while/lstm_cell_350/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?8
?
E__inference_lstm_125_layer_call_and_return_conditional_losses_2118303

inputs'
lstm_cell_350_2118221:2('
lstm_cell_350_2118223:
(#
lstm_cell_350_2118225:(
identity??%lstm_cell_350/StatefulPartitionedCall?while;
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
valueB:?
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
:?????????
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
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
%lstm_cell_350/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_350_2118221lstm_cell_350_2118223lstm_cell_350_2118225*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_350_layer_call_and_return_conditional_losses_2118220n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_350_2118221lstm_cell_350_2118223lstm_cell_350_2118225*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2118234*
condR
while_cond_2118233*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????
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
:?????????
v
NoOpNoOp&^lstm_cell_350/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_350/StatefulPartitionedCall%lstm_cell_350/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_123_layer_call_and_return_conditional_losses_2120808
inputs_0?
,lstm_cell_348_matmul_readvariableop_resource:	?A
.lstm_cell_348_matmul_1_readvariableop_resource:	d?<
-lstm_cell_348_biasadd_readvariableop_resource:	?
identity??$lstm_cell_348/BiasAdd/ReadVariableOp?#lstm_cell_348/MatMul/ReadVariableOp?%lstm_cell_348/MatMul_1/ReadVariableOp?while=
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
valueB:?
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
:?????????dR
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
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_348/MatMul/ReadVariableOpReadVariableOp,lstm_cell_348_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_348/MatMulMatMulstrided_slice_2:output:0+lstm_cell_348/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_348/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_348_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_348/MatMul_1MatMulzeros:output:0-lstm_cell_348/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_348/addAddV2lstm_cell_348/MatMul:product:0 lstm_cell_348/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_348/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_348_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_348/BiasAddBiasAddlstm_cell_348/add:z:0,lstm_cell_348/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_348/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_348/splitSplit&lstm_cell_348/split/split_dim:output:0lstm_cell_348/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_348/SigmoidSigmoidlstm_cell_348/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_348/Sigmoid_1Sigmoidlstm_cell_348/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_348/mulMullstm_cell_348/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_348/ReluRelulstm_cell_348/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_348/mul_1Mullstm_cell_348/Sigmoid:y:0 lstm_cell_348/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_348/add_1AddV2lstm_cell_348/mul:z:0lstm_cell_348/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_348/Sigmoid_2Sigmoidlstm_cell_348/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_348/Relu_1Relulstm_cell_348/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_348/mul_2Mullstm_cell_348/Sigmoid_2:y:0"lstm_cell_348/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_348_matmul_readvariableop_resource.lstm_cell_348_matmul_1_readvariableop_resource-lstm_cell_348_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2120724*
condR
while_cond_2120723*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????d?
NoOpNoOp%^lstm_cell_348/BiasAdd/ReadVariableOp$^lstm_cell_348/MatMul/ReadVariableOp&^lstm_cell_348/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_348/BiasAdd/ReadVariableOp$lstm_cell_348/BiasAdd/ReadVariableOp2J
#lstm_cell_348/MatMul/ReadVariableOp#lstm_cell_348/MatMul/ReadVariableOp2N
%lstm_cell_348/MatMul_1/ReadVariableOp%lstm_cell_348/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_2121768
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2121768___redundant_placeholder05
1while_while_cond_2121768___redundant_placeholder15
1while_while_cond_2121768___redundant_placeholder25
1while_while_cond_2121768___redundant_placeholder3
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
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?

?
/__inference_sequential_41_layer_call_fn_2119767

inputs
unknown:	?
	unknown_0:	d?
	unknown_1:	?
	unknown_2:	d?
	unknown_3:	2?
	unknown_4:	?
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_41_layer_call_and_return_conditional_losses_2119566o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2118568
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_348_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_348_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_348_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_348_matmul_readvariableop_resource:	?G
4while_lstm_cell_348_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_348_biasadd_readvariableop_resource:	???*while/lstm_cell_348/BiasAdd/ReadVariableOp?)while/lstm_cell_348/MatMul/ReadVariableOp?+while/lstm_cell_348/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_348/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_348_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_348/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_348/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_348/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_348_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_348/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_348/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_348/addAddV2$while/lstm_cell_348/MatMul:product:0&while/lstm_cell_348/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_348/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_348_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_348/BiasAddBiasAddwhile/lstm_cell_348/add:z:02while/lstm_cell_348/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_348/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_348/splitSplit,while/lstm_cell_348/split/split_dim:output:0$while/lstm_cell_348/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_348/SigmoidSigmoid"while/lstm_cell_348/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_348/Sigmoid_1Sigmoid"while/lstm_cell_348/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_348/mulMul!while/lstm_cell_348/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_348/ReluRelu"while/lstm_cell_348/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_348/mul_1Mulwhile/lstm_cell_348/Sigmoid:y:0&while/lstm_cell_348/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_348/add_1AddV2while/lstm_cell_348/mul:z:0while/lstm_cell_348/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_348/Sigmoid_2Sigmoid"while/lstm_cell_348/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_348/Relu_1Reluwhile/lstm_cell_348/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_348/mul_2Mul!while/lstm_cell_348/Sigmoid_2:y:0(while/lstm_cell_348/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_348/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_348/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_348/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_348/BiasAdd/ReadVariableOp*^while/lstm_cell_348/MatMul/ReadVariableOp,^while/lstm_cell_348/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_348_biasadd_readvariableop_resource5while_lstm_cell_348_biasadd_readvariableop_resource_0"n
4while_lstm_cell_348_matmul_1_readvariableop_resource6while_lstm_cell_348_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_348_matmul_readvariableop_resource4while_lstm_cell_348_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_348/BiasAdd/ReadVariableOp*while/lstm_cell_348/BiasAdd/ReadVariableOp2V
)while/lstm_cell_348/MatMul/ReadVariableOp)while/lstm_cell_348/MatMul/ReadVariableOp2Z
+while/lstm_cell_348/MatMul_1/ReadVariableOp+while/lstm_cell_348/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_2121625
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2121625___redundant_placeholder05
1while_while_cond_2121625___redundant_placeholder15
1while_while_cond_2121625___redundant_placeholder25
1while_while_cond_2121625___redundant_placeholder3
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
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?K
?
E__inference_lstm_125_layer_call_and_return_conditional_losses_2122183
inputs_0>
,lstm_cell_350_matmul_readvariableop_resource:2(@
.lstm_cell_350_matmul_1_readvariableop_resource:
(;
-lstm_cell_350_biasadd_readvariableop_resource:(
identity??$lstm_cell_350/BiasAdd/ReadVariableOp?#lstm_cell_350/MatMul/ReadVariableOp?%lstm_cell_350/MatMul_1/ReadVariableOp?while=
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
valueB:?
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
:?????????
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
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
#lstm_cell_350/MatMul/ReadVariableOpReadVariableOp,lstm_cell_350_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_350/MatMulMatMulstrided_slice_2:output:0+lstm_cell_350/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_350/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_350_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_350/MatMul_1MatMulzeros:output:0-lstm_cell_350/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_350/addAddV2lstm_cell_350/MatMul:product:0 lstm_cell_350/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_350/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_350_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_350/BiasAddBiasAddlstm_cell_350/add:z:0,lstm_cell_350/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_350/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_350/splitSplit&lstm_cell_350/split/split_dim:output:0lstm_cell_350/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_350/SigmoidSigmoidlstm_cell_350/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_350/Sigmoid_1Sigmoidlstm_cell_350/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_350/mulMullstm_cell_350/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_350/ReluRelulstm_cell_350/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_350/mul_1Mullstm_cell_350/Sigmoid:y:0 lstm_cell_350/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_350/add_1AddV2lstm_cell_350/mul:z:0lstm_cell_350/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_350/Sigmoid_2Sigmoidlstm_cell_350/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_350/Relu_1Relulstm_cell_350/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_350/mul_2Mullstm_cell_350/Sigmoid_2:y:0"lstm_cell_350/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_350_matmul_readvariableop_resource.lstm_cell_350_matmul_1_readvariableop_resource-lstm_cell_350_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2122099*
condR
while_cond_2122098*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????
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
:?????????
?
NoOpNoOp%^lstm_cell_350/BiasAdd/ReadVariableOp$^lstm_cell_350/MatMul/ReadVariableOp&^lstm_cell_350/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_350/BiasAdd/ReadVariableOp$lstm_cell_350/BiasAdd/ReadVariableOp2J
#lstm_cell_350/MatMul/ReadVariableOp#lstm_cell_350/MatMul/ReadVariableOp2N
%lstm_cell_350/MatMul_1/ReadVariableOp%lstm_cell_350/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_348_layer_call_and_return_conditional_losses_2122554

inputs
states_0
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	d?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????d?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????d:?????????d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/1
?K
?
E__inference_lstm_124_layer_call_and_return_conditional_losses_2121424
inputs_0?
,lstm_cell_349_matmul_readvariableop_resource:	d?A
.lstm_cell_349_matmul_1_readvariableop_resource:	2?<
-lstm_cell_349_biasadd_readvariableop_resource:	?
identity??$lstm_cell_349/BiasAdd/ReadVariableOp?#lstm_cell_349/MatMul/ReadVariableOp?%lstm_cell_349/MatMul_1/ReadVariableOp?while=
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
valueB:?
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
:?????????2R
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
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????dD
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
#lstm_cell_349/MatMul/ReadVariableOpReadVariableOp,lstm_cell_349_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_349/MatMulMatMulstrided_slice_2:output:0+lstm_cell_349/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_349/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_349_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_349/MatMul_1MatMulzeros:output:0-lstm_cell_349/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_349/addAddV2lstm_cell_349/MatMul:product:0 lstm_cell_349/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_349/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_349_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_349/BiasAddBiasAddlstm_cell_349/add:z:0,lstm_cell_349/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_349/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_349/splitSplit&lstm_cell_349/split/split_dim:output:0lstm_cell_349/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_349/SigmoidSigmoidlstm_cell_349/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_349/Sigmoid_1Sigmoidlstm_cell_349/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_349/mulMullstm_cell_349/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_349/ReluRelulstm_cell_349/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_349/mul_1Mullstm_cell_349/Sigmoid:y:0 lstm_cell_349/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_349/add_1AddV2lstm_cell_349/mul:z:0lstm_cell_349/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_349/Sigmoid_2Sigmoidlstm_cell_349/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_349/Relu_1Relulstm_cell_349/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_349/mul_2Mullstm_cell_349/Sigmoid_2:y:0"lstm_cell_349/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_349_matmul_readvariableop_resource.lstm_cell_349_matmul_1_readvariableop_resource-lstm_cell_349_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2121340*
condR
while_cond_2121339*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2?
NoOpNoOp%^lstm_cell_349/BiasAdd/ReadVariableOp$^lstm_cell_349/MatMul/ReadVariableOp&^lstm_cell_349/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_349/BiasAdd/ReadVariableOp$lstm_cell_349/BiasAdd/ReadVariableOp2J
#lstm_cell_349/MatMul/ReadVariableOp#lstm_cell_349/MatMul/ReadVariableOp2N
%lstm_cell_349/MatMul_1/ReadVariableOp%lstm_cell_349/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_2120867
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_348_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_348_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_348_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_348_matmul_readvariableop_resource:	?G
4while_lstm_cell_348_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_348_biasadd_readvariableop_resource:	???*while/lstm_cell_348/BiasAdd/ReadVariableOp?)while/lstm_cell_348/MatMul/ReadVariableOp?+while/lstm_cell_348/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_348/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_348_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_348/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_348/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_348/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_348_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_348/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_348/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_348/addAddV2$while/lstm_cell_348/MatMul:product:0&while/lstm_cell_348/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_348/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_348_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_348/BiasAddBiasAddwhile/lstm_cell_348/add:z:02while/lstm_cell_348/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_348/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_348/splitSplit,while/lstm_cell_348/split/split_dim:output:0$while/lstm_cell_348/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_348/SigmoidSigmoid"while/lstm_cell_348/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_348/Sigmoid_1Sigmoid"while/lstm_cell_348/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_348/mulMul!while/lstm_cell_348/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_348/ReluRelu"while/lstm_cell_348/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_348/mul_1Mulwhile/lstm_cell_348/Sigmoid:y:0&while/lstm_cell_348/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_348/add_1AddV2while/lstm_cell_348/mul:z:0while/lstm_cell_348/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_348/Sigmoid_2Sigmoid"while/lstm_cell_348/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_348/Relu_1Reluwhile/lstm_cell_348/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_348/mul_2Mul!while/lstm_cell_348/Sigmoid_2:y:0(while/lstm_cell_348/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_348/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_348/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_348/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_348/BiasAdd/ReadVariableOp*^while/lstm_cell_348/MatMul/ReadVariableOp,^while/lstm_cell_348/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_348_biasadd_readvariableop_resource5while_lstm_cell_348_biasadd_readvariableop_resource_0"n
4while_lstm_cell_348_matmul_1_readvariableop_resource6while_lstm_cell_348_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_348_matmul_readvariableop_resource4while_lstm_cell_348_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_348/BiasAdd/ReadVariableOp*while/lstm_cell_348/BiasAdd/ReadVariableOp2V
)while/lstm_cell_348/MatMul/ReadVariableOp)while/lstm_cell_348/MatMul/ReadVariableOp2Z
+while/lstm_cell_348/MatMul_1/ReadVariableOp+while/lstm_cell_348/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?J
?
E__inference_lstm_125_layer_call_and_return_conditional_losses_2118952

inputs>
,lstm_cell_350_matmul_readvariableop_resource:2(@
.lstm_cell_350_matmul_1_readvariableop_resource:
(;
-lstm_cell_350_biasadd_readvariableop_resource:(
identity??$lstm_cell_350/BiasAdd/ReadVariableOp?#lstm_cell_350/MatMul/ReadVariableOp?%lstm_cell_350/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????
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
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
#lstm_cell_350/MatMul/ReadVariableOpReadVariableOp,lstm_cell_350_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_350/MatMulMatMulstrided_slice_2:output:0+lstm_cell_350/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_350/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_350_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_350/MatMul_1MatMulzeros:output:0-lstm_cell_350/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_350/addAddV2lstm_cell_350/MatMul:product:0 lstm_cell_350/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_350/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_350_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_350/BiasAddBiasAddlstm_cell_350/add:z:0,lstm_cell_350/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_350/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_350/splitSplit&lstm_cell_350/split/split_dim:output:0lstm_cell_350/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_350/SigmoidSigmoidlstm_cell_350/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_350/Sigmoid_1Sigmoidlstm_cell_350/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_350/mulMullstm_cell_350/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_350/ReluRelulstm_cell_350/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_350/mul_1Mullstm_cell_350/Sigmoid:y:0 lstm_cell_350/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_350/add_1AddV2lstm_cell_350/mul:z:0lstm_cell_350/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_350/Sigmoid_2Sigmoidlstm_cell_350/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_350/Relu_1Relulstm_cell_350/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_350/mul_2Mullstm_cell_350/Sigmoid_2:y:0"lstm_cell_350/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_350_matmul_readvariableop_resource.lstm_cell_350_matmul_1_readvariableop_resource-lstm_cell_350_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2118868*
condR
while_cond_2118867*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
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
:?????????
?
NoOpNoOp%^lstm_cell_350/BiasAdd/ReadVariableOp$^lstm_cell_350/MatMul/ReadVariableOp&^lstm_cell_350/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_350/BiasAdd/ReadVariableOp$lstm_cell_350/BiasAdd/ReadVariableOp2J
#lstm_cell_350/MatMul/ReadVariableOp#lstm_cell_350/MatMul/ReadVariableOp2N
%lstm_cell_350/MatMul_1/ReadVariableOp%lstm_cell_350/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_124_layer_call_and_return_conditional_losses_2118144

inputs(
lstm_cell_349_2118062:	d?(
lstm_cell_349_2118064:	2?$
lstm_cell_349_2118066:	?
identity??%lstm_cell_349/StatefulPartitionedCall?while;
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
valueB:?
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
:?????????2R
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
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????dD
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
%lstm_cell_349/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_349_2118062lstm_cell_349_2118064lstm_cell_349_2118066*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_349_layer_call_and_return_conditional_losses_2118016n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_349_2118062lstm_cell_349_2118064lstm_cell_349_2118066*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2118075*
condR
while_cond_2118074*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2v
NoOpNoOp&^lstm_cell_349/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_349/StatefulPartitionedCall%lstm_cell_349/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_2119413
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2119413___redundant_placeholder05
1while_while_cond_2119413___redundant_placeholder15
1while_while_cond_2119413___redundant_placeholder25
1while_while_cond_2119413___redundant_placeholder3
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
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?#
?
while_body_2117725
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_348_2117749_0:	?0
while_lstm_cell_348_2117751_0:	d?,
while_lstm_cell_348_2117753_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_348_2117749:	?.
while_lstm_cell_348_2117751:	d?*
while_lstm_cell_348_2117753:	???+while/lstm_cell_348/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_348/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_348_2117749_0while_lstm_cell_348_2117751_0while_lstm_cell_348_2117753_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????d:?????????d:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_348_layer_call_and_return_conditional_losses_2117666?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_348/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity4while/lstm_cell_348/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_348/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_348/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_348_2117749while_lstm_cell_348_2117749_0"<
while_lstm_cell_348_2117751while_lstm_cell_348_2117751_0"<
while_lstm_cell_348_2117753while_lstm_cell_348_2117753_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_348/StatefulPartitionedCall+while/lstm_cell_348/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
??
?
"__inference__wrapped_model_2117453
lstm_123_inputV
Csequential_41_lstm_123_lstm_cell_348_matmul_readvariableop_resource:	?X
Esequential_41_lstm_123_lstm_cell_348_matmul_1_readvariableop_resource:	d?S
Dsequential_41_lstm_123_lstm_cell_348_biasadd_readvariableop_resource:	?V
Csequential_41_lstm_124_lstm_cell_349_matmul_readvariableop_resource:	d?X
Esequential_41_lstm_124_lstm_cell_349_matmul_1_readvariableop_resource:	2?S
Dsequential_41_lstm_124_lstm_cell_349_biasadd_readvariableop_resource:	?U
Csequential_41_lstm_125_lstm_cell_350_matmul_readvariableop_resource:2(W
Esequential_41_lstm_125_lstm_cell_350_matmul_1_readvariableop_resource:
(R
Dsequential_41_lstm_125_lstm_cell_350_biasadd_readvariableop_resource:(G
5sequential_41_dense_41_matmul_readvariableop_resource:
D
6sequential_41_dense_41_biasadd_readvariableop_resource:
identity??-sequential_41/dense_41/BiasAdd/ReadVariableOp?,sequential_41/dense_41/MatMul/ReadVariableOp?;sequential_41/lstm_123/lstm_cell_348/BiasAdd/ReadVariableOp?:sequential_41/lstm_123/lstm_cell_348/MatMul/ReadVariableOp?<sequential_41/lstm_123/lstm_cell_348/MatMul_1/ReadVariableOp?sequential_41/lstm_123/while?;sequential_41/lstm_124/lstm_cell_349/BiasAdd/ReadVariableOp?:sequential_41/lstm_124/lstm_cell_349/MatMul/ReadVariableOp?<sequential_41/lstm_124/lstm_cell_349/MatMul_1/ReadVariableOp?sequential_41/lstm_124/while?;sequential_41/lstm_125/lstm_cell_350/BiasAdd/ReadVariableOp?:sequential_41/lstm_125/lstm_cell_350/MatMul/ReadVariableOp?<sequential_41/lstm_125/lstm_cell_350/MatMul_1/ReadVariableOp?sequential_41/lstm_125/whileZ
sequential_41/lstm_123/ShapeShapelstm_123_input*
T0*
_output_shapes
:t
*sequential_41/lstm_123/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_41/lstm_123/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_41/lstm_123/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_41/lstm_123/strided_sliceStridedSlice%sequential_41/lstm_123/Shape:output:03sequential_41/lstm_123/strided_slice/stack:output:05sequential_41/lstm_123/strided_slice/stack_1:output:05sequential_41/lstm_123/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_41/lstm_123/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_41/lstm_123/zeros/packedPack-sequential_41/lstm_123/strided_slice:output:0.sequential_41/lstm_123/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_41/lstm_123/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_41/lstm_123/zerosFill,sequential_41/lstm_123/zeros/packed:output:0+sequential_41/lstm_123/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_41/lstm_123/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_41/lstm_123/zeros_1/packedPack-sequential_41/lstm_123/strided_slice:output:00sequential_41/lstm_123/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_41/lstm_123/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_41/lstm_123/zeros_1Fill.sequential_41/lstm_123/zeros_1/packed:output:0-sequential_41/lstm_123/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_41/lstm_123/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_41/lstm_123/transpose	Transposelstm_123_input.sequential_41/lstm_123/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_41/lstm_123/Shape_1Shape$sequential_41/lstm_123/transpose:y:0*
T0*
_output_shapes
:v
,sequential_41/lstm_123/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_41/lstm_123/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_41/lstm_123/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_41/lstm_123/strided_slice_1StridedSlice'sequential_41/lstm_123/Shape_1:output:05sequential_41/lstm_123/strided_slice_1/stack:output:07sequential_41/lstm_123/strided_slice_1/stack_1:output:07sequential_41/lstm_123/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_41/lstm_123/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_41/lstm_123/TensorArrayV2TensorListReserve;sequential_41/lstm_123/TensorArrayV2/element_shape:output:0/sequential_41/lstm_123/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_41/lstm_123/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_41/lstm_123/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_41/lstm_123/transpose:y:0Usequential_41/lstm_123/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_41/lstm_123/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_41/lstm_123/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_41/lstm_123/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_41/lstm_123/strided_slice_2StridedSlice$sequential_41/lstm_123/transpose:y:05sequential_41/lstm_123/strided_slice_2/stack:output:07sequential_41/lstm_123/strided_slice_2/stack_1:output:07sequential_41/lstm_123/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_41/lstm_123/lstm_cell_348/MatMul/ReadVariableOpReadVariableOpCsequential_41_lstm_123_lstm_cell_348_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_41/lstm_123/lstm_cell_348/MatMulMatMul/sequential_41/lstm_123/strided_slice_2:output:0Bsequential_41/lstm_123/lstm_cell_348/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_41/lstm_123/lstm_cell_348/MatMul_1/ReadVariableOpReadVariableOpEsequential_41_lstm_123_lstm_cell_348_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_41/lstm_123/lstm_cell_348/MatMul_1MatMul%sequential_41/lstm_123/zeros:output:0Dsequential_41/lstm_123/lstm_cell_348/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_41/lstm_123/lstm_cell_348/addAddV25sequential_41/lstm_123/lstm_cell_348/MatMul:product:07sequential_41/lstm_123/lstm_cell_348/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_41/lstm_123/lstm_cell_348/BiasAdd/ReadVariableOpReadVariableOpDsequential_41_lstm_123_lstm_cell_348_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_41/lstm_123/lstm_cell_348/BiasAddBiasAdd,sequential_41/lstm_123/lstm_cell_348/add:z:0Csequential_41/lstm_123/lstm_cell_348/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_41/lstm_123/lstm_cell_348/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_41/lstm_123/lstm_cell_348/splitSplit=sequential_41/lstm_123/lstm_cell_348/split/split_dim:output:05sequential_41/lstm_123/lstm_cell_348/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_41/lstm_123/lstm_cell_348/SigmoidSigmoid3sequential_41/lstm_123/lstm_cell_348/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_41/lstm_123/lstm_cell_348/Sigmoid_1Sigmoid3sequential_41/lstm_123/lstm_cell_348/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_41/lstm_123/lstm_cell_348/mulMul2sequential_41/lstm_123/lstm_cell_348/Sigmoid_1:y:0'sequential_41/lstm_123/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_41/lstm_123/lstm_cell_348/ReluRelu3sequential_41/lstm_123/lstm_cell_348/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_41/lstm_123/lstm_cell_348/mul_1Mul0sequential_41/lstm_123/lstm_cell_348/Sigmoid:y:07sequential_41/lstm_123/lstm_cell_348/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_41/lstm_123/lstm_cell_348/add_1AddV2,sequential_41/lstm_123/lstm_cell_348/mul:z:0.sequential_41/lstm_123/lstm_cell_348/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_41/lstm_123/lstm_cell_348/Sigmoid_2Sigmoid3sequential_41/lstm_123/lstm_cell_348/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_41/lstm_123/lstm_cell_348/Relu_1Relu.sequential_41/lstm_123/lstm_cell_348/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_41/lstm_123/lstm_cell_348/mul_2Mul2sequential_41/lstm_123/lstm_cell_348/Sigmoid_2:y:09sequential_41/lstm_123/lstm_cell_348/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_41/lstm_123/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_41/lstm_123/TensorArrayV2_1TensorListReserve=sequential_41/lstm_123/TensorArrayV2_1/element_shape:output:0/sequential_41/lstm_123/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_41/lstm_123/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_41/lstm_123/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_41/lstm_123/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_41/lstm_123/whileWhile2sequential_41/lstm_123/while/loop_counter:output:08sequential_41/lstm_123/while/maximum_iterations:output:0$sequential_41/lstm_123/time:output:0/sequential_41/lstm_123/TensorArrayV2_1:handle:0%sequential_41/lstm_123/zeros:output:0'sequential_41/lstm_123/zeros_1:output:0/sequential_41/lstm_123/strided_slice_1:output:0Nsequential_41/lstm_123/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_41_lstm_123_lstm_cell_348_matmul_readvariableop_resourceEsequential_41_lstm_123_lstm_cell_348_matmul_1_readvariableop_resourceDsequential_41_lstm_123_lstm_cell_348_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_41_lstm_123_while_body_2117085*5
cond-R+
)sequential_41_lstm_123_while_cond_2117084*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_41/lstm_123/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_41/lstm_123/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_41/lstm_123/while:output:3Psequential_41/lstm_123/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_41/lstm_123/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_41/lstm_123/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_41/lstm_123/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_41/lstm_123/strided_slice_3StridedSliceBsequential_41/lstm_123/TensorArrayV2Stack/TensorListStack:tensor:05sequential_41/lstm_123/strided_slice_3/stack:output:07sequential_41/lstm_123/strided_slice_3/stack_1:output:07sequential_41/lstm_123/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_41/lstm_123/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_41/lstm_123/transpose_1	TransposeBsequential_41/lstm_123/TensorArrayV2Stack/TensorListStack:tensor:00sequential_41/lstm_123/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_41/lstm_123/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_41/lstm_124/ShapeShape&sequential_41/lstm_123/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_41/lstm_124/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_41/lstm_124/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_41/lstm_124/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_41/lstm_124/strided_sliceStridedSlice%sequential_41/lstm_124/Shape:output:03sequential_41/lstm_124/strided_slice/stack:output:05sequential_41/lstm_124/strided_slice/stack_1:output:05sequential_41/lstm_124/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_41/lstm_124/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_41/lstm_124/zeros/packedPack-sequential_41/lstm_124/strided_slice:output:0.sequential_41/lstm_124/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_41/lstm_124/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_41/lstm_124/zerosFill,sequential_41/lstm_124/zeros/packed:output:0+sequential_41/lstm_124/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_41/lstm_124/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_41/lstm_124/zeros_1/packedPack-sequential_41/lstm_124/strided_slice:output:00sequential_41/lstm_124/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_41/lstm_124/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_41/lstm_124/zeros_1Fill.sequential_41/lstm_124/zeros_1/packed:output:0-sequential_41/lstm_124/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_41/lstm_124/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_41/lstm_124/transpose	Transpose&sequential_41/lstm_123/transpose_1:y:0.sequential_41/lstm_124/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_41/lstm_124/Shape_1Shape$sequential_41/lstm_124/transpose:y:0*
T0*
_output_shapes
:v
,sequential_41/lstm_124/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_41/lstm_124/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_41/lstm_124/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_41/lstm_124/strided_slice_1StridedSlice'sequential_41/lstm_124/Shape_1:output:05sequential_41/lstm_124/strided_slice_1/stack:output:07sequential_41/lstm_124/strided_slice_1/stack_1:output:07sequential_41/lstm_124/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_41/lstm_124/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_41/lstm_124/TensorArrayV2TensorListReserve;sequential_41/lstm_124/TensorArrayV2/element_shape:output:0/sequential_41/lstm_124/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_41/lstm_124/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_41/lstm_124/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_41/lstm_124/transpose:y:0Usequential_41/lstm_124/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_41/lstm_124/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_41/lstm_124/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_41/lstm_124/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_41/lstm_124/strided_slice_2StridedSlice$sequential_41/lstm_124/transpose:y:05sequential_41/lstm_124/strided_slice_2/stack:output:07sequential_41/lstm_124/strided_slice_2/stack_1:output:07sequential_41/lstm_124/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_41/lstm_124/lstm_cell_349/MatMul/ReadVariableOpReadVariableOpCsequential_41_lstm_124_lstm_cell_349_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_41/lstm_124/lstm_cell_349/MatMulMatMul/sequential_41/lstm_124/strided_slice_2:output:0Bsequential_41/lstm_124/lstm_cell_349/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_41/lstm_124/lstm_cell_349/MatMul_1/ReadVariableOpReadVariableOpEsequential_41_lstm_124_lstm_cell_349_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_41/lstm_124/lstm_cell_349/MatMul_1MatMul%sequential_41/lstm_124/zeros:output:0Dsequential_41/lstm_124/lstm_cell_349/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_41/lstm_124/lstm_cell_349/addAddV25sequential_41/lstm_124/lstm_cell_349/MatMul:product:07sequential_41/lstm_124/lstm_cell_349/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_41/lstm_124/lstm_cell_349/BiasAdd/ReadVariableOpReadVariableOpDsequential_41_lstm_124_lstm_cell_349_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_41/lstm_124/lstm_cell_349/BiasAddBiasAdd,sequential_41/lstm_124/lstm_cell_349/add:z:0Csequential_41/lstm_124/lstm_cell_349/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_41/lstm_124/lstm_cell_349/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_41/lstm_124/lstm_cell_349/splitSplit=sequential_41/lstm_124/lstm_cell_349/split/split_dim:output:05sequential_41/lstm_124/lstm_cell_349/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_41/lstm_124/lstm_cell_349/SigmoidSigmoid3sequential_41/lstm_124/lstm_cell_349/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_41/lstm_124/lstm_cell_349/Sigmoid_1Sigmoid3sequential_41/lstm_124/lstm_cell_349/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_41/lstm_124/lstm_cell_349/mulMul2sequential_41/lstm_124/lstm_cell_349/Sigmoid_1:y:0'sequential_41/lstm_124/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_41/lstm_124/lstm_cell_349/ReluRelu3sequential_41/lstm_124/lstm_cell_349/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_41/lstm_124/lstm_cell_349/mul_1Mul0sequential_41/lstm_124/lstm_cell_349/Sigmoid:y:07sequential_41/lstm_124/lstm_cell_349/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_41/lstm_124/lstm_cell_349/add_1AddV2,sequential_41/lstm_124/lstm_cell_349/mul:z:0.sequential_41/lstm_124/lstm_cell_349/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_41/lstm_124/lstm_cell_349/Sigmoid_2Sigmoid3sequential_41/lstm_124/lstm_cell_349/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_41/lstm_124/lstm_cell_349/Relu_1Relu.sequential_41/lstm_124/lstm_cell_349/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_41/lstm_124/lstm_cell_349/mul_2Mul2sequential_41/lstm_124/lstm_cell_349/Sigmoid_2:y:09sequential_41/lstm_124/lstm_cell_349/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_41/lstm_124/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_41/lstm_124/TensorArrayV2_1TensorListReserve=sequential_41/lstm_124/TensorArrayV2_1/element_shape:output:0/sequential_41/lstm_124/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_41/lstm_124/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_41/lstm_124/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_41/lstm_124/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_41/lstm_124/whileWhile2sequential_41/lstm_124/while/loop_counter:output:08sequential_41/lstm_124/while/maximum_iterations:output:0$sequential_41/lstm_124/time:output:0/sequential_41/lstm_124/TensorArrayV2_1:handle:0%sequential_41/lstm_124/zeros:output:0'sequential_41/lstm_124/zeros_1:output:0/sequential_41/lstm_124/strided_slice_1:output:0Nsequential_41/lstm_124/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_41_lstm_124_lstm_cell_349_matmul_readvariableop_resourceEsequential_41_lstm_124_lstm_cell_349_matmul_1_readvariableop_resourceDsequential_41_lstm_124_lstm_cell_349_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_41_lstm_124_while_body_2117224*5
cond-R+
)sequential_41_lstm_124_while_cond_2117223*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_41/lstm_124/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_41/lstm_124/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_41/lstm_124/while:output:3Psequential_41/lstm_124/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_41/lstm_124/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_41/lstm_124/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_41/lstm_124/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_41/lstm_124/strided_slice_3StridedSliceBsequential_41/lstm_124/TensorArrayV2Stack/TensorListStack:tensor:05sequential_41/lstm_124/strided_slice_3/stack:output:07sequential_41/lstm_124/strided_slice_3/stack_1:output:07sequential_41/lstm_124/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_41/lstm_124/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_41/lstm_124/transpose_1	TransposeBsequential_41/lstm_124/TensorArrayV2Stack/TensorListStack:tensor:00sequential_41/lstm_124/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_41/lstm_124/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_41/lstm_125/ShapeShape&sequential_41/lstm_124/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_41/lstm_125/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_41/lstm_125/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_41/lstm_125/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_41/lstm_125/strided_sliceStridedSlice%sequential_41/lstm_125/Shape:output:03sequential_41/lstm_125/strided_slice/stack:output:05sequential_41/lstm_125/strided_slice/stack_1:output:05sequential_41/lstm_125/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_41/lstm_125/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_41/lstm_125/zeros/packedPack-sequential_41/lstm_125/strided_slice:output:0.sequential_41/lstm_125/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_41/lstm_125/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_41/lstm_125/zerosFill,sequential_41/lstm_125/zeros/packed:output:0+sequential_41/lstm_125/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_41/lstm_125/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_41/lstm_125/zeros_1/packedPack-sequential_41/lstm_125/strided_slice:output:00sequential_41/lstm_125/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_41/lstm_125/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_41/lstm_125/zeros_1Fill.sequential_41/lstm_125/zeros_1/packed:output:0-sequential_41/lstm_125/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_41/lstm_125/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_41/lstm_125/transpose	Transpose&sequential_41/lstm_124/transpose_1:y:0.sequential_41/lstm_125/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_41/lstm_125/Shape_1Shape$sequential_41/lstm_125/transpose:y:0*
T0*
_output_shapes
:v
,sequential_41/lstm_125/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_41/lstm_125/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_41/lstm_125/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_41/lstm_125/strided_slice_1StridedSlice'sequential_41/lstm_125/Shape_1:output:05sequential_41/lstm_125/strided_slice_1/stack:output:07sequential_41/lstm_125/strided_slice_1/stack_1:output:07sequential_41/lstm_125/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_41/lstm_125/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_41/lstm_125/TensorArrayV2TensorListReserve;sequential_41/lstm_125/TensorArrayV2/element_shape:output:0/sequential_41/lstm_125/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_41/lstm_125/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_41/lstm_125/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_41/lstm_125/transpose:y:0Usequential_41/lstm_125/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_41/lstm_125/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_41/lstm_125/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_41/lstm_125/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_41/lstm_125/strided_slice_2StridedSlice$sequential_41/lstm_125/transpose:y:05sequential_41/lstm_125/strided_slice_2/stack:output:07sequential_41/lstm_125/strided_slice_2/stack_1:output:07sequential_41/lstm_125/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_41/lstm_125/lstm_cell_350/MatMul/ReadVariableOpReadVariableOpCsequential_41_lstm_125_lstm_cell_350_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_41/lstm_125/lstm_cell_350/MatMulMatMul/sequential_41/lstm_125/strided_slice_2:output:0Bsequential_41/lstm_125/lstm_cell_350/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_41/lstm_125/lstm_cell_350/MatMul_1/ReadVariableOpReadVariableOpEsequential_41_lstm_125_lstm_cell_350_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_41/lstm_125/lstm_cell_350/MatMul_1MatMul%sequential_41/lstm_125/zeros:output:0Dsequential_41/lstm_125/lstm_cell_350/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_41/lstm_125/lstm_cell_350/addAddV25sequential_41/lstm_125/lstm_cell_350/MatMul:product:07sequential_41/lstm_125/lstm_cell_350/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_41/lstm_125/lstm_cell_350/BiasAdd/ReadVariableOpReadVariableOpDsequential_41_lstm_125_lstm_cell_350_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_41/lstm_125/lstm_cell_350/BiasAddBiasAdd,sequential_41/lstm_125/lstm_cell_350/add:z:0Csequential_41/lstm_125/lstm_cell_350/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_41/lstm_125/lstm_cell_350/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_41/lstm_125/lstm_cell_350/splitSplit=sequential_41/lstm_125/lstm_cell_350/split/split_dim:output:05sequential_41/lstm_125/lstm_cell_350/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_41/lstm_125/lstm_cell_350/SigmoidSigmoid3sequential_41/lstm_125/lstm_cell_350/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_41/lstm_125/lstm_cell_350/Sigmoid_1Sigmoid3sequential_41/lstm_125/lstm_cell_350/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_41/lstm_125/lstm_cell_350/mulMul2sequential_41/lstm_125/lstm_cell_350/Sigmoid_1:y:0'sequential_41/lstm_125/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_41/lstm_125/lstm_cell_350/ReluRelu3sequential_41/lstm_125/lstm_cell_350/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_41/lstm_125/lstm_cell_350/mul_1Mul0sequential_41/lstm_125/lstm_cell_350/Sigmoid:y:07sequential_41/lstm_125/lstm_cell_350/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_41/lstm_125/lstm_cell_350/add_1AddV2,sequential_41/lstm_125/lstm_cell_350/mul:z:0.sequential_41/lstm_125/lstm_cell_350/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_41/lstm_125/lstm_cell_350/Sigmoid_2Sigmoid3sequential_41/lstm_125/lstm_cell_350/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_41/lstm_125/lstm_cell_350/Relu_1Relu.sequential_41/lstm_125/lstm_cell_350/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_41/lstm_125/lstm_cell_350/mul_2Mul2sequential_41/lstm_125/lstm_cell_350/Sigmoid_2:y:09sequential_41/lstm_125/lstm_cell_350/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_41/lstm_125/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_41/lstm_125/TensorArrayV2_1TensorListReserve=sequential_41/lstm_125/TensorArrayV2_1/element_shape:output:0/sequential_41/lstm_125/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_41/lstm_125/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_41/lstm_125/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_41/lstm_125/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_41/lstm_125/whileWhile2sequential_41/lstm_125/while/loop_counter:output:08sequential_41/lstm_125/while/maximum_iterations:output:0$sequential_41/lstm_125/time:output:0/sequential_41/lstm_125/TensorArrayV2_1:handle:0%sequential_41/lstm_125/zeros:output:0'sequential_41/lstm_125/zeros_1:output:0/sequential_41/lstm_125/strided_slice_1:output:0Nsequential_41/lstm_125/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_41_lstm_125_lstm_cell_350_matmul_readvariableop_resourceEsequential_41_lstm_125_lstm_cell_350_matmul_1_readvariableop_resourceDsequential_41_lstm_125_lstm_cell_350_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_41_lstm_125_while_body_2117363*5
cond-R+
)sequential_41_lstm_125_while_cond_2117362*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_41/lstm_125/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_41/lstm_125/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_41/lstm_125/while:output:3Psequential_41/lstm_125/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_41/lstm_125/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_41/lstm_125/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_41/lstm_125/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_41/lstm_125/strided_slice_3StridedSliceBsequential_41/lstm_125/TensorArrayV2Stack/TensorListStack:tensor:05sequential_41/lstm_125/strided_slice_3/stack:output:07sequential_41/lstm_125/strided_slice_3/stack_1:output:07sequential_41/lstm_125/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_41/lstm_125/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_41/lstm_125/transpose_1	TransposeBsequential_41/lstm_125/TensorArrayV2Stack/TensorListStack:tensor:00sequential_41/lstm_125/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_41/lstm_125/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_41/dense_41/MatMul/ReadVariableOpReadVariableOp5sequential_41_dense_41_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_41/dense_41/MatMulMatMul/sequential_41/lstm_125/strided_slice_3:output:04sequential_41/dense_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_41/dense_41/BiasAdd/ReadVariableOpReadVariableOp6sequential_41_dense_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_41/dense_41/BiasAddBiasAdd'sequential_41/dense_41/MatMul:product:05sequential_41/dense_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_41/dense_41/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_41/dense_41/BiasAdd/ReadVariableOp-^sequential_41/dense_41/MatMul/ReadVariableOp<^sequential_41/lstm_123/lstm_cell_348/BiasAdd/ReadVariableOp;^sequential_41/lstm_123/lstm_cell_348/MatMul/ReadVariableOp=^sequential_41/lstm_123/lstm_cell_348/MatMul_1/ReadVariableOp^sequential_41/lstm_123/while<^sequential_41/lstm_124/lstm_cell_349/BiasAdd/ReadVariableOp;^sequential_41/lstm_124/lstm_cell_349/MatMul/ReadVariableOp=^sequential_41/lstm_124/lstm_cell_349/MatMul_1/ReadVariableOp^sequential_41/lstm_124/while<^sequential_41/lstm_125/lstm_cell_350/BiasAdd/ReadVariableOp;^sequential_41/lstm_125/lstm_cell_350/MatMul/ReadVariableOp=^sequential_41/lstm_125/lstm_cell_350/MatMul_1/ReadVariableOp^sequential_41/lstm_125/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_41/dense_41/BiasAdd/ReadVariableOp-sequential_41/dense_41/BiasAdd/ReadVariableOp2\
,sequential_41/dense_41/MatMul/ReadVariableOp,sequential_41/dense_41/MatMul/ReadVariableOp2z
;sequential_41/lstm_123/lstm_cell_348/BiasAdd/ReadVariableOp;sequential_41/lstm_123/lstm_cell_348/BiasAdd/ReadVariableOp2x
:sequential_41/lstm_123/lstm_cell_348/MatMul/ReadVariableOp:sequential_41/lstm_123/lstm_cell_348/MatMul/ReadVariableOp2|
<sequential_41/lstm_123/lstm_cell_348/MatMul_1/ReadVariableOp<sequential_41/lstm_123/lstm_cell_348/MatMul_1/ReadVariableOp2<
sequential_41/lstm_123/whilesequential_41/lstm_123/while2z
;sequential_41/lstm_124/lstm_cell_349/BiasAdd/ReadVariableOp;sequential_41/lstm_124/lstm_cell_349/BiasAdd/ReadVariableOp2x
:sequential_41/lstm_124/lstm_cell_349/MatMul/ReadVariableOp:sequential_41/lstm_124/lstm_cell_349/MatMul/ReadVariableOp2|
<sequential_41/lstm_124/lstm_cell_349/MatMul_1/ReadVariableOp<sequential_41/lstm_124/lstm_cell_349/MatMul_1/ReadVariableOp2<
sequential_41/lstm_124/whilesequential_41/lstm_124/while2z
;sequential_41/lstm_125/lstm_cell_350/BiasAdd/ReadVariableOp;sequential_41/lstm_125/lstm_cell_350/BiasAdd/ReadVariableOp2x
:sequential_41/lstm_125/lstm_cell_350/MatMul/ReadVariableOp:sequential_41/lstm_125/lstm_cell_350/MatMul/ReadVariableOp2|
<sequential_41/lstm_125/lstm_cell_350/MatMul_1/ReadVariableOp<sequential_41/lstm_125/lstm_cell_350/MatMul_1/ReadVariableOp2<
sequential_41/lstm_125/whilesequential_41/lstm_125/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_123_input
?J
?
E__inference_lstm_123_layer_call_and_return_conditional_losses_2121094

inputs?
,lstm_cell_348_matmul_readvariableop_resource:	?A
.lstm_cell_348_matmul_1_readvariableop_resource:	d?<
-lstm_cell_348_biasadd_readvariableop_resource:	?
identity??$lstm_cell_348/BiasAdd/ReadVariableOp?#lstm_cell_348/MatMul/ReadVariableOp?%lstm_cell_348/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????dR
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
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_348/MatMul/ReadVariableOpReadVariableOp,lstm_cell_348_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_348/MatMulMatMulstrided_slice_2:output:0+lstm_cell_348/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_348/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_348_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_348/MatMul_1MatMulzeros:output:0-lstm_cell_348/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_348/addAddV2lstm_cell_348/MatMul:product:0 lstm_cell_348/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_348/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_348_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_348/BiasAddBiasAddlstm_cell_348/add:z:0,lstm_cell_348/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_348/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_348/splitSplit&lstm_cell_348/split/split_dim:output:0lstm_cell_348/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_348/SigmoidSigmoidlstm_cell_348/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_348/Sigmoid_1Sigmoidlstm_cell_348/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_348/mulMullstm_cell_348/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_348/ReluRelulstm_cell_348/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_348/mul_1Mullstm_cell_348/Sigmoid:y:0 lstm_cell_348/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_348/add_1AddV2lstm_cell_348/mul:z:0lstm_cell_348/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_348/Sigmoid_2Sigmoidlstm_cell_348/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_348/Relu_1Relulstm_cell_348/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_348/mul_2Mullstm_cell_348/Sigmoid_2:y:0"lstm_cell_348/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_348_matmul_readvariableop_resource.lstm_cell_348_matmul_1_readvariableop_resource-lstm_cell_348_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2121010*
condR
while_cond_2121009*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????d?
NoOpNoOp%^lstm_cell_348/BiasAdd/ReadVariableOp$^lstm_cell_348/MatMul/ReadVariableOp&^lstm_cell_348/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_348/BiasAdd/ReadVariableOp$lstm_cell_348/BiasAdd/ReadVariableOp2J
#lstm_cell_348/MatMul/ReadVariableOp#lstm_cell_348/MatMul/ReadVariableOp2N
%lstm_cell_348/MatMul_1/ReadVariableOp%lstm_cell_348/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_2117884
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_349_2117908_0:	d?0
while_lstm_cell_349_2117910_0:	2?,
while_lstm_cell_349_2117912_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_349_2117908:	d?.
while_lstm_cell_349_2117910:	2?*
while_lstm_cell_349_2117912:	???+while/lstm_cell_349/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_349/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_349_2117908_0while_lstm_cell_349_2117910_0while_lstm_cell_349_2117912_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_349_layer_call_and_return_conditional_losses_2117870?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_349/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity4while/lstm_cell_349/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_349/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_349/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_349_2117908while_lstm_cell_349_2117908_0"<
while_lstm_cell_349_2117910while_lstm_cell_349_2117910_0"<
while_lstm_cell_349_2117912while_lstm_cell_349_2117912_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_349/StatefulPartitionedCall+while/lstm_cell_349/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
*__inference_lstm_124_layer_call_fn_2121248
inputs_0
unknown:	d?
	unknown_0:	2?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_124_layer_call_and_return_conditional_losses_2117953|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
lstm_124_while_cond_2119964.
*lstm_124_while_lstm_124_while_loop_counter4
0lstm_124_while_lstm_124_while_maximum_iterations
lstm_124_while_placeholder 
lstm_124_while_placeholder_1 
lstm_124_while_placeholder_2 
lstm_124_while_placeholder_30
,lstm_124_while_less_lstm_124_strided_slice_1G
Clstm_124_while_lstm_124_while_cond_2119964___redundant_placeholder0G
Clstm_124_while_lstm_124_while_cond_2119964___redundant_placeholder1G
Clstm_124_while_lstm_124_while_cond_2119964___redundant_placeholder2G
Clstm_124_while_lstm_124_while_cond_2119964___redundant_placeholder3
lstm_124_while_identity
?
lstm_124/while/LessLesslstm_124_while_placeholder,lstm_124_while_less_lstm_124_strided_slice_1*
T0*
_output_shapes
: ]
lstm_124/while/IdentityIdentitylstm_124/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_124_while_identity lstm_124/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_2122384
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2122384___redundant_placeholder05
1while_while_cond_2122384___redundant_placeholder15
1while_while_cond_2122384___redundant_placeholder25
1while_while_cond_2122384___redundant_placeholder3
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
@: : : : :?????????
:?????????
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
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?#
?
while_body_2118425
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_350_2118449_0:2(/
while_lstm_cell_350_2118451_0:
(+
while_lstm_cell_350_2118453_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_350_2118449:2(-
while_lstm_cell_350_2118451:
()
while_lstm_cell_350_2118453:(??+while/lstm_cell_350/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_350/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_350_2118449_0while_lstm_cell_350_2118451_0while_lstm_cell_350_2118453_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_350_layer_call_and_return_conditional_losses_2118366?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_350/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity4while/lstm_cell_350/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_350/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_350/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_350_2118449while_lstm_cell_350_2118449_0"<
while_lstm_cell_350_2118451while_lstm_cell_350_2118451_0"<
while_lstm_cell_350_2118453while_lstm_cell_350_2118453_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_350/StatefulPartitionedCall+while/lstm_cell_350/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?W
?
 __inference__traced_save_2122925
file_prefix.
*savev2_dense_41_kernel_read_readvariableop,
(savev2_dense_41_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_123_lstm_cell_123_kernel_read_readvariableopF
Bsavev2_lstm_123_lstm_cell_123_recurrent_kernel_read_readvariableop:
6savev2_lstm_123_lstm_cell_123_bias_read_readvariableop<
8savev2_lstm_124_lstm_cell_124_kernel_read_readvariableopF
Bsavev2_lstm_124_lstm_cell_124_recurrent_kernel_read_readvariableop:
6savev2_lstm_124_lstm_cell_124_bias_read_readvariableop<
8savev2_lstm_125_lstm_cell_125_kernel_read_readvariableopF
Bsavev2_lstm_125_lstm_cell_125_recurrent_kernel_read_readvariableop:
6savev2_lstm_125_lstm_cell_125_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_41_kernel_m_read_readvariableop3
/savev2_adam_dense_41_bias_m_read_readvariableopC
?savev2_adam_lstm_123_lstm_cell_123_kernel_m_read_readvariableopM
Isavev2_adam_lstm_123_lstm_cell_123_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_123_lstm_cell_123_bias_m_read_readvariableopC
?savev2_adam_lstm_124_lstm_cell_124_kernel_m_read_readvariableopM
Isavev2_adam_lstm_124_lstm_cell_124_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_124_lstm_cell_124_bias_m_read_readvariableopC
?savev2_adam_lstm_125_lstm_cell_125_kernel_m_read_readvariableopM
Isavev2_adam_lstm_125_lstm_cell_125_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_125_lstm_cell_125_bias_m_read_readvariableop5
1savev2_adam_dense_41_kernel_v_read_readvariableop3
/savev2_adam_dense_41_bias_v_read_readvariableopC
?savev2_adam_lstm_123_lstm_cell_123_kernel_v_read_readvariableopM
Isavev2_adam_lstm_123_lstm_cell_123_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_123_lstm_cell_123_bias_v_read_readvariableopC
?savev2_adam_lstm_124_lstm_cell_124_kernel_v_read_readvariableopM
Isavev2_adam_lstm_124_lstm_cell_124_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_124_lstm_cell_124_bias_v_read_readvariableopC
?savev2_adam_lstm_125_lstm_cell_125_kernel_v_read_readvariableopM
Isavev2_adam_lstm_125_lstm_cell_125_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_125_lstm_cell_125_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*?
value?B?)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_41_kernel_read_readvariableop(savev2_dense_41_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_123_lstm_cell_123_kernel_read_readvariableopBsavev2_lstm_123_lstm_cell_123_recurrent_kernel_read_readvariableop6savev2_lstm_123_lstm_cell_123_bias_read_readvariableop8savev2_lstm_124_lstm_cell_124_kernel_read_readvariableopBsavev2_lstm_124_lstm_cell_124_recurrent_kernel_read_readvariableop6savev2_lstm_124_lstm_cell_124_bias_read_readvariableop8savev2_lstm_125_lstm_cell_125_kernel_read_readvariableopBsavev2_lstm_125_lstm_cell_125_recurrent_kernel_read_readvariableop6savev2_lstm_125_lstm_cell_125_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_41_kernel_m_read_readvariableop/savev2_adam_dense_41_bias_m_read_readvariableop?savev2_adam_lstm_123_lstm_cell_123_kernel_m_read_readvariableopIsavev2_adam_lstm_123_lstm_cell_123_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_123_lstm_cell_123_bias_m_read_readvariableop?savev2_adam_lstm_124_lstm_cell_124_kernel_m_read_readvariableopIsavev2_adam_lstm_124_lstm_cell_124_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_124_lstm_cell_124_bias_m_read_readvariableop?savev2_adam_lstm_125_lstm_cell_125_kernel_m_read_readvariableopIsavev2_adam_lstm_125_lstm_cell_125_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_125_lstm_cell_125_bias_m_read_readvariableop1savev2_adam_dense_41_kernel_v_read_readvariableop/savev2_adam_dense_41_bias_v_read_readvariableop?savev2_adam_lstm_123_lstm_cell_123_kernel_v_read_readvariableopIsavev2_adam_lstm_123_lstm_cell_123_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_123_lstm_cell_123_bias_v_read_readvariableop?savev2_adam_lstm_124_lstm_cell_124_kernel_v_read_readvariableopIsavev2_adam_lstm_124_lstm_cell_124_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_124_lstm_cell_124_bias_v_read_readvariableop?savev2_adam_lstm_125_lstm_cell_125_kernel_v_read_readvariableopIsavev2_adam_lstm_125_lstm_cell_125_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_125_lstm_cell_125_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :
:: : : : : :	?:	d?:?:	d?:	2?:?:2(:
(:(: : :
::	?:	d?:?:	d?:	2?:?:2(:
(:(:
::	?:	d?:?:	d?:	2?:?:2(:
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
:	?:%	!

_output_shapes
:	d?:!


_output_shapes	
:?:%!

_output_shapes
:	d?:%!

_output_shapes
:	2?:!

_output_shapes	
:?:$ 

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
:	?:%!

_output_shapes
:	d?:!

_output_shapes	
:?:%!

_output_shapes
:	d?:%!

_output_shapes
:	2?:!

_output_shapes	
:?:$ 

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
:	?:%!!

_output_shapes
:	d?:!"

_output_shapes	
:?:%#!

_output_shapes
:	d?:%$!

_output_shapes
:	2?:!%

_output_shapes	
:?:$& 

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
??
?
J__inference_sequential_41_layer_call_and_return_conditional_losses_2120621

inputsH
5lstm_123_lstm_cell_348_matmul_readvariableop_resource:	?J
7lstm_123_lstm_cell_348_matmul_1_readvariableop_resource:	d?E
6lstm_123_lstm_cell_348_biasadd_readvariableop_resource:	?H
5lstm_124_lstm_cell_349_matmul_readvariableop_resource:	d?J
7lstm_124_lstm_cell_349_matmul_1_readvariableop_resource:	2?E
6lstm_124_lstm_cell_349_biasadd_readvariableop_resource:	?G
5lstm_125_lstm_cell_350_matmul_readvariableop_resource:2(I
7lstm_125_lstm_cell_350_matmul_1_readvariableop_resource:
(D
6lstm_125_lstm_cell_350_biasadd_readvariableop_resource:(9
'dense_41_matmul_readvariableop_resource:
6
(dense_41_biasadd_readvariableop_resource:
identity??dense_41/BiasAdd/ReadVariableOp?dense_41/MatMul/ReadVariableOp?-lstm_123/lstm_cell_348/BiasAdd/ReadVariableOp?,lstm_123/lstm_cell_348/MatMul/ReadVariableOp?.lstm_123/lstm_cell_348/MatMul_1/ReadVariableOp?lstm_123/while?-lstm_124/lstm_cell_349/BiasAdd/ReadVariableOp?,lstm_124/lstm_cell_349/MatMul/ReadVariableOp?.lstm_124/lstm_cell_349/MatMul_1/ReadVariableOp?lstm_124/while?-lstm_125/lstm_cell_350/BiasAdd/ReadVariableOp?,lstm_125/lstm_cell_350/MatMul/ReadVariableOp?.lstm_125/lstm_cell_350/MatMul_1/ReadVariableOp?lstm_125/whileD
lstm_123/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_123/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_123/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_123/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_123/strided_sliceStridedSlicelstm_123/Shape:output:0%lstm_123/strided_slice/stack:output:0'lstm_123/strided_slice/stack_1:output:0'lstm_123/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_123/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_123/zeros/packedPacklstm_123/strided_slice:output:0 lstm_123/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_123/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_123/zerosFilllstm_123/zeros/packed:output:0lstm_123/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_123/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_123/zeros_1/packedPacklstm_123/strided_slice:output:0"lstm_123/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_123/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_123/zeros_1Fill lstm_123/zeros_1/packed:output:0lstm_123/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_123/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_123/transpose	Transposeinputs lstm_123/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_123/Shape_1Shapelstm_123/transpose:y:0*
T0*
_output_shapes
:h
lstm_123/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_123/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_123/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_123/strided_slice_1StridedSlicelstm_123/Shape_1:output:0'lstm_123/strided_slice_1/stack:output:0)lstm_123/strided_slice_1/stack_1:output:0)lstm_123/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_123/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_123/TensorArrayV2TensorListReserve-lstm_123/TensorArrayV2/element_shape:output:0!lstm_123/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_123/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_123/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_123/transpose:y:0Glstm_123/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_123/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_123/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_123/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_123/strided_slice_2StridedSlicelstm_123/transpose:y:0'lstm_123/strided_slice_2/stack:output:0)lstm_123/strided_slice_2/stack_1:output:0)lstm_123/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_123/lstm_cell_348/MatMul/ReadVariableOpReadVariableOp5lstm_123_lstm_cell_348_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_123/lstm_cell_348/MatMulMatMul!lstm_123/strided_slice_2:output:04lstm_123/lstm_cell_348/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_123/lstm_cell_348/MatMul_1/ReadVariableOpReadVariableOp7lstm_123_lstm_cell_348_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_123/lstm_cell_348/MatMul_1MatMullstm_123/zeros:output:06lstm_123/lstm_cell_348/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_123/lstm_cell_348/addAddV2'lstm_123/lstm_cell_348/MatMul:product:0)lstm_123/lstm_cell_348/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_123/lstm_cell_348/BiasAdd/ReadVariableOpReadVariableOp6lstm_123_lstm_cell_348_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_123/lstm_cell_348/BiasAddBiasAddlstm_123/lstm_cell_348/add:z:05lstm_123/lstm_cell_348/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_123/lstm_cell_348/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_123/lstm_cell_348/splitSplit/lstm_123/lstm_cell_348/split/split_dim:output:0'lstm_123/lstm_cell_348/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_123/lstm_cell_348/SigmoidSigmoid%lstm_123/lstm_cell_348/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_123/lstm_cell_348/Sigmoid_1Sigmoid%lstm_123/lstm_cell_348/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_123/lstm_cell_348/mulMul$lstm_123/lstm_cell_348/Sigmoid_1:y:0lstm_123/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_123/lstm_cell_348/ReluRelu%lstm_123/lstm_cell_348/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_123/lstm_cell_348/mul_1Mul"lstm_123/lstm_cell_348/Sigmoid:y:0)lstm_123/lstm_cell_348/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_123/lstm_cell_348/add_1AddV2lstm_123/lstm_cell_348/mul:z:0 lstm_123/lstm_cell_348/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_123/lstm_cell_348/Sigmoid_2Sigmoid%lstm_123/lstm_cell_348/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_123/lstm_cell_348/Relu_1Relu lstm_123/lstm_cell_348/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_123/lstm_cell_348/mul_2Mul$lstm_123/lstm_cell_348/Sigmoid_2:y:0+lstm_123/lstm_cell_348/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_123/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_123/TensorArrayV2_1TensorListReserve/lstm_123/TensorArrayV2_1/element_shape:output:0!lstm_123/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_123/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_123/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_123/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_123/whileWhile$lstm_123/while/loop_counter:output:0*lstm_123/while/maximum_iterations:output:0lstm_123/time:output:0!lstm_123/TensorArrayV2_1:handle:0lstm_123/zeros:output:0lstm_123/zeros_1:output:0!lstm_123/strided_slice_1:output:0@lstm_123/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_123_lstm_cell_348_matmul_readvariableop_resource7lstm_123_lstm_cell_348_matmul_1_readvariableop_resource6lstm_123_lstm_cell_348_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_123_while_body_2120253*'
condR
lstm_123_while_cond_2120252*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_123/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_123/TensorArrayV2Stack/TensorListStackTensorListStacklstm_123/while:output:3Blstm_123/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_123/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_123/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_123/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_123/strided_slice_3StridedSlice4lstm_123/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_123/strided_slice_3/stack:output:0)lstm_123/strided_slice_3/stack_1:output:0)lstm_123/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_123/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_123/transpose_1	Transpose4lstm_123/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_123/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_123/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_124/ShapeShapelstm_123/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_124/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_124/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_124/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_124/strided_sliceStridedSlicelstm_124/Shape:output:0%lstm_124/strided_slice/stack:output:0'lstm_124/strided_slice/stack_1:output:0'lstm_124/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_124/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_124/zeros/packedPacklstm_124/strided_slice:output:0 lstm_124/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_124/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_124/zerosFilllstm_124/zeros/packed:output:0lstm_124/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_124/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_124/zeros_1/packedPacklstm_124/strided_slice:output:0"lstm_124/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_124/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_124/zeros_1Fill lstm_124/zeros_1/packed:output:0lstm_124/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_124/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_124/transpose	Transposelstm_123/transpose_1:y:0 lstm_124/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_124/Shape_1Shapelstm_124/transpose:y:0*
T0*
_output_shapes
:h
lstm_124/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_124/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_124/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_124/strided_slice_1StridedSlicelstm_124/Shape_1:output:0'lstm_124/strided_slice_1/stack:output:0)lstm_124/strided_slice_1/stack_1:output:0)lstm_124/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_124/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_124/TensorArrayV2TensorListReserve-lstm_124/TensorArrayV2/element_shape:output:0!lstm_124/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_124/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_124/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_124/transpose:y:0Glstm_124/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_124/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_124/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_124/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_124/strided_slice_2StridedSlicelstm_124/transpose:y:0'lstm_124/strided_slice_2/stack:output:0)lstm_124/strided_slice_2/stack_1:output:0)lstm_124/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_124/lstm_cell_349/MatMul/ReadVariableOpReadVariableOp5lstm_124_lstm_cell_349_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_124/lstm_cell_349/MatMulMatMul!lstm_124/strided_slice_2:output:04lstm_124/lstm_cell_349/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_124/lstm_cell_349/MatMul_1/ReadVariableOpReadVariableOp7lstm_124_lstm_cell_349_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_124/lstm_cell_349/MatMul_1MatMullstm_124/zeros:output:06lstm_124/lstm_cell_349/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_124/lstm_cell_349/addAddV2'lstm_124/lstm_cell_349/MatMul:product:0)lstm_124/lstm_cell_349/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_124/lstm_cell_349/BiasAdd/ReadVariableOpReadVariableOp6lstm_124_lstm_cell_349_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_124/lstm_cell_349/BiasAddBiasAddlstm_124/lstm_cell_349/add:z:05lstm_124/lstm_cell_349/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_124/lstm_cell_349/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_124/lstm_cell_349/splitSplit/lstm_124/lstm_cell_349/split/split_dim:output:0'lstm_124/lstm_cell_349/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_124/lstm_cell_349/SigmoidSigmoid%lstm_124/lstm_cell_349/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_124/lstm_cell_349/Sigmoid_1Sigmoid%lstm_124/lstm_cell_349/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_124/lstm_cell_349/mulMul$lstm_124/lstm_cell_349/Sigmoid_1:y:0lstm_124/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_124/lstm_cell_349/ReluRelu%lstm_124/lstm_cell_349/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_124/lstm_cell_349/mul_1Mul"lstm_124/lstm_cell_349/Sigmoid:y:0)lstm_124/lstm_cell_349/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_124/lstm_cell_349/add_1AddV2lstm_124/lstm_cell_349/mul:z:0 lstm_124/lstm_cell_349/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_124/lstm_cell_349/Sigmoid_2Sigmoid%lstm_124/lstm_cell_349/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_124/lstm_cell_349/Relu_1Relu lstm_124/lstm_cell_349/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_124/lstm_cell_349/mul_2Mul$lstm_124/lstm_cell_349/Sigmoid_2:y:0+lstm_124/lstm_cell_349/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_124/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_124/TensorArrayV2_1TensorListReserve/lstm_124/TensorArrayV2_1/element_shape:output:0!lstm_124/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_124/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_124/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_124/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_124/whileWhile$lstm_124/while/loop_counter:output:0*lstm_124/while/maximum_iterations:output:0lstm_124/time:output:0!lstm_124/TensorArrayV2_1:handle:0lstm_124/zeros:output:0lstm_124/zeros_1:output:0!lstm_124/strided_slice_1:output:0@lstm_124/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_124_lstm_cell_349_matmul_readvariableop_resource7lstm_124_lstm_cell_349_matmul_1_readvariableop_resource6lstm_124_lstm_cell_349_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_124_while_body_2120392*'
condR
lstm_124_while_cond_2120391*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_124/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_124/TensorArrayV2Stack/TensorListStackTensorListStacklstm_124/while:output:3Blstm_124/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_124/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_124/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_124/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_124/strided_slice_3StridedSlice4lstm_124/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_124/strided_slice_3/stack:output:0)lstm_124/strided_slice_3/stack_1:output:0)lstm_124/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_124/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_124/transpose_1	Transpose4lstm_124/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_124/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_124/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_125/ShapeShapelstm_124/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_125/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_125/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_125/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_125/strided_sliceStridedSlicelstm_125/Shape:output:0%lstm_125/strided_slice/stack:output:0'lstm_125/strided_slice/stack_1:output:0'lstm_125/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_125/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_125/zeros/packedPacklstm_125/strided_slice:output:0 lstm_125/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_125/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_125/zerosFilllstm_125/zeros/packed:output:0lstm_125/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_125/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_125/zeros_1/packedPacklstm_125/strided_slice:output:0"lstm_125/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_125/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_125/zeros_1Fill lstm_125/zeros_1/packed:output:0lstm_125/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_125/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_125/transpose	Transposelstm_124/transpose_1:y:0 lstm_125/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_125/Shape_1Shapelstm_125/transpose:y:0*
T0*
_output_shapes
:h
lstm_125/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_125/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_125/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_125/strided_slice_1StridedSlicelstm_125/Shape_1:output:0'lstm_125/strided_slice_1/stack:output:0)lstm_125/strided_slice_1/stack_1:output:0)lstm_125/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_125/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_125/TensorArrayV2TensorListReserve-lstm_125/TensorArrayV2/element_shape:output:0!lstm_125/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_125/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_125/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_125/transpose:y:0Glstm_125/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_125/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_125/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_125/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_125/strided_slice_2StridedSlicelstm_125/transpose:y:0'lstm_125/strided_slice_2/stack:output:0)lstm_125/strided_slice_2/stack_1:output:0)lstm_125/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_125/lstm_cell_350/MatMul/ReadVariableOpReadVariableOp5lstm_125_lstm_cell_350_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_125/lstm_cell_350/MatMulMatMul!lstm_125/strided_slice_2:output:04lstm_125/lstm_cell_350/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_125/lstm_cell_350/MatMul_1/ReadVariableOpReadVariableOp7lstm_125_lstm_cell_350_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_125/lstm_cell_350/MatMul_1MatMullstm_125/zeros:output:06lstm_125/lstm_cell_350/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_125/lstm_cell_350/addAddV2'lstm_125/lstm_cell_350/MatMul:product:0)lstm_125/lstm_cell_350/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_125/lstm_cell_350/BiasAdd/ReadVariableOpReadVariableOp6lstm_125_lstm_cell_350_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_125/lstm_cell_350/BiasAddBiasAddlstm_125/lstm_cell_350/add:z:05lstm_125/lstm_cell_350/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_125/lstm_cell_350/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_125/lstm_cell_350/splitSplit/lstm_125/lstm_cell_350/split/split_dim:output:0'lstm_125/lstm_cell_350/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_125/lstm_cell_350/SigmoidSigmoid%lstm_125/lstm_cell_350/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_125/lstm_cell_350/Sigmoid_1Sigmoid%lstm_125/lstm_cell_350/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_125/lstm_cell_350/mulMul$lstm_125/lstm_cell_350/Sigmoid_1:y:0lstm_125/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_125/lstm_cell_350/ReluRelu%lstm_125/lstm_cell_350/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_125/lstm_cell_350/mul_1Mul"lstm_125/lstm_cell_350/Sigmoid:y:0)lstm_125/lstm_cell_350/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_125/lstm_cell_350/add_1AddV2lstm_125/lstm_cell_350/mul:z:0 lstm_125/lstm_cell_350/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_125/lstm_cell_350/Sigmoid_2Sigmoid%lstm_125/lstm_cell_350/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_125/lstm_cell_350/Relu_1Relu lstm_125/lstm_cell_350/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_125/lstm_cell_350/mul_2Mul$lstm_125/lstm_cell_350/Sigmoid_2:y:0+lstm_125/lstm_cell_350/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_125/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_125/TensorArrayV2_1TensorListReserve/lstm_125/TensorArrayV2_1/element_shape:output:0!lstm_125/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_125/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_125/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_125/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_125/whileWhile$lstm_125/while/loop_counter:output:0*lstm_125/while/maximum_iterations:output:0lstm_125/time:output:0!lstm_125/TensorArrayV2_1:handle:0lstm_125/zeros:output:0lstm_125/zeros_1:output:0!lstm_125/strided_slice_1:output:0@lstm_125/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_125_lstm_cell_350_matmul_readvariableop_resource7lstm_125_lstm_cell_350_matmul_1_readvariableop_resource6lstm_125_lstm_cell_350_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_125_while_body_2120531*'
condR
lstm_125_while_cond_2120530*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_125/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_125/TensorArrayV2Stack/TensorListStackTensorListStacklstm_125/while:output:3Blstm_125/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_125/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_125/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_125/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_125/strided_slice_3StridedSlice4lstm_125/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_125/strided_slice_3/stack:output:0)lstm_125/strided_slice_3/stack_1:output:0)lstm_125/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_125/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_125/transpose_1	Transpose4lstm_125/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_125/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_125/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_41/MatMul/ReadVariableOpReadVariableOp'dense_41_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_41/MatMulMatMul!lstm_125/strided_slice_3:output:0&dense_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_41/BiasAdd/ReadVariableOpReadVariableOp(dense_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_41/BiasAddBiasAdddense_41/MatMul:product:0'dense_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_41/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_41/BiasAdd/ReadVariableOp^dense_41/MatMul/ReadVariableOp.^lstm_123/lstm_cell_348/BiasAdd/ReadVariableOp-^lstm_123/lstm_cell_348/MatMul/ReadVariableOp/^lstm_123/lstm_cell_348/MatMul_1/ReadVariableOp^lstm_123/while.^lstm_124/lstm_cell_349/BiasAdd/ReadVariableOp-^lstm_124/lstm_cell_349/MatMul/ReadVariableOp/^lstm_124/lstm_cell_349/MatMul_1/ReadVariableOp^lstm_124/while.^lstm_125/lstm_cell_350/BiasAdd/ReadVariableOp-^lstm_125/lstm_cell_350/MatMul/ReadVariableOp/^lstm_125/lstm_cell_350/MatMul_1/ReadVariableOp^lstm_125/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_41/BiasAdd/ReadVariableOpdense_41/BiasAdd/ReadVariableOp2@
dense_41/MatMul/ReadVariableOpdense_41/MatMul/ReadVariableOp2^
-lstm_123/lstm_cell_348/BiasAdd/ReadVariableOp-lstm_123/lstm_cell_348/BiasAdd/ReadVariableOp2\
,lstm_123/lstm_cell_348/MatMul/ReadVariableOp,lstm_123/lstm_cell_348/MatMul/ReadVariableOp2`
.lstm_123/lstm_cell_348/MatMul_1/ReadVariableOp.lstm_123/lstm_cell_348/MatMul_1/ReadVariableOp2 
lstm_123/whilelstm_123/while2^
-lstm_124/lstm_cell_349/BiasAdd/ReadVariableOp-lstm_124/lstm_cell_349/BiasAdd/ReadVariableOp2\
,lstm_124/lstm_cell_349/MatMul/ReadVariableOp,lstm_124/lstm_cell_349/MatMul/ReadVariableOp2`
.lstm_124/lstm_cell_349/MatMul_1/ReadVariableOp.lstm_124/lstm_cell_349/MatMul_1/ReadVariableOp2 
lstm_124/whilelstm_124/while2^
-lstm_125/lstm_cell_350/BiasAdd/ReadVariableOp-lstm_125/lstm_cell_350/BiasAdd/ReadVariableOp2\
,lstm_125/lstm_cell_350/MatMul/ReadVariableOp,lstm_125/lstm_cell_350/MatMul/ReadVariableOp2`
.lstm_125/lstm_cell_350/MatMul_1/ReadVariableOp.lstm_125/lstm_cell_350/MatMul_1/ReadVariableOp2 
lstm_125/whilelstm_125/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2122099
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_350_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_350_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_350_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_350_matmul_readvariableop_resource:2(F
4while_lstm_cell_350_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_350_biasadd_readvariableop_resource:(??*while/lstm_cell_350/BiasAdd/ReadVariableOp?)while/lstm_cell_350/MatMul/ReadVariableOp?+while/lstm_cell_350/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_350/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_350_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_350/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_350/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_350/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_350_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_350/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_350/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_350/addAddV2$while/lstm_cell_350/MatMul:product:0&while/lstm_cell_350/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_350/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_350_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_350/BiasAddBiasAddwhile/lstm_cell_350/add:z:02while/lstm_cell_350/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_350/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_350/splitSplit,while/lstm_cell_350/split/split_dim:output:0$while/lstm_cell_350/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_350/SigmoidSigmoid"while/lstm_cell_350/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_350/Sigmoid_1Sigmoid"while/lstm_cell_350/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_350/mulMul!while/lstm_cell_350/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_350/ReluRelu"while/lstm_cell_350/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_350/mul_1Mulwhile/lstm_cell_350/Sigmoid:y:0&while/lstm_cell_350/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_350/add_1AddV2while/lstm_cell_350/mul:z:0while/lstm_cell_350/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_350/Sigmoid_2Sigmoid"while/lstm_cell_350/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_350/Relu_1Reluwhile/lstm_cell_350/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_350/mul_2Mul!while/lstm_cell_350/Sigmoid_2:y:0(while/lstm_cell_350/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_350/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_350/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_350/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_350/BiasAdd/ReadVariableOp*^while/lstm_cell_350/MatMul/ReadVariableOp,^while/lstm_cell_350/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_350_biasadd_readvariableop_resource5while_lstm_cell_350_biasadd_readvariableop_resource_0"n
4while_lstm_cell_350_matmul_1_readvariableop_resource6while_lstm_cell_350_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_350_matmul_readvariableop_resource4while_lstm_cell_350_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_350/BiasAdd/ReadVariableOp*while/lstm_cell_350/BiasAdd/ReadVariableOp2V
)while/lstm_cell_350/MatMul/ReadVariableOp)while/lstm_cell_350/MatMul/ReadVariableOp2Z
+while/lstm_cell_350/MatMul_1/ReadVariableOp+while/lstm_cell_350/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?
?
*__inference_lstm_124_layer_call_fn_2121281

inputs
unknown:	d?
	unknown_0:	2?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_124_layer_call_and_return_conditional_losses_2119333s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_2119248
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2119248___redundant_placeholder05
1while_while_cond_2119248___redundant_placeholder15
1while_while_cond_2119248___redundant_placeholder25
1while_while_cond_2119248___redundant_placeholder3
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
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?8
?
while_body_2122242
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_350_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_350_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_350_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_350_matmul_readvariableop_resource:2(F
4while_lstm_cell_350_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_350_biasadd_readvariableop_resource:(??*while/lstm_cell_350/BiasAdd/ReadVariableOp?)while/lstm_cell_350/MatMul/ReadVariableOp?+while/lstm_cell_350/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_350/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_350_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_350/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_350/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_350/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_350_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_350/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_350/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_350/addAddV2$while/lstm_cell_350/MatMul:product:0&while/lstm_cell_350/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_350/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_350_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_350/BiasAddBiasAddwhile/lstm_cell_350/add:z:02while/lstm_cell_350/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_350/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_350/splitSplit,while/lstm_cell_350/split/split_dim:output:0$while/lstm_cell_350/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_350/SigmoidSigmoid"while/lstm_cell_350/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_350/Sigmoid_1Sigmoid"while/lstm_cell_350/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_350/mulMul!while/lstm_cell_350/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_350/ReluRelu"while/lstm_cell_350/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_350/mul_1Mulwhile/lstm_cell_350/Sigmoid:y:0&while/lstm_cell_350/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_350/add_1AddV2while/lstm_cell_350/mul:z:0while/lstm_cell_350/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_350/Sigmoid_2Sigmoid"while/lstm_cell_350/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_350/Relu_1Reluwhile/lstm_cell_350/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_350/mul_2Mul!while/lstm_cell_350/Sigmoid_2:y:0(while/lstm_cell_350/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_350/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_350/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_350/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_350/BiasAdd/ReadVariableOp*^while/lstm_cell_350/MatMul/ReadVariableOp,^while/lstm_cell_350/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_350_biasadd_readvariableop_resource5while_lstm_cell_350_biasadd_readvariableop_resource_0"n
4while_lstm_cell_350_matmul_1_readvariableop_resource6while_lstm_cell_350_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_350_matmul_readvariableop_resource4while_lstm_cell_350_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_350/BiasAdd/ReadVariableOp*while/lstm_cell_350/BiasAdd/ReadVariableOp2V
)while/lstm_cell_350/MatMul/ReadVariableOp)while/lstm_cell_350/MatMul/ReadVariableOp2Z
+while/lstm_cell_350/MatMul_1/ReadVariableOp+while/lstm_cell_350/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_2121009
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2121009___redundant_placeholder05
1while_while_cond_2121009___redundant_placeholder15
1while_while_cond_2121009___redundant_placeholder25
1while_while_cond_2121009___redundant_placeholder3
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
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?
?
*__inference_lstm_125_layer_call_fn_2121897

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_125_layer_call_and_return_conditional_losses_2119168o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_125_layer_call_fn_2121864
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_125_layer_call_and_return_conditional_losses_2118303o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_123_layer_call_fn_2120665

inputs
unknown:	?
	unknown_0:	d?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_123_layer_call_and_return_conditional_losses_2119498s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_350_layer_call_fn_2122701

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_350_layer_call_and_return_conditional_losses_2118220o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????
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
?:?????????2:?????????
:?????????
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/1
?
?
while_cond_2120866
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2120866___redundant_placeholder05
1while_while_cond_2120866___redundant_placeholder15
1while_while_cond_2120866___redundant_placeholder25
1while_while_cond_2120866___redundant_placeholder3
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
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?J
?
E__inference_lstm_125_layer_call_and_return_conditional_losses_2122469

inputs>
,lstm_cell_350_matmul_readvariableop_resource:2(@
.lstm_cell_350_matmul_1_readvariableop_resource:
(;
-lstm_cell_350_biasadd_readvariableop_resource:(
identity??$lstm_cell_350/BiasAdd/ReadVariableOp?#lstm_cell_350/MatMul/ReadVariableOp?%lstm_cell_350/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????
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
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
#lstm_cell_350/MatMul/ReadVariableOpReadVariableOp,lstm_cell_350_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_350/MatMulMatMulstrided_slice_2:output:0+lstm_cell_350/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_350/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_350_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_350/MatMul_1MatMulzeros:output:0-lstm_cell_350/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_350/addAddV2lstm_cell_350/MatMul:product:0 lstm_cell_350/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_350/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_350_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_350/BiasAddBiasAddlstm_cell_350/add:z:0,lstm_cell_350/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_350/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_350/splitSplit&lstm_cell_350/split/split_dim:output:0lstm_cell_350/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_350/SigmoidSigmoidlstm_cell_350/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_350/Sigmoid_1Sigmoidlstm_cell_350/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_350/mulMullstm_cell_350/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_350/ReluRelulstm_cell_350/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_350/mul_1Mullstm_cell_350/Sigmoid:y:0 lstm_cell_350/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_350/add_1AddV2lstm_cell_350/mul:z:0lstm_cell_350/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_350/Sigmoid_2Sigmoidlstm_cell_350/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_350/Relu_1Relulstm_cell_350/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_350/mul_2Mullstm_cell_350/Sigmoid_2:y:0"lstm_cell_350/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_350_matmul_readvariableop_resource.lstm_cell_350_matmul_1_readvariableop_resource-lstm_cell_350_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2122385*
condR
while_cond_2122384*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
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
:?????????
?
NoOpNoOp%^lstm_cell_350/BiasAdd/ReadVariableOp$^lstm_cell_350/MatMul/ReadVariableOp&^lstm_cell_350/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_350/BiasAdd/ReadVariableOp$lstm_cell_350/BiasAdd/ReadVariableOp2J
#lstm_cell_350/MatMul/ReadVariableOp#lstm_cell_350/MatMul/ReadVariableOp2N
%lstm_cell_350/MatMul_1/ReadVariableOp%lstm_cell_350/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
)sequential_41_lstm_123_while_cond_2117084J
Fsequential_41_lstm_123_while_sequential_41_lstm_123_while_loop_counterP
Lsequential_41_lstm_123_while_sequential_41_lstm_123_while_maximum_iterations,
(sequential_41_lstm_123_while_placeholder.
*sequential_41_lstm_123_while_placeholder_1.
*sequential_41_lstm_123_while_placeholder_2.
*sequential_41_lstm_123_while_placeholder_3L
Hsequential_41_lstm_123_while_less_sequential_41_lstm_123_strided_slice_1c
_sequential_41_lstm_123_while_sequential_41_lstm_123_while_cond_2117084___redundant_placeholder0c
_sequential_41_lstm_123_while_sequential_41_lstm_123_while_cond_2117084___redundant_placeholder1c
_sequential_41_lstm_123_while_sequential_41_lstm_123_while_cond_2117084___redundant_placeholder2c
_sequential_41_lstm_123_while_sequential_41_lstm_123_while_cond_2117084___redundant_placeholder3)
%sequential_41_lstm_123_while_identity
?
!sequential_41/lstm_123/while/LessLess(sequential_41_lstm_123_while_placeholderHsequential_41_lstm_123_while_less_sequential_41_lstm_123_strided_slice_1*
T0*
_output_shapes
: y
%sequential_41/lstm_123/while/IdentityIdentity%sequential_41/lstm_123/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_41_lstm_123_while_identity.sequential_41/lstm_123/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?8
?
while_body_2118718
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_349_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_349_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_349_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_349_matmul_readvariableop_resource:	d?G
4while_lstm_cell_349_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_349_biasadd_readvariableop_resource:	???*while/lstm_cell_349/BiasAdd/ReadVariableOp?)while/lstm_cell_349/MatMul/ReadVariableOp?+while/lstm_cell_349/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_349/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_349_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_349/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_349/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_349/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_349_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_349/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_349/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_349/addAddV2$while/lstm_cell_349/MatMul:product:0&while/lstm_cell_349/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_349/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_349_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_349/BiasAddBiasAddwhile/lstm_cell_349/add:z:02while/lstm_cell_349/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_349/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_349/splitSplit,while/lstm_cell_349/split/split_dim:output:0$while/lstm_cell_349/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_349/SigmoidSigmoid"while/lstm_cell_349/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_349/Sigmoid_1Sigmoid"while/lstm_cell_349/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_349/mulMul!while/lstm_cell_349/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_349/ReluRelu"while/lstm_cell_349/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_349/mul_1Mulwhile/lstm_cell_349/Sigmoid:y:0&while/lstm_cell_349/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_349/add_1AddV2while/lstm_cell_349/mul:z:0while/lstm_cell_349/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_349/Sigmoid_2Sigmoid"while/lstm_cell_349/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_349/Relu_1Reluwhile/lstm_cell_349/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_349/mul_2Mul!while/lstm_cell_349/Sigmoid_2:y:0(while/lstm_cell_349/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_349/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_349/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_349/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_349/BiasAdd/ReadVariableOp*^while/lstm_cell_349/MatMul/ReadVariableOp,^while/lstm_cell_349/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_349_biasadd_readvariableop_resource5while_lstm_cell_349_biasadd_readvariableop_resource_0"n
4while_lstm_cell_349_matmul_1_readvariableop_resource6while_lstm_cell_349_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_349_matmul_readvariableop_resource4while_lstm_cell_349_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_349/BiasAdd/ReadVariableOp*while/lstm_cell_349/BiasAdd/ReadVariableOp2V
)while/lstm_cell_349/MatMul/ReadVariableOp)while/lstm_cell_349/MatMul/ReadVariableOp2Z
+while/lstm_cell_349/MatMul_1/ReadVariableOp+while/lstm_cell_349/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?8
?
E__inference_lstm_124_layer_call_and_return_conditional_losses_2117953

inputs(
lstm_cell_349_2117871:	d?(
lstm_cell_349_2117873:	2?$
lstm_cell_349_2117875:	?
identity??%lstm_cell_349/StatefulPartitionedCall?while;
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
valueB:?
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
:?????????2R
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
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????dD
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
%lstm_cell_349/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_349_2117871lstm_cell_349_2117873lstm_cell_349_2117875*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_349_layer_call_and_return_conditional_losses_2117870n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_349_2117871lstm_cell_349_2117873lstm_cell_349_2117875*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2117884*
condR
while_cond_2117883*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2v
NoOpNoOp&^lstm_cell_349/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_349/StatefulPartitionedCall%lstm_cell_349/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?#
?
while_body_2117534
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_348_2117558_0:	?0
while_lstm_cell_348_2117560_0:	d?,
while_lstm_cell_348_2117562_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_348_2117558:	?.
while_lstm_cell_348_2117560:	d?*
while_lstm_cell_348_2117562:	???+while/lstm_cell_348/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_348/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_348_2117558_0while_lstm_cell_348_2117560_0while_lstm_cell_348_2117562_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????d:?????????d:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_348_layer_call_and_return_conditional_losses_2117520?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_348/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity4while/lstm_cell_348/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_348/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_348/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_348_2117558while_lstm_cell_348_2117558_0"<
while_lstm_cell_348_2117560while_lstm_cell_348_2117560_0"<
while_lstm_cell_348_2117562while_lstm_cell_348_2117562_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_348/StatefulPartitionedCall+while/lstm_cell_348/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?
?
J__inference_sequential_41_layer_call_and_return_conditional_losses_2119678
lstm_123_input#
lstm_123_2119651:	?#
lstm_123_2119653:	d?
lstm_123_2119655:	?#
lstm_124_2119658:	d?#
lstm_124_2119660:	2?
lstm_124_2119662:	?"
lstm_125_2119665:2("
lstm_125_2119667:
(
lstm_125_2119669:("
dense_41_2119672:

dense_41_2119674:
identity?? dense_41/StatefulPartitionedCall? lstm_123/StatefulPartitionedCall? lstm_124/StatefulPartitionedCall? lstm_125/StatefulPartitionedCall?
 lstm_123/StatefulPartitionedCallStatefulPartitionedCalllstm_123_inputlstm_123_2119651lstm_123_2119653lstm_123_2119655*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_123_layer_call_and_return_conditional_losses_2119498?
 lstm_124/StatefulPartitionedCallStatefulPartitionedCall)lstm_123/StatefulPartitionedCall:output:0lstm_124_2119658lstm_124_2119660lstm_124_2119662*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_124_layer_call_and_return_conditional_losses_2119333?
 lstm_125/StatefulPartitionedCallStatefulPartitionedCall)lstm_124/StatefulPartitionedCall:output:0lstm_125_2119665lstm_125_2119667lstm_125_2119669*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_125_layer_call_and_return_conditional_losses_2119168?
 dense_41/StatefulPartitionedCallStatefulPartitionedCall)lstm_125/StatefulPartitionedCall:output:0dense_41_2119672dense_41_2119674*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_41_layer_call_and_return_conditional_losses_2118970x
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_41/StatefulPartitionedCall!^lstm_123/StatefulPartitionedCall!^lstm_124/StatefulPartitionedCall!^lstm_125/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall2D
 lstm_123/StatefulPartitionedCall lstm_123/StatefulPartitionedCall2D
 lstm_124/StatefulPartitionedCall lstm_124/StatefulPartitionedCall2D
 lstm_125/StatefulPartitionedCall lstm_125/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_123_input
?
?
while_cond_2118233
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2118233___redundant_placeholder05
1while_while_cond_2118233___redundant_placeholder15
1while_while_cond_2118233___redundant_placeholder25
1while_while_cond_2118233___redundant_placeholder3
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
@: : : : :?????????
:?????????
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
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_2117724
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2117724___redundant_placeholder05
1while_while_cond_2117724___redundant_placeholder15
1while_while_cond_2117724___redundant_placeholder25
1while_while_cond_2117724___redundant_placeholder3
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
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?
?
*__inference_lstm_125_layer_call_fn_2121875
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_125_layer_call_and_return_conditional_losses_2118494o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_2122385
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_350_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_350_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_350_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_350_matmul_readvariableop_resource:2(F
4while_lstm_cell_350_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_350_biasadd_readvariableop_resource:(??*while/lstm_cell_350/BiasAdd/ReadVariableOp?)while/lstm_cell_350/MatMul/ReadVariableOp?+while/lstm_cell_350/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_350/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_350_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_350/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_350/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_350/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_350_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_350/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_350/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_350/addAddV2$while/lstm_cell_350/MatMul:product:0&while/lstm_cell_350/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_350/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_350_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_350/BiasAddBiasAddwhile/lstm_cell_350/add:z:02while/lstm_cell_350/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_350/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_350/splitSplit,while/lstm_cell_350/split/split_dim:output:0$while/lstm_cell_350/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_350/SigmoidSigmoid"while/lstm_cell_350/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_350/Sigmoid_1Sigmoid"while/lstm_cell_350/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_350/mulMul!while/lstm_cell_350/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_350/ReluRelu"while/lstm_cell_350/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_350/mul_1Mulwhile/lstm_cell_350/Sigmoid:y:0&while/lstm_cell_350/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_350/add_1AddV2while/lstm_cell_350/mul:z:0while/lstm_cell_350/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_350/Sigmoid_2Sigmoid"while/lstm_cell_350/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_350/Relu_1Reluwhile/lstm_cell_350/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_350/mul_2Mul!while/lstm_cell_350/Sigmoid_2:y:0(while/lstm_cell_350/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_350/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_350/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_350/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_350/BiasAdd/ReadVariableOp*^while/lstm_cell_350/MatMul/ReadVariableOp,^while/lstm_cell_350/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_350_biasadd_readvariableop_resource5while_lstm_cell_350_biasadd_readvariableop_resource_0"n
4while_lstm_cell_350_matmul_1_readvariableop_resource6while_lstm_cell_350_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_350_matmul_readvariableop_resource4while_lstm_cell_350_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_350/BiasAdd/ReadVariableOp*while/lstm_cell_350/BiasAdd/ReadVariableOp2V
)while/lstm_cell_350/MatMul/ReadVariableOp)while/lstm_cell_350/MatMul/ReadVariableOp2Z
+while/lstm_cell_350/MatMul_1/ReadVariableOp+while/lstm_cell_350/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?C
?

lstm_125_while_body_2120531.
*lstm_125_while_lstm_125_while_loop_counter4
0lstm_125_while_lstm_125_while_maximum_iterations
lstm_125_while_placeholder 
lstm_125_while_placeholder_1 
lstm_125_while_placeholder_2 
lstm_125_while_placeholder_3-
)lstm_125_while_lstm_125_strided_slice_1_0i
elstm_125_while_tensorarrayv2read_tensorlistgetitem_lstm_125_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_125_while_lstm_cell_350_matmul_readvariableop_resource_0:2(Q
?lstm_125_while_lstm_cell_350_matmul_1_readvariableop_resource_0:
(L
>lstm_125_while_lstm_cell_350_biasadd_readvariableop_resource_0:(
lstm_125_while_identity
lstm_125_while_identity_1
lstm_125_while_identity_2
lstm_125_while_identity_3
lstm_125_while_identity_4
lstm_125_while_identity_5+
'lstm_125_while_lstm_125_strided_slice_1g
clstm_125_while_tensorarrayv2read_tensorlistgetitem_lstm_125_tensorarrayunstack_tensorlistfromtensorM
;lstm_125_while_lstm_cell_350_matmul_readvariableop_resource:2(O
=lstm_125_while_lstm_cell_350_matmul_1_readvariableop_resource:
(J
<lstm_125_while_lstm_cell_350_biasadd_readvariableop_resource:(??3lstm_125/while/lstm_cell_350/BiasAdd/ReadVariableOp?2lstm_125/while/lstm_cell_350/MatMul/ReadVariableOp?4lstm_125/while/lstm_cell_350/MatMul_1/ReadVariableOp?
@lstm_125/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_125/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_125_while_tensorarrayv2read_tensorlistgetitem_lstm_125_tensorarrayunstack_tensorlistfromtensor_0lstm_125_while_placeholderIlstm_125/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_125/while/lstm_cell_350/MatMul/ReadVariableOpReadVariableOp=lstm_125_while_lstm_cell_350_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_125/while/lstm_cell_350/MatMulMatMul9lstm_125/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_125/while/lstm_cell_350/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_125/while/lstm_cell_350/MatMul_1/ReadVariableOpReadVariableOp?lstm_125_while_lstm_cell_350_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_125/while/lstm_cell_350/MatMul_1MatMullstm_125_while_placeholder_2<lstm_125/while/lstm_cell_350/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_125/while/lstm_cell_350/addAddV2-lstm_125/while/lstm_cell_350/MatMul:product:0/lstm_125/while/lstm_cell_350/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_125/while/lstm_cell_350/BiasAdd/ReadVariableOpReadVariableOp>lstm_125_while_lstm_cell_350_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_125/while/lstm_cell_350/BiasAddBiasAdd$lstm_125/while/lstm_cell_350/add:z:0;lstm_125/while/lstm_cell_350/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_125/while/lstm_cell_350/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_125/while/lstm_cell_350/splitSplit5lstm_125/while/lstm_cell_350/split/split_dim:output:0-lstm_125/while/lstm_cell_350/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_125/while/lstm_cell_350/SigmoidSigmoid+lstm_125/while/lstm_cell_350/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_125/while/lstm_cell_350/Sigmoid_1Sigmoid+lstm_125/while/lstm_cell_350/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_125/while/lstm_cell_350/mulMul*lstm_125/while/lstm_cell_350/Sigmoid_1:y:0lstm_125_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_125/while/lstm_cell_350/ReluRelu+lstm_125/while/lstm_cell_350/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_125/while/lstm_cell_350/mul_1Mul(lstm_125/while/lstm_cell_350/Sigmoid:y:0/lstm_125/while/lstm_cell_350/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_125/while/lstm_cell_350/add_1AddV2$lstm_125/while/lstm_cell_350/mul:z:0&lstm_125/while/lstm_cell_350/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_125/while/lstm_cell_350/Sigmoid_2Sigmoid+lstm_125/while/lstm_cell_350/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_125/while/lstm_cell_350/Relu_1Relu&lstm_125/while/lstm_cell_350/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_125/while/lstm_cell_350/mul_2Mul*lstm_125/while/lstm_cell_350/Sigmoid_2:y:01lstm_125/while/lstm_cell_350/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_125/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_125_while_placeholder_1lstm_125_while_placeholder&lstm_125/while/lstm_cell_350/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_125/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_125/while/addAddV2lstm_125_while_placeholderlstm_125/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_125/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_125/while/add_1AddV2*lstm_125_while_lstm_125_while_loop_counterlstm_125/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_125/while/IdentityIdentitylstm_125/while/add_1:z:0^lstm_125/while/NoOp*
T0*
_output_shapes
: ?
lstm_125/while/Identity_1Identity0lstm_125_while_lstm_125_while_maximum_iterations^lstm_125/while/NoOp*
T0*
_output_shapes
: t
lstm_125/while/Identity_2Identitylstm_125/while/add:z:0^lstm_125/while/NoOp*
T0*
_output_shapes
: ?
lstm_125/while/Identity_3IdentityClstm_125/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_125/while/NoOp*
T0*
_output_shapes
: ?
lstm_125/while/Identity_4Identity&lstm_125/while/lstm_cell_350/mul_2:z:0^lstm_125/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_125/while/Identity_5Identity&lstm_125/while/lstm_cell_350/add_1:z:0^lstm_125/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_125/while/NoOpNoOp4^lstm_125/while/lstm_cell_350/BiasAdd/ReadVariableOp3^lstm_125/while/lstm_cell_350/MatMul/ReadVariableOp5^lstm_125/while/lstm_cell_350/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_125_while_identity lstm_125/while/Identity:output:0"?
lstm_125_while_identity_1"lstm_125/while/Identity_1:output:0"?
lstm_125_while_identity_2"lstm_125/while/Identity_2:output:0"?
lstm_125_while_identity_3"lstm_125/while/Identity_3:output:0"?
lstm_125_while_identity_4"lstm_125/while/Identity_4:output:0"?
lstm_125_while_identity_5"lstm_125/while/Identity_5:output:0"T
'lstm_125_while_lstm_125_strided_slice_1)lstm_125_while_lstm_125_strided_slice_1_0"~
<lstm_125_while_lstm_cell_350_biasadd_readvariableop_resource>lstm_125_while_lstm_cell_350_biasadd_readvariableop_resource_0"?
=lstm_125_while_lstm_cell_350_matmul_1_readvariableop_resource?lstm_125_while_lstm_cell_350_matmul_1_readvariableop_resource_0"|
;lstm_125_while_lstm_cell_350_matmul_readvariableop_resource=lstm_125_while_lstm_cell_350_matmul_readvariableop_resource_0"?
clstm_125_while_tensorarrayv2read_tensorlistgetitem_lstm_125_tensorarrayunstack_tensorlistfromtensorelstm_125_while_tensorarrayv2read_tensorlistgetitem_lstm_125_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_125/while/lstm_cell_350/BiasAdd/ReadVariableOp3lstm_125/while/lstm_cell_350/BiasAdd/ReadVariableOp2h
2lstm_125/while/lstm_cell_350/MatMul/ReadVariableOp2lstm_125/while/lstm_cell_350/MatMul/ReadVariableOp2l
4lstm_125/while/lstm_cell_350/MatMul_1/ReadVariableOp4lstm_125/while/lstm_cell_350/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?8
?
E__inference_lstm_123_layer_call_and_return_conditional_losses_2117794

inputs(
lstm_cell_348_2117712:	?(
lstm_cell_348_2117714:	d?$
lstm_cell_348_2117716:	?
identity??%lstm_cell_348/StatefulPartitionedCall?while;
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
valueB:?
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
:?????????dR
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
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
%lstm_cell_348/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_348_2117712lstm_cell_348_2117714lstm_cell_348_2117716*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????d:?????????d:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_348_layer_call_and_return_conditional_losses_2117666n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_348_2117712lstm_cell_348_2117714lstm_cell_348_2117716*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2117725*
condR
while_cond_2117724*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????dv
NoOpNoOp&^lstm_cell_348/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_348/StatefulPartitionedCall%lstm_cell_348/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_348_layer_call_fn_2122522

inputs
states_0
states_1
unknown:	?
	unknown_0:	d?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????d:?????????d:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_348_layer_call_and_return_conditional_losses_2117666o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????d:?????????d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/1
?
?
J__inference_lstm_cell_350_layer_call_and_return_conditional_losses_2118366

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????2:?????????
:?????????
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????

 
_user_specified_namestates:OK
'
_output_shapes
:?????????

 
_user_specified_namestates
?C
?

lstm_123_while_body_2120253.
*lstm_123_while_lstm_123_while_loop_counter4
0lstm_123_while_lstm_123_while_maximum_iterations
lstm_123_while_placeholder 
lstm_123_while_placeholder_1 
lstm_123_while_placeholder_2 
lstm_123_while_placeholder_3-
)lstm_123_while_lstm_123_strided_slice_1_0i
elstm_123_while_tensorarrayv2read_tensorlistgetitem_lstm_123_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_123_while_lstm_cell_348_matmul_readvariableop_resource_0:	?R
?lstm_123_while_lstm_cell_348_matmul_1_readvariableop_resource_0:	d?M
>lstm_123_while_lstm_cell_348_biasadd_readvariableop_resource_0:	?
lstm_123_while_identity
lstm_123_while_identity_1
lstm_123_while_identity_2
lstm_123_while_identity_3
lstm_123_while_identity_4
lstm_123_while_identity_5+
'lstm_123_while_lstm_123_strided_slice_1g
clstm_123_while_tensorarrayv2read_tensorlistgetitem_lstm_123_tensorarrayunstack_tensorlistfromtensorN
;lstm_123_while_lstm_cell_348_matmul_readvariableop_resource:	?P
=lstm_123_while_lstm_cell_348_matmul_1_readvariableop_resource:	d?K
<lstm_123_while_lstm_cell_348_biasadd_readvariableop_resource:	???3lstm_123/while/lstm_cell_348/BiasAdd/ReadVariableOp?2lstm_123/while/lstm_cell_348/MatMul/ReadVariableOp?4lstm_123/while/lstm_cell_348/MatMul_1/ReadVariableOp?
@lstm_123/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_123/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_123_while_tensorarrayv2read_tensorlistgetitem_lstm_123_tensorarrayunstack_tensorlistfromtensor_0lstm_123_while_placeholderIlstm_123/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_123/while/lstm_cell_348/MatMul/ReadVariableOpReadVariableOp=lstm_123_while_lstm_cell_348_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_123/while/lstm_cell_348/MatMulMatMul9lstm_123/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_123/while/lstm_cell_348/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_123/while/lstm_cell_348/MatMul_1/ReadVariableOpReadVariableOp?lstm_123_while_lstm_cell_348_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_123/while/lstm_cell_348/MatMul_1MatMullstm_123_while_placeholder_2<lstm_123/while/lstm_cell_348/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_123/while/lstm_cell_348/addAddV2-lstm_123/while/lstm_cell_348/MatMul:product:0/lstm_123/while/lstm_cell_348/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_123/while/lstm_cell_348/BiasAdd/ReadVariableOpReadVariableOp>lstm_123_while_lstm_cell_348_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_123/while/lstm_cell_348/BiasAddBiasAdd$lstm_123/while/lstm_cell_348/add:z:0;lstm_123/while/lstm_cell_348/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_123/while/lstm_cell_348/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_123/while/lstm_cell_348/splitSplit5lstm_123/while/lstm_cell_348/split/split_dim:output:0-lstm_123/while/lstm_cell_348/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_123/while/lstm_cell_348/SigmoidSigmoid+lstm_123/while/lstm_cell_348/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_123/while/lstm_cell_348/Sigmoid_1Sigmoid+lstm_123/while/lstm_cell_348/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_123/while/lstm_cell_348/mulMul*lstm_123/while/lstm_cell_348/Sigmoid_1:y:0lstm_123_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_123/while/lstm_cell_348/ReluRelu+lstm_123/while/lstm_cell_348/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_123/while/lstm_cell_348/mul_1Mul(lstm_123/while/lstm_cell_348/Sigmoid:y:0/lstm_123/while/lstm_cell_348/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_123/while/lstm_cell_348/add_1AddV2$lstm_123/while/lstm_cell_348/mul:z:0&lstm_123/while/lstm_cell_348/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_123/while/lstm_cell_348/Sigmoid_2Sigmoid+lstm_123/while/lstm_cell_348/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_123/while/lstm_cell_348/Relu_1Relu&lstm_123/while/lstm_cell_348/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_123/while/lstm_cell_348/mul_2Mul*lstm_123/while/lstm_cell_348/Sigmoid_2:y:01lstm_123/while/lstm_cell_348/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_123/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_123_while_placeholder_1lstm_123_while_placeholder&lstm_123/while/lstm_cell_348/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_123/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_123/while/addAddV2lstm_123_while_placeholderlstm_123/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_123/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_123/while/add_1AddV2*lstm_123_while_lstm_123_while_loop_counterlstm_123/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_123/while/IdentityIdentitylstm_123/while/add_1:z:0^lstm_123/while/NoOp*
T0*
_output_shapes
: ?
lstm_123/while/Identity_1Identity0lstm_123_while_lstm_123_while_maximum_iterations^lstm_123/while/NoOp*
T0*
_output_shapes
: t
lstm_123/while/Identity_2Identitylstm_123/while/add:z:0^lstm_123/while/NoOp*
T0*
_output_shapes
: ?
lstm_123/while/Identity_3IdentityClstm_123/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_123/while/NoOp*
T0*
_output_shapes
: ?
lstm_123/while/Identity_4Identity&lstm_123/while/lstm_cell_348/mul_2:z:0^lstm_123/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_123/while/Identity_5Identity&lstm_123/while/lstm_cell_348/add_1:z:0^lstm_123/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_123/while/NoOpNoOp4^lstm_123/while/lstm_cell_348/BiasAdd/ReadVariableOp3^lstm_123/while/lstm_cell_348/MatMul/ReadVariableOp5^lstm_123/while/lstm_cell_348/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_123_while_identity lstm_123/while/Identity:output:0"?
lstm_123_while_identity_1"lstm_123/while/Identity_1:output:0"?
lstm_123_while_identity_2"lstm_123/while/Identity_2:output:0"?
lstm_123_while_identity_3"lstm_123/while/Identity_3:output:0"?
lstm_123_while_identity_4"lstm_123/while/Identity_4:output:0"?
lstm_123_while_identity_5"lstm_123/while/Identity_5:output:0"T
'lstm_123_while_lstm_123_strided_slice_1)lstm_123_while_lstm_123_strided_slice_1_0"~
<lstm_123_while_lstm_cell_348_biasadd_readvariableop_resource>lstm_123_while_lstm_cell_348_biasadd_readvariableop_resource_0"?
=lstm_123_while_lstm_cell_348_matmul_1_readvariableop_resource?lstm_123_while_lstm_cell_348_matmul_1_readvariableop_resource_0"|
;lstm_123_while_lstm_cell_348_matmul_readvariableop_resource=lstm_123_while_lstm_cell_348_matmul_readvariableop_resource_0"?
clstm_123_while_tensorarrayv2read_tensorlistgetitem_lstm_123_tensorarrayunstack_tensorlistfromtensorelstm_123_while_tensorarrayv2read_tensorlistgetitem_lstm_123_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_123/while/lstm_cell_348/BiasAdd/ReadVariableOp3lstm_123/while/lstm_cell_348/BiasAdd/ReadVariableOp2h
2lstm_123/while/lstm_cell_348/MatMul/ReadVariableOp2lstm_123/while/lstm_cell_348/MatMul/ReadVariableOp2l
4lstm_123/while/lstm_cell_348/MatMul_1/ReadVariableOp4lstm_123/while/lstm_cell_348/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?
?
*__inference_lstm_125_layer_call_fn_2121886

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_125_layer_call_and_return_conditional_losses_2118952o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_125_layer_call_and_return_conditional_losses_2122326

inputs>
,lstm_cell_350_matmul_readvariableop_resource:2(@
.lstm_cell_350_matmul_1_readvariableop_resource:
(;
-lstm_cell_350_biasadd_readvariableop_resource:(
identity??$lstm_cell_350/BiasAdd/ReadVariableOp?#lstm_cell_350/MatMul/ReadVariableOp?%lstm_cell_350/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????
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
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
#lstm_cell_350/MatMul/ReadVariableOpReadVariableOp,lstm_cell_350_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_350/MatMulMatMulstrided_slice_2:output:0+lstm_cell_350/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_350/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_350_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_350/MatMul_1MatMulzeros:output:0-lstm_cell_350/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_350/addAddV2lstm_cell_350/MatMul:product:0 lstm_cell_350/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_350/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_350_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_350/BiasAddBiasAddlstm_cell_350/add:z:0,lstm_cell_350/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_350/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_350/splitSplit&lstm_cell_350/split/split_dim:output:0lstm_cell_350/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_350/SigmoidSigmoidlstm_cell_350/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_350/Sigmoid_1Sigmoidlstm_cell_350/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_350/mulMullstm_cell_350/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_350/ReluRelulstm_cell_350/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_350/mul_1Mullstm_cell_350/Sigmoid:y:0 lstm_cell_350/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_350/add_1AddV2lstm_cell_350/mul:z:0lstm_cell_350/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_350/Sigmoid_2Sigmoidlstm_cell_350/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_350/Relu_1Relulstm_cell_350/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_350/mul_2Mullstm_cell_350/Sigmoid_2:y:0"lstm_cell_350/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_350_matmul_readvariableop_resource.lstm_cell_350_matmul_1_readvariableop_resource-lstm_cell_350_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2122242*
condR
while_cond_2122241*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
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
:?????????
?
NoOpNoOp%^lstm_cell_350/BiasAdd/ReadVariableOp$^lstm_cell_350/MatMul/ReadVariableOp&^lstm_cell_350/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_350/BiasAdd/ReadVariableOp$lstm_cell_350/BiasAdd/ReadVariableOp2J
#lstm_cell_350/MatMul/ReadVariableOp#lstm_cell_350/MatMul/ReadVariableOp2N
%lstm_cell_350/MatMul_1/ReadVariableOp%lstm_cell_350/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_349_layer_call_and_return_conditional_losses_2122684

inputs
states_0
states_11
matmul_readvariableop_resource:	d?3
 matmul_1_readvariableop_resource:	2?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d:?????????2:?????????2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/1
?

?
lstm_125_while_cond_2120530.
*lstm_125_while_lstm_125_while_loop_counter4
0lstm_125_while_lstm_125_while_maximum_iterations
lstm_125_while_placeholder 
lstm_125_while_placeholder_1 
lstm_125_while_placeholder_2 
lstm_125_while_placeholder_30
,lstm_125_while_less_lstm_125_strided_slice_1G
Clstm_125_while_lstm_125_while_cond_2120530___redundant_placeholder0G
Clstm_125_while_lstm_125_while_cond_2120530___redundant_placeholder1G
Clstm_125_while_lstm_125_while_cond_2120530___redundant_placeholder2G
Clstm_125_while_lstm_125_while_cond_2120530___redundant_placeholder3
lstm_125_while_identity
?
lstm_125/while/LessLesslstm_125_while_placeholder,lstm_125_while_less_lstm_125_strided_slice_1*
T0*
_output_shapes
: ]
lstm_125/while/IdentityIdentitylstm_125/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_125_while_identity lstm_125/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
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
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?

?
lstm_124_while_cond_2120391.
*lstm_124_while_lstm_124_while_loop_counter4
0lstm_124_while_lstm_124_while_maximum_iterations
lstm_124_while_placeholder 
lstm_124_while_placeholder_1 
lstm_124_while_placeholder_2 
lstm_124_while_placeholder_30
,lstm_124_while_less_lstm_124_strided_slice_1G
Clstm_124_while_lstm_124_while_cond_2120391___redundant_placeholder0G
Clstm_124_while_lstm_124_while_cond_2120391___redundant_placeholder1G
Clstm_124_while_lstm_124_while_cond_2120391___redundant_placeholder2G
Clstm_124_while_lstm_124_while_cond_2120391___redundant_placeholder3
lstm_124_while_identity
?
lstm_124/while/LessLesslstm_124_while_placeholder,lstm_124_while_less_lstm_124_strided_slice_1*
T0*
_output_shapes
: ]
lstm_124/while/IdentityIdentitylstm_124/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_124_while_identity lstm_124/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?J
?
E__inference_lstm_124_layer_call_and_return_conditional_losses_2121710

inputs?
,lstm_cell_349_matmul_readvariableop_resource:	d?A
.lstm_cell_349_matmul_1_readvariableop_resource:	2?<
-lstm_cell_349_biasadd_readvariableop_resource:	?
identity??$lstm_cell_349/BiasAdd/ReadVariableOp?#lstm_cell_349/MatMul/ReadVariableOp?%lstm_cell_349/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????2R
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
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????dD
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
#lstm_cell_349/MatMul/ReadVariableOpReadVariableOp,lstm_cell_349_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_349/MatMulMatMulstrided_slice_2:output:0+lstm_cell_349/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_349/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_349_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_349/MatMul_1MatMulzeros:output:0-lstm_cell_349/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_349/addAddV2lstm_cell_349/MatMul:product:0 lstm_cell_349/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_349/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_349_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_349/BiasAddBiasAddlstm_cell_349/add:z:0,lstm_cell_349/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_349/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_349/splitSplit&lstm_cell_349/split/split_dim:output:0lstm_cell_349/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_349/SigmoidSigmoidlstm_cell_349/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_349/Sigmoid_1Sigmoidlstm_cell_349/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_349/mulMullstm_cell_349/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_349/ReluRelulstm_cell_349/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_349/mul_1Mullstm_cell_349/Sigmoid:y:0 lstm_cell_349/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_349/add_1AddV2lstm_cell_349/mul:z:0lstm_cell_349/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_349/Sigmoid_2Sigmoidlstm_cell_349/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_349/Relu_1Relulstm_cell_349/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_349/mul_2Mullstm_cell_349/Sigmoid_2:y:0"lstm_cell_349/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_349_matmul_readvariableop_resource.lstm_cell_349_matmul_1_readvariableop_resource-lstm_cell_349_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2121626*
condR
while_cond_2121625*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????2?
NoOpNoOp%^lstm_cell_349/BiasAdd/ReadVariableOp$^lstm_cell_349/MatMul/ReadVariableOp&^lstm_cell_349/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_349/BiasAdd/ReadVariableOp$lstm_cell_349/BiasAdd/ReadVariableOp2J
#lstm_cell_349/MatMul/ReadVariableOp#lstm_cell_349/MatMul/ReadVariableOp2N
%lstm_cell_349/MatMul_1/ReadVariableOp%lstm_cell_349/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_2121340
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_349_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_349_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_349_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_349_matmul_readvariableop_resource:	d?G
4while_lstm_cell_349_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_349_biasadd_readvariableop_resource:	???*while/lstm_cell_349/BiasAdd/ReadVariableOp?)while/lstm_cell_349/MatMul/ReadVariableOp?+while/lstm_cell_349/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_349/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_349_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_349/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_349/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_349/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_349_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_349/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_349/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_349/addAddV2$while/lstm_cell_349/MatMul:product:0&while/lstm_cell_349/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_349/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_349_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_349/BiasAddBiasAddwhile/lstm_cell_349/add:z:02while/lstm_cell_349/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_349/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_349/splitSplit,while/lstm_cell_349/split/split_dim:output:0$while/lstm_cell_349/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_349/SigmoidSigmoid"while/lstm_cell_349/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_349/Sigmoid_1Sigmoid"while/lstm_cell_349/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_349/mulMul!while/lstm_cell_349/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_349/ReluRelu"while/lstm_cell_349/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_349/mul_1Mulwhile/lstm_cell_349/Sigmoid:y:0&while/lstm_cell_349/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_349/add_1AddV2while/lstm_cell_349/mul:z:0while/lstm_cell_349/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_349/Sigmoid_2Sigmoid"while/lstm_cell_349/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_349/Relu_1Reluwhile/lstm_cell_349/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_349/mul_2Mul!while/lstm_cell_349/Sigmoid_2:y:0(while/lstm_cell_349/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_349/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_349/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_349/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_349/BiasAdd/ReadVariableOp*^while/lstm_cell_349/MatMul/ReadVariableOp,^while/lstm_cell_349/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_349_biasadd_readvariableop_resource5while_lstm_cell_349_biasadd_readvariableop_resource_0"n
4while_lstm_cell_349_matmul_1_readvariableop_resource6while_lstm_cell_349_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_349_matmul_readvariableop_resource4while_lstm_cell_349_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_349/BiasAdd/ReadVariableOp*while/lstm_cell_349/BiasAdd/ReadVariableOp2V
)while/lstm_cell_349/MatMul/ReadVariableOp)while/lstm_cell_349/MatMul/ReadVariableOp2Z
+while/lstm_cell_349/MatMul_1/ReadVariableOp+while/lstm_cell_349/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_2121955
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2121955___redundant_placeholder05
1while_while_cond_2121955___redundant_placeholder15
1while_while_cond_2121955___redundant_placeholder25
1while_while_cond_2121955___redundant_placeholder3
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
@: : : : :?????????
:?????????
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
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_2122241
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2122241___redundant_placeholder05
1while_while_cond_2122241___redundant_placeholder15
1while_while_cond_2122241___redundant_placeholder25
1while_while_cond_2122241___redundant_placeholder3
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
@: : : : :?????????
:?????????
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
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
/__inference_lstm_cell_349_layer_call_fn_2122603

inputs
states_0
states_1
unknown:	d?
	unknown_0:	2?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_349_layer_call_and_return_conditional_losses_2117870o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d:?????????2:?????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/1
?
?
while_cond_2118567
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2118567___redundant_placeholder05
1while_while_cond_2118567___redundant_placeholder15
1while_while_cond_2118567___redundant_placeholder25
1while_while_cond_2118567___redundant_placeholder3
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
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?
?
J__inference_lstm_cell_349_layer_call_and_return_conditional_losses_2118016

inputs

states
states_11
matmul_readvariableop_resource:	d?3
 matmul_1_readvariableop_resource:	2?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d:?????????2:?????????2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????2
 
_user_specified_namestates:OK
'
_output_shapes
:?????????2
 
_user_specified_namestates
?
?
while_cond_2118867
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2118867___redundant_placeholder05
1while_while_cond_2118867___redundant_placeholder15
1while_while_cond_2118867___redundant_placeholder25
1while_while_cond_2118867___redundant_placeholder3
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
@: : : : :?????????
:?????????
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
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
/__inference_lstm_cell_349_layer_call_fn_2122620

inputs
states_0
states_1
unknown:	d?
	unknown_0:	2?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_349_layer_call_and_return_conditional_losses_2118016o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d:?????????2:?????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/1
?J
?
E__inference_lstm_123_layer_call_and_return_conditional_losses_2118652

inputs?
,lstm_cell_348_matmul_readvariableop_resource:	?A
.lstm_cell_348_matmul_1_readvariableop_resource:	d?<
-lstm_cell_348_biasadd_readvariableop_resource:	?
identity??$lstm_cell_348/BiasAdd/ReadVariableOp?#lstm_cell_348/MatMul/ReadVariableOp?%lstm_cell_348/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????dR
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
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_348/MatMul/ReadVariableOpReadVariableOp,lstm_cell_348_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_348/MatMulMatMulstrided_slice_2:output:0+lstm_cell_348/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_348/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_348_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_348/MatMul_1MatMulzeros:output:0-lstm_cell_348/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_348/addAddV2lstm_cell_348/MatMul:product:0 lstm_cell_348/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_348/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_348_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_348/BiasAddBiasAddlstm_cell_348/add:z:0,lstm_cell_348/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_348/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_348/splitSplit&lstm_cell_348/split/split_dim:output:0lstm_cell_348/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_348/SigmoidSigmoidlstm_cell_348/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_348/Sigmoid_1Sigmoidlstm_cell_348/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_348/mulMullstm_cell_348/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_348/ReluRelulstm_cell_348/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_348/mul_1Mullstm_cell_348/Sigmoid:y:0 lstm_cell_348/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_348/add_1AddV2lstm_cell_348/mul:z:0lstm_cell_348/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_348/Sigmoid_2Sigmoidlstm_cell_348/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_348/Relu_1Relulstm_cell_348/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_348/mul_2Mullstm_cell_348/Sigmoid_2:y:0"lstm_cell_348/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_348_matmul_readvariableop_resource.lstm_cell_348_matmul_1_readvariableop_resource-lstm_cell_348_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2118568*
condR
while_cond_2118567*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????d?
NoOpNoOp%^lstm_cell_348/BiasAdd/ReadVariableOp$^lstm_cell_348/MatMul/ReadVariableOp&^lstm_cell_348/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_348/BiasAdd/ReadVariableOp$lstm_cell_348/BiasAdd/ReadVariableOp2J
#lstm_cell_348/MatMul/ReadVariableOp#lstm_cell_348/MatMul/ReadVariableOp2N
%lstm_cell_348/MatMul_1/ReadVariableOp%lstm_cell_348/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_41_layer_call_and_return_conditional_losses_2122488

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?	
?
E__inference_dense_41_layer_call_and_return_conditional_losses_2118970

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_349_layer_call_and_return_conditional_losses_2117870

inputs

states
states_11
matmul_readvariableop_resource:	d?3
 matmul_1_readvariableop_resource:	2?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d:?????????2:?????????2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????2
 
_user_specified_namestates:OK
'
_output_shapes
:?????????2
 
_user_specified_namestates
?
?
/__inference_lstm_cell_350_layer_call_fn_2122718

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_350_layer_call_and_return_conditional_losses_2118366o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????
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
?:?????????2:?????????
:?????????
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/1
?
?
while_cond_2118717
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2118717___redundant_placeholder05
1while_while_cond_2118717___redundant_placeholder15
1while_while_cond_2118717___redundant_placeholder25
1while_while_cond_2118717___redundant_placeholder3
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
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?8
?
while_body_2121153
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_348_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_348_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_348_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_348_matmul_readvariableop_resource:	?G
4while_lstm_cell_348_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_348_biasadd_readvariableop_resource:	???*while/lstm_cell_348/BiasAdd/ReadVariableOp?)while/lstm_cell_348/MatMul/ReadVariableOp?+while/lstm_cell_348/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_348/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_348_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_348/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_348/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_348/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_348_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_348/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_348/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_348/addAddV2$while/lstm_cell_348/MatMul:product:0&while/lstm_cell_348/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_348/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_348_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_348/BiasAddBiasAddwhile/lstm_cell_348/add:z:02while/lstm_cell_348/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_348/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_348/splitSplit,while/lstm_cell_348/split/split_dim:output:0$while/lstm_cell_348/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_348/SigmoidSigmoid"while/lstm_cell_348/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_348/Sigmoid_1Sigmoid"while/lstm_cell_348/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_348/mulMul!while/lstm_cell_348/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_348/ReluRelu"while/lstm_cell_348/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_348/mul_1Mulwhile/lstm_cell_348/Sigmoid:y:0&while/lstm_cell_348/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_348/add_1AddV2while/lstm_cell_348/mul:z:0while/lstm_cell_348/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_348/Sigmoid_2Sigmoid"while/lstm_cell_348/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_348/Relu_1Reluwhile/lstm_cell_348/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_348/mul_2Mul!while/lstm_cell_348/Sigmoid_2:y:0(while/lstm_cell_348/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_348/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_348/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_348/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_348/BiasAdd/ReadVariableOp*^while/lstm_cell_348/MatMul/ReadVariableOp,^while/lstm_cell_348/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_348_biasadd_readvariableop_resource5while_lstm_cell_348_biasadd_readvariableop_resource_0"n
4while_lstm_cell_348_matmul_1_readvariableop_resource6while_lstm_cell_348_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_348_matmul_readvariableop_resource4while_lstm_cell_348_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_348/BiasAdd/ReadVariableOp*while/lstm_cell_348/BiasAdd/ReadVariableOp2V
)while/lstm_cell_348/MatMul/ReadVariableOp)while/lstm_cell_348/MatMul/ReadVariableOp2Z
+while/lstm_cell_348/MatMul_1/ReadVariableOp+while/lstm_cell_348/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?
?
*__inference_lstm_123_layer_call_fn_2120632
inputs_0
unknown:	?
	unknown_0:	d?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_123_layer_call_and_return_conditional_losses_2117603|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_sequential_41_layer_call_and_return_conditional_losses_2119648
lstm_123_input#
lstm_123_2119621:	?#
lstm_123_2119623:	d?
lstm_123_2119625:	?#
lstm_124_2119628:	d?#
lstm_124_2119630:	2?
lstm_124_2119632:	?"
lstm_125_2119635:2("
lstm_125_2119637:
(
lstm_125_2119639:("
dense_41_2119642:

dense_41_2119644:
identity?? dense_41/StatefulPartitionedCall? lstm_123/StatefulPartitionedCall? lstm_124/StatefulPartitionedCall? lstm_125/StatefulPartitionedCall?
 lstm_123/StatefulPartitionedCallStatefulPartitionedCalllstm_123_inputlstm_123_2119621lstm_123_2119623lstm_123_2119625*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_123_layer_call_and_return_conditional_losses_2118652?
 lstm_124/StatefulPartitionedCallStatefulPartitionedCall)lstm_123/StatefulPartitionedCall:output:0lstm_124_2119628lstm_124_2119630lstm_124_2119632*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_124_layer_call_and_return_conditional_losses_2118802?
 lstm_125/StatefulPartitionedCallStatefulPartitionedCall)lstm_124/StatefulPartitionedCall:output:0lstm_125_2119635lstm_125_2119637lstm_125_2119639*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_125_layer_call_and_return_conditional_losses_2118952?
 dense_41/StatefulPartitionedCallStatefulPartitionedCall)lstm_125/StatefulPartitionedCall:output:0dense_41_2119642dense_41_2119644*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_41_layer_call_and_return_conditional_losses_2118970x
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_41/StatefulPartitionedCall!^lstm_123/StatefulPartitionedCall!^lstm_124/StatefulPartitionedCall!^lstm_125/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall2D
 lstm_123/StatefulPartitionedCall lstm_123/StatefulPartitionedCall2D
 lstm_124/StatefulPartitionedCall lstm_124/StatefulPartitionedCall2D
 lstm_125/StatefulPartitionedCall lstm_125/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_123_input
?8
?
while_body_2121010
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_348_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_348_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_348_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_348_matmul_readvariableop_resource:	?G
4while_lstm_cell_348_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_348_biasadd_readvariableop_resource:	???*while/lstm_cell_348/BiasAdd/ReadVariableOp?)while/lstm_cell_348/MatMul/ReadVariableOp?+while/lstm_cell_348/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_348/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_348_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_348/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_348/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_348/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_348_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_348/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_348/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_348/addAddV2$while/lstm_cell_348/MatMul:product:0&while/lstm_cell_348/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_348/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_348_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_348/BiasAddBiasAddwhile/lstm_cell_348/add:z:02while/lstm_cell_348/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_348/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_348/splitSplit,while/lstm_cell_348/split/split_dim:output:0$while/lstm_cell_348/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_348/SigmoidSigmoid"while/lstm_cell_348/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_348/Sigmoid_1Sigmoid"while/lstm_cell_348/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_348/mulMul!while/lstm_cell_348/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_348/ReluRelu"while/lstm_cell_348/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_348/mul_1Mulwhile/lstm_cell_348/Sigmoid:y:0&while/lstm_cell_348/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_348/add_1AddV2while/lstm_cell_348/mul:z:0while/lstm_cell_348/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_348/Sigmoid_2Sigmoid"while/lstm_cell_348/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_348/Relu_1Reluwhile/lstm_cell_348/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_348/mul_2Mul!while/lstm_cell_348/Sigmoid_2:y:0(while/lstm_cell_348/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_348/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_348/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_348/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_348/BiasAdd/ReadVariableOp*^while/lstm_cell_348/MatMul/ReadVariableOp,^while/lstm_cell_348/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_348_biasadd_readvariableop_resource5while_lstm_cell_348_biasadd_readvariableop_resource_0"n
4while_lstm_cell_348_matmul_1_readvariableop_resource6while_lstm_cell_348_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_348_matmul_readvariableop_resource4while_lstm_cell_348_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_348/BiasAdd/ReadVariableOp*while/lstm_cell_348/BiasAdd/ReadVariableOp2V
)while/lstm_cell_348/MatMul/ReadVariableOp)while/lstm_cell_348/MatMul/ReadVariableOp2Z
+while/lstm_cell_348/MatMul_1/ReadVariableOp+while/lstm_cell_348/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?J
?
E__inference_lstm_123_layer_call_and_return_conditional_losses_2121237

inputs?
,lstm_cell_348_matmul_readvariableop_resource:	?A
.lstm_cell_348_matmul_1_readvariableop_resource:	d?<
-lstm_cell_348_biasadd_readvariableop_resource:	?
identity??$lstm_cell_348/BiasAdd/ReadVariableOp?#lstm_cell_348/MatMul/ReadVariableOp?%lstm_cell_348/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????dR
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
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_348/MatMul/ReadVariableOpReadVariableOp,lstm_cell_348_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_348/MatMulMatMulstrided_slice_2:output:0+lstm_cell_348/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_348/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_348_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_348/MatMul_1MatMulzeros:output:0-lstm_cell_348/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_348/addAddV2lstm_cell_348/MatMul:product:0 lstm_cell_348/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_348/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_348_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_348/BiasAddBiasAddlstm_cell_348/add:z:0,lstm_cell_348/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_348/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_348/splitSplit&lstm_cell_348/split/split_dim:output:0lstm_cell_348/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_348/SigmoidSigmoidlstm_cell_348/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_348/Sigmoid_1Sigmoidlstm_cell_348/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_348/mulMullstm_cell_348/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_348/ReluRelulstm_cell_348/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_348/mul_1Mullstm_cell_348/Sigmoid:y:0 lstm_cell_348/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_348/add_1AddV2lstm_cell_348/mul:z:0lstm_cell_348/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_348/Sigmoid_2Sigmoidlstm_cell_348/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_348/Relu_1Relulstm_cell_348/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_348/mul_2Mullstm_cell_348/Sigmoid_2:y:0"lstm_cell_348/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_348_matmul_readvariableop_resource.lstm_cell_348_matmul_1_readvariableop_resource-lstm_cell_348_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2121153*
condR
while_cond_2121152*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????d?
NoOpNoOp%^lstm_cell_348/BiasAdd/ReadVariableOp$^lstm_cell_348/MatMul/ReadVariableOp&^lstm_cell_348/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_348/BiasAdd/ReadVariableOp$lstm_cell_348/BiasAdd/ReadVariableOp2J
#lstm_cell_348/MatMul/ReadVariableOp#lstm_cell_348/MatMul/ReadVariableOp2N
%lstm_cell_348/MatMul_1/ReadVariableOp%lstm_cell_348/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_125_layer_call_and_return_conditional_losses_2118494

inputs'
lstm_cell_350_2118412:2('
lstm_cell_350_2118414:
(#
lstm_cell_350_2118416:(
identity??%lstm_cell_350/StatefulPartitionedCall?while;
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
valueB:?
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
:?????????
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
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
%lstm_cell_350/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_350_2118412lstm_cell_350_2118414lstm_cell_350_2118416*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_350_layer_call_and_return_conditional_losses_2118366n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_350_2118412lstm_cell_350_2118414lstm_cell_350_2118416*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2118425*
condR
while_cond_2118424*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????
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
:?????????
v
NoOpNoOp&^lstm_cell_350/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_350/StatefulPartitionedCall%lstm_cell_350/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_123_layer_call_and_return_conditional_losses_2119498

inputs?
,lstm_cell_348_matmul_readvariableop_resource:	?A
.lstm_cell_348_matmul_1_readvariableop_resource:	d?<
-lstm_cell_348_biasadd_readvariableop_resource:	?
identity??$lstm_cell_348/BiasAdd/ReadVariableOp?#lstm_cell_348/MatMul/ReadVariableOp?%lstm_cell_348/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????dR
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
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_348/MatMul/ReadVariableOpReadVariableOp,lstm_cell_348_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_348/MatMulMatMulstrided_slice_2:output:0+lstm_cell_348/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_348/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_348_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_348/MatMul_1MatMulzeros:output:0-lstm_cell_348/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_348/addAddV2lstm_cell_348/MatMul:product:0 lstm_cell_348/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_348/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_348_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_348/BiasAddBiasAddlstm_cell_348/add:z:0,lstm_cell_348/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_348/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_348/splitSplit&lstm_cell_348/split/split_dim:output:0lstm_cell_348/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_348/SigmoidSigmoidlstm_cell_348/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_348/Sigmoid_1Sigmoidlstm_cell_348/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_348/mulMullstm_cell_348/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_348/ReluRelulstm_cell_348/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_348/mul_1Mullstm_cell_348/Sigmoid:y:0 lstm_cell_348/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_348/add_1AddV2lstm_cell_348/mul:z:0lstm_cell_348/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_348/Sigmoid_2Sigmoidlstm_cell_348/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_348/Relu_1Relulstm_cell_348/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_348/mul_2Mullstm_cell_348/Sigmoid_2:y:0"lstm_cell_348/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_348_matmul_readvariableop_resource.lstm_cell_348_matmul_1_readvariableop_resource-lstm_cell_348_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2119414*
condR
while_cond_2119413*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????d?
NoOpNoOp%^lstm_cell_348/BiasAdd/ReadVariableOp$^lstm_cell_348/MatMul/ReadVariableOp&^lstm_cell_348/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_348/BiasAdd/ReadVariableOp$lstm_cell_348/BiasAdd/ReadVariableOp2J
#lstm_cell_348/MatMul/ReadVariableOp#lstm_cell_348/MatMul/ReadVariableOp2N
%lstm_cell_348/MatMul_1/ReadVariableOp%lstm_cell_348/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2121956
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_350_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_350_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_350_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_350_matmul_readvariableop_resource:2(F
4while_lstm_cell_350_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_350_biasadd_readvariableop_resource:(??*while/lstm_cell_350/BiasAdd/ReadVariableOp?)while/lstm_cell_350/MatMul/ReadVariableOp?+while/lstm_cell_350/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_350/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_350_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_350/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_350/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_350/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_350_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_350/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_350/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_350/addAddV2$while/lstm_cell_350/MatMul:product:0&while/lstm_cell_350/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_350/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_350_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_350/BiasAddBiasAddwhile/lstm_cell_350/add:z:02while/lstm_cell_350/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_350/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_350/splitSplit,while/lstm_cell_350/split/split_dim:output:0$while/lstm_cell_350/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_350/SigmoidSigmoid"while/lstm_cell_350/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_350/Sigmoid_1Sigmoid"while/lstm_cell_350/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_350/mulMul!while/lstm_cell_350/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_350/ReluRelu"while/lstm_cell_350/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_350/mul_1Mulwhile/lstm_cell_350/Sigmoid:y:0&while/lstm_cell_350/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_350/add_1AddV2while/lstm_cell_350/mul:z:0while/lstm_cell_350/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_350/Sigmoid_2Sigmoid"while/lstm_cell_350/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_350/Relu_1Reluwhile/lstm_cell_350/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_350/mul_2Mul!while/lstm_cell_350/Sigmoid_2:y:0(while/lstm_cell_350/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_350/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_350/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_350/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_350/BiasAdd/ReadVariableOp*^while/lstm_cell_350/MatMul/ReadVariableOp,^while/lstm_cell_350/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_350_biasadd_readvariableop_resource5while_lstm_cell_350_biasadd_readvariableop_resource_0"n
4while_lstm_cell_350_matmul_1_readvariableop_resource6while_lstm_cell_350_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_350_matmul_readvariableop_resource4while_lstm_cell_350_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_350/BiasAdd/ReadVariableOp*while/lstm_cell_350/BiasAdd/ReadVariableOp2V
)while/lstm_cell_350/MatMul/ReadVariableOp)while/lstm_cell_350/MatMul/ReadVariableOp2Z
+while/lstm_cell_350/MatMul_1/ReadVariableOp+while/lstm_cell_350/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?
?
J__inference_lstm_cell_350_layer_call_and_return_conditional_losses_2118220

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????2:?????????
:?????????
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????

 
_user_specified_namestates:OK
'
_output_shapes
:?????????

 
_user_specified_namestates
?#
?
while_body_2118075
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_349_2118099_0:	d?0
while_lstm_cell_349_2118101_0:	2?,
while_lstm_cell_349_2118103_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_349_2118099:	d?.
while_lstm_cell_349_2118101:	2?*
while_lstm_cell_349_2118103:	???+while/lstm_cell_349/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_349/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_349_2118099_0while_lstm_cell_349_2118101_0while_lstm_cell_349_2118103_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_349_layer_call_and_return_conditional_losses_2118016?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_349/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity4while/lstm_cell_349/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_349/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_349/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_349_2118099while_lstm_cell_349_2118099_0"<
while_lstm_cell_349_2118101while_lstm_cell_349_2118101_0"<
while_lstm_cell_349_2118103while_lstm_cell_349_2118103_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_349/StatefulPartitionedCall+while/lstm_cell_349/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?C
?

lstm_124_while_body_2120392.
*lstm_124_while_lstm_124_while_loop_counter4
0lstm_124_while_lstm_124_while_maximum_iterations
lstm_124_while_placeholder 
lstm_124_while_placeholder_1 
lstm_124_while_placeholder_2 
lstm_124_while_placeholder_3-
)lstm_124_while_lstm_124_strided_slice_1_0i
elstm_124_while_tensorarrayv2read_tensorlistgetitem_lstm_124_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_124_while_lstm_cell_349_matmul_readvariableop_resource_0:	d?R
?lstm_124_while_lstm_cell_349_matmul_1_readvariableop_resource_0:	2?M
>lstm_124_while_lstm_cell_349_biasadd_readvariableop_resource_0:	?
lstm_124_while_identity
lstm_124_while_identity_1
lstm_124_while_identity_2
lstm_124_while_identity_3
lstm_124_while_identity_4
lstm_124_while_identity_5+
'lstm_124_while_lstm_124_strided_slice_1g
clstm_124_while_tensorarrayv2read_tensorlistgetitem_lstm_124_tensorarrayunstack_tensorlistfromtensorN
;lstm_124_while_lstm_cell_349_matmul_readvariableop_resource:	d?P
=lstm_124_while_lstm_cell_349_matmul_1_readvariableop_resource:	2?K
<lstm_124_while_lstm_cell_349_biasadd_readvariableop_resource:	???3lstm_124/while/lstm_cell_349/BiasAdd/ReadVariableOp?2lstm_124/while/lstm_cell_349/MatMul/ReadVariableOp?4lstm_124/while/lstm_cell_349/MatMul_1/ReadVariableOp?
@lstm_124/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_124/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_124_while_tensorarrayv2read_tensorlistgetitem_lstm_124_tensorarrayunstack_tensorlistfromtensor_0lstm_124_while_placeholderIlstm_124/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_124/while/lstm_cell_349/MatMul/ReadVariableOpReadVariableOp=lstm_124_while_lstm_cell_349_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_124/while/lstm_cell_349/MatMulMatMul9lstm_124/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_124/while/lstm_cell_349/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_124/while/lstm_cell_349/MatMul_1/ReadVariableOpReadVariableOp?lstm_124_while_lstm_cell_349_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_124/while/lstm_cell_349/MatMul_1MatMullstm_124_while_placeholder_2<lstm_124/while/lstm_cell_349/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_124/while/lstm_cell_349/addAddV2-lstm_124/while/lstm_cell_349/MatMul:product:0/lstm_124/while/lstm_cell_349/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_124/while/lstm_cell_349/BiasAdd/ReadVariableOpReadVariableOp>lstm_124_while_lstm_cell_349_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_124/while/lstm_cell_349/BiasAddBiasAdd$lstm_124/while/lstm_cell_349/add:z:0;lstm_124/while/lstm_cell_349/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_124/while/lstm_cell_349/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_124/while/lstm_cell_349/splitSplit5lstm_124/while/lstm_cell_349/split/split_dim:output:0-lstm_124/while/lstm_cell_349/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_124/while/lstm_cell_349/SigmoidSigmoid+lstm_124/while/lstm_cell_349/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_124/while/lstm_cell_349/Sigmoid_1Sigmoid+lstm_124/while/lstm_cell_349/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_124/while/lstm_cell_349/mulMul*lstm_124/while/lstm_cell_349/Sigmoid_1:y:0lstm_124_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_124/while/lstm_cell_349/ReluRelu+lstm_124/while/lstm_cell_349/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_124/while/lstm_cell_349/mul_1Mul(lstm_124/while/lstm_cell_349/Sigmoid:y:0/lstm_124/while/lstm_cell_349/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_124/while/lstm_cell_349/add_1AddV2$lstm_124/while/lstm_cell_349/mul:z:0&lstm_124/while/lstm_cell_349/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_124/while/lstm_cell_349/Sigmoid_2Sigmoid+lstm_124/while/lstm_cell_349/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_124/while/lstm_cell_349/Relu_1Relu&lstm_124/while/lstm_cell_349/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_124/while/lstm_cell_349/mul_2Mul*lstm_124/while/lstm_cell_349/Sigmoid_2:y:01lstm_124/while/lstm_cell_349/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_124/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_124_while_placeholder_1lstm_124_while_placeholder&lstm_124/while/lstm_cell_349/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_124/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_124/while/addAddV2lstm_124_while_placeholderlstm_124/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_124/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_124/while/add_1AddV2*lstm_124_while_lstm_124_while_loop_counterlstm_124/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_124/while/IdentityIdentitylstm_124/while/add_1:z:0^lstm_124/while/NoOp*
T0*
_output_shapes
: ?
lstm_124/while/Identity_1Identity0lstm_124_while_lstm_124_while_maximum_iterations^lstm_124/while/NoOp*
T0*
_output_shapes
: t
lstm_124/while/Identity_2Identitylstm_124/while/add:z:0^lstm_124/while/NoOp*
T0*
_output_shapes
: ?
lstm_124/while/Identity_3IdentityClstm_124/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_124/while/NoOp*
T0*
_output_shapes
: ?
lstm_124/while/Identity_4Identity&lstm_124/while/lstm_cell_349/mul_2:z:0^lstm_124/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_124/while/Identity_5Identity&lstm_124/while/lstm_cell_349/add_1:z:0^lstm_124/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_124/while/NoOpNoOp4^lstm_124/while/lstm_cell_349/BiasAdd/ReadVariableOp3^lstm_124/while/lstm_cell_349/MatMul/ReadVariableOp5^lstm_124/while/lstm_cell_349/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_124_while_identity lstm_124/while/Identity:output:0"?
lstm_124_while_identity_1"lstm_124/while/Identity_1:output:0"?
lstm_124_while_identity_2"lstm_124/while/Identity_2:output:0"?
lstm_124_while_identity_3"lstm_124/while/Identity_3:output:0"?
lstm_124_while_identity_4"lstm_124/while/Identity_4:output:0"?
lstm_124_while_identity_5"lstm_124/while/Identity_5:output:0"T
'lstm_124_while_lstm_124_strided_slice_1)lstm_124_while_lstm_124_strided_slice_1_0"~
<lstm_124_while_lstm_cell_349_biasadd_readvariableop_resource>lstm_124_while_lstm_cell_349_biasadd_readvariableop_resource_0"?
=lstm_124_while_lstm_cell_349_matmul_1_readvariableop_resource?lstm_124_while_lstm_cell_349_matmul_1_readvariableop_resource_0"|
;lstm_124_while_lstm_cell_349_matmul_readvariableop_resource=lstm_124_while_lstm_cell_349_matmul_readvariableop_resource_0"?
clstm_124_while_tensorarrayv2read_tensorlistgetitem_lstm_124_tensorarrayunstack_tensorlistfromtensorelstm_124_while_tensorarrayv2read_tensorlistgetitem_lstm_124_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_124/while/lstm_cell_349/BiasAdd/ReadVariableOp3lstm_124/while/lstm_cell_349/BiasAdd/ReadVariableOp2h
2lstm_124/while/lstm_cell_349/MatMul/ReadVariableOp2lstm_124/while/lstm_cell_349/MatMul/ReadVariableOp2l
4lstm_124/while/lstm_cell_349/MatMul_1/ReadVariableOp4lstm_124/while/lstm_cell_349/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?

?
lstm_123_while_cond_2119825.
*lstm_123_while_lstm_123_while_loop_counter4
0lstm_123_while_lstm_123_while_maximum_iterations
lstm_123_while_placeholder 
lstm_123_while_placeholder_1 
lstm_123_while_placeholder_2 
lstm_123_while_placeholder_30
,lstm_123_while_less_lstm_123_strided_slice_1G
Clstm_123_while_lstm_123_while_cond_2119825___redundant_placeholder0G
Clstm_123_while_lstm_123_while_cond_2119825___redundant_placeholder1G
Clstm_123_while_lstm_123_while_cond_2119825___redundant_placeholder2G
Clstm_123_while_lstm_123_while_cond_2119825___redundant_placeholder3
lstm_123_while_identity
?
lstm_123/while/LessLesslstm_123_while_placeholder,lstm_123_while_less_lstm_123_strided_slice_1*
T0*
_output_shapes
: ]
lstm_123/while/IdentityIdentitylstm_123/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_123_while_identity lstm_123/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_2118074
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2118074___redundant_placeholder05
1while_while_cond_2118074___redundant_placeholder15
1while_while_cond_2118074___redundant_placeholder25
1while_while_cond_2118074___redundant_placeholder3
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
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
J__inference_sequential_41_layer_call_and_return_conditional_losses_2119566

inputs#
lstm_123_2119539:	?#
lstm_123_2119541:	d?
lstm_123_2119543:	?#
lstm_124_2119546:	d?#
lstm_124_2119548:	2?
lstm_124_2119550:	?"
lstm_125_2119553:2("
lstm_125_2119555:
(
lstm_125_2119557:("
dense_41_2119560:

dense_41_2119562:
identity?? dense_41/StatefulPartitionedCall? lstm_123/StatefulPartitionedCall? lstm_124/StatefulPartitionedCall? lstm_125/StatefulPartitionedCall?
 lstm_123/StatefulPartitionedCallStatefulPartitionedCallinputslstm_123_2119539lstm_123_2119541lstm_123_2119543*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_123_layer_call_and_return_conditional_losses_2119498?
 lstm_124/StatefulPartitionedCallStatefulPartitionedCall)lstm_123/StatefulPartitionedCall:output:0lstm_124_2119546lstm_124_2119548lstm_124_2119550*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_124_layer_call_and_return_conditional_losses_2119333?
 lstm_125/StatefulPartitionedCallStatefulPartitionedCall)lstm_124/StatefulPartitionedCall:output:0lstm_125_2119553lstm_125_2119555lstm_125_2119557*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_125_layer_call_and_return_conditional_losses_2119168?
 dense_41/StatefulPartitionedCallStatefulPartitionedCall)lstm_125/StatefulPartitionedCall:output:0dense_41_2119560dense_41_2119562*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_41_layer_call_and_return_conditional_losses_2118970x
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_41/StatefulPartitionedCall!^lstm_123/StatefulPartitionedCall!^lstm_124/StatefulPartitionedCall!^lstm_125/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall2D
 lstm_123/StatefulPartitionedCall lstm_123/StatefulPartitionedCall2D
 lstm_124/StatefulPartitionedCall lstm_124/StatefulPartitionedCall2D
 lstm_125/StatefulPartitionedCall lstm_125/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_2119713
lstm_123_input
unknown:	?
	unknown_0:	d?
	unknown_1:	?
	unknown_2:	d?
	unknown_3:	2?
	unknown_4:	?
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_123_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_2117453o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_123_input
?8
?
while_body_2118868
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_350_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_350_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_350_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_350_matmul_readvariableop_resource:2(F
4while_lstm_cell_350_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_350_biasadd_readvariableop_resource:(??*while/lstm_cell_350/BiasAdd/ReadVariableOp?)while/lstm_cell_350/MatMul/ReadVariableOp?+while/lstm_cell_350/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_350/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_350_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_350/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_350/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_350/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_350_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_350/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_350/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_350/addAddV2$while/lstm_cell_350/MatMul:product:0&while/lstm_cell_350/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_350/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_350_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_350/BiasAddBiasAddwhile/lstm_cell_350/add:z:02while/lstm_cell_350/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_350/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_350/splitSplit,while/lstm_cell_350/split/split_dim:output:0$while/lstm_cell_350/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_350/SigmoidSigmoid"while/lstm_cell_350/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_350/Sigmoid_1Sigmoid"while/lstm_cell_350/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_350/mulMul!while/lstm_cell_350/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_350/ReluRelu"while/lstm_cell_350/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_350/mul_1Mulwhile/lstm_cell_350/Sigmoid:y:0&while/lstm_cell_350/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_350/add_1AddV2while/lstm_cell_350/mul:z:0while/lstm_cell_350/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_350/Sigmoid_2Sigmoid"while/lstm_cell_350/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_350/Relu_1Reluwhile/lstm_cell_350/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_350/mul_2Mul!while/lstm_cell_350/Sigmoid_2:y:0(while/lstm_cell_350/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_350/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_350/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_350/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_350/BiasAdd/ReadVariableOp*^while/lstm_cell_350/MatMul/ReadVariableOp,^while/lstm_cell_350/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_350_biasadd_readvariableop_resource5while_lstm_cell_350_biasadd_readvariableop_resource_0"n
4while_lstm_cell_350_matmul_1_readvariableop_resource6while_lstm_cell_350_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_350_matmul_readvariableop_resource4while_lstm_cell_350_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_350/BiasAdd/ReadVariableOp*while/lstm_cell_350/BiasAdd/ReadVariableOp2V
)while/lstm_cell_350/MatMul/ReadVariableOp)while/lstm_cell_350/MatMul/ReadVariableOp2Z
+while/lstm_cell_350/MatMul_1/ReadVariableOp+while/lstm_cell_350/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?
?
)sequential_41_lstm_125_while_cond_2117362J
Fsequential_41_lstm_125_while_sequential_41_lstm_125_while_loop_counterP
Lsequential_41_lstm_125_while_sequential_41_lstm_125_while_maximum_iterations,
(sequential_41_lstm_125_while_placeholder.
*sequential_41_lstm_125_while_placeholder_1.
*sequential_41_lstm_125_while_placeholder_2.
*sequential_41_lstm_125_while_placeholder_3L
Hsequential_41_lstm_125_while_less_sequential_41_lstm_125_strided_slice_1c
_sequential_41_lstm_125_while_sequential_41_lstm_125_while_cond_2117362___redundant_placeholder0c
_sequential_41_lstm_125_while_sequential_41_lstm_125_while_cond_2117362___redundant_placeholder1c
_sequential_41_lstm_125_while_sequential_41_lstm_125_while_cond_2117362___redundant_placeholder2c
_sequential_41_lstm_125_while_sequential_41_lstm_125_while_cond_2117362___redundant_placeholder3)
%sequential_41_lstm_125_while_identity
?
!sequential_41/lstm_125/while/LessLess(sequential_41_lstm_125_while_placeholderHsequential_41_lstm_125_while_less_sequential_41_lstm_125_strided_slice_1*
T0*
_output_shapes
: y
%sequential_41/lstm_125/while/IdentityIdentity%sequential_41/lstm_125/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_41_lstm_125_while_identity.sequential_41/lstm_125/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
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
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
*__inference_lstm_123_layer_call_fn_2120654

inputs
unknown:	?
	unknown_0:	d?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_123_layer_call_and_return_conditional_losses_2118652s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_124_while_body_2119965.
*lstm_124_while_lstm_124_while_loop_counter4
0lstm_124_while_lstm_124_while_maximum_iterations
lstm_124_while_placeholder 
lstm_124_while_placeholder_1 
lstm_124_while_placeholder_2 
lstm_124_while_placeholder_3-
)lstm_124_while_lstm_124_strided_slice_1_0i
elstm_124_while_tensorarrayv2read_tensorlistgetitem_lstm_124_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_124_while_lstm_cell_349_matmul_readvariableop_resource_0:	d?R
?lstm_124_while_lstm_cell_349_matmul_1_readvariableop_resource_0:	2?M
>lstm_124_while_lstm_cell_349_biasadd_readvariableop_resource_0:	?
lstm_124_while_identity
lstm_124_while_identity_1
lstm_124_while_identity_2
lstm_124_while_identity_3
lstm_124_while_identity_4
lstm_124_while_identity_5+
'lstm_124_while_lstm_124_strided_slice_1g
clstm_124_while_tensorarrayv2read_tensorlistgetitem_lstm_124_tensorarrayunstack_tensorlistfromtensorN
;lstm_124_while_lstm_cell_349_matmul_readvariableop_resource:	d?P
=lstm_124_while_lstm_cell_349_matmul_1_readvariableop_resource:	2?K
<lstm_124_while_lstm_cell_349_biasadd_readvariableop_resource:	???3lstm_124/while/lstm_cell_349/BiasAdd/ReadVariableOp?2lstm_124/while/lstm_cell_349/MatMul/ReadVariableOp?4lstm_124/while/lstm_cell_349/MatMul_1/ReadVariableOp?
@lstm_124/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_124/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_124_while_tensorarrayv2read_tensorlistgetitem_lstm_124_tensorarrayunstack_tensorlistfromtensor_0lstm_124_while_placeholderIlstm_124/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_124/while/lstm_cell_349/MatMul/ReadVariableOpReadVariableOp=lstm_124_while_lstm_cell_349_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_124/while/lstm_cell_349/MatMulMatMul9lstm_124/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_124/while/lstm_cell_349/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_124/while/lstm_cell_349/MatMul_1/ReadVariableOpReadVariableOp?lstm_124_while_lstm_cell_349_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_124/while/lstm_cell_349/MatMul_1MatMullstm_124_while_placeholder_2<lstm_124/while/lstm_cell_349/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_124/while/lstm_cell_349/addAddV2-lstm_124/while/lstm_cell_349/MatMul:product:0/lstm_124/while/lstm_cell_349/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_124/while/lstm_cell_349/BiasAdd/ReadVariableOpReadVariableOp>lstm_124_while_lstm_cell_349_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_124/while/lstm_cell_349/BiasAddBiasAdd$lstm_124/while/lstm_cell_349/add:z:0;lstm_124/while/lstm_cell_349/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_124/while/lstm_cell_349/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_124/while/lstm_cell_349/splitSplit5lstm_124/while/lstm_cell_349/split/split_dim:output:0-lstm_124/while/lstm_cell_349/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_124/while/lstm_cell_349/SigmoidSigmoid+lstm_124/while/lstm_cell_349/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_124/while/lstm_cell_349/Sigmoid_1Sigmoid+lstm_124/while/lstm_cell_349/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_124/while/lstm_cell_349/mulMul*lstm_124/while/lstm_cell_349/Sigmoid_1:y:0lstm_124_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_124/while/lstm_cell_349/ReluRelu+lstm_124/while/lstm_cell_349/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_124/while/lstm_cell_349/mul_1Mul(lstm_124/while/lstm_cell_349/Sigmoid:y:0/lstm_124/while/lstm_cell_349/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_124/while/lstm_cell_349/add_1AddV2$lstm_124/while/lstm_cell_349/mul:z:0&lstm_124/while/lstm_cell_349/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_124/while/lstm_cell_349/Sigmoid_2Sigmoid+lstm_124/while/lstm_cell_349/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_124/while/lstm_cell_349/Relu_1Relu&lstm_124/while/lstm_cell_349/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_124/while/lstm_cell_349/mul_2Mul*lstm_124/while/lstm_cell_349/Sigmoid_2:y:01lstm_124/while/lstm_cell_349/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_124/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_124_while_placeholder_1lstm_124_while_placeholder&lstm_124/while/lstm_cell_349/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_124/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_124/while/addAddV2lstm_124_while_placeholderlstm_124/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_124/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_124/while/add_1AddV2*lstm_124_while_lstm_124_while_loop_counterlstm_124/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_124/while/IdentityIdentitylstm_124/while/add_1:z:0^lstm_124/while/NoOp*
T0*
_output_shapes
: ?
lstm_124/while/Identity_1Identity0lstm_124_while_lstm_124_while_maximum_iterations^lstm_124/while/NoOp*
T0*
_output_shapes
: t
lstm_124/while/Identity_2Identitylstm_124/while/add:z:0^lstm_124/while/NoOp*
T0*
_output_shapes
: ?
lstm_124/while/Identity_3IdentityClstm_124/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_124/while/NoOp*
T0*
_output_shapes
: ?
lstm_124/while/Identity_4Identity&lstm_124/while/lstm_cell_349/mul_2:z:0^lstm_124/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_124/while/Identity_5Identity&lstm_124/while/lstm_cell_349/add_1:z:0^lstm_124/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_124/while/NoOpNoOp4^lstm_124/while/lstm_cell_349/BiasAdd/ReadVariableOp3^lstm_124/while/lstm_cell_349/MatMul/ReadVariableOp5^lstm_124/while/lstm_cell_349/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_124_while_identity lstm_124/while/Identity:output:0"?
lstm_124_while_identity_1"lstm_124/while/Identity_1:output:0"?
lstm_124_while_identity_2"lstm_124/while/Identity_2:output:0"?
lstm_124_while_identity_3"lstm_124/while/Identity_3:output:0"?
lstm_124_while_identity_4"lstm_124/while/Identity_4:output:0"?
lstm_124_while_identity_5"lstm_124/while/Identity_5:output:0"T
'lstm_124_while_lstm_124_strided_slice_1)lstm_124_while_lstm_124_strided_slice_1_0"~
<lstm_124_while_lstm_cell_349_biasadd_readvariableop_resource>lstm_124_while_lstm_cell_349_biasadd_readvariableop_resource_0"?
=lstm_124_while_lstm_cell_349_matmul_1_readvariableop_resource?lstm_124_while_lstm_cell_349_matmul_1_readvariableop_resource_0"|
;lstm_124_while_lstm_cell_349_matmul_readvariableop_resource=lstm_124_while_lstm_cell_349_matmul_readvariableop_resource_0"?
clstm_124_while_tensorarrayv2read_tensorlistgetitem_lstm_124_tensorarrayunstack_tensorlistfromtensorelstm_124_while_tensorarrayv2read_tensorlistgetitem_lstm_124_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_124/while/lstm_cell_349/BiasAdd/ReadVariableOp3lstm_124/while/lstm_cell_349/BiasAdd/ReadVariableOp2h
2lstm_124/while/lstm_cell_349/MatMul/ReadVariableOp2lstm_124/while/lstm_cell_349/MatMul/ReadVariableOp2l
4lstm_124/while/lstm_cell_349/MatMul_1/ReadVariableOp4lstm_124/while/lstm_cell_349/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
J__inference_lstm_cell_350_layer_call_and_return_conditional_losses_2122750

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????2:?????????
:?????????
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/1
?K
?
E__inference_lstm_123_layer_call_and_return_conditional_losses_2120951
inputs_0?
,lstm_cell_348_matmul_readvariableop_resource:	?A
.lstm_cell_348_matmul_1_readvariableop_resource:	d?<
-lstm_cell_348_biasadd_readvariableop_resource:	?
identity??$lstm_cell_348/BiasAdd/ReadVariableOp?#lstm_cell_348/MatMul/ReadVariableOp?%lstm_cell_348/MatMul_1/ReadVariableOp?while=
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
valueB:?
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
:?????????dR
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
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_348/MatMul/ReadVariableOpReadVariableOp,lstm_cell_348_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_348/MatMulMatMulstrided_slice_2:output:0+lstm_cell_348/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_348/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_348_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_348/MatMul_1MatMulzeros:output:0-lstm_cell_348/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_348/addAddV2lstm_cell_348/MatMul:product:0 lstm_cell_348/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_348/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_348_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_348/BiasAddBiasAddlstm_cell_348/add:z:0,lstm_cell_348/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_348/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_348/splitSplit&lstm_cell_348/split/split_dim:output:0lstm_cell_348/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_348/SigmoidSigmoidlstm_cell_348/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_348/Sigmoid_1Sigmoidlstm_cell_348/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_348/mulMullstm_cell_348/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_348/ReluRelulstm_cell_348/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_348/mul_1Mullstm_cell_348/Sigmoid:y:0 lstm_cell_348/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_348/add_1AddV2lstm_cell_348/mul:z:0lstm_cell_348/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_348/Sigmoid_2Sigmoidlstm_cell_348/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_348/Relu_1Relulstm_cell_348/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_348/mul_2Mullstm_cell_348/Sigmoid_2:y:0"lstm_cell_348/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_348_matmul_readvariableop_resource.lstm_cell_348_matmul_1_readvariableop_resource-lstm_cell_348_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2120867*
condR
while_cond_2120866*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????d?
NoOpNoOp%^lstm_cell_348/BiasAdd/ReadVariableOp$^lstm_cell_348/MatMul/ReadVariableOp&^lstm_cell_348/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_348/BiasAdd/ReadVariableOp$lstm_cell_348/BiasAdd/ReadVariableOp2J
#lstm_cell_348/MatMul/ReadVariableOp#lstm_cell_348/MatMul/ReadVariableOp2N
%lstm_cell_348/MatMul_1/ReadVariableOp%lstm_cell_348/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
??
?
J__inference_sequential_41_layer_call_and_return_conditional_losses_2120194

inputsH
5lstm_123_lstm_cell_348_matmul_readvariableop_resource:	?J
7lstm_123_lstm_cell_348_matmul_1_readvariableop_resource:	d?E
6lstm_123_lstm_cell_348_biasadd_readvariableop_resource:	?H
5lstm_124_lstm_cell_349_matmul_readvariableop_resource:	d?J
7lstm_124_lstm_cell_349_matmul_1_readvariableop_resource:	2?E
6lstm_124_lstm_cell_349_biasadd_readvariableop_resource:	?G
5lstm_125_lstm_cell_350_matmul_readvariableop_resource:2(I
7lstm_125_lstm_cell_350_matmul_1_readvariableop_resource:
(D
6lstm_125_lstm_cell_350_biasadd_readvariableop_resource:(9
'dense_41_matmul_readvariableop_resource:
6
(dense_41_biasadd_readvariableop_resource:
identity??dense_41/BiasAdd/ReadVariableOp?dense_41/MatMul/ReadVariableOp?-lstm_123/lstm_cell_348/BiasAdd/ReadVariableOp?,lstm_123/lstm_cell_348/MatMul/ReadVariableOp?.lstm_123/lstm_cell_348/MatMul_1/ReadVariableOp?lstm_123/while?-lstm_124/lstm_cell_349/BiasAdd/ReadVariableOp?,lstm_124/lstm_cell_349/MatMul/ReadVariableOp?.lstm_124/lstm_cell_349/MatMul_1/ReadVariableOp?lstm_124/while?-lstm_125/lstm_cell_350/BiasAdd/ReadVariableOp?,lstm_125/lstm_cell_350/MatMul/ReadVariableOp?.lstm_125/lstm_cell_350/MatMul_1/ReadVariableOp?lstm_125/whileD
lstm_123/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_123/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_123/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_123/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_123/strided_sliceStridedSlicelstm_123/Shape:output:0%lstm_123/strided_slice/stack:output:0'lstm_123/strided_slice/stack_1:output:0'lstm_123/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_123/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_123/zeros/packedPacklstm_123/strided_slice:output:0 lstm_123/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_123/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_123/zerosFilllstm_123/zeros/packed:output:0lstm_123/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_123/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_123/zeros_1/packedPacklstm_123/strided_slice:output:0"lstm_123/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_123/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_123/zeros_1Fill lstm_123/zeros_1/packed:output:0lstm_123/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_123/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_123/transpose	Transposeinputs lstm_123/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_123/Shape_1Shapelstm_123/transpose:y:0*
T0*
_output_shapes
:h
lstm_123/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_123/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_123/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_123/strided_slice_1StridedSlicelstm_123/Shape_1:output:0'lstm_123/strided_slice_1/stack:output:0)lstm_123/strided_slice_1/stack_1:output:0)lstm_123/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_123/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_123/TensorArrayV2TensorListReserve-lstm_123/TensorArrayV2/element_shape:output:0!lstm_123/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_123/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_123/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_123/transpose:y:0Glstm_123/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_123/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_123/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_123/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_123/strided_slice_2StridedSlicelstm_123/transpose:y:0'lstm_123/strided_slice_2/stack:output:0)lstm_123/strided_slice_2/stack_1:output:0)lstm_123/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_123/lstm_cell_348/MatMul/ReadVariableOpReadVariableOp5lstm_123_lstm_cell_348_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_123/lstm_cell_348/MatMulMatMul!lstm_123/strided_slice_2:output:04lstm_123/lstm_cell_348/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_123/lstm_cell_348/MatMul_1/ReadVariableOpReadVariableOp7lstm_123_lstm_cell_348_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_123/lstm_cell_348/MatMul_1MatMullstm_123/zeros:output:06lstm_123/lstm_cell_348/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_123/lstm_cell_348/addAddV2'lstm_123/lstm_cell_348/MatMul:product:0)lstm_123/lstm_cell_348/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_123/lstm_cell_348/BiasAdd/ReadVariableOpReadVariableOp6lstm_123_lstm_cell_348_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_123/lstm_cell_348/BiasAddBiasAddlstm_123/lstm_cell_348/add:z:05lstm_123/lstm_cell_348/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_123/lstm_cell_348/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_123/lstm_cell_348/splitSplit/lstm_123/lstm_cell_348/split/split_dim:output:0'lstm_123/lstm_cell_348/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_123/lstm_cell_348/SigmoidSigmoid%lstm_123/lstm_cell_348/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_123/lstm_cell_348/Sigmoid_1Sigmoid%lstm_123/lstm_cell_348/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_123/lstm_cell_348/mulMul$lstm_123/lstm_cell_348/Sigmoid_1:y:0lstm_123/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_123/lstm_cell_348/ReluRelu%lstm_123/lstm_cell_348/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_123/lstm_cell_348/mul_1Mul"lstm_123/lstm_cell_348/Sigmoid:y:0)lstm_123/lstm_cell_348/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_123/lstm_cell_348/add_1AddV2lstm_123/lstm_cell_348/mul:z:0 lstm_123/lstm_cell_348/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_123/lstm_cell_348/Sigmoid_2Sigmoid%lstm_123/lstm_cell_348/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_123/lstm_cell_348/Relu_1Relu lstm_123/lstm_cell_348/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_123/lstm_cell_348/mul_2Mul$lstm_123/lstm_cell_348/Sigmoid_2:y:0+lstm_123/lstm_cell_348/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_123/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_123/TensorArrayV2_1TensorListReserve/lstm_123/TensorArrayV2_1/element_shape:output:0!lstm_123/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_123/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_123/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_123/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_123/whileWhile$lstm_123/while/loop_counter:output:0*lstm_123/while/maximum_iterations:output:0lstm_123/time:output:0!lstm_123/TensorArrayV2_1:handle:0lstm_123/zeros:output:0lstm_123/zeros_1:output:0!lstm_123/strided_slice_1:output:0@lstm_123/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_123_lstm_cell_348_matmul_readvariableop_resource7lstm_123_lstm_cell_348_matmul_1_readvariableop_resource6lstm_123_lstm_cell_348_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_123_while_body_2119826*'
condR
lstm_123_while_cond_2119825*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_123/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_123/TensorArrayV2Stack/TensorListStackTensorListStacklstm_123/while:output:3Blstm_123/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_123/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_123/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_123/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_123/strided_slice_3StridedSlice4lstm_123/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_123/strided_slice_3/stack:output:0)lstm_123/strided_slice_3/stack_1:output:0)lstm_123/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_123/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_123/transpose_1	Transpose4lstm_123/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_123/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_123/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_124/ShapeShapelstm_123/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_124/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_124/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_124/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_124/strided_sliceStridedSlicelstm_124/Shape:output:0%lstm_124/strided_slice/stack:output:0'lstm_124/strided_slice/stack_1:output:0'lstm_124/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_124/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_124/zeros/packedPacklstm_124/strided_slice:output:0 lstm_124/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_124/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_124/zerosFilllstm_124/zeros/packed:output:0lstm_124/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_124/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_124/zeros_1/packedPacklstm_124/strided_slice:output:0"lstm_124/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_124/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_124/zeros_1Fill lstm_124/zeros_1/packed:output:0lstm_124/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_124/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_124/transpose	Transposelstm_123/transpose_1:y:0 lstm_124/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_124/Shape_1Shapelstm_124/transpose:y:0*
T0*
_output_shapes
:h
lstm_124/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_124/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_124/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_124/strided_slice_1StridedSlicelstm_124/Shape_1:output:0'lstm_124/strided_slice_1/stack:output:0)lstm_124/strided_slice_1/stack_1:output:0)lstm_124/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_124/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_124/TensorArrayV2TensorListReserve-lstm_124/TensorArrayV2/element_shape:output:0!lstm_124/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_124/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_124/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_124/transpose:y:0Glstm_124/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_124/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_124/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_124/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_124/strided_slice_2StridedSlicelstm_124/transpose:y:0'lstm_124/strided_slice_2/stack:output:0)lstm_124/strided_slice_2/stack_1:output:0)lstm_124/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_124/lstm_cell_349/MatMul/ReadVariableOpReadVariableOp5lstm_124_lstm_cell_349_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_124/lstm_cell_349/MatMulMatMul!lstm_124/strided_slice_2:output:04lstm_124/lstm_cell_349/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_124/lstm_cell_349/MatMul_1/ReadVariableOpReadVariableOp7lstm_124_lstm_cell_349_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_124/lstm_cell_349/MatMul_1MatMullstm_124/zeros:output:06lstm_124/lstm_cell_349/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_124/lstm_cell_349/addAddV2'lstm_124/lstm_cell_349/MatMul:product:0)lstm_124/lstm_cell_349/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_124/lstm_cell_349/BiasAdd/ReadVariableOpReadVariableOp6lstm_124_lstm_cell_349_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_124/lstm_cell_349/BiasAddBiasAddlstm_124/lstm_cell_349/add:z:05lstm_124/lstm_cell_349/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_124/lstm_cell_349/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_124/lstm_cell_349/splitSplit/lstm_124/lstm_cell_349/split/split_dim:output:0'lstm_124/lstm_cell_349/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_124/lstm_cell_349/SigmoidSigmoid%lstm_124/lstm_cell_349/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_124/lstm_cell_349/Sigmoid_1Sigmoid%lstm_124/lstm_cell_349/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_124/lstm_cell_349/mulMul$lstm_124/lstm_cell_349/Sigmoid_1:y:0lstm_124/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_124/lstm_cell_349/ReluRelu%lstm_124/lstm_cell_349/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_124/lstm_cell_349/mul_1Mul"lstm_124/lstm_cell_349/Sigmoid:y:0)lstm_124/lstm_cell_349/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_124/lstm_cell_349/add_1AddV2lstm_124/lstm_cell_349/mul:z:0 lstm_124/lstm_cell_349/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_124/lstm_cell_349/Sigmoid_2Sigmoid%lstm_124/lstm_cell_349/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_124/lstm_cell_349/Relu_1Relu lstm_124/lstm_cell_349/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_124/lstm_cell_349/mul_2Mul$lstm_124/lstm_cell_349/Sigmoid_2:y:0+lstm_124/lstm_cell_349/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_124/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_124/TensorArrayV2_1TensorListReserve/lstm_124/TensorArrayV2_1/element_shape:output:0!lstm_124/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_124/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_124/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_124/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_124/whileWhile$lstm_124/while/loop_counter:output:0*lstm_124/while/maximum_iterations:output:0lstm_124/time:output:0!lstm_124/TensorArrayV2_1:handle:0lstm_124/zeros:output:0lstm_124/zeros_1:output:0!lstm_124/strided_slice_1:output:0@lstm_124/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_124_lstm_cell_349_matmul_readvariableop_resource7lstm_124_lstm_cell_349_matmul_1_readvariableop_resource6lstm_124_lstm_cell_349_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_124_while_body_2119965*'
condR
lstm_124_while_cond_2119964*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_124/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_124/TensorArrayV2Stack/TensorListStackTensorListStacklstm_124/while:output:3Blstm_124/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_124/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_124/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_124/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_124/strided_slice_3StridedSlice4lstm_124/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_124/strided_slice_3/stack:output:0)lstm_124/strided_slice_3/stack_1:output:0)lstm_124/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_124/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_124/transpose_1	Transpose4lstm_124/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_124/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_124/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_125/ShapeShapelstm_124/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_125/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_125/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_125/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_125/strided_sliceStridedSlicelstm_125/Shape:output:0%lstm_125/strided_slice/stack:output:0'lstm_125/strided_slice/stack_1:output:0'lstm_125/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_125/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_125/zeros/packedPacklstm_125/strided_slice:output:0 lstm_125/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_125/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_125/zerosFilllstm_125/zeros/packed:output:0lstm_125/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_125/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_125/zeros_1/packedPacklstm_125/strided_slice:output:0"lstm_125/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_125/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_125/zeros_1Fill lstm_125/zeros_1/packed:output:0lstm_125/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_125/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_125/transpose	Transposelstm_124/transpose_1:y:0 lstm_125/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_125/Shape_1Shapelstm_125/transpose:y:0*
T0*
_output_shapes
:h
lstm_125/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_125/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_125/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_125/strided_slice_1StridedSlicelstm_125/Shape_1:output:0'lstm_125/strided_slice_1/stack:output:0)lstm_125/strided_slice_1/stack_1:output:0)lstm_125/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_125/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_125/TensorArrayV2TensorListReserve-lstm_125/TensorArrayV2/element_shape:output:0!lstm_125/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_125/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_125/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_125/transpose:y:0Glstm_125/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_125/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_125/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_125/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_125/strided_slice_2StridedSlicelstm_125/transpose:y:0'lstm_125/strided_slice_2/stack:output:0)lstm_125/strided_slice_2/stack_1:output:0)lstm_125/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_125/lstm_cell_350/MatMul/ReadVariableOpReadVariableOp5lstm_125_lstm_cell_350_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_125/lstm_cell_350/MatMulMatMul!lstm_125/strided_slice_2:output:04lstm_125/lstm_cell_350/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_125/lstm_cell_350/MatMul_1/ReadVariableOpReadVariableOp7lstm_125_lstm_cell_350_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_125/lstm_cell_350/MatMul_1MatMullstm_125/zeros:output:06lstm_125/lstm_cell_350/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_125/lstm_cell_350/addAddV2'lstm_125/lstm_cell_350/MatMul:product:0)lstm_125/lstm_cell_350/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_125/lstm_cell_350/BiasAdd/ReadVariableOpReadVariableOp6lstm_125_lstm_cell_350_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_125/lstm_cell_350/BiasAddBiasAddlstm_125/lstm_cell_350/add:z:05lstm_125/lstm_cell_350/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_125/lstm_cell_350/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_125/lstm_cell_350/splitSplit/lstm_125/lstm_cell_350/split/split_dim:output:0'lstm_125/lstm_cell_350/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_125/lstm_cell_350/SigmoidSigmoid%lstm_125/lstm_cell_350/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_125/lstm_cell_350/Sigmoid_1Sigmoid%lstm_125/lstm_cell_350/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_125/lstm_cell_350/mulMul$lstm_125/lstm_cell_350/Sigmoid_1:y:0lstm_125/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_125/lstm_cell_350/ReluRelu%lstm_125/lstm_cell_350/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_125/lstm_cell_350/mul_1Mul"lstm_125/lstm_cell_350/Sigmoid:y:0)lstm_125/lstm_cell_350/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_125/lstm_cell_350/add_1AddV2lstm_125/lstm_cell_350/mul:z:0 lstm_125/lstm_cell_350/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_125/lstm_cell_350/Sigmoid_2Sigmoid%lstm_125/lstm_cell_350/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_125/lstm_cell_350/Relu_1Relu lstm_125/lstm_cell_350/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_125/lstm_cell_350/mul_2Mul$lstm_125/lstm_cell_350/Sigmoid_2:y:0+lstm_125/lstm_cell_350/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_125/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_125/TensorArrayV2_1TensorListReserve/lstm_125/TensorArrayV2_1/element_shape:output:0!lstm_125/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_125/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_125/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_125/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_125/whileWhile$lstm_125/while/loop_counter:output:0*lstm_125/while/maximum_iterations:output:0lstm_125/time:output:0!lstm_125/TensorArrayV2_1:handle:0lstm_125/zeros:output:0lstm_125/zeros_1:output:0!lstm_125/strided_slice_1:output:0@lstm_125/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_125_lstm_cell_350_matmul_readvariableop_resource7lstm_125_lstm_cell_350_matmul_1_readvariableop_resource6lstm_125_lstm_cell_350_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_125_while_body_2120104*'
condR
lstm_125_while_cond_2120103*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_125/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_125/TensorArrayV2Stack/TensorListStackTensorListStacklstm_125/while:output:3Blstm_125/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_125/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_125/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_125/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_125/strided_slice_3StridedSlice4lstm_125/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_125/strided_slice_3/stack:output:0)lstm_125/strided_slice_3/stack_1:output:0)lstm_125/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_125/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_125/transpose_1	Transpose4lstm_125/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_125/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_125/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_41/MatMul/ReadVariableOpReadVariableOp'dense_41_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_41/MatMulMatMul!lstm_125/strided_slice_3:output:0&dense_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_41/BiasAdd/ReadVariableOpReadVariableOp(dense_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_41/BiasAddBiasAdddense_41/MatMul:product:0'dense_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_41/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_41/BiasAdd/ReadVariableOp^dense_41/MatMul/ReadVariableOp.^lstm_123/lstm_cell_348/BiasAdd/ReadVariableOp-^lstm_123/lstm_cell_348/MatMul/ReadVariableOp/^lstm_123/lstm_cell_348/MatMul_1/ReadVariableOp^lstm_123/while.^lstm_124/lstm_cell_349/BiasAdd/ReadVariableOp-^lstm_124/lstm_cell_349/MatMul/ReadVariableOp/^lstm_124/lstm_cell_349/MatMul_1/ReadVariableOp^lstm_124/while.^lstm_125/lstm_cell_350/BiasAdd/ReadVariableOp-^lstm_125/lstm_cell_350/MatMul/ReadVariableOp/^lstm_125/lstm_cell_350/MatMul_1/ReadVariableOp^lstm_125/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_41/BiasAdd/ReadVariableOpdense_41/BiasAdd/ReadVariableOp2@
dense_41/MatMul/ReadVariableOpdense_41/MatMul/ReadVariableOp2^
-lstm_123/lstm_cell_348/BiasAdd/ReadVariableOp-lstm_123/lstm_cell_348/BiasAdd/ReadVariableOp2\
,lstm_123/lstm_cell_348/MatMul/ReadVariableOp,lstm_123/lstm_cell_348/MatMul/ReadVariableOp2`
.lstm_123/lstm_cell_348/MatMul_1/ReadVariableOp.lstm_123/lstm_cell_348/MatMul_1/ReadVariableOp2 
lstm_123/whilelstm_123/while2^
-lstm_124/lstm_cell_349/BiasAdd/ReadVariableOp-lstm_124/lstm_cell_349/BiasAdd/ReadVariableOp2\
,lstm_124/lstm_cell_349/MatMul/ReadVariableOp,lstm_124/lstm_cell_349/MatMul/ReadVariableOp2`
.lstm_124/lstm_cell_349/MatMul_1/ReadVariableOp.lstm_124/lstm_cell_349/MatMul_1/ReadVariableOp2 
lstm_124/whilelstm_124/while2^
-lstm_125/lstm_cell_350/BiasAdd/ReadVariableOp-lstm_125/lstm_cell_350/BiasAdd/ReadVariableOp2\
,lstm_125/lstm_cell_350/MatMul/ReadVariableOp,lstm_125/lstm_cell_350/MatMul/ReadVariableOp2`
.lstm_125/lstm_cell_350/MatMul_1/ReadVariableOp.lstm_125/lstm_cell_350/MatMul_1/ReadVariableOp2 
lstm_125/whilelstm_125/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?S
?
)sequential_41_lstm_124_while_body_2117224J
Fsequential_41_lstm_124_while_sequential_41_lstm_124_while_loop_counterP
Lsequential_41_lstm_124_while_sequential_41_lstm_124_while_maximum_iterations,
(sequential_41_lstm_124_while_placeholder.
*sequential_41_lstm_124_while_placeholder_1.
*sequential_41_lstm_124_while_placeholder_2.
*sequential_41_lstm_124_while_placeholder_3I
Esequential_41_lstm_124_while_sequential_41_lstm_124_strided_slice_1_0?
?sequential_41_lstm_124_while_tensorarrayv2read_tensorlistgetitem_sequential_41_lstm_124_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_41_lstm_124_while_lstm_cell_349_matmul_readvariableop_resource_0:	d?`
Msequential_41_lstm_124_while_lstm_cell_349_matmul_1_readvariableop_resource_0:	2?[
Lsequential_41_lstm_124_while_lstm_cell_349_biasadd_readvariableop_resource_0:	?)
%sequential_41_lstm_124_while_identity+
'sequential_41_lstm_124_while_identity_1+
'sequential_41_lstm_124_while_identity_2+
'sequential_41_lstm_124_while_identity_3+
'sequential_41_lstm_124_while_identity_4+
'sequential_41_lstm_124_while_identity_5G
Csequential_41_lstm_124_while_sequential_41_lstm_124_strided_slice_1?
sequential_41_lstm_124_while_tensorarrayv2read_tensorlistgetitem_sequential_41_lstm_124_tensorarrayunstack_tensorlistfromtensor\
Isequential_41_lstm_124_while_lstm_cell_349_matmul_readvariableop_resource:	d?^
Ksequential_41_lstm_124_while_lstm_cell_349_matmul_1_readvariableop_resource:	2?Y
Jsequential_41_lstm_124_while_lstm_cell_349_biasadd_readvariableop_resource:	???Asequential_41/lstm_124/while/lstm_cell_349/BiasAdd/ReadVariableOp?@sequential_41/lstm_124/while/lstm_cell_349/MatMul/ReadVariableOp?Bsequential_41/lstm_124/while/lstm_cell_349/MatMul_1/ReadVariableOp?
Nsequential_41/lstm_124/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_41/lstm_124/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_41_lstm_124_while_tensorarrayv2read_tensorlistgetitem_sequential_41_lstm_124_tensorarrayunstack_tensorlistfromtensor_0(sequential_41_lstm_124_while_placeholderWsequential_41/lstm_124/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_41/lstm_124/while/lstm_cell_349/MatMul/ReadVariableOpReadVariableOpKsequential_41_lstm_124_while_lstm_cell_349_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_41/lstm_124/while/lstm_cell_349/MatMulMatMulGsequential_41/lstm_124/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_41/lstm_124/while/lstm_cell_349/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_41/lstm_124/while/lstm_cell_349/MatMul_1/ReadVariableOpReadVariableOpMsequential_41_lstm_124_while_lstm_cell_349_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_41/lstm_124/while/lstm_cell_349/MatMul_1MatMul*sequential_41_lstm_124_while_placeholder_2Jsequential_41/lstm_124/while/lstm_cell_349/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_41/lstm_124/while/lstm_cell_349/addAddV2;sequential_41/lstm_124/while/lstm_cell_349/MatMul:product:0=sequential_41/lstm_124/while/lstm_cell_349/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_41/lstm_124/while/lstm_cell_349/BiasAdd/ReadVariableOpReadVariableOpLsequential_41_lstm_124_while_lstm_cell_349_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_41/lstm_124/while/lstm_cell_349/BiasAddBiasAdd2sequential_41/lstm_124/while/lstm_cell_349/add:z:0Isequential_41/lstm_124/while/lstm_cell_349/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_41/lstm_124/while/lstm_cell_349/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_41/lstm_124/while/lstm_cell_349/splitSplitCsequential_41/lstm_124/while/lstm_cell_349/split/split_dim:output:0;sequential_41/lstm_124/while/lstm_cell_349/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_41/lstm_124/while/lstm_cell_349/SigmoidSigmoid9sequential_41/lstm_124/while/lstm_cell_349/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_41/lstm_124/while/lstm_cell_349/Sigmoid_1Sigmoid9sequential_41/lstm_124/while/lstm_cell_349/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_41/lstm_124/while/lstm_cell_349/mulMul8sequential_41/lstm_124/while/lstm_cell_349/Sigmoid_1:y:0*sequential_41_lstm_124_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_41/lstm_124/while/lstm_cell_349/ReluRelu9sequential_41/lstm_124/while/lstm_cell_349/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_41/lstm_124/while/lstm_cell_349/mul_1Mul6sequential_41/lstm_124/while/lstm_cell_349/Sigmoid:y:0=sequential_41/lstm_124/while/lstm_cell_349/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_41/lstm_124/while/lstm_cell_349/add_1AddV22sequential_41/lstm_124/while/lstm_cell_349/mul:z:04sequential_41/lstm_124/while/lstm_cell_349/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_41/lstm_124/while/lstm_cell_349/Sigmoid_2Sigmoid9sequential_41/lstm_124/while/lstm_cell_349/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_41/lstm_124/while/lstm_cell_349/Relu_1Relu4sequential_41/lstm_124/while/lstm_cell_349/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_41/lstm_124/while/lstm_cell_349/mul_2Mul8sequential_41/lstm_124/while/lstm_cell_349/Sigmoid_2:y:0?sequential_41/lstm_124/while/lstm_cell_349/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_41/lstm_124/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_41_lstm_124_while_placeholder_1(sequential_41_lstm_124_while_placeholder4sequential_41/lstm_124/while/lstm_cell_349/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_41/lstm_124/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_41/lstm_124/while/addAddV2(sequential_41_lstm_124_while_placeholder+sequential_41/lstm_124/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_41/lstm_124/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_41/lstm_124/while/add_1AddV2Fsequential_41_lstm_124_while_sequential_41_lstm_124_while_loop_counter-sequential_41/lstm_124/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_41/lstm_124/while/IdentityIdentity&sequential_41/lstm_124/while/add_1:z:0"^sequential_41/lstm_124/while/NoOp*
T0*
_output_shapes
: ?
'sequential_41/lstm_124/while/Identity_1IdentityLsequential_41_lstm_124_while_sequential_41_lstm_124_while_maximum_iterations"^sequential_41/lstm_124/while/NoOp*
T0*
_output_shapes
: ?
'sequential_41/lstm_124/while/Identity_2Identity$sequential_41/lstm_124/while/add:z:0"^sequential_41/lstm_124/while/NoOp*
T0*
_output_shapes
: ?
'sequential_41/lstm_124/while/Identity_3IdentityQsequential_41/lstm_124/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_41/lstm_124/while/NoOp*
T0*
_output_shapes
: ?
'sequential_41/lstm_124/while/Identity_4Identity4sequential_41/lstm_124/while/lstm_cell_349/mul_2:z:0"^sequential_41/lstm_124/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_41/lstm_124/while/Identity_5Identity4sequential_41/lstm_124/while/lstm_cell_349/add_1:z:0"^sequential_41/lstm_124/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_41/lstm_124/while/NoOpNoOpB^sequential_41/lstm_124/while/lstm_cell_349/BiasAdd/ReadVariableOpA^sequential_41/lstm_124/while/lstm_cell_349/MatMul/ReadVariableOpC^sequential_41/lstm_124/while/lstm_cell_349/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_41_lstm_124_while_identity.sequential_41/lstm_124/while/Identity:output:0"[
'sequential_41_lstm_124_while_identity_10sequential_41/lstm_124/while/Identity_1:output:0"[
'sequential_41_lstm_124_while_identity_20sequential_41/lstm_124/while/Identity_2:output:0"[
'sequential_41_lstm_124_while_identity_30sequential_41/lstm_124/while/Identity_3:output:0"[
'sequential_41_lstm_124_while_identity_40sequential_41/lstm_124/while/Identity_4:output:0"[
'sequential_41_lstm_124_while_identity_50sequential_41/lstm_124/while/Identity_5:output:0"?
Jsequential_41_lstm_124_while_lstm_cell_349_biasadd_readvariableop_resourceLsequential_41_lstm_124_while_lstm_cell_349_biasadd_readvariableop_resource_0"?
Ksequential_41_lstm_124_while_lstm_cell_349_matmul_1_readvariableop_resourceMsequential_41_lstm_124_while_lstm_cell_349_matmul_1_readvariableop_resource_0"?
Isequential_41_lstm_124_while_lstm_cell_349_matmul_readvariableop_resourceKsequential_41_lstm_124_while_lstm_cell_349_matmul_readvariableop_resource_0"?
Csequential_41_lstm_124_while_sequential_41_lstm_124_strided_slice_1Esequential_41_lstm_124_while_sequential_41_lstm_124_strided_slice_1_0"?
sequential_41_lstm_124_while_tensorarrayv2read_tensorlistgetitem_sequential_41_lstm_124_tensorarrayunstack_tensorlistfromtensor?sequential_41_lstm_124_while_tensorarrayv2read_tensorlistgetitem_sequential_41_lstm_124_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_41/lstm_124/while/lstm_cell_349/BiasAdd/ReadVariableOpAsequential_41/lstm_124/while/lstm_cell_349/BiasAdd/ReadVariableOp2?
@sequential_41/lstm_124/while/lstm_cell_349/MatMul/ReadVariableOp@sequential_41/lstm_124/while/lstm_cell_349/MatMul/ReadVariableOp2?
Bsequential_41/lstm_124/while/lstm_cell_349/MatMul_1/ReadVariableOpBsequential_41/lstm_124/while/lstm_cell_349/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
*__inference_lstm_124_layer_call_fn_2121259
inputs_0
unknown:	d?
	unknown_0:	2?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_124_layer_call_and_return_conditional_losses_2118144|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_2122098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2122098___redundant_placeholder05
1while_while_cond_2122098___redundant_placeholder15
1while_while_cond_2122098___redundant_placeholder25
1while_while_cond_2122098___redundant_placeholder3
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
@: : : : :?????????
:?????????
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
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?J
?
E__inference_lstm_124_layer_call_and_return_conditional_losses_2119333

inputs?
,lstm_cell_349_matmul_readvariableop_resource:	d?A
.lstm_cell_349_matmul_1_readvariableop_resource:	2?<
-lstm_cell_349_biasadd_readvariableop_resource:	?
identity??$lstm_cell_349/BiasAdd/ReadVariableOp?#lstm_cell_349/MatMul/ReadVariableOp?%lstm_cell_349/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????2R
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
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????dD
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
#lstm_cell_349/MatMul/ReadVariableOpReadVariableOp,lstm_cell_349_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_349/MatMulMatMulstrided_slice_2:output:0+lstm_cell_349/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_349/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_349_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_349/MatMul_1MatMulzeros:output:0-lstm_cell_349/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_349/addAddV2lstm_cell_349/MatMul:product:0 lstm_cell_349/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_349/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_349_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_349/BiasAddBiasAddlstm_cell_349/add:z:0,lstm_cell_349/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_349/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_349/splitSplit&lstm_cell_349/split/split_dim:output:0lstm_cell_349/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_349/SigmoidSigmoidlstm_cell_349/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_349/Sigmoid_1Sigmoidlstm_cell_349/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_349/mulMullstm_cell_349/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_349/ReluRelulstm_cell_349/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_349/mul_1Mullstm_cell_349/Sigmoid:y:0 lstm_cell_349/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_349/add_1AddV2lstm_cell_349/mul:z:0lstm_cell_349/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_349/Sigmoid_2Sigmoidlstm_cell_349/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_349/Relu_1Relulstm_cell_349/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_349/mul_2Mullstm_cell_349/Sigmoid_2:y:0"lstm_cell_349/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_349_matmul_readvariableop_resource.lstm_cell_349_matmul_1_readvariableop_resource-lstm_cell_349_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2119249*
condR
while_cond_2119248*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????2?
NoOpNoOp%^lstm_cell_349/BiasAdd/ReadVariableOp$^lstm_cell_349/MatMul/ReadVariableOp&^lstm_cell_349/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_349/BiasAdd/ReadVariableOp$lstm_cell_349/BiasAdd/ReadVariableOp2J
#lstm_cell_349/MatMul/ReadVariableOp#lstm_cell_349/MatMul/ReadVariableOp2N
%lstm_cell_349/MatMul_1/ReadVariableOp%lstm_cell_349/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_123_layer_call_fn_2120643
inputs_0
unknown:	?
	unknown_0:	d?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_123_layer_call_and_return_conditional_losses_2117794|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
??
?
#__inference__traced_restore_2123055
file_prefix2
 assignvariableop_dense_41_kernel:
.
 assignvariableop_1_dense_41_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_123_lstm_cell_123_kernel:	?M
:assignvariableop_8_lstm_123_lstm_cell_123_recurrent_kernel:	d?=
.assignvariableop_9_lstm_123_lstm_cell_123_bias:	?D
1assignvariableop_10_lstm_124_lstm_cell_124_kernel:	d?N
;assignvariableop_11_lstm_124_lstm_cell_124_recurrent_kernel:	2?>
/assignvariableop_12_lstm_124_lstm_cell_124_bias:	?C
1assignvariableop_13_lstm_125_lstm_cell_125_kernel:2(M
;assignvariableop_14_lstm_125_lstm_cell_125_recurrent_kernel:
(=
/assignvariableop_15_lstm_125_lstm_cell_125_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_41_kernel_m:
6
(assignvariableop_19_adam_dense_41_bias_m:K
8assignvariableop_20_adam_lstm_123_lstm_cell_123_kernel_m:	?U
Bassignvariableop_21_adam_lstm_123_lstm_cell_123_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_123_lstm_cell_123_bias_m:	?K
8assignvariableop_23_adam_lstm_124_lstm_cell_124_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_124_lstm_cell_124_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_124_lstm_cell_124_bias_m:	?J
8assignvariableop_26_adam_lstm_125_lstm_cell_125_kernel_m:2(T
Bassignvariableop_27_adam_lstm_125_lstm_cell_125_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_125_lstm_cell_125_bias_m:(<
*assignvariableop_29_adam_dense_41_kernel_v:
6
(assignvariableop_30_adam_dense_41_bias_v:K
8assignvariableop_31_adam_lstm_123_lstm_cell_123_kernel_v:	?U
Bassignvariableop_32_adam_lstm_123_lstm_cell_123_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_123_lstm_cell_123_bias_v:	?K
8assignvariableop_34_adam_lstm_124_lstm_cell_124_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_124_lstm_cell_124_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_124_lstm_cell_124_bias_v:	?J
8assignvariableop_37_adam_lstm_125_lstm_cell_125_kernel_v:2(T
Bassignvariableop_38_adam_lstm_125_lstm_cell_125_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_125_lstm_cell_125_bias_v:(
identity_41??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*?
value?B?)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp assignvariableop_dense_41_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_41_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_123_lstm_cell_123_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_123_lstm_cell_123_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_123_lstm_cell_123_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_124_lstm_cell_124_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_124_lstm_cell_124_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_124_lstm_cell_124_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_125_lstm_cell_125_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_125_lstm_cell_125_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_125_lstm_cell_125_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_41_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_41_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_123_lstm_cell_123_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_123_lstm_cell_123_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_123_lstm_cell_123_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_124_lstm_cell_124_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_124_lstm_cell_124_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_124_lstm_cell_124_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_125_lstm_cell_125_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_125_lstm_cell_125_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_125_lstm_cell_125_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_41_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_41_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_123_lstm_cell_123_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_123_lstm_cell_123_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_123_lstm_cell_123_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_124_lstm_cell_124_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_124_lstm_cell_124_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_124_lstm_cell_124_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_125_lstm_cell_125_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_125_lstm_cell_125_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_125_lstm_cell_125_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: ?
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
?K
?
E__inference_lstm_124_layer_call_and_return_conditional_losses_2121567
inputs_0?
,lstm_cell_349_matmul_readvariableop_resource:	d?A
.lstm_cell_349_matmul_1_readvariableop_resource:	2?<
-lstm_cell_349_biasadd_readvariableop_resource:	?
identity??$lstm_cell_349/BiasAdd/ReadVariableOp?#lstm_cell_349/MatMul/ReadVariableOp?%lstm_cell_349/MatMul_1/ReadVariableOp?while=
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
valueB:?
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
:?????????2R
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
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????dD
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
#lstm_cell_349/MatMul/ReadVariableOpReadVariableOp,lstm_cell_349_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_349/MatMulMatMulstrided_slice_2:output:0+lstm_cell_349/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_349/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_349_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_349/MatMul_1MatMulzeros:output:0-lstm_cell_349/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_349/addAddV2lstm_cell_349/MatMul:product:0 lstm_cell_349/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_349/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_349_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_349/BiasAddBiasAddlstm_cell_349/add:z:0,lstm_cell_349/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_349/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_349/splitSplit&lstm_cell_349/split/split_dim:output:0lstm_cell_349/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_349/SigmoidSigmoidlstm_cell_349/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_349/Sigmoid_1Sigmoidlstm_cell_349/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_349/mulMullstm_cell_349/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_349/ReluRelulstm_cell_349/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_349/mul_1Mullstm_cell_349/Sigmoid:y:0 lstm_cell_349/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_349/add_1AddV2lstm_cell_349/mul:z:0lstm_cell_349/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_349/Sigmoid_2Sigmoidlstm_cell_349/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_349/Relu_1Relulstm_cell_349/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_349/mul_2Mullstm_cell_349/Sigmoid_2:y:0"lstm_cell_349/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_349_matmul_readvariableop_resource.lstm_cell_349_matmul_1_readvariableop_resource-lstm_cell_349_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2121483*
condR
while_cond_2121482*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2?
NoOpNoOp%^lstm_cell_349/BiasAdd/ReadVariableOp$^lstm_cell_349/MatMul/ReadVariableOp&^lstm_cell_349/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_349/BiasAdd/ReadVariableOp$lstm_cell_349/BiasAdd/ReadVariableOp2J
#lstm_cell_349/MatMul/ReadVariableOp#lstm_cell_349/MatMul/ReadVariableOp2N
%lstm_cell_349/MatMul_1/ReadVariableOp%lstm_cell_349/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
J__inference_sequential_41_layer_call_and_return_conditional_losses_2118977

inputs#
lstm_123_2118653:	?#
lstm_123_2118655:	d?
lstm_123_2118657:	?#
lstm_124_2118803:	d?#
lstm_124_2118805:	2?
lstm_124_2118807:	?"
lstm_125_2118953:2("
lstm_125_2118955:
(
lstm_125_2118957:("
dense_41_2118971:

dense_41_2118973:
identity?? dense_41/StatefulPartitionedCall? lstm_123/StatefulPartitionedCall? lstm_124/StatefulPartitionedCall? lstm_125/StatefulPartitionedCall?
 lstm_123/StatefulPartitionedCallStatefulPartitionedCallinputslstm_123_2118653lstm_123_2118655lstm_123_2118657*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_123_layer_call_and_return_conditional_losses_2118652?
 lstm_124/StatefulPartitionedCallStatefulPartitionedCall)lstm_123/StatefulPartitionedCall:output:0lstm_124_2118803lstm_124_2118805lstm_124_2118807*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_124_layer_call_and_return_conditional_losses_2118802?
 lstm_125/StatefulPartitionedCallStatefulPartitionedCall)lstm_124/StatefulPartitionedCall:output:0lstm_125_2118953lstm_125_2118955lstm_125_2118957*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_125_layer_call_and_return_conditional_losses_2118952?
 dense_41/StatefulPartitionedCallStatefulPartitionedCall)lstm_125/StatefulPartitionedCall:output:0dense_41_2118971dense_41_2118973*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_41_layer_call_and_return_conditional_losses_2118970x
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_41/StatefulPartitionedCall!^lstm_123/StatefulPartitionedCall!^lstm_124/StatefulPartitionedCall!^lstm_125/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall2D
 lstm_123/StatefulPartitionedCall lstm_123/StatefulPartitionedCall2D
 lstm_124/StatefulPartitionedCall lstm_124/StatefulPartitionedCall2D
 lstm_125/StatefulPartitionedCall lstm_125/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_348_layer_call_fn_2122505

inputs
states_0
states_1
unknown:	?
	unknown_0:	d?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????d:?????????d:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_348_layer_call_and_return_conditional_losses_2117520o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????d:?????????d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/1
?8
?
while_body_2121626
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_349_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_349_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_349_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_349_matmul_readvariableop_resource:	d?G
4while_lstm_cell_349_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_349_biasadd_readvariableop_resource:	???*while/lstm_cell_349/BiasAdd/ReadVariableOp?)while/lstm_cell_349/MatMul/ReadVariableOp?+while/lstm_cell_349/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_349/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_349_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_349/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_349/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_349/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_349_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_349/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_349/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_349/addAddV2$while/lstm_cell_349/MatMul:product:0&while/lstm_cell_349/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_349/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_349_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_349/BiasAddBiasAddwhile/lstm_cell_349/add:z:02while/lstm_cell_349/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_349/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_349/splitSplit,while/lstm_cell_349/split/split_dim:output:0$while/lstm_cell_349/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_349/SigmoidSigmoid"while/lstm_cell_349/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_349/Sigmoid_1Sigmoid"while/lstm_cell_349/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_349/mulMul!while/lstm_cell_349/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_349/ReluRelu"while/lstm_cell_349/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_349/mul_1Mulwhile/lstm_cell_349/Sigmoid:y:0&while/lstm_cell_349/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_349/add_1AddV2while/lstm_cell_349/mul:z:0while/lstm_cell_349/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_349/Sigmoid_2Sigmoid"while/lstm_cell_349/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_349/Relu_1Reluwhile/lstm_cell_349/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_349/mul_2Mul!while/lstm_cell_349/Sigmoid_2:y:0(while/lstm_cell_349/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_349/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_349/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_349/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_349/BiasAdd/ReadVariableOp*^while/lstm_cell_349/MatMul/ReadVariableOp,^while/lstm_cell_349/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_349_biasadd_readvariableop_resource5while_lstm_cell_349_biasadd_readvariableop_resource_0"n
4while_lstm_cell_349_matmul_1_readvariableop_resource6while_lstm_cell_349_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_349_matmul_readvariableop_resource4while_lstm_cell_349_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_349/BiasAdd/ReadVariableOp*while/lstm_cell_349/BiasAdd/ReadVariableOp2V
)while/lstm_cell_349/MatMul/ReadVariableOp)while/lstm_cell_349/MatMul/ReadVariableOp2Z
+while/lstm_cell_349/MatMul_1/ReadVariableOp+while/lstm_cell_349/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
*__inference_dense_41_layer_call_fn_2122478

inputs
unknown:

	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_41_layer_call_and_return_conditional_losses_2118970o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?K
?
E__inference_lstm_125_layer_call_and_return_conditional_losses_2122040
inputs_0>
,lstm_cell_350_matmul_readvariableop_resource:2(@
.lstm_cell_350_matmul_1_readvariableop_resource:
(;
-lstm_cell_350_biasadd_readvariableop_resource:(
identity??$lstm_cell_350/BiasAdd/ReadVariableOp?#lstm_cell_350/MatMul/ReadVariableOp?%lstm_cell_350/MatMul_1/ReadVariableOp?while=
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
valueB:?
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
:?????????
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
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
#lstm_cell_350/MatMul/ReadVariableOpReadVariableOp,lstm_cell_350_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_350/MatMulMatMulstrided_slice_2:output:0+lstm_cell_350/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_350/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_350_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_350/MatMul_1MatMulzeros:output:0-lstm_cell_350/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_350/addAddV2lstm_cell_350/MatMul:product:0 lstm_cell_350/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_350/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_350_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_350/BiasAddBiasAddlstm_cell_350/add:z:0,lstm_cell_350/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_350/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_350/splitSplit&lstm_cell_350/split/split_dim:output:0lstm_cell_350/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_350/SigmoidSigmoidlstm_cell_350/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_350/Sigmoid_1Sigmoidlstm_cell_350/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_350/mulMullstm_cell_350/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_350/ReluRelulstm_cell_350/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_350/mul_1Mullstm_cell_350/Sigmoid:y:0 lstm_cell_350/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_350/add_1AddV2lstm_cell_350/mul:z:0lstm_cell_350/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_350/Sigmoid_2Sigmoidlstm_cell_350/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_350/Relu_1Relulstm_cell_350/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_350/mul_2Mullstm_cell_350/Sigmoid_2:y:0"lstm_cell_350/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_350_matmul_readvariableop_resource.lstm_cell_350_matmul_1_readvariableop_resource-lstm_cell_350_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2121956*
condR
while_cond_2121955*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????
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
:?????????
?
NoOpNoOp%^lstm_cell_350/BiasAdd/ReadVariableOp$^lstm_cell_350/MatMul/ReadVariableOp&^lstm_cell_350/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_350/BiasAdd/ReadVariableOp$lstm_cell_350/BiasAdd/ReadVariableOp2J
#lstm_cell_350/MatMul/ReadVariableOp#lstm_cell_350/MatMul/ReadVariableOp2N
%lstm_cell_350/MatMul_1/ReadVariableOp%lstm_cell_350/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_124_layer_call_and_return_conditional_losses_2121853

inputs?
,lstm_cell_349_matmul_readvariableop_resource:	d?A
.lstm_cell_349_matmul_1_readvariableop_resource:	2?<
-lstm_cell_349_biasadd_readvariableop_resource:	?
identity??$lstm_cell_349/BiasAdd/ReadVariableOp?#lstm_cell_349/MatMul/ReadVariableOp?%lstm_cell_349/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????2R
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
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????dD
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
#lstm_cell_349/MatMul/ReadVariableOpReadVariableOp,lstm_cell_349_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_349/MatMulMatMulstrided_slice_2:output:0+lstm_cell_349/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_349/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_349_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_349/MatMul_1MatMulzeros:output:0-lstm_cell_349/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_349/addAddV2lstm_cell_349/MatMul:product:0 lstm_cell_349/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_349/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_349_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_349/BiasAddBiasAddlstm_cell_349/add:z:0,lstm_cell_349/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_349/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_349/splitSplit&lstm_cell_349/split/split_dim:output:0lstm_cell_349/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_349/SigmoidSigmoidlstm_cell_349/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_349/Sigmoid_1Sigmoidlstm_cell_349/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_349/mulMullstm_cell_349/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_349/ReluRelulstm_cell_349/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_349/mul_1Mullstm_cell_349/Sigmoid:y:0 lstm_cell_349/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_349/add_1AddV2lstm_cell_349/mul:z:0lstm_cell_349/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_349/Sigmoid_2Sigmoidlstm_cell_349/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_349/Relu_1Relulstm_cell_349/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_349/mul_2Mullstm_cell_349/Sigmoid_2:y:0"lstm_cell_349/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_349_matmul_readvariableop_resource.lstm_cell_349_matmul_1_readvariableop_resource-lstm_cell_349_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2121769*
condR
while_cond_2121768*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????2?
NoOpNoOp%^lstm_cell_349/BiasAdd/ReadVariableOp$^lstm_cell_349/MatMul/ReadVariableOp&^lstm_cell_349/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_349/BiasAdd/ReadVariableOp$lstm_cell_349/BiasAdd/ReadVariableOp2J
#lstm_cell_349/MatMul/ReadVariableOp#lstm_cell_349/MatMul/ReadVariableOp2N
%lstm_cell_349/MatMul_1/ReadVariableOp%lstm_cell_349/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_124_layer_call_and_return_conditional_losses_2118802

inputs?
,lstm_cell_349_matmul_readvariableop_resource:	d?A
.lstm_cell_349_matmul_1_readvariableop_resource:	2?<
-lstm_cell_349_biasadd_readvariableop_resource:	?
identity??$lstm_cell_349/BiasAdd/ReadVariableOp?#lstm_cell_349/MatMul/ReadVariableOp?%lstm_cell_349/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????2R
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
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????dD
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
#lstm_cell_349/MatMul/ReadVariableOpReadVariableOp,lstm_cell_349_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_349/MatMulMatMulstrided_slice_2:output:0+lstm_cell_349/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_349/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_349_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_349/MatMul_1MatMulzeros:output:0-lstm_cell_349/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_349/addAddV2lstm_cell_349/MatMul:product:0 lstm_cell_349/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_349/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_349_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_349/BiasAddBiasAddlstm_cell_349/add:z:0,lstm_cell_349/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_349/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_349/splitSplit&lstm_cell_349/split/split_dim:output:0lstm_cell_349/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_349/SigmoidSigmoidlstm_cell_349/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_349/Sigmoid_1Sigmoidlstm_cell_349/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_349/mulMullstm_cell_349/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_349/ReluRelulstm_cell_349/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_349/mul_1Mullstm_cell_349/Sigmoid:y:0 lstm_cell_349/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_349/add_1AddV2lstm_cell_349/mul:z:0lstm_cell_349/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_349/Sigmoid_2Sigmoidlstm_cell_349/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_349/Relu_1Relulstm_cell_349/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_349/mul_2Mullstm_cell_349/Sigmoid_2:y:0"lstm_cell_349/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_349_matmul_readvariableop_resource.lstm_cell_349_matmul_1_readvariableop_resource-lstm_cell_349_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2118718*
condR
while_cond_2118717*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????2?
NoOpNoOp%^lstm_cell_349/BiasAdd/ReadVariableOp$^lstm_cell_349/MatMul/ReadVariableOp&^lstm_cell_349/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_349/BiasAdd/ReadVariableOp$lstm_cell_349/BiasAdd/ReadVariableOp2J
#lstm_cell_349/MatMul/ReadVariableOp#lstm_cell_349/MatMul/ReadVariableOp2N
%lstm_cell_349/MatMul_1/ReadVariableOp%lstm_cell_349/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?

lstm_125_while_body_2120104.
*lstm_125_while_lstm_125_while_loop_counter4
0lstm_125_while_lstm_125_while_maximum_iterations
lstm_125_while_placeholder 
lstm_125_while_placeholder_1 
lstm_125_while_placeholder_2 
lstm_125_while_placeholder_3-
)lstm_125_while_lstm_125_strided_slice_1_0i
elstm_125_while_tensorarrayv2read_tensorlistgetitem_lstm_125_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_125_while_lstm_cell_350_matmul_readvariableop_resource_0:2(Q
?lstm_125_while_lstm_cell_350_matmul_1_readvariableop_resource_0:
(L
>lstm_125_while_lstm_cell_350_biasadd_readvariableop_resource_0:(
lstm_125_while_identity
lstm_125_while_identity_1
lstm_125_while_identity_2
lstm_125_while_identity_3
lstm_125_while_identity_4
lstm_125_while_identity_5+
'lstm_125_while_lstm_125_strided_slice_1g
clstm_125_while_tensorarrayv2read_tensorlistgetitem_lstm_125_tensorarrayunstack_tensorlistfromtensorM
;lstm_125_while_lstm_cell_350_matmul_readvariableop_resource:2(O
=lstm_125_while_lstm_cell_350_matmul_1_readvariableop_resource:
(J
<lstm_125_while_lstm_cell_350_biasadd_readvariableop_resource:(??3lstm_125/while/lstm_cell_350/BiasAdd/ReadVariableOp?2lstm_125/while/lstm_cell_350/MatMul/ReadVariableOp?4lstm_125/while/lstm_cell_350/MatMul_1/ReadVariableOp?
@lstm_125/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_125/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_125_while_tensorarrayv2read_tensorlistgetitem_lstm_125_tensorarrayunstack_tensorlistfromtensor_0lstm_125_while_placeholderIlstm_125/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_125/while/lstm_cell_350/MatMul/ReadVariableOpReadVariableOp=lstm_125_while_lstm_cell_350_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_125/while/lstm_cell_350/MatMulMatMul9lstm_125/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_125/while/lstm_cell_350/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_125/while/lstm_cell_350/MatMul_1/ReadVariableOpReadVariableOp?lstm_125_while_lstm_cell_350_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_125/while/lstm_cell_350/MatMul_1MatMullstm_125_while_placeholder_2<lstm_125/while/lstm_cell_350/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_125/while/lstm_cell_350/addAddV2-lstm_125/while/lstm_cell_350/MatMul:product:0/lstm_125/while/lstm_cell_350/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_125/while/lstm_cell_350/BiasAdd/ReadVariableOpReadVariableOp>lstm_125_while_lstm_cell_350_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_125/while/lstm_cell_350/BiasAddBiasAdd$lstm_125/while/lstm_cell_350/add:z:0;lstm_125/while/lstm_cell_350/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_125/while/lstm_cell_350/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_125/while/lstm_cell_350/splitSplit5lstm_125/while/lstm_cell_350/split/split_dim:output:0-lstm_125/while/lstm_cell_350/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_125/while/lstm_cell_350/SigmoidSigmoid+lstm_125/while/lstm_cell_350/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_125/while/lstm_cell_350/Sigmoid_1Sigmoid+lstm_125/while/lstm_cell_350/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_125/while/lstm_cell_350/mulMul*lstm_125/while/lstm_cell_350/Sigmoid_1:y:0lstm_125_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_125/while/lstm_cell_350/ReluRelu+lstm_125/while/lstm_cell_350/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_125/while/lstm_cell_350/mul_1Mul(lstm_125/while/lstm_cell_350/Sigmoid:y:0/lstm_125/while/lstm_cell_350/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_125/while/lstm_cell_350/add_1AddV2$lstm_125/while/lstm_cell_350/mul:z:0&lstm_125/while/lstm_cell_350/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_125/while/lstm_cell_350/Sigmoid_2Sigmoid+lstm_125/while/lstm_cell_350/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_125/while/lstm_cell_350/Relu_1Relu&lstm_125/while/lstm_cell_350/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_125/while/lstm_cell_350/mul_2Mul*lstm_125/while/lstm_cell_350/Sigmoid_2:y:01lstm_125/while/lstm_cell_350/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_125/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_125_while_placeholder_1lstm_125_while_placeholder&lstm_125/while/lstm_cell_350/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_125/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_125/while/addAddV2lstm_125_while_placeholderlstm_125/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_125/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_125/while/add_1AddV2*lstm_125_while_lstm_125_while_loop_counterlstm_125/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_125/while/IdentityIdentitylstm_125/while/add_1:z:0^lstm_125/while/NoOp*
T0*
_output_shapes
: ?
lstm_125/while/Identity_1Identity0lstm_125_while_lstm_125_while_maximum_iterations^lstm_125/while/NoOp*
T0*
_output_shapes
: t
lstm_125/while/Identity_2Identitylstm_125/while/add:z:0^lstm_125/while/NoOp*
T0*
_output_shapes
: ?
lstm_125/while/Identity_3IdentityClstm_125/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_125/while/NoOp*
T0*
_output_shapes
: ?
lstm_125/while/Identity_4Identity&lstm_125/while/lstm_cell_350/mul_2:z:0^lstm_125/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_125/while/Identity_5Identity&lstm_125/while/lstm_cell_350/add_1:z:0^lstm_125/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_125/while/NoOpNoOp4^lstm_125/while/lstm_cell_350/BiasAdd/ReadVariableOp3^lstm_125/while/lstm_cell_350/MatMul/ReadVariableOp5^lstm_125/while/lstm_cell_350/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_125_while_identity lstm_125/while/Identity:output:0"?
lstm_125_while_identity_1"lstm_125/while/Identity_1:output:0"?
lstm_125_while_identity_2"lstm_125/while/Identity_2:output:0"?
lstm_125_while_identity_3"lstm_125/while/Identity_3:output:0"?
lstm_125_while_identity_4"lstm_125/while/Identity_4:output:0"?
lstm_125_while_identity_5"lstm_125/while/Identity_5:output:0"T
'lstm_125_while_lstm_125_strided_slice_1)lstm_125_while_lstm_125_strided_slice_1_0"~
<lstm_125_while_lstm_cell_350_biasadd_readvariableop_resource>lstm_125_while_lstm_cell_350_biasadd_readvariableop_resource_0"?
=lstm_125_while_lstm_cell_350_matmul_1_readvariableop_resource?lstm_125_while_lstm_cell_350_matmul_1_readvariableop_resource_0"|
;lstm_125_while_lstm_cell_350_matmul_readvariableop_resource=lstm_125_while_lstm_cell_350_matmul_readvariableop_resource_0"?
clstm_125_while_tensorarrayv2read_tensorlistgetitem_lstm_125_tensorarrayunstack_tensorlistfromtensorelstm_125_while_tensorarrayv2read_tensorlistgetitem_lstm_125_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_125/while/lstm_cell_350/BiasAdd/ReadVariableOp3lstm_125/while/lstm_cell_350/BiasAdd/ReadVariableOp2h
2lstm_125/while/lstm_cell_350/MatMul/ReadVariableOp2lstm_125/while/lstm_cell_350/MatMul/ReadVariableOp2l
4lstm_125/while/lstm_cell_350/MatMul_1/ReadVariableOp4lstm_125/while/lstm_cell_350/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?
?
J__inference_lstm_cell_348_layer_call_and_return_conditional_losses_2117520

inputs

states
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	d?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????d?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????d:?????????d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????d
 
_user_specified_namestates:OK
'
_output_shapes
:?????????d
 
_user_specified_namestates
?8
?
while_body_2120724
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_348_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_348_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_348_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_348_matmul_readvariableop_resource:	?G
4while_lstm_cell_348_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_348_biasadd_readvariableop_resource:	???*while/lstm_cell_348/BiasAdd/ReadVariableOp?)while/lstm_cell_348/MatMul/ReadVariableOp?+while/lstm_cell_348/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_348/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_348_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_348/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_348/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_348/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_348_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_348/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_348/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_348/addAddV2$while/lstm_cell_348/MatMul:product:0&while/lstm_cell_348/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_348/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_348_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_348/BiasAddBiasAddwhile/lstm_cell_348/add:z:02while/lstm_cell_348/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_348/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_348/splitSplit,while/lstm_cell_348/split/split_dim:output:0$while/lstm_cell_348/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_348/SigmoidSigmoid"while/lstm_cell_348/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_348/Sigmoid_1Sigmoid"while/lstm_cell_348/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_348/mulMul!while/lstm_cell_348/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_348/ReluRelu"while/lstm_cell_348/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_348/mul_1Mulwhile/lstm_cell_348/Sigmoid:y:0&while/lstm_cell_348/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_348/add_1AddV2while/lstm_cell_348/mul:z:0while/lstm_cell_348/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_348/Sigmoid_2Sigmoid"while/lstm_cell_348/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_348/Relu_1Reluwhile/lstm_cell_348/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_348/mul_2Mul!while/lstm_cell_348/Sigmoid_2:y:0(while/lstm_cell_348/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_348/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_348/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_348/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_348/BiasAdd/ReadVariableOp*^while/lstm_cell_348/MatMul/ReadVariableOp,^while/lstm_cell_348/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_348_biasadd_readvariableop_resource5while_lstm_cell_348_biasadd_readvariableop_resource_0"n
4while_lstm_cell_348_matmul_1_readvariableop_resource6while_lstm_cell_348_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_348_matmul_readvariableop_resource4while_lstm_cell_348_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_348/BiasAdd/ReadVariableOp*while/lstm_cell_348/BiasAdd/ReadVariableOp2V
)while/lstm_cell_348/MatMul/ReadVariableOp)while/lstm_cell_348/MatMul/ReadVariableOp2Z
+while/lstm_cell_348/MatMul_1/ReadVariableOp+while/lstm_cell_348/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?
?
J__inference_lstm_cell_349_layer_call_and_return_conditional_losses_2122652

inputs
states_0
states_11
matmul_readvariableop_resource:	d?3
 matmul_1_readvariableop_resource:	2?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d:?????????2:?????????2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/1
?
?
)sequential_41_lstm_124_while_cond_2117223J
Fsequential_41_lstm_124_while_sequential_41_lstm_124_while_loop_counterP
Lsequential_41_lstm_124_while_sequential_41_lstm_124_while_maximum_iterations,
(sequential_41_lstm_124_while_placeholder.
*sequential_41_lstm_124_while_placeholder_1.
*sequential_41_lstm_124_while_placeholder_2.
*sequential_41_lstm_124_while_placeholder_3L
Hsequential_41_lstm_124_while_less_sequential_41_lstm_124_strided_slice_1c
_sequential_41_lstm_124_while_sequential_41_lstm_124_while_cond_2117223___redundant_placeholder0c
_sequential_41_lstm_124_while_sequential_41_lstm_124_while_cond_2117223___redundant_placeholder1c
_sequential_41_lstm_124_while_sequential_41_lstm_124_while_cond_2117223___redundant_placeholder2c
_sequential_41_lstm_124_while_sequential_41_lstm_124_while_cond_2117223___redundant_placeholder3)
%sequential_41_lstm_124_while_identity
?
!sequential_41/lstm_124/while/LessLess(sequential_41_lstm_124_while_placeholderHsequential_41_lstm_124_while_less_sequential_41_lstm_124_strided_slice_1*
T0*
_output_shapes
: y
%sequential_41/lstm_124/while/IdentityIdentity%sequential_41/lstm_124/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_41_lstm_124_while_identity.sequential_41/lstm_124/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?8
?
while_body_2119414
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_348_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_348_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_348_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_348_matmul_readvariableop_resource:	?G
4while_lstm_cell_348_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_348_biasadd_readvariableop_resource:	???*while/lstm_cell_348/BiasAdd/ReadVariableOp?)while/lstm_cell_348/MatMul/ReadVariableOp?+while/lstm_cell_348/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_348/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_348_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_348/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_348/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_348/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_348_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_348/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_348/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_348/addAddV2$while/lstm_cell_348/MatMul:product:0&while/lstm_cell_348/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_348/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_348_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_348/BiasAddBiasAddwhile/lstm_cell_348/add:z:02while/lstm_cell_348/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_348/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_348/splitSplit,while/lstm_cell_348/split/split_dim:output:0$while/lstm_cell_348/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_348/SigmoidSigmoid"while/lstm_cell_348/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_348/Sigmoid_1Sigmoid"while/lstm_cell_348/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_348/mulMul!while/lstm_cell_348/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_348/ReluRelu"while/lstm_cell_348/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_348/mul_1Mulwhile/lstm_cell_348/Sigmoid:y:0&while/lstm_cell_348/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_348/add_1AddV2while/lstm_cell_348/mul:z:0while/lstm_cell_348/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_348/Sigmoid_2Sigmoid"while/lstm_cell_348/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_348/Relu_1Reluwhile/lstm_cell_348/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_348/mul_2Mul!while/lstm_cell_348/Sigmoid_2:y:0(while/lstm_cell_348/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_348/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_348/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_348/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_348/BiasAdd/ReadVariableOp*^while/lstm_cell_348/MatMul/ReadVariableOp,^while/lstm_cell_348/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_348_biasadd_readvariableop_resource5while_lstm_cell_348_biasadd_readvariableop_resource_0"n
4while_lstm_cell_348_matmul_1_readvariableop_resource6while_lstm_cell_348_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_348_matmul_readvariableop_resource4while_lstm_cell_348_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_348/BiasAdd/ReadVariableOp*while/lstm_cell_348/BiasAdd/ReadVariableOp2V
)while/lstm_cell_348/MatMul/ReadVariableOp)while/lstm_cell_348/MatMul/ReadVariableOp2Z
+while/lstm_cell_348/MatMul_1/ReadVariableOp+while/lstm_cell_348/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_2117533
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2117533___redundant_placeholder05
1while_while_cond_2117533___redundant_placeholder15
1while_while_cond_2117533___redundant_placeholder25
1while_while_cond_2117533___redundant_placeholder3
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
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?8
?
while_body_2119249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_349_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_349_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_349_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_349_matmul_readvariableop_resource:	d?G
4while_lstm_cell_349_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_349_biasadd_readvariableop_resource:	???*while/lstm_cell_349/BiasAdd/ReadVariableOp?)while/lstm_cell_349/MatMul/ReadVariableOp?+while/lstm_cell_349/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_349/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_349_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_349/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_349/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_349/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_349_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_349/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_349/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_349/addAddV2$while/lstm_cell_349/MatMul:product:0&while/lstm_cell_349/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_349/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_349_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_349/BiasAddBiasAddwhile/lstm_cell_349/add:z:02while/lstm_cell_349/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_349/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_349/splitSplit,while/lstm_cell_349/split/split_dim:output:0$while/lstm_cell_349/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_349/SigmoidSigmoid"while/lstm_cell_349/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_349/Sigmoid_1Sigmoid"while/lstm_cell_349/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_349/mulMul!while/lstm_cell_349/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_349/ReluRelu"while/lstm_cell_349/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_349/mul_1Mulwhile/lstm_cell_349/Sigmoid:y:0&while/lstm_cell_349/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_349/add_1AddV2while/lstm_cell_349/mul:z:0while/lstm_cell_349/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_349/Sigmoid_2Sigmoid"while/lstm_cell_349/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_349/Relu_1Reluwhile/lstm_cell_349/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_349/mul_2Mul!while/lstm_cell_349/Sigmoid_2:y:0(while/lstm_cell_349/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_349/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_349/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_349/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_349/BiasAdd/ReadVariableOp*^while/lstm_cell_349/MatMul/ReadVariableOp,^while/lstm_cell_349/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_349_biasadd_readvariableop_resource5while_lstm_cell_349_biasadd_readvariableop_resource_0"n
4while_lstm_cell_349_matmul_1_readvariableop_resource6while_lstm_cell_349_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_349_matmul_readvariableop_resource4while_lstm_cell_349_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_349/BiasAdd/ReadVariableOp*while/lstm_cell_349/BiasAdd/ReadVariableOp2V
)while/lstm_cell_349/MatMul/ReadVariableOp)while/lstm_cell_349/MatMul/ReadVariableOp2Z
+while/lstm_cell_349/MatMul_1/ReadVariableOp+while/lstm_cell_349/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?S
?
)sequential_41_lstm_125_while_body_2117363J
Fsequential_41_lstm_125_while_sequential_41_lstm_125_while_loop_counterP
Lsequential_41_lstm_125_while_sequential_41_lstm_125_while_maximum_iterations,
(sequential_41_lstm_125_while_placeholder.
*sequential_41_lstm_125_while_placeholder_1.
*sequential_41_lstm_125_while_placeholder_2.
*sequential_41_lstm_125_while_placeholder_3I
Esequential_41_lstm_125_while_sequential_41_lstm_125_strided_slice_1_0?
?sequential_41_lstm_125_while_tensorarrayv2read_tensorlistgetitem_sequential_41_lstm_125_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_41_lstm_125_while_lstm_cell_350_matmul_readvariableop_resource_0:2(_
Msequential_41_lstm_125_while_lstm_cell_350_matmul_1_readvariableop_resource_0:
(Z
Lsequential_41_lstm_125_while_lstm_cell_350_biasadd_readvariableop_resource_0:()
%sequential_41_lstm_125_while_identity+
'sequential_41_lstm_125_while_identity_1+
'sequential_41_lstm_125_while_identity_2+
'sequential_41_lstm_125_while_identity_3+
'sequential_41_lstm_125_while_identity_4+
'sequential_41_lstm_125_while_identity_5G
Csequential_41_lstm_125_while_sequential_41_lstm_125_strided_slice_1?
sequential_41_lstm_125_while_tensorarrayv2read_tensorlistgetitem_sequential_41_lstm_125_tensorarrayunstack_tensorlistfromtensor[
Isequential_41_lstm_125_while_lstm_cell_350_matmul_readvariableop_resource:2(]
Ksequential_41_lstm_125_while_lstm_cell_350_matmul_1_readvariableop_resource:
(X
Jsequential_41_lstm_125_while_lstm_cell_350_biasadd_readvariableop_resource:(??Asequential_41/lstm_125/while/lstm_cell_350/BiasAdd/ReadVariableOp?@sequential_41/lstm_125/while/lstm_cell_350/MatMul/ReadVariableOp?Bsequential_41/lstm_125/while/lstm_cell_350/MatMul_1/ReadVariableOp?
Nsequential_41/lstm_125/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_41/lstm_125/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_41_lstm_125_while_tensorarrayv2read_tensorlistgetitem_sequential_41_lstm_125_tensorarrayunstack_tensorlistfromtensor_0(sequential_41_lstm_125_while_placeholderWsequential_41/lstm_125/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_41/lstm_125/while/lstm_cell_350/MatMul/ReadVariableOpReadVariableOpKsequential_41_lstm_125_while_lstm_cell_350_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_41/lstm_125/while/lstm_cell_350/MatMulMatMulGsequential_41/lstm_125/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_41/lstm_125/while/lstm_cell_350/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_41/lstm_125/while/lstm_cell_350/MatMul_1/ReadVariableOpReadVariableOpMsequential_41_lstm_125_while_lstm_cell_350_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_41/lstm_125/while/lstm_cell_350/MatMul_1MatMul*sequential_41_lstm_125_while_placeholder_2Jsequential_41/lstm_125/while/lstm_cell_350/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_41/lstm_125/while/lstm_cell_350/addAddV2;sequential_41/lstm_125/while/lstm_cell_350/MatMul:product:0=sequential_41/lstm_125/while/lstm_cell_350/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_41/lstm_125/while/lstm_cell_350/BiasAdd/ReadVariableOpReadVariableOpLsequential_41_lstm_125_while_lstm_cell_350_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_41/lstm_125/while/lstm_cell_350/BiasAddBiasAdd2sequential_41/lstm_125/while/lstm_cell_350/add:z:0Isequential_41/lstm_125/while/lstm_cell_350/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_41/lstm_125/while/lstm_cell_350/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_41/lstm_125/while/lstm_cell_350/splitSplitCsequential_41/lstm_125/while/lstm_cell_350/split/split_dim:output:0;sequential_41/lstm_125/while/lstm_cell_350/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_41/lstm_125/while/lstm_cell_350/SigmoidSigmoid9sequential_41/lstm_125/while/lstm_cell_350/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_41/lstm_125/while/lstm_cell_350/Sigmoid_1Sigmoid9sequential_41/lstm_125/while/lstm_cell_350/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_41/lstm_125/while/lstm_cell_350/mulMul8sequential_41/lstm_125/while/lstm_cell_350/Sigmoid_1:y:0*sequential_41_lstm_125_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_41/lstm_125/while/lstm_cell_350/ReluRelu9sequential_41/lstm_125/while/lstm_cell_350/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_41/lstm_125/while/lstm_cell_350/mul_1Mul6sequential_41/lstm_125/while/lstm_cell_350/Sigmoid:y:0=sequential_41/lstm_125/while/lstm_cell_350/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_41/lstm_125/while/lstm_cell_350/add_1AddV22sequential_41/lstm_125/while/lstm_cell_350/mul:z:04sequential_41/lstm_125/while/lstm_cell_350/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_41/lstm_125/while/lstm_cell_350/Sigmoid_2Sigmoid9sequential_41/lstm_125/while/lstm_cell_350/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_41/lstm_125/while/lstm_cell_350/Relu_1Relu4sequential_41/lstm_125/while/lstm_cell_350/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_41/lstm_125/while/lstm_cell_350/mul_2Mul8sequential_41/lstm_125/while/lstm_cell_350/Sigmoid_2:y:0?sequential_41/lstm_125/while/lstm_cell_350/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_41/lstm_125/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_41_lstm_125_while_placeholder_1(sequential_41_lstm_125_while_placeholder4sequential_41/lstm_125/while/lstm_cell_350/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_41/lstm_125/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_41/lstm_125/while/addAddV2(sequential_41_lstm_125_while_placeholder+sequential_41/lstm_125/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_41/lstm_125/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_41/lstm_125/while/add_1AddV2Fsequential_41_lstm_125_while_sequential_41_lstm_125_while_loop_counter-sequential_41/lstm_125/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_41/lstm_125/while/IdentityIdentity&sequential_41/lstm_125/while/add_1:z:0"^sequential_41/lstm_125/while/NoOp*
T0*
_output_shapes
: ?
'sequential_41/lstm_125/while/Identity_1IdentityLsequential_41_lstm_125_while_sequential_41_lstm_125_while_maximum_iterations"^sequential_41/lstm_125/while/NoOp*
T0*
_output_shapes
: ?
'sequential_41/lstm_125/while/Identity_2Identity$sequential_41/lstm_125/while/add:z:0"^sequential_41/lstm_125/while/NoOp*
T0*
_output_shapes
: ?
'sequential_41/lstm_125/while/Identity_3IdentityQsequential_41/lstm_125/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_41/lstm_125/while/NoOp*
T0*
_output_shapes
: ?
'sequential_41/lstm_125/while/Identity_4Identity4sequential_41/lstm_125/while/lstm_cell_350/mul_2:z:0"^sequential_41/lstm_125/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_41/lstm_125/while/Identity_5Identity4sequential_41/lstm_125/while/lstm_cell_350/add_1:z:0"^sequential_41/lstm_125/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_41/lstm_125/while/NoOpNoOpB^sequential_41/lstm_125/while/lstm_cell_350/BiasAdd/ReadVariableOpA^sequential_41/lstm_125/while/lstm_cell_350/MatMul/ReadVariableOpC^sequential_41/lstm_125/while/lstm_cell_350/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_41_lstm_125_while_identity.sequential_41/lstm_125/while/Identity:output:0"[
'sequential_41_lstm_125_while_identity_10sequential_41/lstm_125/while/Identity_1:output:0"[
'sequential_41_lstm_125_while_identity_20sequential_41/lstm_125/while/Identity_2:output:0"[
'sequential_41_lstm_125_while_identity_30sequential_41/lstm_125/while/Identity_3:output:0"[
'sequential_41_lstm_125_while_identity_40sequential_41/lstm_125/while/Identity_4:output:0"[
'sequential_41_lstm_125_while_identity_50sequential_41/lstm_125/while/Identity_5:output:0"?
Jsequential_41_lstm_125_while_lstm_cell_350_biasadd_readvariableop_resourceLsequential_41_lstm_125_while_lstm_cell_350_biasadd_readvariableop_resource_0"?
Ksequential_41_lstm_125_while_lstm_cell_350_matmul_1_readvariableop_resourceMsequential_41_lstm_125_while_lstm_cell_350_matmul_1_readvariableop_resource_0"?
Isequential_41_lstm_125_while_lstm_cell_350_matmul_readvariableop_resourceKsequential_41_lstm_125_while_lstm_cell_350_matmul_readvariableop_resource_0"?
Csequential_41_lstm_125_while_sequential_41_lstm_125_strided_slice_1Esequential_41_lstm_125_while_sequential_41_lstm_125_strided_slice_1_0"?
sequential_41_lstm_125_while_tensorarrayv2read_tensorlistgetitem_sequential_41_lstm_125_tensorarrayunstack_tensorlistfromtensor?sequential_41_lstm_125_while_tensorarrayv2read_tensorlistgetitem_sequential_41_lstm_125_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_41/lstm_125/while/lstm_cell_350/BiasAdd/ReadVariableOpAsequential_41/lstm_125/while/lstm_cell_350/BiasAdd/ReadVariableOp2?
@sequential_41/lstm_125/while/lstm_cell_350/MatMul/ReadVariableOp@sequential_41/lstm_125/while/lstm_cell_350/MatMul/ReadVariableOp2?
Bsequential_41/lstm_125/while/lstm_cell_350/MatMul_1/ReadVariableOpBsequential_41/lstm_125/while/lstm_cell_350/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?C
?

lstm_123_while_body_2119826.
*lstm_123_while_lstm_123_while_loop_counter4
0lstm_123_while_lstm_123_while_maximum_iterations
lstm_123_while_placeholder 
lstm_123_while_placeholder_1 
lstm_123_while_placeholder_2 
lstm_123_while_placeholder_3-
)lstm_123_while_lstm_123_strided_slice_1_0i
elstm_123_while_tensorarrayv2read_tensorlistgetitem_lstm_123_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_123_while_lstm_cell_348_matmul_readvariableop_resource_0:	?R
?lstm_123_while_lstm_cell_348_matmul_1_readvariableop_resource_0:	d?M
>lstm_123_while_lstm_cell_348_biasadd_readvariableop_resource_0:	?
lstm_123_while_identity
lstm_123_while_identity_1
lstm_123_while_identity_2
lstm_123_while_identity_3
lstm_123_while_identity_4
lstm_123_while_identity_5+
'lstm_123_while_lstm_123_strided_slice_1g
clstm_123_while_tensorarrayv2read_tensorlistgetitem_lstm_123_tensorarrayunstack_tensorlistfromtensorN
;lstm_123_while_lstm_cell_348_matmul_readvariableop_resource:	?P
=lstm_123_while_lstm_cell_348_matmul_1_readvariableop_resource:	d?K
<lstm_123_while_lstm_cell_348_biasadd_readvariableop_resource:	???3lstm_123/while/lstm_cell_348/BiasAdd/ReadVariableOp?2lstm_123/while/lstm_cell_348/MatMul/ReadVariableOp?4lstm_123/while/lstm_cell_348/MatMul_1/ReadVariableOp?
@lstm_123/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_123/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_123_while_tensorarrayv2read_tensorlistgetitem_lstm_123_tensorarrayunstack_tensorlistfromtensor_0lstm_123_while_placeholderIlstm_123/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_123/while/lstm_cell_348/MatMul/ReadVariableOpReadVariableOp=lstm_123_while_lstm_cell_348_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_123/while/lstm_cell_348/MatMulMatMul9lstm_123/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_123/while/lstm_cell_348/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_123/while/lstm_cell_348/MatMul_1/ReadVariableOpReadVariableOp?lstm_123_while_lstm_cell_348_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_123/while/lstm_cell_348/MatMul_1MatMullstm_123_while_placeholder_2<lstm_123/while/lstm_cell_348/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_123/while/lstm_cell_348/addAddV2-lstm_123/while/lstm_cell_348/MatMul:product:0/lstm_123/while/lstm_cell_348/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_123/while/lstm_cell_348/BiasAdd/ReadVariableOpReadVariableOp>lstm_123_while_lstm_cell_348_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_123/while/lstm_cell_348/BiasAddBiasAdd$lstm_123/while/lstm_cell_348/add:z:0;lstm_123/while/lstm_cell_348/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_123/while/lstm_cell_348/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_123/while/lstm_cell_348/splitSplit5lstm_123/while/lstm_cell_348/split/split_dim:output:0-lstm_123/while/lstm_cell_348/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_123/while/lstm_cell_348/SigmoidSigmoid+lstm_123/while/lstm_cell_348/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_123/while/lstm_cell_348/Sigmoid_1Sigmoid+lstm_123/while/lstm_cell_348/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_123/while/lstm_cell_348/mulMul*lstm_123/while/lstm_cell_348/Sigmoid_1:y:0lstm_123_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_123/while/lstm_cell_348/ReluRelu+lstm_123/while/lstm_cell_348/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_123/while/lstm_cell_348/mul_1Mul(lstm_123/while/lstm_cell_348/Sigmoid:y:0/lstm_123/while/lstm_cell_348/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_123/while/lstm_cell_348/add_1AddV2$lstm_123/while/lstm_cell_348/mul:z:0&lstm_123/while/lstm_cell_348/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_123/while/lstm_cell_348/Sigmoid_2Sigmoid+lstm_123/while/lstm_cell_348/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_123/while/lstm_cell_348/Relu_1Relu&lstm_123/while/lstm_cell_348/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_123/while/lstm_cell_348/mul_2Mul*lstm_123/while/lstm_cell_348/Sigmoid_2:y:01lstm_123/while/lstm_cell_348/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_123/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_123_while_placeholder_1lstm_123_while_placeholder&lstm_123/while/lstm_cell_348/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_123/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_123/while/addAddV2lstm_123_while_placeholderlstm_123/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_123/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_123/while/add_1AddV2*lstm_123_while_lstm_123_while_loop_counterlstm_123/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_123/while/IdentityIdentitylstm_123/while/add_1:z:0^lstm_123/while/NoOp*
T0*
_output_shapes
: ?
lstm_123/while/Identity_1Identity0lstm_123_while_lstm_123_while_maximum_iterations^lstm_123/while/NoOp*
T0*
_output_shapes
: t
lstm_123/while/Identity_2Identitylstm_123/while/add:z:0^lstm_123/while/NoOp*
T0*
_output_shapes
: ?
lstm_123/while/Identity_3IdentityClstm_123/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_123/while/NoOp*
T0*
_output_shapes
: ?
lstm_123/while/Identity_4Identity&lstm_123/while/lstm_cell_348/mul_2:z:0^lstm_123/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_123/while/Identity_5Identity&lstm_123/while/lstm_cell_348/add_1:z:0^lstm_123/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_123/while/NoOpNoOp4^lstm_123/while/lstm_cell_348/BiasAdd/ReadVariableOp3^lstm_123/while/lstm_cell_348/MatMul/ReadVariableOp5^lstm_123/while/lstm_cell_348/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_123_while_identity lstm_123/while/Identity:output:0"?
lstm_123_while_identity_1"lstm_123/while/Identity_1:output:0"?
lstm_123_while_identity_2"lstm_123/while/Identity_2:output:0"?
lstm_123_while_identity_3"lstm_123/while/Identity_3:output:0"?
lstm_123_while_identity_4"lstm_123/while/Identity_4:output:0"?
lstm_123_while_identity_5"lstm_123/while/Identity_5:output:0"T
'lstm_123_while_lstm_123_strided_slice_1)lstm_123_while_lstm_123_strided_slice_1_0"~
<lstm_123_while_lstm_cell_348_biasadd_readvariableop_resource>lstm_123_while_lstm_cell_348_biasadd_readvariableop_resource_0"?
=lstm_123_while_lstm_cell_348_matmul_1_readvariableop_resource?lstm_123_while_lstm_cell_348_matmul_1_readvariableop_resource_0"|
;lstm_123_while_lstm_cell_348_matmul_readvariableop_resource=lstm_123_while_lstm_cell_348_matmul_readvariableop_resource_0"?
clstm_123_while_tensorarrayv2read_tensorlistgetitem_lstm_123_tensorarrayunstack_tensorlistfromtensorelstm_123_while_tensorarrayv2read_tensorlistgetitem_lstm_123_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_123/while/lstm_cell_348/BiasAdd/ReadVariableOp3lstm_123/while/lstm_cell_348/BiasAdd/ReadVariableOp2h
2lstm_123/while/lstm_cell_348/MatMul/ReadVariableOp2lstm_123/while/lstm_cell_348/MatMul/ReadVariableOp2l
4lstm_123/while/lstm_cell_348/MatMul_1/ReadVariableOp4lstm_123/while/lstm_cell_348/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?8
?
E__inference_lstm_123_layer_call_and_return_conditional_losses_2117603

inputs(
lstm_cell_348_2117521:	?(
lstm_cell_348_2117523:	d?$
lstm_cell_348_2117525:	?
identity??%lstm_cell_348/StatefulPartitionedCall?while;
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
valueB:?
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
:?????????dR
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
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
%lstm_cell_348/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_348_2117521lstm_cell_348_2117523lstm_cell_348_2117525*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????d:?????????d:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_348_layer_call_and_return_conditional_losses_2117520n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_348_2117521lstm_cell_348_2117523lstm_cell_348_2117525*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2117534*
condR
while_cond_2117533*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????dv
NoOpNoOp&^lstm_cell_348/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_348/StatefulPartitionedCall%lstm_cell_348/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_348_layer_call_and_return_conditional_losses_2122586

inputs
states_0
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	d?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????d?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????d:?????????d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/1
?
?
J__inference_lstm_cell_348_layer_call_and_return_conditional_losses_2117666

inputs

states
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	d?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????d?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????d:?????????d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????d
 
_user_specified_namestates:OK
'
_output_shapes
:?????????d
 
_user_specified_namestates
?

?
/__inference_sequential_41_layer_call_fn_2119740

inputs
unknown:	?
	unknown_0:	d?
	unknown_1:	?
	unknown_2:	d?
	unknown_3:	2?
	unknown_4:	?
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_41_layer_call_and_return_conditional_losses_2118977o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2121769
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_349_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_349_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_349_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_349_matmul_readvariableop_resource:	d?G
4while_lstm_cell_349_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_349_biasadd_readvariableop_resource:	???*while/lstm_cell_349/BiasAdd/ReadVariableOp?)while/lstm_cell_349/MatMul/ReadVariableOp?+while/lstm_cell_349/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_349/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_349_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_349/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_349/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_349/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_349_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_349/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_349/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_349/addAddV2$while/lstm_cell_349/MatMul:product:0&while/lstm_cell_349/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_349/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_349_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_349/BiasAddBiasAddwhile/lstm_cell_349/add:z:02while/lstm_cell_349/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_349/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_349/splitSplit,while/lstm_cell_349/split/split_dim:output:0$while/lstm_cell_349/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_349/SigmoidSigmoid"while/lstm_cell_349/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_349/Sigmoid_1Sigmoid"while/lstm_cell_349/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_349/mulMul!while/lstm_cell_349/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_349/ReluRelu"while/lstm_cell_349/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_349/mul_1Mulwhile/lstm_cell_349/Sigmoid:y:0&while/lstm_cell_349/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_349/add_1AddV2while/lstm_cell_349/mul:z:0while/lstm_cell_349/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_349/Sigmoid_2Sigmoid"while/lstm_cell_349/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_349/Relu_1Reluwhile/lstm_cell_349/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_349/mul_2Mul!while/lstm_cell_349/Sigmoid_2:y:0(while/lstm_cell_349/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_349/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_349/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_349/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_349/BiasAdd/ReadVariableOp*^while/lstm_cell_349/MatMul/ReadVariableOp,^while/lstm_cell_349/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_349_biasadd_readvariableop_resource5while_lstm_cell_349_biasadd_readvariableop_resource_0"n
4while_lstm_cell_349_matmul_1_readvariableop_resource6while_lstm_cell_349_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_349_matmul_readvariableop_resource4while_lstm_cell_349_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_349/BiasAdd/ReadVariableOp*while/lstm_cell_349/BiasAdd/ReadVariableOp2V
)while/lstm_cell_349/MatMul/ReadVariableOp)while/lstm_cell_349/MatMul/ReadVariableOp2Z
+while/lstm_cell_349/MatMul_1/ReadVariableOp+while/lstm_cell_349/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_2121152
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2121152___redundant_placeholder05
1while_while_cond_2121152___redundant_placeholder15
1while_while_cond_2121152___redundant_placeholder25
1while_while_cond_2121152___redundant_placeholder3
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
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_2119083
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2119083___redundant_placeholder05
1while_while_cond_2119083___redundant_placeholder15
1while_while_cond_2119083___redundant_placeholder25
1while_while_cond_2119083___redundant_placeholder3
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
@: : : : :?????????
:?????????
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
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_2117883
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2117883___redundant_placeholder05
1while_while_cond_2117883___redundant_placeholder15
1while_while_cond_2117883___redundant_placeholder25
1while_while_cond_2117883___redundant_placeholder3
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
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_2118424
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2118424___redundant_placeholder05
1while_while_cond_2118424___redundant_placeholder15
1while_while_cond_2118424___redundant_placeholder25
1while_while_cond_2118424___redundant_placeholder3
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
@: : : : :?????????
:?????????
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
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?

?
lstm_125_while_cond_2120103.
*lstm_125_while_lstm_125_while_loop_counter4
0lstm_125_while_lstm_125_while_maximum_iterations
lstm_125_while_placeholder 
lstm_125_while_placeholder_1 
lstm_125_while_placeholder_2 
lstm_125_while_placeholder_30
,lstm_125_while_less_lstm_125_strided_slice_1G
Clstm_125_while_lstm_125_while_cond_2120103___redundant_placeholder0G
Clstm_125_while_lstm_125_while_cond_2120103___redundant_placeholder1G
Clstm_125_while_lstm_125_while_cond_2120103___redundant_placeholder2G
Clstm_125_while_lstm_125_while_cond_2120103___redundant_placeholder3
lstm_125_while_identity
?
lstm_125/while/LessLesslstm_125_while_placeholder,lstm_125_while_less_lstm_125_strided_slice_1*
T0*
_output_shapes
: ]
lstm_125/while/IdentityIdentitylstm_125/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_125_while_identity lstm_125/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
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
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?

?
lstm_123_while_cond_2120252.
*lstm_123_while_lstm_123_while_loop_counter4
0lstm_123_while_lstm_123_while_maximum_iterations
lstm_123_while_placeholder 
lstm_123_while_placeholder_1 
lstm_123_while_placeholder_2 
lstm_123_while_placeholder_30
,lstm_123_while_less_lstm_123_strided_slice_1G
Clstm_123_while_lstm_123_while_cond_2120252___redundant_placeholder0G
Clstm_123_while_lstm_123_while_cond_2120252___redundant_placeholder1G
Clstm_123_while_lstm_123_while_cond_2120252___redundant_placeholder2G
Clstm_123_while_lstm_123_while_cond_2120252___redundant_placeholder3
lstm_123_while_identity
?
lstm_123/while/LessLesslstm_123_while_placeholder,lstm_123_while_less_lstm_123_strided_slice_1*
T0*
_output_shapes
: ]
lstm_123/while/IdentityIdentitylstm_123/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_123_while_identity lstm_123/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?S
?
)sequential_41_lstm_123_while_body_2117085J
Fsequential_41_lstm_123_while_sequential_41_lstm_123_while_loop_counterP
Lsequential_41_lstm_123_while_sequential_41_lstm_123_while_maximum_iterations,
(sequential_41_lstm_123_while_placeholder.
*sequential_41_lstm_123_while_placeholder_1.
*sequential_41_lstm_123_while_placeholder_2.
*sequential_41_lstm_123_while_placeholder_3I
Esequential_41_lstm_123_while_sequential_41_lstm_123_strided_slice_1_0?
?sequential_41_lstm_123_while_tensorarrayv2read_tensorlistgetitem_sequential_41_lstm_123_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_41_lstm_123_while_lstm_cell_348_matmul_readvariableop_resource_0:	?`
Msequential_41_lstm_123_while_lstm_cell_348_matmul_1_readvariableop_resource_0:	d?[
Lsequential_41_lstm_123_while_lstm_cell_348_biasadd_readvariableop_resource_0:	?)
%sequential_41_lstm_123_while_identity+
'sequential_41_lstm_123_while_identity_1+
'sequential_41_lstm_123_while_identity_2+
'sequential_41_lstm_123_while_identity_3+
'sequential_41_lstm_123_while_identity_4+
'sequential_41_lstm_123_while_identity_5G
Csequential_41_lstm_123_while_sequential_41_lstm_123_strided_slice_1?
sequential_41_lstm_123_while_tensorarrayv2read_tensorlistgetitem_sequential_41_lstm_123_tensorarrayunstack_tensorlistfromtensor\
Isequential_41_lstm_123_while_lstm_cell_348_matmul_readvariableop_resource:	?^
Ksequential_41_lstm_123_while_lstm_cell_348_matmul_1_readvariableop_resource:	d?Y
Jsequential_41_lstm_123_while_lstm_cell_348_biasadd_readvariableop_resource:	???Asequential_41/lstm_123/while/lstm_cell_348/BiasAdd/ReadVariableOp?@sequential_41/lstm_123/while/lstm_cell_348/MatMul/ReadVariableOp?Bsequential_41/lstm_123/while/lstm_cell_348/MatMul_1/ReadVariableOp?
Nsequential_41/lstm_123/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_41/lstm_123/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_41_lstm_123_while_tensorarrayv2read_tensorlistgetitem_sequential_41_lstm_123_tensorarrayunstack_tensorlistfromtensor_0(sequential_41_lstm_123_while_placeholderWsequential_41/lstm_123/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_41/lstm_123/while/lstm_cell_348/MatMul/ReadVariableOpReadVariableOpKsequential_41_lstm_123_while_lstm_cell_348_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_41/lstm_123/while/lstm_cell_348/MatMulMatMulGsequential_41/lstm_123/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_41/lstm_123/while/lstm_cell_348/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_41/lstm_123/while/lstm_cell_348/MatMul_1/ReadVariableOpReadVariableOpMsequential_41_lstm_123_while_lstm_cell_348_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_41/lstm_123/while/lstm_cell_348/MatMul_1MatMul*sequential_41_lstm_123_while_placeholder_2Jsequential_41/lstm_123/while/lstm_cell_348/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_41/lstm_123/while/lstm_cell_348/addAddV2;sequential_41/lstm_123/while/lstm_cell_348/MatMul:product:0=sequential_41/lstm_123/while/lstm_cell_348/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_41/lstm_123/while/lstm_cell_348/BiasAdd/ReadVariableOpReadVariableOpLsequential_41_lstm_123_while_lstm_cell_348_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_41/lstm_123/while/lstm_cell_348/BiasAddBiasAdd2sequential_41/lstm_123/while/lstm_cell_348/add:z:0Isequential_41/lstm_123/while/lstm_cell_348/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_41/lstm_123/while/lstm_cell_348/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_41/lstm_123/while/lstm_cell_348/splitSplitCsequential_41/lstm_123/while/lstm_cell_348/split/split_dim:output:0;sequential_41/lstm_123/while/lstm_cell_348/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_41/lstm_123/while/lstm_cell_348/SigmoidSigmoid9sequential_41/lstm_123/while/lstm_cell_348/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_41/lstm_123/while/lstm_cell_348/Sigmoid_1Sigmoid9sequential_41/lstm_123/while/lstm_cell_348/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_41/lstm_123/while/lstm_cell_348/mulMul8sequential_41/lstm_123/while/lstm_cell_348/Sigmoid_1:y:0*sequential_41_lstm_123_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_41/lstm_123/while/lstm_cell_348/ReluRelu9sequential_41/lstm_123/while/lstm_cell_348/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_41/lstm_123/while/lstm_cell_348/mul_1Mul6sequential_41/lstm_123/while/lstm_cell_348/Sigmoid:y:0=sequential_41/lstm_123/while/lstm_cell_348/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_41/lstm_123/while/lstm_cell_348/add_1AddV22sequential_41/lstm_123/while/lstm_cell_348/mul:z:04sequential_41/lstm_123/while/lstm_cell_348/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_41/lstm_123/while/lstm_cell_348/Sigmoid_2Sigmoid9sequential_41/lstm_123/while/lstm_cell_348/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_41/lstm_123/while/lstm_cell_348/Relu_1Relu4sequential_41/lstm_123/while/lstm_cell_348/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_41/lstm_123/while/lstm_cell_348/mul_2Mul8sequential_41/lstm_123/while/lstm_cell_348/Sigmoid_2:y:0?sequential_41/lstm_123/while/lstm_cell_348/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_41/lstm_123/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_41_lstm_123_while_placeholder_1(sequential_41_lstm_123_while_placeholder4sequential_41/lstm_123/while/lstm_cell_348/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_41/lstm_123/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_41/lstm_123/while/addAddV2(sequential_41_lstm_123_while_placeholder+sequential_41/lstm_123/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_41/lstm_123/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_41/lstm_123/while/add_1AddV2Fsequential_41_lstm_123_while_sequential_41_lstm_123_while_loop_counter-sequential_41/lstm_123/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_41/lstm_123/while/IdentityIdentity&sequential_41/lstm_123/while/add_1:z:0"^sequential_41/lstm_123/while/NoOp*
T0*
_output_shapes
: ?
'sequential_41/lstm_123/while/Identity_1IdentityLsequential_41_lstm_123_while_sequential_41_lstm_123_while_maximum_iterations"^sequential_41/lstm_123/while/NoOp*
T0*
_output_shapes
: ?
'sequential_41/lstm_123/while/Identity_2Identity$sequential_41/lstm_123/while/add:z:0"^sequential_41/lstm_123/while/NoOp*
T0*
_output_shapes
: ?
'sequential_41/lstm_123/while/Identity_3IdentityQsequential_41/lstm_123/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_41/lstm_123/while/NoOp*
T0*
_output_shapes
: ?
'sequential_41/lstm_123/while/Identity_4Identity4sequential_41/lstm_123/while/lstm_cell_348/mul_2:z:0"^sequential_41/lstm_123/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_41/lstm_123/while/Identity_5Identity4sequential_41/lstm_123/while/lstm_cell_348/add_1:z:0"^sequential_41/lstm_123/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_41/lstm_123/while/NoOpNoOpB^sequential_41/lstm_123/while/lstm_cell_348/BiasAdd/ReadVariableOpA^sequential_41/lstm_123/while/lstm_cell_348/MatMul/ReadVariableOpC^sequential_41/lstm_123/while/lstm_cell_348/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_41_lstm_123_while_identity.sequential_41/lstm_123/while/Identity:output:0"[
'sequential_41_lstm_123_while_identity_10sequential_41/lstm_123/while/Identity_1:output:0"[
'sequential_41_lstm_123_while_identity_20sequential_41/lstm_123/while/Identity_2:output:0"[
'sequential_41_lstm_123_while_identity_30sequential_41/lstm_123/while/Identity_3:output:0"[
'sequential_41_lstm_123_while_identity_40sequential_41/lstm_123/while/Identity_4:output:0"[
'sequential_41_lstm_123_while_identity_50sequential_41/lstm_123/while/Identity_5:output:0"?
Jsequential_41_lstm_123_while_lstm_cell_348_biasadd_readvariableop_resourceLsequential_41_lstm_123_while_lstm_cell_348_biasadd_readvariableop_resource_0"?
Ksequential_41_lstm_123_while_lstm_cell_348_matmul_1_readvariableop_resourceMsequential_41_lstm_123_while_lstm_cell_348_matmul_1_readvariableop_resource_0"?
Isequential_41_lstm_123_while_lstm_cell_348_matmul_readvariableop_resourceKsequential_41_lstm_123_while_lstm_cell_348_matmul_readvariableop_resource_0"?
Csequential_41_lstm_123_while_sequential_41_lstm_123_strided_slice_1Esequential_41_lstm_123_while_sequential_41_lstm_123_strided_slice_1_0"?
sequential_41_lstm_123_while_tensorarrayv2read_tensorlistgetitem_sequential_41_lstm_123_tensorarrayunstack_tensorlistfromtensor?sequential_41_lstm_123_while_tensorarrayv2read_tensorlistgetitem_sequential_41_lstm_123_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_41/lstm_123/while/lstm_cell_348/BiasAdd/ReadVariableOpAsequential_41/lstm_123/while/lstm_cell_348/BiasAdd/ReadVariableOp2?
@sequential_41/lstm_123/while/lstm_cell_348/MatMul/ReadVariableOp@sequential_41/lstm_123/while/lstm_cell_348/MatMul/ReadVariableOp2?
Bsequential_41/lstm_123/while/lstm_cell_348/MatMul_1/ReadVariableOpBsequential_41/lstm_123/while/lstm_cell_348/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?8
?
while_body_2119084
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_350_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_350_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_350_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_350_matmul_readvariableop_resource:2(F
4while_lstm_cell_350_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_350_biasadd_readvariableop_resource:(??*while/lstm_cell_350/BiasAdd/ReadVariableOp?)while/lstm_cell_350/MatMul/ReadVariableOp?+while/lstm_cell_350/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_350/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_350_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_350/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_350/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_350/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_350_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_350/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_350/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_350/addAddV2$while/lstm_cell_350/MatMul:product:0&while/lstm_cell_350/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_350/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_350_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_350/BiasAddBiasAddwhile/lstm_cell_350/add:z:02while/lstm_cell_350/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_350/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_350/splitSplit,while/lstm_cell_350/split/split_dim:output:0$while/lstm_cell_350/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_350/SigmoidSigmoid"while/lstm_cell_350/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_350/Sigmoid_1Sigmoid"while/lstm_cell_350/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_350/mulMul!while/lstm_cell_350/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_350/ReluRelu"while/lstm_cell_350/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_350/mul_1Mulwhile/lstm_cell_350/Sigmoid:y:0&while/lstm_cell_350/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_350/add_1AddV2while/lstm_cell_350/mul:z:0while/lstm_cell_350/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_350/Sigmoid_2Sigmoid"while/lstm_cell_350/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_350/Relu_1Reluwhile/lstm_cell_350/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_350/mul_2Mul!while/lstm_cell_350/Sigmoid_2:y:0(while/lstm_cell_350/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_350/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_350/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_350/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_350/BiasAdd/ReadVariableOp*^while/lstm_cell_350/MatMul/ReadVariableOp,^while/lstm_cell_350/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_350_biasadd_readvariableop_resource5while_lstm_cell_350_biasadd_readvariableop_resource_0"n
4while_lstm_cell_350_matmul_1_readvariableop_resource6while_lstm_cell_350_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_350_matmul_readvariableop_resource4while_lstm_cell_350_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_350/BiasAdd/ReadVariableOp*while/lstm_cell_350/BiasAdd/ReadVariableOp2V
)while/lstm_cell_350/MatMul/ReadVariableOp)while/lstm_cell_350/MatMul/ReadVariableOp2Z
+while/lstm_cell_350/MatMul_1/ReadVariableOp+while/lstm_cell_350/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?

?
/__inference_sequential_41_layer_call_fn_2119618
lstm_123_input
unknown:	?
	unknown_0:	d?
	unknown_1:	?
	unknown_2:	d?
	unknown_3:	2?
	unknown_4:	?
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_123_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_41_layer_call_and_return_conditional_losses_2119566o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_123_input
?

?
/__inference_sequential_41_layer_call_fn_2119002
lstm_123_input
unknown:	?
	unknown_0:	d?
	unknown_1:	?
	unknown_2:	d?
	unknown_3:	2?
	unknown_4:	?
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_123_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_41_layer_call_and_return_conditional_losses_2118977o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_123_input
?
?
J__inference_lstm_cell_350_layer_call_and_return_conditional_losses_2122782

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????2:?????????
:?????????
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/1
?
?
*__inference_lstm_124_layer_call_fn_2121270

inputs
unknown:	d?
	unknown_0:	2?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_124_layer_call_and_return_conditional_losses_2118802s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_2121339
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2121339___redundant_placeholder05
1while_while_cond_2121339___redundant_placeholder15
1while_while_cond_2121339___redundant_placeholder25
1while_while_cond_2121339___redundant_placeholder3
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
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_2121482
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2121482___redundant_placeholder05
1while_while_cond_2121482___redundant_placeholder15
1while_while_cond_2121482___redundant_placeholder25
1while_while_cond_2121482___redundant_placeholder3
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
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_2120723
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2120723___redundant_placeholder05
1while_while_cond_2120723___redundant_placeholder15
1while_while_cond_2120723___redundant_placeholder25
1while_while_cond_2120723___redundant_placeholder3
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
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?J
?
E__inference_lstm_125_layer_call_and_return_conditional_losses_2119168

inputs>
,lstm_cell_350_matmul_readvariableop_resource:2(@
.lstm_cell_350_matmul_1_readvariableop_resource:
(;
-lstm_cell_350_biasadd_readvariableop_resource:(
identity??$lstm_cell_350/BiasAdd/ReadVariableOp?#lstm_cell_350/MatMul/ReadVariableOp?%lstm_cell_350/MatMul_1/ReadVariableOp?while;
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
valueB:?
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
:?????????
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
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2D
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
valueB:?
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
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
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
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
#lstm_cell_350/MatMul/ReadVariableOpReadVariableOp,lstm_cell_350_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_350/MatMulMatMulstrided_slice_2:output:0+lstm_cell_350/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_350/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_350_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_350/MatMul_1MatMulzeros:output:0-lstm_cell_350/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_350/addAddV2lstm_cell_350/MatMul:product:0 lstm_cell_350/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_350/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_350_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_350/BiasAddBiasAddlstm_cell_350/add:z:0,lstm_cell_350/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_350/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_350/splitSplit&lstm_cell_350/split/split_dim:output:0lstm_cell_350/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_350/SigmoidSigmoidlstm_cell_350/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_350/Sigmoid_1Sigmoidlstm_cell_350/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_350/mulMullstm_cell_350/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_350/ReluRelulstm_cell_350/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_350/mul_1Mullstm_cell_350/Sigmoid:y:0 lstm_cell_350/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_350/add_1AddV2lstm_cell_350/mul:z:0lstm_cell_350/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_350/Sigmoid_2Sigmoidlstm_cell_350/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_350/Relu_1Relulstm_cell_350/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_350/mul_2Mullstm_cell_350/Sigmoid_2:y:0"lstm_cell_350/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
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
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_350_matmul_readvariableop_resource.lstm_cell_350_matmul_1_readvariableop_resource-lstm_cell_350_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2119084*
condR
while_cond_2119083*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
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
:?????????
?
NoOpNoOp%^lstm_cell_350/BiasAdd/ReadVariableOp$^lstm_cell_350/MatMul/ReadVariableOp&^lstm_cell_350/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_350/BiasAdd/ReadVariableOp$lstm_cell_350/BiasAdd/ReadVariableOp2J
#lstm_cell_350/MatMul/ReadVariableOp#lstm_cell_350/MatMul/ReadVariableOp2N
%lstm_cell_350/MatMul_1/ReadVariableOp%lstm_cell_350/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_2121483
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_349_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_349_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_349_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_349_matmul_readvariableop_resource:	d?G
4while_lstm_cell_349_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_349_biasadd_readvariableop_resource:	???*while/lstm_cell_349/BiasAdd/ReadVariableOp?)while/lstm_cell_349/MatMul/ReadVariableOp?+while/lstm_cell_349/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_349/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_349_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_349/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_349/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_349/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_349_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_349/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_349/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_349/addAddV2$while/lstm_cell_349/MatMul:product:0&while/lstm_cell_349/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_349/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_349_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_349/BiasAddBiasAddwhile/lstm_cell_349/add:z:02while/lstm_cell_349/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_349/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_349/splitSplit,while/lstm_cell_349/split/split_dim:output:0$while/lstm_cell_349/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_349/SigmoidSigmoid"while/lstm_cell_349/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_349/Sigmoid_1Sigmoid"while/lstm_cell_349/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_349/mulMul!while/lstm_cell_349/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_349/ReluRelu"while/lstm_cell_349/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_349/mul_1Mulwhile/lstm_cell_349/Sigmoid:y:0&while/lstm_cell_349/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_349/add_1AddV2while/lstm_cell_349/mul:z:0while/lstm_cell_349/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_349/Sigmoid_2Sigmoid"while/lstm_cell_349/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_349/Relu_1Reluwhile/lstm_cell_349/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_349/mul_2Mul!while/lstm_cell_349/Sigmoid_2:y:0(while/lstm_cell_349/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_349/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
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
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_349/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_349/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_349/BiasAdd/ReadVariableOp*^while/lstm_cell_349/MatMul/ReadVariableOp,^while/lstm_cell_349/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_349_biasadd_readvariableop_resource5while_lstm_cell_349_biasadd_readvariableop_resource_0"n
4while_lstm_cell_349_matmul_1_readvariableop_resource6while_lstm_cell_349_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_349_matmul_readvariableop_resource4while_lstm_cell_349_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_349/BiasAdd/ReadVariableOp*while/lstm_cell_349/BiasAdd/ReadVariableOp2V
)while/lstm_cell_349/MatMul/ReadVariableOp)while/lstm_cell_349/MatMul/ReadVariableOp2Z
+while/lstm_cell_349/MatMul_1/ReadVariableOp+while/lstm_cell_349/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_123_input;
 serving_default_lstm_123_input:0?????????<
dense_410
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
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
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_sequential
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m?4m?5m?!v?"v?-v?.v?/v?0v?1v?2v?3v?4v?5v?"
	optimizer
-
?serving_default"
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
?
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
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
?__call__
+?&call_and_return_all_conditional_losses"
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
?

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
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
?__call__
+?&call_and_return_all_conditional_losses"
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
?

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
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
?__call__
+?&call_and_return_all_conditional_losses"
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
?

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:
2dense_41/kernel
:2dense_41/bias
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
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
$	variables
%trainable_variables
&regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0:.	?2lstm_123/lstm_cell_123/kernel
::8	d?2'lstm_123/lstm_cell_123/recurrent_kernel
*:(?2lstm_123/lstm_cell_123/bias
0:.	d?2lstm_124/lstm_cell_124/kernel
::8	2?2'lstm_124/lstm_cell_124/recurrent_kernel
*:(?2lstm_124/lstm_cell_124/bias
/:-2(2lstm_125/lstm_cell_125/kernel
9:7
(2'lstm_125/lstm_cell_125/recurrent_kernel
):'(2lstm_125/lstm_cell_125/bias
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
?
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
=	variables
>trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
?
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
?
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
2Adam/dense_41/kernel/m
 :2Adam/dense_41/bias/m
5:3	?2$Adam/lstm_123/lstm_cell_123/kernel/m
?:=	d?2.Adam/lstm_123/lstm_cell_123/recurrent_kernel/m
/:-?2"Adam/lstm_123/lstm_cell_123/bias/m
5:3	d?2$Adam/lstm_124/lstm_cell_124/kernel/m
?:=	2?2.Adam/lstm_124/lstm_cell_124/recurrent_kernel/m
/:-?2"Adam/lstm_124/lstm_cell_124/bias/m
4:22(2$Adam/lstm_125/lstm_cell_125/kernel/m
>:<
(2.Adam/lstm_125/lstm_cell_125/recurrent_kernel/m
.:,(2"Adam/lstm_125/lstm_cell_125/bias/m
&:$
2Adam/dense_41/kernel/v
 :2Adam/dense_41/bias/v
5:3	?2$Adam/lstm_123/lstm_cell_123/kernel/v
?:=	d?2.Adam/lstm_123/lstm_cell_123/recurrent_kernel/v
/:-?2"Adam/lstm_123/lstm_cell_123/bias/v
5:3	d?2$Adam/lstm_124/lstm_cell_124/kernel/v
?:=	2?2.Adam/lstm_124/lstm_cell_124/recurrent_kernel/v
/:-?2"Adam/lstm_124/lstm_cell_124/bias/v
4:22(2$Adam/lstm_125/lstm_cell_125/kernel/v
>:<
(2.Adam/lstm_125/lstm_cell_125/recurrent_kernel/v
.:,(2"Adam/lstm_125/lstm_cell_125/bias/v
?2?
/__inference_sequential_41_layer_call_fn_2119002
/__inference_sequential_41_layer_call_fn_2119740
/__inference_sequential_41_layer_call_fn_2119767
/__inference_sequential_41_layer_call_fn_2119618?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_sequential_41_layer_call_and_return_conditional_losses_2120194
J__inference_sequential_41_layer_call_and_return_conditional_losses_2120621
J__inference_sequential_41_layer_call_and_return_conditional_losses_2119648
J__inference_sequential_41_layer_call_and_return_conditional_losses_2119678?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
"__inference__wrapped_model_2117453lstm_123_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_lstm_123_layer_call_fn_2120632
*__inference_lstm_123_layer_call_fn_2120643
*__inference_lstm_123_layer_call_fn_2120654
*__inference_lstm_123_layer_call_fn_2120665?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_lstm_123_layer_call_and_return_conditional_losses_2120808
E__inference_lstm_123_layer_call_and_return_conditional_losses_2120951
E__inference_lstm_123_layer_call_and_return_conditional_losses_2121094
E__inference_lstm_123_layer_call_and_return_conditional_losses_2121237?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_lstm_124_layer_call_fn_2121248
*__inference_lstm_124_layer_call_fn_2121259
*__inference_lstm_124_layer_call_fn_2121270
*__inference_lstm_124_layer_call_fn_2121281?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_lstm_124_layer_call_and_return_conditional_losses_2121424
E__inference_lstm_124_layer_call_and_return_conditional_losses_2121567
E__inference_lstm_124_layer_call_and_return_conditional_losses_2121710
E__inference_lstm_124_layer_call_and_return_conditional_losses_2121853?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_lstm_125_layer_call_fn_2121864
*__inference_lstm_125_layer_call_fn_2121875
*__inference_lstm_125_layer_call_fn_2121886
*__inference_lstm_125_layer_call_fn_2121897?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_lstm_125_layer_call_and_return_conditional_losses_2122040
E__inference_lstm_125_layer_call_and_return_conditional_losses_2122183
E__inference_lstm_125_layer_call_and_return_conditional_losses_2122326
E__inference_lstm_125_layer_call_and_return_conditional_losses_2122469?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dense_41_layer_call_fn_2122478?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_41_layer_call_and_return_conditional_losses_2122488?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_2119713lstm_123_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_lstm_cell_348_layer_call_fn_2122505
/__inference_lstm_cell_348_layer_call_fn_2122522?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_lstm_cell_348_layer_call_and_return_conditional_losses_2122554
J__inference_lstm_cell_348_layer_call_and_return_conditional_losses_2122586?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_lstm_cell_349_layer_call_fn_2122603
/__inference_lstm_cell_349_layer_call_fn_2122620?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_lstm_cell_349_layer_call_and_return_conditional_losses_2122652
J__inference_lstm_cell_349_layer_call_and_return_conditional_losses_2122684?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_lstm_cell_350_layer_call_fn_2122701
/__inference_lstm_cell_350_layer_call_fn_2122718?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_lstm_cell_350_layer_call_and_return_conditional_losses_2122750
J__inference_lstm_cell_350_layer_call_and_return_conditional_losses_2122782?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
"__inference__wrapped_model_2117453-./012345!";?8
1?.
,?)
lstm_123_input?????????
? "3?0
.
dense_41"?
dense_41??????????
E__inference_dense_41_layer_call_and_return_conditional_losses_2122488\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_41_layer_call_fn_2122478O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_123_layer_call_and_return_conditional_losses_2120808?-./O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "2?/
(?%
0??????????????????d
? ?
E__inference_lstm_123_layer_call_and_return_conditional_losses_2120951?-./O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "2?/
(?%
0??????????????????d
? ?
E__inference_lstm_123_layer_call_and_return_conditional_losses_2121094q-./??<
5?2
$?!
inputs?????????

 
p 

 
? ")?&
?
0?????????d
? ?
E__inference_lstm_123_layer_call_and_return_conditional_losses_2121237q-./??<
5?2
$?!
inputs?????????

 
p

 
? ")?&
?
0?????????d
? ?
*__inference_lstm_123_layer_call_fn_2120632}-./O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "%?"??????????????????d?
*__inference_lstm_123_layer_call_fn_2120643}-./O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "%?"??????????????????d?
*__inference_lstm_123_layer_call_fn_2120654d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_123_layer_call_fn_2120665d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_124_layer_call_and_return_conditional_losses_2121424?012O?L
E?B
4?1
/?,
inputs/0??????????????????d

 
p 

 
? "2?/
(?%
0??????????????????2
? ?
E__inference_lstm_124_layer_call_and_return_conditional_losses_2121567?012O?L
E?B
4?1
/?,
inputs/0??????????????????d

 
p

 
? "2?/
(?%
0??????????????????2
? ?
E__inference_lstm_124_layer_call_and_return_conditional_losses_2121710q012??<
5?2
$?!
inputs?????????d

 
p 

 
? ")?&
?
0?????????2
? ?
E__inference_lstm_124_layer_call_and_return_conditional_losses_2121853q012??<
5?2
$?!
inputs?????????d

 
p

 
? ")?&
?
0?????????2
? ?
*__inference_lstm_124_layer_call_fn_2121248}012O?L
E?B
4?1
/?,
inputs/0??????????????????d

 
p 

 
? "%?"??????????????????2?
*__inference_lstm_124_layer_call_fn_2121259}012O?L
E?B
4?1
/?,
inputs/0??????????????????d

 
p

 
? "%?"??????????????????2?
*__inference_lstm_124_layer_call_fn_2121270d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_124_layer_call_fn_2121281d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_125_layer_call_and_return_conditional_losses_2122040}345O?L
E?B
4?1
/?,
inputs/0??????????????????2

 
p 

 
? "%?"
?
0?????????

? ?
E__inference_lstm_125_layer_call_and_return_conditional_losses_2122183}345O?L
E?B
4?1
/?,
inputs/0??????????????????2

 
p

 
? "%?"
?
0?????????

? ?
E__inference_lstm_125_layer_call_and_return_conditional_losses_2122326m345??<
5?2
$?!
inputs?????????2

 
p 

 
? "%?"
?
0?????????

? ?
E__inference_lstm_125_layer_call_and_return_conditional_losses_2122469m345??<
5?2
$?!
inputs?????????2

 
p

 
? "%?"
?
0?????????

? ?
*__inference_lstm_125_layer_call_fn_2121864p345O?L
E?B
4?1
/?,
inputs/0??????????????????2

 
p 

 
? "??????????
?
*__inference_lstm_125_layer_call_fn_2121875p345O?L
E?B
4?1
/?,
inputs/0??????????????????2

 
p

 
? "??????????
?
*__inference_lstm_125_layer_call_fn_2121886`345??<
5?2
$?!
inputs?????????2

 
p 

 
? "??????????
?
*__inference_lstm_125_layer_call_fn_2121897`345??<
5?2
$?!
inputs?????????2

 
p

 
? "??????????
?
J__inference_lstm_cell_348_layer_call_and_return_conditional_losses_2122554?-./??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????d
"?
states/1?????????d
p 
? "s?p
i?f
?
0/0?????????d
E?B
?
0/1/0?????????d
?
0/1/1?????????d
? ?
J__inference_lstm_cell_348_layer_call_and_return_conditional_losses_2122586?-./??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????d
"?
states/1?????????d
p
? "s?p
i?f
?
0/0?????????d
E?B
?
0/1/0?????????d
?
0/1/1?????????d
? ?
/__inference_lstm_cell_348_layer_call_fn_2122505?-./??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????d
"?
states/1?????????d
p 
? "c?`
?
0?????????d
A?>
?
1/0?????????d
?
1/1?????????d?
/__inference_lstm_cell_348_layer_call_fn_2122522?-./??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????d
"?
states/1?????????d
p
? "c?`
?
0?????????d
A?>
?
1/0?????????d
?
1/1?????????d?
J__inference_lstm_cell_349_layer_call_and_return_conditional_losses_2122652?012??}
v?s
 ?
inputs?????????d
K?H
"?
states/0?????????2
"?
states/1?????????2
p 
? "s?p
i?f
?
0/0?????????2
E?B
?
0/1/0?????????2
?
0/1/1?????????2
? ?
J__inference_lstm_cell_349_layer_call_and_return_conditional_losses_2122684?012??}
v?s
 ?
inputs?????????d
K?H
"?
states/0?????????2
"?
states/1?????????2
p
? "s?p
i?f
?
0/0?????????2
E?B
?
0/1/0?????????2
?
0/1/1?????????2
? ?
/__inference_lstm_cell_349_layer_call_fn_2122603?012??}
v?s
 ?
inputs?????????d
K?H
"?
states/0?????????2
"?
states/1?????????2
p 
? "c?`
?
0?????????2
A?>
?
1/0?????????2
?
1/1?????????2?
/__inference_lstm_cell_349_layer_call_fn_2122620?012??}
v?s
 ?
inputs?????????d
K?H
"?
states/0?????????2
"?
states/1?????????2
p
? "c?`
?
0?????????2
A?>
?
1/0?????????2
?
1/1?????????2?
J__inference_lstm_cell_350_layer_call_and_return_conditional_losses_2122750?345??}
v?s
 ?
inputs?????????2
K?H
"?
states/0?????????

"?
states/1?????????

p 
? "s?p
i?f
?
0/0?????????

E?B
?
0/1/0?????????

?
0/1/1?????????

? ?
J__inference_lstm_cell_350_layer_call_and_return_conditional_losses_2122782?345??}
v?s
 ?
inputs?????????2
K?H
"?
states/0?????????

"?
states/1?????????

p
? "s?p
i?f
?
0/0?????????

E?B
?
0/1/0?????????

?
0/1/1?????????

? ?
/__inference_lstm_cell_350_layer_call_fn_2122701?345??}
v?s
 ?
inputs?????????2
K?H
"?
states/0?????????

"?
states/1?????????

p 
? "c?`
?
0?????????

A?>
?
1/0?????????

?
1/1?????????
?
/__inference_lstm_cell_350_layer_call_fn_2122718?345??}
v?s
 ?
inputs?????????2
K?H
"?
states/0?????????

"?
states/1?????????

p
? "c?`
?
0?????????

A?>
?
1/0?????????

?
1/1?????????
?
J__inference_sequential_41_layer_call_and_return_conditional_losses_2119648y-./012345!"C?@
9?6
,?)
lstm_123_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_41_layer_call_and_return_conditional_losses_2119678y-./012345!"C?@
9?6
,?)
lstm_123_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_41_layer_call_and_return_conditional_losses_2120194q-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_41_layer_call_and_return_conditional_losses_2120621q-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "%?"
?
0?????????
? ?
/__inference_sequential_41_layer_call_fn_2119002l-./012345!"C?@
9?6
,?)
lstm_123_input?????????
p 

 
? "???????????
/__inference_sequential_41_layer_call_fn_2119618l-./012345!"C?@
9?6
,?)
lstm_123_input?????????
p

 
? "???????????
/__inference_sequential_41_layer_call_fn_2119740d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_41_layer_call_fn_2119767d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2119713?-./012345!"M?J
? 
C?@
>
lstm_123_input,?)
lstm_123_input?????????"3?0
.
dense_41"?
dense_41?????????