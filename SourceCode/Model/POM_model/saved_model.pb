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
dense_65/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_65/kernel
s
#dense_65/kernel/Read/ReadVariableOpReadVariableOpdense_65/kernel*
_output_shapes

:
*
dtype0
r
dense_65/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_65/bias
k
!dense_65/bias/Read/ReadVariableOpReadVariableOpdense_65/bias*
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
lstm_195/lstm_cell_195/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_195/lstm_cell_195/kernel
?
1lstm_195/lstm_cell_195/kernel/Read/ReadVariableOpReadVariableOplstm_195/lstm_cell_195/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_195/lstm_cell_195/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_195/lstm_cell_195/recurrent_kernel
?
;lstm_195/lstm_cell_195/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_195/lstm_cell_195/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_195/lstm_cell_195/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_195/lstm_cell_195/bias
?
/lstm_195/lstm_cell_195/bias/Read/ReadVariableOpReadVariableOplstm_195/lstm_cell_195/bias*
_output_shapes	
:?*
dtype0
?
lstm_196/lstm_cell_196/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_196/lstm_cell_196/kernel
?
1lstm_196/lstm_cell_196/kernel/Read/ReadVariableOpReadVariableOplstm_196/lstm_cell_196/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_196/lstm_cell_196/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_196/lstm_cell_196/recurrent_kernel
?
;lstm_196/lstm_cell_196/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_196/lstm_cell_196/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_196/lstm_cell_196/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_196/lstm_cell_196/bias
?
/lstm_196/lstm_cell_196/bias/Read/ReadVariableOpReadVariableOplstm_196/lstm_cell_196/bias*
_output_shapes	
:?*
dtype0
?
lstm_197/lstm_cell_197/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_197/lstm_cell_197/kernel
?
1lstm_197/lstm_cell_197/kernel/Read/ReadVariableOpReadVariableOplstm_197/lstm_cell_197/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_197/lstm_cell_197/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_197/lstm_cell_197/recurrent_kernel
?
;lstm_197/lstm_cell_197/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_197/lstm_cell_197/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_197/lstm_cell_197/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_197/lstm_cell_197/bias
?
/lstm_197/lstm_cell_197/bias/Read/ReadVariableOpReadVariableOplstm_197/lstm_cell_197/bias*
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
Adam/dense_65/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_65/kernel/m
?
*Adam/dense_65/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_65/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_65/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_65/bias/m
y
(Adam/dense_65/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_65/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_195/lstm_cell_195/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_195/lstm_cell_195/kernel/m
?
8Adam/lstm_195/lstm_cell_195/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_195/lstm_cell_195/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_195/lstm_cell_195/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_195/lstm_cell_195/recurrent_kernel/m
?
BAdam/lstm_195/lstm_cell_195/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_195/lstm_cell_195/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_195/lstm_cell_195/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_195/lstm_cell_195/bias/m
?
6Adam/lstm_195/lstm_cell_195/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_195/lstm_cell_195/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_196/lstm_cell_196/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_196/lstm_cell_196/kernel/m
?
8Adam/lstm_196/lstm_cell_196/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_196/lstm_cell_196/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_196/lstm_cell_196/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_196/lstm_cell_196/recurrent_kernel/m
?
BAdam/lstm_196/lstm_cell_196/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_196/lstm_cell_196/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_196/lstm_cell_196/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_196/lstm_cell_196/bias/m
?
6Adam/lstm_196/lstm_cell_196/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_196/lstm_cell_196/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_197/lstm_cell_197/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_197/lstm_cell_197/kernel/m
?
8Adam/lstm_197/lstm_cell_197/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_197/lstm_cell_197/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_197/lstm_cell_197/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_197/lstm_cell_197/recurrent_kernel/m
?
BAdam/lstm_197/lstm_cell_197/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_197/lstm_cell_197/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_197/lstm_cell_197/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_197/lstm_cell_197/bias/m
?
6Adam/lstm_197/lstm_cell_197/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_197/lstm_cell_197/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_65/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_65/kernel/v
?
*Adam/dense_65/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_65/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_65/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_65/bias/v
y
(Adam/dense_65/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_65/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_195/lstm_cell_195/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_195/lstm_cell_195/kernel/v
?
8Adam/lstm_195/lstm_cell_195/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_195/lstm_cell_195/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_195/lstm_cell_195/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_195/lstm_cell_195/recurrent_kernel/v
?
BAdam/lstm_195/lstm_cell_195/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_195/lstm_cell_195/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_195/lstm_cell_195/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_195/lstm_cell_195/bias/v
?
6Adam/lstm_195/lstm_cell_195/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_195/lstm_cell_195/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_196/lstm_cell_196/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_196/lstm_cell_196/kernel/v
?
8Adam/lstm_196/lstm_cell_196/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_196/lstm_cell_196/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_196/lstm_cell_196/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_196/lstm_cell_196/recurrent_kernel/v
?
BAdam/lstm_196/lstm_cell_196/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_196/lstm_cell_196/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_196/lstm_cell_196/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_196/lstm_cell_196/bias/v
?
6Adam/lstm_196/lstm_cell_196/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_196/lstm_cell_196/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_197/lstm_cell_197/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_197/lstm_cell_197/kernel/v
?
8Adam/lstm_197/lstm_cell_197/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_197/lstm_cell_197/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_197/lstm_cell_197/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_197/lstm_cell_197/recurrent_kernel/v
?
BAdam/lstm_197/lstm_cell_197/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_197/lstm_cell_197/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_197/lstm_cell_197/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_197/lstm_cell_197/bias/v
?
6Adam/lstm_197/lstm_cell_197/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_197/lstm_cell_197/bias/v*
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
VARIABLE_VALUEdense_65/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_65/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_195/lstm_cell_195/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_195/lstm_cell_195/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_195/lstm_cell_195/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_196/lstm_cell_196/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_196/lstm_cell_196/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_196/lstm_cell_196/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_197/lstm_cell_197/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_197/lstm_cell_197/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_197/lstm_cell_197/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_65/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_65/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_195/lstm_cell_195/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_195/lstm_cell_195/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_195/lstm_cell_195/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_196/lstm_cell_196/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_196/lstm_cell_196/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_196/lstm_cell_196/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_197/lstm_cell_197/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_197/lstm_cell_197/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_197/lstm_cell_197/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_65/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_65/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_195/lstm_cell_195/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_195/lstm_cell_195/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_195/lstm_cell_195/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_196/lstm_cell_196/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_196/lstm_cell_196/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_196/lstm_cell_196/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_197/lstm_cell_197/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_197/lstm_cell_197/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_197/lstm_cell_197/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_195_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_195_inputlstm_195/lstm_cell_195/kernel'lstm_195/lstm_cell_195/recurrent_kernellstm_195/lstm_cell_195/biaslstm_196/lstm_cell_196/kernel'lstm_196/lstm_cell_196/recurrent_kernellstm_196/lstm_cell_196/biaslstm_197/lstm_cell_197/kernel'lstm_197/lstm_cell_197/recurrent_kernellstm_197/lstm_cell_197/biasdense_65/kerneldense_65/bias*
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
%__inference_signature_wrapper_1339651
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_65/kernel/Read/ReadVariableOp!dense_65/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_195/lstm_cell_195/kernel/Read/ReadVariableOp;lstm_195/lstm_cell_195/recurrent_kernel/Read/ReadVariableOp/lstm_195/lstm_cell_195/bias/Read/ReadVariableOp1lstm_196/lstm_cell_196/kernel/Read/ReadVariableOp;lstm_196/lstm_cell_196/recurrent_kernel/Read/ReadVariableOp/lstm_196/lstm_cell_196/bias/Read/ReadVariableOp1lstm_197/lstm_cell_197/kernel/Read/ReadVariableOp;lstm_197/lstm_cell_197/recurrent_kernel/Read/ReadVariableOp/lstm_197/lstm_cell_197/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_65/kernel/m/Read/ReadVariableOp(Adam/dense_65/bias/m/Read/ReadVariableOp8Adam/lstm_195/lstm_cell_195/kernel/m/Read/ReadVariableOpBAdam/lstm_195/lstm_cell_195/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_195/lstm_cell_195/bias/m/Read/ReadVariableOp8Adam/lstm_196/lstm_cell_196/kernel/m/Read/ReadVariableOpBAdam/lstm_196/lstm_cell_196/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_196/lstm_cell_196/bias/m/Read/ReadVariableOp8Adam/lstm_197/lstm_cell_197/kernel/m/Read/ReadVariableOpBAdam/lstm_197/lstm_cell_197/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_197/lstm_cell_197/bias/m/Read/ReadVariableOp*Adam/dense_65/kernel/v/Read/ReadVariableOp(Adam/dense_65/bias/v/Read/ReadVariableOp8Adam/lstm_195/lstm_cell_195/kernel/v/Read/ReadVariableOpBAdam/lstm_195/lstm_cell_195/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_195/lstm_cell_195/bias/v/Read/ReadVariableOp8Adam/lstm_196/lstm_cell_196/kernel/v/Read/ReadVariableOpBAdam/lstm_196/lstm_cell_196/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_196/lstm_cell_196/bias/v/Read/ReadVariableOp8Adam/lstm_197/lstm_cell_197/kernel/v/Read/ReadVariableOpBAdam/lstm_197/lstm_cell_197/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_197/lstm_cell_197/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1342863
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_65/kerneldense_65/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_195/lstm_cell_195/kernel'lstm_195/lstm_cell_195/recurrent_kernellstm_195/lstm_cell_195/biaslstm_196/lstm_cell_196/kernel'lstm_196/lstm_cell_196/recurrent_kernellstm_196/lstm_cell_196/biaslstm_197/lstm_cell_197/kernel'lstm_197/lstm_cell_197/recurrent_kernellstm_197/lstm_cell_197/biastotalcountAdam/dense_65/kernel/mAdam/dense_65/bias/m$Adam/lstm_195/lstm_cell_195/kernel/m.Adam/lstm_195/lstm_cell_195/recurrent_kernel/m"Adam/lstm_195/lstm_cell_195/bias/m$Adam/lstm_196/lstm_cell_196/kernel/m.Adam/lstm_196/lstm_cell_196/recurrent_kernel/m"Adam/lstm_196/lstm_cell_196/bias/m$Adam/lstm_197/lstm_cell_197/kernel/m.Adam/lstm_197/lstm_cell_197/recurrent_kernel/m"Adam/lstm_197/lstm_cell_197/bias/mAdam/dense_65/kernel/vAdam/dense_65/bias/v$Adam/lstm_195/lstm_cell_195/kernel/v.Adam/lstm_195/lstm_cell_195/recurrent_kernel/v"Adam/lstm_195/lstm_cell_195/bias/v$Adam/lstm_196/lstm_cell_196/kernel/v.Adam/lstm_196/lstm_cell_196/recurrent_kernel/v"Adam/lstm_196/lstm_cell_196/bias/v$Adam/lstm_197/lstm_cell_197/kernel/v.Adam/lstm_197/lstm_cell_197/recurrent_kernel/v"Adam/lstm_197/lstm_cell_197/bias/v*4
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
#__inference__traced_restore_1342993??+
?J
?
E__inference_lstm_197_layer_call_and_return_conditional_losses_1339106

inputs>
,lstm_cell_221_matmul_readvariableop_resource:2(@
.lstm_cell_221_matmul_1_readvariableop_resource:
(;
-lstm_cell_221_biasadd_readvariableop_resource:(
identity??$lstm_cell_221/BiasAdd/ReadVariableOp?#lstm_cell_221/MatMul/ReadVariableOp?%lstm_cell_221/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_221/MatMul/ReadVariableOpReadVariableOp,lstm_cell_221_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_221/MatMulMatMulstrided_slice_2:output:0+lstm_cell_221/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_221/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_221_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_221/MatMul_1MatMulzeros:output:0-lstm_cell_221/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_221/addAddV2lstm_cell_221/MatMul:product:0 lstm_cell_221/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_221/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_221_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_221/BiasAddBiasAddlstm_cell_221/add:z:0,lstm_cell_221/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_221/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_221/splitSplit&lstm_cell_221/split/split_dim:output:0lstm_cell_221/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_221/SigmoidSigmoidlstm_cell_221/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_221/Sigmoid_1Sigmoidlstm_cell_221/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_221/mulMullstm_cell_221/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_221/ReluRelulstm_cell_221/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_221/mul_1Mullstm_cell_221/Sigmoid:y:0 lstm_cell_221/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_221/add_1AddV2lstm_cell_221/mul:z:0lstm_cell_221/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_221/Sigmoid_2Sigmoidlstm_cell_221/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_221/Relu_1Relulstm_cell_221/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_221/mul_2Mullstm_cell_221/Sigmoid_2:y:0"lstm_cell_221/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_221_matmul_readvariableop_resource.lstm_cell_221_matmul_1_readvariableop_resource-lstm_cell_221_biasadd_readvariableop_resource*
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
while_body_1339022*
condR
while_cond_1339021*K
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
NoOpNoOp%^lstm_cell_221/BiasAdd/ReadVariableOp$^lstm_cell_221/MatMul/ReadVariableOp&^lstm_cell_221/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_221/BiasAdd/ReadVariableOp$lstm_cell_221/BiasAdd/ReadVariableOp2J
#lstm_cell_221/MatMul/ReadVariableOp#lstm_cell_221/MatMul/ReadVariableOp2N
%lstm_cell_221/MatMul_1/ReadVariableOp%lstm_cell_221/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_219_layer_call_fn_1342443

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
J__inference_lstm_cell_219_layer_call_and_return_conditional_losses_1337458o
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
?

?
lstm_196_while_cond_1340329.
*lstm_196_while_lstm_196_while_loop_counter4
0lstm_196_while_lstm_196_while_maximum_iterations
lstm_196_while_placeholder 
lstm_196_while_placeholder_1 
lstm_196_while_placeholder_2 
lstm_196_while_placeholder_30
,lstm_196_while_less_lstm_196_strided_slice_1G
Clstm_196_while_lstm_196_while_cond_1340329___redundant_placeholder0G
Clstm_196_while_lstm_196_while_cond_1340329___redundant_placeholder1G
Clstm_196_while_lstm_196_while_cond_1340329___redundant_placeholder2G
Clstm_196_while_lstm_196_while_cond_1340329___redundant_placeholder3
lstm_196_while_identity
?
lstm_196/while/LessLesslstm_196_while_placeholder,lstm_196_while_less_lstm_196_strided_slice_1*
T0*
_output_shapes
: ]
lstm_196/while/IdentityIdentitylstm_196/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_196_while_identity lstm_196/while/Identity:output:0*(
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
while_cond_1337821
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1337821___redundant_placeholder05
1while_while_cond_1337821___redundant_placeholder15
1while_while_cond_1337821___redundant_placeholder25
1while_while_cond_1337821___redundant_placeholder3
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
?
?
*__inference_lstm_197_layer_call_fn_1341824

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
E__inference_lstm_197_layer_call_and_return_conditional_losses_1338890o
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
*__inference_lstm_196_layer_call_fn_1341197
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
E__inference_lstm_196_layer_call_and_return_conditional_losses_1338082|
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
?
*__inference_lstm_197_layer_call_fn_1341813
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
E__inference_lstm_197_layer_call_and_return_conditional_losses_1338432o
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
*__inference_lstm_195_layer_call_fn_1340570
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
E__inference_lstm_195_layer_call_and_return_conditional_losses_1337541|
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
?8
?
E__inference_lstm_195_layer_call_and_return_conditional_losses_1337732

inputs(
lstm_cell_219_1337650:	?(
lstm_cell_219_1337652:	d?$
lstm_cell_219_1337654:	?
identity??%lstm_cell_219/StatefulPartitionedCall?while;
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
%lstm_cell_219/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_219_1337650lstm_cell_219_1337652lstm_cell_219_1337654*
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
J__inference_lstm_cell_219_layer_call_and_return_conditional_losses_1337604n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_219_1337650lstm_cell_219_1337652lstm_cell_219_1337654*
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
while_body_1337663*
condR
while_cond_1337662*K
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
NoOpNoOp&^lstm_cell_219/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_219/StatefulPartitionedCall%lstm_cell_219/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_1337471
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1337471___redundant_placeholder05
1while_while_cond_1337471___redundant_placeholder15
1while_while_cond_1337471___redundant_placeholder25
1while_while_cond_1337471___redundant_placeholder3
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
while_cond_1341277
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1341277___redundant_placeholder05
1while_while_cond_1341277___redundant_placeholder15
1while_while_cond_1341277___redundant_placeholder25
1while_while_cond_1341277___redundant_placeholder3
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
while_cond_1342036
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1342036___redundant_placeholder05
1while_while_cond_1342036___redundant_placeholder15
1while_while_cond_1342036___redundant_placeholder25
1while_while_cond_1342036___redundant_placeholder3
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
?8
?
while_body_1339187
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_220_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_220_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_220_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_220_matmul_readvariableop_resource:	d?G
4while_lstm_cell_220_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_220_biasadd_readvariableop_resource:	???*while/lstm_cell_220/BiasAdd/ReadVariableOp?)while/lstm_cell_220/MatMul/ReadVariableOp?+while/lstm_cell_220/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_220/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_220_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_220/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_220/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_220/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_220_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_220/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_220/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_220/addAddV2$while/lstm_cell_220/MatMul:product:0&while/lstm_cell_220/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_220/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_220_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_220/BiasAddBiasAddwhile/lstm_cell_220/add:z:02while/lstm_cell_220/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_220/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_220/splitSplit,while/lstm_cell_220/split/split_dim:output:0$while/lstm_cell_220/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_220/SigmoidSigmoid"while/lstm_cell_220/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_220/Sigmoid_1Sigmoid"while/lstm_cell_220/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_220/mulMul!while/lstm_cell_220/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_220/ReluRelu"while/lstm_cell_220/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_220/mul_1Mulwhile/lstm_cell_220/Sigmoid:y:0&while/lstm_cell_220/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_220/add_1AddV2while/lstm_cell_220/mul:z:0while/lstm_cell_220/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_220/Sigmoid_2Sigmoid"while/lstm_cell_220/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_220/Relu_1Reluwhile/lstm_cell_220/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_220/mul_2Mul!while/lstm_cell_220/Sigmoid_2:y:0(while/lstm_cell_220/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_220/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_220/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_220/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_220/BiasAdd/ReadVariableOp*^while/lstm_cell_220/MatMul/ReadVariableOp,^while/lstm_cell_220/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_220_biasadd_readvariableop_resource5while_lstm_cell_220_biasadd_readvariableop_resource_0"n
4while_lstm_cell_220_matmul_1_readvariableop_resource6while_lstm_cell_220_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_220_matmul_readvariableop_resource4while_lstm_cell_220_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_220/BiasAdd/ReadVariableOp*while/lstm_cell_220/BiasAdd/ReadVariableOp2V
)while/lstm_cell_220/MatMul/ReadVariableOp)while/lstm_cell_220/MatMul/ReadVariableOp2Z
+while/lstm_cell_220/MatMul_1/ReadVariableOp+while/lstm_cell_220/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_197_layer_call_fn_1341802
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
E__inference_lstm_197_layer_call_and_return_conditional_losses_1338241o
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
?
?
J__inference_lstm_cell_220_layer_call_and_return_conditional_losses_1337954

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
?J
?
E__inference_lstm_197_layer_call_and_return_conditional_losses_1338890

inputs>
,lstm_cell_221_matmul_readvariableop_resource:2(@
.lstm_cell_221_matmul_1_readvariableop_resource:
(;
-lstm_cell_221_biasadd_readvariableop_resource:(
identity??$lstm_cell_221/BiasAdd/ReadVariableOp?#lstm_cell_221/MatMul/ReadVariableOp?%lstm_cell_221/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_221/MatMul/ReadVariableOpReadVariableOp,lstm_cell_221_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_221/MatMulMatMulstrided_slice_2:output:0+lstm_cell_221/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_221/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_221_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_221/MatMul_1MatMulzeros:output:0-lstm_cell_221/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_221/addAddV2lstm_cell_221/MatMul:product:0 lstm_cell_221/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_221/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_221_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_221/BiasAddBiasAddlstm_cell_221/add:z:0,lstm_cell_221/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_221/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_221/splitSplit&lstm_cell_221/split/split_dim:output:0lstm_cell_221/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_221/SigmoidSigmoidlstm_cell_221/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_221/Sigmoid_1Sigmoidlstm_cell_221/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_221/mulMullstm_cell_221/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_221/ReluRelulstm_cell_221/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_221/mul_1Mullstm_cell_221/Sigmoid:y:0 lstm_cell_221/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_221/add_1AddV2lstm_cell_221/mul:z:0lstm_cell_221/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_221/Sigmoid_2Sigmoidlstm_cell_221/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_221/Relu_1Relulstm_cell_221/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_221/mul_2Mullstm_cell_221/Sigmoid_2:y:0"lstm_cell_221/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_221_matmul_readvariableop_resource.lstm_cell_221_matmul_1_readvariableop_resource-lstm_cell_221_biasadd_readvariableop_resource*
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
while_body_1338806*
condR
while_cond_1338805*K
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
NoOpNoOp%^lstm_cell_221/BiasAdd/ReadVariableOp$^lstm_cell_221/MatMul/ReadVariableOp&^lstm_cell_221/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_221/BiasAdd/ReadVariableOp$lstm_cell_221/BiasAdd/ReadVariableOp2J
#lstm_cell_221/MatMul/ReadVariableOp#lstm_cell_221/MatMul/ReadVariableOp2N
%lstm_cell_221/MatMul_1/ReadVariableOp%lstm_cell_221/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_1337391
lstm_195_inputV
Csequential_65_lstm_195_lstm_cell_219_matmul_readvariableop_resource:	?X
Esequential_65_lstm_195_lstm_cell_219_matmul_1_readvariableop_resource:	d?S
Dsequential_65_lstm_195_lstm_cell_219_biasadd_readvariableop_resource:	?V
Csequential_65_lstm_196_lstm_cell_220_matmul_readvariableop_resource:	d?X
Esequential_65_lstm_196_lstm_cell_220_matmul_1_readvariableop_resource:	2?S
Dsequential_65_lstm_196_lstm_cell_220_biasadd_readvariableop_resource:	?U
Csequential_65_lstm_197_lstm_cell_221_matmul_readvariableop_resource:2(W
Esequential_65_lstm_197_lstm_cell_221_matmul_1_readvariableop_resource:
(R
Dsequential_65_lstm_197_lstm_cell_221_biasadd_readvariableop_resource:(G
5sequential_65_dense_65_matmul_readvariableop_resource:
D
6sequential_65_dense_65_biasadd_readvariableop_resource:
identity??-sequential_65/dense_65/BiasAdd/ReadVariableOp?,sequential_65/dense_65/MatMul/ReadVariableOp?;sequential_65/lstm_195/lstm_cell_219/BiasAdd/ReadVariableOp?:sequential_65/lstm_195/lstm_cell_219/MatMul/ReadVariableOp?<sequential_65/lstm_195/lstm_cell_219/MatMul_1/ReadVariableOp?sequential_65/lstm_195/while?;sequential_65/lstm_196/lstm_cell_220/BiasAdd/ReadVariableOp?:sequential_65/lstm_196/lstm_cell_220/MatMul/ReadVariableOp?<sequential_65/lstm_196/lstm_cell_220/MatMul_1/ReadVariableOp?sequential_65/lstm_196/while?;sequential_65/lstm_197/lstm_cell_221/BiasAdd/ReadVariableOp?:sequential_65/lstm_197/lstm_cell_221/MatMul/ReadVariableOp?<sequential_65/lstm_197/lstm_cell_221/MatMul_1/ReadVariableOp?sequential_65/lstm_197/whileZ
sequential_65/lstm_195/ShapeShapelstm_195_input*
T0*
_output_shapes
:t
*sequential_65/lstm_195/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_65/lstm_195/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_65/lstm_195/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_65/lstm_195/strided_sliceStridedSlice%sequential_65/lstm_195/Shape:output:03sequential_65/lstm_195/strided_slice/stack:output:05sequential_65/lstm_195/strided_slice/stack_1:output:05sequential_65/lstm_195/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_65/lstm_195/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_65/lstm_195/zeros/packedPack-sequential_65/lstm_195/strided_slice:output:0.sequential_65/lstm_195/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_65/lstm_195/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_65/lstm_195/zerosFill,sequential_65/lstm_195/zeros/packed:output:0+sequential_65/lstm_195/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_65/lstm_195/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_65/lstm_195/zeros_1/packedPack-sequential_65/lstm_195/strided_slice:output:00sequential_65/lstm_195/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_65/lstm_195/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_65/lstm_195/zeros_1Fill.sequential_65/lstm_195/zeros_1/packed:output:0-sequential_65/lstm_195/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_65/lstm_195/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_65/lstm_195/transpose	Transposelstm_195_input.sequential_65/lstm_195/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_65/lstm_195/Shape_1Shape$sequential_65/lstm_195/transpose:y:0*
T0*
_output_shapes
:v
,sequential_65/lstm_195/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_65/lstm_195/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_65/lstm_195/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_65/lstm_195/strided_slice_1StridedSlice'sequential_65/lstm_195/Shape_1:output:05sequential_65/lstm_195/strided_slice_1/stack:output:07sequential_65/lstm_195/strided_slice_1/stack_1:output:07sequential_65/lstm_195/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_65/lstm_195/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_65/lstm_195/TensorArrayV2TensorListReserve;sequential_65/lstm_195/TensorArrayV2/element_shape:output:0/sequential_65/lstm_195/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_65/lstm_195/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_65/lstm_195/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_65/lstm_195/transpose:y:0Usequential_65/lstm_195/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_65/lstm_195/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_65/lstm_195/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_65/lstm_195/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_65/lstm_195/strided_slice_2StridedSlice$sequential_65/lstm_195/transpose:y:05sequential_65/lstm_195/strided_slice_2/stack:output:07sequential_65/lstm_195/strided_slice_2/stack_1:output:07sequential_65/lstm_195/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_65/lstm_195/lstm_cell_219/MatMul/ReadVariableOpReadVariableOpCsequential_65_lstm_195_lstm_cell_219_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_65/lstm_195/lstm_cell_219/MatMulMatMul/sequential_65/lstm_195/strided_slice_2:output:0Bsequential_65/lstm_195/lstm_cell_219/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_65/lstm_195/lstm_cell_219/MatMul_1/ReadVariableOpReadVariableOpEsequential_65_lstm_195_lstm_cell_219_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_65/lstm_195/lstm_cell_219/MatMul_1MatMul%sequential_65/lstm_195/zeros:output:0Dsequential_65/lstm_195/lstm_cell_219/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_65/lstm_195/lstm_cell_219/addAddV25sequential_65/lstm_195/lstm_cell_219/MatMul:product:07sequential_65/lstm_195/lstm_cell_219/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_65/lstm_195/lstm_cell_219/BiasAdd/ReadVariableOpReadVariableOpDsequential_65_lstm_195_lstm_cell_219_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_65/lstm_195/lstm_cell_219/BiasAddBiasAdd,sequential_65/lstm_195/lstm_cell_219/add:z:0Csequential_65/lstm_195/lstm_cell_219/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_65/lstm_195/lstm_cell_219/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_65/lstm_195/lstm_cell_219/splitSplit=sequential_65/lstm_195/lstm_cell_219/split/split_dim:output:05sequential_65/lstm_195/lstm_cell_219/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_65/lstm_195/lstm_cell_219/SigmoidSigmoid3sequential_65/lstm_195/lstm_cell_219/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_65/lstm_195/lstm_cell_219/Sigmoid_1Sigmoid3sequential_65/lstm_195/lstm_cell_219/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_65/lstm_195/lstm_cell_219/mulMul2sequential_65/lstm_195/lstm_cell_219/Sigmoid_1:y:0'sequential_65/lstm_195/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_65/lstm_195/lstm_cell_219/ReluRelu3sequential_65/lstm_195/lstm_cell_219/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_65/lstm_195/lstm_cell_219/mul_1Mul0sequential_65/lstm_195/lstm_cell_219/Sigmoid:y:07sequential_65/lstm_195/lstm_cell_219/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_65/lstm_195/lstm_cell_219/add_1AddV2,sequential_65/lstm_195/lstm_cell_219/mul:z:0.sequential_65/lstm_195/lstm_cell_219/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_65/lstm_195/lstm_cell_219/Sigmoid_2Sigmoid3sequential_65/lstm_195/lstm_cell_219/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_65/lstm_195/lstm_cell_219/Relu_1Relu.sequential_65/lstm_195/lstm_cell_219/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_65/lstm_195/lstm_cell_219/mul_2Mul2sequential_65/lstm_195/lstm_cell_219/Sigmoid_2:y:09sequential_65/lstm_195/lstm_cell_219/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_65/lstm_195/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_65/lstm_195/TensorArrayV2_1TensorListReserve=sequential_65/lstm_195/TensorArrayV2_1/element_shape:output:0/sequential_65/lstm_195/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_65/lstm_195/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_65/lstm_195/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_65/lstm_195/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_65/lstm_195/whileWhile2sequential_65/lstm_195/while/loop_counter:output:08sequential_65/lstm_195/while/maximum_iterations:output:0$sequential_65/lstm_195/time:output:0/sequential_65/lstm_195/TensorArrayV2_1:handle:0%sequential_65/lstm_195/zeros:output:0'sequential_65/lstm_195/zeros_1:output:0/sequential_65/lstm_195/strided_slice_1:output:0Nsequential_65/lstm_195/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_65_lstm_195_lstm_cell_219_matmul_readvariableop_resourceEsequential_65_lstm_195_lstm_cell_219_matmul_1_readvariableop_resourceDsequential_65_lstm_195_lstm_cell_219_biasadd_readvariableop_resource*
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
)sequential_65_lstm_195_while_body_1337023*5
cond-R+
)sequential_65_lstm_195_while_cond_1337022*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_65/lstm_195/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_65/lstm_195/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_65/lstm_195/while:output:3Psequential_65/lstm_195/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_65/lstm_195/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_65/lstm_195/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_65/lstm_195/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_65/lstm_195/strided_slice_3StridedSliceBsequential_65/lstm_195/TensorArrayV2Stack/TensorListStack:tensor:05sequential_65/lstm_195/strided_slice_3/stack:output:07sequential_65/lstm_195/strided_slice_3/stack_1:output:07sequential_65/lstm_195/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_65/lstm_195/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_65/lstm_195/transpose_1	TransposeBsequential_65/lstm_195/TensorArrayV2Stack/TensorListStack:tensor:00sequential_65/lstm_195/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_65/lstm_195/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_65/lstm_196/ShapeShape&sequential_65/lstm_195/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_65/lstm_196/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_65/lstm_196/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_65/lstm_196/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_65/lstm_196/strided_sliceStridedSlice%sequential_65/lstm_196/Shape:output:03sequential_65/lstm_196/strided_slice/stack:output:05sequential_65/lstm_196/strided_slice/stack_1:output:05sequential_65/lstm_196/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_65/lstm_196/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_65/lstm_196/zeros/packedPack-sequential_65/lstm_196/strided_slice:output:0.sequential_65/lstm_196/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_65/lstm_196/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_65/lstm_196/zerosFill,sequential_65/lstm_196/zeros/packed:output:0+sequential_65/lstm_196/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_65/lstm_196/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_65/lstm_196/zeros_1/packedPack-sequential_65/lstm_196/strided_slice:output:00sequential_65/lstm_196/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_65/lstm_196/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_65/lstm_196/zeros_1Fill.sequential_65/lstm_196/zeros_1/packed:output:0-sequential_65/lstm_196/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_65/lstm_196/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_65/lstm_196/transpose	Transpose&sequential_65/lstm_195/transpose_1:y:0.sequential_65/lstm_196/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_65/lstm_196/Shape_1Shape$sequential_65/lstm_196/transpose:y:0*
T0*
_output_shapes
:v
,sequential_65/lstm_196/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_65/lstm_196/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_65/lstm_196/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_65/lstm_196/strided_slice_1StridedSlice'sequential_65/lstm_196/Shape_1:output:05sequential_65/lstm_196/strided_slice_1/stack:output:07sequential_65/lstm_196/strided_slice_1/stack_1:output:07sequential_65/lstm_196/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_65/lstm_196/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_65/lstm_196/TensorArrayV2TensorListReserve;sequential_65/lstm_196/TensorArrayV2/element_shape:output:0/sequential_65/lstm_196/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_65/lstm_196/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_65/lstm_196/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_65/lstm_196/transpose:y:0Usequential_65/lstm_196/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_65/lstm_196/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_65/lstm_196/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_65/lstm_196/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_65/lstm_196/strided_slice_2StridedSlice$sequential_65/lstm_196/transpose:y:05sequential_65/lstm_196/strided_slice_2/stack:output:07sequential_65/lstm_196/strided_slice_2/stack_1:output:07sequential_65/lstm_196/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_65/lstm_196/lstm_cell_220/MatMul/ReadVariableOpReadVariableOpCsequential_65_lstm_196_lstm_cell_220_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_65/lstm_196/lstm_cell_220/MatMulMatMul/sequential_65/lstm_196/strided_slice_2:output:0Bsequential_65/lstm_196/lstm_cell_220/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_65/lstm_196/lstm_cell_220/MatMul_1/ReadVariableOpReadVariableOpEsequential_65_lstm_196_lstm_cell_220_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_65/lstm_196/lstm_cell_220/MatMul_1MatMul%sequential_65/lstm_196/zeros:output:0Dsequential_65/lstm_196/lstm_cell_220/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_65/lstm_196/lstm_cell_220/addAddV25sequential_65/lstm_196/lstm_cell_220/MatMul:product:07sequential_65/lstm_196/lstm_cell_220/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_65/lstm_196/lstm_cell_220/BiasAdd/ReadVariableOpReadVariableOpDsequential_65_lstm_196_lstm_cell_220_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_65/lstm_196/lstm_cell_220/BiasAddBiasAdd,sequential_65/lstm_196/lstm_cell_220/add:z:0Csequential_65/lstm_196/lstm_cell_220/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_65/lstm_196/lstm_cell_220/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_65/lstm_196/lstm_cell_220/splitSplit=sequential_65/lstm_196/lstm_cell_220/split/split_dim:output:05sequential_65/lstm_196/lstm_cell_220/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_65/lstm_196/lstm_cell_220/SigmoidSigmoid3sequential_65/lstm_196/lstm_cell_220/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_65/lstm_196/lstm_cell_220/Sigmoid_1Sigmoid3sequential_65/lstm_196/lstm_cell_220/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_65/lstm_196/lstm_cell_220/mulMul2sequential_65/lstm_196/lstm_cell_220/Sigmoid_1:y:0'sequential_65/lstm_196/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_65/lstm_196/lstm_cell_220/ReluRelu3sequential_65/lstm_196/lstm_cell_220/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_65/lstm_196/lstm_cell_220/mul_1Mul0sequential_65/lstm_196/lstm_cell_220/Sigmoid:y:07sequential_65/lstm_196/lstm_cell_220/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_65/lstm_196/lstm_cell_220/add_1AddV2,sequential_65/lstm_196/lstm_cell_220/mul:z:0.sequential_65/lstm_196/lstm_cell_220/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_65/lstm_196/lstm_cell_220/Sigmoid_2Sigmoid3sequential_65/lstm_196/lstm_cell_220/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_65/lstm_196/lstm_cell_220/Relu_1Relu.sequential_65/lstm_196/lstm_cell_220/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_65/lstm_196/lstm_cell_220/mul_2Mul2sequential_65/lstm_196/lstm_cell_220/Sigmoid_2:y:09sequential_65/lstm_196/lstm_cell_220/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_65/lstm_196/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_65/lstm_196/TensorArrayV2_1TensorListReserve=sequential_65/lstm_196/TensorArrayV2_1/element_shape:output:0/sequential_65/lstm_196/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_65/lstm_196/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_65/lstm_196/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_65/lstm_196/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_65/lstm_196/whileWhile2sequential_65/lstm_196/while/loop_counter:output:08sequential_65/lstm_196/while/maximum_iterations:output:0$sequential_65/lstm_196/time:output:0/sequential_65/lstm_196/TensorArrayV2_1:handle:0%sequential_65/lstm_196/zeros:output:0'sequential_65/lstm_196/zeros_1:output:0/sequential_65/lstm_196/strided_slice_1:output:0Nsequential_65/lstm_196/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_65_lstm_196_lstm_cell_220_matmul_readvariableop_resourceEsequential_65_lstm_196_lstm_cell_220_matmul_1_readvariableop_resourceDsequential_65_lstm_196_lstm_cell_220_biasadd_readvariableop_resource*
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
)sequential_65_lstm_196_while_body_1337162*5
cond-R+
)sequential_65_lstm_196_while_cond_1337161*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_65/lstm_196/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_65/lstm_196/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_65/lstm_196/while:output:3Psequential_65/lstm_196/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_65/lstm_196/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_65/lstm_196/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_65/lstm_196/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_65/lstm_196/strided_slice_3StridedSliceBsequential_65/lstm_196/TensorArrayV2Stack/TensorListStack:tensor:05sequential_65/lstm_196/strided_slice_3/stack:output:07sequential_65/lstm_196/strided_slice_3/stack_1:output:07sequential_65/lstm_196/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_65/lstm_196/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_65/lstm_196/transpose_1	TransposeBsequential_65/lstm_196/TensorArrayV2Stack/TensorListStack:tensor:00sequential_65/lstm_196/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_65/lstm_196/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_65/lstm_197/ShapeShape&sequential_65/lstm_196/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_65/lstm_197/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_65/lstm_197/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_65/lstm_197/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_65/lstm_197/strided_sliceStridedSlice%sequential_65/lstm_197/Shape:output:03sequential_65/lstm_197/strided_slice/stack:output:05sequential_65/lstm_197/strided_slice/stack_1:output:05sequential_65/lstm_197/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_65/lstm_197/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_65/lstm_197/zeros/packedPack-sequential_65/lstm_197/strided_slice:output:0.sequential_65/lstm_197/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_65/lstm_197/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_65/lstm_197/zerosFill,sequential_65/lstm_197/zeros/packed:output:0+sequential_65/lstm_197/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_65/lstm_197/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_65/lstm_197/zeros_1/packedPack-sequential_65/lstm_197/strided_slice:output:00sequential_65/lstm_197/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_65/lstm_197/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_65/lstm_197/zeros_1Fill.sequential_65/lstm_197/zeros_1/packed:output:0-sequential_65/lstm_197/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_65/lstm_197/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_65/lstm_197/transpose	Transpose&sequential_65/lstm_196/transpose_1:y:0.sequential_65/lstm_197/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_65/lstm_197/Shape_1Shape$sequential_65/lstm_197/transpose:y:0*
T0*
_output_shapes
:v
,sequential_65/lstm_197/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_65/lstm_197/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_65/lstm_197/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_65/lstm_197/strided_slice_1StridedSlice'sequential_65/lstm_197/Shape_1:output:05sequential_65/lstm_197/strided_slice_1/stack:output:07sequential_65/lstm_197/strided_slice_1/stack_1:output:07sequential_65/lstm_197/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_65/lstm_197/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_65/lstm_197/TensorArrayV2TensorListReserve;sequential_65/lstm_197/TensorArrayV2/element_shape:output:0/sequential_65/lstm_197/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_65/lstm_197/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_65/lstm_197/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_65/lstm_197/transpose:y:0Usequential_65/lstm_197/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_65/lstm_197/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_65/lstm_197/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_65/lstm_197/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_65/lstm_197/strided_slice_2StridedSlice$sequential_65/lstm_197/transpose:y:05sequential_65/lstm_197/strided_slice_2/stack:output:07sequential_65/lstm_197/strided_slice_2/stack_1:output:07sequential_65/lstm_197/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_65/lstm_197/lstm_cell_221/MatMul/ReadVariableOpReadVariableOpCsequential_65_lstm_197_lstm_cell_221_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_65/lstm_197/lstm_cell_221/MatMulMatMul/sequential_65/lstm_197/strided_slice_2:output:0Bsequential_65/lstm_197/lstm_cell_221/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_65/lstm_197/lstm_cell_221/MatMul_1/ReadVariableOpReadVariableOpEsequential_65_lstm_197_lstm_cell_221_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_65/lstm_197/lstm_cell_221/MatMul_1MatMul%sequential_65/lstm_197/zeros:output:0Dsequential_65/lstm_197/lstm_cell_221/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_65/lstm_197/lstm_cell_221/addAddV25sequential_65/lstm_197/lstm_cell_221/MatMul:product:07sequential_65/lstm_197/lstm_cell_221/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_65/lstm_197/lstm_cell_221/BiasAdd/ReadVariableOpReadVariableOpDsequential_65_lstm_197_lstm_cell_221_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_65/lstm_197/lstm_cell_221/BiasAddBiasAdd,sequential_65/lstm_197/lstm_cell_221/add:z:0Csequential_65/lstm_197/lstm_cell_221/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_65/lstm_197/lstm_cell_221/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_65/lstm_197/lstm_cell_221/splitSplit=sequential_65/lstm_197/lstm_cell_221/split/split_dim:output:05sequential_65/lstm_197/lstm_cell_221/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_65/lstm_197/lstm_cell_221/SigmoidSigmoid3sequential_65/lstm_197/lstm_cell_221/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_65/lstm_197/lstm_cell_221/Sigmoid_1Sigmoid3sequential_65/lstm_197/lstm_cell_221/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_65/lstm_197/lstm_cell_221/mulMul2sequential_65/lstm_197/lstm_cell_221/Sigmoid_1:y:0'sequential_65/lstm_197/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_65/lstm_197/lstm_cell_221/ReluRelu3sequential_65/lstm_197/lstm_cell_221/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_65/lstm_197/lstm_cell_221/mul_1Mul0sequential_65/lstm_197/lstm_cell_221/Sigmoid:y:07sequential_65/lstm_197/lstm_cell_221/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_65/lstm_197/lstm_cell_221/add_1AddV2,sequential_65/lstm_197/lstm_cell_221/mul:z:0.sequential_65/lstm_197/lstm_cell_221/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_65/lstm_197/lstm_cell_221/Sigmoid_2Sigmoid3sequential_65/lstm_197/lstm_cell_221/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_65/lstm_197/lstm_cell_221/Relu_1Relu.sequential_65/lstm_197/lstm_cell_221/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_65/lstm_197/lstm_cell_221/mul_2Mul2sequential_65/lstm_197/lstm_cell_221/Sigmoid_2:y:09sequential_65/lstm_197/lstm_cell_221/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_65/lstm_197/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_65/lstm_197/TensorArrayV2_1TensorListReserve=sequential_65/lstm_197/TensorArrayV2_1/element_shape:output:0/sequential_65/lstm_197/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_65/lstm_197/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_65/lstm_197/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_65/lstm_197/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_65/lstm_197/whileWhile2sequential_65/lstm_197/while/loop_counter:output:08sequential_65/lstm_197/while/maximum_iterations:output:0$sequential_65/lstm_197/time:output:0/sequential_65/lstm_197/TensorArrayV2_1:handle:0%sequential_65/lstm_197/zeros:output:0'sequential_65/lstm_197/zeros_1:output:0/sequential_65/lstm_197/strided_slice_1:output:0Nsequential_65/lstm_197/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_65_lstm_197_lstm_cell_221_matmul_readvariableop_resourceEsequential_65_lstm_197_lstm_cell_221_matmul_1_readvariableop_resourceDsequential_65_lstm_197_lstm_cell_221_biasadd_readvariableop_resource*
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
)sequential_65_lstm_197_while_body_1337301*5
cond-R+
)sequential_65_lstm_197_while_cond_1337300*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_65/lstm_197/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_65/lstm_197/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_65/lstm_197/while:output:3Psequential_65/lstm_197/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_65/lstm_197/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_65/lstm_197/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_65/lstm_197/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_65/lstm_197/strided_slice_3StridedSliceBsequential_65/lstm_197/TensorArrayV2Stack/TensorListStack:tensor:05sequential_65/lstm_197/strided_slice_3/stack:output:07sequential_65/lstm_197/strided_slice_3/stack_1:output:07sequential_65/lstm_197/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_65/lstm_197/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_65/lstm_197/transpose_1	TransposeBsequential_65/lstm_197/TensorArrayV2Stack/TensorListStack:tensor:00sequential_65/lstm_197/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_65/lstm_197/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_65/dense_65/MatMul/ReadVariableOpReadVariableOp5sequential_65_dense_65_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_65/dense_65/MatMulMatMul/sequential_65/lstm_197/strided_slice_3:output:04sequential_65/dense_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_65/dense_65/BiasAdd/ReadVariableOpReadVariableOp6sequential_65_dense_65_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_65/dense_65/BiasAddBiasAdd'sequential_65/dense_65/MatMul:product:05sequential_65/dense_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_65/dense_65/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_65/dense_65/BiasAdd/ReadVariableOp-^sequential_65/dense_65/MatMul/ReadVariableOp<^sequential_65/lstm_195/lstm_cell_219/BiasAdd/ReadVariableOp;^sequential_65/lstm_195/lstm_cell_219/MatMul/ReadVariableOp=^sequential_65/lstm_195/lstm_cell_219/MatMul_1/ReadVariableOp^sequential_65/lstm_195/while<^sequential_65/lstm_196/lstm_cell_220/BiasAdd/ReadVariableOp;^sequential_65/lstm_196/lstm_cell_220/MatMul/ReadVariableOp=^sequential_65/lstm_196/lstm_cell_220/MatMul_1/ReadVariableOp^sequential_65/lstm_196/while<^sequential_65/lstm_197/lstm_cell_221/BiasAdd/ReadVariableOp;^sequential_65/lstm_197/lstm_cell_221/MatMul/ReadVariableOp=^sequential_65/lstm_197/lstm_cell_221/MatMul_1/ReadVariableOp^sequential_65/lstm_197/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_65/dense_65/BiasAdd/ReadVariableOp-sequential_65/dense_65/BiasAdd/ReadVariableOp2\
,sequential_65/dense_65/MatMul/ReadVariableOp,sequential_65/dense_65/MatMul/ReadVariableOp2z
;sequential_65/lstm_195/lstm_cell_219/BiasAdd/ReadVariableOp;sequential_65/lstm_195/lstm_cell_219/BiasAdd/ReadVariableOp2x
:sequential_65/lstm_195/lstm_cell_219/MatMul/ReadVariableOp:sequential_65/lstm_195/lstm_cell_219/MatMul/ReadVariableOp2|
<sequential_65/lstm_195/lstm_cell_219/MatMul_1/ReadVariableOp<sequential_65/lstm_195/lstm_cell_219/MatMul_1/ReadVariableOp2<
sequential_65/lstm_195/whilesequential_65/lstm_195/while2z
;sequential_65/lstm_196/lstm_cell_220/BiasAdd/ReadVariableOp;sequential_65/lstm_196/lstm_cell_220/BiasAdd/ReadVariableOp2x
:sequential_65/lstm_196/lstm_cell_220/MatMul/ReadVariableOp:sequential_65/lstm_196/lstm_cell_220/MatMul/ReadVariableOp2|
<sequential_65/lstm_196/lstm_cell_220/MatMul_1/ReadVariableOp<sequential_65/lstm_196/lstm_cell_220/MatMul_1/ReadVariableOp2<
sequential_65/lstm_196/whilesequential_65/lstm_196/while2z
;sequential_65/lstm_197/lstm_cell_221/BiasAdd/ReadVariableOp;sequential_65/lstm_197/lstm_cell_221/BiasAdd/ReadVariableOp2x
:sequential_65/lstm_197/lstm_cell_221/MatMul/ReadVariableOp:sequential_65/lstm_197/lstm_cell_221/MatMul/ReadVariableOp2|
<sequential_65/lstm_197/lstm_cell_221/MatMul_1/ReadVariableOp<sequential_65/lstm_197/lstm_cell_221/MatMul_1/ReadVariableOp2<
sequential_65/lstm_197/whilesequential_65/lstm_197/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_195_input
?
?
*__inference_lstm_196_layer_call_fn_1341186
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
E__inference_lstm_196_layer_call_and_return_conditional_losses_1337891|
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
?C
?

lstm_195_while_body_1340191.
*lstm_195_while_lstm_195_while_loop_counter4
0lstm_195_while_lstm_195_while_maximum_iterations
lstm_195_while_placeholder 
lstm_195_while_placeholder_1 
lstm_195_while_placeholder_2 
lstm_195_while_placeholder_3-
)lstm_195_while_lstm_195_strided_slice_1_0i
elstm_195_while_tensorarrayv2read_tensorlistgetitem_lstm_195_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_195_while_lstm_cell_219_matmul_readvariableop_resource_0:	?R
?lstm_195_while_lstm_cell_219_matmul_1_readvariableop_resource_0:	d?M
>lstm_195_while_lstm_cell_219_biasadd_readvariableop_resource_0:	?
lstm_195_while_identity
lstm_195_while_identity_1
lstm_195_while_identity_2
lstm_195_while_identity_3
lstm_195_while_identity_4
lstm_195_while_identity_5+
'lstm_195_while_lstm_195_strided_slice_1g
clstm_195_while_tensorarrayv2read_tensorlistgetitem_lstm_195_tensorarrayunstack_tensorlistfromtensorN
;lstm_195_while_lstm_cell_219_matmul_readvariableop_resource:	?P
=lstm_195_while_lstm_cell_219_matmul_1_readvariableop_resource:	d?K
<lstm_195_while_lstm_cell_219_biasadd_readvariableop_resource:	???3lstm_195/while/lstm_cell_219/BiasAdd/ReadVariableOp?2lstm_195/while/lstm_cell_219/MatMul/ReadVariableOp?4lstm_195/while/lstm_cell_219/MatMul_1/ReadVariableOp?
@lstm_195/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_195/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_195_while_tensorarrayv2read_tensorlistgetitem_lstm_195_tensorarrayunstack_tensorlistfromtensor_0lstm_195_while_placeholderIlstm_195/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_195/while/lstm_cell_219/MatMul/ReadVariableOpReadVariableOp=lstm_195_while_lstm_cell_219_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_195/while/lstm_cell_219/MatMulMatMul9lstm_195/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_195/while/lstm_cell_219/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_195/while/lstm_cell_219/MatMul_1/ReadVariableOpReadVariableOp?lstm_195_while_lstm_cell_219_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_195/while/lstm_cell_219/MatMul_1MatMullstm_195_while_placeholder_2<lstm_195/while/lstm_cell_219/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_195/while/lstm_cell_219/addAddV2-lstm_195/while/lstm_cell_219/MatMul:product:0/lstm_195/while/lstm_cell_219/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_195/while/lstm_cell_219/BiasAdd/ReadVariableOpReadVariableOp>lstm_195_while_lstm_cell_219_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_195/while/lstm_cell_219/BiasAddBiasAdd$lstm_195/while/lstm_cell_219/add:z:0;lstm_195/while/lstm_cell_219/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_195/while/lstm_cell_219/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_195/while/lstm_cell_219/splitSplit5lstm_195/while/lstm_cell_219/split/split_dim:output:0-lstm_195/while/lstm_cell_219/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_195/while/lstm_cell_219/SigmoidSigmoid+lstm_195/while/lstm_cell_219/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_195/while/lstm_cell_219/Sigmoid_1Sigmoid+lstm_195/while/lstm_cell_219/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_195/while/lstm_cell_219/mulMul*lstm_195/while/lstm_cell_219/Sigmoid_1:y:0lstm_195_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_195/while/lstm_cell_219/ReluRelu+lstm_195/while/lstm_cell_219/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_195/while/lstm_cell_219/mul_1Mul(lstm_195/while/lstm_cell_219/Sigmoid:y:0/lstm_195/while/lstm_cell_219/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_195/while/lstm_cell_219/add_1AddV2$lstm_195/while/lstm_cell_219/mul:z:0&lstm_195/while/lstm_cell_219/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_195/while/lstm_cell_219/Sigmoid_2Sigmoid+lstm_195/while/lstm_cell_219/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_195/while/lstm_cell_219/Relu_1Relu&lstm_195/while/lstm_cell_219/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_195/while/lstm_cell_219/mul_2Mul*lstm_195/while/lstm_cell_219/Sigmoid_2:y:01lstm_195/while/lstm_cell_219/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_195/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_195_while_placeholder_1lstm_195_while_placeholder&lstm_195/while/lstm_cell_219/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_195/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_195/while/addAddV2lstm_195_while_placeholderlstm_195/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_195/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_195/while/add_1AddV2*lstm_195_while_lstm_195_while_loop_counterlstm_195/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_195/while/IdentityIdentitylstm_195/while/add_1:z:0^lstm_195/while/NoOp*
T0*
_output_shapes
: ?
lstm_195/while/Identity_1Identity0lstm_195_while_lstm_195_while_maximum_iterations^lstm_195/while/NoOp*
T0*
_output_shapes
: t
lstm_195/while/Identity_2Identitylstm_195/while/add:z:0^lstm_195/while/NoOp*
T0*
_output_shapes
: ?
lstm_195/while/Identity_3IdentityClstm_195/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_195/while/NoOp*
T0*
_output_shapes
: ?
lstm_195/while/Identity_4Identity&lstm_195/while/lstm_cell_219/mul_2:z:0^lstm_195/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_195/while/Identity_5Identity&lstm_195/while/lstm_cell_219/add_1:z:0^lstm_195/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_195/while/NoOpNoOp4^lstm_195/while/lstm_cell_219/BiasAdd/ReadVariableOp3^lstm_195/while/lstm_cell_219/MatMul/ReadVariableOp5^lstm_195/while/lstm_cell_219/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_195_while_identity lstm_195/while/Identity:output:0"?
lstm_195_while_identity_1"lstm_195/while/Identity_1:output:0"?
lstm_195_while_identity_2"lstm_195/while/Identity_2:output:0"?
lstm_195_while_identity_3"lstm_195/while/Identity_3:output:0"?
lstm_195_while_identity_4"lstm_195/while/Identity_4:output:0"?
lstm_195_while_identity_5"lstm_195/while/Identity_5:output:0"T
'lstm_195_while_lstm_195_strided_slice_1)lstm_195_while_lstm_195_strided_slice_1_0"~
<lstm_195_while_lstm_cell_219_biasadd_readvariableop_resource>lstm_195_while_lstm_cell_219_biasadd_readvariableop_resource_0"?
=lstm_195_while_lstm_cell_219_matmul_1_readvariableop_resource?lstm_195_while_lstm_cell_219_matmul_1_readvariableop_resource_0"|
;lstm_195_while_lstm_cell_219_matmul_readvariableop_resource=lstm_195_while_lstm_cell_219_matmul_readvariableop_resource_0"?
clstm_195_while_tensorarrayv2read_tensorlistgetitem_lstm_195_tensorarrayunstack_tensorlistfromtensorelstm_195_while_tensorarrayv2read_tensorlistgetitem_lstm_195_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_195/while/lstm_cell_219/BiasAdd/ReadVariableOp3lstm_195/while/lstm_cell_219/BiasAdd/ReadVariableOp2h
2lstm_195/while/lstm_cell_219/MatMul/ReadVariableOp2lstm_195/while/lstm_cell_219/MatMul/ReadVariableOp2l
4lstm_195/while/lstm_cell_219/MatMul_1/ReadVariableOp4lstm_195/while/lstm_cell_219/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_221_layer_call_and_return_conditional_losses_1338304

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
?8
?
while_body_1339352
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_219_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_219_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_219_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_219_matmul_readvariableop_resource:	?G
4while_lstm_cell_219_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_219_biasadd_readvariableop_resource:	???*while/lstm_cell_219/BiasAdd/ReadVariableOp?)while/lstm_cell_219/MatMul/ReadVariableOp?+while/lstm_cell_219/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_219/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_219_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_219/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_219/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_219/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_219_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_219/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_219/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_219/addAddV2$while/lstm_cell_219/MatMul:product:0&while/lstm_cell_219/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_219/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_219_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_219/BiasAddBiasAddwhile/lstm_cell_219/add:z:02while/lstm_cell_219/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_219/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_219/splitSplit,while/lstm_cell_219/split/split_dim:output:0$while/lstm_cell_219/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_219/SigmoidSigmoid"while/lstm_cell_219/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_219/Sigmoid_1Sigmoid"while/lstm_cell_219/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_219/mulMul!while/lstm_cell_219/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_219/ReluRelu"while/lstm_cell_219/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_219/mul_1Mulwhile/lstm_cell_219/Sigmoid:y:0&while/lstm_cell_219/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_219/add_1AddV2while/lstm_cell_219/mul:z:0while/lstm_cell_219/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_219/Sigmoid_2Sigmoid"while/lstm_cell_219/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_219/Relu_1Reluwhile/lstm_cell_219/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_219/mul_2Mul!while/lstm_cell_219/Sigmoid_2:y:0(while/lstm_cell_219/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_219/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_219/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_219/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_219/BiasAdd/ReadVariableOp*^while/lstm_cell_219/MatMul/ReadVariableOp,^while/lstm_cell_219/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_219_biasadd_readvariableop_resource5while_lstm_cell_219_biasadd_readvariableop_resource_0"n
4while_lstm_cell_219_matmul_1_readvariableop_resource6while_lstm_cell_219_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_219_matmul_readvariableop_resource4while_lstm_cell_219_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_219/BiasAdd/ReadVariableOp*while/lstm_cell_219/BiasAdd/ReadVariableOp2V
)while/lstm_cell_219/MatMul/ReadVariableOp)while/lstm_cell_219/MatMul/ReadVariableOp2Z
+while/lstm_cell_219/MatMul_1/ReadVariableOp+while/lstm_cell_219/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1341421
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_220_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_220_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_220_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_220_matmul_readvariableop_resource:	d?G
4while_lstm_cell_220_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_220_biasadd_readvariableop_resource:	???*while/lstm_cell_220/BiasAdd/ReadVariableOp?)while/lstm_cell_220/MatMul/ReadVariableOp?+while/lstm_cell_220/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_220/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_220_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_220/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_220/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_220/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_220_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_220/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_220/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_220/addAddV2$while/lstm_cell_220/MatMul:product:0&while/lstm_cell_220/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_220/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_220_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_220/BiasAddBiasAddwhile/lstm_cell_220/add:z:02while/lstm_cell_220/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_220/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_220/splitSplit,while/lstm_cell_220/split/split_dim:output:0$while/lstm_cell_220/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_220/SigmoidSigmoid"while/lstm_cell_220/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_220/Sigmoid_1Sigmoid"while/lstm_cell_220/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_220/mulMul!while/lstm_cell_220/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_220/ReluRelu"while/lstm_cell_220/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_220/mul_1Mulwhile/lstm_cell_220/Sigmoid:y:0&while/lstm_cell_220/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_220/add_1AddV2while/lstm_cell_220/mul:z:0while/lstm_cell_220/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_220/Sigmoid_2Sigmoid"while/lstm_cell_220/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_220/Relu_1Reluwhile/lstm_cell_220/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_220/mul_2Mul!while/lstm_cell_220/Sigmoid_2:y:0(while/lstm_cell_220/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_220/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_220/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_220/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_220/BiasAdd/ReadVariableOp*^while/lstm_cell_220/MatMul/ReadVariableOp,^while/lstm_cell_220/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_220_biasadd_readvariableop_resource5while_lstm_cell_220_biasadd_readvariableop_resource_0"n
4while_lstm_cell_220_matmul_1_readvariableop_resource6while_lstm_cell_220_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_220_matmul_readvariableop_resource4while_lstm_cell_220_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_220/BiasAdd/ReadVariableOp*while/lstm_cell_220/BiasAdd/ReadVariableOp2V
)while/lstm_cell_220/MatMul/ReadVariableOp)while/lstm_cell_220/MatMul/ReadVariableOp2Z
+while/lstm_cell_220/MatMul_1/ReadVariableOp+while/lstm_cell_220/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?#
?
while_body_1337822
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_220_1337846_0:	d?0
while_lstm_cell_220_1337848_0:	2?,
while_lstm_cell_220_1337850_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_220_1337846:	d?.
while_lstm_cell_220_1337848:	2?*
while_lstm_cell_220_1337850:	???+while/lstm_cell_220/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_220/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_220_1337846_0while_lstm_cell_220_1337848_0while_lstm_cell_220_1337850_0*
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
J__inference_lstm_cell_220_layer_call_and_return_conditional_losses_1337808?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_220/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_220/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_220/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_220/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_220_1337846while_lstm_cell_220_1337846_0"<
while_lstm_cell_220_1337848while_lstm_cell_220_1337848_0"<
while_lstm_cell_220_1337850while_lstm_cell_220_1337850_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_220/StatefulPartitionedCall+while/lstm_cell_220/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_1338171
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1338171___redundant_placeholder05
1while_while_cond_1338171___redundant_placeholder15
1while_while_cond_1338171___redundant_placeholder25
1while_while_cond_1338171___redundant_placeholder3
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
?K
?
E__inference_lstm_197_layer_call_and_return_conditional_losses_1342121
inputs_0>
,lstm_cell_221_matmul_readvariableop_resource:2(@
.lstm_cell_221_matmul_1_readvariableop_resource:
(;
-lstm_cell_221_biasadd_readvariableop_resource:(
identity??$lstm_cell_221/BiasAdd/ReadVariableOp?#lstm_cell_221/MatMul/ReadVariableOp?%lstm_cell_221/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_221/MatMul/ReadVariableOpReadVariableOp,lstm_cell_221_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_221/MatMulMatMulstrided_slice_2:output:0+lstm_cell_221/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_221/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_221_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_221/MatMul_1MatMulzeros:output:0-lstm_cell_221/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_221/addAddV2lstm_cell_221/MatMul:product:0 lstm_cell_221/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_221/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_221_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_221/BiasAddBiasAddlstm_cell_221/add:z:0,lstm_cell_221/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_221/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_221/splitSplit&lstm_cell_221/split/split_dim:output:0lstm_cell_221/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_221/SigmoidSigmoidlstm_cell_221/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_221/Sigmoid_1Sigmoidlstm_cell_221/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_221/mulMullstm_cell_221/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_221/ReluRelulstm_cell_221/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_221/mul_1Mullstm_cell_221/Sigmoid:y:0 lstm_cell_221/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_221/add_1AddV2lstm_cell_221/mul:z:0lstm_cell_221/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_221/Sigmoid_2Sigmoidlstm_cell_221/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_221/Relu_1Relulstm_cell_221/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_221/mul_2Mullstm_cell_221/Sigmoid_2:y:0"lstm_cell_221/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_221_matmul_readvariableop_resource.lstm_cell_221_matmul_1_readvariableop_resource-lstm_cell_221_biasadd_readvariableop_resource*
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
while_body_1342037*
condR
while_cond_1342036*K
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
NoOpNoOp%^lstm_cell_221/BiasAdd/ReadVariableOp$^lstm_cell_221/MatMul/ReadVariableOp&^lstm_cell_221/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_221/BiasAdd/ReadVariableOp$lstm_cell_221/BiasAdd/ReadVariableOp2J
#lstm_cell_221/MatMul/ReadVariableOp#lstm_cell_221/MatMul/ReadVariableOp2N
%lstm_cell_221/MatMul_1/ReadVariableOp%lstm_cell_221/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_220_layer_call_and_return_conditional_losses_1342590

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
?8
?
while_body_1342037
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_221_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_221_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_221_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_221_matmul_readvariableop_resource:2(F
4while_lstm_cell_221_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_221_biasadd_readvariableop_resource:(??*while/lstm_cell_221/BiasAdd/ReadVariableOp?)while/lstm_cell_221/MatMul/ReadVariableOp?+while/lstm_cell_221/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_221/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_221_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_221/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_221/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_221/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_221_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_221/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_221/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_221/addAddV2$while/lstm_cell_221/MatMul:product:0&while/lstm_cell_221/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_221/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_221_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_221/BiasAddBiasAddwhile/lstm_cell_221/add:z:02while/lstm_cell_221/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_221/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_221/splitSplit,while/lstm_cell_221/split/split_dim:output:0$while/lstm_cell_221/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_221/SigmoidSigmoid"while/lstm_cell_221/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_221/Sigmoid_1Sigmoid"while/lstm_cell_221/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_221/mulMul!while/lstm_cell_221/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_221/ReluRelu"while/lstm_cell_221/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_221/mul_1Mulwhile/lstm_cell_221/Sigmoid:y:0&while/lstm_cell_221/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_221/add_1AddV2while/lstm_cell_221/mul:z:0while/lstm_cell_221/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_221/Sigmoid_2Sigmoid"while/lstm_cell_221/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_221/Relu_1Reluwhile/lstm_cell_221/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_221/mul_2Mul!while/lstm_cell_221/Sigmoid_2:y:0(while/lstm_cell_221/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_221/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_221/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_221/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_221/BiasAdd/ReadVariableOp*^while/lstm_cell_221/MatMul/ReadVariableOp,^while/lstm_cell_221/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_221_biasadd_readvariableop_resource5while_lstm_cell_221_biasadd_readvariableop_resource_0"n
4while_lstm_cell_221_matmul_1_readvariableop_resource6while_lstm_cell_221_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_221_matmul_readvariableop_resource4while_lstm_cell_221_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_221/BiasAdd/ReadVariableOp*while/lstm_cell_221/BiasAdd/ReadVariableOp2V
)while/lstm_cell_221/MatMul/ReadVariableOp)while/lstm_cell_221/MatMul/ReadVariableOp2Z
+while/lstm_cell_221/MatMul_1/ReadVariableOp+while/lstm_cell_221/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_219_layer_call_and_return_conditional_losses_1337458

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
?J
?
E__inference_lstm_196_layer_call_and_return_conditional_losses_1341791

inputs?
,lstm_cell_220_matmul_readvariableop_resource:	d?A
.lstm_cell_220_matmul_1_readvariableop_resource:	2?<
-lstm_cell_220_biasadd_readvariableop_resource:	?
identity??$lstm_cell_220/BiasAdd/ReadVariableOp?#lstm_cell_220/MatMul/ReadVariableOp?%lstm_cell_220/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_220/MatMul/ReadVariableOpReadVariableOp,lstm_cell_220_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_220/MatMulMatMulstrided_slice_2:output:0+lstm_cell_220/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_220/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_220_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_220/MatMul_1MatMulzeros:output:0-lstm_cell_220/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_220/addAddV2lstm_cell_220/MatMul:product:0 lstm_cell_220/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_220/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_220_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_220/BiasAddBiasAddlstm_cell_220/add:z:0,lstm_cell_220/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_220/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_220/splitSplit&lstm_cell_220/split/split_dim:output:0lstm_cell_220/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_220/SigmoidSigmoidlstm_cell_220/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_220/Sigmoid_1Sigmoidlstm_cell_220/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_220/mulMullstm_cell_220/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_220/ReluRelulstm_cell_220/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_220/mul_1Mullstm_cell_220/Sigmoid:y:0 lstm_cell_220/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_220/add_1AddV2lstm_cell_220/mul:z:0lstm_cell_220/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_220/Sigmoid_2Sigmoidlstm_cell_220/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_220/Relu_1Relulstm_cell_220/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_220/mul_2Mullstm_cell_220/Sigmoid_2:y:0"lstm_cell_220/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_220_matmul_readvariableop_resource.lstm_cell_220_matmul_1_readvariableop_resource-lstm_cell_220_biasadd_readvariableop_resource*
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
while_body_1341707*
condR
while_cond_1341706*K
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
NoOpNoOp%^lstm_cell_220/BiasAdd/ReadVariableOp$^lstm_cell_220/MatMul/ReadVariableOp&^lstm_cell_220/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_220/BiasAdd/ReadVariableOp$lstm_cell_220/BiasAdd/ReadVariableOp2J
#lstm_cell_220/MatMul/ReadVariableOp#lstm_cell_220/MatMul/ReadVariableOp2N
%lstm_cell_220/MatMul_1/ReadVariableOp%lstm_cell_220/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_1342180
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_221_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_221_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_221_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_221_matmul_readvariableop_resource:2(F
4while_lstm_cell_221_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_221_biasadd_readvariableop_resource:(??*while/lstm_cell_221/BiasAdd/ReadVariableOp?)while/lstm_cell_221/MatMul/ReadVariableOp?+while/lstm_cell_221/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_221/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_221_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_221/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_221/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_221/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_221_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_221/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_221/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_221/addAddV2$while/lstm_cell_221/MatMul:product:0&while/lstm_cell_221/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_221/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_221_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_221/BiasAddBiasAddwhile/lstm_cell_221/add:z:02while/lstm_cell_221/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_221/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_221/splitSplit,while/lstm_cell_221/split/split_dim:output:0$while/lstm_cell_221/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_221/SigmoidSigmoid"while/lstm_cell_221/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_221/Sigmoid_1Sigmoid"while/lstm_cell_221/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_221/mulMul!while/lstm_cell_221/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_221/ReluRelu"while/lstm_cell_221/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_221/mul_1Mulwhile/lstm_cell_221/Sigmoid:y:0&while/lstm_cell_221/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_221/add_1AddV2while/lstm_cell_221/mul:z:0while/lstm_cell_221/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_221/Sigmoid_2Sigmoid"while/lstm_cell_221/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_221/Relu_1Reluwhile/lstm_cell_221/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_221/mul_2Mul!while/lstm_cell_221/Sigmoid_2:y:0(while/lstm_cell_221/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_221/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_221/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_221/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_221/BiasAdd/ReadVariableOp*^while/lstm_cell_221/MatMul/ReadVariableOp,^while/lstm_cell_221/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_221_biasadd_readvariableop_resource5while_lstm_cell_221_biasadd_readvariableop_resource_0"n
4while_lstm_cell_221_matmul_1_readvariableop_resource6while_lstm_cell_221_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_221_matmul_readvariableop_resource4while_lstm_cell_221_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_221/BiasAdd/ReadVariableOp*while/lstm_cell_221/BiasAdd/ReadVariableOp2V
)while/lstm_cell_221/MatMul/ReadVariableOp)while/lstm_cell_221/MatMul/ReadVariableOp2Z
+while/lstm_cell_221/MatMul_1/ReadVariableOp+while/lstm_cell_221/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
while_body_1341564
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_220_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_220_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_220_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_220_matmul_readvariableop_resource:	d?G
4while_lstm_cell_220_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_220_biasadd_readvariableop_resource:	???*while/lstm_cell_220/BiasAdd/ReadVariableOp?)while/lstm_cell_220/MatMul/ReadVariableOp?+while/lstm_cell_220/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_220/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_220_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_220/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_220/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_220/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_220_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_220/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_220/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_220/addAddV2$while/lstm_cell_220/MatMul:product:0&while/lstm_cell_220/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_220/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_220_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_220/BiasAddBiasAddwhile/lstm_cell_220/add:z:02while/lstm_cell_220/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_220/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_220/splitSplit,while/lstm_cell_220/split/split_dim:output:0$while/lstm_cell_220/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_220/SigmoidSigmoid"while/lstm_cell_220/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_220/Sigmoid_1Sigmoid"while/lstm_cell_220/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_220/mulMul!while/lstm_cell_220/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_220/ReluRelu"while/lstm_cell_220/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_220/mul_1Mulwhile/lstm_cell_220/Sigmoid:y:0&while/lstm_cell_220/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_220/add_1AddV2while/lstm_cell_220/mul:z:0while/lstm_cell_220/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_220/Sigmoid_2Sigmoid"while/lstm_cell_220/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_220/Relu_1Reluwhile/lstm_cell_220/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_220/mul_2Mul!while/lstm_cell_220/Sigmoid_2:y:0(while/lstm_cell_220/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_220/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_220/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_220/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_220/BiasAdd/ReadVariableOp*^while/lstm_cell_220/MatMul/ReadVariableOp,^while/lstm_cell_220/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_220_biasadd_readvariableop_resource5while_lstm_cell_220_biasadd_readvariableop_resource_0"n
4while_lstm_cell_220_matmul_1_readvariableop_resource6while_lstm_cell_220_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_220_matmul_readvariableop_resource4while_lstm_cell_220_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_220/BiasAdd/ReadVariableOp*while/lstm_cell_220/BiasAdd/ReadVariableOp2V
)while/lstm_cell_220/MatMul/ReadVariableOp)while/lstm_cell_220/MatMul/ReadVariableOp2Z
+while/lstm_cell_220/MatMul_1/ReadVariableOp+while/lstm_cell_220/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_219_layer_call_and_return_conditional_losses_1337604

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
?
?
while_cond_1341706
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1341706___redundant_placeholder05
1while_while_cond_1341706___redundant_placeholder15
1while_while_cond_1341706___redundant_placeholder25
1while_while_cond_1341706___redundant_placeholder3
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
?
/__inference_lstm_cell_221_layer_call_fn_1342656

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
J__inference_lstm_cell_221_layer_call_and_return_conditional_losses_1338304o
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
?
?
)sequential_65_lstm_197_while_cond_1337300J
Fsequential_65_lstm_197_while_sequential_65_lstm_197_while_loop_counterP
Lsequential_65_lstm_197_while_sequential_65_lstm_197_while_maximum_iterations,
(sequential_65_lstm_197_while_placeholder.
*sequential_65_lstm_197_while_placeholder_1.
*sequential_65_lstm_197_while_placeholder_2.
*sequential_65_lstm_197_while_placeholder_3L
Hsequential_65_lstm_197_while_less_sequential_65_lstm_197_strided_slice_1c
_sequential_65_lstm_197_while_sequential_65_lstm_197_while_cond_1337300___redundant_placeholder0c
_sequential_65_lstm_197_while_sequential_65_lstm_197_while_cond_1337300___redundant_placeholder1c
_sequential_65_lstm_197_while_sequential_65_lstm_197_while_cond_1337300___redundant_placeholder2c
_sequential_65_lstm_197_while_sequential_65_lstm_197_while_cond_1337300___redundant_placeholder3)
%sequential_65_lstm_197_while_identity
?
!sequential_65/lstm_197/while/LessLess(sequential_65_lstm_197_while_placeholderHsequential_65_lstm_197_while_less_sequential_65_lstm_197_strided_slice_1*
T0*
_output_shapes
: y
%sequential_65/lstm_197/while/IdentityIdentity%sequential_65/lstm_197/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_65_lstm_197_while_identity.sequential_65/lstm_197/while/Identity:output:0*(
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
?8
?
while_body_1340948
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_219_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_219_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_219_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_219_matmul_readvariableop_resource:	?G
4while_lstm_cell_219_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_219_biasadd_readvariableop_resource:	???*while/lstm_cell_219/BiasAdd/ReadVariableOp?)while/lstm_cell_219/MatMul/ReadVariableOp?+while/lstm_cell_219/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_219/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_219_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_219/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_219/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_219/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_219_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_219/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_219/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_219/addAddV2$while/lstm_cell_219/MatMul:product:0&while/lstm_cell_219/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_219/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_219_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_219/BiasAddBiasAddwhile/lstm_cell_219/add:z:02while/lstm_cell_219/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_219/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_219/splitSplit,while/lstm_cell_219/split/split_dim:output:0$while/lstm_cell_219/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_219/SigmoidSigmoid"while/lstm_cell_219/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_219/Sigmoid_1Sigmoid"while/lstm_cell_219/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_219/mulMul!while/lstm_cell_219/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_219/ReluRelu"while/lstm_cell_219/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_219/mul_1Mulwhile/lstm_cell_219/Sigmoid:y:0&while/lstm_cell_219/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_219/add_1AddV2while/lstm_cell_219/mul:z:0while/lstm_cell_219/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_219/Sigmoid_2Sigmoid"while/lstm_cell_219/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_219/Relu_1Reluwhile/lstm_cell_219/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_219/mul_2Mul!while/lstm_cell_219/Sigmoid_2:y:0(while/lstm_cell_219/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_219/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_219/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_219/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_219/BiasAdd/ReadVariableOp*^while/lstm_cell_219/MatMul/ReadVariableOp,^while/lstm_cell_219/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_219_biasadd_readvariableop_resource5while_lstm_cell_219_biasadd_readvariableop_resource_0"n
4while_lstm_cell_219_matmul_1_readvariableop_resource6while_lstm_cell_219_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_219_matmul_readvariableop_resource4while_lstm_cell_219_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_219/BiasAdd/ReadVariableOp*while/lstm_cell_219/BiasAdd/ReadVariableOp2V
)while/lstm_cell_219/MatMul/ReadVariableOp)while/lstm_cell_219/MatMul/ReadVariableOp2Z
+while/lstm_cell_219/MatMul_1/ReadVariableOp+while/lstm_cell_219/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?

?
/__inference_sequential_65_layer_call_fn_1339705

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
J__inference_sequential_65_layer_call_and_return_conditional_losses_1339504o
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
?
?
*__inference_lstm_196_layer_call_fn_1341219

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
E__inference_lstm_196_layer_call_and_return_conditional_losses_1339271s
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
?J
?
E__inference_lstm_195_layer_call_and_return_conditional_losses_1341175

inputs?
,lstm_cell_219_matmul_readvariableop_resource:	?A
.lstm_cell_219_matmul_1_readvariableop_resource:	d?<
-lstm_cell_219_biasadd_readvariableop_resource:	?
identity??$lstm_cell_219/BiasAdd/ReadVariableOp?#lstm_cell_219/MatMul/ReadVariableOp?%lstm_cell_219/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_219/MatMul/ReadVariableOpReadVariableOp,lstm_cell_219_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_219/MatMulMatMulstrided_slice_2:output:0+lstm_cell_219/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_219/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_219_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_219/MatMul_1MatMulzeros:output:0-lstm_cell_219/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_219/addAddV2lstm_cell_219/MatMul:product:0 lstm_cell_219/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_219/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_219_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_219/BiasAddBiasAddlstm_cell_219/add:z:0,lstm_cell_219/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_219/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_219/splitSplit&lstm_cell_219/split/split_dim:output:0lstm_cell_219/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_219/SigmoidSigmoidlstm_cell_219/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_219/Sigmoid_1Sigmoidlstm_cell_219/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_219/mulMullstm_cell_219/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_219/ReluRelulstm_cell_219/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_219/mul_1Mullstm_cell_219/Sigmoid:y:0 lstm_cell_219/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_219/add_1AddV2lstm_cell_219/mul:z:0lstm_cell_219/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_219/Sigmoid_2Sigmoidlstm_cell_219/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_219/Relu_1Relulstm_cell_219/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_219/mul_2Mullstm_cell_219/Sigmoid_2:y:0"lstm_cell_219/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_219_matmul_readvariableop_resource.lstm_cell_219_matmul_1_readvariableop_resource-lstm_cell_219_biasadd_readvariableop_resource*
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
while_body_1341091*
condR
while_cond_1341090*K
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
NoOpNoOp%^lstm_cell_219/BiasAdd/ReadVariableOp$^lstm_cell_219/MatMul/ReadVariableOp&^lstm_cell_219/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_219/BiasAdd/ReadVariableOp$lstm_cell_219/BiasAdd/ReadVariableOp2J
#lstm_cell_219/MatMul/ReadVariableOp#lstm_cell_219/MatMul/ReadVariableOp2N
%lstm_cell_219/MatMul_1/ReadVariableOp%lstm_cell_219/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_197_layer_call_fn_1341835

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
E__inference_lstm_197_layer_call_and_return_conditional_losses_1339106o
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
?8
?
while_body_1338656
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_220_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_220_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_220_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_220_matmul_readvariableop_resource:	d?G
4while_lstm_cell_220_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_220_biasadd_readvariableop_resource:	???*while/lstm_cell_220/BiasAdd/ReadVariableOp?)while/lstm_cell_220/MatMul/ReadVariableOp?+while/lstm_cell_220/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_220/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_220_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_220/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_220/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_220/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_220_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_220/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_220/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_220/addAddV2$while/lstm_cell_220/MatMul:product:0&while/lstm_cell_220/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_220/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_220_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_220/BiasAddBiasAddwhile/lstm_cell_220/add:z:02while/lstm_cell_220/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_220/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_220/splitSplit,while/lstm_cell_220/split/split_dim:output:0$while/lstm_cell_220/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_220/SigmoidSigmoid"while/lstm_cell_220/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_220/Sigmoid_1Sigmoid"while/lstm_cell_220/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_220/mulMul!while/lstm_cell_220/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_220/ReluRelu"while/lstm_cell_220/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_220/mul_1Mulwhile/lstm_cell_220/Sigmoid:y:0&while/lstm_cell_220/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_220/add_1AddV2while/lstm_cell_220/mul:z:0while/lstm_cell_220/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_220/Sigmoid_2Sigmoid"while/lstm_cell_220/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_220/Relu_1Reluwhile/lstm_cell_220/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_220/mul_2Mul!while/lstm_cell_220/Sigmoid_2:y:0(while/lstm_cell_220/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_220/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_220/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_220/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_220/BiasAdd/ReadVariableOp*^while/lstm_cell_220/MatMul/ReadVariableOp,^while/lstm_cell_220/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_220_biasadd_readvariableop_resource5while_lstm_cell_220_biasadd_readvariableop_resource_0"n
4while_lstm_cell_220_matmul_1_readvariableop_resource6while_lstm_cell_220_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_220_matmul_readvariableop_resource4while_lstm_cell_220_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_220/BiasAdd/ReadVariableOp*while/lstm_cell_220/BiasAdd/ReadVariableOp2V
)while/lstm_cell_220/MatMul/ReadVariableOp)while/lstm_cell_220/MatMul/ReadVariableOp2Z
+while/lstm_cell_220/MatMul_1/ReadVariableOp+while/lstm_cell_220/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?#
?
while_body_1338172
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_221_1338196_0:2(/
while_lstm_cell_221_1338198_0:
(+
while_lstm_cell_221_1338200_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_221_1338196:2(-
while_lstm_cell_221_1338198:
()
while_lstm_cell_221_1338200:(??+while/lstm_cell_221/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_221/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_221_1338196_0while_lstm_cell_221_1338198_0while_lstm_cell_221_1338200_0*
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
J__inference_lstm_cell_221_layer_call_and_return_conditional_losses_1338158?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_221/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_221/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_221/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_221/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_221_1338196while_lstm_cell_221_1338196_0"<
while_lstm_cell_221_1338198while_lstm_cell_221_1338198_0"<
while_lstm_cell_221_1338200while_lstm_cell_221_1338200_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_221/StatefulPartitionedCall+while/lstm_cell_221/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_221_layer_call_and_return_conditional_losses_1342720

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
?
?
J__inference_lstm_cell_221_layer_call_and_return_conditional_losses_1342688

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
?

?
lstm_195_while_cond_1339763.
*lstm_195_while_lstm_195_while_loop_counter4
0lstm_195_while_lstm_195_while_maximum_iterations
lstm_195_while_placeholder 
lstm_195_while_placeholder_1 
lstm_195_while_placeholder_2 
lstm_195_while_placeholder_30
,lstm_195_while_less_lstm_195_strided_slice_1G
Clstm_195_while_lstm_195_while_cond_1339763___redundant_placeholder0G
Clstm_195_while_lstm_195_while_cond_1339763___redundant_placeholder1G
Clstm_195_while_lstm_195_while_cond_1339763___redundant_placeholder2G
Clstm_195_while_lstm_195_while_cond_1339763___redundant_placeholder3
lstm_195_while_identity
?
lstm_195/while/LessLesslstm_195_while_placeholder,lstm_195_while_less_lstm_195_strided_slice_1*
T0*
_output_shapes
: ]
lstm_195/while/IdentityIdentitylstm_195/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_195_while_identity lstm_195/while/Identity:output:0*(
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
while_cond_1340947
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1340947___redundant_placeholder05
1while_while_cond_1340947___redundant_placeholder15
1while_while_cond_1340947___redundant_placeholder25
1while_while_cond_1340947___redundant_placeholder3
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
E__inference_lstm_197_layer_call_and_return_conditional_losses_1342264

inputs>
,lstm_cell_221_matmul_readvariableop_resource:2(@
.lstm_cell_221_matmul_1_readvariableop_resource:
(;
-lstm_cell_221_biasadd_readvariableop_resource:(
identity??$lstm_cell_221/BiasAdd/ReadVariableOp?#lstm_cell_221/MatMul/ReadVariableOp?%lstm_cell_221/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_221/MatMul/ReadVariableOpReadVariableOp,lstm_cell_221_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_221/MatMulMatMulstrided_slice_2:output:0+lstm_cell_221/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_221/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_221_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_221/MatMul_1MatMulzeros:output:0-lstm_cell_221/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_221/addAddV2lstm_cell_221/MatMul:product:0 lstm_cell_221/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_221/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_221_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_221/BiasAddBiasAddlstm_cell_221/add:z:0,lstm_cell_221/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_221/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_221/splitSplit&lstm_cell_221/split/split_dim:output:0lstm_cell_221/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_221/SigmoidSigmoidlstm_cell_221/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_221/Sigmoid_1Sigmoidlstm_cell_221/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_221/mulMullstm_cell_221/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_221/ReluRelulstm_cell_221/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_221/mul_1Mullstm_cell_221/Sigmoid:y:0 lstm_cell_221/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_221/add_1AddV2lstm_cell_221/mul:z:0lstm_cell_221/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_221/Sigmoid_2Sigmoidlstm_cell_221/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_221/Relu_1Relulstm_cell_221/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_221/mul_2Mullstm_cell_221/Sigmoid_2:y:0"lstm_cell_221/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_221_matmul_readvariableop_resource.lstm_cell_221_matmul_1_readvariableop_resource-lstm_cell_221_biasadd_readvariableop_resource*
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
while_body_1342180*
condR
while_cond_1342179*K
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
NoOpNoOp%^lstm_cell_221/BiasAdd/ReadVariableOp$^lstm_cell_221/MatMul/ReadVariableOp&^lstm_cell_221/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_221/BiasAdd/ReadVariableOp$lstm_cell_221/BiasAdd/ReadVariableOp2J
#lstm_cell_221/MatMul/ReadVariableOp#lstm_cell_221/MatMul/ReadVariableOp2N
%lstm_cell_221/MatMul_1/ReadVariableOp%lstm_cell_221/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_1339021
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1339021___redundant_placeholder05
1while_while_cond_1339021___redundant_placeholder15
1while_while_cond_1339021___redundant_placeholder25
1while_while_cond_1339021___redundant_placeholder3
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
while_body_1337663
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_219_1337687_0:	?0
while_lstm_cell_219_1337689_0:	d?,
while_lstm_cell_219_1337691_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_219_1337687:	?.
while_lstm_cell_219_1337689:	d?*
while_lstm_cell_219_1337691:	???+while/lstm_cell_219/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_219/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_219_1337687_0while_lstm_cell_219_1337689_0while_lstm_cell_219_1337691_0*
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
J__inference_lstm_cell_219_layer_call_and_return_conditional_losses_1337604?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_219/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_219/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_219/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_219/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_219_1337687while_lstm_cell_219_1337687_0"<
while_lstm_cell_219_1337689while_lstm_cell_219_1337689_0"<
while_lstm_cell_219_1337691while_lstm_cell_219_1337691_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_219/StatefulPartitionedCall+while/lstm_cell_219/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_1339022
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_221_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_221_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_221_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_221_matmul_readvariableop_resource:2(F
4while_lstm_cell_221_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_221_biasadd_readvariableop_resource:(??*while/lstm_cell_221/BiasAdd/ReadVariableOp?)while/lstm_cell_221/MatMul/ReadVariableOp?+while/lstm_cell_221/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_221/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_221_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_221/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_221/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_221/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_221_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_221/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_221/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_221/addAddV2$while/lstm_cell_221/MatMul:product:0&while/lstm_cell_221/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_221/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_221_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_221/BiasAddBiasAddwhile/lstm_cell_221/add:z:02while/lstm_cell_221/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_221/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_221/splitSplit,while/lstm_cell_221/split/split_dim:output:0$while/lstm_cell_221/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_221/SigmoidSigmoid"while/lstm_cell_221/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_221/Sigmoid_1Sigmoid"while/lstm_cell_221/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_221/mulMul!while/lstm_cell_221/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_221/ReluRelu"while/lstm_cell_221/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_221/mul_1Mulwhile/lstm_cell_221/Sigmoid:y:0&while/lstm_cell_221/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_221/add_1AddV2while/lstm_cell_221/mul:z:0while/lstm_cell_221/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_221/Sigmoid_2Sigmoid"while/lstm_cell_221/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_221/Relu_1Reluwhile/lstm_cell_221/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_221/mul_2Mul!while/lstm_cell_221/Sigmoid_2:y:0(while/lstm_cell_221/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_221/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_221/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_221/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_221/BiasAdd/ReadVariableOp*^while/lstm_cell_221/MatMul/ReadVariableOp,^while/lstm_cell_221/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_221_biasadd_readvariableop_resource5while_lstm_cell_221_biasadd_readvariableop_resource_0"n
4while_lstm_cell_221_matmul_1_readvariableop_resource6while_lstm_cell_221_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_221_matmul_readvariableop_resource4while_lstm_cell_221_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_221/BiasAdd/ReadVariableOp*while/lstm_cell_221/BiasAdd/ReadVariableOp2V
)while/lstm_cell_221/MatMul/ReadVariableOp)while/lstm_cell_221/MatMul/ReadVariableOp2Z
+while/lstm_cell_221/MatMul_1/ReadVariableOp+while/lstm_cell_221/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

?
lstm_195_while_cond_1340190.
*lstm_195_while_lstm_195_while_loop_counter4
0lstm_195_while_lstm_195_while_maximum_iterations
lstm_195_while_placeholder 
lstm_195_while_placeholder_1 
lstm_195_while_placeholder_2 
lstm_195_while_placeholder_30
,lstm_195_while_less_lstm_195_strided_slice_1G
Clstm_195_while_lstm_195_while_cond_1340190___redundant_placeholder0G
Clstm_195_while_lstm_195_while_cond_1340190___redundant_placeholder1G
Clstm_195_while_lstm_195_while_cond_1340190___redundant_placeholder2G
Clstm_195_while_lstm_195_while_cond_1340190___redundant_placeholder3
lstm_195_while_identity
?
lstm_195/while/LessLesslstm_195_while_placeholder,lstm_195_while_less_lstm_195_strided_slice_1*
T0*
_output_shapes
: ]
lstm_195/while/IdentityIdentitylstm_195/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_195_while_identity lstm_195/while/Identity:output:0*(
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
?
E__inference_lstm_197_layer_call_and_return_conditional_losses_1338432

inputs'
lstm_cell_221_1338350:2('
lstm_cell_221_1338352:
(#
lstm_cell_221_1338354:(
identity??%lstm_cell_221/StatefulPartitionedCall?while;
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
%lstm_cell_221/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_221_1338350lstm_cell_221_1338352lstm_cell_221_1338354*
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
J__inference_lstm_cell_221_layer_call_and_return_conditional_losses_1338304n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_221_1338350lstm_cell_221_1338352lstm_cell_221_1338354*
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
while_body_1338363*
condR
while_cond_1338362*K
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
NoOpNoOp&^lstm_cell_221/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_221/StatefulPartitionedCall%lstm_cell_221/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_1342323
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_221_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_221_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_221_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_221_matmul_readvariableop_resource:2(F
4while_lstm_cell_221_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_221_biasadd_readvariableop_resource:(??*while/lstm_cell_221/BiasAdd/ReadVariableOp?)while/lstm_cell_221/MatMul/ReadVariableOp?+while/lstm_cell_221/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_221/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_221_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_221/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_221/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_221/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_221_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_221/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_221/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_221/addAddV2$while/lstm_cell_221/MatMul:product:0&while/lstm_cell_221/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_221/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_221_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_221/BiasAddBiasAddwhile/lstm_cell_221/add:z:02while/lstm_cell_221/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_221/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_221/splitSplit,while/lstm_cell_221/split/split_dim:output:0$while/lstm_cell_221/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_221/SigmoidSigmoid"while/lstm_cell_221/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_221/Sigmoid_1Sigmoid"while/lstm_cell_221/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_221/mulMul!while/lstm_cell_221/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_221/ReluRelu"while/lstm_cell_221/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_221/mul_1Mulwhile/lstm_cell_221/Sigmoid:y:0&while/lstm_cell_221/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_221/add_1AddV2while/lstm_cell_221/mul:z:0while/lstm_cell_221/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_221/Sigmoid_2Sigmoid"while/lstm_cell_221/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_221/Relu_1Reluwhile/lstm_cell_221/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_221/mul_2Mul!while/lstm_cell_221/Sigmoid_2:y:0(while/lstm_cell_221/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_221/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_221/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_221/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_221/BiasAdd/ReadVariableOp*^while/lstm_cell_221/MatMul/ReadVariableOp,^while/lstm_cell_221/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_221_biasadd_readvariableop_resource5while_lstm_cell_221_biasadd_readvariableop_resource_0"n
4while_lstm_cell_221_matmul_1_readvariableop_resource6while_lstm_cell_221_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_221_matmul_readvariableop_resource4while_lstm_cell_221_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_221/BiasAdd/ReadVariableOp*while/lstm_cell_221/BiasAdd/ReadVariableOp2V
)while/lstm_cell_221/MatMul/ReadVariableOp)while/lstm_cell_221/MatMul/ReadVariableOp2Z
+while/lstm_cell_221/MatMul_1/ReadVariableOp+while/lstm_cell_221/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_1339651
lstm_195_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_195_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1337391o
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
_user_specified_namelstm_195_input
?J
?
E__inference_lstm_196_layer_call_and_return_conditional_losses_1339271

inputs?
,lstm_cell_220_matmul_readvariableop_resource:	d?A
.lstm_cell_220_matmul_1_readvariableop_resource:	2?<
-lstm_cell_220_biasadd_readvariableop_resource:	?
identity??$lstm_cell_220/BiasAdd/ReadVariableOp?#lstm_cell_220/MatMul/ReadVariableOp?%lstm_cell_220/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_220/MatMul/ReadVariableOpReadVariableOp,lstm_cell_220_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_220/MatMulMatMulstrided_slice_2:output:0+lstm_cell_220/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_220/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_220_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_220/MatMul_1MatMulzeros:output:0-lstm_cell_220/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_220/addAddV2lstm_cell_220/MatMul:product:0 lstm_cell_220/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_220/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_220_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_220/BiasAddBiasAddlstm_cell_220/add:z:0,lstm_cell_220/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_220/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_220/splitSplit&lstm_cell_220/split/split_dim:output:0lstm_cell_220/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_220/SigmoidSigmoidlstm_cell_220/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_220/Sigmoid_1Sigmoidlstm_cell_220/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_220/mulMullstm_cell_220/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_220/ReluRelulstm_cell_220/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_220/mul_1Mullstm_cell_220/Sigmoid:y:0 lstm_cell_220/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_220/add_1AddV2lstm_cell_220/mul:z:0lstm_cell_220/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_220/Sigmoid_2Sigmoidlstm_cell_220/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_220/Relu_1Relulstm_cell_220/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_220/mul_2Mullstm_cell_220/Sigmoid_2:y:0"lstm_cell_220/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_220_matmul_readvariableop_resource.lstm_cell_220_matmul_1_readvariableop_resource-lstm_cell_220_biasadd_readvariableop_resource*
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
while_body_1339187*
condR
while_cond_1339186*K
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
NoOpNoOp%^lstm_cell_220/BiasAdd/ReadVariableOp$^lstm_cell_220/MatMul/ReadVariableOp&^lstm_cell_220/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_220/BiasAdd/ReadVariableOp$lstm_cell_220/BiasAdd/ReadVariableOp2J
#lstm_cell_220/MatMul/ReadVariableOp#lstm_cell_220/MatMul/ReadVariableOp2N
%lstm_cell_220/MatMul_1/ReadVariableOp%lstm_cell_220/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_220_layer_call_fn_1342558

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
J__inference_lstm_cell_220_layer_call_and_return_conditional_losses_1337954o
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
while_cond_1341893
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1341893___redundant_placeholder05
1while_while_cond_1341893___redundant_placeholder15
1while_while_cond_1341893___redundant_placeholder25
1while_while_cond_1341893___redundant_placeholder3
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
while_cond_1338362
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1338362___redundant_placeholder05
1while_while_cond_1338362___redundant_placeholder15
1while_while_cond_1338362___redundant_placeholder25
1while_while_cond_1338362___redundant_placeholder3
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
E__inference_dense_65_layer_call_and_return_conditional_losses_1342426

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
?K
?
E__inference_lstm_196_layer_call_and_return_conditional_losses_1341505
inputs_0?
,lstm_cell_220_matmul_readvariableop_resource:	d?A
.lstm_cell_220_matmul_1_readvariableop_resource:	2?<
-lstm_cell_220_biasadd_readvariableop_resource:	?
identity??$lstm_cell_220/BiasAdd/ReadVariableOp?#lstm_cell_220/MatMul/ReadVariableOp?%lstm_cell_220/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_220/MatMul/ReadVariableOpReadVariableOp,lstm_cell_220_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_220/MatMulMatMulstrided_slice_2:output:0+lstm_cell_220/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_220/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_220_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_220/MatMul_1MatMulzeros:output:0-lstm_cell_220/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_220/addAddV2lstm_cell_220/MatMul:product:0 lstm_cell_220/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_220/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_220_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_220/BiasAddBiasAddlstm_cell_220/add:z:0,lstm_cell_220/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_220/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_220/splitSplit&lstm_cell_220/split/split_dim:output:0lstm_cell_220/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_220/SigmoidSigmoidlstm_cell_220/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_220/Sigmoid_1Sigmoidlstm_cell_220/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_220/mulMullstm_cell_220/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_220/ReluRelulstm_cell_220/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_220/mul_1Mullstm_cell_220/Sigmoid:y:0 lstm_cell_220/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_220/add_1AddV2lstm_cell_220/mul:z:0lstm_cell_220/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_220/Sigmoid_2Sigmoidlstm_cell_220/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_220/Relu_1Relulstm_cell_220/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_220/mul_2Mullstm_cell_220/Sigmoid_2:y:0"lstm_cell_220/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_220_matmul_readvariableop_resource.lstm_cell_220_matmul_1_readvariableop_resource-lstm_cell_220_biasadd_readvariableop_resource*
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
while_body_1341421*
condR
while_cond_1341420*K
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
NoOpNoOp%^lstm_cell_220/BiasAdd/ReadVariableOp$^lstm_cell_220/MatMul/ReadVariableOp&^lstm_cell_220/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_220/BiasAdd/ReadVariableOp$lstm_cell_220/BiasAdd/ReadVariableOp2J
#lstm_cell_220/MatMul/ReadVariableOp#lstm_cell_220/MatMul/ReadVariableOp2N
%lstm_cell_220/MatMul_1/ReadVariableOp%lstm_cell_220/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_1341563
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1341563___redundant_placeholder05
1while_while_cond_1341563___redundant_placeholder15
1while_while_cond_1341563___redundant_placeholder25
1while_while_cond_1341563___redundant_placeholder3
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
while_cond_1338012
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1338012___redundant_placeholder05
1while_while_cond_1338012___redundant_placeholder15
1while_while_cond_1338012___redundant_placeholder25
1while_while_cond_1338012___redundant_placeholder3
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
while_body_1338806
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_221_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_221_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_221_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_221_matmul_readvariableop_resource:2(F
4while_lstm_cell_221_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_221_biasadd_readvariableop_resource:(??*while/lstm_cell_221/BiasAdd/ReadVariableOp?)while/lstm_cell_221/MatMul/ReadVariableOp?+while/lstm_cell_221/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_221/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_221_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_221/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_221/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_221/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_221_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_221/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_221/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_221/addAddV2$while/lstm_cell_221/MatMul:product:0&while/lstm_cell_221/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_221/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_221_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_221/BiasAddBiasAddwhile/lstm_cell_221/add:z:02while/lstm_cell_221/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_221/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_221/splitSplit,while/lstm_cell_221/split/split_dim:output:0$while/lstm_cell_221/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_221/SigmoidSigmoid"while/lstm_cell_221/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_221/Sigmoid_1Sigmoid"while/lstm_cell_221/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_221/mulMul!while/lstm_cell_221/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_221/ReluRelu"while/lstm_cell_221/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_221/mul_1Mulwhile/lstm_cell_221/Sigmoid:y:0&while/lstm_cell_221/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_221/add_1AddV2while/lstm_cell_221/mul:z:0while/lstm_cell_221/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_221/Sigmoid_2Sigmoid"while/lstm_cell_221/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_221/Relu_1Reluwhile/lstm_cell_221/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_221/mul_2Mul!while/lstm_cell_221/Sigmoid_2:y:0(while/lstm_cell_221/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_221/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_221/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_221/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_221/BiasAdd/ReadVariableOp*^while/lstm_cell_221/MatMul/ReadVariableOp,^while/lstm_cell_221/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_221_biasadd_readvariableop_resource5while_lstm_cell_221_biasadd_readvariableop_resource_0"n
4while_lstm_cell_221_matmul_1_readvariableop_resource6while_lstm_cell_221_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_221_matmul_readvariableop_resource4while_lstm_cell_221_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_221/BiasAdd/ReadVariableOp*while/lstm_cell_221/BiasAdd/ReadVariableOp2V
)while/lstm_cell_221/MatMul/ReadVariableOp)while/lstm_cell_221/MatMul/ReadVariableOp2Z
+while/lstm_cell_221/MatMul_1/ReadVariableOp+while/lstm_cell_221/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1337662
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1337662___redundant_placeholder05
1while_while_cond_1337662___redundant_placeholder15
1while_while_cond_1337662___redundant_placeholder25
1while_while_cond_1337662___redundant_placeholder3
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
while_body_1341894
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_221_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_221_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_221_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_221_matmul_readvariableop_resource:2(F
4while_lstm_cell_221_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_221_biasadd_readvariableop_resource:(??*while/lstm_cell_221/BiasAdd/ReadVariableOp?)while/lstm_cell_221/MatMul/ReadVariableOp?+while/lstm_cell_221/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_221/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_221_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_221/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_221/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_221/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_221_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_221/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_221/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_221/addAddV2$while/lstm_cell_221/MatMul:product:0&while/lstm_cell_221/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_221/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_221_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_221/BiasAddBiasAddwhile/lstm_cell_221/add:z:02while/lstm_cell_221/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_221/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_221/splitSplit,while/lstm_cell_221/split/split_dim:output:0$while/lstm_cell_221/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_221/SigmoidSigmoid"while/lstm_cell_221/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_221/Sigmoid_1Sigmoid"while/lstm_cell_221/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_221/mulMul!while/lstm_cell_221/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_221/ReluRelu"while/lstm_cell_221/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_221/mul_1Mulwhile/lstm_cell_221/Sigmoid:y:0&while/lstm_cell_221/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_221/add_1AddV2while/lstm_cell_221/mul:z:0while/lstm_cell_221/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_221/Sigmoid_2Sigmoid"while/lstm_cell_221/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_221/Relu_1Reluwhile/lstm_cell_221/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_221/mul_2Mul!while/lstm_cell_221/Sigmoid_2:y:0(while/lstm_cell_221/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_221/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_221/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_221/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_221/BiasAdd/ReadVariableOp*^while/lstm_cell_221/MatMul/ReadVariableOp,^while/lstm_cell_221/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_221_biasadd_readvariableop_resource5while_lstm_cell_221_biasadd_readvariableop_resource_0"n
4while_lstm_cell_221_matmul_1_readvariableop_resource6while_lstm_cell_221_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_221_matmul_readvariableop_resource4while_lstm_cell_221_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_221/BiasAdd/ReadVariableOp*while/lstm_cell_221/BiasAdd/ReadVariableOp2V
)while/lstm_cell_221/MatMul/ReadVariableOp)while/lstm_cell_221/MatMul/ReadVariableOp2Z
+while/lstm_cell_221/MatMul_1/ReadVariableOp+while/lstm_cell_221/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?K
?
E__inference_lstm_197_layer_call_and_return_conditional_losses_1341978
inputs_0>
,lstm_cell_221_matmul_readvariableop_resource:2(@
.lstm_cell_221_matmul_1_readvariableop_resource:
(;
-lstm_cell_221_biasadd_readvariableop_resource:(
identity??$lstm_cell_221/BiasAdd/ReadVariableOp?#lstm_cell_221/MatMul/ReadVariableOp?%lstm_cell_221/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_221/MatMul/ReadVariableOpReadVariableOp,lstm_cell_221_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_221/MatMulMatMulstrided_slice_2:output:0+lstm_cell_221/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_221/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_221_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_221/MatMul_1MatMulzeros:output:0-lstm_cell_221/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_221/addAddV2lstm_cell_221/MatMul:product:0 lstm_cell_221/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_221/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_221_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_221/BiasAddBiasAddlstm_cell_221/add:z:0,lstm_cell_221/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_221/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_221/splitSplit&lstm_cell_221/split/split_dim:output:0lstm_cell_221/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_221/SigmoidSigmoidlstm_cell_221/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_221/Sigmoid_1Sigmoidlstm_cell_221/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_221/mulMullstm_cell_221/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_221/ReluRelulstm_cell_221/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_221/mul_1Mullstm_cell_221/Sigmoid:y:0 lstm_cell_221/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_221/add_1AddV2lstm_cell_221/mul:z:0lstm_cell_221/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_221/Sigmoid_2Sigmoidlstm_cell_221/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_221/Relu_1Relulstm_cell_221/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_221/mul_2Mullstm_cell_221/Sigmoid_2:y:0"lstm_cell_221/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_221_matmul_readvariableop_resource.lstm_cell_221_matmul_1_readvariableop_resource-lstm_cell_221_biasadd_readvariableop_resource*
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
while_body_1341894*
condR
while_cond_1341893*K
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
NoOpNoOp%^lstm_cell_221/BiasAdd/ReadVariableOp$^lstm_cell_221/MatMul/ReadVariableOp&^lstm_cell_221/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_221/BiasAdd/ReadVariableOp$lstm_cell_221/BiasAdd/ReadVariableOp2J
#lstm_cell_221/MatMul/ReadVariableOp#lstm_cell_221/MatMul/ReadVariableOp2N
%lstm_cell_221/MatMul_1/ReadVariableOp%lstm_cell_221/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
)sequential_65_lstm_196_while_cond_1337161J
Fsequential_65_lstm_196_while_sequential_65_lstm_196_while_loop_counterP
Lsequential_65_lstm_196_while_sequential_65_lstm_196_while_maximum_iterations,
(sequential_65_lstm_196_while_placeholder.
*sequential_65_lstm_196_while_placeholder_1.
*sequential_65_lstm_196_while_placeholder_2.
*sequential_65_lstm_196_while_placeholder_3L
Hsequential_65_lstm_196_while_less_sequential_65_lstm_196_strided_slice_1c
_sequential_65_lstm_196_while_sequential_65_lstm_196_while_cond_1337161___redundant_placeholder0c
_sequential_65_lstm_196_while_sequential_65_lstm_196_while_cond_1337161___redundant_placeholder1c
_sequential_65_lstm_196_while_sequential_65_lstm_196_while_cond_1337161___redundant_placeholder2c
_sequential_65_lstm_196_while_sequential_65_lstm_196_while_cond_1337161___redundant_placeholder3)
%sequential_65_lstm_196_while_identity
?
!sequential_65/lstm_196/while/LessLess(sequential_65_lstm_196_while_placeholderHsequential_65_lstm_196_while_less_sequential_65_lstm_196_strided_slice_1*
T0*
_output_shapes
: y
%sequential_65/lstm_196/while/IdentityIdentity%sequential_65/lstm_196/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_65_lstm_196_while_identity.sequential_65/lstm_196/while/Identity:output:0*(
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
E__inference_lstm_195_layer_call_and_return_conditional_losses_1340746
inputs_0?
,lstm_cell_219_matmul_readvariableop_resource:	?A
.lstm_cell_219_matmul_1_readvariableop_resource:	d?<
-lstm_cell_219_biasadd_readvariableop_resource:	?
identity??$lstm_cell_219/BiasAdd/ReadVariableOp?#lstm_cell_219/MatMul/ReadVariableOp?%lstm_cell_219/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_219/MatMul/ReadVariableOpReadVariableOp,lstm_cell_219_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_219/MatMulMatMulstrided_slice_2:output:0+lstm_cell_219/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_219/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_219_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_219/MatMul_1MatMulzeros:output:0-lstm_cell_219/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_219/addAddV2lstm_cell_219/MatMul:product:0 lstm_cell_219/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_219/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_219_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_219/BiasAddBiasAddlstm_cell_219/add:z:0,lstm_cell_219/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_219/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_219/splitSplit&lstm_cell_219/split/split_dim:output:0lstm_cell_219/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_219/SigmoidSigmoidlstm_cell_219/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_219/Sigmoid_1Sigmoidlstm_cell_219/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_219/mulMullstm_cell_219/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_219/ReluRelulstm_cell_219/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_219/mul_1Mullstm_cell_219/Sigmoid:y:0 lstm_cell_219/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_219/add_1AddV2lstm_cell_219/mul:z:0lstm_cell_219/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_219/Sigmoid_2Sigmoidlstm_cell_219/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_219/Relu_1Relulstm_cell_219/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_219/mul_2Mullstm_cell_219/Sigmoid_2:y:0"lstm_cell_219/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_219_matmul_readvariableop_resource.lstm_cell_219_matmul_1_readvariableop_resource-lstm_cell_219_biasadd_readvariableop_resource*
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
while_body_1340662*
condR
while_cond_1340661*K
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
NoOpNoOp%^lstm_cell_219/BiasAdd/ReadVariableOp$^lstm_cell_219/MatMul/ReadVariableOp&^lstm_cell_219/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_219/BiasAdd/ReadVariableOp$lstm_cell_219/BiasAdd/ReadVariableOp2J
#lstm_cell_219/MatMul/ReadVariableOp#lstm_cell_219/MatMul/ReadVariableOp2N
%lstm_cell_219/MatMul_1/ReadVariableOp%lstm_cell_219/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_197_layer_call_and_return_conditional_losses_1342407

inputs>
,lstm_cell_221_matmul_readvariableop_resource:2(@
.lstm_cell_221_matmul_1_readvariableop_resource:
(;
-lstm_cell_221_biasadd_readvariableop_resource:(
identity??$lstm_cell_221/BiasAdd/ReadVariableOp?#lstm_cell_221/MatMul/ReadVariableOp?%lstm_cell_221/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_221/MatMul/ReadVariableOpReadVariableOp,lstm_cell_221_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_221/MatMulMatMulstrided_slice_2:output:0+lstm_cell_221/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_221/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_221_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_221/MatMul_1MatMulzeros:output:0-lstm_cell_221/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_221/addAddV2lstm_cell_221/MatMul:product:0 lstm_cell_221/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_221/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_221_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_221/BiasAddBiasAddlstm_cell_221/add:z:0,lstm_cell_221/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_221/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_221/splitSplit&lstm_cell_221/split/split_dim:output:0lstm_cell_221/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_221/SigmoidSigmoidlstm_cell_221/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_221/Sigmoid_1Sigmoidlstm_cell_221/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_221/mulMullstm_cell_221/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_221/ReluRelulstm_cell_221/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_221/mul_1Mullstm_cell_221/Sigmoid:y:0 lstm_cell_221/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_221/add_1AddV2lstm_cell_221/mul:z:0lstm_cell_221/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_221/Sigmoid_2Sigmoidlstm_cell_221/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_221/Relu_1Relulstm_cell_221/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_221/mul_2Mullstm_cell_221/Sigmoid_2:y:0"lstm_cell_221/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_221_matmul_readvariableop_resource.lstm_cell_221_matmul_1_readvariableop_resource-lstm_cell_221_biasadd_readvariableop_resource*
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
while_body_1342323*
condR
while_cond_1342322*K
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
NoOpNoOp%^lstm_cell_221/BiasAdd/ReadVariableOp$^lstm_cell_221/MatMul/ReadVariableOp&^lstm_cell_221/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_221/BiasAdd/ReadVariableOp$lstm_cell_221/BiasAdd/ReadVariableOp2J
#lstm_cell_221/MatMul/ReadVariableOp#lstm_cell_221/MatMul/ReadVariableOp2N
%lstm_cell_221/MatMul_1/ReadVariableOp%lstm_cell_221/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_1341278
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_220_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_220_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_220_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_220_matmul_readvariableop_resource:	d?G
4while_lstm_cell_220_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_220_biasadd_readvariableop_resource:	???*while/lstm_cell_220/BiasAdd/ReadVariableOp?)while/lstm_cell_220/MatMul/ReadVariableOp?+while/lstm_cell_220/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_220/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_220_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_220/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_220/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_220/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_220_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_220/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_220/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_220/addAddV2$while/lstm_cell_220/MatMul:product:0&while/lstm_cell_220/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_220/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_220_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_220/BiasAddBiasAddwhile/lstm_cell_220/add:z:02while/lstm_cell_220/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_220/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_220/splitSplit,while/lstm_cell_220/split/split_dim:output:0$while/lstm_cell_220/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_220/SigmoidSigmoid"while/lstm_cell_220/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_220/Sigmoid_1Sigmoid"while/lstm_cell_220/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_220/mulMul!while/lstm_cell_220/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_220/ReluRelu"while/lstm_cell_220/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_220/mul_1Mulwhile/lstm_cell_220/Sigmoid:y:0&while/lstm_cell_220/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_220/add_1AddV2while/lstm_cell_220/mul:z:0while/lstm_cell_220/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_220/Sigmoid_2Sigmoid"while/lstm_cell_220/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_220/Relu_1Reluwhile/lstm_cell_220/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_220/mul_2Mul!while/lstm_cell_220/Sigmoid_2:y:0(while/lstm_cell_220/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_220/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_220/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_220/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_220/BiasAdd/ReadVariableOp*^while/lstm_cell_220/MatMul/ReadVariableOp,^while/lstm_cell_220/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_220_biasadd_readvariableop_resource5while_lstm_cell_220_biasadd_readvariableop_resource_0"n
4while_lstm_cell_220_matmul_1_readvariableop_resource6while_lstm_cell_220_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_220_matmul_readvariableop_resource4while_lstm_cell_220_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_220/BiasAdd/ReadVariableOp*while/lstm_cell_220/BiasAdd/ReadVariableOp2V
)while/lstm_cell_220/MatMul/ReadVariableOp)while/lstm_cell_220/MatMul/ReadVariableOp2Z
+while/lstm_cell_220/MatMul_1/ReadVariableOp+while/lstm_cell_220/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_220_layer_call_and_return_conditional_losses_1337808

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
?8
?
E__inference_lstm_195_layer_call_and_return_conditional_losses_1337541

inputs(
lstm_cell_219_1337459:	?(
lstm_cell_219_1337461:	d?$
lstm_cell_219_1337463:	?
identity??%lstm_cell_219/StatefulPartitionedCall?while;
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
%lstm_cell_219/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_219_1337459lstm_cell_219_1337461lstm_cell_219_1337463*
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
J__inference_lstm_cell_219_layer_call_and_return_conditional_losses_1337458n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_219_1337459lstm_cell_219_1337461lstm_cell_219_1337463*
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
while_body_1337472*
condR
while_cond_1337471*K
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
NoOpNoOp&^lstm_cell_219/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_219/StatefulPartitionedCall%lstm_cell_219/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?

?
lstm_197_while_cond_1340041.
*lstm_197_while_lstm_197_while_loop_counter4
0lstm_197_while_lstm_197_while_maximum_iterations
lstm_197_while_placeholder 
lstm_197_while_placeholder_1 
lstm_197_while_placeholder_2 
lstm_197_while_placeholder_30
,lstm_197_while_less_lstm_197_strided_slice_1G
Clstm_197_while_lstm_197_while_cond_1340041___redundant_placeholder0G
Clstm_197_while_lstm_197_while_cond_1340041___redundant_placeholder1G
Clstm_197_while_lstm_197_while_cond_1340041___redundant_placeholder2G
Clstm_197_while_lstm_197_while_cond_1340041___redundant_placeholder3
lstm_197_while_identity
?
lstm_197/while/LessLesslstm_197_while_placeholder,lstm_197_while_less_lstm_197_strided_slice_1*
T0*
_output_shapes
: ]
lstm_197/while/IdentityIdentitylstm_197/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_197_while_identity lstm_197/while/Identity:output:0*(
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
?C
?

lstm_197_while_body_1340042.
*lstm_197_while_lstm_197_while_loop_counter4
0lstm_197_while_lstm_197_while_maximum_iterations
lstm_197_while_placeholder 
lstm_197_while_placeholder_1 
lstm_197_while_placeholder_2 
lstm_197_while_placeholder_3-
)lstm_197_while_lstm_197_strided_slice_1_0i
elstm_197_while_tensorarrayv2read_tensorlistgetitem_lstm_197_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_197_while_lstm_cell_221_matmul_readvariableop_resource_0:2(Q
?lstm_197_while_lstm_cell_221_matmul_1_readvariableop_resource_0:
(L
>lstm_197_while_lstm_cell_221_biasadd_readvariableop_resource_0:(
lstm_197_while_identity
lstm_197_while_identity_1
lstm_197_while_identity_2
lstm_197_while_identity_3
lstm_197_while_identity_4
lstm_197_while_identity_5+
'lstm_197_while_lstm_197_strided_slice_1g
clstm_197_while_tensorarrayv2read_tensorlistgetitem_lstm_197_tensorarrayunstack_tensorlistfromtensorM
;lstm_197_while_lstm_cell_221_matmul_readvariableop_resource:2(O
=lstm_197_while_lstm_cell_221_matmul_1_readvariableop_resource:
(J
<lstm_197_while_lstm_cell_221_biasadd_readvariableop_resource:(??3lstm_197/while/lstm_cell_221/BiasAdd/ReadVariableOp?2lstm_197/while/lstm_cell_221/MatMul/ReadVariableOp?4lstm_197/while/lstm_cell_221/MatMul_1/ReadVariableOp?
@lstm_197/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_197/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_197_while_tensorarrayv2read_tensorlistgetitem_lstm_197_tensorarrayunstack_tensorlistfromtensor_0lstm_197_while_placeholderIlstm_197/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_197/while/lstm_cell_221/MatMul/ReadVariableOpReadVariableOp=lstm_197_while_lstm_cell_221_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_197/while/lstm_cell_221/MatMulMatMul9lstm_197/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_197/while/lstm_cell_221/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_197/while/lstm_cell_221/MatMul_1/ReadVariableOpReadVariableOp?lstm_197_while_lstm_cell_221_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_197/while/lstm_cell_221/MatMul_1MatMullstm_197_while_placeholder_2<lstm_197/while/lstm_cell_221/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_197/while/lstm_cell_221/addAddV2-lstm_197/while/lstm_cell_221/MatMul:product:0/lstm_197/while/lstm_cell_221/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_197/while/lstm_cell_221/BiasAdd/ReadVariableOpReadVariableOp>lstm_197_while_lstm_cell_221_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_197/while/lstm_cell_221/BiasAddBiasAdd$lstm_197/while/lstm_cell_221/add:z:0;lstm_197/while/lstm_cell_221/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_197/while/lstm_cell_221/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_197/while/lstm_cell_221/splitSplit5lstm_197/while/lstm_cell_221/split/split_dim:output:0-lstm_197/while/lstm_cell_221/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_197/while/lstm_cell_221/SigmoidSigmoid+lstm_197/while/lstm_cell_221/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_197/while/lstm_cell_221/Sigmoid_1Sigmoid+lstm_197/while/lstm_cell_221/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_197/while/lstm_cell_221/mulMul*lstm_197/while/lstm_cell_221/Sigmoid_1:y:0lstm_197_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_197/while/lstm_cell_221/ReluRelu+lstm_197/while/lstm_cell_221/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_197/while/lstm_cell_221/mul_1Mul(lstm_197/while/lstm_cell_221/Sigmoid:y:0/lstm_197/while/lstm_cell_221/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_197/while/lstm_cell_221/add_1AddV2$lstm_197/while/lstm_cell_221/mul:z:0&lstm_197/while/lstm_cell_221/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_197/while/lstm_cell_221/Sigmoid_2Sigmoid+lstm_197/while/lstm_cell_221/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_197/while/lstm_cell_221/Relu_1Relu&lstm_197/while/lstm_cell_221/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_197/while/lstm_cell_221/mul_2Mul*lstm_197/while/lstm_cell_221/Sigmoid_2:y:01lstm_197/while/lstm_cell_221/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_197/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_197_while_placeholder_1lstm_197_while_placeholder&lstm_197/while/lstm_cell_221/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_197/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_197/while/addAddV2lstm_197_while_placeholderlstm_197/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_197/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_197/while/add_1AddV2*lstm_197_while_lstm_197_while_loop_counterlstm_197/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_197/while/IdentityIdentitylstm_197/while/add_1:z:0^lstm_197/while/NoOp*
T0*
_output_shapes
: ?
lstm_197/while/Identity_1Identity0lstm_197_while_lstm_197_while_maximum_iterations^lstm_197/while/NoOp*
T0*
_output_shapes
: t
lstm_197/while/Identity_2Identitylstm_197/while/add:z:0^lstm_197/while/NoOp*
T0*
_output_shapes
: ?
lstm_197/while/Identity_3IdentityClstm_197/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_197/while/NoOp*
T0*
_output_shapes
: ?
lstm_197/while/Identity_4Identity&lstm_197/while/lstm_cell_221/mul_2:z:0^lstm_197/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_197/while/Identity_5Identity&lstm_197/while/lstm_cell_221/add_1:z:0^lstm_197/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_197/while/NoOpNoOp4^lstm_197/while/lstm_cell_221/BiasAdd/ReadVariableOp3^lstm_197/while/lstm_cell_221/MatMul/ReadVariableOp5^lstm_197/while/lstm_cell_221/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_197_while_identity lstm_197/while/Identity:output:0"?
lstm_197_while_identity_1"lstm_197/while/Identity_1:output:0"?
lstm_197_while_identity_2"lstm_197/while/Identity_2:output:0"?
lstm_197_while_identity_3"lstm_197/while/Identity_3:output:0"?
lstm_197_while_identity_4"lstm_197/while/Identity_4:output:0"?
lstm_197_while_identity_5"lstm_197/while/Identity_5:output:0"T
'lstm_197_while_lstm_197_strided_slice_1)lstm_197_while_lstm_197_strided_slice_1_0"~
<lstm_197_while_lstm_cell_221_biasadd_readvariableop_resource>lstm_197_while_lstm_cell_221_biasadd_readvariableop_resource_0"?
=lstm_197_while_lstm_cell_221_matmul_1_readvariableop_resource?lstm_197_while_lstm_cell_221_matmul_1_readvariableop_resource_0"|
;lstm_197_while_lstm_cell_221_matmul_readvariableop_resource=lstm_197_while_lstm_cell_221_matmul_readvariableop_resource_0"?
clstm_197_while_tensorarrayv2read_tensorlistgetitem_lstm_197_tensorarrayunstack_tensorlistfromtensorelstm_197_while_tensorarrayv2read_tensorlistgetitem_lstm_197_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_197/while/lstm_cell_221/BiasAdd/ReadVariableOp3lstm_197/while/lstm_cell_221/BiasAdd/ReadVariableOp2h
2lstm_197/while/lstm_cell_221/MatMul/ReadVariableOp2lstm_197/while/lstm_cell_221/MatMul/ReadVariableOp2l
4lstm_197/while/lstm_cell_221/MatMul_1/ReadVariableOp4lstm_197/while/lstm_cell_221/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_219_layer_call_and_return_conditional_losses_1342492

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
?8
?
E__inference_lstm_196_layer_call_and_return_conditional_losses_1338082

inputs(
lstm_cell_220_1338000:	d?(
lstm_cell_220_1338002:	2?$
lstm_cell_220_1338004:	?
identity??%lstm_cell_220/StatefulPartitionedCall?while;
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
%lstm_cell_220/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_220_1338000lstm_cell_220_1338002lstm_cell_220_1338004*
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
J__inference_lstm_cell_220_layer_call_and_return_conditional_losses_1337954n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_220_1338000lstm_cell_220_1338002lstm_cell_220_1338004*
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
while_body_1338013*
condR
while_cond_1338012*K
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
NoOpNoOp&^lstm_cell_220/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_220/StatefulPartitionedCall%lstm_cell_220/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
lstm_197_while_cond_1340468.
*lstm_197_while_lstm_197_while_loop_counter4
0lstm_197_while_lstm_197_while_maximum_iterations
lstm_197_while_placeholder 
lstm_197_while_placeholder_1 
lstm_197_while_placeholder_2 
lstm_197_while_placeholder_30
,lstm_197_while_less_lstm_197_strided_slice_1G
Clstm_197_while_lstm_197_while_cond_1340468___redundant_placeholder0G
Clstm_197_while_lstm_197_while_cond_1340468___redundant_placeholder1G
Clstm_197_while_lstm_197_while_cond_1340468___redundant_placeholder2G
Clstm_197_while_lstm_197_while_cond_1340468___redundant_placeholder3
lstm_197_while_identity
?
lstm_197/while/LessLesslstm_197_while_placeholder,lstm_197_while_less_lstm_197_strided_slice_1*
T0*
_output_shapes
: ]
lstm_197/while/IdentityIdentitylstm_197/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_197_while_identity lstm_197/while/Identity:output:0*(
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
while_body_1337472
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_219_1337496_0:	?0
while_lstm_cell_219_1337498_0:	d?,
while_lstm_cell_219_1337500_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_219_1337496:	?.
while_lstm_cell_219_1337498:	d?*
while_lstm_cell_219_1337500:	???+while/lstm_cell_219/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_219/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_219_1337496_0while_lstm_cell_219_1337498_0while_lstm_cell_219_1337500_0*
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
J__inference_lstm_cell_219_layer_call_and_return_conditional_losses_1337458?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_219/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_219/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_219/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_219/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_219_1337496while_lstm_cell_219_1337496_0"<
while_lstm_cell_219_1337498while_lstm_cell_219_1337498_0"<
while_lstm_cell_219_1337500while_lstm_cell_219_1337500_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_219/StatefulPartitionedCall+while/lstm_cell_219/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?
?
/__inference_lstm_cell_219_layer_call_fn_1342460

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
J__inference_lstm_cell_219_layer_call_and_return_conditional_losses_1337604o
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
?S
?
)sequential_65_lstm_197_while_body_1337301J
Fsequential_65_lstm_197_while_sequential_65_lstm_197_while_loop_counterP
Lsequential_65_lstm_197_while_sequential_65_lstm_197_while_maximum_iterations,
(sequential_65_lstm_197_while_placeholder.
*sequential_65_lstm_197_while_placeholder_1.
*sequential_65_lstm_197_while_placeholder_2.
*sequential_65_lstm_197_while_placeholder_3I
Esequential_65_lstm_197_while_sequential_65_lstm_197_strided_slice_1_0?
?sequential_65_lstm_197_while_tensorarrayv2read_tensorlistgetitem_sequential_65_lstm_197_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_65_lstm_197_while_lstm_cell_221_matmul_readvariableop_resource_0:2(_
Msequential_65_lstm_197_while_lstm_cell_221_matmul_1_readvariableop_resource_0:
(Z
Lsequential_65_lstm_197_while_lstm_cell_221_biasadd_readvariableop_resource_0:()
%sequential_65_lstm_197_while_identity+
'sequential_65_lstm_197_while_identity_1+
'sequential_65_lstm_197_while_identity_2+
'sequential_65_lstm_197_while_identity_3+
'sequential_65_lstm_197_while_identity_4+
'sequential_65_lstm_197_while_identity_5G
Csequential_65_lstm_197_while_sequential_65_lstm_197_strided_slice_1?
sequential_65_lstm_197_while_tensorarrayv2read_tensorlistgetitem_sequential_65_lstm_197_tensorarrayunstack_tensorlistfromtensor[
Isequential_65_lstm_197_while_lstm_cell_221_matmul_readvariableop_resource:2(]
Ksequential_65_lstm_197_while_lstm_cell_221_matmul_1_readvariableop_resource:
(X
Jsequential_65_lstm_197_while_lstm_cell_221_biasadd_readvariableop_resource:(??Asequential_65/lstm_197/while/lstm_cell_221/BiasAdd/ReadVariableOp?@sequential_65/lstm_197/while/lstm_cell_221/MatMul/ReadVariableOp?Bsequential_65/lstm_197/while/lstm_cell_221/MatMul_1/ReadVariableOp?
Nsequential_65/lstm_197/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_65/lstm_197/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_65_lstm_197_while_tensorarrayv2read_tensorlistgetitem_sequential_65_lstm_197_tensorarrayunstack_tensorlistfromtensor_0(sequential_65_lstm_197_while_placeholderWsequential_65/lstm_197/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_65/lstm_197/while/lstm_cell_221/MatMul/ReadVariableOpReadVariableOpKsequential_65_lstm_197_while_lstm_cell_221_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_65/lstm_197/while/lstm_cell_221/MatMulMatMulGsequential_65/lstm_197/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_65/lstm_197/while/lstm_cell_221/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_65/lstm_197/while/lstm_cell_221/MatMul_1/ReadVariableOpReadVariableOpMsequential_65_lstm_197_while_lstm_cell_221_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_65/lstm_197/while/lstm_cell_221/MatMul_1MatMul*sequential_65_lstm_197_while_placeholder_2Jsequential_65/lstm_197/while/lstm_cell_221/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_65/lstm_197/while/lstm_cell_221/addAddV2;sequential_65/lstm_197/while/lstm_cell_221/MatMul:product:0=sequential_65/lstm_197/while/lstm_cell_221/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_65/lstm_197/while/lstm_cell_221/BiasAdd/ReadVariableOpReadVariableOpLsequential_65_lstm_197_while_lstm_cell_221_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_65/lstm_197/while/lstm_cell_221/BiasAddBiasAdd2sequential_65/lstm_197/while/lstm_cell_221/add:z:0Isequential_65/lstm_197/while/lstm_cell_221/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_65/lstm_197/while/lstm_cell_221/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_65/lstm_197/while/lstm_cell_221/splitSplitCsequential_65/lstm_197/while/lstm_cell_221/split/split_dim:output:0;sequential_65/lstm_197/while/lstm_cell_221/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_65/lstm_197/while/lstm_cell_221/SigmoidSigmoid9sequential_65/lstm_197/while/lstm_cell_221/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_65/lstm_197/while/lstm_cell_221/Sigmoid_1Sigmoid9sequential_65/lstm_197/while/lstm_cell_221/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_65/lstm_197/while/lstm_cell_221/mulMul8sequential_65/lstm_197/while/lstm_cell_221/Sigmoid_1:y:0*sequential_65_lstm_197_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_65/lstm_197/while/lstm_cell_221/ReluRelu9sequential_65/lstm_197/while/lstm_cell_221/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_65/lstm_197/while/lstm_cell_221/mul_1Mul6sequential_65/lstm_197/while/lstm_cell_221/Sigmoid:y:0=sequential_65/lstm_197/while/lstm_cell_221/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_65/lstm_197/while/lstm_cell_221/add_1AddV22sequential_65/lstm_197/while/lstm_cell_221/mul:z:04sequential_65/lstm_197/while/lstm_cell_221/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_65/lstm_197/while/lstm_cell_221/Sigmoid_2Sigmoid9sequential_65/lstm_197/while/lstm_cell_221/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_65/lstm_197/while/lstm_cell_221/Relu_1Relu4sequential_65/lstm_197/while/lstm_cell_221/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_65/lstm_197/while/lstm_cell_221/mul_2Mul8sequential_65/lstm_197/while/lstm_cell_221/Sigmoid_2:y:0?sequential_65/lstm_197/while/lstm_cell_221/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_65/lstm_197/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_65_lstm_197_while_placeholder_1(sequential_65_lstm_197_while_placeholder4sequential_65/lstm_197/while/lstm_cell_221/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_65/lstm_197/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_65/lstm_197/while/addAddV2(sequential_65_lstm_197_while_placeholder+sequential_65/lstm_197/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_65/lstm_197/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_65/lstm_197/while/add_1AddV2Fsequential_65_lstm_197_while_sequential_65_lstm_197_while_loop_counter-sequential_65/lstm_197/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_65/lstm_197/while/IdentityIdentity&sequential_65/lstm_197/while/add_1:z:0"^sequential_65/lstm_197/while/NoOp*
T0*
_output_shapes
: ?
'sequential_65/lstm_197/while/Identity_1IdentityLsequential_65_lstm_197_while_sequential_65_lstm_197_while_maximum_iterations"^sequential_65/lstm_197/while/NoOp*
T0*
_output_shapes
: ?
'sequential_65/lstm_197/while/Identity_2Identity$sequential_65/lstm_197/while/add:z:0"^sequential_65/lstm_197/while/NoOp*
T0*
_output_shapes
: ?
'sequential_65/lstm_197/while/Identity_3IdentityQsequential_65/lstm_197/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_65/lstm_197/while/NoOp*
T0*
_output_shapes
: ?
'sequential_65/lstm_197/while/Identity_4Identity4sequential_65/lstm_197/while/lstm_cell_221/mul_2:z:0"^sequential_65/lstm_197/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_65/lstm_197/while/Identity_5Identity4sequential_65/lstm_197/while/lstm_cell_221/add_1:z:0"^sequential_65/lstm_197/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_65/lstm_197/while/NoOpNoOpB^sequential_65/lstm_197/while/lstm_cell_221/BiasAdd/ReadVariableOpA^sequential_65/lstm_197/while/lstm_cell_221/MatMul/ReadVariableOpC^sequential_65/lstm_197/while/lstm_cell_221/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_65_lstm_197_while_identity.sequential_65/lstm_197/while/Identity:output:0"[
'sequential_65_lstm_197_while_identity_10sequential_65/lstm_197/while/Identity_1:output:0"[
'sequential_65_lstm_197_while_identity_20sequential_65/lstm_197/while/Identity_2:output:0"[
'sequential_65_lstm_197_while_identity_30sequential_65/lstm_197/while/Identity_3:output:0"[
'sequential_65_lstm_197_while_identity_40sequential_65/lstm_197/while/Identity_4:output:0"[
'sequential_65_lstm_197_while_identity_50sequential_65/lstm_197/while/Identity_5:output:0"?
Jsequential_65_lstm_197_while_lstm_cell_221_biasadd_readvariableop_resourceLsequential_65_lstm_197_while_lstm_cell_221_biasadd_readvariableop_resource_0"?
Ksequential_65_lstm_197_while_lstm_cell_221_matmul_1_readvariableop_resourceMsequential_65_lstm_197_while_lstm_cell_221_matmul_1_readvariableop_resource_0"?
Isequential_65_lstm_197_while_lstm_cell_221_matmul_readvariableop_resourceKsequential_65_lstm_197_while_lstm_cell_221_matmul_readvariableop_resource_0"?
Csequential_65_lstm_197_while_sequential_65_lstm_197_strided_slice_1Esequential_65_lstm_197_while_sequential_65_lstm_197_strided_slice_1_0"?
sequential_65_lstm_197_while_tensorarrayv2read_tensorlistgetitem_sequential_65_lstm_197_tensorarrayunstack_tensorlistfromtensor?sequential_65_lstm_197_while_tensorarrayv2read_tensorlistgetitem_sequential_65_lstm_197_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_65/lstm_197/while/lstm_cell_221/BiasAdd/ReadVariableOpAsequential_65/lstm_197/while/lstm_cell_221/BiasAdd/ReadVariableOp2?
@sequential_65/lstm_197/while/lstm_cell_221/MatMul/ReadVariableOp@sequential_65/lstm_197/while/lstm_cell_221/MatMul/ReadVariableOp2?
Bsequential_65/lstm_197/while/lstm_cell_221/MatMul_1/ReadVariableOpBsequential_65/lstm_197/while/lstm_cell_221/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1341420
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1341420___redundant_placeholder05
1while_while_cond_1341420___redundant_placeholder15
1while_while_cond_1341420___redundant_placeholder25
1while_while_cond_1341420___redundant_placeholder3
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
E__inference_lstm_196_layer_call_and_return_conditional_losses_1341362
inputs_0?
,lstm_cell_220_matmul_readvariableop_resource:	d?A
.lstm_cell_220_matmul_1_readvariableop_resource:	2?<
-lstm_cell_220_biasadd_readvariableop_resource:	?
identity??$lstm_cell_220/BiasAdd/ReadVariableOp?#lstm_cell_220/MatMul/ReadVariableOp?%lstm_cell_220/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_220/MatMul/ReadVariableOpReadVariableOp,lstm_cell_220_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_220/MatMulMatMulstrided_slice_2:output:0+lstm_cell_220/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_220/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_220_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_220/MatMul_1MatMulzeros:output:0-lstm_cell_220/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_220/addAddV2lstm_cell_220/MatMul:product:0 lstm_cell_220/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_220/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_220_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_220/BiasAddBiasAddlstm_cell_220/add:z:0,lstm_cell_220/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_220/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_220/splitSplit&lstm_cell_220/split/split_dim:output:0lstm_cell_220/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_220/SigmoidSigmoidlstm_cell_220/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_220/Sigmoid_1Sigmoidlstm_cell_220/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_220/mulMullstm_cell_220/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_220/ReluRelulstm_cell_220/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_220/mul_1Mullstm_cell_220/Sigmoid:y:0 lstm_cell_220/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_220/add_1AddV2lstm_cell_220/mul:z:0lstm_cell_220/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_220/Sigmoid_2Sigmoidlstm_cell_220/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_220/Relu_1Relulstm_cell_220/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_220/mul_2Mullstm_cell_220/Sigmoid_2:y:0"lstm_cell_220/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_220_matmul_readvariableop_resource.lstm_cell_220_matmul_1_readvariableop_resource-lstm_cell_220_biasadd_readvariableop_resource*
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
while_body_1341278*
condR
while_cond_1341277*K
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
NoOpNoOp%^lstm_cell_220/BiasAdd/ReadVariableOp$^lstm_cell_220/MatMul/ReadVariableOp&^lstm_cell_220/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_220/BiasAdd/ReadVariableOp$lstm_cell_220/BiasAdd/ReadVariableOp2J
#lstm_cell_220/MatMul/ReadVariableOp#lstm_cell_220/MatMul/ReadVariableOp2N
%lstm_cell_220/MatMul_1/ReadVariableOp%lstm_cell_220/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_221_layer_call_fn_1342639

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
J__inference_lstm_cell_221_layer_call_and_return_conditional_losses_1338158o
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
?

?
/__inference_sequential_65_layer_call_fn_1339556
lstm_195_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_195_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_65_layer_call_and_return_conditional_losses_1339504o
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
_user_specified_namelstm_195_input
?
?
J__inference_sequential_65_layer_call_and_return_conditional_losses_1339586
lstm_195_input#
lstm_195_1339559:	?#
lstm_195_1339561:	d?
lstm_195_1339563:	?#
lstm_196_1339566:	d?#
lstm_196_1339568:	2?
lstm_196_1339570:	?"
lstm_197_1339573:2("
lstm_197_1339575:
(
lstm_197_1339577:("
dense_65_1339580:

dense_65_1339582:
identity?? dense_65/StatefulPartitionedCall? lstm_195/StatefulPartitionedCall? lstm_196/StatefulPartitionedCall? lstm_197/StatefulPartitionedCall?
 lstm_195/StatefulPartitionedCallStatefulPartitionedCalllstm_195_inputlstm_195_1339559lstm_195_1339561lstm_195_1339563*
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
E__inference_lstm_195_layer_call_and_return_conditional_losses_1338590?
 lstm_196/StatefulPartitionedCallStatefulPartitionedCall)lstm_195/StatefulPartitionedCall:output:0lstm_196_1339566lstm_196_1339568lstm_196_1339570*
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
E__inference_lstm_196_layer_call_and_return_conditional_losses_1338740?
 lstm_197/StatefulPartitionedCallStatefulPartitionedCall)lstm_196/StatefulPartitionedCall:output:0lstm_197_1339573lstm_197_1339575lstm_197_1339577*
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
E__inference_lstm_197_layer_call_and_return_conditional_losses_1338890?
 dense_65/StatefulPartitionedCallStatefulPartitionedCall)lstm_197/StatefulPartitionedCall:output:0dense_65_1339580dense_65_1339582*
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
E__inference_dense_65_layer_call_and_return_conditional_losses_1338908x
IdentityIdentity)dense_65/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_65/StatefulPartitionedCall!^lstm_195/StatefulPartitionedCall!^lstm_196/StatefulPartitionedCall!^lstm_197/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall2D
 lstm_195/StatefulPartitionedCall lstm_195/StatefulPartitionedCall2D
 lstm_196/StatefulPartitionedCall lstm_196/StatefulPartitionedCall2D
 lstm_197/StatefulPartitionedCall lstm_197/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_195_input
?
?
/__inference_lstm_cell_220_layer_call_fn_1342541

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
J__inference_lstm_cell_220_layer_call_and_return_conditional_losses_1337808o
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
??
?
J__inference_sequential_65_layer_call_and_return_conditional_losses_1340559

inputsH
5lstm_195_lstm_cell_219_matmul_readvariableop_resource:	?J
7lstm_195_lstm_cell_219_matmul_1_readvariableop_resource:	d?E
6lstm_195_lstm_cell_219_biasadd_readvariableop_resource:	?H
5lstm_196_lstm_cell_220_matmul_readvariableop_resource:	d?J
7lstm_196_lstm_cell_220_matmul_1_readvariableop_resource:	2?E
6lstm_196_lstm_cell_220_biasadd_readvariableop_resource:	?G
5lstm_197_lstm_cell_221_matmul_readvariableop_resource:2(I
7lstm_197_lstm_cell_221_matmul_1_readvariableop_resource:
(D
6lstm_197_lstm_cell_221_biasadd_readvariableop_resource:(9
'dense_65_matmul_readvariableop_resource:
6
(dense_65_biasadd_readvariableop_resource:
identity??dense_65/BiasAdd/ReadVariableOp?dense_65/MatMul/ReadVariableOp?-lstm_195/lstm_cell_219/BiasAdd/ReadVariableOp?,lstm_195/lstm_cell_219/MatMul/ReadVariableOp?.lstm_195/lstm_cell_219/MatMul_1/ReadVariableOp?lstm_195/while?-lstm_196/lstm_cell_220/BiasAdd/ReadVariableOp?,lstm_196/lstm_cell_220/MatMul/ReadVariableOp?.lstm_196/lstm_cell_220/MatMul_1/ReadVariableOp?lstm_196/while?-lstm_197/lstm_cell_221/BiasAdd/ReadVariableOp?,lstm_197/lstm_cell_221/MatMul/ReadVariableOp?.lstm_197/lstm_cell_221/MatMul_1/ReadVariableOp?lstm_197/whileD
lstm_195/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_195/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_195/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_195/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_195/strided_sliceStridedSlicelstm_195/Shape:output:0%lstm_195/strided_slice/stack:output:0'lstm_195/strided_slice/stack_1:output:0'lstm_195/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_195/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_195/zeros/packedPacklstm_195/strided_slice:output:0 lstm_195/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_195/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_195/zerosFilllstm_195/zeros/packed:output:0lstm_195/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_195/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_195/zeros_1/packedPacklstm_195/strided_slice:output:0"lstm_195/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_195/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_195/zeros_1Fill lstm_195/zeros_1/packed:output:0lstm_195/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_195/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_195/transpose	Transposeinputs lstm_195/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_195/Shape_1Shapelstm_195/transpose:y:0*
T0*
_output_shapes
:h
lstm_195/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_195/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_195/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_195/strided_slice_1StridedSlicelstm_195/Shape_1:output:0'lstm_195/strided_slice_1/stack:output:0)lstm_195/strided_slice_1/stack_1:output:0)lstm_195/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_195/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_195/TensorArrayV2TensorListReserve-lstm_195/TensorArrayV2/element_shape:output:0!lstm_195/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_195/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_195/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_195/transpose:y:0Glstm_195/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_195/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_195/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_195/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_195/strided_slice_2StridedSlicelstm_195/transpose:y:0'lstm_195/strided_slice_2/stack:output:0)lstm_195/strided_slice_2/stack_1:output:0)lstm_195/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_195/lstm_cell_219/MatMul/ReadVariableOpReadVariableOp5lstm_195_lstm_cell_219_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_195/lstm_cell_219/MatMulMatMul!lstm_195/strided_slice_2:output:04lstm_195/lstm_cell_219/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_195/lstm_cell_219/MatMul_1/ReadVariableOpReadVariableOp7lstm_195_lstm_cell_219_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_195/lstm_cell_219/MatMul_1MatMullstm_195/zeros:output:06lstm_195/lstm_cell_219/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_195/lstm_cell_219/addAddV2'lstm_195/lstm_cell_219/MatMul:product:0)lstm_195/lstm_cell_219/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_195/lstm_cell_219/BiasAdd/ReadVariableOpReadVariableOp6lstm_195_lstm_cell_219_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_195/lstm_cell_219/BiasAddBiasAddlstm_195/lstm_cell_219/add:z:05lstm_195/lstm_cell_219/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_195/lstm_cell_219/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_195/lstm_cell_219/splitSplit/lstm_195/lstm_cell_219/split/split_dim:output:0'lstm_195/lstm_cell_219/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_195/lstm_cell_219/SigmoidSigmoid%lstm_195/lstm_cell_219/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_195/lstm_cell_219/Sigmoid_1Sigmoid%lstm_195/lstm_cell_219/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_195/lstm_cell_219/mulMul$lstm_195/lstm_cell_219/Sigmoid_1:y:0lstm_195/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_195/lstm_cell_219/ReluRelu%lstm_195/lstm_cell_219/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_195/lstm_cell_219/mul_1Mul"lstm_195/lstm_cell_219/Sigmoid:y:0)lstm_195/lstm_cell_219/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_195/lstm_cell_219/add_1AddV2lstm_195/lstm_cell_219/mul:z:0 lstm_195/lstm_cell_219/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_195/lstm_cell_219/Sigmoid_2Sigmoid%lstm_195/lstm_cell_219/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_195/lstm_cell_219/Relu_1Relu lstm_195/lstm_cell_219/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_195/lstm_cell_219/mul_2Mul$lstm_195/lstm_cell_219/Sigmoid_2:y:0+lstm_195/lstm_cell_219/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_195/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_195/TensorArrayV2_1TensorListReserve/lstm_195/TensorArrayV2_1/element_shape:output:0!lstm_195/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_195/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_195/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_195/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_195/whileWhile$lstm_195/while/loop_counter:output:0*lstm_195/while/maximum_iterations:output:0lstm_195/time:output:0!lstm_195/TensorArrayV2_1:handle:0lstm_195/zeros:output:0lstm_195/zeros_1:output:0!lstm_195/strided_slice_1:output:0@lstm_195/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_195_lstm_cell_219_matmul_readvariableop_resource7lstm_195_lstm_cell_219_matmul_1_readvariableop_resource6lstm_195_lstm_cell_219_biasadd_readvariableop_resource*
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
lstm_195_while_body_1340191*'
condR
lstm_195_while_cond_1340190*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_195/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_195/TensorArrayV2Stack/TensorListStackTensorListStacklstm_195/while:output:3Blstm_195/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_195/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_195/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_195/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_195/strided_slice_3StridedSlice4lstm_195/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_195/strided_slice_3/stack:output:0)lstm_195/strided_slice_3/stack_1:output:0)lstm_195/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_195/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_195/transpose_1	Transpose4lstm_195/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_195/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_195/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_196/ShapeShapelstm_195/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_196/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_196/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_196/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_196/strided_sliceStridedSlicelstm_196/Shape:output:0%lstm_196/strided_slice/stack:output:0'lstm_196/strided_slice/stack_1:output:0'lstm_196/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_196/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_196/zeros/packedPacklstm_196/strided_slice:output:0 lstm_196/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_196/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_196/zerosFilllstm_196/zeros/packed:output:0lstm_196/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_196/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_196/zeros_1/packedPacklstm_196/strided_slice:output:0"lstm_196/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_196/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_196/zeros_1Fill lstm_196/zeros_1/packed:output:0lstm_196/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_196/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_196/transpose	Transposelstm_195/transpose_1:y:0 lstm_196/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_196/Shape_1Shapelstm_196/transpose:y:0*
T0*
_output_shapes
:h
lstm_196/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_196/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_196/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_196/strided_slice_1StridedSlicelstm_196/Shape_1:output:0'lstm_196/strided_slice_1/stack:output:0)lstm_196/strided_slice_1/stack_1:output:0)lstm_196/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_196/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_196/TensorArrayV2TensorListReserve-lstm_196/TensorArrayV2/element_shape:output:0!lstm_196/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_196/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_196/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_196/transpose:y:0Glstm_196/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_196/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_196/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_196/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_196/strided_slice_2StridedSlicelstm_196/transpose:y:0'lstm_196/strided_slice_2/stack:output:0)lstm_196/strided_slice_2/stack_1:output:0)lstm_196/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_196/lstm_cell_220/MatMul/ReadVariableOpReadVariableOp5lstm_196_lstm_cell_220_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_196/lstm_cell_220/MatMulMatMul!lstm_196/strided_slice_2:output:04lstm_196/lstm_cell_220/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_196/lstm_cell_220/MatMul_1/ReadVariableOpReadVariableOp7lstm_196_lstm_cell_220_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_196/lstm_cell_220/MatMul_1MatMullstm_196/zeros:output:06lstm_196/lstm_cell_220/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_196/lstm_cell_220/addAddV2'lstm_196/lstm_cell_220/MatMul:product:0)lstm_196/lstm_cell_220/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_196/lstm_cell_220/BiasAdd/ReadVariableOpReadVariableOp6lstm_196_lstm_cell_220_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_196/lstm_cell_220/BiasAddBiasAddlstm_196/lstm_cell_220/add:z:05lstm_196/lstm_cell_220/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_196/lstm_cell_220/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_196/lstm_cell_220/splitSplit/lstm_196/lstm_cell_220/split/split_dim:output:0'lstm_196/lstm_cell_220/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_196/lstm_cell_220/SigmoidSigmoid%lstm_196/lstm_cell_220/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_196/lstm_cell_220/Sigmoid_1Sigmoid%lstm_196/lstm_cell_220/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_196/lstm_cell_220/mulMul$lstm_196/lstm_cell_220/Sigmoid_1:y:0lstm_196/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_196/lstm_cell_220/ReluRelu%lstm_196/lstm_cell_220/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_196/lstm_cell_220/mul_1Mul"lstm_196/lstm_cell_220/Sigmoid:y:0)lstm_196/lstm_cell_220/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_196/lstm_cell_220/add_1AddV2lstm_196/lstm_cell_220/mul:z:0 lstm_196/lstm_cell_220/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_196/lstm_cell_220/Sigmoid_2Sigmoid%lstm_196/lstm_cell_220/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_196/lstm_cell_220/Relu_1Relu lstm_196/lstm_cell_220/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_196/lstm_cell_220/mul_2Mul$lstm_196/lstm_cell_220/Sigmoid_2:y:0+lstm_196/lstm_cell_220/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_196/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_196/TensorArrayV2_1TensorListReserve/lstm_196/TensorArrayV2_1/element_shape:output:0!lstm_196/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_196/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_196/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_196/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_196/whileWhile$lstm_196/while/loop_counter:output:0*lstm_196/while/maximum_iterations:output:0lstm_196/time:output:0!lstm_196/TensorArrayV2_1:handle:0lstm_196/zeros:output:0lstm_196/zeros_1:output:0!lstm_196/strided_slice_1:output:0@lstm_196/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_196_lstm_cell_220_matmul_readvariableop_resource7lstm_196_lstm_cell_220_matmul_1_readvariableop_resource6lstm_196_lstm_cell_220_biasadd_readvariableop_resource*
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
lstm_196_while_body_1340330*'
condR
lstm_196_while_cond_1340329*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_196/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_196/TensorArrayV2Stack/TensorListStackTensorListStacklstm_196/while:output:3Blstm_196/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_196/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_196/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_196/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_196/strided_slice_3StridedSlice4lstm_196/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_196/strided_slice_3/stack:output:0)lstm_196/strided_slice_3/stack_1:output:0)lstm_196/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_196/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_196/transpose_1	Transpose4lstm_196/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_196/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_196/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_197/ShapeShapelstm_196/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_197/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_197/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_197/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_197/strided_sliceStridedSlicelstm_197/Shape:output:0%lstm_197/strided_slice/stack:output:0'lstm_197/strided_slice/stack_1:output:0'lstm_197/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_197/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_197/zeros/packedPacklstm_197/strided_slice:output:0 lstm_197/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_197/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_197/zerosFilllstm_197/zeros/packed:output:0lstm_197/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_197/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_197/zeros_1/packedPacklstm_197/strided_slice:output:0"lstm_197/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_197/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_197/zeros_1Fill lstm_197/zeros_1/packed:output:0lstm_197/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_197/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_197/transpose	Transposelstm_196/transpose_1:y:0 lstm_197/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_197/Shape_1Shapelstm_197/transpose:y:0*
T0*
_output_shapes
:h
lstm_197/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_197/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_197/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_197/strided_slice_1StridedSlicelstm_197/Shape_1:output:0'lstm_197/strided_slice_1/stack:output:0)lstm_197/strided_slice_1/stack_1:output:0)lstm_197/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_197/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_197/TensorArrayV2TensorListReserve-lstm_197/TensorArrayV2/element_shape:output:0!lstm_197/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_197/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_197/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_197/transpose:y:0Glstm_197/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_197/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_197/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_197/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_197/strided_slice_2StridedSlicelstm_197/transpose:y:0'lstm_197/strided_slice_2/stack:output:0)lstm_197/strided_slice_2/stack_1:output:0)lstm_197/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_197/lstm_cell_221/MatMul/ReadVariableOpReadVariableOp5lstm_197_lstm_cell_221_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_197/lstm_cell_221/MatMulMatMul!lstm_197/strided_slice_2:output:04lstm_197/lstm_cell_221/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_197/lstm_cell_221/MatMul_1/ReadVariableOpReadVariableOp7lstm_197_lstm_cell_221_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_197/lstm_cell_221/MatMul_1MatMullstm_197/zeros:output:06lstm_197/lstm_cell_221/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_197/lstm_cell_221/addAddV2'lstm_197/lstm_cell_221/MatMul:product:0)lstm_197/lstm_cell_221/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_197/lstm_cell_221/BiasAdd/ReadVariableOpReadVariableOp6lstm_197_lstm_cell_221_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_197/lstm_cell_221/BiasAddBiasAddlstm_197/lstm_cell_221/add:z:05lstm_197/lstm_cell_221/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_197/lstm_cell_221/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_197/lstm_cell_221/splitSplit/lstm_197/lstm_cell_221/split/split_dim:output:0'lstm_197/lstm_cell_221/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_197/lstm_cell_221/SigmoidSigmoid%lstm_197/lstm_cell_221/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_197/lstm_cell_221/Sigmoid_1Sigmoid%lstm_197/lstm_cell_221/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_197/lstm_cell_221/mulMul$lstm_197/lstm_cell_221/Sigmoid_1:y:0lstm_197/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_197/lstm_cell_221/ReluRelu%lstm_197/lstm_cell_221/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_197/lstm_cell_221/mul_1Mul"lstm_197/lstm_cell_221/Sigmoid:y:0)lstm_197/lstm_cell_221/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_197/lstm_cell_221/add_1AddV2lstm_197/lstm_cell_221/mul:z:0 lstm_197/lstm_cell_221/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_197/lstm_cell_221/Sigmoid_2Sigmoid%lstm_197/lstm_cell_221/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_197/lstm_cell_221/Relu_1Relu lstm_197/lstm_cell_221/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_197/lstm_cell_221/mul_2Mul$lstm_197/lstm_cell_221/Sigmoid_2:y:0+lstm_197/lstm_cell_221/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_197/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_197/TensorArrayV2_1TensorListReserve/lstm_197/TensorArrayV2_1/element_shape:output:0!lstm_197/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_197/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_197/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_197/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_197/whileWhile$lstm_197/while/loop_counter:output:0*lstm_197/while/maximum_iterations:output:0lstm_197/time:output:0!lstm_197/TensorArrayV2_1:handle:0lstm_197/zeros:output:0lstm_197/zeros_1:output:0!lstm_197/strided_slice_1:output:0@lstm_197/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_197_lstm_cell_221_matmul_readvariableop_resource7lstm_197_lstm_cell_221_matmul_1_readvariableop_resource6lstm_197_lstm_cell_221_biasadd_readvariableop_resource*
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
lstm_197_while_body_1340469*'
condR
lstm_197_while_cond_1340468*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_197/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_197/TensorArrayV2Stack/TensorListStackTensorListStacklstm_197/while:output:3Blstm_197/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_197/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_197/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_197/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_197/strided_slice_3StridedSlice4lstm_197/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_197/strided_slice_3/stack:output:0)lstm_197/strided_slice_3/stack_1:output:0)lstm_197/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_197/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_197/transpose_1	Transpose4lstm_197/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_197/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_197/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_65/MatMul/ReadVariableOpReadVariableOp'dense_65_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_65/MatMulMatMul!lstm_197/strided_slice_3:output:0&dense_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_65/BiasAdd/ReadVariableOpReadVariableOp(dense_65_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_65/BiasAddBiasAdddense_65/MatMul:product:0'dense_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_65/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_65/BiasAdd/ReadVariableOp^dense_65/MatMul/ReadVariableOp.^lstm_195/lstm_cell_219/BiasAdd/ReadVariableOp-^lstm_195/lstm_cell_219/MatMul/ReadVariableOp/^lstm_195/lstm_cell_219/MatMul_1/ReadVariableOp^lstm_195/while.^lstm_196/lstm_cell_220/BiasAdd/ReadVariableOp-^lstm_196/lstm_cell_220/MatMul/ReadVariableOp/^lstm_196/lstm_cell_220/MatMul_1/ReadVariableOp^lstm_196/while.^lstm_197/lstm_cell_221/BiasAdd/ReadVariableOp-^lstm_197/lstm_cell_221/MatMul/ReadVariableOp/^lstm_197/lstm_cell_221/MatMul_1/ReadVariableOp^lstm_197/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_65/BiasAdd/ReadVariableOpdense_65/BiasAdd/ReadVariableOp2@
dense_65/MatMul/ReadVariableOpdense_65/MatMul/ReadVariableOp2^
-lstm_195/lstm_cell_219/BiasAdd/ReadVariableOp-lstm_195/lstm_cell_219/BiasAdd/ReadVariableOp2\
,lstm_195/lstm_cell_219/MatMul/ReadVariableOp,lstm_195/lstm_cell_219/MatMul/ReadVariableOp2`
.lstm_195/lstm_cell_219/MatMul_1/ReadVariableOp.lstm_195/lstm_cell_219/MatMul_1/ReadVariableOp2 
lstm_195/whilelstm_195/while2^
-lstm_196/lstm_cell_220/BiasAdd/ReadVariableOp-lstm_196/lstm_cell_220/BiasAdd/ReadVariableOp2\
,lstm_196/lstm_cell_220/MatMul/ReadVariableOp,lstm_196/lstm_cell_220/MatMul/ReadVariableOp2`
.lstm_196/lstm_cell_220/MatMul_1/ReadVariableOp.lstm_196/lstm_cell_220/MatMul_1/ReadVariableOp2 
lstm_196/whilelstm_196/while2^
-lstm_197/lstm_cell_221/BiasAdd/ReadVariableOp-lstm_197/lstm_cell_221/BiasAdd/ReadVariableOp2\
,lstm_197/lstm_cell_221/MatMul/ReadVariableOp,lstm_197/lstm_cell_221/MatMul/ReadVariableOp2`
.lstm_197/lstm_cell_221/MatMul_1/ReadVariableOp.lstm_197/lstm_cell_221/MatMul_1/ReadVariableOp2 
lstm_197/whilelstm_197/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_195_layer_call_and_return_conditional_losses_1338590

inputs?
,lstm_cell_219_matmul_readvariableop_resource:	?A
.lstm_cell_219_matmul_1_readvariableop_resource:	d?<
-lstm_cell_219_biasadd_readvariableop_resource:	?
identity??$lstm_cell_219/BiasAdd/ReadVariableOp?#lstm_cell_219/MatMul/ReadVariableOp?%lstm_cell_219/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_219/MatMul/ReadVariableOpReadVariableOp,lstm_cell_219_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_219/MatMulMatMulstrided_slice_2:output:0+lstm_cell_219/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_219/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_219_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_219/MatMul_1MatMulzeros:output:0-lstm_cell_219/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_219/addAddV2lstm_cell_219/MatMul:product:0 lstm_cell_219/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_219/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_219_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_219/BiasAddBiasAddlstm_cell_219/add:z:0,lstm_cell_219/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_219/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_219/splitSplit&lstm_cell_219/split/split_dim:output:0lstm_cell_219/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_219/SigmoidSigmoidlstm_cell_219/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_219/Sigmoid_1Sigmoidlstm_cell_219/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_219/mulMullstm_cell_219/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_219/ReluRelulstm_cell_219/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_219/mul_1Mullstm_cell_219/Sigmoid:y:0 lstm_cell_219/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_219/add_1AddV2lstm_cell_219/mul:z:0lstm_cell_219/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_219/Sigmoid_2Sigmoidlstm_cell_219/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_219/Relu_1Relulstm_cell_219/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_219/mul_2Mullstm_cell_219/Sigmoid_2:y:0"lstm_cell_219/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_219_matmul_readvariableop_resource.lstm_cell_219_matmul_1_readvariableop_resource-lstm_cell_219_biasadd_readvariableop_resource*
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
while_body_1338506*
condR
while_cond_1338505*K
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
NoOpNoOp%^lstm_cell_219/BiasAdd/ReadVariableOp$^lstm_cell_219/MatMul/ReadVariableOp&^lstm_cell_219/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_219/BiasAdd/ReadVariableOp$lstm_cell_219/BiasAdd/ReadVariableOp2J
#lstm_cell_219/MatMul/ReadVariableOp#lstm_cell_219/MatMul/ReadVariableOp2N
%lstm_cell_219/MatMul_1/ReadVariableOp%lstm_cell_219/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_196_layer_call_and_return_conditional_losses_1338740

inputs?
,lstm_cell_220_matmul_readvariableop_resource:	d?A
.lstm_cell_220_matmul_1_readvariableop_resource:	2?<
-lstm_cell_220_biasadd_readvariableop_resource:	?
identity??$lstm_cell_220/BiasAdd/ReadVariableOp?#lstm_cell_220/MatMul/ReadVariableOp?%lstm_cell_220/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_220/MatMul/ReadVariableOpReadVariableOp,lstm_cell_220_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_220/MatMulMatMulstrided_slice_2:output:0+lstm_cell_220/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_220/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_220_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_220/MatMul_1MatMulzeros:output:0-lstm_cell_220/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_220/addAddV2lstm_cell_220/MatMul:product:0 lstm_cell_220/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_220/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_220_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_220/BiasAddBiasAddlstm_cell_220/add:z:0,lstm_cell_220/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_220/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_220/splitSplit&lstm_cell_220/split/split_dim:output:0lstm_cell_220/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_220/SigmoidSigmoidlstm_cell_220/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_220/Sigmoid_1Sigmoidlstm_cell_220/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_220/mulMullstm_cell_220/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_220/ReluRelulstm_cell_220/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_220/mul_1Mullstm_cell_220/Sigmoid:y:0 lstm_cell_220/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_220/add_1AddV2lstm_cell_220/mul:z:0lstm_cell_220/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_220/Sigmoid_2Sigmoidlstm_cell_220/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_220/Relu_1Relulstm_cell_220/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_220/mul_2Mullstm_cell_220/Sigmoid_2:y:0"lstm_cell_220/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_220_matmul_readvariableop_resource.lstm_cell_220_matmul_1_readvariableop_resource-lstm_cell_220_biasadd_readvariableop_resource*
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
while_body_1338656*
condR
while_cond_1338655*K
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
NoOpNoOp%^lstm_cell_220/BiasAdd/ReadVariableOp$^lstm_cell_220/MatMul/ReadVariableOp&^lstm_cell_220/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_220/BiasAdd/ReadVariableOp$lstm_cell_220/BiasAdd/ReadVariableOp2J
#lstm_cell_220/MatMul/ReadVariableOp#lstm_cell_220/MatMul/ReadVariableOp2N
%lstm_cell_220/MatMul_1/ReadVariableOp%lstm_cell_220/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
J__inference_sequential_65_layer_call_and_return_conditional_losses_1340132

inputsH
5lstm_195_lstm_cell_219_matmul_readvariableop_resource:	?J
7lstm_195_lstm_cell_219_matmul_1_readvariableop_resource:	d?E
6lstm_195_lstm_cell_219_biasadd_readvariableop_resource:	?H
5lstm_196_lstm_cell_220_matmul_readvariableop_resource:	d?J
7lstm_196_lstm_cell_220_matmul_1_readvariableop_resource:	2?E
6lstm_196_lstm_cell_220_biasadd_readvariableop_resource:	?G
5lstm_197_lstm_cell_221_matmul_readvariableop_resource:2(I
7lstm_197_lstm_cell_221_matmul_1_readvariableop_resource:
(D
6lstm_197_lstm_cell_221_biasadd_readvariableop_resource:(9
'dense_65_matmul_readvariableop_resource:
6
(dense_65_biasadd_readvariableop_resource:
identity??dense_65/BiasAdd/ReadVariableOp?dense_65/MatMul/ReadVariableOp?-lstm_195/lstm_cell_219/BiasAdd/ReadVariableOp?,lstm_195/lstm_cell_219/MatMul/ReadVariableOp?.lstm_195/lstm_cell_219/MatMul_1/ReadVariableOp?lstm_195/while?-lstm_196/lstm_cell_220/BiasAdd/ReadVariableOp?,lstm_196/lstm_cell_220/MatMul/ReadVariableOp?.lstm_196/lstm_cell_220/MatMul_1/ReadVariableOp?lstm_196/while?-lstm_197/lstm_cell_221/BiasAdd/ReadVariableOp?,lstm_197/lstm_cell_221/MatMul/ReadVariableOp?.lstm_197/lstm_cell_221/MatMul_1/ReadVariableOp?lstm_197/whileD
lstm_195/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_195/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_195/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_195/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_195/strided_sliceStridedSlicelstm_195/Shape:output:0%lstm_195/strided_slice/stack:output:0'lstm_195/strided_slice/stack_1:output:0'lstm_195/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_195/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_195/zeros/packedPacklstm_195/strided_slice:output:0 lstm_195/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_195/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_195/zerosFilllstm_195/zeros/packed:output:0lstm_195/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_195/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_195/zeros_1/packedPacklstm_195/strided_slice:output:0"lstm_195/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_195/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_195/zeros_1Fill lstm_195/zeros_1/packed:output:0lstm_195/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_195/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_195/transpose	Transposeinputs lstm_195/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_195/Shape_1Shapelstm_195/transpose:y:0*
T0*
_output_shapes
:h
lstm_195/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_195/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_195/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_195/strided_slice_1StridedSlicelstm_195/Shape_1:output:0'lstm_195/strided_slice_1/stack:output:0)lstm_195/strided_slice_1/stack_1:output:0)lstm_195/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_195/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_195/TensorArrayV2TensorListReserve-lstm_195/TensorArrayV2/element_shape:output:0!lstm_195/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_195/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_195/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_195/transpose:y:0Glstm_195/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_195/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_195/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_195/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_195/strided_slice_2StridedSlicelstm_195/transpose:y:0'lstm_195/strided_slice_2/stack:output:0)lstm_195/strided_slice_2/stack_1:output:0)lstm_195/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_195/lstm_cell_219/MatMul/ReadVariableOpReadVariableOp5lstm_195_lstm_cell_219_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_195/lstm_cell_219/MatMulMatMul!lstm_195/strided_slice_2:output:04lstm_195/lstm_cell_219/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_195/lstm_cell_219/MatMul_1/ReadVariableOpReadVariableOp7lstm_195_lstm_cell_219_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_195/lstm_cell_219/MatMul_1MatMullstm_195/zeros:output:06lstm_195/lstm_cell_219/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_195/lstm_cell_219/addAddV2'lstm_195/lstm_cell_219/MatMul:product:0)lstm_195/lstm_cell_219/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_195/lstm_cell_219/BiasAdd/ReadVariableOpReadVariableOp6lstm_195_lstm_cell_219_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_195/lstm_cell_219/BiasAddBiasAddlstm_195/lstm_cell_219/add:z:05lstm_195/lstm_cell_219/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_195/lstm_cell_219/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_195/lstm_cell_219/splitSplit/lstm_195/lstm_cell_219/split/split_dim:output:0'lstm_195/lstm_cell_219/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_195/lstm_cell_219/SigmoidSigmoid%lstm_195/lstm_cell_219/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_195/lstm_cell_219/Sigmoid_1Sigmoid%lstm_195/lstm_cell_219/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_195/lstm_cell_219/mulMul$lstm_195/lstm_cell_219/Sigmoid_1:y:0lstm_195/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_195/lstm_cell_219/ReluRelu%lstm_195/lstm_cell_219/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_195/lstm_cell_219/mul_1Mul"lstm_195/lstm_cell_219/Sigmoid:y:0)lstm_195/lstm_cell_219/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_195/lstm_cell_219/add_1AddV2lstm_195/lstm_cell_219/mul:z:0 lstm_195/lstm_cell_219/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_195/lstm_cell_219/Sigmoid_2Sigmoid%lstm_195/lstm_cell_219/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_195/lstm_cell_219/Relu_1Relu lstm_195/lstm_cell_219/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_195/lstm_cell_219/mul_2Mul$lstm_195/lstm_cell_219/Sigmoid_2:y:0+lstm_195/lstm_cell_219/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_195/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_195/TensorArrayV2_1TensorListReserve/lstm_195/TensorArrayV2_1/element_shape:output:0!lstm_195/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_195/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_195/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_195/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_195/whileWhile$lstm_195/while/loop_counter:output:0*lstm_195/while/maximum_iterations:output:0lstm_195/time:output:0!lstm_195/TensorArrayV2_1:handle:0lstm_195/zeros:output:0lstm_195/zeros_1:output:0!lstm_195/strided_slice_1:output:0@lstm_195/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_195_lstm_cell_219_matmul_readvariableop_resource7lstm_195_lstm_cell_219_matmul_1_readvariableop_resource6lstm_195_lstm_cell_219_biasadd_readvariableop_resource*
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
lstm_195_while_body_1339764*'
condR
lstm_195_while_cond_1339763*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_195/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_195/TensorArrayV2Stack/TensorListStackTensorListStacklstm_195/while:output:3Blstm_195/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_195/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_195/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_195/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_195/strided_slice_3StridedSlice4lstm_195/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_195/strided_slice_3/stack:output:0)lstm_195/strided_slice_3/stack_1:output:0)lstm_195/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_195/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_195/transpose_1	Transpose4lstm_195/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_195/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_195/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_196/ShapeShapelstm_195/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_196/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_196/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_196/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_196/strided_sliceStridedSlicelstm_196/Shape:output:0%lstm_196/strided_slice/stack:output:0'lstm_196/strided_slice/stack_1:output:0'lstm_196/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_196/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_196/zeros/packedPacklstm_196/strided_slice:output:0 lstm_196/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_196/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_196/zerosFilllstm_196/zeros/packed:output:0lstm_196/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_196/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_196/zeros_1/packedPacklstm_196/strided_slice:output:0"lstm_196/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_196/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_196/zeros_1Fill lstm_196/zeros_1/packed:output:0lstm_196/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_196/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_196/transpose	Transposelstm_195/transpose_1:y:0 lstm_196/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_196/Shape_1Shapelstm_196/transpose:y:0*
T0*
_output_shapes
:h
lstm_196/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_196/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_196/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_196/strided_slice_1StridedSlicelstm_196/Shape_1:output:0'lstm_196/strided_slice_1/stack:output:0)lstm_196/strided_slice_1/stack_1:output:0)lstm_196/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_196/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_196/TensorArrayV2TensorListReserve-lstm_196/TensorArrayV2/element_shape:output:0!lstm_196/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_196/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_196/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_196/transpose:y:0Glstm_196/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_196/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_196/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_196/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_196/strided_slice_2StridedSlicelstm_196/transpose:y:0'lstm_196/strided_slice_2/stack:output:0)lstm_196/strided_slice_2/stack_1:output:0)lstm_196/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_196/lstm_cell_220/MatMul/ReadVariableOpReadVariableOp5lstm_196_lstm_cell_220_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_196/lstm_cell_220/MatMulMatMul!lstm_196/strided_slice_2:output:04lstm_196/lstm_cell_220/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_196/lstm_cell_220/MatMul_1/ReadVariableOpReadVariableOp7lstm_196_lstm_cell_220_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_196/lstm_cell_220/MatMul_1MatMullstm_196/zeros:output:06lstm_196/lstm_cell_220/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_196/lstm_cell_220/addAddV2'lstm_196/lstm_cell_220/MatMul:product:0)lstm_196/lstm_cell_220/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_196/lstm_cell_220/BiasAdd/ReadVariableOpReadVariableOp6lstm_196_lstm_cell_220_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_196/lstm_cell_220/BiasAddBiasAddlstm_196/lstm_cell_220/add:z:05lstm_196/lstm_cell_220/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_196/lstm_cell_220/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_196/lstm_cell_220/splitSplit/lstm_196/lstm_cell_220/split/split_dim:output:0'lstm_196/lstm_cell_220/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_196/lstm_cell_220/SigmoidSigmoid%lstm_196/lstm_cell_220/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_196/lstm_cell_220/Sigmoid_1Sigmoid%lstm_196/lstm_cell_220/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_196/lstm_cell_220/mulMul$lstm_196/lstm_cell_220/Sigmoid_1:y:0lstm_196/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_196/lstm_cell_220/ReluRelu%lstm_196/lstm_cell_220/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_196/lstm_cell_220/mul_1Mul"lstm_196/lstm_cell_220/Sigmoid:y:0)lstm_196/lstm_cell_220/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_196/lstm_cell_220/add_1AddV2lstm_196/lstm_cell_220/mul:z:0 lstm_196/lstm_cell_220/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_196/lstm_cell_220/Sigmoid_2Sigmoid%lstm_196/lstm_cell_220/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_196/lstm_cell_220/Relu_1Relu lstm_196/lstm_cell_220/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_196/lstm_cell_220/mul_2Mul$lstm_196/lstm_cell_220/Sigmoid_2:y:0+lstm_196/lstm_cell_220/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_196/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_196/TensorArrayV2_1TensorListReserve/lstm_196/TensorArrayV2_1/element_shape:output:0!lstm_196/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_196/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_196/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_196/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_196/whileWhile$lstm_196/while/loop_counter:output:0*lstm_196/while/maximum_iterations:output:0lstm_196/time:output:0!lstm_196/TensorArrayV2_1:handle:0lstm_196/zeros:output:0lstm_196/zeros_1:output:0!lstm_196/strided_slice_1:output:0@lstm_196/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_196_lstm_cell_220_matmul_readvariableop_resource7lstm_196_lstm_cell_220_matmul_1_readvariableop_resource6lstm_196_lstm_cell_220_biasadd_readvariableop_resource*
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
lstm_196_while_body_1339903*'
condR
lstm_196_while_cond_1339902*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_196/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_196/TensorArrayV2Stack/TensorListStackTensorListStacklstm_196/while:output:3Blstm_196/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_196/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_196/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_196/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_196/strided_slice_3StridedSlice4lstm_196/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_196/strided_slice_3/stack:output:0)lstm_196/strided_slice_3/stack_1:output:0)lstm_196/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_196/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_196/transpose_1	Transpose4lstm_196/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_196/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_196/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_197/ShapeShapelstm_196/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_197/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_197/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_197/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_197/strided_sliceStridedSlicelstm_197/Shape:output:0%lstm_197/strided_slice/stack:output:0'lstm_197/strided_slice/stack_1:output:0'lstm_197/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_197/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_197/zeros/packedPacklstm_197/strided_slice:output:0 lstm_197/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_197/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_197/zerosFilllstm_197/zeros/packed:output:0lstm_197/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_197/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_197/zeros_1/packedPacklstm_197/strided_slice:output:0"lstm_197/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_197/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_197/zeros_1Fill lstm_197/zeros_1/packed:output:0lstm_197/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_197/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_197/transpose	Transposelstm_196/transpose_1:y:0 lstm_197/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_197/Shape_1Shapelstm_197/transpose:y:0*
T0*
_output_shapes
:h
lstm_197/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_197/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_197/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_197/strided_slice_1StridedSlicelstm_197/Shape_1:output:0'lstm_197/strided_slice_1/stack:output:0)lstm_197/strided_slice_1/stack_1:output:0)lstm_197/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_197/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_197/TensorArrayV2TensorListReserve-lstm_197/TensorArrayV2/element_shape:output:0!lstm_197/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_197/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_197/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_197/transpose:y:0Glstm_197/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_197/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_197/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_197/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_197/strided_slice_2StridedSlicelstm_197/transpose:y:0'lstm_197/strided_slice_2/stack:output:0)lstm_197/strided_slice_2/stack_1:output:0)lstm_197/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_197/lstm_cell_221/MatMul/ReadVariableOpReadVariableOp5lstm_197_lstm_cell_221_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_197/lstm_cell_221/MatMulMatMul!lstm_197/strided_slice_2:output:04lstm_197/lstm_cell_221/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_197/lstm_cell_221/MatMul_1/ReadVariableOpReadVariableOp7lstm_197_lstm_cell_221_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_197/lstm_cell_221/MatMul_1MatMullstm_197/zeros:output:06lstm_197/lstm_cell_221/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_197/lstm_cell_221/addAddV2'lstm_197/lstm_cell_221/MatMul:product:0)lstm_197/lstm_cell_221/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_197/lstm_cell_221/BiasAdd/ReadVariableOpReadVariableOp6lstm_197_lstm_cell_221_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_197/lstm_cell_221/BiasAddBiasAddlstm_197/lstm_cell_221/add:z:05lstm_197/lstm_cell_221/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_197/lstm_cell_221/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_197/lstm_cell_221/splitSplit/lstm_197/lstm_cell_221/split/split_dim:output:0'lstm_197/lstm_cell_221/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_197/lstm_cell_221/SigmoidSigmoid%lstm_197/lstm_cell_221/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_197/lstm_cell_221/Sigmoid_1Sigmoid%lstm_197/lstm_cell_221/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_197/lstm_cell_221/mulMul$lstm_197/lstm_cell_221/Sigmoid_1:y:0lstm_197/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_197/lstm_cell_221/ReluRelu%lstm_197/lstm_cell_221/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_197/lstm_cell_221/mul_1Mul"lstm_197/lstm_cell_221/Sigmoid:y:0)lstm_197/lstm_cell_221/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_197/lstm_cell_221/add_1AddV2lstm_197/lstm_cell_221/mul:z:0 lstm_197/lstm_cell_221/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_197/lstm_cell_221/Sigmoid_2Sigmoid%lstm_197/lstm_cell_221/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_197/lstm_cell_221/Relu_1Relu lstm_197/lstm_cell_221/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_197/lstm_cell_221/mul_2Mul$lstm_197/lstm_cell_221/Sigmoid_2:y:0+lstm_197/lstm_cell_221/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_197/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_197/TensorArrayV2_1TensorListReserve/lstm_197/TensorArrayV2_1/element_shape:output:0!lstm_197/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_197/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_197/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_197/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_197/whileWhile$lstm_197/while/loop_counter:output:0*lstm_197/while/maximum_iterations:output:0lstm_197/time:output:0!lstm_197/TensorArrayV2_1:handle:0lstm_197/zeros:output:0lstm_197/zeros_1:output:0!lstm_197/strided_slice_1:output:0@lstm_197/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_197_lstm_cell_221_matmul_readvariableop_resource7lstm_197_lstm_cell_221_matmul_1_readvariableop_resource6lstm_197_lstm_cell_221_biasadd_readvariableop_resource*
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
lstm_197_while_body_1340042*'
condR
lstm_197_while_cond_1340041*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_197/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_197/TensorArrayV2Stack/TensorListStackTensorListStacklstm_197/while:output:3Blstm_197/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_197/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_197/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_197/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_197/strided_slice_3StridedSlice4lstm_197/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_197/strided_slice_3/stack:output:0)lstm_197/strided_slice_3/stack_1:output:0)lstm_197/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_197/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_197/transpose_1	Transpose4lstm_197/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_197/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_197/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_65/MatMul/ReadVariableOpReadVariableOp'dense_65_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_65/MatMulMatMul!lstm_197/strided_slice_3:output:0&dense_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_65/BiasAdd/ReadVariableOpReadVariableOp(dense_65_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_65/BiasAddBiasAdddense_65/MatMul:product:0'dense_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_65/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_65/BiasAdd/ReadVariableOp^dense_65/MatMul/ReadVariableOp.^lstm_195/lstm_cell_219/BiasAdd/ReadVariableOp-^lstm_195/lstm_cell_219/MatMul/ReadVariableOp/^lstm_195/lstm_cell_219/MatMul_1/ReadVariableOp^lstm_195/while.^lstm_196/lstm_cell_220/BiasAdd/ReadVariableOp-^lstm_196/lstm_cell_220/MatMul/ReadVariableOp/^lstm_196/lstm_cell_220/MatMul_1/ReadVariableOp^lstm_196/while.^lstm_197/lstm_cell_221/BiasAdd/ReadVariableOp-^lstm_197/lstm_cell_221/MatMul/ReadVariableOp/^lstm_197/lstm_cell_221/MatMul_1/ReadVariableOp^lstm_197/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_65/BiasAdd/ReadVariableOpdense_65/BiasAdd/ReadVariableOp2@
dense_65/MatMul/ReadVariableOpdense_65/MatMul/ReadVariableOp2^
-lstm_195/lstm_cell_219/BiasAdd/ReadVariableOp-lstm_195/lstm_cell_219/BiasAdd/ReadVariableOp2\
,lstm_195/lstm_cell_219/MatMul/ReadVariableOp,lstm_195/lstm_cell_219/MatMul/ReadVariableOp2`
.lstm_195/lstm_cell_219/MatMul_1/ReadVariableOp.lstm_195/lstm_cell_219/MatMul_1/ReadVariableOp2 
lstm_195/whilelstm_195/while2^
-lstm_196/lstm_cell_220/BiasAdd/ReadVariableOp-lstm_196/lstm_cell_220/BiasAdd/ReadVariableOp2\
,lstm_196/lstm_cell_220/MatMul/ReadVariableOp,lstm_196/lstm_cell_220/MatMul/ReadVariableOp2`
.lstm_196/lstm_cell_220/MatMul_1/ReadVariableOp.lstm_196/lstm_cell_220/MatMul_1/ReadVariableOp2 
lstm_196/whilelstm_196/while2^
-lstm_197/lstm_cell_221/BiasAdd/ReadVariableOp-lstm_197/lstm_cell_221/BiasAdd/ReadVariableOp2\
,lstm_197/lstm_cell_221/MatMul/ReadVariableOp,lstm_197/lstm_cell_221/MatMul/ReadVariableOp2`
.lstm_197/lstm_cell_221/MatMul_1/ReadVariableOp.lstm_197/lstm_cell_221/MatMul_1/ReadVariableOp2 
lstm_197/whilelstm_197/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_195_layer_call_fn_1340581
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
E__inference_lstm_195_layer_call_and_return_conditional_losses_1337732|
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
#__inference__traced_restore_1342993
file_prefix2
 assignvariableop_dense_65_kernel:
.
 assignvariableop_1_dense_65_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_195_lstm_cell_195_kernel:	?M
:assignvariableop_8_lstm_195_lstm_cell_195_recurrent_kernel:	d?=
.assignvariableop_9_lstm_195_lstm_cell_195_bias:	?D
1assignvariableop_10_lstm_196_lstm_cell_196_kernel:	d?N
;assignvariableop_11_lstm_196_lstm_cell_196_recurrent_kernel:	2?>
/assignvariableop_12_lstm_196_lstm_cell_196_bias:	?C
1assignvariableop_13_lstm_197_lstm_cell_197_kernel:2(M
;assignvariableop_14_lstm_197_lstm_cell_197_recurrent_kernel:
(=
/assignvariableop_15_lstm_197_lstm_cell_197_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_65_kernel_m:
6
(assignvariableop_19_adam_dense_65_bias_m:K
8assignvariableop_20_adam_lstm_195_lstm_cell_195_kernel_m:	?U
Bassignvariableop_21_adam_lstm_195_lstm_cell_195_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_195_lstm_cell_195_bias_m:	?K
8assignvariableop_23_adam_lstm_196_lstm_cell_196_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_196_lstm_cell_196_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_196_lstm_cell_196_bias_m:	?J
8assignvariableop_26_adam_lstm_197_lstm_cell_197_kernel_m:2(T
Bassignvariableop_27_adam_lstm_197_lstm_cell_197_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_197_lstm_cell_197_bias_m:(<
*assignvariableop_29_adam_dense_65_kernel_v:
6
(assignvariableop_30_adam_dense_65_bias_v:K
8assignvariableop_31_adam_lstm_195_lstm_cell_195_kernel_v:	?U
Bassignvariableop_32_adam_lstm_195_lstm_cell_195_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_195_lstm_cell_195_bias_v:	?K
8assignvariableop_34_adam_lstm_196_lstm_cell_196_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_196_lstm_cell_196_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_196_lstm_cell_196_bias_v:	?J
8assignvariableop_37_adam_lstm_197_lstm_cell_197_kernel_v:2(T
Bassignvariableop_38_adam_lstm_197_lstm_cell_197_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_197_lstm_cell_197_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_65_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_65_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_195_lstm_cell_195_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_195_lstm_cell_195_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_195_lstm_cell_195_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_196_lstm_cell_196_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_196_lstm_cell_196_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_196_lstm_cell_196_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_197_lstm_cell_197_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_197_lstm_cell_197_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_197_lstm_cell_197_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_65_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_65_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_195_lstm_cell_195_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_195_lstm_cell_195_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_195_lstm_cell_195_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_196_lstm_cell_196_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_196_lstm_cell_196_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_196_lstm_cell_196_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_197_lstm_cell_197_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_197_lstm_cell_197_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_197_lstm_cell_197_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_65_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_65_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_195_lstm_cell_195_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_195_lstm_cell_195_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_195_lstm_cell_195_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_196_lstm_cell_196_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_196_lstm_cell_196_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_196_lstm_cell_196_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_197_lstm_cell_197_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_197_lstm_cell_197_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_197_lstm_cell_197_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
?
*__inference_dense_65_layer_call_fn_1342416

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
E__inference_dense_65_layer_call_and_return_conditional_losses_1338908o
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
?J
?
E__inference_lstm_195_layer_call_and_return_conditional_losses_1341032

inputs?
,lstm_cell_219_matmul_readvariableop_resource:	?A
.lstm_cell_219_matmul_1_readvariableop_resource:	d?<
-lstm_cell_219_biasadd_readvariableop_resource:	?
identity??$lstm_cell_219/BiasAdd/ReadVariableOp?#lstm_cell_219/MatMul/ReadVariableOp?%lstm_cell_219/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_219/MatMul/ReadVariableOpReadVariableOp,lstm_cell_219_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_219/MatMulMatMulstrided_slice_2:output:0+lstm_cell_219/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_219/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_219_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_219/MatMul_1MatMulzeros:output:0-lstm_cell_219/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_219/addAddV2lstm_cell_219/MatMul:product:0 lstm_cell_219/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_219/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_219_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_219/BiasAddBiasAddlstm_cell_219/add:z:0,lstm_cell_219/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_219/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_219/splitSplit&lstm_cell_219/split/split_dim:output:0lstm_cell_219/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_219/SigmoidSigmoidlstm_cell_219/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_219/Sigmoid_1Sigmoidlstm_cell_219/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_219/mulMullstm_cell_219/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_219/ReluRelulstm_cell_219/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_219/mul_1Mullstm_cell_219/Sigmoid:y:0 lstm_cell_219/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_219/add_1AddV2lstm_cell_219/mul:z:0lstm_cell_219/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_219/Sigmoid_2Sigmoidlstm_cell_219/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_219/Relu_1Relulstm_cell_219/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_219/mul_2Mullstm_cell_219/Sigmoid_2:y:0"lstm_cell_219/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_219_matmul_readvariableop_resource.lstm_cell_219_matmul_1_readvariableop_resource-lstm_cell_219_biasadd_readvariableop_resource*
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
while_body_1340948*
condR
while_cond_1340947*K
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
NoOpNoOp%^lstm_cell_219/BiasAdd/ReadVariableOp$^lstm_cell_219/MatMul/ReadVariableOp&^lstm_cell_219/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_219/BiasAdd/ReadVariableOp$lstm_cell_219/BiasAdd/ReadVariableOp2J
#lstm_cell_219/MatMul/ReadVariableOp#lstm_cell_219/MatMul/ReadVariableOp2N
%lstm_cell_219/MatMul_1/ReadVariableOp%lstm_cell_219/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1339351
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1339351___redundant_placeholder05
1while_while_cond_1339351___redundant_placeholder15
1while_while_cond_1339351___redundant_placeholder25
1while_while_cond_1339351___redundant_placeholder3
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
while_cond_1339186
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1339186___redundant_placeholder05
1while_while_cond_1339186___redundant_placeholder15
1while_while_cond_1339186___redundant_placeholder25
1while_while_cond_1339186___redundant_placeholder3
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
?
?
J__inference_lstm_cell_221_layer_call_and_return_conditional_losses_1338158

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
?
?
*__inference_lstm_196_layer_call_fn_1341208

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
E__inference_lstm_196_layer_call_and_return_conditional_losses_1338740s
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
?8
?
E__inference_lstm_196_layer_call_and_return_conditional_losses_1337891

inputs(
lstm_cell_220_1337809:	d?(
lstm_cell_220_1337811:	2?$
lstm_cell_220_1337813:	?
identity??%lstm_cell_220/StatefulPartitionedCall?while;
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
%lstm_cell_220/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_220_1337809lstm_cell_220_1337811lstm_cell_220_1337813*
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
J__inference_lstm_cell_220_layer_call_and_return_conditional_losses_1337808n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_220_1337809lstm_cell_220_1337811lstm_cell_220_1337813*
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
while_body_1337822*
condR
while_cond_1337821*K
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
NoOpNoOp&^lstm_cell_220/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_220/StatefulPartitionedCall%lstm_cell_220/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_1341707
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_220_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_220_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_220_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_220_matmul_readvariableop_resource:	d?G
4while_lstm_cell_220_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_220_biasadd_readvariableop_resource:	???*while/lstm_cell_220/BiasAdd/ReadVariableOp?)while/lstm_cell_220/MatMul/ReadVariableOp?+while/lstm_cell_220/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_220/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_220_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_220/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_220/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_220/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_220_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_220/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_220/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_220/addAddV2$while/lstm_cell_220/MatMul:product:0&while/lstm_cell_220/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_220/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_220_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_220/BiasAddBiasAddwhile/lstm_cell_220/add:z:02while/lstm_cell_220/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_220/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_220/splitSplit,while/lstm_cell_220/split/split_dim:output:0$while/lstm_cell_220/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_220/SigmoidSigmoid"while/lstm_cell_220/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_220/Sigmoid_1Sigmoid"while/lstm_cell_220/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_220/mulMul!while/lstm_cell_220/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_220/ReluRelu"while/lstm_cell_220/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_220/mul_1Mulwhile/lstm_cell_220/Sigmoid:y:0&while/lstm_cell_220/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_220/add_1AddV2while/lstm_cell_220/mul:z:0while/lstm_cell_220/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_220/Sigmoid_2Sigmoid"while/lstm_cell_220/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_220/Relu_1Reluwhile/lstm_cell_220/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_220/mul_2Mul!while/lstm_cell_220/Sigmoid_2:y:0(while/lstm_cell_220/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_220/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_220/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_220/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_220/BiasAdd/ReadVariableOp*^while/lstm_cell_220/MatMul/ReadVariableOp,^while/lstm_cell_220/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_220_biasadd_readvariableop_resource5while_lstm_cell_220_biasadd_readvariableop_resource_0"n
4while_lstm_cell_220_matmul_1_readvariableop_resource6while_lstm_cell_220_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_220_matmul_readvariableop_resource4while_lstm_cell_220_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_220/BiasAdd/ReadVariableOp*while/lstm_cell_220/BiasAdd/ReadVariableOp2V
)while/lstm_cell_220/MatMul/ReadVariableOp)while/lstm_cell_220/MatMul/ReadVariableOp2Z
+while/lstm_cell_220/MatMul_1/ReadVariableOp+while/lstm_cell_220/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1338655
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1338655___redundant_placeholder05
1while_while_cond_1338655___redundant_placeholder15
1while_while_cond_1338655___redundant_placeholder25
1while_while_cond_1338655___redundant_placeholder3
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
?
E__inference_dense_65_layer_call_and_return_conditional_losses_1338908

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
J__inference_lstm_cell_220_layer_call_and_return_conditional_losses_1342622

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
?W
?
 __inference__traced_save_1342863
file_prefix.
*savev2_dense_65_kernel_read_readvariableop,
(savev2_dense_65_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_195_lstm_cell_195_kernel_read_readvariableopF
Bsavev2_lstm_195_lstm_cell_195_recurrent_kernel_read_readvariableop:
6savev2_lstm_195_lstm_cell_195_bias_read_readvariableop<
8savev2_lstm_196_lstm_cell_196_kernel_read_readvariableopF
Bsavev2_lstm_196_lstm_cell_196_recurrent_kernel_read_readvariableop:
6savev2_lstm_196_lstm_cell_196_bias_read_readvariableop<
8savev2_lstm_197_lstm_cell_197_kernel_read_readvariableopF
Bsavev2_lstm_197_lstm_cell_197_recurrent_kernel_read_readvariableop:
6savev2_lstm_197_lstm_cell_197_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_65_kernel_m_read_readvariableop3
/savev2_adam_dense_65_bias_m_read_readvariableopC
?savev2_adam_lstm_195_lstm_cell_195_kernel_m_read_readvariableopM
Isavev2_adam_lstm_195_lstm_cell_195_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_195_lstm_cell_195_bias_m_read_readvariableopC
?savev2_adam_lstm_196_lstm_cell_196_kernel_m_read_readvariableopM
Isavev2_adam_lstm_196_lstm_cell_196_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_196_lstm_cell_196_bias_m_read_readvariableopC
?savev2_adam_lstm_197_lstm_cell_197_kernel_m_read_readvariableopM
Isavev2_adam_lstm_197_lstm_cell_197_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_197_lstm_cell_197_bias_m_read_readvariableop5
1savev2_adam_dense_65_kernel_v_read_readvariableop3
/savev2_adam_dense_65_bias_v_read_readvariableopC
?savev2_adam_lstm_195_lstm_cell_195_kernel_v_read_readvariableopM
Isavev2_adam_lstm_195_lstm_cell_195_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_195_lstm_cell_195_bias_v_read_readvariableopC
?savev2_adam_lstm_196_lstm_cell_196_kernel_v_read_readvariableopM
Isavev2_adam_lstm_196_lstm_cell_196_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_196_lstm_cell_196_bias_v_read_readvariableopC
?savev2_adam_lstm_197_lstm_cell_197_kernel_v_read_readvariableopM
Isavev2_adam_lstm_197_lstm_cell_197_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_197_lstm_cell_197_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_65_kernel_read_readvariableop(savev2_dense_65_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_195_lstm_cell_195_kernel_read_readvariableopBsavev2_lstm_195_lstm_cell_195_recurrent_kernel_read_readvariableop6savev2_lstm_195_lstm_cell_195_bias_read_readvariableop8savev2_lstm_196_lstm_cell_196_kernel_read_readvariableopBsavev2_lstm_196_lstm_cell_196_recurrent_kernel_read_readvariableop6savev2_lstm_196_lstm_cell_196_bias_read_readvariableop8savev2_lstm_197_lstm_cell_197_kernel_read_readvariableopBsavev2_lstm_197_lstm_cell_197_recurrent_kernel_read_readvariableop6savev2_lstm_197_lstm_cell_197_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_65_kernel_m_read_readvariableop/savev2_adam_dense_65_bias_m_read_readvariableop?savev2_adam_lstm_195_lstm_cell_195_kernel_m_read_readvariableopIsavev2_adam_lstm_195_lstm_cell_195_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_195_lstm_cell_195_bias_m_read_readvariableop?savev2_adam_lstm_196_lstm_cell_196_kernel_m_read_readvariableopIsavev2_adam_lstm_196_lstm_cell_196_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_196_lstm_cell_196_bias_m_read_readvariableop?savev2_adam_lstm_197_lstm_cell_197_kernel_m_read_readvariableopIsavev2_adam_lstm_197_lstm_cell_197_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_197_lstm_cell_197_bias_m_read_readvariableop1savev2_adam_dense_65_kernel_v_read_readvariableop/savev2_adam_dense_65_bias_v_read_readvariableop?savev2_adam_lstm_195_lstm_cell_195_kernel_v_read_readvariableopIsavev2_adam_lstm_195_lstm_cell_195_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_195_lstm_cell_195_bias_v_read_readvariableop?savev2_adam_lstm_196_lstm_cell_196_kernel_v_read_readvariableopIsavev2_adam_lstm_196_lstm_cell_196_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_196_lstm_cell_196_bias_v_read_readvariableop?savev2_adam_lstm_197_lstm_cell_197_kernel_v_read_readvariableopIsavev2_adam_lstm_197_lstm_cell_197_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_197_lstm_cell_197_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?#
?
while_body_1338363
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_221_1338387_0:2(/
while_lstm_cell_221_1338389_0:
(+
while_lstm_cell_221_1338391_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_221_1338387:2(-
while_lstm_cell_221_1338389:
()
while_lstm_cell_221_1338391:(??+while/lstm_cell_221/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_221/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_221_1338387_0while_lstm_cell_221_1338389_0while_lstm_cell_221_1338391_0*
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
J__inference_lstm_cell_221_layer_call_and_return_conditional_losses_1338304?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_221/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_221/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_221/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_221/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_221_1338387while_lstm_cell_221_1338387_0"<
while_lstm_cell_221_1338389while_lstm_cell_221_1338389_0"<
while_lstm_cell_221_1338391while_lstm_cell_221_1338391_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_221/StatefulPartitionedCall+while/lstm_cell_221/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_1340804
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1340804___redundant_placeholder05
1while_while_cond_1340804___redundant_placeholder15
1while_while_cond_1340804___redundant_placeholder25
1while_while_cond_1340804___redundant_placeholder3
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
*__inference_lstm_195_layer_call_fn_1340603

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
E__inference_lstm_195_layer_call_and_return_conditional_losses_1339436s
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
?S
?
)sequential_65_lstm_195_while_body_1337023J
Fsequential_65_lstm_195_while_sequential_65_lstm_195_while_loop_counterP
Lsequential_65_lstm_195_while_sequential_65_lstm_195_while_maximum_iterations,
(sequential_65_lstm_195_while_placeholder.
*sequential_65_lstm_195_while_placeholder_1.
*sequential_65_lstm_195_while_placeholder_2.
*sequential_65_lstm_195_while_placeholder_3I
Esequential_65_lstm_195_while_sequential_65_lstm_195_strided_slice_1_0?
?sequential_65_lstm_195_while_tensorarrayv2read_tensorlistgetitem_sequential_65_lstm_195_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_65_lstm_195_while_lstm_cell_219_matmul_readvariableop_resource_0:	?`
Msequential_65_lstm_195_while_lstm_cell_219_matmul_1_readvariableop_resource_0:	d?[
Lsequential_65_lstm_195_while_lstm_cell_219_biasadd_readvariableop_resource_0:	?)
%sequential_65_lstm_195_while_identity+
'sequential_65_lstm_195_while_identity_1+
'sequential_65_lstm_195_while_identity_2+
'sequential_65_lstm_195_while_identity_3+
'sequential_65_lstm_195_while_identity_4+
'sequential_65_lstm_195_while_identity_5G
Csequential_65_lstm_195_while_sequential_65_lstm_195_strided_slice_1?
sequential_65_lstm_195_while_tensorarrayv2read_tensorlistgetitem_sequential_65_lstm_195_tensorarrayunstack_tensorlistfromtensor\
Isequential_65_lstm_195_while_lstm_cell_219_matmul_readvariableop_resource:	?^
Ksequential_65_lstm_195_while_lstm_cell_219_matmul_1_readvariableop_resource:	d?Y
Jsequential_65_lstm_195_while_lstm_cell_219_biasadd_readvariableop_resource:	???Asequential_65/lstm_195/while/lstm_cell_219/BiasAdd/ReadVariableOp?@sequential_65/lstm_195/while/lstm_cell_219/MatMul/ReadVariableOp?Bsequential_65/lstm_195/while/lstm_cell_219/MatMul_1/ReadVariableOp?
Nsequential_65/lstm_195/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_65/lstm_195/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_65_lstm_195_while_tensorarrayv2read_tensorlistgetitem_sequential_65_lstm_195_tensorarrayunstack_tensorlistfromtensor_0(sequential_65_lstm_195_while_placeholderWsequential_65/lstm_195/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_65/lstm_195/while/lstm_cell_219/MatMul/ReadVariableOpReadVariableOpKsequential_65_lstm_195_while_lstm_cell_219_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_65/lstm_195/while/lstm_cell_219/MatMulMatMulGsequential_65/lstm_195/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_65/lstm_195/while/lstm_cell_219/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_65/lstm_195/while/lstm_cell_219/MatMul_1/ReadVariableOpReadVariableOpMsequential_65_lstm_195_while_lstm_cell_219_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_65/lstm_195/while/lstm_cell_219/MatMul_1MatMul*sequential_65_lstm_195_while_placeholder_2Jsequential_65/lstm_195/while/lstm_cell_219/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_65/lstm_195/while/lstm_cell_219/addAddV2;sequential_65/lstm_195/while/lstm_cell_219/MatMul:product:0=sequential_65/lstm_195/while/lstm_cell_219/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_65/lstm_195/while/lstm_cell_219/BiasAdd/ReadVariableOpReadVariableOpLsequential_65_lstm_195_while_lstm_cell_219_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_65/lstm_195/while/lstm_cell_219/BiasAddBiasAdd2sequential_65/lstm_195/while/lstm_cell_219/add:z:0Isequential_65/lstm_195/while/lstm_cell_219/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_65/lstm_195/while/lstm_cell_219/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_65/lstm_195/while/lstm_cell_219/splitSplitCsequential_65/lstm_195/while/lstm_cell_219/split/split_dim:output:0;sequential_65/lstm_195/while/lstm_cell_219/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_65/lstm_195/while/lstm_cell_219/SigmoidSigmoid9sequential_65/lstm_195/while/lstm_cell_219/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_65/lstm_195/while/lstm_cell_219/Sigmoid_1Sigmoid9sequential_65/lstm_195/while/lstm_cell_219/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_65/lstm_195/while/lstm_cell_219/mulMul8sequential_65/lstm_195/while/lstm_cell_219/Sigmoid_1:y:0*sequential_65_lstm_195_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_65/lstm_195/while/lstm_cell_219/ReluRelu9sequential_65/lstm_195/while/lstm_cell_219/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_65/lstm_195/while/lstm_cell_219/mul_1Mul6sequential_65/lstm_195/while/lstm_cell_219/Sigmoid:y:0=sequential_65/lstm_195/while/lstm_cell_219/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_65/lstm_195/while/lstm_cell_219/add_1AddV22sequential_65/lstm_195/while/lstm_cell_219/mul:z:04sequential_65/lstm_195/while/lstm_cell_219/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_65/lstm_195/while/lstm_cell_219/Sigmoid_2Sigmoid9sequential_65/lstm_195/while/lstm_cell_219/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_65/lstm_195/while/lstm_cell_219/Relu_1Relu4sequential_65/lstm_195/while/lstm_cell_219/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_65/lstm_195/while/lstm_cell_219/mul_2Mul8sequential_65/lstm_195/while/lstm_cell_219/Sigmoid_2:y:0?sequential_65/lstm_195/while/lstm_cell_219/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_65/lstm_195/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_65_lstm_195_while_placeholder_1(sequential_65_lstm_195_while_placeholder4sequential_65/lstm_195/while/lstm_cell_219/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_65/lstm_195/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_65/lstm_195/while/addAddV2(sequential_65_lstm_195_while_placeholder+sequential_65/lstm_195/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_65/lstm_195/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_65/lstm_195/while/add_1AddV2Fsequential_65_lstm_195_while_sequential_65_lstm_195_while_loop_counter-sequential_65/lstm_195/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_65/lstm_195/while/IdentityIdentity&sequential_65/lstm_195/while/add_1:z:0"^sequential_65/lstm_195/while/NoOp*
T0*
_output_shapes
: ?
'sequential_65/lstm_195/while/Identity_1IdentityLsequential_65_lstm_195_while_sequential_65_lstm_195_while_maximum_iterations"^sequential_65/lstm_195/while/NoOp*
T0*
_output_shapes
: ?
'sequential_65/lstm_195/while/Identity_2Identity$sequential_65/lstm_195/while/add:z:0"^sequential_65/lstm_195/while/NoOp*
T0*
_output_shapes
: ?
'sequential_65/lstm_195/while/Identity_3IdentityQsequential_65/lstm_195/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_65/lstm_195/while/NoOp*
T0*
_output_shapes
: ?
'sequential_65/lstm_195/while/Identity_4Identity4sequential_65/lstm_195/while/lstm_cell_219/mul_2:z:0"^sequential_65/lstm_195/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_65/lstm_195/while/Identity_5Identity4sequential_65/lstm_195/while/lstm_cell_219/add_1:z:0"^sequential_65/lstm_195/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_65/lstm_195/while/NoOpNoOpB^sequential_65/lstm_195/while/lstm_cell_219/BiasAdd/ReadVariableOpA^sequential_65/lstm_195/while/lstm_cell_219/MatMul/ReadVariableOpC^sequential_65/lstm_195/while/lstm_cell_219/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_65_lstm_195_while_identity.sequential_65/lstm_195/while/Identity:output:0"[
'sequential_65_lstm_195_while_identity_10sequential_65/lstm_195/while/Identity_1:output:0"[
'sequential_65_lstm_195_while_identity_20sequential_65/lstm_195/while/Identity_2:output:0"[
'sequential_65_lstm_195_while_identity_30sequential_65/lstm_195/while/Identity_3:output:0"[
'sequential_65_lstm_195_while_identity_40sequential_65/lstm_195/while/Identity_4:output:0"[
'sequential_65_lstm_195_while_identity_50sequential_65/lstm_195/while/Identity_5:output:0"?
Jsequential_65_lstm_195_while_lstm_cell_219_biasadd_readvariableop_resourceLsequential_65_lstm_195_while_lstm_cell_219_biasadd_readvariableop_resource_0"?
Ksequential_65_lstm_195_while_lstm_cell_219_matmul_1_readvariableop_resourceMsequential_65_lstm_195_while_lstm_cell_219_matmul_1_readvariableop_resource_0"?
Isequential_65_lstm_195_while_lstm_cell_219_matmul_readvariableop_resourceKsequential_65_lstm_195_while_lstm_cell_219_matmul_readvariableop_resource_0"?
Csequential_65_lstm_195_while_sequential_65_lstm_195_strided_slice_1Esequential_65_lstm_195_while_sequential_65_lstm_195_strided_slice_1_0"?
sequential_65_lstm_195_while_tensorarrayv2read_tensorlistgetitem_sequential_65_lstm_195_tensorarrayunstack_tensorlistfromtensor?sequential_65_lstm_195_while_tensorarrayv2read_tensorlistgetitem_sequential_65_lstm_195_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_65/lstm_195/while/lstm_cell_219/BiasAdd/ReadVariableOpAsequential_65/lstm_195/while/lstm_cell_219/BiasAdd/ReadVariableOp2?
@sequential_65/lstm_195/while/lstm_cell_219/MatMul/ReadVariableOp@sequential_65/lstm_195/while/lstm_cell_219/MatMul/ReadVariableOp2?
Bsequential_65/lstm_195/while/lstm_cell_219/MatMul_1/ReadVariableOpBsequential_65/lstm_195/while/lstm_cell_219/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?

?
/__inference_sequential_65_layer_call_fn_1338940
lstm_195_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_195_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_65_layer_call_and_return_conditional_losses_1338915o
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
_user_specified_namelstm_195_input
?8
?
while_body_1340662
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_219_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_219_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_219_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_219_matmul_readvariableop_resource:	?G
4while_lstm_cell_219_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_219_biasadd_readvariableop_resource:	???*while/lstm_cell_219/BiasAdd/ReadVariableOp?)while/lstm_cell_219/MatMul/ReadVariableOp?+while/lstm_cell_219/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_219/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_219_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_219/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_219/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_219/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_219_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_219/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_219/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_219/addAddV2$while/lstm_cell_219/MatMul:product:0&while/lstm_cell_219/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_219/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_219_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_219/BiasAddBiasAddwhile/lstm_cell_219/add:z:02while/lstm_cell_219/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_219/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_219/splitSplit,while/lstm_cell_219/split/split_dim:output:0$while/lstm_cell_219/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_219/SigmoidSigmoid"while/lstm_cell_219/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_219/Sigmoid_1Sigmoid"while/lstm_cell_219/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_219/mulMul!while/lstm_cell_219/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_219/ReluRelu"while/lstm_cell_219/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_219/mul_1Mulwhile/lstm_cell_219/Sigmoid:y:0&while/lstm_cell_219/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_219/add_1AddV2while/lstm_cell_219/mul:z:0while/lstm_cell_219/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_219/Sigmoid_2Sigmoid"while/lstm_cell_219/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_219/Relu_1Reluwhile/lstm_cell_219/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_219/mul_2Mul!while/lstm_cell_219/Sigmoid_2:y:0(while/lstm_cell_219/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_219/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_219/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_219/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_219/BiasAdd/ReadVariableOp*^while/lstm_cell_219/MatMul/ReadVariableOp,^while/lstm_cell_219/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_219_biasadd_readvariableop_resource5while_lstm_cell_219_biasadd_readvariableop_resource_0"n
4while_lstm_cell_219_matmul_1_readvariableop_resource6while_lstm_cell_219_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_219_matmul_readvariableop_resource4while_lstm_cell_219_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_219/BiasAdd/ReadVariableOp*while/lstm_cell_219/BiasAdd/ReadVariableOp2V
)while/lstm_cell_219/MatMul/ReadVariableOp)while/lstm_cell_219/MatMul/ReadVariableOp2Z
+while/lstm_cell_219/MatMul_1/ReadVariableOp+while/lstm_cell_219/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?C
?

lstm_196_while_body_1339903.
*lstm_196_while_lstm_196_while_loop_counter4
0lstm_196_while_lstm_196_while_maximum_iterations
lstm_196_while_placeholder 
lstm_196_while_placeholder_1 
lstm_196_while_placeholder_2 
lstm_196_while_placeholder_3-
)lstm_196_while_lstm_196_strided_slice_1_0i
elstm_196_while_tensorarrayv2read_tensorlistgetitem_lstm_196_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_196_while_lstm_cell_220_matmul_readvariableop_resource_0:	d?R
?lstm_196_while_lstm_cell_220_matmul_1_readvariableop_resource_0:	2?M
>lstm_196_while_lstm_cell_220_biasadd_readvariableop_resource_0:	?
lstm_196_while_identity
lstm_196_while_identity_1
lstm_196_while_identity_2
lstm_196_while_identity_3
lstm_196_while_identity_4
lstm_196_while_identity_5+
'lstm_196_while_lstm_196_strided_slice_1g
clstm_196_while_tensorarrayv2read_tensorlistgetitem_lstm_196_tensorarrayunstack_tensorlistfromtensorN
;lstm_196_while_lstm_cell_220_matmul_readvariableop_resource:	d?P
=lstm_196_while_lstm_cell_220_matmul_1_readvariableop_resource:	2?K
<lstm_196_while_lstm_cell_220_biasadd_readvariableop_resource:	???3lstm_196/while/lstm_cell_220/BiasAdd/ReadVariableOp?2lstm_196/while/lstm_cell_220/MatMul/ReadVariableOp?4lstm_196/while/lstm_cell_220/MatMul_1/ReadVariableOp?
@lstm_196/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_196/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_196_while_tensorarrayv2read_tensorlistgetitem_lstm_196_tensorarrayunstack_tensorlistfromtensor_0lstm_196_while_placeholderIlstm_196/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_196/while/lstm_cell_220/MatMul/ReadVariableOpReadVariableOp=lstm_196_while_lstm_cell_220_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_196/while/lstm_cell_220/MatMulMatMul9lstm_196/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_196/while/lstm_cell_220/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_196/while/lstm_cell_220/MatMul_1/ReadVariableOpReadVariableOp?lstm_196_while_lstm_cell_220_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_196/while/lstm_cell_220/MatMul_1MatMullstm_196_while_placeholder_2<lstm_196/while/lstm_cell_220/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_196/while/lstm_cell_220/addAddV2-lstm_196/while/lstm_cell_220/MatMul:product:0/lstm_196/while/lstm_cell_220/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_196/while/lstm_cell_220/BiasAdd/ReadVariableOpReadVariableOp>lstm_196_while_lstm_cell_220_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_196/while/lstm_cell_220/BiasAddBiasAdd$lstm_196/while/lstm_cell_220/add:z:0;lstm_196/while/lstm_cell_220/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_196/while/lstm_cell_220/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_196/while/lstm_cell_220/splitSplit5lstm_196/while/lstm_cell_220/split/split_dim:output:0-lstm_196/while/lstm_cell_220/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_196/while/lstm_cell_220/SigmoidSigmoid+lstm_196/while/lstm_cell_220/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_196/while/lstm_cell_220/Sigmoid_1Sigmoid+lstm_196/while/lstm_cell_220/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_196/while/lstm_cell_220/mulMul*lstm_196/while/lstm_cell_220/Sigmoid_1:y:0lstm_196_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_196/while/lstm_cell_220/ReluRelu+lstm_196/while/lstm_cell_220/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_196/while/lstm_cell_220/mul_1Mul(lstm_196/while/lstm_cell_220/Sigmoid:y:0/lstm_196/while/lstm_cell_220/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_196/while/lstm_cell_220/add_1AddV2$lstm_196/while/lstm_cell_220/mul:z:0&lstm_196/while/lstm_cell_220/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_196/while/lstm_cell_220/Sigmoid_2Sigmoid+lstm_196/while/lstm_cell_220/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_196/while/lstm_cell_220/Relu_1Relu&lstm_196/while/lstm_cell_220/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_196/while/lstm_cell_220/mul_2Mul*lstm_196/while/lstm_cell_220/Sigmoid_2:y:01lstm_196/while/lstm_cell_220/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_196/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_196_while_placeholder_1lstm_196_while_placeholder&lstm_196/while/lstm_cell_220/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_196/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_196/while/addAddV2lstm_196_while_placeholderlstm_196/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_196/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_196/while/add_1AddV2*lstm_196_while_lstm_196_while_loop_counterlstm_196/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_196/while/IdentityIdentitylstm_196/while/add_1:z:0^lstm_196/while/NoOp*
T0*
_output_shapes
: ?
lstm_196/while/Identity_1Identity0lstm_196_while_lstm_196_while_maximum_iterations^lstm_196/while/NoOp*
T0*
_output_shapes
: t
lstm_196/while/Identity_2Identitylstm_196/while/add:z:0^lstm_196/while/NoOp*
T0*
_output_shapes
: ?
lstm_196/while/Identity_3IdentityClstm_196/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_196/while/NoOp*
T0*
_output_shapes
: ?
lstm_196/while/Identity_4Identity&lstm_196/while/lstm_cell_220/mul_2:z:0^lstm_196/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_196/while/Identity_5Identity&lstm_196/while/lstm_cell_220/add_1:z:0^lstm_196/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_196/while/NoOpNoOp4^lstm_196/while/lstm_cell_220/BiasAdd/ReadVariableOp3^lstm_196/while/lstm_cell_220/MatMul/ReadVariableOp5^lstm_196/while/lstm_cell_220/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_196_while_identity lstm_196/while/Identity:output:0"?
lstm_196_while_identity_1"lstm_196/while/Identity_1:output:0"?
lstm_196_while_identity_2"lstm_196/while/Identity_2:output:0"?
lstm_196_while_identity_3"lstm_196/while/Identity_3:output:0"?
lstm_196_while_identity_4"lstm_196/while/Identity_4:output:0"?
lstm_196_while_identity_5"lstm_196/while/Identity_5:output:0"T
'lstm_196_while_lstm_196_strided_slice_1)lstm_196_while_lstm_196_strided_slice_1_0"~
<lstm_196_while_lstm_cell_220_biasadd_readvariableop_resource>lstm_196_while_lstm_cell_220_biasadd_readvariableop_resource_0"?
=lstm_196_while_lstm_cell_220_matmul_1_readvariableop_resource?lstm_196_while_lstm_cell_220_matmul_1_readvariableop_resource_0"|
;lstm_196_while_lstm_cell_220_matmul_readvariableop_resource=lstm_196_while_lstm_cell_220_matmul_readvariableop_resource_0"?
clstm_196_while_tensorarrayv2read_tensorlistgetitem_lstm_196_tensorarrayunstack_tensorlistfromtensorelstm_196_while_tensorarrayv2read_tensorlistgetitem_lstm_196_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_196/while/lstm_cell_220/BiasAdd/ReadVariableOp3lstm_196/while/lstm_cell_220/BiasAdd/ReadVariableOp2h
2lstm_196/while/lstm_cell_220/MatMul/ReadVariableOp2lstm_196/while/lstm_cell_220/MatMul/ReadVariableOp2l
4lstm_196/while/lstm_cell_220/MatMul_1/ReadVariableOp4lstm_196/while/lstm_cell_220/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_195_while_body_1339764.
*lstm_195_while_lstm_195_while_loop_counter4
0lstm_195_while_lstm_195_while_maximum_iterations
lstm_195_while_placeholder 
lstm_195_while_placeholder_1 
lstm_195_while_placeholder_2 
lstm_195_while_placeholder_3-
)lstm_195_while_lstm_195_strided_slice_1_0i
elstm_195_while_tensorarrayv2read_tensorlistgetitem_lstm_195_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_195_while_lstm_cell_219_matmul_readvariableop_resource_0:	?R
?lstm_195_while_lstm_cell_219_matmul_1_readvariableop_resource_0:	d?M
>lstm_195_while_lstm_cell_219_biasadd_readvariableop_resource_0:	?
lstm_195_while_identity
lstm_195_while_identity_1
lstm_195_while_identity_2
lstm_195_while_identity_3
lstm_195_while_identity_4
lstm_195_while_identity_5+
'lstm_195_while_lstm_195_strided_slice_1g
clstm_195_while_tensorarrayv2read_tensorlistgetitem_lstm_195_tensorarrayunstack_tensorlistfromtensorN
;lstm_195_while_lstm_cell_219_matmul_readvariableop_resource:	?P
=lstm_195_while_lstm_cell_219_matmul_1_readvariableop_resource:	d?K
<lstm_195_while_lstm_cell_219_biasadd_readvariableop_resource:	???3lstm_195/while/lstm_cell_219/BiasAdd/ReadVariableOp?2lstm_195/while/lstm_cell_219/MatMul/ReadVariableOp?4lstm_195/while/lstm_cell_219/MatMul_1/ReadVariableOp?
@lstm_195/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_195/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_195_while_tensorarrayv2read_tensorlistgetitem_lstm_195_tensorarrayunstack_tensorlistfromtensor_0lstm_195_while_placeholderIlstm_195/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_195/while/lstm_cell_219/MatMul/ReadVariableOpReadVariableOp=lstm_195_while_lstm_cell_219_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_195/while/lstm_cell_219/MatMulMatMul9lstm_195/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_195/while/lstm_cell_219/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_195/while/lstm_cell_219/MatMul_1/ReadVariableOpReadVariableOp?lstm_195_while_lstm_cell_219_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_195/while/lstm_cell_219/MatMul_1MatMullstm_195_while_placeholder_2<lstm_195/while/lstm_cell_219/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_195/while/lstm_cell_219/addAddV2-lstm_195/while/lstm_cell_219/MatMul:product:0/lstm_195/while/lstm_cell_219/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_195/while/lstm_cell_219/BiasAdd/ReadVariableOpReadVariableOp>lstm_195_while_lstm_cell_219_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_195/while/lstm_cell_219/BiasAddBiasAdd$lstm_195/while/lstm_cell_219/add:z:0;lstm_195/while/lstm_cell_219/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_195/while/lstm_cell_219/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_195/while/lstm_cell_219/splitSplit5lstm_195/while/lstm_cell_219/split/split_dim:output:0-lstm_195/while/lstm_cell_219/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_195/while/lstm_cell_219/SigmoidSigmoid+lstm_195/while/lstm_cell_219/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_195/while/lstm_cell_219/Sigmoid_1Sigmoid+lstm_195/while/lstm_cell_219/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_195/while/lstm_cell_219/mulMul*lstm_195/while/lstm_cell_219/Sigmoid_1:y:0lstm_195_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_195/while/lstm_cell_219/ReluRelu+lstm_195/while/lstm_cell_219/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_195/while/lstm_cell_219/mul_1Mul(lstm_195/while/lstm_cell_219/Sigmoid:y:0/lstm_195/while/lstm_cell_219/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_195/while/lstm_cell_219/add_1AddV2$lstm_195/while/lstm_cell_219/mul:z:0&lstm_195/while/lstm_cell_219/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_195/while/lstm_cell_219/Sigmoid_2Sigmoid+lstm_195/while/lstm_cell_219/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_195/while/lstm_cell_219/Relu_1Relu&lstm_195/while/lstm_cell_219/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_195/while/lstm_cell_219/mul_2Mul*lstm_195/while/lstm_cell_219/Sigmoid_2:y:01lstm_195/while/lstm_cell_219/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_195/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_195_while_placeholder_1lstm_195_while_placeholder&lstm_195/while/lstm_cell_219/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_195/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_195/while/addAddV2lstm_195_while_placeholderlstm_195/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_195/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_195/while/add_1AddV2*lstm_195_while_lstm_195_while_loop_counterlstm_195/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_195/while/IdentityIdentitylstm_195/while/add_1:z:0^lstm_195/while/NoOp*
T0*
_output_shapes
: ?
lstm_195/while/Identity_1Identity0lstm_195_while_lstm_195_while_maximum_iterations^lstm_195/while/NoOp*
T0*
_output_shapes
: t
lstm_195/while/Identity_2Identitylstm_195/while/add:z:0^lstm_195/while/NoOp*
T0*
_output_shapes
: ?
lstm_195/while/Identity_3IdentityClstm_195/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_195/while/NoOp*
T0*
_output_shapes
: ?
lstm_195/while/Identity_4Identity&lstm_195/while/lstm_cell_219/mul_2:z:0^lstm_195/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_195/while/Identity_5Identity&lstm_195/while/lstm_cell_219/add_1:z:0^lstm_195/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_195/while/NoOpNoOp4^lstm_195/while/lstm_cell_219/BiasAdd/ReadVariableOp3^lstm_195/while/lstm_cell_219/MatMul/ReadVariableOp5^lstm_195/while/lstm_cell_219/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_195_while_identity lstm_195/while/Identity:output:0"?
lstm_195_while_identity_1"lstm_195/while/Identity_1:output:0"?
lstm_195_while_identity_2"lstm_195/while/Identity_2:output:0"?
lstm_195_while_identity_3"lstm_195/while/Identity_3:output:0"?
lstm_195_while_identity_4"lstm_195/while/Identity_4:output:0"?
lstm_195_while_identity_5"lstm_195/while/Identity_5:output:0"T
'lstm_195_while_lstm_195_strided_slice_1)lstm_195_while_lstm_195_strided_slice_1_0"~
<lstm_195_while_lstm_cell_219_biasadd_readvariableop_resource>lstm_195_while_lstm_cell_219_biasadd_readvariableop_resource_0"?
=lstm_195_while_lstm_cell_219_matmul_1_readvariableop_resource?lstm_195_while_lstm_cell_219_matmul_1_readvariableop_resource_0"|
;lstm_195_while_lstm_cell_219_matmul_readvariableop_resource=lstm_195_while_lstm_cell_219_matmul_readvariableop_resource_0"?
clstm_195_while_tensorarrayv2read_tensorlistgetitem_lstm_195_tensorarrayunstack_tensorlistfromtensorelstm_195_while_tensorarrayv2read_tensorlistgetitem_lstm_195_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_195/while/lstm_cell_219/BiasAdd/ReadVariableOp3lstm_195/while/lstm_cell_219/BiasAdd/ReadVariableOp2h
2lstm_195/while/lstm_cell_219/MatMul/ReadVariableOp2lstm_195/while/lstm_cell_219/MatMul/ReadVariableOp2l
4lstm_195/while/lstm_cell_219/MatMul_1/ReadVariableOp4lstm_195/while/lstm_cell_219/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?C
?

lstm_197_while_body_1340469.
*lstm_197_while_lstm_197_while_loop_counter4
0lstm_197_while_lstm_197_while_maximum_iterations
lstm_197_while_placeholder 
lstm_197_while_placeholder_1 
lstm_197_while_placeholder_2 
lstm_197_while_placeholder_3-
)lstm_197_while_lstm_197_strided_slice_1_0i
elstm_197_while_tensorarrayv2read_tensorlistgetitem_lstm_197_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_197_while_lstm_cell_221_matmul_readvariableop_resource_0:2(Q
?lstm_197_while_lstm_cell_221_matmul_1_readvariableop_resource_0:
(L
>lstm_197_while_lstm_cell_221_biasadd_readvariableop_resource_0:(
lstm_197_while_identity
lstm_197_while_identity_1
lstm_197_while_identity_2
lstm_197_while_identity_3
lstm_197_while_identity_4
lstm_197_while_identity_5+
'lstm_197_while_lstm_197_strided_slice_1g
clstm_197_while_tensorarrayv2read_tensorlistgetitem_lstm_197_tensorarrayunstack_tensorlistfromtensorM
;lstm_197_while_lstm_cell_221_matmul_readvariableop_resource:2(O
=lstm_197_while_lstm_cell_221_matmul_1_readvariableop_resource:
(J
<lstm_197_while_lstm_cell_221_biasadd_readvariableop_resource:(??3lstm_197/while/lstm_cell_221/BiasAdd/ReadVariableOp?2lstm_197/while/lstm_cell_221/MatMul/ReadVariableOp?4lstm_197/while/lstm_cell_221/MatMul_1/ReadVariableOp?
@lstm_197/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_197/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_197_while_tensorarrayv2read_tensorlistgetitem_lstm_197_tensorarrayunstack_tensorlistfromtensor_0lstm_197_while_placeholderIlstm_197/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_197/while/lstm_cell_221/MatMul/ReadVariableOpReadVariableOp=lstm_197_while_lstm_cell_221_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_197/while/lstm_cell_221/MatMulMatMul9lstm_197/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_197/while/lstm_cell_221/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_197/while/lstm_cell_221/MatMul_1/ReadVariableOpReadVariableOp?lstm_197_while_lstm_cell_221_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_197/while/lstm_cell_221/MatMul_1MatMullstm_197_while_placeholder_2<lstm_197/while/lstm_cell_221/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_197/while/lstm_cell_221/addAddV2-lstm_197/while/lstm_cell_221/MatMul:product:0/lstm_197/while/lstm_cell_221/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_197/while/lstm_cell_221/BiasAdd/ReadVariableOpReadVariableOp>lstm_197_while_lstm_cell_221_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_197/while/lstm_cell_221/BiasAddBiasAdd$lstm_197/while/lstm_cell_221/add:z:0;lstm_197/while/lstm_cell_221/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_197/while/lstm_cell_221/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_197/while/lstm_cell_221/splitSplit5lstm_197/while/lstm_cell_221/split/split_dim:output:0-lstm_197/while/lstm_cell_221/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_197/while/lstm_cell_221/SigmoidSigmoid+lstm_197/while/lstm_cell_221/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_197/while/lstm_cell_221/Sigmoid_1Sigmoid+lstm_197/while/lstm_cell_221/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_197/while/lstm_cell_221/mulMul*lstm_197/while/lstm_cell_221/Sigmoid_1:y:0lstm_197_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_197/while/lstm_cell_221/ReluRelu+lstm_197/while/lstm_cell_221/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_197/while/lstm_cell_221/mul_1Mul(lstm_197/while/lstm_cell_221/Sigmoid:y:0/lstm_197/while/lstm_cell_221/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_197/while/lstm_cell_221/add_1AddV2$lstm_197/while/lstm_cell_221/mul:z:0&lstm_197/while/lstm_cell_221/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_197/while/lstm_cell_221/Sigmoid_2Sigmoid+lstm_197/while/lstm_cell_221/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_197/while/lstm_cell_221/Relu_1Relu&lstm_197/while/lstm_cell_221/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_197/while/lstm_cell_221/mul_2Mul*lstm_197/while/lstm_cell_221/Sigmoid_2:y:01lstm_197/while/lstm_cell_221/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_197/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_197_while_placeholder_1lstm_197_while_placeholder&lstm_197/while/lstm_cell_221/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_197/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_197/while/addAddV2lstm_197_while_placeholderlstm_197/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_197/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_197/while/add_1AddV2*lstm_197_while_lstm_197_while_loop_counterlstm_197/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_197/while/IdentityIdentitylstm_197/while/add_1:z:0^lstm_197/while/NoOp*
T0*
_output_shapes
: ?
lstm_197/while/Identity_1Identity0lstm_197_while_lstm_197_while_maximum_iterations^lstm_197/while/NoOp*
T0*
_output_shapes
: t
lstm_197/while/Identity_2Identitylstm_197/while/add:z:0^lstm_197/while/NoOp*
T0*
_output_shapes
: ?
lstm_197/while/Identity_3IdentityClstm_197/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_197/while/NoOp*
T0*
_output_shapes
: ?
lstm_197/while/Identity_4Identity&lstm_197/while/lstm_cell_221/mul_2:z:0^lstm_197/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_197/while/Identity_5Identity&lstm_197/while/lstm_cell_221/add_1:z:0^lstm_197/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_197/while/NoOpNoOp4^lstm_197/while/lstm_cell_221/BiasAdd/ReadVariableOp3^lstm_197/while/lstm_cell_221/MatMul/ReadVariableOp5^lstm_197/while/lstm_cell_221/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_197_while_identity lstm_197/while/Identity:output:0"?
lstm_197_while_identity_1"lstm_197/while/Identity_1:output:0"?
lstm_197_while_identity_2"lstm_197/while/Identity_2:output:0"?
lstm_197_while_identity_3"lstm_197/while/Identity_3:output:0"?
lstm_197_while_identity_4"lstm_197/while/Identity_4:output:0"?
lstm_197_while_identity_5"lstm_197/while/Identity_5:output:0"T
'lstm_197_while_lstm_197_strided_slice_1)lstm_197_while_lstm_197_strided_slice_1_0"~
<lstm_197_while_lstm_cell_221_biasadd_readvariableop_resource>lstm_197_while_lstm_cell_221_biasadd_readvariableop_resource_0"?
=lstm_197_while_lstm_cell_221_matmul_1_readvariableop_resource?lstm_197_while_lstm_cell_221_matmul_1_readvariableop_resource_0"|
;lstm_197_while_lstm_cell_221_matmul_readvariableop_resource=lstm_197_while_lstm_cell_221_matmul_readvariableop_resource_0"?
clstm_197_while_tensorarrayv2read_tensorlistgetitem_lstm_197_tensorarrayunstack_tensorlistfromtensorelstm_197_while_tensorarrayv2read_tensorlistgetitem_lstm_197_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_197/while/lstm_cell_221/BiasAdd/ReadVariableOp3lstm_197/while/lstm_cell_221/BiasAdd/ReadVariableOp2h
2lstm_197/while/lstm_cell_221/MatMul/ReadVariableOp2lstm_197/while/lstm_cell_221/MatMul/ReadVariableOp2l
4lstm_197/while/lstm_cell_221/MatMul_1/ReadVariableOp4lstm_197/while/lstm_cell_221/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
?
J__inference_sequential_65_layer_call_and_return_conditional_losses_1339504

inputs#
lstm_195_1339477:	?#
lstm_195_1339479:	d?
lstm_195_1339481:	?#
lstm_196_1339484:	d?#
lstm_196_1339486:	2?
lstm_196_1339488:	?"
lstm_197_1339491:2("
lstm_197_1339493:
(
lstm_197_1339495:("
dense_65_1339498:

dense_65_1339500:
identity?? dense_65/StatefulPartitionedCall? lstm_195/StatefulPartitionedCall? lstm_196/StatefulPartitionedCall? lstm_197/StatefulPartitionedCall?
 lstm_195/StatefulPartitionedCallStatefulPartitionedCallinputslstm_195_1339477lstm_195_1339479lstm_195_1339481*
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
E__inference_lstm_195_layer_call_and_return_conditional_losses_1339436?
 lstm_196/StatefulPartitionedCallStatefulPartitionedCall)lstm_195/StatefulPartitionedCall:output:0lstm_196_1339484lstm_196_1339486lstm_196_1339488*
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
E__inference_lstm_196_layer_call_and_return_conditional_losses_1339271?
 lstm_197/StatefulPartitionedCallStatefulPartitionedCall)lstm_196/StatefulPartitionedCall:output:0lstm_197_1339491lstm_197_1339493lstm_197_1339495*
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
E__inference_lstm_197_layer_call_and_return_conditional_losses_1339106?
 dense_65/StatefulPartitionedCallStatefulPartitionedCall)lstm_197/StatefulPartitionedCall:output:0dense_65_1339498dense_65_1339500*
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
E__inference_dense_65_layer_call_and_return_conditional_losses_1338908x
IdentityIdentity)dense_65/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_65/StatefulPartitionedCall!^lstm_195/StatefulPartitionedCall!^lstm_196/StatefulPartitionedCall!^lstm_197/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall2D
 lstm_195/StatefulPartitionedCall lstm_195/StatefulPartitionedCall2D
 lstm_196/StatefulPartitionedCall lstm_196/StatefulPartitionedCall2D
 lstm_197/StatefulPartitionedCall lstm_197/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1340661
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1340661___redundant_placeholder05
1while_while_cond_1340661___redundant_placeholder15
1while_while_cond_1340661___redundant_placeholder25
1while_while_cond_1340661___redundant_placeholder3
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
*__inference_lstm_195_layer_call_fn_1340592

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
E__inference_lstm_195_layer_call_and_return_conditional_losses_1338590s
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
?
)sequential_65_lstm_195_while_cond_1337022J
Fsequential_65_lstm_195_while_sequential_65_lstm_195_while_loop_counterP
Lsequential_65_lstm_195_while_sequential_65_lstm_195_while_maximum_iterations,
(sequential_65_lstm_195_while_placeholder.
*sequential_65_lstm_195_while_placeholder_1.
*sequential_65_lstm_195_while_placeholder_2.
*sequential_65_lstm_195_while_placeholder_3L
Hsequential_65_lstm_195_while_less_sequential_65_lstm_195_strided_slice_1c
_sequential_65_lstm_195_while_sequential_65_lstm_195_while_cond_1337022___redundant_placeholder0c
_sequential_65_lstm_195_while_sequential_65_lstm_195_while_cond_1337022___redundant_placeholder1c
_sequential_65_lstm_195_while_sequential_65_lstm_195_while_cond_1337022___redundant_placeholder2c
_sequential_65_lstm_195_while_sequential_65_lstm_195_while_cond_1337022___redundant_placeholder3)
%sequential_65_lstm_195_while_identity
?
!sequential_65/lstm_195/while/LessLess(sequential_65_lstm_195_while_placeholderHsequential_65_lstm_195_while_less_sequential_65_lstm_195_strided_slice_1*
T0*
_output_shapes
: y
%sequential_65/lstm_195/while/IdentityIdentity%sequential_65/lstm_195/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_65_lstm_195_while_identity.sequential_65/lstm_195/while/Identity:output:0*(
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
E__inference_lstm_196_layer_call_and_return_conditional_losses_1341648

inputs?
,lstm_cell_220_matmul_readvariableop_resource:	d?A
.lstm_cell_220_matmul_1_readvariableop_resource:	2?<
-lstm_cell_220_biasadd_readvariableop_resource:	?
identity??$lstm_cell_220/BiasAdd/ReadVariableOp?#lstm_cell_220/MatMul/ReadVariableOp?%lstm_cell_220/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_220/MatMul/ReadVariableOpReadVariableOp,lstm_cell_220_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_220/MatMulMatMulstrided_slice_2:output:0+lstm_cell_220/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_220/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_220_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_220/MatMul_1MatMulzeros:output:0-lstm_cell_220/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_220/addAddV2lstm_cell_220/MatMul:product:0 lstm_cell_220/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_220/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_220_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_220/BiasAddBiasAddlstm_cell_220/add:z:0,lstm_cell_220/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_220/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_220/splitSplit&lstm_cell_220/split/split_dim:output:0lstm_cell_220/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_220/SigmoidSigmoidlstm_cell_220/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_220/Sigmoid_1Sigmoidlstm_cell_220/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_220/mulMullstm_cell_220/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_220/ReluRelulstm_cell_220/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_220/mul_1Mullstm_cell_220/Sigmoid:y:0 lstm_cell_220/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_220/add_1AddV2lstm_cell_220/mul:z:0lstm_cell_220/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_220/Sigmoid_2Sigmoidlstm_cell_220/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_220/Relu_1Relulstm_cell_220/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_220/mul_2Mullstm_cell_220/Sigmoid_2:y:0"lstm_cell_220/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_220_matmul_readvariableop_resource.lstm_cell_220_matmul_1_readvariableop_resource-lstm_cell_220_biasadd_readvariableop_resource*
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
while_body_1341564*
condR
while_cond_1341563*K
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
NoOpNoOp%^lstm_cell_220/BiasAdd/ReadVariableOp$^lstm_cell_220/MatMul/ReadVariableOp&^lstm_cell_220/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_220/BiasAdd/ReadVariableOp$lstm_cell_220/BiasAdd/ReadVariableOp2J
#lstm_cell_220/MatMul/ReadVariableOp#lstm_cell_220/MatMul/ReadVariableOp2N
%lstm_cell_220/MatMul_1/ReadVariableOp%lstm_cell_220/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_1338506
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_219_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_219_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_219_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_219_matmul_readvariableop_resource:	?G
4while_lstm_cell_219_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_219_biasadd_readvariableop_resource:	???*while/lstm_cell_219/BiasAdd/ReadVariableOp?)while/lstm_cell_219/MatMul/ReadVariableOp?+while/lstm_cell_219/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_219/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_219_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_219/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_219/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_219/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_219_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_219/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_219/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_219/addAddV2$while/lstm_cell_219/MatMul:product:0&while/lstm_cell_219/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_219/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_219_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_219/BiasAddBiasAddwhile/lstm_cell_219/add:z:02while/lstm_cell_219/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_219/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_219/splitSplit,while/lstm_cell_219/split/split_dim:output:0$while/lstm_cell_219/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_219/SigmoidSigmoid"while/lstm_cell_219/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_219/Sigmoid_1Sigmoid"while/lstm_cell_219/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_219/mulMul!while/lstm_cell_219/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_219/ReluRelu"while/lstm_cell_219/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_219/mul_1Mulwhile/lstm_cell_219/Sigmoid:y:0&while/lstm_cell_219/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_219/add_1AddV2while/lstm_cell_219/mul:z:0while/lstm_cell_219/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_219/Sigmoid_2Sigmoid"while/lstm_cell_219/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_219/Relu_1Reluwhile/lstm_cell_219/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_219/mul_2Mul!while/lstm_cell_219/Sigmoid_2:y:0(while/lstm_cell_219/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_219/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_219/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_219/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_219/BiasAdd/ReadVariableOp*^while/lstm_cell_219/MatMul/ReadVariableOp,^while/lstm_cell_219/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_219_biasadd_readvariableop_resource5while_lstm_cell_219_biasadd_readvariableop_resource_0"n
4while_lstm_cell_219_matmul_1_readvariableop_resource6while_lstm_cell_219_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_219_matmul_readvariableop_resource4while_lstm_cell_219_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_219/BiasAdd/ReadVariableOp*while/lstm_cell_219/BiasAdd/ReadVariableOp2V
)while/lstm_cell_219/MatMul/ReadVariableOp)while/lstm_cell_219/MatMul/ReadVariableOp2Z
+while/lstm_cell_219/MatMul_1/ReadVariableOp+while/lstm_cell_219/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_195_layer_call_and_return_conditional_losses_1339436

inputs?
,lstm_cell_219_matmul_readvariableop_resource:	?A
.lstm_cell_219_matmul_1_readvariableop_resource:	d?<
-lstm_cell_219_biasadd_readvariableop_resource:	?
identity??$lstm_cell_219/BiasAdd/ReadVariableOp?#lstm_cell_219/MatMul/ReadVariableOp?%lstm_cell_219/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_219/MatMul/ReadVariableOpReadVariableOp,lstm_cell_219_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_219/MatMulMatMulstrided_slice_2:output:0+lstm_cell_219/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_219/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_219_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_219/MatMul_1MatMulzeros:output:0-lstm_cell_219/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_219/addAddV2lstm_cell_219/MatMul:product:0 lstm_cell_219/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_219/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_219_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_219/BiasAddBiasAddlstm_cell_219/add:z:0,lstm_cell_219/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_219/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_219/splitSplit&lstm_cell_219/split/split_dim:output:0lstm_cell_219/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_219/SigmoidSigmoidlstm_cell_219/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_219/Sigmoid_1Sigmoidlstm_cell_219/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_219/mulMullstm_cell_219/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_219/ReluRelulstm_cell_219/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_219/mul_1Mullstm_cell_219/Sigmoid:y:0 lstm_cell_219/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_219/add_1AddV2lstm_cell_219/mul:z:0lstm_cell_219/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_219/Sigmoid_2Sigmoidlstm_cell_219/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_219/Relu_1Relulstm_cell_219/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_219/mul_2Mullstm_cell_219/Sigmoid_2:y:0"lstm_cell_219/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_219_matmul_readvariableop_resource.lstm_cell_219_matmul_1_readvariableop_resource-lstm_cell_219_biasadd_readvariableop_resource*
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
while_body_1339352*
condR
while_cond_1339351*K
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
NoOpNoOp%^lstm_cell_219/BiasAdd/ReadVariableOp$^lstm_cell_219/MatMul/ReadVariableOp&^lstm_cell_219/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_219/BiasAdd/ReadVariableOp$lstm_cell_219/BiasAdd/ReadVariableOp2J
#lstm_cell_219/MatMul/ReadVariableOp#lstm_cell_219/MatMul/ReadVariableOp2N
%lstm_cell_219/MatMul_1/ReadVariableOp%lstm_cell_219/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_196_while_cond_1339902.
*lstm_196_while_lstm_196_while_loop_counter4
0lstm_196_while_lstm_196_while_maximum_iterations
lstm_196_while_placeholder 
lstm_196_while_placeholder_1 
lstm_196_while_placeholder_2 
lstm_196_while_placeholder_30
,lstm_196_while_less_lstm_196_strided_slice_1G
Clstm_196_while_lstm_196_while_cond_1339902___redundant_placeholder0G
Clstm_196_while_lstm_196_while_cond_1339902___redundant_placeholder1G
Clstm_196_while_lstm_196_while_cond_1339902___redundant_placeholder2G
Clstm_196_while_lstm_196_while_cond_1339902___redundant_placeholder3
lstm_196_while_identity
?
lstm_196/while/LessLesslstm_196_while_placeholder,lstm_196_while_less_lstm_196_strided_slice_1*
T0*
_output_shapes
: ]
lstm_196/while/IdentityIdentitylstm_196/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_196_while_identity lstm_196/while/Identity:output:0*(
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
while_cond_1342322
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1342322___redundant_placeholder05
1while_while_cond_1342322___redundant_placeholder15
1while_while_cond_1342322___redundant_placeholder25
1while_while_cond_1342322___redundant_placeholder3
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

?
/__inference_sequential_65_layer_call_fn_1339678

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
J__inference_sequential_65_layer_call_and_return_conditional_losses_1338915o
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
while_body_1340805
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_219_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_219_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_219_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_219_matmul_readvariableop_resource:	?G
4while_lstm_cell_219_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_219_biasadd_readvariableop_resource:	???*while/lstm_cell_219/BiasAdd/ReadVariableOp?)while/lstm_cell_219/MatMul/ReadVariableOp?+while/lstm_cell_219/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_219/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_219_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_219/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_219/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_219/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_219_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_219/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_219/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_219/addAddV2$while/lstm_cell_219/MatMul:product:0&while/lstm_cell_219/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_219/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_219_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_219/BiasAddBiasAddwhile/lstm_cell_219/add:z:02while/lstm_cell_219/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_219/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_219/splitSplit,while/lstm_cell_219/split/split_dim:output:0$while/lstm_cell_219/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_219/SigmoidSigmoid"while/lstm_cell_219/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_219/Sigmoid_1Sigmoid"while/lstm_cell_219/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_219/mulMul!while/lstm_cell_219/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_219/ReluRelu"while/lstm_cell_219/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_219/mul_1Mulwhile/lstm_cell_219/Sigmoid:y:0&while/lstm_cell_219/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_219/add_1AddV2while/lstm_cell_219/mul:z:0while/lstm_cell_219/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_219/Sigmoid_2Sigmoid"while/lstm_cell_219/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_219/Relu_1Reluwhile/lstm_cell_219/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_219/mul_2Mul!while/lstm_cell_219/Sigmoid_2:y:0(while/lstm_cell_219/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_219/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_219/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_219/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_219/BiasAdd/ReadVariableOp*^while/lstm_cell_219/MatMul/ReadVariableOp,^while/lstm_cell_219/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_219_biasadd_readvariableop_resource5while_lstm_cell_219_biasadd_readvariableop_resource_0"n
4while_lstm_cell_219_matmul_1_readvariableop_resource6while_lstm_cell_219_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_219_matmul_readvariableop_resource4while_lstm_cell_219_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_219/BiasAdd/ReadVariableOp*while/lstm_cell_219/BiasAdd/ReadVariableOp2V
)while/lstm_cell_219/MatMul/ReadVariableOp)while/lstm_cell_219/MatMul/ReadVariableOp2Z
+while/lstm_cell_219/MatMul_1/ReadVariableOp+while/lstm_cell_219/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_219_layer_call_and_return_conditional_losses_1342524

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
?S
?
)sequential_65_lstm_196_while_body_1337162J
Fsequential_65_lstm_196_while_sequential_65_lstm_196_while_loop_counterP
Lsequential_65_lstm_196_while_sequential_65_lstm_196_while_maximum_iterations,
(sequential_65_lstm_196_while_placeholder.
*sequential_65_lstm_196_while_placeholder_1.
*sequential_65_lstm_196_while_placeholder_2.
*sequential_65_lstm_196_while_placeholder_3I
Esequential_65_lstm_196_while_sequential_65_lstm_196_strided_slice_1_0?
?sequential_65_lstm_196_while_tensorarrayv2read_tensorlistgetitem_sequential_65_lstm_196_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_65_lstm_196_while_lstm_cell_220_matmul_readvariableop_resource_0:	d?`
Msequential_65_lstm_196_while_lstm_cell_220_matmul_1_readvariableop_resource_0:	2?[
Lsequential_65_lstm_196_while_lstm_cell_220_biasadd_readvariableop_resource_0:	?)
%sequential_65_lstm_196_while_identity+
'sequential_65_lstm_196_while_identity_1+
'sequential_65_lstm_196_while_identity_2+
'sequential_65_lstm_196_while_identity_3+
'sequential_65_lstm_196_while_identity_4+
'sequential_65_lstm_196_while_identity_5G
Csequential_65_lstm_196_while_sequential_65_lstm_196_strided_slice_1?
sequential_65_lstm_196_while_tensorarrayv2read_tensorlistgetitem_sequential_65_lstm_196_tensorarrayunstack_tensorlistfromtensor\
Isequential_65_lstm_196_while_lstm_cell_220_matmul_readvariableop_resource:	d?^
Ksequential_65_lstm_196_while_lstm_cell_220_matmul_1_readvariableop_resource:	2?Y
Jsequential_65_lstm_196_while_lstm_cell_220_biasadd_readvariableop_resource:	???Asequential_65/lstm_196/while/lstm_cell_220/BiasAdd/ReadVariableOp?@sequential_65/lstm_196/while/lstm_cell_220/MatMul/ReadVariableOp?Bsequential_65/lstm_196/while/lstm_cell_220/MatMul_1/ReadVariableOp?
Nsequential_65/lstm_196/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_65/lstm_196/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_65_lstm_196_while_tensorarrayv2read_tensorlistgetitem_sequential_65_lstm_196_tensorarrayunstack_tensorlistfromtensor_0(sequential_65_lstm_196_while_placeholderWsequential_65/lstm_196/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_65/lstm_196/while/lstm_cell_220/MatMul/ReadVariableOpReadVariableOpKsequential_65_lstm_196_while_lstm_cell_220_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_65/lstm_196/while/lstm_cell_220/MatMulMatMulGsequential_65/lstm_196/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_65/lstm_196/while/lstm_cell_220/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_65/lstm_196/while/lstm_cell_220/MatMul_1/ReadVariableOpReadVariableOpMsequential_65_lstm_196_while_lstm_cell_220_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_65/lstm_196/while/lstm_cell_220/MatMul_1MatMul*sequential_65_lstm_196_while_placeholder_2Jsequential_65/lstm_196/while/lstm_cell_220/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_65/lstm_196/while/lstm_cell_220/addAddV2;sequential_65/lstm_196/while/lstm_cell_220/MatMul:product:0=sequential_65/lstm_196/while/lstm_cell_220/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_65/lstm_196/while/lstm_cell_220/BiasAdd/ReadVariableOpReadVariableOpLsequential_65_lstm_196_while_lstm_cell_220_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_65/lstm_196/while/lstm_cell_220/BiasAddBiasAdd2sequential_65/lstm_196/while/lstm_cell_220/add:z:0Isequential_65/lstm_196/while/lstm_cell_220/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_65/lstm_196/while/lstm_cell_220/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_65/lstm_196/while/lstm_cell_220/splitSplitCsequential_65/lstm_196/while/lstm_cell_220/split/split_dim:output:0;sequential_65/lstm_196/while/lstm_cell_220/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_65/lstm_196/while/lstm_cell_220/SigmoidSigmoid9sequential_65/lstm_196/while/lstm_cell_220/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_65/lstm_196/while/lstm_cell_220/Sigmoid_1Sigmoid9sequential_65/lstm_196/while/lstm_cell_220/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_65/lstm_196/while/lstm_cell_220/mulMul8sequential_65/lstm_196/while/lstm_cell_220/Sigmoid_1:y:0*sequential_65_lstm_196_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_65/lstm_196/while/lstm_cell_220/ReluRelu9sequential_65/lstm_196/while/lstm_cell_220/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_65/lstm_196/while/lstm_cell_220/mul_1Mul6sequential_65/lstm_196/while/lstm_cell_220/Sigmoid:y:0=sequential_65/lstm_196/while/lstm_cell_220/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_65/lstm_196/while/lstm_cell_220/add_1AddV22sequential_65/lstm_196/while/lstm_cell_220/mul:z:04sequential_65/lstm_196/while/lstm_cell_220/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_65/lstm_196/while/lstm_cell_220/Sigmoid_2Sigmoid9sequential_65/lstm_196/while/lstm_cell_220/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_65/lstm_196/while/lstm_cell_220/Relu_1Relu4sequential_65/lstm_196/while/lstm_cell_220/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_65/lstm_196/while/lstm_cell_220/mul_2Mul8sequential_65/lstm_196/while/lstm_cell_220/Sigmoid_2:y:0?sequential_65/lstm_196/while/lstm_cell_220/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_65/lstm_196/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_65_lstm_196_while_placeholder_1(sequential_65_lstm_196_while_placeholder4sequential_65/lstm_196/while/lstm_cell_220/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_65/lstm_196/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_65/lstm_196/while/addAddV2(sequential_65_lstm_196_while_placeholder+sequential_65/lstm_196/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_65/lstm_196/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_65/lstm_196/while/add_1AddV2Fsequential_65_lstm_196_while_sequential_65_lstm_196_while_loop_counter-sequential_65/lstm_196/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_65/lstm_196/while/IdentityIdentity&sequential_65/lstm_196/while/add_1:z:0"^sequential_65/lstm_196/while/NoOp*
T0*
_output_shapes
: ?
'sequential_65/lstm_196/while/Identity_1IdentityLsequential_65_lstm_196_while_sequential_65_lstm_196_while_maximum_iterations"^sequential_65/lstm_196/while/NoOp*
T0*
_output_shapes
: ?
'sequential_65/lstm_196/while/Identity_2Identity$sequential_65/lstm_196/while/add:z:0"^sequential_65/lstm_196/while/NoOp*
T0*
_output_shapes
: ?
'sequential_65/lstm_196/while/Identity_3IdentityQsequential_65/lstm_196/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_65/lstm_196/while/NoOp*
T0*
_output_shapes
: ?
'sequential_65/lstm_196/while/Identity_4Identity4sequential_65/lstm_196/while/lstm_cell_220/mul_2:z:0"^sequential_65/lstm_196/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_65/lstm_196/while/Identity_5Identity4sequential_65/lstm_196/while/lstm_cell_220/add_1:z:0"^sequential_65/lstm_196/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_65/lstm_196/while/NoOpNoOpB^sequential_65/lstm_196/while/lstm_cell_220/BiasAdd/ReadVariableOpA^sequential_65/lstm_196/while/lstm_cell_220/MatMul/ReadVariableOpC^sequential_65/lstm_196/while/lstm_cell_220/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_65_lstm_196_while_identity.sequential_65/lstm_196/while/Identity:output:0"[
'sequential_65_lstm_196_while_identity_10sequential_65/lstm_196/while/Identity_1:output:0"[
'sequential_65_lstm_196_while_identity_20sequential_65/lstm_196/while/Identity_2:output:0"[
'sequential_65_lstm_196_while_identity_30sequential_65/lstm_196/while/Identity_3:output:0"[
'sequential_65_lstm_196_while_identity_40sequential_65/lstm_196/while/Identity_4:output:0"[
'sequential_65_lstm_196_while_identity_50sequential_65/lstm_196/while/Identity_5:output:0"?
Jsequential_65_lstm_196_while_lstm_cell_220_biasadd_readvariableop_resourceLsequential_65_lstm_196_while_lstm_cell_220_biasadd_readvariableop_resource_0"?
Ksequential_65_lstm_196_while_lstm_cell_220_matmul_1_readvariableop_resourceMsequential_65_lstm_196_while_lstm_cell_220_matmul_1_readvariableop_resource_0"?
Isequential_65_lstm_196_while_lstm_cell_220_matmul_readvariableop_resourceKsequential_65_lstm_196_while_lstm_cell_220_matmul_readvariableop_resource_0"?
Csequential_65_lstm_196_while_sequential_65_lstm_196_strided_slice_1Esequential_65_lstm_196_while_sequential_65_lstm_196_strided_slice_1_0"?
sequential_65_lstm_196_while_tensorarrayv2read_tensorlistgetitem_sequential_65_lstm_196_tensorarrayunstack_tensorlistfromtensor?sequential_65_lstm_196_while_tensorarrayv2read_tensorlistgetitem_sequential_65_lstm_196_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_65/lstm_196/while/lstm_cell_220/BiasAdd/ReadVariableOpAsequential_65/lstm_196/while/lstm_cell_220/BiasAdd/ReadVariableOp2?
@sequential_65/lstm_196/while/lstm_cell_220/MatMul/ReadVariableOp@sequential_65/lstm_196/while/lstm_cell_220/MatMul/ReadVariableOp2?
Bsequential_65/lstm_196/while/lstm_cell_220/MatMul_1/ReadVariableOpBsequential_65/lstm_196/while/lstm_cell_220/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
?
J__inference_sequential_65_layer_call_and_return_conditional_losses_1338915

inputs#
lstm_195_1338591:	?#
lstm_195_1338593:	d?
lstm_195_1338595:	?#
lstm_196_1338741:	d?#
lstm_196_1338743:	2?
lstm_196_1338745:	?"
lstm_197_1338891:2("
lstm_197_1338893:
(
lstm_197_1338895:("
dense_65_1338909:

dense_65_1338911:
identity?? dense_65/StatefulPartitionedCall? lstm_195/StatefulPartitionedCall? lstm_196/StatefulPartitionedCall? lstm_197/StatefulPartitionedCall?
 lstm_195/StatefulPartitionedCallStatefulPartitionedCallinputslstm_195_1338591lstm_195_1338593lstm_195_1338595*
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
E__inference_lstm_195_layer_call_and_return_conditional_losses_1338590?
 lstm_196/StatefulPartitionedCallStatefulPartitionedCall)lstm_195/StatefulPartitionedCall:output:0lstm_196_1338741lstm_196_1338743lstm_196_1338745*
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
E__inference_lstm_196_layer_call_and_return_conditional_losses_1338740?
 lstm_197/StatefulPartitionedCallStatefulPartitionedCall)lstm_196/StatefulPartitionedCall:output:0lstm_197_1338891lstm_197_1338893lstm_197_1338895*
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
E__inference_lstm_197_layer_call_and_return_conditional_losses_1338890?
 dense_65/StatefulPartitionedCallStatefulPartitionedCall)lstm_197/StatefulPartitionedCall:output:0dense_65_1338909dense_65_1338911*
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
E__inference_dense_65_layer_call_and_return_conditional_losses_1338908x
IdentityIdentity)dense_65/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_65/StatefulPartitionedCall!^lstm_195/StatefulPartitionedCall!^lstm_196/StatefulPartitionedCall!^lstm_197/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall2D
 lstm_195/StatefulPartitionedCall lstm_195/StatefulPartitionedCall2D
 lstm_196/StatefulPartitionedCall lstm_196/StatefulPartitionedCall2D
 lstm_197/StatefulPartitionedCall lstm_197/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_195_layer_call_and_return_conditional_losses_1340889
inputs_0?
,lstm_cell_219_matmul_readvariableop_resource:	?A
.lstm_cell_219_matmul_1_readvariableop_resource:	d?<
-lstm_cell_219_biasadd_readvariableop_resource:	?
identity??$lstm_cell_219/BiasAdd/ReadVariableOp?#lstm_cell_219/MatMul/ReadVariableOp?%lstm_cell_219/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_219/MatMul/ReadVariableOpReadVariableOp,lstm_cell_219_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_219/MatMulMatMulstrided_slice_2:output:0+lstm_cell_219/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_219/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_219_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_219/MatMul_1MatMulzeros:output:0-lstm_cell_219/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_219/addAddV2lstm_cell_219/MatMul:product:0 lstm_cell_219/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_219/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_219_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_219/BiasAddBiasAddlstm_cell_219/add:z:0,lstm_cell_219/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_219/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_219/splitSplit&lstm_cell_219/split/split_dim:output:0lstm_cell_219/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_219/SigmoidSigmoidlstm_cell_219/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_219/Sigmoid_1Sigmoidlstm_cell_219/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_219/mulMullstm_cell_219/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_219/ReluRelulstm_cell_219/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_219/mul_1Mullstm_cell_219/Sigmoid:y:0 lstm_cell_219/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_219/add_1AddV2lstm_cell_219/mul:z:0lstm_cell_219/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_219/Sigmoid_2Sigmoidlstm_cell_219/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_219/Relu_1Relulstm_cell_219/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_219/mul_2Mullstm_cell_219/Sigmoid_2:y:0"lstm_cell_219/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_219_matmul_readvariableop_resource.lstm_cell_219_matmul_1_readvariableop_resource-lstm_cell_219_biasadd_readvariableop_resource*
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
while_body_1340805*
condR
while_cond_1340804*K
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
NoOpNoOp%^lstm_cell_219/BiasAdd/ReadVariableOp$^lstm_cell_219/MatMul/ReadVariableOp&^lstm_cell_219/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_219/BiasAdd/ReadVariableOp$lstm_cell_219/BiasAdd/ReadVariableOp2J
#lstm_cell_219/MatMul/ReadVariableOp#lstm_cell_219/MatMul/ReadVariableOp2N
%lstm_cell_219/MatMul_1/ReadVariableOp%lstm_cell_219/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_1338805
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1338805___redundant_placeholder05
1while_while_cond_1338805___redundant_placeholder15
1while_while_cond_1338805___redundant_placeholder25
1while_while_cond_1338805___redundant_placeholder3
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
?8
?
E__inference_lstm_197_layer_call_and_return_conditional_losses_1338241

inputs'
lstm_cell_221_1338159:2('
lstm_cell_221_1338161:
(#
lstm_cell_221_1338163:(
identity??%lstm_cell_221/StatefulPartitionedCall?while;
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
%lstm_cell_221/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_221_1338159lstm_cell_221_1338161lstm_cell_221_1338163*
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
J__inference_lstm_cell_221_layer_call_and_return_conditional_losses_1338158n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_221_1338159lstm_cell_221_1338161lstm_cell_221_1338163*
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
while_body_1338172*
condR
while_cond_1338171*K
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
NoOpNoOp&^lstm_cell_221/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_221/StatefulPartitionedCall%lstm_cell_221/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_1341090
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1341090___redundant_placeholder05
1while_while_cond_1341090___redundant_placeholder15
1while_while_cond_1341090___redundant_placeholder25
1while_while_cond_1341090___redundant_placeholder3
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
while_body_1341091
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_219_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_219_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_219_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_219_matmul_readvariableop_resource:	?G
4while_lstm_cell_219_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_219_biasadd_readvariableop_resource:	???*while/lstm_cell_219/BiasAdd/ReadVariableOp?)while/lstm_cell_219/MatMul/ReadVariableOp?+while/lstm_cell_219/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_219/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_219_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_219/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_219/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_219/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_219_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_219/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_219/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_219/addAddV2$while/lstm_cell_219/MatMul:product:0&while/lstm_cell_219/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_219/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_219_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_219/BiasAddBiasAddwhile/lstm_cell_219/add:z:02while/lstm_cell_219/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_219/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_219/splitSplit,while/lstm_cell_219/split/split_dim:output:0$while/lstm_cell_219/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_219/SigmoidSigmoid"while/lstm_cell_219/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_219/Sigmoid_1Sigmoid"while/lstm_cell_219/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_219/mulMul!while/lstm_cell_219/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_219/ReluRelu"while/lstm_cell_219/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_219/mul_1Mulwhile/lstm_cell_219/Sigmoid:y:0&while/lstm_cell_219/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_219/add_1AddV2while/lstm_cell_219/mul:z:0while/lstm_cell_219/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_219/Sigmoid_2Sigmoid"while/lstm_cell_219/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_219/Relu_1Reluwhile/lstm_cell_219/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_219/mul_2Mul!while/lstm_cell_219/Sigmoid_2:y:0(while/lstm_cell_219/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_219/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_219/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_219/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_219/BiasAdd/ReadVariableOp*^while/lstm_cell_219/MatMul/ReadVariableOp,^while/lstm_cell_219/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_219_biasadd_readvariableop_resource5while_lstm_cell_219_biasadd_readvariableop_resource_0"n
4while_lstm_cell_219_matmul_1_readvariableop_resource6while_lstm_cell_219_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_219_matmul_readvariableop_resource4while_lstm_cell_219_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_219/BiasAdd/ReadVariableOp*while/lstm_cell_219/BiasAdd/ReadVariableOp2V
)while/lstm_cell_219/MatMul/ReadVariableOp)while/lstm_cell_219/MatMul/ReadVariableOp2Z
+while/lstm_cell_219/MatMul_1/ReadVariableOp+while/lstm_cell_219/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_65_layer_call_and_return_conditional_losses_1339616
lstm_195_input#
lstm_195_1339589:	?#
lstm_195_1339591:	d?
lstm_195_1339593:	?#
lstm_196_1339596:	d?#
lstm_196_1339598:	2?
lstm_196_1339600:	?"
lstm_197_1339603:2("
lstm_197_1339605:
(
lstm_197_1339607:("
dense_65_1339610:

dense_65_1339612:
identity?? dense_65/StatefulPartitionedCall? lstm_195/StatefulPartitionedCall? lstm_196/StatefulPartitionedCall? lstm_197/StatefulPartitionedCall?
 lstm_195/StatefulPartitionedCallStatefulPartitionedCalllstm_195_inputlstm_195_1339589lstm_195_1339591lstm_195_1339593*
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
E__inference_lstm_195_layer_call_and_return_conditional_losses_1339436?
 lstm_196/StatefulPartitionedCallStatefulPartitionedCall)lstm_195/StatefulPartitionedCall:output:0lstm_196_1339596lstm_196_1339598lstm_196_1339600*
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
E__inference_lstm_196_layer_call_and_return_conditional_losses_1339271?
 lstm_197/StatefulPartitionedCallStatefulPartitionedCall)lstm_196/StatefulPartitionedCall:output:0lstm_197_1339603lstm_197_1339605lstm_197_1339607*
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
E__inference_lstm_197_layer_call_and_return_conditional_losses_1339106?
 dense_65/StatefulPartitionedCallStatefulPartitionedCall)lstm_197/StatefulPartitionedCall:output:0dense_65_1339610dense_65_1339612*
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
E__inference_dense_65_layer_call_and_return_conditional_losses_1338908x
IdentityIdentity)dense_65/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_65/StatefulPartitionedCall!^lstm_195/StatefulPartitionedCall!^lstm_196/StatefulPartitionedCall!^lstm_197/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall2D
 lstm_195/StatefulPartitionedCall lstm_195/StatefulPartitionedCall2D
 lstm_196/StatefulPartitionedCall lstm_196/StatefulPartitionedCall2D
 lstm_197/StatefulPartitionedCall lstm_197/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_195_input
?
?
while_cond_1338505
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1338505___redundant_placeholder05
1while_while_cond_1338505___redundant_placeholder15
1while_while_cond_1338505___redundant_placeholder25
1while_while_cond_1338505___redundant_placeholder3
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
while_cond_1342179
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1342179___redundant_placeholder05
1while_while_cond_1342179___redundant_placeholder15
1while_while_cond_1342179___redundant_placeholder25
1while_while_cond_1342179___redundant_placeholder3
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
?C
?

lstm_196_while_body_1340330.
*lstm_196_while_lstm_196_while_loop_counter4
0lstm_196_while_lstm_196_while_maximum_iterations
lstm_196_while_placeholder 
lstm_196_while_placeholder_1 
lstm_196_while_placeholder_2 
lstm_196_while_placeholder_3-
)lstm_196_while_lstm_196_strided_slice_1_0i
elstm_196_while_tensorarrayv2read_tensorlistgetitem_lstm_196_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_196_while_lstm_cell_220_matmul_readvariableop_resource_0:	d?R
?lstm_196_while_lstm_cell_220_matmul_1_readvariableop_resource_0:	2?M
>lstm_196_while_lstm_cell_220_biasadd_readvariableop_resource_0:	?
lstm_196_while_identity
lstm_196_while_identity_1
lstm_196_while_identity_2
lstm_196_while_identity_3
lstm_196_while_identity_4
lstm_196_while_identity_5+
'lstm_196_while_lstm_196_strided_slice_1g
clstm_196_while_tensorarrayv2read_tensorlistgetitem_lstm_196_tensorarrayunstack_tensorlistfromtensorN
;lstm_196_while_lstm_cell_220_matmul_readvariableop_resource:	d?P
=lstm_196_while_lstm_cell_220_matmul_1_readvariableop_resource:	2?K
<lstm_196_while_lstm_cell_220_biasadd_readvariableop_resource:	???3lstm_196/while/lstm_cell_220/BiasAdd/ReadVariableOp?2lstm_196/while/lstm_cell_220/MatMul/ReadVariableOp?4lstm_196/while/lstm_cell_220/MatMul_1/ReadVariableOp?
@lstm_196/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_196/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_196_while_tensorarrayv2read_tensorlistgetitem_lstm_196_tensorarrayunstack_tensorlistfromtensor_0lstm_196_while_placeholderIlstm_196/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_196/while/lstm_cell_220/MatMul/ReadVariableOpReadVariableOp=lstm_196_while_lstm_cell_220_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_196/while/lstm_cell_220/MatMulMatMul9lstm_196/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_196/while/lstm_cell_220/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_196/while/lstm_cell_220/MatMul_1/ReadVariableOpReadVariableOp?lstm_196_while_lstm_cell_220_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_196/while/lstm_cell_220/MatMul_1MatMullstm_196_while_placeholder_2<lstm_196/while/lstm_cell_220/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_196/while/lstm_cell_220/addAddV2-lstm_196/while/lstm_cell_220/MatMul:product:0/lstm_196/while/lstm_cell_220/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_196/while/lstm_cell_220/BiasAdd/ReadVariableOpReadVariableOp>lstm_196_while_lstm_cell_220_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_196/while/lstm_cell_220/BiasAddBiasAdd$lstm_196/while/lstm_cell_220/add:z:0;lstm_196/while/lstm_cell_220/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_196/while/lstm_cell_220/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_196/while/lstm_cell_220/splitSplit5lstm_196/while/lstm_cell_220/split/split_dim:output:0-lstm_196/while/lstm_cell_220/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_196/while/lstm_cell_220/SigmoidSigmoid+lstm_196/while/lstm_cell_220/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_196/while/lstm_cell_220/Sigmoid_1Sigmoid+lstm_196/while/lstm_cell_220/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_196/while/lstm_cell_220/mulMul*lstm_196/while/lstm_cell_220/Sigmoid_1:y:0lstm_196_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_196/while/lstm_cell_220/ReluRelu+lstm_196/while/lstm_cell_220/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_196/while/lstm_cell_220/mul_1Mul(lstm_196/while/lstm_cell_220/Sigmoid:y:0/lstm_196/while/lstm_cell_220/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_196/while/lstm_cell_220/add_1AddV2$lstm_196/while/lstm_cell_220/mul:z:0&lstm_196/while/lstm_cell_220/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_196/while/lstm_cell_220/Sigmoid_2Sigmoid+lstm_196/while/lstm_cell_220/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_196/while/lstm_cell_220/Relu_1Relu&lstm_196/while/lstm_cell_220/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_196/while/lstm_cell_220/mul_2Mul*lstm_196/while/lstm_cell_220/Sigmoid_2:y:01lstm_196/while/lstm_cell_220/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_196/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_196_while_placeholder_1lstm_196_while_placeholder&lstm_196/while/lstm_cell_220/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_196/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_196/while/addAddV2lstm_196_while_placeholderlstm_196/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_196/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_196/while/add_1AddV2*lstm_196_while_lstm_196_while_loop_counterlstm_196/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_196/while/IdentityIdentitylstm_196/while/add_1:z:0^lstm_196/while/NoOp*
T0*
_output_shapes
: ?
lstm_196/while/Identity_1Identity0lstm_196_while_lstm_196_while_maximum_iterations^lstm_196/while/NoOp*
T0*
_output_shapes
: t
lstm_196/while/Identity_2Identitylstm_196/while/add:z:0^lstm_196/while/NoOp*
T0*
_output_shapes
: ?
lstm_196/while/Identity_3IdentityClstm_196/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_196/while/NoOp*
T0*
_output_shapes
: ?
lstm_196/while/Identity_4Identity&lstm_196/while/lstm_cell_220/mul_2:z:0^lstm_196/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_196/while/Identity_5Identity&lstm_196/while/lstm_cell_220/add_1:z:0^lstm_196/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_196/while/NoOpNoOp4^lstm_196/while/lstm_cell_220/BiasAdd/ReadVariableOp3^lstm_196/while/lstm_cell_220/MatMul/ReadVariableOp5^lstm_196/while/lstm_cell_220/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_196_while_identity lstm_196/while/Identity:output:0"?
lstm_196_while_identity_1"lstm_196/while/Identity_1:output:0"?
lstm_196_while_identity_2"lstm_196/while/Identity_2:output:0"?
lstm_196_while_identity_3"lstm_196/while/Identity_3:output:0"?
lstm_196_while_identity_4"lstm_196/while/Identity_4:output:0"?
lstm_196_while_identity_5"lstm_196/while/Identity_5:output:0"T
'lstm_196_while_lstm_196_strided_slice_1)lstm_196_while_lstm_196_strided_slice_1_0"~
<lstm_196_while_lstm_cell_220_biasadd_readvariableop_resource>lstm_196_while_lstm_cell_220_biasadd_readvariableop_resource_0"?
=lstm_196_while_lstm_cell_220_matmul_1_readvariableop_resource?lstm_196_while_lstm_cell_220_matmul_1_readvariableop_resource_0"|
;lstm_196_while_lstm_cell_220_matmul_readvariableop_resource=lstm_196_while_lstm_cell_220_matmul_readvariableop_resource_0"?
clstm_196_while_tensorarrayv2read_tensorlistgetitem_lstm_196_tensorarrayunstack_tensorlistfromtensorelstm_196_while_tensorarrayv2read_tensorlistgetitem_lstm_196_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_196/while/lstm_cell_220/BiasAdd/ReadVariableOp3lstm_196/while/lstm_cell_220/BiasAdd/ReadVariableOp2h
2lstm_196/while/lstm_cell_220/MatMul/ReadVariableOp2lstm_196/while/lstm_cell_220/MatMul/ReadVariableOp2l
4lstm_196/while/lstm_cell_220/MatMul_1/ReadVariableOp4lstm_196/while/lstm_cell_220/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?#
?
while_body_1338013
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_220_1338037_0:	d?0
while_lstm_cell_220_1338039_0:	2?,
while_lstm_cell_220_1338041_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_220_1338037:	d?.
while_lstm_cell_220_1338039:	2?*
while_lstm_cell_220_1338041:	???+while/lstm_cell_220/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_220/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_220_1338037_0while_lstm_cell_220_1338039_0while_lstm_cell_220_1338041_0*
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
J__inference_lstm_cell_220_layer_call_and_return_conditional_losses_1337954?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_220/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_220/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_220/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_220/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_220_1338037while_lstm_cell_220_1338037_0"<
while_lstm_cell_220_1338039while_lstm_cell_220_1338039_0"<
while_lstm_cell_220_1338041while_lstm_cell_220_1338041_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_220/StatefulPartitionedCall+while/lstm_cell_220/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_195_input;
 serving_default_lstm_195_input:0?????????<
dense_650
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
2dense_65/kernel
:2dense_65/bias
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
0:.	?2lstm_195/lstm_cell_195/kernel
::8	d?2'lstm_195/lstm_cell_195/recurrent_kernel
*:(?2lstm_195/lstm_cell_195/bias
0:.	d?2lstm_196/lstm_cell_196/kernel
::8	2?2'lstm_196/lstm_cell_196/recurrent_kernel
*:(?2lstm_196/lstm_cell_196/bias
/:-2(2lstm_197/lstm_cell_197/kernel
9:7
(2'lstm_197/lstm_cell_197/recurrent_kernel
):'(2lstm_197/lstm_cell_197/bias
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
2Adam/dense_65/kernel/m
 :2Adam/dense_65/bias/m
5:3	?2$Adam/lstm_195/lstm_cell_195/kernel/m
?:=	d?2.Adam/lstm_195/lstm_cell_195/recurrent_kernel/m
/:-?2"Adam/lstm_195/lstm_cell_195/bias/m
5:3	d?2$Adam/lstm_196/lstm_cell_196/kernel/m
?:=	2?2.Adam/lstm_196/lstm_cell_196/recurrent_kernel/m
/:-?2"Adam/lstm_196/lstm_cell_196/bias/m
4:22(2$Adam/lstm_197/lstm_cell_197/kernel/m
>:<
(2.Adam/lstm_197/lstm_cell_197/recurrent_kernel/m
.:,(2"Adam/lstm_197/lstm_cell_197/bias/m
&:$
2Adam/dense_65/kernel/v
 :2Adam/dense_65/bias/v
5:3	?2$Adam/lstm_195/lstm_cell_195/kernel/v
?:=	d?2.Adam/lstm_195/lstm_cell_195/recurrent_kernel/v
/:-?2"Adam/lstm_195/lstm_cell_195/bias/v
5:3	d?2$Adam/lstm_196/lstm_cell_196/kernel/v
?:=	2?2.Adam/lstm_196/lstm_cell_196/recurrent_kernel/v
/:-?2"Adam/lstm_196/lstm_cell_196/bias/v
4:22(2$Adam/lstm_197/lstm_cell_197/kernel/v
>:<
(2.Adam/lstm_197/lstm_cell_197/recurrent_kernel/v
.:,(2"Adam/lstm_197/lstm_cell_197/bias/v
?2?
/__inference_sequential_65_layer_call_fn_1338940
/__inference_sequential_65_layer_call_fn_1339678
/__inference_sequential_65_layer_call_fn_1339705
/__inference_sequential_65_layer_call_fn_1339556?
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
J__inference_sequential_65_layer_call_and_return_conditional_losses_1340132
J__inference_sequential_65_layer_call_and_return_conditional_losses_1340559
J__inference_sequential_65_layer_call_and_return_conditional_losses_1339586
J__inference_sequential_65_layer_call_and_return_conditional_losses_1339616?
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
"__inference__wrapped_model_1337391lstm_195_input"?
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
*__inference_lstm_195_layer_call_fn_1340570
*__inference_lstm_195_layer_call_fn_1340581
*__inference_lstm_195_layer_call_fn_1340592
*__inference_lstm_195_layer_call_fn_1340603?
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
E__inference_lstm_195_layer_call_and_return_conditional_losses_1340746
E__inference_lstm_195_layer_call_and_return_conditional_losses_1340889
E__inference_lstm_195_layer_call_and_return_conditional_losses_1341032
E__inference_lstm_195_layer_call_and_return_conditional_losses_1341175?
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
*__inference_lstm_196_layer_call_fn_1341186
*__inference_lstm_196_layer_call_fn_1341197
*__inference_lstm_196_layer_call_fn_1341208
*__inference_lstm_196_layer_call_fn_1341219?
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
E__inference_lstm_196_layer_call_and_return_conditional_losses_1341362
E__inference_lstm_196_layer_call_and_return_conditional_losses_1341505
E__inference_lstm_196_layer_call_and_return_conditional_losses_1341648
E__inference_lstm_196_layer_call_and_return_conditional_losses_1341791?
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
*__inference_lstm_197_layer_call_fn_1341802
*__inference_lstm_197_layer_call_fn_1341813
*__inference_lstm_197_layer_call_fn_1341824
*__inference_lstm_197_layer_call_fn_1341835?
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
E__inference_lstm_197_layer_call_and_return_conditional_losses_1341978
E__inference_lstm_197_layer_call_and_return_conditional_losses_1342121
E__inference_lstm_197_layer_call_and_return_conditional_losses_1342264
E__inference_lstm_197_layer_call_and_return_conditional_losses_1342407?
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
*__inference_dense_65_layer_call_fn_1342416?
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
E__inference_dense_65_layer_call_and_return_conditional_losses_1342426?
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
%__inference_signature_wrapper_1339651lstm_195_input"?
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
/__inference_lstm_cell_219_layer_call_fn_1342443
/__inference_lstm_cell_219_layer_call_fn_1342460?
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
J__inference_lstm_cell_219_layer_call_and_return_conditional_losses_1342492
J__inference_lstm_cell_219_layer_call_and_return_conditional_losses_1342524?
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
/__inference_lstm_cell_220_layer_call_fn_1342541
/__inference_lstm_cell_220_layer_call_fn_1342558?
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
J__inference_lstm_cell_220_layer_call_and_return_conditional_losses_1342590
J__inference_lstm_cell_220_layer_call_and_return_conditional_losses_1342622?
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
/__inference_lstm_cell_221_layer_call_fn_1342639
/__inference_lstm_cell_221_layer_call_fn_1342656?
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
J__inference_lstm_cell_221_layer_call_and_return_conditional_losses_1342688
J__inference_lstm_cell_221_layer_call_and_return_conditional_losses_1342720?
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
"__inference__wrapped_model_1337391-./012345!";?8
1?.
,?)
lstm_195_input?????????
? "3?0
.
dense_65"?
dense_65??????????
E__inference_dense_65_layer_call_and_return_conditional_losses_1342426\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_65_layer_call_fn_1342416O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_195_layer_call_and_return_conditional_losses_1340746?-./O?L
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
E__inference_lstm_195_layer_call_and_return_conditional_losses_1340889?-./O?L
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
E__inference_lstm_195_layer_call_and_return_conditional_losses_1341032q-./??<
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
E__inference_lstm_195_layer_call_and_return_conditional_losses_1341175q-./??<
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
*__inference_lstm_195_layer_call_fn_1340570}-./O?L
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
*__inference_lstm_195_layer_call_fn_1340581}-./O?L
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
*__inference_lstm_195_layer_call_fn_1340592d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_195_layer_call_fn_1340603d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_196_layer_call_and_return_conditional_losses_1341362?012O?L
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
E__inference_lstm_196_layer_call_and_return_conditional_losses_1341505?012O?L
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
E__inference_lstm_196_layer_call_and_return_conditional_losses_1341648q012??<
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
E__inference_lstm_196_layer_call_and_return_conditional_losses_1341791q012??<
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
*__inference_lstm_196_layer_call_fn_1341186}012O?L
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
*__inference_lstm_196_layer_call_fn_1341197}012O?L
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
*__inference_lstm_196_layer_call_fn_1341208d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_196_layer_call_fn_1341219d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_197_layer_call_and_return_conditional_losses_1341978}345O?L
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
E__inference_lstm_197_layer_call_and_return_conditional_losses_1342121}345O?L
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
E__inference_lstm_197_layer_call_and_return_conditional_losses_1342264m345??<
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
E__inference_lstm_197_layer_call_and_return_conditional_losses_1342407m345??<
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
*__inference_lstm_197_layer_call_fn_1341802p345O?L
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
*__inference_lstm_197_layer_call_fn_1341813p345O?L
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
*__inference_lstm_197_layer_call_fn_1341824`345??<
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
*__inference_lstm_197_layer_call_fn_1341835`345??<
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
J__inference_lstm_cell_219_layer_call_and_return_conditional_losses_1342492?-./??}
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
J__inference_lstm_cell_219_layer_call_and_return_conditional_losses_1342524?-./??}
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
/__inference_lstm_cell_219_layer_call_fn_1342443?-./??}
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
/__inference_lstm_cell_219_layer_call_fn_1342460?-./??}
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
J__inference_lstm_cell_220_layer_call_and_return_conditional_losses_1342590?012??}
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
J__inference_lstm_cell_220_layer_call_and_return_conditional_losses_1342622?012??}
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
/__inference_lstm_cell_220_layer_call_fn_1342541?012??}
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
/__inference_lstm_cell_220_layer_call_fn_1342558?012??}
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
J__inference_lstm_cell_221_layer_call_and_return_conditional_losses_1342688?345??}
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
J__inference_lstm_cell_221_layer_call_and_return_conditional_losses_1342720?345??}
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
/__inference_lstm_cell_221_layer_call_fn_1342639?345??}
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
/__inference_lstm_cell_221_layer_call_fn_1342656?345??}
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
J__inference_sequential_65_layer_call_and_return_conditional_losses_1339586y-./012345!"C?@
9?6
,?)
lstm_195_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_65_layer_call_and_return_conditional_losses_1339616y-./012345!"C?@
9?6
,?)
lstm_195_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_65_layer_call_and_return_conditional_losses_1340132q-./012345!";?8
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
J__inference_sequential_65_layer_call_and_return_conditional_losses_1340559q-./012345!";?8
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
/__inference_sequential_65_layer_call_fn_1338940l-./012345!"C?@
9?6
,?)
lstm_195_input?????????
p 

 
? "???????????
/__inference_sequential_65_layer_call_fn_1339556l-./012345!"C?@
9?6
,?)
lstm_195_input?????????
p

 
? "???????????
/__inference_sequential_65_layer_call_fn_1339678d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_65_layer_call_fn_1339705d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1339651?-./012345!"M?J
? 
C?@
>
lstm_195_input,?)
lstm_195_input?????????"3?0
.
dense_65"?
dense_65?????????