??.
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
?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??,
z
dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_21/kernel
s
#dense_21/kernel/Read/ReadVariableOpReadVariableOpdense_21/kernel*
_output_shapes

:
*
dtype0
r
dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_21/bias
k
!dense_21/bias/Read/ReadVariableOpReadVariableOpdense_21/bias*
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
lstm_63/lstm_cell_63/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_namelstm_63/lstm_cell_63/kernel
?
/lstm_63/lstm_cell_63/kernel/Read/ReadVariableOpReadVariableOplstm_63/lstm_cell_63/kernel*
_output_shapes
:	?*
dtype0
?
%lstm_63/lstm_cell_63/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*6
shared_name'%lstm_63/lstm_cell_63/recurrent_kernel
?
9lstm_63/lstm_cell_63/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_63/lstm_cell_63/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_63/lstm_cell_63/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namelstm_63/lstm_cell_63/bias
?
-lstm_63/lstm_cell_63/bias/Read/ReadVariableOpReadVariableOplstm_63/lstm_cell_63/bias*
_output_shapes	
:?*
dtype0
?
lstm_64/lstm_cell_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*,
shared_namelstm_64/lstm_cell_64/kernel
?
/lstm_64/lstm_cell_64/kernel/Read/ReadVariableOpReadVariableOplstm_64/lstm_cell_64/kernel*
_output_shapes
:	d?*
dtype0
?
%lstm_64/lstm_cell_64/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*6
shared_name'%lstm_64/lstm_cell_64/recurrent_kernel
?
9lstm_64/lstm_cell_64/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_64/lstm_cell_64/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_64/lstm_cell_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namelstm_64/lstm_cell_64/bias
?
-lstm_64/lstm_cell_64/bias/Read/ReadVariableOpReadVariableOplstm_64/lstm_cell_64/bias*
_output_shapes	
:?*
dtype0
?
lstm_65/lstm_cell_65/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*,
shared_namelstm_65/lstm_cell_65/kernel
?
/lstm_65/lstm_cell_65/kernel/Read/ReadVariableOpReadVariableOplstm_65/lstm_cell_65/kernel*
_output_shapes

:2(*
dtype0
?
%lstm_65/lstm_cell_65/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*6
shared_name'%lstm_65/lstm_cell_65/recurrent_kernel
?
9lstm_65/lstm_cell_65/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_65/lstm_cell_65/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_65/lstm_cell_65/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(**
shared_namelstm_65/lstm_cell_65/bias
?
-lstm_65/lstm_cell_65/bias/Read/ReadVariableOpReadVariableOplstm_65/lstm_cell_65/bias*
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
Adam/dense_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_21/kernel/m
?
*Adam/dense_21/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_21/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_21/bias/m
y
(Adam/dense_21/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_21/bias/m*
_output_shapes
:*
dtype0
?
"Adam/lstm_63/lstm_cell_63/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_63/lstm_cell_63/kernel/m
?
6Adam/lstm_63/lstm_cell_63/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_63/lstm_cell_63/kernel/m*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_63/lstm_cell_63/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*=
shared_name.,Adam/lstm_63/lstm_cell_63/recurrent_kernel/m
?
@Adam/lstm_63/lstm_cell_63/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_63/lstm_cell_63/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
 Adam/lstm_63/lstm_cell_63/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_63/lstm_cell_63/bias/m
?
4Adam/lstm_63/lstm_cell_63/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_63/lstm_cell_63/bias/m*
_output_shapes	
:?*
dtype0
?
"Adam/lstm_64/lstm_cell_64/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*3
shared_name$"Adam/lstm_64/lstm_cell_64/kernel/m
?
6Adam/lstm_64/lstm_cell_64/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_64/lstm_cell_64/kernel/m*
_output_shapes
:	d?*
dtype0
?
,Adam/lstm_64/lstm_cell_64/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*=
shared_name.,Adam/lstm_64/lstm_cell_64/recurrent_kernel/m
?
@Adam/lstm_64/lstm_cell_64/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_64/lstm_cell_64/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
 Adam/lstm_64/lstm_cell_64/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_64/lstm_cell_64/bias/m
?
4Adam/lstm_64/lstm_cell_64/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_64/lstm_cell_64/bias/m*
_output_shapes	
:?*
dtype0
?
"Adam/lstm_65/lstm_cell_65/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_65/lstm_cell_65/kernel/m
?
6Adam/lstm_65/lstm_cell_65/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_65/lstm_cell_65/kernel/m*
_output_shapes

:2(*
dtype0
?
,Adam/lstm_65/lstm_cell_65/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_65/lstm_cell_65/recurrent_kernel/m
?
@Adam/lstm_65/lstm_cell_65/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_65/lstm_cell_65/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
 Adam/lstm_65/lstm_cell_65/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_65/lstm_cell_65/bias/m
?
4Adam/lstm_65/lstm_cell_65/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_65/lstm_cell_65/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_21/kernel/v
?
*Adam/dense_21/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_21/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_21/bias/v
y
(Adam/dense_21/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_21/bias/v*
_output_shapes
:*
dtype0
?
"Adam/lstm_63/lstm_cell_63/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_63/lstm_cell_63/kernel/v
?
6Adam/lstm_63/lstm_cell_63/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_63/lstm_cell_63/kernel/v*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_63/lstm_cell_63/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*=
shared_name.,Adam/lstm_63/lstm_cell_63/recurrent_kernel/v
?
@Adam/lstm_63/lstm_cell_63/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_63/lstm_cell_63/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
 Adam/lstm_63/lstm_cell_63/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_63/lstm_cell_63/bias/v
?
4Adam/lstm_63/lstm_cell_63/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_63/lstm_cell_63/bias/v*
_output_shapes	
:?*
dtype0
?
"Adam/lstm_64/lstm_cell_64/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*3
shared_name$"Adam/lstm_64/lstm_cell_64/kernel/v
?
6Adam/lstm_64/lstm_cell_64/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_64/lstm_cell_64/kernel/v*
_output_shapes
:	d?*
dtype0
?
,Adam/lstm_64/lstm_cell_64/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*=
shared_name.,Adam/lstm_64/lstm_cell_64/recurrent_kernel/v
?
@Adam/lstm_64/lstm_cell_64/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_64/lstm_cell_64/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
 Adam/lstm_64/lstm_cell_64/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_64/lstm_cell_64/bias/v
?
4Adam/lstm_64/lstm_cell_64/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_64/lstm_cell_64/bias/v*
_output_shapes	
:?*
dtype0
?
"Adam/lstm_65/lstm_cell_65/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_65/lstm_cell_65/kernel/v
?
6Adam/lstm_65/lstm_cell_65/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_65/lstm_cell_65/kernel/v*
_output_shapes

:2(*
dtype0
?
,Adam/lstm_65/lstm_cell_65/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_65/lstm_cell_65/recurrent_kernel/v
?
@Adam/lstm_65/lstm_cell_65/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_65/lstm_cell_65/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
 Adam/lstm_65/lstm_cell_65/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_65/lstm_cell_65/bias/v
?
4Adam/lstm_65/lstm_cell_65/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_65/lstm_cell_65/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
?A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?@
value?@B?@ B?@
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
VARIABLE_VALUEdense_21/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_21/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
WU
VARIABLE_VALUElstm_63/lstm_cell_63/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_63/lstm_cell_63/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_63/lstm_cell_63/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_64/lstm_cell_64/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_64/lstm_cell_64/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_64/lstm_cell_64/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_65/lstm_cell_65/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_65/lstm_cell_65/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_65/lstm_cell_65/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_21/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_21/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_63/lstm_cell_63/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_63/lstm_cell_63/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_63/lstm_cell_63/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_64/lstm_cell_64/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_64/lstm_cell_64/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_64/lstm_cell_64/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_65/lstm_cell_65/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_65/lstm_cell_65/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_65/lstm_cell_65/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_21/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_21/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_63/lstm_cell_63/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_63/lstm_cell_63/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_63/lstm_cell_63/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_64/lstm_cell_64/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_64/lstm_cell_64/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_64/lstm_cell_64/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_65/lstm_cell_65/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_65/lstm_cell_65/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_65/lstm_cell_65/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_63_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_63_inputlstm_63/lstm_cell_63/kernel%lstm_63/lstm_cell_63/recurrent_kernellstm_63/lstm_cell_63/biaslstm_64/lstm_cell_64/kernel%lstm_64/lstm_cell_64/recurrent_kernellstm_64/lstm_cell_64/biaslstm_65/lstm_cell_65/kernel%lstm_65/lstm_cell_65/recurrent_kernellstm_65/lstm_cell_65/biasdense_21/kerneldense_21/bias*
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
GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_106703
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_21/kernel/Read/ReadVariableOp!dense_21/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_63/lstm_cell_63/kernel/Read/ReadVariableOp9lstm_63/lstm_cell_63/recurrent_kernel/Read/ReadVariableOp-lstm_63/lstm_cell_63/bias/Read/ReadVariableOp/lstm_64/lstm_cell_64/kernel/Read/ReadVariableOp9lstm_64/lstm_cell_64/recurrent_kernel/Read/ReadVariableOp-lstm_64/lstm_cell_64/bias/Read/ReadVariableOp/lstm_65/lstm_cell_65/kernel/Read/ReadVariableOp9lstm_65/lstm_cell_65/recurrent_kernel/Read/ReadVariableOp-lstm_65/lstm_cell_65/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_21/kernel/m/Read/ReadVariableOp(Adam/dense_21/bias/m/Read/ReadVariableOp6Adam/lstm_63/lstm_cell_63/kernel/m/Read/ReadVariableOp@Adam/lstm_63/lstm_cell_63/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_63/lstm_cell_63/bias/m/Read/ReadVariableOp6Adam/lstm_64/lstm_cell_64/kernel/m/Read/ReadVariableOp@Adam/lstm_64/lstm_cell_64/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_64/lstm_cell_64/bias/m/Read/ReadVariableOp6Adam/lstm_65/lstm_cell_65/kernel/m/Read/ReadVariableOp@Adam/lstm_65/lstm_cell_65/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_65/lstm_cell_65/bias/m/Read/ReadVariableOp*Adam/dense_21/kernel/v/Read/ReadVariableOp(Adam/dense_21/bias/v/Read/ReadVariableOp6Adam/lstm_63/lstm_cell_63/kernel/v/Read/ReadVariableOp@Adam/lstm_63/lstm_cell_63/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_63/lstm_cell_63/bias/v/Read/ReadVariableOp6Adam/lstm_64/lstm_cell_64/kernel/v/Read/ReadVariableOp@Adam/lstm_64/lstm_cell_64/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_64/lstm_cell_64/bias/v/Read/ReadVariableOp6Adam/lstm_65/lstm_cell_65/kernel/v/Read/ReadVariableOp@Adam/lstm_65/lstm_cell_65/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_65/lstm_cell_65/bias/v/Read/ReadVariableOpConst*5
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
GPU 2J 8? *(
f#R!
__inference__traced_save_109915
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_21/kerneldense_21/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_63/lstm_cell_63/kernel%lstm_63/lstm_cell_63/recurrent_kernellstm_63/lstm_cell_63/biaslstm_64/lstm_cell_64/kernel%lstm_64/lstm_cell_64/recurrent_kernellstm_64/lstm_cell_64/biaslstm_65/lstm_cell_65/kernel%lstm_65/lstm_cell_65/recurrent_kernellstm_65/lstm_cell_65/biastotalcountAdam/dense_21/kernel/mAdam/dense_21/bias/m"Adam/lstm_63/lstm_cell_63/kernel/m,Adam/lstm_63/lstm_cell_63/recurrent_kernel/m Adam/lstm_63/lstm_cell_63/bias/m"Adam/lstm_64/lstm_cell_64/kernel/m,Adam/lstm_64/lstm_cell_64/recurrent_kernel/m Adam/lstm_64/lstm_cell_64/bias/m"Adam/lstm_65/lstm_cell_65/kernel/m,Adam/lstm_65/lstm_cell_65/recurrent_kernel/m Adam/lstm_65/lstm_cell_65/bias/mAdam/dense_21/kernel/vAdam/dense_21/bias/v"Adam/lstm_63/lstm_cell_63/kernel/v,Adam/lstm_63/lstm_cell_63/recurrent_kernel/v Adam/lstm_63/lstm_cell_63/bias/v"Adam/lstm_64/lstm_cell_64/kernel/v,Adam/lstm_64/lstm_cell_64/recurrent_kernel/v Adam/lstm_64/lstm_cell_64/bias/v"Adam/lstm_65/lstm_cell_65/kernel/v,Adam/lstm_65/lstm_cell_65/recurrent_kernel/v Adam/lstm_65/lstm_cell_65/bias/v*4
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_110045??+
?J
?
C__inference_lstm_63_layer_call_and_return_conditional_losses_105642

inputs>
+lstm_cell_15_matmul_readvariableop_resource:	?@
-lstm_cell_15_matmul_1_readvariableop_resource:	d?;
,lstm_cell_15_biasadd_readvariableop_resource:	?
identity??#lstm_cell_15/BiasAdd/ReadVariableOp?"lstm_cell_15/MatMul/ReadVariableOp?$lstm_cell_15/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_15/MatMul/ReadVariableOpReadVariableOp+lstm_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_15/MatMulMatMulstrided_slice_2:output:0*lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_15_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_15/MatMul_1MatMulzeros:output:0,lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_15/addAddV2lstm_cell_15/MatMul:product:0lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_15/BiasAddBiasAddlstm_cell_15/add:z:0+lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_15/splitSplit%lstm_cell_15/split/split_dim:output:0lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitn
lstm_cell_15/SigmoidSigmoidlstm_cell_15/split:output:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_15/Sigmoid_1Sigmoidlstm_cell_15/split:output:1*
T0*'
_output_shapes
:?????????dw
lstm_cell_15/mulMullstm_cell_15/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dh
lstm_cell_15/ReluRelulstm_cell_15/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_15/mul_1Mullstm_cell_15/Sigmoid:y:0lstm_cell_15/Relu:activations:0*
T0*'
_output_shapes
:?????????d{
lstm_cell_15/add_1AddV2lstm_cell_15/mul:z:0lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_15/Sigmoid_2Sigmoidlstm_cell_15/split:output:3*
T0*'
_output_shapes
:?????????de
lstm_cell_15/Relu_1Relulstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_15/mul_2Mullstm_cell_15/Sigmoid_2:y:0!lstm_cell_15/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_15_matmul_readvariableop_resource-lstm_cell_15_matmul_1_readvariableop_resource,lstm_cell_15_biasadd_readvariableop_resource*
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
bodyR
while_body_105558*
condR
while_cond_105557*K
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
NoOpNoOp$^lstm_cell_15/BiasAdd/ReadVariableOp#^lstm_cell_15/MatMul/ReadVariableOp%^lstm_cell_15/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_15/BiasAdd/ReadVariableOp#lstm_cell_15/BiasAdd/ReadVariableOp2H
"lstm_cell_15/MatMul/ReadVariableOp"lstm_cell_15/MatMul/ReadVariableOp2L
$lstm_cell_15/MatMul_1/ReadVariableOp$lstm_cell_15/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_109740

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
?J
?
C__inference_lstm_63_layer_call_and_return_conditional_losses_106488

inputs>
+lstm_cell_15_matmul_readvariableop_resource:	?@
-lstm_cell_15_matmul_1_readvariableop_resource:	d?;
,lstm_cell_15_biasadd_readvariableop_resource:	?
identity??#lstm_cell_15/BiasAdd/ReadVariableOp?"lstm_cell_15/MatMul/ReadVariableOp?$lstm_cell_15/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_15/MatMul/ReadVariableOpReadVariableOp+lstm_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_15/MatMulMatMulstrided_slice_2:output:0*lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_15_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_15/MatMul_1MatMulzeros:output:0,lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_15/addAddV2lstm_cell_15/MatMul:product:0lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_15/BiasAddBiasAddlstm_cell_15/add:z:0+lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_15/splitSplit%lstm_cell_15/split/split_dim:output:0lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitn
lstm_cell_15/SigmoidSigmoidlstm_cell_15/split:output:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_15/Sigmoid_1Sigmoidlstm_cell_15/split:output:1*
T0*'
_output_shapes
:?????????dw
lstm_cell_15/mulMullstm_cell_15/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dh
lstm_cell_15/ReluRelulstm_cell_15/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_15/mul_1Mullstm_cell_15/Sigmoid:y:0lstm_cell_15/Relu:activations:0*
T0*'
_output_shapes
:?????????d{
lstm_cell_15/add_1AddV2lstm_cell_15/mul:z:0lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_15/Sigmoid_2Sigmoidlstm_cell_15/split:output:3*
T0*'
_output_shapes
:?????????de
lstm_cell_15/Relu_1Relulstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_15/mul_2Mullstm_cell_15/Sigmoid_2:y:0!lstm_cell_15/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_15_matmul_readvariableop_resource-lstm_cell_15_matmul_1_readvariableop_resource,lstm_cell_15_biasadd_readvariableop_resource*
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
bodyR
while_body_106404*
condR
while_cond_106403*K
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
NoOpNoOp$^lstm_cell_15/BiasAdd/ReadVariableOp#^lstm_cell_15/MatMul/ReadVariableOp%^lstm_cell_15/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_15/BiasAdd/ReadVariableOp#lstm_cell_15/BiasAdd/ReadVariableOp2H
"lstm_cell_15/MatMul/ReadVariableOp"lstm_cell_15/MatMul/ReadVariableOp2L
$lstm_cell_15/MatMul_1/ReadVariableOp$lstm_cell_15/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_106073
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_106073___redundant_placeholder04
0while_while_cond_106073___redundant_placeholder14
0while_while_cond_106073___redundant_placeholder24
0while_while_cond_106073___redundant_placeholder3
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
lstm_65_while_cond_107520,
(lstm_65_while_lstm_65_while_loop_counter2
.lstm_65_while_lstm_65_while_maximum_iterations
lstm_65_while_placeholder
lstm_65_while_placeholder_1
lstm_65_while_placeholder_2
lstm_65_while_placeholder_3.
*lstm_65_while_less_lstm_65_strided_slice_1D
@lstm_65_while_lstm_65_while_cond_107520___redundant_placeholder0D
@lstm_65_while_lstm_65_while_cond_107520___redundant_placeholder1D
@lstm_65_while_lstm_65_while_cond_107520___redundant_placeholder2D
@lstm_65_while_lstm_65_while_cond_107520___redundant_placeholder3
lstm_65_while_identity
?
lstm_65/while/LessLesslstm_65_while_placeholder*lstm_65_while_less_lstm_65_strided_slice_1*
T0*
_output_shapes
: [
lstm_65/while/IdentityIdentitylstm_65/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_65_while_identitylstm_65/while/Identity:output:0*(
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
C__inference_lstm_64_layer_call_and_return_conditional_losses_106323

inputs>
+lstm_cell_16_matmul_readvariableop_resource:	d?@
-lstm_cell_16_matmul_1_readvariableop_resource:	2?;
,lstm_cell_16_biasadd_readvariableop_resource:	?
identity??#lstm_cell_16/BiasAdd/ReadVariableOp?"lstm_cell_16/MatMul/ReadVariableOp?$lstm_cell_16/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitn
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2p
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2w
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2h
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2{
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2p
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2e
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
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
bodyR
while_body_106239*
condR
while_cond_106238*K
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
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_64_while_cond_107381,
(lstm_64_while_lstm_64_while_loop_counter2
.lstm_64_while_lstm_64_while_maximum_iterations
lstm_64_while_placeholder
lstm_64_while_placeholder_1
lstm_64_while_placeholder_2
lstm_64_while_placeholder_3.
*lstm_64_while_less_lstm_64_strided_slice_1D
@lstm_64_while_lstm_64_while_cond_107381___redundant_placeholder0D
@lstm_64_while_lstm_64_while_cond_107381___redundant_placeholder1D
@lstm_64_while_lstm_64_while_cond_107381___redundant_placeholder2D
@lstm_64_while_lstm_64_while_cond_107381___redundant_placeholder3
lstm_64_while_identity
?
lstm_64/while/LessLesslstm_64_while_placeholder*lstm_64_while_less_lstm_64_strided_slice_1*
T0*
_output_shapes
: [
lstm_64/while/IdentityIdentitylstm_64/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_64_while_identitylstm_64/while/Identity:output:0*(
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
while_cond_108758
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_108758___redundant_placeholder04
0while_while_cond_108758___redundant_placeholder14
0while_while_cond_108758___redundant_placeholder24
0while_while_cond_108758___redundant_placeholder3
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
while_cond_107713
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_107713___redundant_placeholder04
0while_while_cond_107713___redundant_placeholder14
0while_while_cond_107713___redundant_placeholder24
0while_while_cond_107713___redundant_placeholder3
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
)__inference_dense_21_layer_call_fn_109468

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
GPU 2J 8? *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_105960o
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
?
?
(__inference_lstm_65_layer_call_fn_108854
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
GPU 2J 8? *L
fGRE
C__inference_lstm_65_layer_call_and_return_conditional_losses_105293o
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
?

?
.__inference_sequential_21_layer_call_fn_106757

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
GPU 2J 8? *R
fMRK
I__inference_sequential_21_layer_call_and_return_conditional_losses_106556o
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
while_body_108143
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_15_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_15_matmul_1_readvariableop_resource_0:	d?C
4while_lstm_cell_15_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_15_matmul_readvariableop_resource:	?F
3while_lstm_cell_15_matmul_1_readvariableop_resource:	d?A
2while_lstm_cell_15_biasadd_readvariableop_resource:	???)while/lstm_cell_15/BiasAdd/ReadVariableOp?(while/lstm_cell_15/MatMul/ReadVariableOp?*while/lstm_cell_15/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
(while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_15/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_15/addAddV2#while/lstm_cell_15/MatMul:product:0%while/lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_15/BiasAddBiasAddwhile/lstm_cell_15/add:z:01while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_15/splitSplit+while/lstm_cell_15/split/split_dim:output:0#while/lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitz
while/lstm_cell_15/SigmoidSigmoid!while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_15/Sigmoid_1Sigmoid!while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_15/mulMul while/lstm_cell_15/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dt
while/lstm_cell_15/ReluRelu!while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_15/mul_1Mulwhile/lstm_cell_15/Sigmoid:y:0%while/lstm_cell_15/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_15/add_1AddV2while/lstm_cell_15/mul:z:0while/lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_15/Sigmoid_2Sigmoid!while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:?????????dq
while/lstm_cell_15/Relu_1Reluwhile/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_15/mul_2Mul while/lstm_cell_15/Sigmoid_2:y:0'while/lstm_cell_15/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_15/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_15/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dy
while/Identity_5Identitywhile/lstm_cell_15/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_15_biasadd_readvariableop_resource4while_lstm_cell_15_biasadd_readvariableop_resource_0"l
3while_lstm_cell_15_matmul_1_readvariableop_resource5while_lstm_cell_15_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_15_matmul_readvariableop_resource3while_lstm_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2V
)while/lstm_cell_15/BiasAdd/ReadVariableOp)while/lstm_cell_15/BiasAdd/ReadVariableOp2T
(while/lstm_cell_15/MatMul/ReadVariableOp(while/lstm_cell_15/MatMul/ReadVariableOp2X
*while/lstm_cell_15/MatMul_1/ReadVariableOp*while/lstm_cell_15/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_104656

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
while_cond_104714
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_104714___redundant_placeholder04
0while_while_cond_104714___redundant_placeholder14
0while_while_cond_104714___redundant_placeholder24
0while_while_cond_104714___redundant_placeholder3
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
while_cond_106403
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_106403___redundant_placeholder04
0while_while_cond_106403___redundant_placeholder14
0while_while_cond_106403___redundant_placeholder24
0while_while_cond_106403___redundant_placeholder3
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
?	
?
D__inference_dense_21_layer_call_and_return_conditional_losses_109478

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
?
?
while_cond_108142
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_108142___redundant_placeholder04
0while_while_cond_108142___redundant_placeholder14
0while_while_cond_108142___redundant_placeholder24
0while_while_cond_108142___redundant_placeholder3
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
C__inference_lstm_64_layer_call_and_return_conditional_losses_108843

inputs>
+lstm_cell_16_matmul_readvariableop_resource:	d?@
-lstm_cell_16_matmul_1_readvariableop_resource:	2?;
,lstm_cell_16_biasadd_readvariableop_resource:	?
identity??#lstm_cell_16/BiasAdd/ReadVariableOp?"lstm_cell_16/MatMul/ReadVariableOp?$lstm_cell_16/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitn
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2p
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2w
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2h
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2{
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2p
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2e
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
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
bodyR
while_body_108759*
condR
while_cond_108758*K
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
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_105707
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_105707___redundant_placeholder04
0while_while_cond_105707___redundant_placeholder14
0while_while_cond_105707___redundant_placeholder24
0while_while_cond_105707___redundant_placeholder3
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
while_body_108616
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_16_matmul_readvariableop_resource_0:	d?H
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:	2?C
4while_lstm_cell_16_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_16_matmul_readvariableop_resource:	d?F
3while_lstm_cell_16_matmul_1_readvariableop_resource:	2?A
2while_lstm_cell_16_biasadd_readvariableop_resource:	???)while/lstm_cell_16/BiasAdd/ReadVariableOp?(while/lstm_cell_16/MatMul/ReadVariableOp?*while/lstm_cell_16/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitz
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2|
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2t
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2|
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2q
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2y
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_107999
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_107999___redundant_placeholder04
0while_while_cond_107999___redundant_placeholder14
0while_while_cond_107999___redundant_placeholder24
0while_while_cond_107999___redundant_placeholder3
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
(__inference_lstm_64_layer_call_fn_108260

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
GPU 2J 8? *L
fGRE
C__inference_lstm_64_layer_call_and_return_conditional_losses_105792s
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
?

?
lstm_63_while_cond_106815,
(lstm_63_while_lstm_63_while_loop_counter2
.lstm_63_while_lstm_63_while_maximum_iterations
lstm_63_while_placeholder
lstm_63_while_placeholder_1
lstm_63_while_placeholder_2
lstm_63_while_placeholder_3.
*lstm_63_while_less_lstm_63_strided_slice_1D
@lstm_63_while_lstm_63_while_cond_106815___redundant_placeholder0D
@lstm_63_while_lstm_63_while_cond_106815___redundant_placeholder1D
@lstm_63_while_lstm_63_while_cond_106815___redundant_placeholder2D
@lstm_63_while_lstm_63_while_cond_106815___redundant_placeholder3
lstm_63_while_identity
?
lstm_63/while/LessLesslstm_63_while_placeholder*lstm_63_while_less_lstm_63_strided_slice_1*
T0*
_output_shapes
: [
lstm_63/while/IdentityIdentitylstm_63/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_63_while_identitylstm_63/while/Identity:output:0*(
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
C__inference_lstm_64_layer_call_and_return_conditional_losses_108557
inputs_0>
+lstm_cell_16_matmul_readvariableop_resource:	d?@
-lstm_cell_16_matmul_1_readvariableop_resource:	2?;
,lstm_cell_16_biasadd_readvariableop_resource:	?
identity??#lstm_cell_16/BiasAdd/ReadVariableOp?"lstm_cell_16/MatMul/ReadVariableOp?$lstm_cell_16/MatMul_1/ReadVariableOp?while=
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
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitn
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2p
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2w
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2h
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2{
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2p
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2e
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
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
bodyR
while_body_108473*
condR
while_cond_108472*K
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
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
C__inference_lstm_65_layer_call_and_return_conditional_losses_109173
inputs_0=
+lstm_cell_17_matmul_readvariableop_resource:2(?
-lstm_cell_17_matmul_1_readvariableop_resource:
(:
,lstm_cell_17_biasadd_readvariableop_resource:(
identity??#lstm_cell_17/BiasAdd/ReadVariableOp?"lstm_cell_17/MatMul/ReadVariableOp?$lstm_cell_17/MatMul_1/ReadVariableOp?while=
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
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(^
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitn
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????
p
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????
w
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
h
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????
{
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????
p
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????
e
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
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
bodyR
while_body_109089*
condR
while_cond_109088*K
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
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_105223
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_105223___redundant_placeholder04
0while_while_cond_105223___redundant_placeholder14
0while_while_cond_105223___redundant_placeholder24
0while_while_cond_105223___redundant_placeholder3
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
?
'sequential_21_lstm_63_while_cond_104074H
Dsequential_21_lstm_63_while_sequential_21_lstm_63_while_loop_counterN
Jsequential_21_lstm_63_while_sequential_21_lstm_63_while_maximum_iterations+
'sequential_21_lstm_63_while_placeholder-
)sequential_21_lstm_63_while_placeholder_1-
)sequential_21_lstm_63_while_placeholder_2-
)sequential_21_lstm_63_while_placeholder_3J
Fsequential_21_lstm_63_while_less_sequential_21_lstm_63_strided_slice_1`
\sequential_21_lstm_63_while_sequential_21_lstm_63_while_cond_104074___redundant_placeholder0`
\sequential_21_lstm_63_while_sequential_21_lstm_63_while_cond_104074___redundant_placeholder1`
\sequential_21_lstm_63_while_sequential_21_lstm_63_while_cond_104074___redundant_placeholder2`
\sequential_21_lstm_63_while_sequential_21_lstm_63_while_cond_104074___redundant_placeholder3(
$sequential_21_lstm_63_while_identity
?
 sequential_21/lstm_63/while/LessLess'sequential_21_lstm_63_while_placeholderFsequential_21_lstm_63_while_less_sequential_21_lstm_63_strided_slice_1*
T0*
_output_shapes
: w
$sequential_21/lstm_63/while/IdentityIdentity$sequential_21/lstm_63/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_21_lstm_63_while_identity-sequential_21/lstm_63/while/Identity:output:0*(
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
?

?
lstm_65_while_cond_107093,
(lstm_65_while_lstm_65_while_loop_counter2
.lstm_65_while_lstm_65_while_maximum_iterations
lstm_65_while_placeholder
lstm_65_while_placeholder_1
lstm_65_while_placeholder_2
lstm_65_while_placeholder_3.
*lstm_65_while_less_lstm_65_strided_slice_1D
@lstm_65_while_lstm_65_while_cond_107093___redundant_placeholder0D
@lstm_65_while_lstm_65_while_cond_107093___redundant_placeholder1D
@lstm_65_while_lstm_65_while_cond_107093___redundant_placeholder2D
@lstm_65_while_lstm_65_while_cond_107093___redundant_placeholder3
lstm_65_while_identity
?
lstm_65/while/LessLesslstm_65_while_placeholder*lstm_65_while_less_lstm_65_strided_slice_1*
T0*
_output_shapes
: [
lstm_65/while/IdentityIdentitylstm_65/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_65_while_identitylstm_65/while/Identity:output:0*(
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
C__inference_lstm_63_layer_call_and_return_conditional_losses_104784

inputs&
lstm_cell_15_104702:	?&
lstm_cell_15_104704:	d?"
lstm_cell_15_104706:	?
identity??$lstm_cell_15/StatefulPartitionedCall?while;
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
$lstm_cell_15/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_15_104702lstm_cell_15_104704lstm_cell_15_104706*
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
GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_104656n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_15_104702lstm_cell_15_104704lstm_cell_15_104706*
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
bodyR
while_body_104715*
condR
while_cond_104714*K
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
 :??????????????????du
NoOpNoOp%^lstm_cell_15/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_15/StatefulPartitionedCall$lstm_cell_15/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
C__inference_lstm_63_layer_call_and_return_conditional_losses_108227

inputs>
+lstm_cell_15_matmul_readvariableop_resource:	?@
-lstm_cell_15_matmul_1_readvariableop_resource:	d?;
,lstm_cell_15_biasadd_readvariableop_resource:	?
identity??#lstm_cell_15/BiasAdd/ReadVariableOp?"lstm_cell_15/MatMul/ReadVariableOp?$lstm_cell_15/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_15/MatMul/ReadVariableOpReadVariableOp+lstm_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_15/MatMulMatMulstrided_slice_2:output:0*lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_15_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_15/MatMul_1MatMulzeros:output:0,lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_15/addAddV2lstm_cell_15/MatMul:product:0lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_15/BiasAddBiasAddlstm_cell_15/add:z:0+lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_15/splitSplit%lstm_cell_15/split/split_dim:output:0lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitn
lstm_cell_15/SigmoidSigmoidlstm_cell_15/split:output:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_15/Sigmoid_1Sigmoidlstm_cell_15/split:output:1*
T0*'
_output_shapes
:?????????dw
lstm_cell_15/mulMullstm_cell_15/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dh
lstm_cell_15/ReluRelulstm_cell_15/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_15/mul_1Mullstm_cell_15/Sigmoid:y:0lstm_cell_15/Relu:activations:0*
T0*'
_output_shapes
:?????????d{
lstm_cell_15/add_1AddV2lstm_cell_15/mul:z:0lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_15/Sigmoid_2Sigmoidlstm_cell_15/split:output:3*
T0*'
_output_shapes
:?????????de
lstm_cell_15/Relu_1Relulstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_15/mul_2Mullstm_cell_15/Sigmoid_2:y:0!lstm_cell_15/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_15_matmul_readvariableop_resource-lstm_cell_15_matmul_1_readvariableop_resource,lstm_cell_15_biasadd_readvariableop_resource*
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
bodyR
while_body_108143*
condR
while_cond_108142*K
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
NoOpNoOp$^lstm_cell_15/BiasAdd/ReadVariableOp#^lstm_cell_15/MatMul/ReadVariableOp%^lstm_cell_15/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_15/BiasAdd/ReadVariableOp#lstm_cell_15/BiasAdd/ReadVariableOp2H
"lstm_cell_15/MatMul/ReadVariableOp"lstm_cell_15/MatMul/ReadVariableOp2L
$lstm_cell_15/MatMul_1/ReadVariableOp$lstm_cell_15/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_108329
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_108329___redundant_placeholder04
0while_while_cond_108329___redundant_placeholder14
0while_while_cond_108329___redundant_placeholder24
0while_while_cond_108329___redundant_placeholder3
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
?"
?
while_body_104715
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_15_104739_0:	?.
while_lstm_cell_15_104741_0:	d?*
while_lstm_cell_15_104743_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_15_104739:	?,
while_lstm_cell_15_104741:	d?(
while_lstm_cell_15_104743:	???*while/lstm_cell_15/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
*while/lstm_cell_15/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_15_104739_0while_lstm_cell_15_104741_0while_lstm_cell_15_104743_0*
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
GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_104656?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_15/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_15/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity3while/lstm_cell_15/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dy

while/NoOpNoOp+^while/lstm_cell_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_15_104739while_lstm_cell_15_104739_0"8
while_lstm_cell_15_104741while_lstm_cell_15_104741_0"8
while_lstm_cell_15_104743while_lstm_cell_15_104743_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_15/StatefulPartitionedCall*while/lstm_cell_15/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
(__inference_lstm_65_layer_call_fn_108876

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
GPU 2J 8? *L
fGRE
C__inference_lstm_65_layer_call_and_return_conditional_losses_105942o
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
?
?
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_109576

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
?
?
(__inference_lstm_64_layer_call_fn_108238
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
GPU 2J 8? *L
fGRE
C__inference_lstm_64_layer_call_and_return_conditional_losses_104943|
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
?8
?
C__inference_lstm_64_layer_call_and_return_conditional_losses_105134

inputs&
lstm_cell_16_105052:	d?&
lstm_cell_16_105054:	2?"
lstm_cell_16_105056:	?
identity??$lstm_cell_16/StatefulPartitionedCall?while;
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
$lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_16_105052lstm_cell_16_105054lstm_cell_16_105056*
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
GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_105006n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_16_105052lstm_cell_16_105054lstm_cell_16_105056*
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
bodyR
while_body_105065*
condR
while_cond_105064*K
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
 :??????????????????2u
NoOpNoOp%^lstm_cell_16/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_16/StatefulPartitionedCall$lstm_cell_16/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?Q
?
'sequential_21_lstm_65_while_body_104353H
Dsequential_21_lstm_65_while_sequential_21_lstm_65_while_loop_counterN
Jsequential_21_lstm_65_while_sequential_21_lstm_65_while_maximum_iterations+
'sequential_21_lstm_65_while_placeholder-
)sequential_21_lstm_65_while_placeholder_1-
)sequential_21_lstm_65_while_placeholder_2-
)sequential_21_lstm_65_while_placeholder_3G
Csequential_21_lstm_65_while_sequential_21_lstm_65_strided_slice_1_0?
sequential_21_lstm_65_while_tensorarrayv2read_tensorlistgetitem_sequential_21_lstm_65_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_21_lstm_65_while_lstm_cell_17_matmul_readvariableop_resource_0:2(]
Ksequential_21_lstm_65_while_lstm_cell_17_matmul_1_readvariableop_resource_0:
(X
Jsequential_21_lstm_65_while_lstm_cell_17_biasadd_readvariableop_resource_0:((
$sequential_21_lstm_65_while_identity*
&sequential_21_lstm_65_while_identity_1*
&sequential_21_lstm_65_while_identity_2*
&sequential_21_lstm_65_while_identity_3*
&sequential_21_lstm_65_while_identity_4*
&sequential_21_lstm_65_while_identity_5E
Asequential_21_lstm_65_while_sequential_21_lstm_65_strided_slice_1?
}sequential_21_lstm_65_while_tensorarrayv2read_tensorlistgetitem_sequential_21_lstm_65_tensorarrayunstack_tensorlistfromtensorY
Gsequential_21_lstm_65_while_lstm_cell_17_matmul_readvariableop_resource:2([
Isequential_21_lstm_65_while_lstm_cell_17_matmul_1_readvariableop_resource:
(V
Hsequential_21_lstm_65_while_lstm_cell_17_biasadd_readvariableop_resource:(???sequential_21/lstm_65/while/lstm_cell_17/BiasAdd/ReadVariableOp?>sequential_21/lstm_65/while/lstm_cell_17/MatMul/ReadVariableOp?@sequential_21/lstm_65/while/lstm_cell_17/MatMul_1/ReadVariableOp?
Msequential_21/lstm_65/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_21/lstm_65/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_21_lstm_65_while_tensorarrayv2read_tensorlistgetitem_sequential_21_lstm_65_tensorarrayunstack_tensorlistfromtensor_0'sequential_21_lstm_65_while_placeholderVsequential_21/lstm_65/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
>sequential_21/lstm_65/while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOpIsequential_21_lstm_65_while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
/sequential_21/lstm_65/while/lstm_cell_17/MatMulMatMulFsequential_21/lstm_65/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_21/lstm_65/while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
@sequential_21/lstm_65/while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOpKsequential_21_lstm_65_while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
1sequential_21/lstm_65/while/lstm_cell_17/MatMul_1MatMul)sequential_21_lstm_65_while_placeholder_2Hsequential_21/lstm_65/while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
,sequential_21/lstm_65/while/lstm_cell_17/addAddV29sequential_21/lstm_65/while/lstm_cell_17/MatMul:product:0;sequential_21/lstm_65/while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
?sequential_21/lstm_65/while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOpJsequential_21_lstm_65_while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
0sequential_21/lstm_65/while/lstm_cell_17/BiasAddBiasAdd0sequential_21/lstm_65/while/lstm_cell_17/add:z:0Gsequential_21/lstm_65/while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(z
8sequential_21/lstm_65/while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
.sequential_21/lstm_65/while/lstm_cell_17/splitSplitAsequential_21/lstm_65/while/lstm_cell_17/split/split_dim:output:09sequential_21/lstm_65/while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
0sequential_21/lstm_65/while/lstm_cell_17/SigmoidSigmoid7sequential_21/lstm_65/while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????
?
2sequential_21/lstm_65/while/lstm_cell_17/Sigmoid_1Sigmoid7sequential_21/lstm_65/while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????
?
,sequential_21/lstm_65/while/lstm_cell_17/mulMul6sequential_21/lstm_65/while/lstm_cell_17/Sigmoid_1:y:0)sequential_21_lstm_65_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
-sequential_21/lstm_65/while/lstm_cell_17/ReluRelu7sequential_21/lstm_65/while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????
?
.sequential_21/lstm_65/while/lstm_cell_17/mul_1Mul4sequential_21/lstm_65/while/lstm_cell_17/Sigmoid:y:0;sequential_21/lstm_65/while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
.sequential_21/lstm_65/while/lstm_cell_17/add_1AddV20sequential_21/lstm_65/while/lstm_cell_17/mul:z:02sequential_21/lstm_65/while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
2sequential_21/lstm_65/while/lstm_cell_17/Sigmoid_2Sigmoid7sequential_21/lstm_65/while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????
?
/sequential_21/lstm_65/while/lstm_cell_17/Relu_1Relu2sequential_21/lstm_65/while/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_21/lstm_65/while/lstm_cell_17/mul_2Mul6sequential_21/lstm_65/while/lstm_cell_17/Sigmoid_2:y:0=sequential_21/lstm_65/while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
@sequential_21/lstm_65/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_21_lstm_65_while_placeholder_1'sequential_21_lstm_65_while_placeholder2sequential_21/lstm_65/while/lstm_cell_17/mul_2:z:0*
_output_shapes
: *
element_dtype0:???c
!sequential_21/lstm_65/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
sequential_21/lstm_65/while/addAddV2'sequential_21_lstm_65_while_placeholder*sequential_21/lstm_65/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_21/lstm_65/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_21/lstm_65/while/add_1AddV2Dsequential_21_lstm_65_while_sequential_21_lstm_65_while_loop_counter,sequential_21/lstm_65/while/add_1/y:output:0*
T0*
_output_shapes
: ?
$sequential_21/lstm_65/while/IdentityIdentity%sequential_21/lstm_65/while/add_1:z:0!^sequential_21/lstm_65/while/NoOp*
T0*
_output_shapes
: ?
&sequential_21/lstm_65/while/Identity_1IdentityJsequential_21_lstm_65_while_sequential_21_lstm_65_while_maximum_iterations!^sequential_21/lstm_65/while/NoOp*
T0*
_output_shapes
: ?
&sequential_21/lstm_65/while/Identity_2Identity#sequential_21/lstm_65/while/add:z:0!^sequential_21/lstm_65/while/NoOp*
T0*
_output_shapes
: ?
&sequential_21/lstm_65/while/Identity_3IdentityPsequential_21/lstm_65/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_21/lstm_65/while/NoOp*
T0*
_output_shapes
: ?
&sequential_21/lstm_65/while/Identity_4Identity2sequential_21/lstm_65/while/lstm_cell_17/mul_2:z:0!^sequential_21/lstm_65/while/NoOp*
T0*'
_output_shapes
:?????????
?
&sequential_21/lstm_65/while/Identity_5Identity2sequential_21/lstm_65/while/lstm_cell_17/add_1:z:0!^sequential_21/lstm_65/while/NoOp*
T0*'
_output_shapes
:?????????
?
 sequential_21/lstm_65/while/NoOpNoOp@^sequential_21/lstm_65/while/lstm_cell_17/BiasAdd/ReadVariableOp?^sequential_21/lstm_65/while/lstm_cell_17/MatMul/ReadVariableOpA^sequential_21/lstm_65/while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_21_lstm_65_while_identity-sequential_21/lstm_65/while/Identity:output:0"Y
&sequential_21_lstm_65_while_identity_1/sequential_21/lstm_65/while/Identity_1:output:0"Y
&sequential_21_lstm_65_while_identity_2/sequential_21/lstm_65/while/Identity_2:output:0"Y
&sequential_21_lstm_65_while_identity_3/sequential_21/lstm_65/while/Identity_3:output:0"Y
&sequential_21_lstm_65_while_identity_4/sequential_21/lstm_65/while/Identity_4:output:0"Y
&sequential_21_lstm_65_while_identity_5/sequential_21/lstm_65/while/Identity_5:output:0"?
Hsequential_21_lstm_65_while_lstm_cell_17_biasadd_readvariableop_resourceJsequential_21_lstm_65_while_lstm_cell_17_biasadd_readvariableop_resource_0"?
Isequential_21_lstm_65_while_lstm_cell_17_matmul_1_readvariableop_resourceKsequential_21_lstm_65_while_lstm_cell_17_matmul_1_readvariableop_resource_0"?
Gsequential_21_lstm_65_while_lstm_cell_17_matmul_readvariableop_resourceIsequential_21_lstm_65_while_lstm_cell_17_matmul_readvariableop_resource_0"?
Asequential_21_lstm_65_while_sequential_21_lstm_65_strided_slice_1Csequential_21_lstm_65_while_sequential_21_lstm_65_strided_slice_1_0"?
}sequential_21_lstm_65_while_tensorarrayv2read_tensorlistgetitem_sequential_21_lstm_65_tensorarrayunstack_tensorlistfromtensorsequential_21_lstm_65_while_tensorarrayv2read_tensorlistgetitem_sequential_21_lstm_65_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
?sequential_21/lstm_65/while/lstm_cell_17/BiasAdd/ReadVariableOp?sequential_21/lstm_65/while/lstm_cell_17/BiasAdd/ReadVariableOp2?
>sequential_21/lstm_65/while/lstm_cell_17/MatMul/ReadVariableOp>sequential_21/lstm_65/while/lstm_cell_17/MatMul/ReadVariableOp2?
@sequential_21/lstm_65/while/lstm_cell_17/MatMul_1/ReadVariableOp@sequential_21/lstm_65/while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_105210

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
?
?
-__inference_lstm_cell_17_layer_call_fn_109708

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
GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_105356o
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
?"
?
while_body_104874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_16_104898_0:	d?.
while_lstm_cell_16_104900_0:	2?*
while_lstm_cell_16_104902_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_16_104898:	d?,
while_lstm_cell_16_104900:	2?(
while_lstm_cell_16_104902:	???*while/lstm_cell_16/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
*while/lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_16_104898_0while_lstm_cell_16_104900_0while_lstm_cell_16_104902_0*
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
GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_104860?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_16/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_16/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity3while/lstm_cell_16/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2y

while/NoOpNoOp+^while/lstm_cell_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_16_104898while_lstm_cell_16_104898_0"8
while_lstm_cell_16_104900while_lstm_cell_16_104900_0"8
while_lstm_cell_16_104902while_lstm_cell_16_104902_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_16/StatefulPartitionedCall*while/lstm_cell_16/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?"
?
while_body_105065
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_16_105089_0:	d?.
while_lstm_cell_16_105091_0:	2?*
while_lstm_cell_16_105093_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_16_105089:	d?,
while_lstm_cell_16_105091:	2?(
while_lstm_cell_16_105093:	???*while/lstm_cell_16/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
*while/lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_16_105089_0while_lstm_cell_16_105091_0while_lstm_cell_16_105093_0*
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
GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_105006?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_16/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_16/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity3while/lstm_cell_16/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2y

while/NoOpNoOp+^while/lstm_cell_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_16_105089while_lstm_cell_16_105089_0"8
while_lstm_cell_16_105091while_lstm_cell_16_105091_0"8
while_lstm_cell_16_105093while_lstm_cell_16_105093_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_16/StatefulPartitionedCall*while/lstm_cell_16/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?R
?
'sequential_21_lstm_64_while_body_104214H
Dsequential_21_lstm_64_while_sequential_21_lstm_64_while_loop_counterN
Jsequential_21_lstm_64_while_sequential_21_lstm_64_while_maximum_iterations+
'sequential_21_lstm_64_while_placeholder-
)sequential_21_lstm_64_while_placeholder_1-
)sequential_21_lstm_64_while_placeholder_2-
)sequential_21_lstm_64_while_placeholder_3G
Csequential_21_lstm_64_while_sequential_21_lstm_64_strided_slice_1_0?
sequential_21_lstm_64_while_tensorarrayv2read_tensorlistgetitem_sequential_21_lstm_64_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_21_lstm_64_while_lstm_cell_16_matmul_readvariableop_resource_0:	d?^
Ksequential_21_lstm_64_while_lstm_cell_16_matmul_1_readvariableop_resource_0:	2?Y
Jsequential_21_lstm_64_while_lstm_cell_16_biasadd_readvariableop_resource_0:	?(
$sequential_21_lstm_64_while_identity*
&sequential_21_lstm_64_while_identity_1*
&sequential_21_lstm_64_while_identity_2*
&sequential_21_lstm_64_while_identity_3*
&sequential_21_lstm_64_while_identity_4*
&sequential_21_lstm_64_while_identity_5E
Asequential_21_lstm_64_while_sequential_21_lstm_64_strided_slice_1?
}sequential_21_lstm_64_while_tensorarrayv2read_tensorlistgetitem_sequential_21_lstm_64_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_21_lstm_64_while_lstm_cell_16_matmul_readvariableop_resource:	d?\
Isequential_21_lstm_64_while_lstm_cell_16_matmul_1_readvariableop_resource:	2?W
Hsequential_21_lstm_64_while_lstm_cell_16_biasadd_readvariableop_resource:	????sequential_21/lstm_64/while/lstm_cell_16/BiasAdd/ReadVariableOp?>sequential_21/lstm_64/while/lstm_cell_16/MatMul/ReadVariableOp?@sequential_21/lstm_64/while/lstm_cell_16/MatMul_1/ReadVariableOp?
Msequential_21/lstm_64/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_21/lstm_64/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_21_lstm_64_while_tensorarrayv2read_tensorlistgetitem_sequential_21_lstm_64_tensorarrayunstack_tensorlistfromtensor_0'sequential_21_lstm_64_while_placeholderVsequential_21/lstm_64/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
>sequential_21/lstm_64/while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOpIsequential_21_lstm_64_while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
/sequential_21/lstm_64/while/lstm_cell_16/MatMulMatMulFsequential_21/lstm_64/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_21/lstm_64/while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
@sequential_21/lstm_64/while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOpKsequential_21_lstm_64_while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
1sequential_21/lstm_64/while/lstm_cell_16/MatMul_1MatMul)sequential_21_lstm_64_while_placeholder_2Hsequential_21/lstm_64/while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,sequential_21/lstm_64/while/lstm_cell_16/addAddV29sequential_21/lstm_64/while/lstm_cell_16/MatMul:product:0;sequential_21/lstm_64/while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
?sequential_21/lstm_64/while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOpJsequential_21_lstm_64_while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
0sequential_21/lstm_64/while/lstm_cell_16/BiasAddBiasAdd0sequential_21/lstm_64/while/lstm_cell_16/add:z:0Gsequential_21/lstm_64/while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
8sequential_21/lstm_64/while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
.sequential_21/lstm_64/while/lstm_cell_16/splitSplitAsequential_21/lstm_64/while/lstm_cell_16/split/split_dim:output:09sequential_21/lstm_64/while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
0sequential_21/lstm_64/while/lstm_cell_16/SigmoidSigmoid7sequential_21/lstm_64/while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2?
2sequential_21/lstm_64/while/lstm_cell_16/Sigmoid_1Sigmoid7sequential_21/lstm_64/while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2?
,sequential_21/lstm_64/while/lstm_cell_16/mulMul6sequential_21/lstm_64/while/lstm_cell_16/Sigmoid_1:y:0)sequential_21_lstm_64_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
-sequential_21/lstm_64/while/lstm_cell_16/ReluRelu7sequential_21/lstm_64/while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2?
.sequential_21/lstm_64/while/lstm_cell_16/mul_1Mul4sequential_21/lstm_64/while/lstm_cell_16/Sigmoid:y:0;sequential_21/lstm_64/while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
.sequential_21/lstm_64/while/lstm_cell_16/add_1AddV20sequential_21/lstm_64/while/lstm_cell_16/mul:z:02sequential_21/lstm_64/while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
2sequential_21/lstm_64/while/lstm_cell_16/Sigmoid_2Sigmoid7sequential_21/lstm_64/while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2?
/sequential_21/lstm_64/while/lstm_cell_16/Relu_1Relu2sequential_21/lstm_64/while/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_21/lstm_64/while/lstm_cell_16/mul_2Mul6sequential_21/lstm_64/while/lstm_cell_16/Sigmoid_2:y:0=sequential_21/lstm_64/while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
@sequential_21/lstm_64/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_21_lstm_64_while_placeholder_1'sequential_21_lstm_64_while_placeholder2sequential_21/lstm_64/while/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:???c
!sequential_21/lstm_64/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
sequential_21/lstm_64/while/addAddV2'sequential_21_lstm_64_while_placeholder*sequential_21/lstm_64/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_21/lstm_64/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_21/lstm_64/while/add_1AddV2Dsequential_21_lstm_64_while_sequential_21_lstm_64_while_loop_counter,sequential_21/lstm_64/while/add_1/y:output:0*
T0*
_output_shapes
: ?
$sequential_21/lstm_64/while/IdentityIdentity%sequential_21/lstm_64/while/add_1:z:0!^sequential_21/lstm_64/while/NoOp*
T0*
_output_shapes
: ?
&sequential_21/lstm_64/while/Identity_1IdentityJsequential_21_lstm_64_while_sequential_21_lstm_64_while_maximum_iterations!^sequential_21/lstm_64/while/NoOp*
T0*
_output_shapes
: ?
&sequential_21/lstm_64/while/Identity_2Identity#sequential_21/lstm_64/while/add:z:0!^sequential_21/lstm_64/while/NoOp*
T0*
_output_shapes
: ?
&sequential_21/lstm_64/while/Identity_3IdentityPsequential_21/lstm_64/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_21/lstm_64/while/NoOp*
T0*
_output_shapes
: ?
&sequential_21/lstm_64/while/Identity_4Identity2sequential_21/lstm_64/while/lstm_cell_16/mul_2:z:0!^sequential_21/lstm_64/while/NoOp*
T0*'
_output_shapes
:?????????2?
&sequential_21/lstm_64/while/Identity_5Identity2sequential_21/lstm_64/while/lstm_cell_16/add_1:z:0!^sequential_21/lstm_64/while/NoOp*
T0*'
_output_shapes
:?????????2?
 sequential_21/lstm_64/while/NoOpNoOp@^sequential_21/lstm_64/while/lstm_cell_16/BiasAdd/ReadVariableOp?^sequential_21/lstm_64/while/lstm_cell_16/MatMul/ReadVariableOpA^sequential_21/lstm_64/while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_21_lstm_64_while_identity-sequential_21/lstm_64/while/Identity:output:0"Y
&sequential_21_lstm_64_while_identity_1/sequential_21/lstm_64/while/Identity_1:output:0"Y
&sequential_21_lstm_64_while_identity_2/sequential_21/lstm_64/while/Identity_2:output:0"Y
&sequential_21_lstm_64_while_identity_3/sequential_21/lstm_64/while/Identity_3:output:0"Y
&sequential_21_lstm_64_while_identity_4/sequential_21/lstm_64/while/Identity_4:output:0"Y
&sequential_21_lstm_64_while_identity_5/sequential_21/lstm_64/while/Identity_5:output:0"?
Hsequential_21_lstm_64_while_lstm_cell_16_biasadd_readvariableop_resourceJsequential_21_lstm_64_while_lstm_cell_16_biasadd_readvariableop_resource_0"?
Isequential_21_lstm_64_while_lstm_cell_16_matmul_1_readvariableop_resourceKsequential_21_lstm_64_while_lstm_cell_16_matmul_1_readvariableop_resource_0"?
Gsequential_21_lstm_64_while_lstm_cell_16_matmul_readvariableop_resourceIsequential_21_lstm_64_while_lstm_cell_16_matmul_readvariableop_resource_0"?
Asequential_21_lstm_64_while_sequential_21_lstm_64_strided_slice_1Csequential_21_lstm_64_while_sequential_21_lstm_64_strided_slice_1_0"?
}sequential_21_lstm_64_while_tensorarrayv2read_tensorlistgetitem_sequential_21_lstm_64_tensorarrayunstack_tensorlistfromtensorsequential_21_lstm_64_while_tensorarrayv2read_tensorlistgetitem_sequential_21_lstm_64_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
?sequential_21/lstm_64/while/lstm_cell_16/BiasAdd/ReadVariableOp?sequential_21/lstm_64/while/lstm_cell_16/BiasAdd/ReadVariableOp2?
>sequential_21/lstm_64/while/lstm_cell_16/MatMul/ReadVariableOp>sequential_21/lstm_64/while/lstm_cell_16/MatMul/ReadVariableOp2?
@sequential_21/lstm_64/while/lstm_cell_16/MatMul_1/ReadVariableOp@sequential_21/lstm_64/while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
(__inference_lstm_65_layer_call_fn_108887

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
GPU 2J 8? *L
fGRE
C__inference_lstm_65_layer_call_and_return_conditional_losses_106158o
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
?

?
$__inference_signature_wrapper_106703
lstm_63_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_63_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8? **
f%R#
!__inference__wrapped_model_104443o
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
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_63_input
?
?
(__inference_lstm_64_layer_call_fn_108271

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
GPU 2J 8? *L
fGRE
C__inference_lstm_64_layer_call_and_return_conditional_losses_106323s
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
while_cond_108472
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_108472___redundant_placeholder04
0while_while_cond_108472___redundant_placeholder14
0while_while_cond_108472___redundant_placeholder24
0while_while_cond_108472___redundant_placeholder3
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
?J
?
C__inference_lstm_65_layer_call_and_return_conditional_losses_109030
inputs_0=
+lstm_cell_17_matmul_readvariableop_resource:2(?
-lstm_cell_17_matmul_1_readvariableop_resource:
(:
,lstm_cell_17_biasadd_readvariableop_resource:(
identity??#lstm_cell_17/BiasAdd/ReadVariableOp?"lstm_cell_17/MatMul/ReadVariableOp?$lstm_cell_17/MatMul_1/ReadVariableOp?while=
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
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(^
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitn
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????
p
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????
w
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
h
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????
{
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????
p
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????
e
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
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
bodyR
while_body_108946*
condR
while_cond_108945*K
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
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_107856
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_107856___redundant_placeholder04
0while_while_cond_107856___redundant_placeholder14
0while_while_cond_107856___redundant_placeholder24
0while_while_cond_107856___redundant_placeholder3
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
?
?
I__inference_sequential_21_layer_call_and_return_conditional_losses_105967

inputs!
lstm_63_105643:	?!
lstm_63_105645:	d?
lstm_63_105647:	?!
lstm_64_105793:	d?!
lstm_64_105795:	2?
lstm_64_105797:	? 
lstm_65_105943:2( 
lstm_65_105945:
(
lstm_65_105947:(!
dense_21_105961:

dense_21_105963:
identity?? dense_21/StatefulPartitionedCall?lstm_63/StatefulPartitionedCall?lstm_64/StatefulPartitionedCall?lstm_65/StatefulPartitionedCall?
lstm_63/StatefulPartitionedCallStatefulPartitionedCallinputslstm_63_105643lstm_63_105645lstm_63_105647*
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
GPU 2J 8? *L
fGRE
C__inference_lstm_63_layer_call_and_return_conditional_losses_105642?
lstm_64/StatefulPartitionedCallStatefulPartitionedCall(lstm_63/StatefulPartitionedCall:output:0lstm_64_105793lstm_64_105795lstm_64_105797*
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
GPU 2J 8? *L
fGRE
C__inference_lstm_64_layer_call_and_return_conditional_losses_105792?
lstm_65/StatefulPartitionedCallStatefulPartitionedCall(lstm_64/StatefulPartitionedCall:output:0lstm_65_105943lstm_65_105945lstm_65_105947*
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
GPU 2J 8? *L
fGRE
C__inference_lstm_65_layer_call_and_return_conditional_losses_105942?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall(lstm_65/StatefulPartitionedCall:output:0dense_21_105961dense_21_105963*
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
GPU 2J 8? *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_105960x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_21/StatefulPartitionedCall ^lstm_63/StatefulPartitionedCall ^lstm_64/StatefulPartitionedCall ^lstm_65/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2B
lstm_63/StatefulPartitionedCalllstm_63/StatefulPartitionedCall2B
lstm_64/StatefulPartitionedCalllstm_64/StatefulPartitionedCall2B
lstm_65/StatefulPartitionedCalllstm_65/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_lstm_63_layer_call_fn_107622
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
GPU 2J 8? *L
fGRE
C__inference_lstm_63_layer_call_and_return_conditional_losses_104593|
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
?7
?
while_body_109375
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_17_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_17_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_17_matmul_readvariableop_resource:2(E
3while_lstm_cell_17_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_17_biasadd_readvariableop_resource:(??)while/lstm_cell_17/BiasAdd/ReadVariableOp?(while/lstm_cell_17/MatMul/ReadVariableOp?*while/lstm_cell_17/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitz
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????
|
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
t
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????
|
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????
q
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_17/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
y
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?J
?
C__inference_lstm_64_layer_call_and_return_conditional_losses_105792

inputs>
+lstm_cell_16_matmul_readvariableop_resource:	d?@
-lstm_cell_16_matmul_1_readvariableop_resource:	2?;
,lstm_cell_16_biasadd_readvariableop_resource:	?
identity??#lstm_cell_16/BiasAdd/ReadVariableOp?"lstm_cell_16/MatMul/ReadVariableOp?$lstm_cell_16/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitn
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2p
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2w
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2h
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2{
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2p
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2e
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
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
bodyR
while_body_105708*
condR
while_cond_105707*K
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
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
C__inference_lstm_65_layer_call_and_return_conditional_losses_109459

inputs=
+lstm_cell_17_matmul_readvariableop_resource:2(?
-lstm_cell_17_matmul_1_readvariableop_resource:
(:
,lstm_cell_17_biasadd_readvariableop_resource:(
identity??#lstm_cell_17/BiasAdd/ReadVariableOp?"lstm_cell_17/MatMul/ReadVariableOp?$lstm_cell_17/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(^
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitn
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????
p
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????
w
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
h
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????
{
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????
p
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????
e
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
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
bodyR
while_body_109375*
condR
while_cond_109374*K
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
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_108759
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_16_matmul_readvariableop_resource_0:	d?H
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:	2?C
4while_lstm_cell_16_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_16_matmul_readvariableop_resource:	d?F
3while_lstm_cell_16_matmul_1_readvariableop_resource:	2?A
2while_lstm_cell_16_biasadd_readvariableop_resource:	???)while/lstm_cell_16/BiasAdd/ReadVariableOp?(while/lstm_cell_16/MatMul/ReadVariableOp?*while/lstm_cell_16/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitz
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2|
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2t
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2|
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2q
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2y
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_105414
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_105414___redundant_placeholder04
0while_while_cond_105414___redundant_placeholder14
0while_while_cond_105414___redundant_placeholder24
0while_while_cond_105414___redundant_placeholder3
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
??
?
!__inference__wrapped_model_104443
lstm_63_inputT
Asequential_21_lstm_63_lstm_cell_15_matmul_readvariableop_resource:	?V
Csequential_21_lstm_63_lstm_cell_15_matmul_1_readvariableop_resource:	d?Q
Bsequential_21_lstm_63_lstm_cell_15_biasadd_readvariableop_resource:	?T
Asequential_21_lstm_64_lstm_cell_16_matmul_readvariableop_resource:	d?V
Csequential_21_lstm_64_lstm_cell_16_matmul_1_readvariableop_resource:	2?Q
Bsequential_21_lstm_64_lstm_cell_16_biasadd_readvariableop_resource:	?S
Asequential_21_lstm_65_lstm_cell_17_matmul_readvariableop_resource:2(U
Csequential_21_lstm_65_lstm_cell_17_matmul_1_readvariableop_resource:
(P
Bsequential_21_lstm_65_lstm_cell_17_biasadd_readvariableop_resource:(G
5sequential_21_dense_21_matmul_readvariableop_resource:
D
6sequential_21_dense_21_biasadd_readvariableop_resource:
identity??-sequential_21/dense_21/BiasAdd/ReadVariableOp?,sequential_21/dense_21/MatMul/ReadVariableOp?9sequential_21/lstm_63/lstm_cell_15/BiasAdd/ReadVariableOp?8sequential_21/lstm_63/lstm_cell_15/MatMul/ReadVariableOp?:sequential_21/lstm_63/lstm_cell_15/MatMul_1/ReadVariableOp?sequential_21/lstm_63/while?9sequential_21/lstm_64/lstm_cell_16/BiasAdd/ReadVariableOp?8sequential_21/lstm_64/lstm_cell_16/MatMul/ReadVariableOp?:sequential_21/lstm_64/lstm_cell_16/MatMul_1/ReadVariableOp?sequential_21/lstm_64/while?9sequential_21/lstm_65/lstm_cell_17/BiasAdd/ReadVariableOp?8sequential_21/lstm_65/lstm_cell_17/MatMul/ReadVariableOp?:sequential_21/lstm_65/lstm_cell_17/MatMul_1/ReadVariableOp?sequential_21/lstm_65/whileX
sequential_21/lstm_63/ShapeShapelstm_63_input*
T0*
_output_shapes
:s
)sequential_21/lstm_63/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_21/lstm_63/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_21/lstm_63/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#sequential_21/lstm_63/strided_sliceStridedSlice$sequential_21/lstm_63/Shape:output:02sequential_21/lstm_63/strided_slice/stack:output:04sequential_21/lstm_63/strided_slice/stack_1:output:04sequential_21/lstm_63/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_21/lstm_63/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
"sequential_21/lstm_63/zeros/packedPack,sequential_21/lstm_63/strided_slice:output:0-sequential_21/lstm_63/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_21/lstm_63/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_21/lstm_63/zerosFill+sequential_21/lstm_63/zeros/packed:output:0*sequential_21/lstm_63/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dh
&sequential_21/lstm_63/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_21/lstm_63/zeros_1/packedPack,sequential_21/lstm_63/strided_slice:output:0/sequential_21/lstm_63/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_21/lstm_63/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_21/lstm_63/zeros_1Fill-sequential_21/lstm_63/zeros_1/packed:output:0,sequential_21/lstm_63/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dy
$sequential_21/lstm_63/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
sequential_21/lstm_63/transpose	Transposelstm_63_input-sequential_21/lstm_63/transpose/perm:output:0*
T0*+
_output_shapes
:?????????p
sequential_21/lstm_63/Shape_1Shape#sequential_21/lstm_63/transpose:y:0*
T0*
_output_shapes
:u
+sequential_21/lstm_63/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_21/lstm_63/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_21/lstm_63/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_21/lstm_63/strided_slice_1StridedSlice&sequential_21/lstm_63/Shape_1:output:04sequential_21/lstm_63/strided_slice_1/stack:output:06sequential_21/lstm_63/strided_slice_1/stack_1:output:06sequential_21/lstm_63/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_21/lstm_63/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
#sequential_21/lstm_63/TensorArrayV2TensorListReserve:sequential_21/lstm_63/TensorArrayV2/element_shape:output:0.sequential_21/lstm_63/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Ksequential_21/lstm_63/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
=sequential_21/lstm_63/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_21/lstm_63/transpose:y:0Tsequential_21/lstm_63/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???u
+sequential_21/lstm_63/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_21/lstm_63/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_21/lstm_63/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_21/lstm_63/strided_slice_2StridedSlice#sequential_21/lstm_63/transpose:y:04sequential_21/lstm_63/strided_slice_2/stack:output:06sequential_21/lstm_63/strided_slice_2/stack_1:output:06sequential_21/lstm_63/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
8sequential_21/lstm_63/lstm_cell_15/MatMul/ReadVariableOpReadVariableOpAsequential_21_lstm_63_lstm_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
)sequential_21/lstm_63/lstm_cell_15/MatMulMatMul.sequential_21/lstm_63/strided_slice_2:output:0@sequential_21/lstm_63/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
:sequential_21/lstm_63/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOpCsequential_21_lstm_63_lstm_cell_15_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_21/lstm_63/lstm_cell_15/MatMul_1MatMul$sequential_21/lstm_63/zeros:output:0Bsequential_21/lstm_63/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
&sequential_21/lstm_63/lstm_cell_15/addAddV23sequential_21/lstm_63/lstm_cell_15/MatMul:product:05sequential_21/lstm_63/lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
9sequential_21/lstm_63/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOpBsequential_21_lstm_63_lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
*sequential_21/lstm_63/lstm_cell_15/BiasAddBiasAdd*sequential_21/lstm_63/lstm_cell_15/add:z:0Asequential_21/lstm_63/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????t
2sequential_21/lstm_63/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
(sequential_21/lstm_63/lstm_cell_15/splitSplit;sequential_21/lstm_63/lstm_cell_15/split/split_dim:output:03sequential_21/lstm_63/lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
*sequential_21/lstm_63/lstm_cell_15/SigmoidSigmoid1sequential_21/lstm_63/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:?????????d?
,sequential_21/lstm_63/lstm_cell_15/Sigmoid_1Sigmoid1sequential_21/lstm_63/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:?????????d?
&sequential_21/lstm_63/lstm_cell_15/mulMul0sequential_21/lstm_63/lstm_cell_15/Sigmoid_1:y:0&sequential_21/lstm_63/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
'sequential_21/lstm_63/lstm_cell_15/ReluRelu1sequential_21/lstm_63/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:?????????d?
(sequential_21/lstm_63/lstm_cell_15/mul_1Mul.sequential_21/lstm_63/lstm_cell_15/Sigmoid:y:05sequential_21/lstm_63/lstm_cell_15/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
(sequential_21/lstm_63/lstm_cell_15/add_1AddV2*sequential_21/lstm_63/lstm_cell_15/mul:z:0,sequential_21/lstm_63/lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
,sequential_21/lstm_63/lstm_cell_15/Sigmoid_2Sigmoid1sequential_21/lstm_63/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:?????????d?
)sequential_21/lstm_63/lstm_cell_15/Relu_1Relu,sequential_21/lstm_63/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:?????????d?
(sequential_21/lstm_63/lstm_cell_15/mul_2Mul0sequential_21/lstm_63/lstm_cell_15/Sigmoid_2:y:07sequential_21/lstm_63/lstm_cell_15/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3sequential_21/lstm_63/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
%sequential_21/lstm_63/TensorArrayV2_1TensorListReserve<sequential_21/lstm_63/TensorArrayV2_1/element_shape:output:0.sequential_21/lstm_63/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???\
sequential_21/lstm_63/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_21/lstm_63/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????j
(sequential_21/lstm_63/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_21/lstm_63/whileWhile1sequential_21/lstm_63/while/loop_counter:output:07sequential_21/lstm_63/while/maximum_iterations:output:0#sequential_21/lstm_63/time:output:0.sequential_21/lstm_63/TensorArrayV2_1:handle:0$sequential_21/lstm_63/zeros:output:0&sequential_21/lstm_63/zeros_1:output:0.sequential_21/lstm_63/strided_slice_1:output:0Msequential_21/lstm_63/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_21_lstm_63_lstm_cell_15_matmul_readvariableop_resourceCsequential_21_lstm_63_lstm_cell_15_matmul_1_readvariableop_resourceBsequential_21_lstm_63_lstm_cell_15_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_21_lstm_63_while_body_104075*3
cond+R)
'sequential_21_lstm_63_while_cond_104074*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Fsequential_21/lstm_63/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
8sequential_21/lstm_63/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_21/lstm_63/while:output:3Osequential_21/lstm_63/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0~
+sequential_21/lstm_63/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????w
-sequential_21/lstm_63/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_21/lstm_63/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_21/lstm_63/strided_slice_3StridedSliceAsequential_21/lstm_63/TensorArrayV2Stack/TensorListStack:tensor:04sequential_21/lstm_63/strided_slice_3/stack:output:06sequential_21/lstm_63/strided_slice_3/stack_1:output:06sequential_21/lstm_63/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask{
&sequential_21/lstm_63/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_21/lstm_63/transpose_1	TransposeAsequential_21/lstm_63/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_21/lstm_63/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dq
sequential_21/lstm_63/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_21/lstm_64/ShapeShape%sequential_21/lstm_63/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_21/lstm_64/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_21/lstm_64/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_21/lstm_64/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#sequential_21/lstm_64/strided_sliceStridedSlice$sequential_21/lstm_64/Shape:output:02sequential_21/lstm_64/strided_slice/stack:output:04sequential_21/lstm_64/strided_slice/stack_1:output:04sequential_21/lstm_64/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_21/lstm_64/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
"sequential_21/lstm_64/zeros/packedPack,sequential_21/lstm_64/strided_slice:output:0-sequential_21/lstm_64/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_21/lstm_64/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_21/lstm_64/zerosFill+sequential_21/lstm_64/zeros/packed:output:0*sequential_21/lstm_64/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2h
&sequential_21/lstm_64/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_21/lstm_64/zeros_1/packedPack,sequential_21/lstm_64/strided_slice:output:0/sequential_21/lstm_64/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_21/lstm_64/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_21/lstm_64/zeros_1Fill-sequential_21/lstm_64/zeros_1/packed:output:0,sequential_21/lstm_64/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2y
$sequential_21/lstm_64/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
sequential_21/lstm_64/transpose	Transpose%sequential_21/lstm_63/transpose_1:y:0-sequential_21/lstm_64/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dp
sequential_21/lstm_64/Shape_1Shape#sequential_21/lstm_64/transpose:y:0*
T0*
_output_shapes
:u
+sequential_21/lstm_64/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_21/lstm_64/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_21/lstm_64/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_21/lstm_64/strided_slice_1StridedSlice&sequential_21/lstm_64/Shape_1:output:04sequential_21/lstm_64/strided_slice_1/stack:output:06sequential_21/lstm_64/strided_slice_1/stack_1:output:06sequential_21/lstm_64/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_21/lstm_64/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
#sequential_21/lstm_64/TensorArrayV2TensorListReserve:sequential_21/lstm_64/TensorArrayV2/element_shape:output:0.sequential_21/lstm_64/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Ksequential_21/lstm_64/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
=sequential_21/lstm_64/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_21/lstm_64/transpose:y:0Tsequential_21/lstm_64/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???u
+sequential_21/lstm_64/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_21/lstm_64/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_21/lstm_64/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_21/lstm_64/strided_slice_2StridedSlice#sequential_21/lstm_64/transpose:y:04sequential_21/lstm_64/strided_slice_2/stack:output:06sequential_21/lstm_64/strided_slice_2/stack_1:output:06sequential_21/lstm_64/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
8sequential_21/lstm_64/lstm_cell_16/MatMul/ReadVariableOpReadVariableOpAsequential_21_lstm_64_lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
)sequential_21/lstm_64/lstm_cell_16/MatMulMatMul.sequential_21/lstm_64/strided_slice_2:output:0@sequential_21/lstm_64/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
:sequential_21/lstm_64/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOpCsequential_21_lstm_64_lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
+sequential_21/lstm_64/lstm_cell_16/MatMul_1MatMul$sequential_21/lstm_64/zeros:output:0Bsequential_21/lstm_64/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
&sequential_21/lstm_64/lstm_cell_16/addAddV23sequential_21/lstm_64/lstm_cell_16/MatMul:product:05sequential_21/lstm_64/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
9sequential_21/lstm_64/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOpBsequential_21_lstm_64_lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
*sequential_21/lstm_64/lstm_cell_16/BiasAddBiasAdd*sequential_21/lstm_64/lstm_cell_16/add:z:0Asequential_21/lstm_64/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????t
2sequential_21/lstm_64/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
(sequential_21/lstm_64/lstm_cell_16/splitSplit;sequential_21/lstm_64/lstm_cell_16/split/split_dim:output:03sequential_21/lstm_64/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
*sequential_21/lstm_64/lstm_cell_16/SigmoidSigmoid1sequential_21/lstm_64/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2?
,sequential_21/lstm_64/lstm_cell_16/Sigmoid_1Sigmoid1sequential_21/lstm_64/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2?
&sequential_21/lstm_64/lstm_cell_16/mulMul0sequential_21/lstm_64/lstm_cell_16/Sigmoid_1:y:0&sequential_21/lstm_64/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
'sequential_21/lstm_64/lstm_cell_16/ReluRelu1sequential_21/lstm_64/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2?
(sequential_21/lstm_64/lstm_cell_16/mul_1Mul.sequential_21/lstm_64/lstm_cell_16/Sigmoid:y:05sequential_21/lstm_64/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
(sequential_21/lstm_64/lstm_cell_16/add_1AddV2*sequential_21/lstm_64/lstm_cell_16/mul:z:0,sequential_21/lstm_64/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
,sequential_21/lstm_64/lstm_cell_16/Sigmoid_2Sigmoid1sequential_21/lstm_64/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2?
)sequential_21/lstm_64/lstm_cell_16/Relu_1Relu,sequential_21/lstm_64/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2?
(sequential_21/lstm_64/lstm_cell_16/mul_2Mul0sequential_21/lstm_64/lstm_cell_16/Sigmoid_2:y:07sequential_21/lstm_64/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3sequential_21/lstm_64/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
%sequential_21/lstm_64/TensorArrayV2_1TensorListReserve<sequential_21/lstm_64/TensorArrayV2_1/element_shape:output:0.sequential_21/lstm_64/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???\
sequential_21/lstm_64/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_21/lstm_64/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????j
(sequential_21/lstm_64/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_21/lstm_64/whileWhile1sequential_21/lstm_64/while/loop_counter:output:07sequential_21/lstm_64/while/maximum_iterations:output:0#sequential_21/lstm_64/time:output:0.sequential_21/lstm_64/TensorArrayV2_1:handle:0$sequential_21/lstm_64/zeros:output:0&sequential_21/lstm_64/zeros_1:output:0.sequential_21/lstm_64/strided_slice_1:output:0Msequential_21/lstm_64/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_21_lstm_64_lstm_cell_16_matmul_readvariableop_resourceCsequential_21_lstm_64_lstm_cell_16_matmul_1_readvariableop_resourceBsequential_21_lstm_64_lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_21_lstm_64_while_body_104214*3
cond+R)
'sequential_21_lstm_64_while_cond_104213*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Fsequential_21/lstm_64/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
8sequential_21/lstm_64/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_21/lstm_64/while:output:3Osequential_21/lstm_64/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0~
+sequential_21/lstm_64/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????w
-sequential_21/lstm_64/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_21/lstm_64/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_21/lstm_64/strided_slice_3StridedSliceAsequential_21/lstm_64/TensorArrayV2Stack/TensorListStack:tensor:04sequential_21/lstm_64/strided_slice_3/stack:output:06sequential_21/lstm_64/strided_slice_3/stack_1:output:06sequential_21/lstm_64/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask{
&sequential_21/lstm_64/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_21/lstm_64/transpose_1	TransposeAsequential_21/lstm_64/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_21/lstm_64/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2q
sequential_21/lstm_64/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_21/lstm_65/ShapeShape%sequential_21/lstm_64/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_21/lstm_65/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_21/lstm_65/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_21/lstm_65/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#sequential_21/lstm_65/strided_sliceStridedSlice$sequential_21/lstm_65/Shape:output:02sequential_21/lstm_65/strided_slice/stack:output:04sequential_21/lstm_65/strided_slice/stack_1:output:04sequential_21/lstm_65/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_21/lstm_65/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
"sequential_21/lstm_65/zeros/packedPack,sequential_21/lstm_65/strided_slice:output:0-sequential_21/lstm_65/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_21/lstm_65/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_21/lstm_65/zerosFill+sequential_21/lstm_65/zeros/packed:output:0*sequential_21/lstm_65/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
h
&sequential_21/lstm_65/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_21/lstm_65/zeros_1/packedPack,sequential_21/lstm_65/strided_slice:output:0/sequential_21/lstm_65/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_21/lstm_65/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_21/lstm_65/zeros_1Fill-sequential_21/lstm_65/zeros_1/packed:output:0,sequential_21/lstm_65/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
y
$sequential_21/lstm_65/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
sequential_21/lstm_65/transpose	Transpose%sequential_21/lstm_64/transpose_1:y:0-sequential_21/lstm_65/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2p
sequential_21/lstm_65/Shape_1Shape#sequential_21/lstm_65/transpose:y:0*
T0*
_output_shapes
:u
+sequential_21/lstm_65/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_21/lstm_65/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_21/lstm_65/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_21/lstm_65/strided_slice_1StridedSlice&sequential_21/lstm_65/Shape_1:output:04sequential_21/lstm_65/strided_slice_1/stack:output:06sequential_21/lstm_65/strided_slice_1/stack_1:output:06sequential_21/lstm_65/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_21/lstm_65/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
#sequential_21/lstm_65/TensorArrayV2TensorListReserve:sequential_21/lstm_65/TensorArrayV2/element_shape:output:0.sequential_21/lstm_65/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Ksequential_21/lstm_65/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
=sequential_21/lstm_65/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_21/lstm_65/transpose:y:0Tsequential_21/lstm_65/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???u
+sequential_21/lstm_65/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_21/lstm_65/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_21/lstm_65/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_21/lstm_65/strided_slice_2StridedSlice#sequential_21/lstm_65/transpose:y:04sequential_21/lstm_65/strided_slice_2/stack:output:06sequential_21/lstm_65/strided_slice_2/stack_1:output:06sequential_21/lstm_65/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
8sequential_21/lstm_65/lstm_cell_17/MatMul/ReadVariableOpReadVariableOpAsequential_21_lstm_65_lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
)sequential_21/lstm_65/lstm_cell_17/MatMulMatMul.sequential_21/lstm_65/strided_slice_2:output:0@sequential_21/lstm_65/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
:sequential_21/lstm_65/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOpCsequential_21_lstm_65_lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
+sequential_21/lstm_65/lstm_cell_17/MatMul_1MatMul$sequential_21/lstm_65/zeros:output:0Bsequential_21/lstm_65/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
&sequential_21/lstm_65/lstm_cell_17/addAddV23sequential_21/lstm_65/lstm_cell_17/MatMul:product:05sequential_21/lstm_65/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
9sequential_21/lstm_65/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOpBsequential_21_lstm_65_lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
*sequential_21/lstm_65/lstm_cell_17/BiasAddBiasAdd*sequential_21/lstm_65/lstm_cell_17/add:z:0Asequential_21/lstm_65/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(t
2sequential_21/lstm_65/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
(sequential_21/lstm_65/lstm_cell_17/splitSplit;sequential_21/lstm_65/lstm_cell_17/split/split_dim:output:03sequential_21/lstm_65/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
*sequential_21/lstm_65/lstm_cell_17/SigmoidSigmoid1sequential_21/lstm_65/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????
?
,sequential_21/lstm_65/lstm_cell_17/Sigmoid_1Sigmoid1sequential_21/lstm_65/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????
?
&sequential_21/lstm_65/lstm_cell_17/mulMul0sequential_21/lstm_65/lstm_cell_17/Sigmoid_1:y:0&sequential_21/lstm_65/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
'sequential_21/lstm_65/lstm_cell_17/ReluRelu1sequential_21/lstm_65/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????
?
(sequential_21/lstm_65/lstm_cell_17/mul_1Mul.sequential_21/lstm_65/lstm_cell_17/Sigmoid:y:05sequential_21/lstm_65/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
(sequential_21/lstm_65/lstm_cell_17/add_1AddV2*sequential_21/lstm_65/lstm_cell_17/mul:z:0,sequential_21/lstm_65/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
,sequential_21/lstm_65/lstm_cell_17/Sigmoid_2Sigmoid1sequential_21/lstm_65/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????
?
)sequential_21/lstm_65/lstm_cell_17/Relu_1Relu,sequential_21/lstm_65/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????
?
(sequential_21/lstm_65/lstm_cell_17/mul_2Mul0sequential_21/lstm_65/lstm_cell_17/Sigmoid_2:y:07sequential_21/lstm_65/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3sequential_21/lstm_65/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
%sequential_21/lstm_65/TensorArrayV2_1TensorListReserve<sequential_21/lstm_65/TensorArrayV2_1/element_shape:output:0.sequential_21/lstm_65/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???\
sequential_21/lstm_65/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_21/lstm_65/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????j
(sequential_21/lstm_65/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_21/lstm_65/whileWhile1sequential_21/lstm_65/while/loop_counter:output:07sequential_21/lstm_65/while/maximum_iterations:output:0#sequential_21/lstm_65/time:output:0.sequential_21/lstm_65/TensorArrayV2_1:handle:0$sequential_21/lstm_65/zeros:output:0&sequential_21/lstm_65/zeros_1:output:0.sequential_21/lstm_65/strided_slice_1:output:0Msequential_21/lstm_65/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_21_lstm_65_lstm_cell_17_matmul_readvariableop_resourceCsequential_21_lstm_65_lstm_cell_17_matmul_1_readvariableop_resourceBsequential_21_lstm_65_lstm_cell_17_biasadd_readvariableop_resource*
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
_stateful_parallelism( *3
body+R)
'sequential_21_lstm_65_while_body_104353*3
cond+R)
'sequential_21_lstm_65_while_cond_104352*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Fsequential_21/lstm_65/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
8sequential_21/lstm_65/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_21/lstm_65/while:output:3Osequential_21/lstm_65/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0~
+sequential_21/lstm_65/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????w
-sequential_21/lstm_65/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_21/lstm_65/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_21/lstm_65/strided_slice_3StridedSliceAsequential_21/lstm_65/TensorArrayV2Stack/TensorListStack:tensor:04sequential_21/lstm_65/strided_slice_3/stack:output:06sequential_21/lstm_65/strided_slice_3/stack_1:output:06sequential_21/lstm_65/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask{
&sequential_21/lstm_65/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_21/lstm_65/transpose_1	TransposeAsequential_21/lstm_65/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_21/lstm_65/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
q
sequential_21/lstm_65/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_21/dense_21/MatMul/ReadVariableOpReadVariableOp5sequential_21_dense_21_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_21/dense_21/MatMulMatMul.sequential_21/lstm_65/strided_slice_3:output:04sequential_21/dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_21/dense_21/BiasAdd/ReadVariableOpReadVariableOp6sequential_21_dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_21/dense_21/BiasAddBiasAdd'sequential_21/dense_21/MatMul:product:05sequential_21/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_21/dense_21/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_21/dense_21/BiasAdd/ReadVariableOp-^sequential_21/dense_21/MatMul/ReadVariableOp:^sequential_21/lstm_63/lstm_cell_15/BiasAdd/ReadVariableOp9^sequential_21/lstm_63/lstm_cell_15/MatMul/ReadVariableOp;^sequential_21/lstm_63/lstm_cell_15/MatMul_1/ReadVariableOp^sequential_21/lstm_63/while:^sequential_21/lstm_64/lstm_cell_16/BiasAdd/ReadVariableOp9^sequential_21/lstm_64/lstm_cell_16/MatMul/ReadVariableOp;^sequential_21/lstm_64/lstm_cell_16/MatMul_1/ReadVariableOp^sequential_21/lstm_64/while:^sequential_21/lstm_65/lstm_cell_17/BiasAdd/ReadVariableOp9^sequential_21/lstm_65/lstm_cell_17/MatMul/ReadVariableOp;^sequential_21/lstm_65/lstm_cell_17/MatMul_1/ReadVariableOp^sequential_21/lstm_65/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_21/dense_21/BiasAdd/ReadVariableOp-sequential_21/dense_21/BiasAdd/ReadVariableOp2\
,sequential_21/dense_21/MatMul/ReadVariableOp,sequential_21/dense_21/MatMul/ReadVariableOp2v
9sequential_21/lstm_63/lstm_cell_15/BiasAdd/ReadVariableOp9sequential_21/lstm_63/lstm_cell_15/BiasAdd/ReadVariableOp2t
8sequential_21/lstm_63/lstm_cell_15/MatMul/ReadVariableOp8sequential_21/lstm_63/lstm_cell_15/MatMul/ReadVariableOp2x
:sequential_21/lstm_63/lstm_cell_15/MatMul_1/ReadVariableOp:sequential_21/lstm_63/lstm_cell_15/MatMul_1/ReadVariableOp2:
sequential_21/lstm_63/whilesequential_21/lstm_63/while2v
9sequential_21/lstm_64/lstm_cell_16/BiasAdd/ReadVariableOp9sequential_21/lstm_64/lstm_cell_16/BiasAdd/ReadVariableOp2t
8sequential_21/lstm_64/lstm_cell_16/MatMul/ReadVariableOp8sequential_21/lstm_64/lstm_cell_16/MatMul/ReadVariableOp2x
:sequential_21/lstm_64/lstm_cell_16/MatMul_1/ReadVariableOp:sequential_21/lstm_64/lstm_cell_16/MatMul_1/ReadVariableOp2:
sequential_21/lstm_64/whilesequential_21/lstm_64/while2v
9sequential_21/lstm_65/lstm_cell_17/BiasAdd/ReadVariableOp9sequential_21/lstm_65/lstm_cell_17/BiasAdd/ReadVariableOp2t
8sequential_21/lstm_65/lstm_cell_17/MatMul/ReadVariableOp8sequential_21/lstm_65/lstm_cell_17/MatMul/ReadVariableOp2x
:sequential_21/lstm_65/lstm_cell_17/MatMul_1/ReadVariableOp:sequential_21/lstm_65/lstm_cell_17/MatMul_1/ReadVariableOp2:
sequential_21/lstm_65/whilesequential_21/lstm_65/while:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_63_input
?8
?
while_body_108000
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_15_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_15_matmul_1_readvariableop_resource_0:	d?C
4while_lstm_cell_15_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_15_matmul_readvariableop_resource:	?F
3while_lstm_cell_15_matmul_1_readvariableop_resource:	d?A
2while_lstm_cell_15_biasadd_readvariableop_resource:	???)while/lstm_cell_15/BiasAdd/ReadVariableOp?(while/lstm_cell_15/MatMul/ReadVariableOp?*while/lstm_cell_15/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
(while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_15/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_15/addAddV2#while/lstm_cell_15/MatMul:product:0%while/lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_15/BiasAddBiasAddwhile/lstm_cell_15/add:z:01while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_15/splitSplit+while/lstm_cell_15/split/split_dim:output:0#while/lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitz
while/lstm_cell_15/SigmoidSigmoid!while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_15/Sigmoid_1Sigmoid!while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_15/mulMul while/lstm_cell_15/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dt
while/lstm_cell_15/ReluRelu!while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_15/mul_1Mulwhile/lstm_cell_15/Sigmoid:y:0%while/lstm_cell_15/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_15/add_1AddV2while/lstm_cell_15/mul:z:0while/lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_15/Sigmoid_2Sigmoid!while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:?????????dq
while/lstm_cell_15/Relu_1Reluwhile/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_15/mul_2Mul while/lstm_cell_15/Sigmoid_2:y:0'while/lstm_cell_15/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_15/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_15/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dy
while/Identity_5Identitywhile/lstm_cell_15/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_15_biasadd_readvariableop_resource4while_lstm_cell_15_biasadd_readvariableop_resource_0"l
3while_lstm_cell_15_matmul_1_readvariableop_resource5while_lstm_cell_15_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_15_matmul_readvariableop_resource3while_lstm_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2V
)while/lstm_cell_15/BiasAdd/ReadVariableOp)while/lstm_cell_15/BiasAdd/ReadVariableOp2T
(while/lstm_cell_15/MatMul/ReadVariableOp(while/lstm_cell_15/MatMul/ReadVariableOp2X
*while/lstm_cell_15/MatMul_1/ReadVariableOp*while/lstm_cell_15/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_109088
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_109088___redundant_placeholder04
0while_while_cond_109088___redundant_placeholder14
0while_while_cond_109088___redundant_placeholder24
0while_while_cond_109088___redundant_placeholder3
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
while_body_105708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_16_matmul_readvariableop_resource_0:	d?H
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:	2?C
4while_lstm_cell_16_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_16_matmul_readvariableop_resource:	d?F
3while_lstm_cell_16_matmul_1_readvariableop_resource:	2?A
2while_lstm_cell_16_biasadd_readvariableop_resource:	???)while/lstm_cell_16/BiasAdd/ReadVariableOp?(while/lstm_cell_16/MatMul/ReadVariableOp?*while/lstm_cell_16/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitz
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2|
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2t
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2|
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2q
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2y
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?R
?
'sequential_21_lstm_63_while_body_104075H
Dsequential_21_lstm_63_while_sequential_21_lstm_63_while_loop_counterN
Jsequential_21_lstm_63_while_sequential_21_lstm_63_while_maximum_iterations+
'sequential_21_lstm_63_while_placeholder-
)sequential_21_lstm_63_while_placeholder_1-
)sequential_21_lstm_63_while_placeholder_2-
)sequential_21_lstm_63_while_placeholder_3G
Csequential_21_lstm_63_while_sequential_21_lstm_63_strided_slice_1_0?
sequential_21_lstm_63_while_tensorarrayv2read_tensorlistgetitem_sequential_21_lstm_63_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_21_lstm_63_while_lstm_cell_15_matmul_readvariableop_resource_0:	?^
Ksequential_21_lstm_63_while_lstm_cell_15_matmul_1_readvariableop_resource_0:	d?Y
Jsequential_21_lstm_63_while_lstm_cell_15_biasadd_readvariableop_resource_0:	?(
$sequential_21_lstm_63_while_identity*
&sequential_21_lstm_63_while_identity_1*
&sequential_21_lstm_63_while_identity_2*
&sequential_21_lstm_63_while_identity_3*
&sequential_21_lstm_63_while_identity_4*
&sequential_21_lstm_63_while_identity_5E
Asequential_21_lstm_63_while_sequential_21_lstm_63_strided_slice_1?
}sequential_21_lstm_63_while_tensorarrayv2read_tensorlistgetitem_sequential_21_lstm_63_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_21_lstm_63_while_lstm_cell_15_matmul_readvariableop_resource:	?\
Isequential_21_lstm_63_while_lstm_cell_15_matmul_1_readvariableop_resource:	d?W
Hsequential_21_lstm_63_while_lstm_cell_15_biasadd_readvariableop_resource:	????sequential_21/lstm_63/while/lstm_cell_15/BiasAdd/ReadVariableOp?>sequential_21/lstm_63/while/lstm_cell_15/MatMul/ReadVariableOp?@sequential_21/lstm_63/while/lstm_cell_15/MatMul_1/ReadVariableOp?
Msequential_21/lstm_63/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_21/lstm_63/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_21_lstm_63_while_tensorarrayv2read_tensorlistgetitem_sequential_21_lstm_63_tensorarrayunstack_tensorlistfromtensor_0'sequential_21_lstm_63_while_placeholderVsequential_21/lstm_63/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
>sequential_21/lstm_63/while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOpIsequential_21_lstm_63_while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
/sequential_21/lstm_63/while/lstm_cell_15/MatMulMatMulFsequential_21/lstm_63/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_21/lstm_63/while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
@sequential_21/lstm_63/while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOpKsequential_21_lstm_63_while_lstm_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_21/lstm_63/while/lstm_cell_15/MatMul_1MatMul)sequential_21_lstm_63_while_placeholder_2Hsequential_21/lstm_63/while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,sequential_21/lstm_63/while/lstm_cell_15/addAddV29sequential_21/lstm_63/while/lstm_cell_15/MatMul:product:0;sequential_21/lstm_63/while/lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
?sequential_21/lstm_63/while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOpJsequential_21_lstm_63_while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
0sequential_21/lstm_63/while/lstm_cell_15/BiasAddBiasAdd0sequential_21/lstm_63/while/lstm_cell_15/add:z:0Gsequential_21/lstm_63/while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
8sequential_21/lstm_63/while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
.sequential_21/lstm_63/while/lstm_cell_15/splitSplitAsequential_21/lstm_63/while/lstm_cell_15/split/split_dim:output:09sequential_21/lstm_63/while/lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
0sequential_21/lstm_63/while/lstm_cell_15/SigmoidSigmoid7sequential_21/lstm_63/while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:?????????d?
2sequential_21/lstm_63/while/lstm_cell_15/Sigmoid_1Sigmoid7sequential_21/lstm_63/while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:?????????d?
,sequential_21/lstm_63/while/lstm_cell_15/mulMul6sequential_21/lstm_63/while/lstm_cell_15/Sigmoid_1:y:0)sequential_21_lstm_63_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
-sequential_21/lstm_63/while/lstm_cell_15/ReluRelu7sequential_21/lstm_63/while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:?????????d?
.sequential_21/lstm_63/while/lstm_cell_15/mul_1Mul4sequential_21/lstm_63/while/lstm_cell_15/Sigmoid:y:0;sequential_21/lstm_63/while/lstm_cell_15/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
.sequential_21/lstm_63/while/lstm_cell_15/add_1AddV20sequential_21/lstm_63/while/lstm_cell_15/mul:z:02sequential_21/lstm_63/while/lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
2sequential_21/lstm_63/while/lstm_cell_15/Sigmoid_2Sigmoid7sequential_21/lstm_63/while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:?????????d?
/sequential_21/lstm_63/while/lstm_cell_15/Relu_1Relu2sequential_21/lstm_63/while/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_21/lstm_63/while/lstm_cell_15/mul_2Mul6sequential_21/lstm_63/while/lstm_cell_15/Sigmoid_2:y:0=sequential_21/lstm_63/while/lstm_cell_15/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
@sequential_21/lstm_63/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_21_lstm_63_while_placeholder_1'sequential_21_lstm_63_while_placeholder2sequential_21/lstm_63/while/lstm_cell_15/mul_2:z:0*
_output_shapes
: *
element_dtype0:???c
!sequential_21/lstm_63/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
sequential_21/lstm_63/while/addAddV2'sequential_21_lstm_63_while_placeholder*sequential_21/lstm_63/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_21/lstm_63/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_21/lstm_63/while/add_1AddV2Dsequential_21_lstm_63_while_sequential_21_lstm_63_while_loop_counter,sequential_21/lstm_63/while/add_1/y:output:0*
T0*
_output_shapes
: ?
$sequential_21/lstm_63/while/IdentityIdentity%sequential_21/lstm_63/while/add_1:z:0!^sequential_21/lstm_63/while/NoOp*
T0*
_output_shapes
: ?
&sequential_21/lstm_63/while/Identity_1IdentityJsequential_21_lstm_63_while_sequential_21_lstm_63_while_maximum_iterations!^sequential_21/lstm_63/while/NoOp*
T0*
_output_shapes
: ?
&sequential_21/lstm_63/while/Identity_2Identity#sequential_21/lstm_63/while/add:z:0!^sequential_21/lstm_63/while/NoOp*
T0*
_output_shapes
: ?
&sequential_21/lstm_63/while/Identity_3IdentityPsequential_21/lstm_63/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_21/lstm_63/while/NoOp*
T0*
_output_shapes
: ?
&sequential_21/lstm_63/while/Identity_4Identity2sequential_21/lstm_63/while/lstm_cell_15/mul_2:z:0!^sequential_21/lstm_63/while/NoOp*
T0*'
_output_shapes
:?????????d?
&sequential_21/lstm_63/while/Identity_5Identity2sequential_21/lstm_63/while/lstm_cell_15/add_1:z:0!^sequential_21/lstm_63/while/NoOp*
T0*'
_output_shapes
:?????????d?
 sequential_21/lstm_63/while/NoOpNoOp@^sequential_21/lstm_63/while/lstm_cell_15/BiasAdd/ReadVariableOp?^sequential_21/lstm_63/while/lstm_cell_15/MatMul/ReadVariableOpA^sequential_21/lstm_63/while/lstm_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_21_lstm_63_while_identity-sequential_21/lstm_63/while/Identity:output:0"Y
&sequential_21_lstm_63_while_identity_1/sequential_21/lstm_63/while/Identity_1:output:0"Y
&sequential_21_lstm_63_while_identity_2/sequential_21/lstm_63/while/Identity_2:output:0"Y
&sequential_21_lstm_63_while_identity_3/sequential_21/lstm_63/while/Identity_3:output:0"Y
&sequential_21_lstm_63_while_identity_4/sequential_21/lstm_63/while/Identity_4:output:0"Y
&sequential_21_lstm_63_while_identity_5/sequential_21/lstm_63/while/Identity_5:output:0"?
Hsequential_21_lstm_63_while_lstm_cell_15_biasadd_readvariableop_resourceJsequential_21_lstm_63_while_lstm_cell_15_biasadd_readvariableop_resource_0"?
Isequential_21_lstm_63_while_lstm_cell_15_matmul_1_readvariableop_resourceKsequential_21_lstm_63_while_lstm_cell_15_matmul_1_readvariableop_resource_0"?
Gsequential_21_lstm_63_while_lstm_cell_15_matmul_readvariableop_resourceIsequential_21_lstm_63_while_lstm_cell_15_matmul_readvariableop_resource_0"?
Asequential_21_lstm_63_while_sequential_21_lstm_63_strided_slice_1Csequential_21_lstm_63_while_sequential_21_lstm_63_strided_slice_1_0"?
}sequential_21_lstm_63_while_tensorarrayv2read_tensorlistgetitem_sequential_21_lstm_63_tensorarrayunstack_tensorlistfromtensorsequential_21_lstm_63_while_tensorarrayv2read_tensorlistgetitem_sequential_21_lstm_63_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
?sequential_21/lstm_63/while/lstm_cell_15/BiasAdd/ReadVariableOp?sequential_21/lstm_63/while/lstm_cell_15/BiasAdd/ReadVariableOp2?
>sequential_21/lstm_63/while/lstm_cell_15/MatMul/ReadVariableOp>sequential_21/lstm_63/while/lstm_cell_15/MatMul/ReadVariableOp2?
@sequential_21/lstm_63/while/lstm_cell_15/MatMul_1/ReadVariableOp@sequential_21/lstm_63/while/lstm_cell_15/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_108945
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_108945___redundant_placeholder04
0while_while_cond_108945___redundant_placeholder14
0while_while_cond_108945___redundant_placeholder24
0while_while_cond_108945___redundant_placeholder3
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
?A
?

lstm_65_while_body_107521,
(lstm_65_while_lstm_65_while_loop_counter2
.lstm_65_while_lstm_65_while_maximum_iterations
lstm_65_while_placeholder
lstm_65_while_placeholder_1
lstm_65_while_placeholder_2
lstm_65_while_placeholder_3+
'lstm_65_while_lstm_65_strided_slice_1_0g
clstm_65_while_tensorarrayv2read_tensorlistgetitem_lstm_65_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_65_while_lstm_cell_17_matmul_readvariableop_resource_0:2(O
=lstm_65_while_lstm_cell_17_matmul_1_readvariableop_resource_0:
(J
<lstm_65_while_lstm_cell_17_biasadd_readvariableop_resource_0:(
lstm_65_while_identity
lstm_65_while_identity_1
lstm_65_while_identity_2
lstm_65_while_identity_3
lstm_65_while_identity_4
lstm_65_while_identity_5)
%lstm_65_while_lstm_65_strided_slice_1e
alstm_65_while_tensorarrayv2read_tensorlistgetitem_lstm_65_tensorarrayunstack_tensorlistfromtensorK
9lstm_65_while_lstm_cell_17_matmul_readvariableop_resource:2(M
;lstm_65_while_lstm_cell_17_matmul_1_readvariableop_resource:
(H
:lstm_65_while_lstm_cell_17_biasadd_readvariableop_resource:(??1lstm_65/while/lstm_cell_17/BiasAdd/ReadVariableOp?0lstm_65/while/lstm_cell_17/MatMul/ReadVariableOp?2lstm_65/while/lstm_cell_17/MatMul_1/ReadVariableOp?
?lstm_65/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
1lstm_65/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_65_while_tensorarrayv2read_tensorlistgetitem_lstm_65_tensorarrayunstack_tensorlistfromtensor_0lstm_65_while_placeholderHlstm_65/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
0lstm_65/while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp;lstm_65_while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
!lstm_65/while/lstm_cell_17/MatMulMatMul8lstm_65/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_65/while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
2lstm_65/while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp=lstm_65_while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
#lstm_65/while/lstm_cell_17/MatMul_1MatMullstm_65_while_placeholder_2:lstm_65/while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_65/while/lstm_cell_17/addAddV2+lstm_65/while/lstm_cell_17/MatMul:product:0-lstm_65/while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
1lstm_65/while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp<lstm_65_while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
"lstm_65/while/lstm_cell_17/BiasAddBiasAdd"lstm_65/while/lstm_cell_17/add:z:09lstm_65/while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(l
*lstm_65/while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
 lstm_65/while/lstm_cell_17/splitSplit3lstm_65/while/lstm_cell_17/split/split_dim:output:0+lstm_65/while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
"lstm_65/while/lstm_cell_17/SigmoidSigmoid)lstm_65/while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????
?
$lstm_65/while/lstm_cell_17/Sigmoid_1Sigmoid)lstm_65/while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_65/while/lstm_cell_17/mulMul(lstm_65/while/lstm_cell_17/Sigmoid_1:y:0lstm_65_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
lstm_65/while/lstm_cell_17/ReluRelu)lstm_65/while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????
?
 lstm_65/while/lstm_cell_17/mul_1Mul&lstm_65/while/lstm_cell_17/Sigmoid:y:0-lstm_65/while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
 lstm_65/while/lstm_cell_17/add_1AddV2"lstm_65/while/lstm_cell_17/mul:z:0$lstm_65/while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
$lstm_65/while/lstm_cell_17/Sigmoid_2Sigmoid)lstm_65/while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????
?
!lstm_65/while/lstm_cell_17/Relu_1Relu$lstm_65/while/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_65/while/lstm_cell_17/mul_2Mul(lstm_65/while/lstm_cell_17/Sigmoid_2:y:0/lstm_65/while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
2lstm_65/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_65_while_placeholder_1lstm_65_while_placeholder$lstm_65/while/lstm_cell_17/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_65/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_65/while/addAddV2lstm_65_while_placeholderlstm_65/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_65/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_65/while/add_1AddV2(lstm_65_while_lstm_65_while_loop_counterlstm_65/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_65/while/IdentityIdentitylstm_65/while/add_1:z:0^lstm_65/while/NoOp*
T0*
_output_shapes
: ?
lstm_65/while/Identity_1Identity.lstm_65_while_lstm_65_while_maximum_iterations^lstm_65/while/NoOp*
T0*
_output_shapes
: q
lstm_65/while/Identity_2Identitylstm_65/while/add:z:0^lstm_65/while/NoOp*
T0*
_output_shapes
: ?
lstm_65/while/Identity_3IdentityBlstm_65/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_65/while/NoOp*
T0*
_output_shapes
: ?
lstm_65/while/Identity_4Identity$lstm_65/while/lstm_cell_17/mul_2:z:0^lstm_65/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_65/while/Identity_5Identity$lstm_65/while/lstm_cell_17/add_1:z:0^lstm_65/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_65/while/NoOpNoOp2^lstm_65/while/lstm_cell_17/BiasAdd/ReadVariableOp1^lstm_65/while/lstm_cell_17/MatMul/ReadVariableOp3^lstm_65/while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_65_while_identitylstm_65/while/Identity:output:0"=
lstm_65_while_identity_1!lstm_65/while/Identity_1:output:0"=
lstm_65_while_identity_2!lstm_65/while/Identity_2:output:0"=
lstm_65_while_identity_3!lstm_65/while/Identity_3:output:0"=
lstm_65_while_identity_4!lstm_65/while/Identity_4:output:0"=
lstm_65_while_identity_5!lstm_65/while/Identity_5:output:0"P
%lstm_65_while_lstm_65_strided_slice_1'lstm_65_while_lstm_65_strided_slice_1_0"z
:lstm_65_while_lstm_cell_17_biasadd_readvariableop_resource<lstm_65_while_lstm_cell_17_biasadd_readvariableop_resource_0"|
;lstm_65_while_lstm_cell_17_matmul_1_readvariableop_resource=lstm_65_while_lstm_cell_17_matmul_1_readvariableop_resource_0"x
9lstm_65_while_lstm_cell_17_matmul_readvariableop_resource;lstm_65_while_lstm_cell_17_matmul_readvariableop_resource_0"?
alstm_65_while_tensorarrayv2read_tensorlistgetitem_lstm_65_tensorarrayunstack_tensorlistfromtensorclstm_65_while_tensorarrayv2read_tensorlistgetitem_lstm_65_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2f
1lstm_65/while/lstm_cell_17/BiasAdd/ReadVariableOp1lstm_65/while/lstm_cell_17/BiasAdd/ReadVariableOp2d
0lstm_65/while/lstm_cell_17/MatMul/ReadVariableOp0lstm_65/while/lstm_cell_17/MatMul/ReadVariableOp2h
2lstm_65/while/lstm_cell_17/MatMul_1/ReadVariableOp2lstm_65/while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?J
?
C__inference_lstm_64_layer_call_and_return_conditional_losses_108700

inputs>
+lstm_cell_16_matmul_readvariableop_resource:	d?@
-lstm_cell_16_matmul_1_readvariableop_resource:	2?;
,lstm_cell_16_biasadd_readvariableop_resource:	?
identity??#lstm_cell_16/BiasAdd/ReadVariableOp?"lstm_cell_16/MatMul/ReadVariableOp?$lstm_cell_16/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitn
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2p
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2w
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2h
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2{
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2p
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2e
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
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
bodyR
while_body_108616*
condR
while_cond_108615*K
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
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_108473
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_16_matmul_readvariableop_resource_0:	d?H
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:	2?C
4while_lstm_cell_16_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_16_matmul_readvariableop_resource:	d?F
3while_lstm_cell_16_matmul_1_readvariableop_resource:	2?A
2while_lstm_cell_16_biasadd_readvariableop_resource:	???)while/lstm_cell_16/BiasAdd/ReadVariableOp?(while/lstm_cell_16/MatMul/ReadVariableOp?*while/lstm_cell_16/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitz
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2|
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2t
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2|
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2q
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2y
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
-__inference_lstm_cell_16_layer_call_fn_109593

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
GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_104860o
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
C__inference_lstm_63_layer_call_and_return_conditional_losses_108084

inputs>
+lstm_cell_15_matmul_readvariableop_resource:	?@
-lstm_cell_15_matmul_1_readvariableop_resource:	d?;
,lstm_cell_15_biasadd_readvariableop_resource:	?
identity??#lstm_cell_15/BiasAdd/ReadVariableOp?"lstm_cell_15/MatMul/ReadVariableOp?$lstm_cell_15/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_15/MatMul/ReadVariableOpReadVariableOp+lstm_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_15/MatMulMatMulstrided_slice_2:output:0*lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_15_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_15/MatMul_1MatMulzeros:output:0,lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_15/addAddV2lstm_cell_15/MatMul:product:0lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_15/BiasAddBiasAddlstm_cell_15/add:z:0+lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_15/splitSplit%lstm_cell_15/split/split_dim:output:0lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitn
lstm_cell_15/SigmoidSigmoidlstm_cell_15/split:output:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_15/Sigmoid_1Sigmoidlstm_cell_15/split:output:1*
T0*'
_output_shapes
:?????????dw
lstm_cell_15/mulMullstm_cell_15/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dh
lstm_cell_15/ReluRelulstm_cell_15/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_15/mul_1Mullstm_cell_15/Sigmoid:y:0lstm_cell_15/Relu:activations:0*
T0*'
_output_shapes
:?????????d{
lstm_cell_15/add_1AddV2lstm_cell_15/mul:z:0lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_15/Sigmoid_2Sigmoidlstm_cell_15/split:output:3*
T0*'
_output_shapes
:?????????de
lstm_cell_15/Relu_1Relulstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_15/mul_2Mullstm_cell_15/Sigmoid_2:y:0!lstm_cell_15/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_15_matmul_readvariableop_resource-lstm_cell_15_matmul_1_readvariableop_resource,lstm_cell_15_biasadd_readvariableop_resource*
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
bodyR
while_body_108000*
condR
while_cond_107999*K
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
NoOpNoOp$^lstm_cell_15/BiasAdd/ReadVariableOp#^lstm_cell_15/MatMul/ReadVariableOp%^lstm_cell_15/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_15/BiasAdd/ReadVariableOp#lstm_cell_15/BiasAdd/ReadVariableOp2H
"lstm_cell_15/MatMul/ReadVariableOp"lstm_cell_15/MatMul/ReadVariableOp2L
$lstm_cell_15/MatMul_1/ReadVariableOp$lstm_cell_15/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_109674

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
??
?

I__inference_sequential_21_layer_call_and_return_conditional_losses_107184

inputsF
3lstm_63_lstm_cell_15_matmul_readvariableop_resource:	?H
5lstm_63_lstm_cell_15_matmul_1_readvariableop_resource:	d?C
4lstm_63_lstm_cell_15_biasadd_readvariableop_resource:	?F
3lstm_64_lstm_cell_16_matmul_readvariableop_resource:	d?H
5lstm_64_lstm_cell_16_matmul_1_readvariableop_resource:	2?C
4lstm_64_lstm_cell_16_biasadd_readvariableop_resource:	?E
3lstm_65_lstm_cell_17_matmul_readvariableop_resource:2(G
5lstm_65_lstm_cell_17_matmul_1_readvariableop_resource:
(B
4lstm_65_lstm_cell_17_biasadd_readvariableop_resource:(9
'dense_21_matmul_readvariableop_resource:
6
(dense_21_biasadd_readvariableop_resource:
identity??dense_21/BiasAdd/ReadVariableOp?dense_21/MatMul/ReadVariableOp?+lstm_63/lstm_cell_15/BiasAdd/ReadVariableOp?*lstm_63/lstm_cell_15/MatMul/ReadVariableOp?,lstm_63/lstm_cell_15/MatMul_1/ReadVariableOp?lstm_63/while?+lstm_64/lstm_cell_16/BiasAdd/ReadVariableOp?*lstm_64/lstm_cell_16/MatMul/ReadVariableOp?,lstm_64/lstm_cell_16/MatMul_1/ReadVariableOp?lstm_64/while?+lstm_65/lstm_cell_17/BiasAdd/ReadVariableOp?*lstm_65/lstm_cell_17/MatMul/ReadVariableOp?,lstm_65/lstm_cell_17/MatMul_1/ReadVariableOp?lstm_65/whileC
lstm_63/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_63/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_63/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_63/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_63/strided_sliceStridedSlicelstm_63/Shape:output:0$lstm_63/strided_slice/stack:output:0&lstm_63/strided_slice/stack_1:output:0&lstm_63/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_63/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_63/zeros/packedPacklstm_63/strided_slice:output:0lstm_63/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_63/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_63/zerosFilllstm_63/zeros/packed:output:0lstm_63/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dZ
lstm_63/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_63/zeros_1/packedPacklstm_63/strided_slice:output:0!lstm_63/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_63/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_63/zeros_1Filllstm_63/zeros_1/packed:output:0lstm_63/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dk
lstm_63/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_63/transpose	Transposeinputslstm_63/transpose/perm:output:0*
T0*+
_output_shapes
:?????????T
lstm_63/Shape_1Shapelstm_63/transpose:y:0*
T0*
_output_shapes
:g
lstm_63/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_63/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_63/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_63/strided_slice_1StridedSlicelstm_63/Shape_1:output:0&lstm_63/strided_slice_1/stack:output:0(lstm_63/strided_slice_1/stack_1:output:0(lstm_63/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_63/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_63/TensorArrayV2TensorListReserve,lstm_63/TensorArrayV2/element_shape:output:0 lstm_63/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_63/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
/lstm_63/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_63/transpose:y:0Flstm_63/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_63/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_63/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_63/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_63/strided_slice_2StridedSlicelstm_63/transpose:y:0&lstm_63/strided_slice_2/stack:output:0(lstm_63/strided_slice_2/stack_1:output:0(lstm_63/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
*lstm_63/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp3lstm_63_lstm_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_63/lstm_cell_15/MatMulMatMul lstm_63/strided_slice_2:output:02lstm_63/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,lstm_63/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp5lstm_63_lstm_cell_15_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_63/lstm_cell_15/MatMul_1MatMullstm_63/zeros:output:04lstm_63/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_63/lstm_cell_15/addAddV2%lstm_63/lstm_cell_15/MatMul:product:0'lstm_63/lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
+lstm_63/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp4lstm_63_lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_63/lstm_cell_15/BiasAddBiasAddlstm_63/lstm_cell_15/add:z:03lstm_63/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????f
$lstm_63/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_63/lstm_cell_15/splitSplit-lstm_63/lstm_cell_15/split/split_dim:output:0%lstm_63/lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split~
lstm_63/lstm_cell_15/SigmoidSigmoid#lstm_63/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:?????????d?
lstm_63/lstm_cell_15/Sigmoid_1Sigmoid#lstm_63/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_63/lstm_cell_15/mulMul"lstm_63/lstm_cell_15/Sigmoid_1:y:0lstm_63/zeros_1:output:0*
T0*'
_output_shapes
:?????????dx
lstm_63/lstm_cell_15/ReluRelu#lstm_63/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_63/lstm_cell_15/mul_1Mul lstm_63/lstm_cell_15/Sigmoid:y:0'lstm_63/lstm_cell_15/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_63/lstm_cell_15/add_1AddV2lstm_63/lstm_cell_15/mul:z:0lstm_63/lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_63/lstm_cell_15/Sigmoid_2Sigmoid#lstm_63/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:?????????du
lstm_63/lstm_cell_15/Relu_1Relulstm_63/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_63/lstm_cell_15/mul_2Mul"lstm_63/lstm_cell_15/Sigmoid_2:y:0)lstm_63/lstm_cell_15/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dv
%lstm_63/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_63/TensorArrayV2_1TensorListReserve.lstm_63/TensorArrayV2_1/element_shape:output:0 lstm_63/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_63/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_63/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_63/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_63/whileWhile#lstm_63/while/loop_counter:output:0)lstm_63/while/maximum_iterations:output:0lstm_63/time:output:0 lstm_63/TensorArrayV2_1:handle:0lstm_63/zeros:output:0lstm_63/zeros_1:output:0 lstm_63/strided_slice_1:output:0?lstm_63/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_63_lstm_cell_15_matmul_readvariableop_resource5lstm_63_lstm_cell_15_matmul_1_readvariableop_resource4lstm_63_lstm_cell_15_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_63_while_body_106816*%
condR
lstm_63_while_cond_106815*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
8lstm_63/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
*lstm_63/TensorArrayV2Stack/TensorListStackTensorListStacklstm_63/while:output:3Alstm_63/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0p
lstm_63/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_63/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_63/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_63/strided_slice_3StridedSlice3lstm_63/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_63/strided_slice_3/stack:output:0(lstm_63/strided_slice_3/stack_1:output:0(lstm_63/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskm
lstm_63/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_63/transpose_1	Transpose3lstm_63/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_63/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dc
lstm_63/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_64/ShapeShapelstm_63/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_64/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_64/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_64/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_64/strided_sliceStridedSlicelstm_64/Shape:output:0$lstm_64/strided_slice/stack:output:0&lstm_64/strided_slice/stack_1:output:0&lstm_64/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_64/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_64/zeros/packedPacklstm_64/strided_slice:output:0lstm_64/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_64/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_64/zerosFilllstm_64/zeros/packed:output:0lstm_64/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2Z
lstm_64/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_64/zeros_1/packedPacklstm_64/strided_slice:output:0!lstm_64/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_64/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_64/zeros_1Filllstm_64/zeros_1/packed:output:0lstm_64/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2k
lstm_64/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_64/transpose	Transposelstm_63/transpose_1:y:0lstm_64/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dT
lstm_64/Shape_1Shapelstm_64/transpose:y:0*
T0*
_output_shapes
:g
lstm_64/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_64/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_64/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_64/strided_slice_1StridedSlicelstm_64/Shape_1:output:0&lstm_64/strided_slice_1/stack:output:0(lstm_64/strided_slice_1/stack_1:output:0(lstm_64/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_64/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_64/TensorArrayV2TensorListReserve,lstm_64/TensorArrayV2/element_shape:output:0 lstm_64/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_64/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
/lstm_64/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_64/transpose:y:0Flstm_64/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_64/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_64/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_64/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_64/strided_slice_2StridedSlicelstm_64/transpose:y:0&lstm_64/strided_slice_2/stack:output:0(lstm_64/strided_slice_2/stack_1:output:0(lstm_64/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
*lstm_64/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3lstm_64_lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_64/lstm_cell_16/MatMulMatMul lstm_64/strided_slice_2:output:02lstm_64/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,lstm_64/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5lstm_64_lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_64/lstm_cell_16/MatMul_1MatMullstm_64/zeros:output:04lstm_64/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_64/lstm_cell_16/addAddV2%lstm_64/lstm_cell_16/MatMul:product:0'lstm_64/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
+lstm_64/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4lstm_64_lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_64/lstm_cell_16/BiasAddBiasAddlstm_64/lstm_cell_16/add:z:03lstm_64/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????f
$lstm_64/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_64/lstm_cell_16/splitSplit-lstm_64/lstm_cell_16/split/split_dim:output:0%lstm_64/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split~
lstm_64/lstm_cell_16/SigmoidSigmoid#lstm_64/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2?
lstm_64/lstm_cell_16/Sigmoid_1Sigmoid#lstm_64/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_64/lstm_cell_16/mulMul"lstm_64/lstm_cell_16/Sigmoid_1:y:0lstm_64/zeros_1:output:0*
T0*'
_output_shapes
:?????????2x
lstm_64/lstm_cell_16/ReluRelu#lstm_64/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_64/lstm_cell_16/mul_1Mul lstm_64/lstm_cell_16/Sigmoid:y:0'lstm_64/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_64/lstm_cell_16/add_1AddV2lstm_64/lstm_cell_16/mul:z:0lstm_64/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_64/lstm_cell_16/Sigmoid_2Sigmoid#lstm_64/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2u
lstm_64/lstm_cell_16/Relu_1Relulstm_64/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_64/lstm_cell_16/mul_2Mul"lstm_64/lstm_cell_16/Sigmoid_2:y:0)lstm_64/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2v
%lstm_64/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_64/TensorArrayV2_1TensorListReserve.lstm_64/TensorArrayV2_1/element_shape:output:0 lstm_64/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_64/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_64/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_64/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_64/whileWhile#lstm_64/while/loop_counter:output:0)lstm_64/while/maximum_iterations:output:0lstm_64/time:output:0 lstm_64/TensorArrayV2_1:handle:0lstm_64/zeros:output:0lstm_64/zeros_1:output:0 lstm_64/strided_slice_1:output:0?lstm_64/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_64_lstm_cell_16_matmul_readvariableop_resource5lstm_64_lstm_cell_16_matmul_1_readvariableop_resource4lstm_64_lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_64_while_body_106955*%
condR
lstm_64_while_cond_106954*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
8lstm_64/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
*lstm_64/TensorArrayV2Stack/TensorListStackTensorListStacklstm_64/while:output:3Alstm_64/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0p
lstm_64/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_64/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_64/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_64/strided_slice_3StridedSlice3lstm_64/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_64/strided_slice_3/stack:output:0(lstm_64/strided_slice_3/stack_1:output:0(lstm_64/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskm
lstm_64/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_64/transpose_1	Transpose3lstm_64/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_64/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2c
lstm_64/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_65/ShapeShapelstm_64/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_65/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_65/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_65/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_65/strided_sliceStridedSlicelstm_65/Shape:output:0$lstm_65/strided_slice/stack:output:0&lstm_65/strided_slice/stack_1:output:0&lstm_65/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_65/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_65/zeros/packedPacklstm_65/strided_slice:output:0lstm_65/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_65/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_65/zerosFilllstm_65/zeros/packed:output:0lstm_65/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
Z
lstm_65/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_65/zeros_1/packedPacklstm_65/strided_slice:output:0!lstm_65/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_65/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_65/zeros_1Filllstm_65/zeros_1/packed:output:0lstm_65/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
k
lstm_65/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_65/transpose	Transposelstm_64/transpose_1:y:0lstm_65/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2T
lstm_65/Shape_1Shapelstm_65/transpose:y:0*
T0*
_output_shapes
:g
lstm_65/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_65/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_65/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_65/strided_slice_1StridedSlicelstm_65/Shape_1:output:0&lstm_65/strided_slice_1/stack:output:0(lstm_65/strided_slice_1/stack_1:output:0(lstm_65/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_65/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_65/TensorArrayV2TensorListReserve,lstm_65/TensorArrayV2/element_shape:output:0 lstm_65/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_65/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
/lstm_65/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_65/transpose:y:0Flstm_65/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_65/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_65/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_65/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_65/strided_slice_2StridedSlicelstm_65/transpose:y:0&lstm_65/strided_slice_2/stack:output:0(lstm_65/strided_slice_2/stack_1:output:0(lstm_65/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
*lstm_65/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3lstm_65_lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_65/lstm_cell_17/MatMulMatMul lstm_65/strided_slice_2:output:02lstm_65/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
,lstm_65/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5lstm_65_lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_65/lstm_cell_17/MatMul_1MatMullstm_65/zeros:output:04lstm_65/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_65/lstm_cell_17/addAddV2%lstm_65/lstm_cell_17/MatMul:product:0'lstm_65/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
+lstm_65/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4lstm_65_lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_65/lstm_cell_17/BiasAddBiasAddlstm_65/lstm_cell_17/add:z:03lstm_65/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(f
$lstm_65/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_65/lstm_cell_17/splitSplit-lstm_65/lstm_cell_17/split/split_dim:output:0%lstm_65/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split~
lstm_65/lstm_cell_17/SigmoidSigmoid#lstm_65/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????
?
lstm_65/lstm_cell_17/Sigmoid_1Sigmoid#lstm_65/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_65/lstm_cell_17/mulMul"lstm_65/lstm_cell_17/Sigmoid_1:y:0lstm_65/zeros_1:output:0*
T0*'
_output_shapes
:?????????
x
lstm_65/lstm_cell_17/ReluRelu#lstm_65/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_65/lstm_cell_17/mul_1Mul lstm_65/lstm_cell_17/Sigmoid:y:0'lstm_65/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_65/lstm_cell_17/add_1AddV2lstm_65/lstm_cell_17/mul:z:0lstm_65/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_65/lstm_cell_17/Sigmoid_2Sigmoid#lstm_65/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????
u
lstm_65/lstm_cell_17/Relu_1Relulstm_65/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_65/lstm_cell_17/mul_2Mul"lstm_65/lstm_cell_17/Sigmoid_2:y:0)lstm_65/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
v
%lstm_65/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_65/TensorArrayV2_1TensorListReserve.lstm_65/TensorArrayV2_1/element_shape:output:0 lstm_65/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_65/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_65/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_65/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_65/whileWhile#lstm_65/while/loop_counter:output:0)lstm_65/while/maximum_iterations:output:0lstm_65/time:output:0 lstm_65/TensorArrayV2_1:handle:0lstm_65/zeros:output:0lstm_65/zeros_1:output:0 lstm_65/strided_slice_1:output:0?lstm_65/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_65_lstm_cell_17_matmul_readvariableop_resource5lstm_65_lstm_cell_17_matmul_1_readvariableop_resource4lstm_65_lstm_cell_17_biasadd_readvariableop_resource*
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
_stateful_parallelism( *%
bodyR
lstm_65_while_body_107094*%
condR
lstm_65_while_cond_107093*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
8lstm_65/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
*lstm_65/TensorArrayV2Stack/TensorListStackTensorListStacklstm_65/while:output:3Alstm_65/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0p
lstm_65/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_65/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_65/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_65/strided_slice_3StridedSlice3lstm_65/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_65/strided_slice_3/stack:output:0(lstm_65/strided_slice_3/stack_1:output:0(lstm_65/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskm
lstm_65/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_65/transpose_1	Transpose3lstm_65/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_65/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
c
lstm_65/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_21/MatMulMatMul lstm_65/strided_slice_3:output:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_21/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp,^lstm_63/lstm_cell_15/BiasAdd/ReadVariableOp+^lstm_63/lstm_cell_15/MatMul/ReadVariableOp-^lstm_63/lstm_cell_15/MatMul_1/ReadVariableOp^lstm_63/while,^lstm_64/lstm_cell_16/BiasAdd/ReadVariableOp+^lstm_64/lstm_cell_16/MatMul/ReadVariableOp-^lstm_64/lstm_cell_16/MatMul_1/ReadVariableOp^lstm_64/while,^lstm_65/lstm_cell_17/BiasAdd/ReadVariableOp+^lstm_65/lstm_cell_17/MatMul/ReadVariableOp-^lstm_65/lstm_cell_17/MatMul_1/ReadVariableOp^lstm_65/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2Z
+lstm_63/lstm_cell_15/BiasAdd/ReadVariableOp+lstm_63/lstm_cell_15/BiasAdd/ReadVariableOp2X
*lstm_63/lstm_cell_15/MatMul/ReadVariableOp*lstm_63/lstm_cell_15/MatMul/ReadVariableOp2\
,lstm_63/lstm_cell_15/MatMul_1/ReadVariableOp,lstm_63/lstm_cell_15/MatMul_1/ReadVariableOp2
lstm_63/whilelstm_63/while2Z
+lstm_64/lstm_cell_16/BiasAdd/ReadVariableOp+lstm_64/lstm_cell_16/BiasAdd/ReadVariableOp2X
*lstm_64/lstm_cell_16/MatMul/ReadVariableOp*lstm_64/lstm_cell_16/MatMul/ReadVariableOp2\
,lstm_64/lstm_cell_16/MatMul_1/ReadVariableOp,lstm_64/lstm_cell_16/MatMul_1/ReadVariableOp2
lstm_64/whilelstm_64/while2Z
+lstm_65/lstm_cell_17/BiasAdd/ReadVariableOp+lstm_65/lstm_cell_17/BiasAdd/ReadVariableOp2X
*lstm_65/lstm_cell_17/MatMul/ReadVariableOp*lstm_65/lstm_cell_17/MatMul/ReadVariableOp2\
,lstm_65/lstm_cell_17/MatMul_1/ReadVariableOp,lstm_65/lstm_cell_17/MatMul_1/ReadVariableOp2
lstm_65/whilelstm_65/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_104860

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
?"
?
while_body_105224
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_17_105248_0:2(-
while_lstm_cell_17_105250_0:
()
while_lstm_cell_17_105252_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_17_105248:2(+
while_lstm_cell_17_105250:
('
while_lstm_cell_17_105252:(??*while/lstm_cell_17/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
*while/lstm_cell_17/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_17_105248_0while_lstm_cell_17_105250_0while_lstm_cell_17_105252_0*
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
GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_105210?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_17/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_17/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity3while/lstm_cell_17/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
y

while/NoOpNoOp+^while/lstm_cell_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_17_105248while_lstm_cell_17_105248_0"8
while_lstm_cell_17_105250while_lstm_cell_17_105250_0"8
while_lstm_cell_17_105252while_lstm_cell_17_105252_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_17/StatefulPartitionedCall*while/lstm_cell_17/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_104510

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
?
C__inference_lstm_65_layer_call_and_return_conditional_losses_105293

inputs%
lstm_cell_17_105211:2(%
lstm_cell_17_105213:
(!
lstm_cell_17_105215:(
identity??$lstm_cell_17/StatefulPartitionedCall?while;
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
$lstm_cell_17/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_17_105211lstm_cell_17_105213lstm_cell_17_105215*
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
GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_105210n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_17_105211lstm_cell_17_105213lstm_cell_17_105215*
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
bodyR
while_body_105224*
condR
while_cond_105223*K
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
u
NoOpNoOp%^lstm_cell_17/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_17/StatefulPartitionedCall$lstm_cell_17/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?A
?

lstm_63_while_body_106816,
(lstm_63_while_lstm_63_while_loop_counter2
.lstm_63_while_lstm_63_while_maximum_iterations
lstm_63_while_placeholder
lstm_63_while_placeholder_1
lstm_63_while_placeholder_2
lstm_63_while_placeholder_3+
'lstm_63_while_lstm_63_strided_slice_1_0g
clstm_63_while_tensorarrayv2read_tensorlistgetitem_lstm_63_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_63_while_lstm_cell_15_matmul_readvariableop_resource_0:	?P
=lstm_63_while_lstm_cell_15_matmul_1_readvariableop_resource_0:	d?K
<lstm_63_while_lstm_cell_15_biasadd_readvariableop_resource_0:	?
lstm_63_while_identity
lstm_63_while_identity_1
lstm_63_while_identity_2
lstm_63_while_identity_3
lstm_63_while_identity_4
lstm_63_while_identity_5)
%lstm_63_while_lstm_63_strided_slice_1e
alstm_63_while_tensorarrayv2read_tensorlistgetitem_lstm_63_tensorarrayunstack_tensorlistfromtensorL
9lstm_63_while_lstm_cell_15_matmul_readvariableop_resource:	?N
;lstm_63_while_lstm_cell_15_matmul_1_readvariableop_resource:	d?I
:lstm_63_while_lstm_cell_15_biasadd_readvariableop_resource:	???1lstm_63/while/lstm_cell_15/BiasAdd/ReadVariableOp?0lstm_63/while/lstm_cell_15/MatMul/ReadVariableOp?2lstm_63/while/lstm_cell_15/MatMul_1/ReadVariableOp?
?lstm_63/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
1lstm_63/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_63_while_tensorarrayv2read_tensorlistgetitem_lstm_63_tensorarrayunstack_tensorlistfromtensor_0lstm_63_while_placeholderHlstm_63/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
0lstm_63/while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp;lstm_63_while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
!lstm_63/while/lstm_cell_15/MatMulMatMul8lstm_63/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_63/while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
2lstm_63/while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp=lstm_63_while_lstm_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_63/while/lstm_cell_15/MatMul_1MatMullstm_63_while_placeholder_2:lstm_63/while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_63/while/lstm_cell_15/addAddV2+lstm_63/while/lstm_cell_15/MatMul:product:0-lstm_63/while/lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
1lstm_63/while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp<lstm_63_while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
"lstm_63/while/lstm_cell_15/BiasAddBiasAdd"lstm_63/while/lstm_cell_15/add:z:09lstm_63/while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????l
*lstm_63/while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
 lstm_63/while/lstm_cell_15/splitSplit3lstm_63/while/lstm_cell_15/split/split_dim:output:0+lstm_63/while/lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
"lstm_63/while/lstm_cell_15/SigmoidSigmoid)lstm_63/while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:?????????d?
$lstm_63/while/lstm_cell_15/Sigmoid_1Sigmoid)lstm_63/while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_63/while/lstm_cell_15/mulMul(lstm_63/while/lstm_cell_15/Sigmoid_1:y:0lstm_63_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
lstm_63/while/lstm_cell_15/ReluRelu)lstm_63/while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:?????????d?
 lstm_63/while/lstm_cell_15/mul_1Mul&lstm_63/while/lstm_cell_15/Sigmoid:y:0-lstm_63/while/lstm_cell_15/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
 lstm_63/while/lstm_cell_15/add_1AddV2"lstm_63/while/lstm_cell_15/mul:z:0$lstm_63/while/lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
$lstm_63/while/lstm_cell_15/Sigmoid_2Sigmoid)lstm_63/while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:?????????d?
!lstm_63/while/lstm_cell_15/Relu_1Relu$lstm_63/while/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_63/while/lstm_cell_15/mul_2Mul(lstm_63/while/lstm_cell_15/Sigmoid_2:y:0/lstm_63/while/lstm_cell_15/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
2lstm_63/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_63_while_placeholder_1lstm_63_while_placeholder$lstm_63/while/lstm_cell_15/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_63/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_63/while/addAddV2lstm_63_while_placeholderlstm_63/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_63/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_63/while/add_1AddV2(lstm_63_while_lstm_63_while_loop_counterlstm_63/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_63/while/IdentityIdentitylstm_63/while/add_1:z:0^lstm_63/while/NoOp*
T0*
_output_shapes
: ?
lstm_63/while/Identity_1Identity.lstm_63_while_lstm_63_while_maximum_iterations^lstm_63/while/NoOp*
T0*
_output_shapes
: q
lstm_63/while/Identity_2Identitylstm_63/while/add:z:0^lstm_63/while/NoOp*
T0*
_output_shapes
: ?
lstm_63/while/Identity_3IdentityBlstm_63/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_63/while/NoOp*
T0*
_output_shapes
: ?
lstm_63/while/Identity_4Identity$lstm_63/while/lstm_cell_15/mul_2:z:0^lstm_63/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_63/while/Identity_5Identity$lstm_63/while/lstm_cell_15/add_1:z:0^lstm_63/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_63/while/NoOpNoOp2^lstm_63/while/lstm_cell_15/BiasAdd/ReadVariableOp1^lstm_63/while/lstm_cell_15/MatMul/ReadVariableOp3^lstm_63/while/lstm_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_63_while_identitylstm_63/while/Identity:output:0"=
lstm_63_while_identity_1!lstm_63/while/Identity_1:output:0"=
lstm_63_while_identity_2!lstm_63/while/Identity_2:output:0"=
lstm_63_while_identity_3!lstm_63/while/Identity_3:output:0"=
lstm_63_while_identity_4!lstm_63/while/Identity_4:output:0"=
lstm_63_while_identity_5!lstm_63/while/Identity_5:output:0"P
%lstm_63_while_lstm_63_strided_slice_1'lstm_63_while_lstm_63_strided_slice_1_0"z
:lstm_63_while_lstm_cell_15_biasadd_readvariableop_resource<lstm_63_while_lstm_cell_15_biasadd_readvariableop_resource_0"|
;lstm_63_while_lstm_cell_15_matmul_1_readvariableop_resource=lstm_63_while_lstm_cell_15_matmul_1_readvariableop_resource_0"x
9lstm_63_while_lstm_cell_15_matmul_readvariableop_resource;lstm_63_while_lstm_cell_15_matmul_readvariableop_resource_0"?
alstm_63_while_tensorarrayv2read_tensorlistgetitem_lstm_63_tensorarrayunstack_tensorlistfromtensorclstm_63_while_tensorarrayv2read_tensorlistgetitem_lstm_63_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2f
1lstm_63/while/lstm_cell_15/BiasAdd/ReadVariableOp1lstm_63/while/lstm_cell_15/BiasAdd/ReadVariableOp2d
0lstm_63/while/lstm_cell_15/MatMul/ReadVariableOp0lstm_63/while/lstm_cell_15/MatMul/ReadVariableOp2h
2lstm_63/while/lstm_cell_15/MatMul_1/ReadVariableOp2lstm_63/while/lstm_cell_15/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
.__inference_sequential_21_layer_call_fn_106730

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
GPU 2J 8? *R
fMRK
I__inference_sequential_21_layer_call_and_return_conditional_losses_105967o
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
?
?
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_105356

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
?A
?

lstm_65_while_body_107094,
(lstm_65_while_lstm_65_while_loop_counter2
.lstm_65_while_lstm_65_while_maximum_iterations
lstm_65_while_placeholder
lstm_65_while_placeholder_1
lstm_65_while_placeholder_2
lstm_65_while_placeholder_3+
'lstm_65_while_lstm_65_strided_slice_1_0g
clstm_65_while_tensorarrayv2read_tensorlistgetitem_lstm_65_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_65_while_lstm_cell_17_matmul_readvariableop_resource_0:2(O
=lstm_65_while_lstm_cell_17_matmul_1_readvariableop_resource_0:
(J
<lstm_65_while_lstm_cell_17_biasadd_readvariableop_resource_0:(
lstm_65_while_identity
lstm_65_while_identity_1
lstm_65_while_identity_2
lstm_65_while_identity_3
lstm_65_while_identity_4
lstm_65_while_identity_5)
%lstm_65_while_lstm_65_strided_slice_1e
alstm_65_while_tensorarrayv2read_tensorlistgetitem_lstm_65_tensorarrayunstack_tensorlistfromtensorK
9lstm_65_while_lstm_cell_17_matmul_readvariableop_resource:2(M
;lstm_65_while_lstm_cell_17_matmul_1_readvariableop_resource:
(H
:lstm_65_while_lstm_cell_17_biasadd_readvariableop_resource:(??1lstm_65/while/lstm_cell_17/BiasAdd/ReadVariableOp?0lstm_65/while/lstm_cell_17/MatMul/ReadVariableOp?2lstm_65/while/lstm_cell_17/MatMul_1/ReadVariableOp?
?lstm_65/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
1lstm_65/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_65_while_tensorarrayv2read_tensorlistgetitem_lstm_65_tensorarrayunstack_tensorlistfromtensor_0lstm_65_while_placeholderHlstm_65/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
0lstm_65/while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp;lstm_65_while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
!lstm_65/while/lstm_cell_17/MatMulMatMul8lstm_65/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_65/while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
2lstm_65/while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp=lstm_65_while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
#lstm_65/while/lstm_cell_17/MatMul_1MatMullstm_65_while_placeholder_2:lstm_65/while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_65/while/lstm_cell_17/addAddV2+lstm_65/while/lstm_cell_17/MatMul:product:0-lstm_65/while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
1lstm_65/while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp<lstm_65_while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
"lstm_65/while/lstm_cell_17/BiasAddBiasAdd"lstm_65/while/lstm_cell_17/add:z:09lstm_65/while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(l
*lstm_65/while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
 lstm_65/while/lstm_cell_17/splitSplit3lstm_65/while/lstm_cell_17/split/split_dim:output:0+lstm_65/while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
"lstm_65/while/lstm_cell_17/SigmoidSigmoid)lstm_65/while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????
?
$lstm_65/while/lstm_cell_17/Sigmoid_1Sigmoid)lstm_65/while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_65/while/lstm_cell_17/mulMul(lstm_65/while/lstm_cell_17/Sigmoid_1:y:0lstm_65_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
lstm_65/while/lstm_cell_17/ReluRelu)lstm_65/while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????
?
 lstm_65/while/lstm_cell_17/mul_1Mul&lstm_65/while/lstm_cell_17/Sigmoid:y:0-lstm_65/while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
 lstm_65/while/lstm_cell_17/add_1AddV2"lstm_65/while/lstm_cell_17/mul:z:0$lstm_65/while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
$lstm_65/while/lstm_cell_17/Sigmoid_2Sigmoid)lstm_65/while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????
?
!lstm_65/while/lstm_cell_17/Relu_1Relu$lstm_65/while/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_65/while/lstm_cell_17/mul_2Mul(lstm_65/while/lstm_cell_17/Sigmoid_2:y:0/lstm_65/while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
2lstm_65/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_65_while_placeholder_1lstm_65_while_placeholder$lstm_65/while/lstm_cell_17/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_65/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_65/while/addAddV2lstm_65_while_placeholderlstm_65/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_65/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_65/while/add_1AddV2(lstm_65_while_lstm_65_while_loop_counterlstm_65/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_65/while/IdentityIdentitylstm_65/while/add_1:z:0^lstm_65/while/NoOp*
T0*
_output_shapes
: ?
lstm_65/while/Identity_1Identity.lstm_65_while_lstm_65_while_maximum_iterations^lstm_65/while/NoOp*
T0*
_output_shapes
: q
lstm_65/while/Identity_2Identitylstm_65/while/add:z:0^lstm_65/while/NoOp*
T0*
_output_shapes
: ?
lstm_65/while/Identity_3IdentityBlstm_65/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_65/while/NoOp*
T0*
_output_shapes
: ?
lstm_65/while/Identity_4Identity$lstm_65/while/lstm_cell_17/mul_2:z:0^lstm_65/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_65/while/Identity_5Identity$lstm_65/while/lstm_cell_17/add_1:z:0^lstm_65/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_65/while/NoOpNoOp2^lstm_65/while/lstm_cell_17/BiasAdd/ReadVariableOp1^lstm_65/while/lstm_cell_17/MatMul/ReadVariableOp3^lstm_65/while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_65_while_identitylstm_65/while/Identity:output:0"=
lstm_65_while_identity_1!lstm_65/while/Identity_1:output:0"=
lstm_65_while_identity_2!lstm_65/while/Identity_2:output:0"=
lstm_65_while_identity_3!lstm_65/while/Identity_3:output:0"=
lstm_65_while_identity_4!lstm_65/while/Identity_4:output:0"=
lstm_65_while_identity_5!lstm_65/while/Identity_5:output:0"P
%lstm_65_while_lstm_65_strided_slice_1'lstm_65_while_lstm_65_strided_slice_1_0"z
:lstm_65_while_lstm_cell_17_biasadd_readvariableop_resource<lstm_65_while_lstm_cell_17_biasadd_readvariableop_resource_0"|
;lstm_65_while_lstm_cell_17_matmul_1_readvariableop_resource=lstm_65_while_lstm_cell_17_matmul_1_readvariableop_resource_0"x
9lstm_65_while_lstm_cell_17_matmul_readvariableop_resource;lstm_65_while_lstm_cell_17_matmul_readvariableop_resource_0"?
alstm_65_while_tensorarrayv2read_tensorlistgetitem_lstm_65_tensorarrayunstack_tensorlistfromtensorclstm_65_while_tensorarrayv2read_tensorlistgetitem_lstm_65_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2f
1lstm_65/while/lstm_cell_17/BiasAdd/ReadVariableOp1lstm_65/while/lstm_cell_17/BiasAdd/ReadVariableOp2d
0lstm_65/while/lstm_cell_17/MatMul/ReadVariableOp0lstm_65/while/lstm_cell_17/MatMul/ReadVariableOp2h
2lstm_65/while/lstm_cell_17/MatMul_1/ReadVariableOp2lstm_65/while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_108330
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_16_matmul_readvariableop_resource_0:	d?H
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:	2?C
4while_lstm_cell_16_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_16_matmul_readvariableop_resource:	d?F
3while_lstm_cell_16_matmul_1_readvariableop_resource:	2?A
2while_lstm_cell_16_biasadd_readvariableop_resource:	???)while/lstm_cell_16/BiasAdd/ReadVariableOp?(while/lstm_cell_16/MatMul/ReadVariableOp?*while/lstm_cell_16/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitz
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2|
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2t
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2|
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2q
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2y
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?V
?
__inference__traced_save_109915
file_prefix.
*savev2_dense_21_kernel_read_readvariableop,
(savev2_dense_21_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_63_lstm_cell_63_kernel_read_readvariableopD
@savev2_lstm_63_lstm_cell_63_recurrent_kernel_read_readvariableop8
4savev2_lstm_63_lstm_cell_63_bias_read_readvariableop:
6savev2_lstm_64_lstm_cell_64_kernel_read_readvariableopD
@savev2_lstm_64_lstm_cell_64_recurrent_kernel_read_readvariableop8
4savev2_lstm_64_lstm_cell_64_bias_read_readvariableop:
6savev2_lstm_65_lstm_cell_65_kernel_read_readvariableopD
@savev2_lstm_65_lstm_cell_65_recurrent_kernel_read_readvariableop8
4savev2_lstm_65_lstm_cell_65_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_21_kernel_m_read_readvariableop3
/savev2_adam_dense_21_bias_m_read_readvariableopA
=savev2_adam_lstm_63_lstm_cell_63_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_63_lstm_cell_63_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_63_lstm_cell_63_bias_m_read_readvariableopA
=savev2_adam_lstm_64_lstm_cell_64_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_64_lstm_cell_64_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_64_lstm_cell_64_bias_m_read_readvariableopA
=savev2_adam_lstm_65_lstm_cell_65_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_65_lstm_cell_65_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_65_lstm_cell_65_bias_m_read_readvariableop5
1savev2_adam_dense_21_kernel_v_read_readvariableop3
/savev2_adam_dense_21_bias_v_read_readvariableopA
=savev2_adam_lstm_63_lstm_cell_63_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_63_lstm_cell_63_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_63_lstm_cell_63_bias_v_read_readvariableopA
=savev2_adam_lstm_64_lstm_cell_64_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_64_lstm_cell_64_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_64_lstm_cell_64_bias_v_read_readvariableopA
=savev2_adam_lstm_65_lstm_cell_65_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_65_lstm_cell_65_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_65_lstm_cell_65_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_21_kernel_read_readvariableop(savev2_dense_21_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_63_lstm_cell_63_kernel_read_readvariableop@savev2_lstm_63_lstm_cell_63_recurrent_kernel_read_readvariableop4savev2_lstm_63_lstm_cell_63_bias_read_readvariableop6savev2_lstm_64_lstm_cell_64_kernel_read_readvariableop@savev2_lstm_64_lstm_cell_64_recurrent_kernel_read_readvariableop4savev2_lstm_64_lstm_cell_64_bias_read_readvariableop6savev2_lstm_65_lstm_cell_65_kernel_read_readvariableop@savev2_lstm_65_lstm_cell_65_recurrent_kernel_read_readvariableop4savev2_lstm_65_lstm_cell_65_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_21_kernel_m_read_readvariableop/savev2_adam_dense_21_bias_m_read_readvariableop=savev2_adam_lstm_63_lstm_cell_63_kernel_m_read_readvariableopGsavev2_adam_lstm_63_lstm_cell_63_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_63_lstm_cell_63_bias_m_read_readvariableop=savev2_adam_lstm_64_lstm_cell_64_kernel_m_read_readvariableopGsavev2_adam_lstm_64_lstm_cell_64_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_64_lstm_cell_64_bias_m_read_readvariableop=savev2_adam_lstm_65_lstm_cell_65_kernel_m_read_readvariableopGsavev2_adam_lstm_65_lstm_cell_65_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_65_lstm_cell_65_bias_m_read_readvariableop1savev2_adam_dense_21_kernel_v_read_readvariableop/savev2_adam_dense_21_bias_v_read_readvariableop=savev2_adam_lstm_63_lstm_cell_63_kernel_v_read_readvariableopGsavev2_adam_lstm_63_lstm_cell_63_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_63_lstm_cell_63_bias_v_read_readvariableop=savev2_adam_lstm_64_lstm_cell_64_kernel_v_read_readvariableopGsavev2_adam_lstm_64_lstm_cell_64_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_64_lstm_cell_64_bias_v_read_readvariableop=savev2_adam_lstm_65_lstm_cell_65_kernel_v_read_readvariableopGsavev2_adam_lstm_65_lstm_cell_65_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_65_lstm_cell_65_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?8
?
C__inference_lstm_63_layer_call_and_return_conditional_losses_104593

inputs&
lstm_cell_15_104511:	?&
lstm_cell_15_104513:	d?"
lstm_cell_15_104515:	?
identity??$lstm_cell_15/StatefulPartitionedCall?while;
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
$lstm_cell_15/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_15_104511lstm_cell_15_104513lstm_cell_15_104515*
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
GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_104510n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_15_104511lstm_cell_15_104513lstm_cell_15_104515*
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
bodyR
while_body_104524*
condR
while_cond_104523*K
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
 :??????????????????du
NoOpNoOp%^lstm_cell_15/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_15/StatefulPartitionedCall$lstm_cell_15/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_105857
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_105857___redundant_placeholder04
0while_while_cond_105857___redundant_placeholder14
0while_while_cond_105857___redundant_placeholder24
0while_while_cond_105857___redundant_placeholder3
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
C__inference_lstm_64_layer_call_and_return_conditional_losses_104943

inputs&
lstm_cell_16_104861:	d?&
lstm_cell_16_104863:	2?"
lstm_cell_16_104865:	?
identity??$lstm_cell_16/StatefulPartitionedCall?while;
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
$lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_16_104861lstm_cell_16_104863lstm_cell_16_104865*
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
GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_104860n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_16_104861lstm_cell_16_104863lstm_cell_16_104865*
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
bodyR
while_body_104874*
condR
while_cond_104873*K
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
 :??????????????????2u
NoOpNoOp%^lstm_cell_16/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_16/StatefulPartitionedCall$lstm_cell_16/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
(__inference_lstm_63_layer_call_fn_107644

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
GPU 2J 8? *L
fGRE
C__inference_lstm_63_layer_call_and_return_conditional_losses_105642s
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
?A
?

lstm_64_while_body_107382,
(lstm_64_while_lstm_64_while_loop_counter2
.lstm_64_while_lstm_64_while_maximum_iterations
lstm_64_while_placeholder
lstm_64_while_placeholder_1
lstm_64_while_placeholder_2
lstm_64_while_placeholder_3+
'lstm_64_while_lstm_64_strided_slice_1_0g
clstm_64_while_tensorarrayv2read_tensorlistgetitem_lstm_64_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_64_while_lstm_cell_16_matmul_readvariableop_resource_0:	d?P
=lstm_64_while_lstm_cell_16_matmul_1_readvariableop_resource_0:	2?K
<lstm_64_while_lstm_cell_16_biasadd_readvariableop_resource_0:	?
lstm_64_while_identity
lstm_64_while_identity_1
lstm_64_while_identity_2
lstm_64_while_identity_3
lstm_64_while_identity_4
lstm_64_while_identity_5)
%lstm_64_while_lstm_64_strided_slice_1e
alstm_64_while_tensorarrayv2read_tensorlistgetitem_lstm_64_tensorarrayunstack_tensorlistfromtensorL
9lstm_64_while_lstm_cell_16_matmul_readvariableop_resource:	d?N
;lstm_64_while_lstm_cell_16_matmul_1_readvariableop_resource:	2?I
:lstm_64_while_lstm_cell_16_biasadd_readvariableop_resource:	???1lstm_64/while/lstm_cell_16/BiasAdd/ReadVariableOp?0lstm_64/while/lstm_cell_16/MatMul/ReadVariableOp?2lstm_64/while/lstm_cell_16/MatMul_1/ReadVariableOp?
?lstm_64/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
1lstm_64/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_64_while_tensorarrayv2read_tensorlistgetitem_lstm_64_tensorarrayunstack_tensorlistfromtensor_0lstm_64_while_placeholderHlstm_64/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
0lstm_64/while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp;lstm_64_while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
!lstm_64/while/lstm_cell_16/MatMulMatMul8lstm_64/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_64/while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
2lstm_64/while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp=lstm_64_while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
#lstm_64/while/lstm_cell_16/MatMul_1MatMullstm_64_while_placeholder_2:lstm_64/while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_64/while/lstm_cell_16/addAddV2+lstm_64/while/lstm_cell_16/MatMul:product:0-lstm_64/while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
1lstm_64/while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp<lstm_64_while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
"lstm_64/while/lstm_cell_16/BiasAddBiasAdd"lstm_64/while/lstm_cell_16/add:z:09lstm_64/while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????l
*lstm_64/while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
 lstm_64/while/lstm_cell_16/splitSplit3lstm_64/while/lstm_cell_16/split/split_dim:output:0+lstm_64/while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
"lstm_64/while/lstm_cell_16/SigmoidSigmoid)lstm_64/while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2?
$lstm_64/while/lstm_cell_16/Sigmoid_1Sigmoid)lstm_64/while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_64/while/lstm_cell_16/mulMul(lstm_64/while/lstm_cell_16/Sigmoid_1:y:0lstm_64_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
lstm_64/while/lstm_cell_16/ReluRelu)lstm_64/while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2?
 lstm_64/while/lstm_cell_16/mul_1Mul&lstm_64/while/lstm_cell_16/Sigmoid:y:0-lstm_64/while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
 lstm_64/while/lstm_cell_16/add_1AddV2"lstm_64/while/lstm_cell_16/mul:z:0$lstm_64/while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
$lstm_64/while/lstm_cell_16/Sigmoid_2Sigmoid)lstm_64/while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2?
!lstm_64/while/lstm_cell_16/Relu_1Relu$lstm_64/while/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_64/while/lstm_cell_16/mul_2Mul(lstm_64/while/lstm_cell_16/Sigmoid_2:y:0/lstm_64/while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
2lstm_64/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_64_while_placeholder_1lstm_64_while_placeholder$lstm_64/while/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_64/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_64/while/addAddV2lstm_64_while_placeholderlstm_64/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_64/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_64/while/add_1AddV2(lstm_64_while_lstm_64_while_loop_counterlstm_64/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_64/while/IdentityIdentitylstm_64/while/add_1:z:0^lstm_64/while/NoOp*
T0*
_output_shapes
: ?
lstm_64/while/Identity_1Identity.lstm_64_while_lstm_64_while_maximum_iterations^lstm_64/while/NoOp*
T0*
_output_shapes
: q
lstm_64/while/Identity_2Identitylstm_64/while/add:z:0^lstm_64/while/NoOp*
T0*
_output_shapes
: ?
lstm_64/while/Identity_3IdentityBlstm_64/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_64/while/NoOp*
T0*
_output_shapes
: ?
lstm_64/while/Identity_4Identity$lstm_64/while/lstm_cell_16/mul_2:z:0^lstm_64/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_64/while/Identity_5Identity$lstm_64/while/lstm_cell_16/add_1:z:0^lstm_64/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_64/while/NoOpNoOp2^lstm_64/while/lstm_cell_16/BiasAdd/ReadVariableOp1^lstm_64/while/lstm_cell_16/MatMul/ReadVariableOp3^lstm_64/while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_64_while_identitylstm_64/while/Identity:output:0"=
lstm_64_while_identity_1!lstm_64/while/Identity_1:output:0"=
lstm_64_while_identity_2!lstm_64/while/Identity_2:output:0"=
lstm_64_while_identity_3!lstm_64/while/Identity_3:output:0"=
lstm_64_while_identity_4!lstm_64/while/Identity_4:output:0"=
lstm_64_while_identity_5!lstm_64/while/Identity_5:output:0"P
%lstm_64_while_lstm_64_strided_slice_1'lstm_64_while_lstm_64_strided_slice_1_0"z
:lstm_64_while_lstm_cell_16_biasadd_readvariableop_resource<lstm_64_while_lstm_cell_16_biasadd_readvariableop_resource_0"|
;lstm_64_while_lstm_cell_16_matmul_1_readvariableop_resource=lstm_64_while_lstm_cell_16_matmul_1_readvariableop_resource_0"x
9lstm_64_while_lstm_cell_16_matmul_readvariableop_resource;lstm_64_while_lstm_cell_16_matmul_readvariableop_resource_0"?
alstm_64_while_tensorarrayv2read_tensorlistgetitem_lstm_64_tensorarrayunstack_tensorlistfromtensorclstm_64_while_tensorarrayv2read_tensorlistgetitem_lstm_64_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2f
1lstm_64/while/lstm_cell_16/BiasAdd/ReadVariableOp1lstm_64/while/lstm_cell_16/BiasAdd/ReadVariableOp2d
0lstm_64/while/lstm_cell_16/MatMul/ReadVariableOp0lstm_64/while/lstm_cell_16/MatMul/ReadVariableOp2h
2lstm_64/while/lstm_cell_16/MatMul_1/ReadVariableOp2lstm_64/while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
while_body_106239
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_16_matmul_readvariableop_resource_0:	d?H
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:	2?C
4while_lstm_cell_16_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_16_matmul_readvariableop_resource:	d?F
3while_lstm_cell_16_matmul_1_readvariableop_resource:	2?A
2while_lstm_cell_16_biasadd_readvariableop_resource:	???)while/lstm_cell_16/BiasAdd/ReadVariableOp?(while/lstm_cell_16/MatMul/ReadVariableOp?*while/lstm_cell_16/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitz
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2|
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2t
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2|
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2q
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2y
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?"
?
while_body_104524
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_15_104548_0:	?.
while_lstm_cell_15_104550_0:	d?*
while_lstm_cell_15_104552_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_15_104548:	?,
while_lstm_cell_15_104550:	d?(
while_lstm_cell_15_104552:	???*while/lstm_cell_15/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
*while/lstm_cell_15/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_15_104548_0while_lstm_cell_15_104550_0while_lstm_cell_15_104552_0*
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
GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_104510?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_15/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_15/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity3while/lstm_cell_15/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dy

while/NoOpNoOp+^while/lstm_cell_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_15_104548while_lstm_cell_15_104548_0"8
while_lstm_cell_15_104550while_lstm_cell_15_104550_0"8
while_lstm_cell_15_104552while_lstm_cell_15_104552_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_15/StatefulPartitionedCall*while/lstm_cell_15/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?
'sequential_21_lstm_64_while_cond_104213H
Dsequential_21_lstm_64_while_sequential_21_lstm_64_while_loop_counterN
Jsequential_21_lstm_64_while_sequential_21_lstm_64_while_maximum_iterations+
'sequential_21_lstm_64_while_placeholder-
)sequential_21_lstm_64_while_placeholder_1-
)sequential_21_lstm_64_while_placeholder_2-
)sequential_21_lstm_64_while_placeholder_3J
Fsequential_21_lstm_64_while_less_sequential_21_lstm_64_strided_slice_1`
\sequential_21_lstm_64_while_sequential_21_lstm_64_while_cond_104213___redundant_placeholder0`
\sequential_21_lstm_64_while_sequential_21_lstm_64_while_cond_104213___redundant_placeholder1`
\sequential_21_lstm_64_while_sequential_21_lstm_64_while_cond_104213___redundant_placeholder2`
\sequential_21_lstm_64_while_sequential_21_lstm_64_while_cond_104213___redundant_placeholder3(
$sequential_21_lstm_64_while_identity
?
 sequential_21/lstm_64/while/LessLess'sequential_21_lstm_64_while_placeholderFsequential_21_lstm_64_while_less_sequential_21_lstm_64_strided_slice_1*
T0*
_output_shapes
: w
$sequential_21/lstm_64/while/IdentityIdentity$sequential_21/lstm_64/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_21_lstm_64_while_identity-sequential_21/lstm_64/while/Identity:output:0*(
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
C__inference_lstm_63_layer_call_and_return_conditional_losses_107941
inputs_0>
+lstm_cell_15_matmul_readvariableop_resource:	?@
-lstm_cell_15_matmul_1_readvariableop_resource:	d?;
,lstm_cell_15_biasadd_readvariableop_resource:	?
identity??#lstm_cell_15/BiasAdd/ReadVariableOp?"lstm_cell_15/MatMul/ReadVariableOp?$lstm_cell_15/MatMul_1/ReadVariableOp?while=
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
"lstm_cell_15/MatMul/ReadVariableOpReadVariableOp+lstm_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_15/MatMulMatMulstrided_slice_2:output:0*lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_15_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_15/MatMul_1MatMulzeros:output:0,lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_15/addAddV2lstm_cell_15/MatMul:product:0lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_15/BiasAddBiasAddlstm_cell_15/add:z:0+lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_15/splitSplit%lstm_cell_15/split/split_dim:output:0lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitn
lstm_cell_15/SigmoidSigmoidlstm_cell_15/split:output:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_15/Sigmoid_1Sigmoidlstm_cell_15/split:output:1*
T0*'
_output_shapes
:?????????dw
lstm_cell_15/mulMullstm_cell_15/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dh
lstm_cell_15/ReluRelulstm_cell_15/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_15/mul_1Mullstm_cell_15/Sigmoid:y:0lstm_cell_15/Relu:activations:0*
T0*'
_output_shapes
:?????????d{
lstm_cell_15/add_1AddV2lstm_cell_15/mul:z:0lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_15/Sigmoid_2Sigmoidlstm_cell_15/split:output:3*
T0*'
_output_shapes
:?????????de
lstm_cell_15/Relu_1Relulstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_15/mul_2Mullstm_cell_15/Sigmoid_2:y:0!lstm_cell_15/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_15_matmul_readvariableop_resource-lstm_cell_15_matmul_1_readvariableop_resource,lstm_cell_15_biasadd_readvariableop_resource*
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
bodyR
while_body_107857*
condR
while_cond_107856*K
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
NoOpNoOp$^lstm_cell_15/BiasAdd/ReadVariableOp#^lstm_cell_15/MatMul/ReadVariableOp%^lstm_cell_15/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_15/BiasAdd/ReadVariableOp#lstm_cell_15/BiasAdd/ReadVariableOp2H
"lstm_cell_15/MatMul/ReadVariableOp"lstm_cell_15/MatMul/ReadVariableOp2L
$lstm_cell_15/MatMul_1/ReadVariableOp$lstm_cell_15/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_106238
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_106238___redundant_placeholder04
0while_while_cond_106238___redundant_placeholder14
0while_while_cond_106238___redundant_placeholder24
0while_while_cond_106238___redundant_placeholder3
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
I__inference_sequential_21_layer_call_and_return_conditional_losses_106668
lstm_63_input!
lstm_63_106641:	?!
lstm_63_106643:	d?
lstm_63_106645:	?!
lstm_64_106648:	d?!
lstm_64_106650:	2?
lstm_64_106652:	? 
lstm_65_106655:2( 
lstm_65_106657:
(
lstm_65_106659:(!
dense_21_106662:

dense_21_106664:
identity?? dense_21/StatefulPartitionedCall?lstm_63/StatefulPartitionedCall?lstm_64/StatefulPartitionedCall?lstm_65/StatefulPartitionedCall?
lstm_63/StatefulPartitionedCallStatefulPartitionedCalllstm_63_inputlstm_63_106641lstm_63_106643lstm_63_106645*
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
GPU 2J 8? *L
fGRE
C__inference_lstm_63_layer_call_and_return_conditional_losses_106488?
lstm_64/StatefulPartitionedCallStatefulPartitionedCall(lstm_63/StatefulPartitionedCall:output:0lstm_64_106648lstm_64_106650lstm_64_106652*
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
GPU 2J 8? *L
fGRE
C__inference_lstm_64_layer_call_and_return_conditional_losses_106323?
lstm_65/StatefulPartitionedCallStatefulPartitionedCall(lstm_64/StatefulPartitionedCall:output:0lstm_65_106655lstm_65_106657lstm_65_106659*
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
GPU 2J 8? *L
fGRE
C__inference_lstm_65_layer_call_and_return_conditional_losses_106158?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall(lstm_65/StatefulPartitionedCall:output:0dense_21_106662dense_21_106664*
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
GPU 2J 8? *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_105960x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_21/StatefulPartitionedCall ^lstm_63/StatefulPartitionedCall ^lstm_64/StatefulPartitionedCall ^lstm_65/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2B
lstm_63/StatefulPartitionedCalllstm_63/StatefulPartitionedCall2B
lstm_64/StatefulPartitionedCalllstm_64/StatefulPartitionedCall2B
lstm_65/StatefulPartitionedCalllstm_65/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_63_input
?
?
while_cond_109231
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_109231___redundant_placeholder04
0while_while_cond_109231___redundant_placeholder14
0while_while_cond_109231___redundant_placeholder24
0while_while_cond_109231___redundant_placeholder3
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
-__inference_lstm_cell_17_layer_call_fn_109691

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
GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_105210o
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
while_cond_109374
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_109374___redundant_placeholder04
0while_while_cond_109374___redundant_placeholder14
0while_while_cond_109374___redundant_placeholder24
0while_while_cond_109374___redundant_placeholder3
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
while_body_106404
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_15_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_15_matmul_1_readvariableop_resource_0:	d?C
4while_lstm_cell_15_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_15_matmul_readvariableop_resource:	?F
3while_lstm_cell_15_matmul_1_readvariableop_resource:	d?A
2while_lstm_cell_15_biasadd_readvariableop_resource:	???)while/lstm_cell_15/BiasAdd/ReadVariableOp?(while/lstm_cell_15/MatMul/ReadVariableOp?*while/lstm_cell_15/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
(while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_15/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_15/addAddV2#while/lstm_cell_15/MatMul:product:0%while/lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_15/BiasAddBiasAddwhile/lstm_cell_15/add:z:01while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_15/splitSplit+while/lstm_cell_15/split/split_dim:output:0#while/lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitz
while/lstm_cell_15/SigmoidSigmoid!while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_15/Sigmoid_1Sigmoid!while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_15/mulMul while/lstm_cell_15/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dt
while/lstm_cell_15/ReluRelu!while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_15/mul_1Mulwhile/lstm_cell_15/Sigmoid:y:0%while/lstm_cell_15/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_15/add_1AddV2while/lstm_cell_15/mul:z:0while/lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_15/Sigmoid_2Sigmoid!while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:?????????dq
while/lstm_cell_15/Relu_1Reluwhile/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_15/mul_2Mul while/lstm_cell_15/Sigmoid_2:y:0'while/lstm_cell_15/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_15/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_15/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dy
while/Identity_5Identitywhile/lstm_cell_15/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_15_biasadd_readvariableop_resource4while_lstm_cell_15_biasadd_readvariableop_resource_0"l
3while_lstm_cell_15_matmul_1_readvariableop_resource5while_lstm_cell_15_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_15_matmul_readvariableop_resource3while_lstm_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2V
)while/lstm_cell_15/BiasAdd/ReadVariableOp)while/lstm_cell_15/BiasAdd/ReadVariableOp2T
(while/lstm_cell_15/MatMul/ReadVariableOp(while/lstm_cell_15/MatMul/ReadVariableOp2X
*while/lstm_cell_15/MatMul_1/ReadVariableOp*while/lstm_cell_15/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?7
?
while_body_109232
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_17_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_17_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_17_matmul_readvariableop_resource:2(E
3while_lstm_cell_17_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_17_biasadd_readvariableop_resource:(??)while/lstm_cell_17/BiasAdd/ReadVariableOp?(while/lstm_cell_17/MatMul/ReadVariableOp?*while/lstm_cell_17/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitz
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????
|
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
t
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????
|
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????
q
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_17/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
y
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?7
?
while_body_106074
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_17_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_17_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_17_matmul_readvariableop_resource:2(E
3while_lstm_cell_17_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_17_biasadd_readvariableop_resource:(??)while/lstm_cell_17/BiasAdd/ReadVariableOp?(while/lstm_cell_17/MatMul/ReadVariableOp?*while/lstm_cell_17/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitz
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????
|
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
t
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????
|
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????
q
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_17/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
y
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_108615
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_108615___redundant_placeholder04
0while_while_cond_108615___redundant_placeholder14
0while_while_cond_108615___redundant_placeholder24
0while_while_cond_108615___redundant_placeholder3
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
-__inference_lstm_cell_15_layer_call_fn_109495

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
GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_104510o
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
?7
?
while_body_109089
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_17_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_17_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_17_matmul_readvariableop_resource:2(E
3while_lstm_cell_17_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_17_biasadd_readvariableop_resource:(??)while/lstm_cell_17/BiasAdd/ReadVariableOp?(while/lstm_cell_17/MatMul/ReadVariableOp?*while/lstm_cell_17/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitz
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????
|
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
t
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????
|
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????
q
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_17/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
y
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_105064
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_105064___redundant_placeholder04
0while_while_cond_105064___redundant_placeholder14
0while_while_cond_105064___redundant_placeholder24
0while_while_cond_105064___redundant_placeholder3
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
while_cond_104523
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_104523___redundant_placeholder04
0while_while_cond_104523___redundant_placeholder14
0while_while_cond_104523___redundant_placeholder24
0while_while_cond_104523___redundant_placeholder3
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
?	
?
D__inference_dense_21_layer_call_and_return_conditional_losses_105960

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
?A
?

lstm_64_while_body_106955,
(lstm_64_while_lstm_64_while_loop_counter2
.lstm_64_while_lstm_64_while_maximum_iterations
lstm_64_while_placeholder
lstm_64_while_placeholder_1
lstm_64_while_placeholder_2
lstm_64_while_placeholder_3+
'lstm_64_while_lstm_64_strided_slice_1_0g
clstm_64_while_tensorarrayv2read_tensorlistgetitem_lstm_64_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_64_while_lstm_cell_16_matmul_readvariableop_resource_0:	d?P
=lstm_64_while_lstm_cell_16_matmul_1_readvariableop_resource_0:	2?K
<lstm_64_while_lstm_cell_16_biasadd_readvariableop_resource_0:	?
lstm_64_while_identity
lstm_64_while_identity_1
lstm_64_while_identity_2
lstm_64_while_identity_3
lstm_64_while_identity_4
lstm_64_while_identity_5)
%lstm_64_while_lstm_64_strided_slice_1e
alstm_64_while_tensorarrayv2read_tensorlistgetitem_lstm_64_tensorarrayunstack_tensorlistfromtensorL
9lstm_64_while_lstm_cell_16_matmul_readvariableop_resource:	d?N
;lstm_64_while_lstm_cell_16_matmul_1_readvariableop_resource:	2?I
:lstm_64_while_lstm_cell_16_biasadd_readvariableop_resource:	???1lstm_64/while/lstm_cell_16/BiasAdd/ReadVariableOp?0lstm_64/while/lstm_cell_16/MatMul/ReadVariableOp?2lstm_64/while/lstm_cell_16/MatMul_1/ReadVariableOp?
?lstm_64/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
1lstm_64/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_64_while_tensorarrayv2read_tensorlistgetitem_lstm_64_tensorarrayunstack_tensorlistfromtensor_0lstm_64_while_placeholderHlstm_64/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
0lstm_64/while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp;lstm_64_while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
!lstm_64/while/lstm_cell_16/MatMulMatMul8lstm_64/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_64/while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
2lstm_64/while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp=lstm_64_while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
#lstm_64/while/lstm_cell_16/MatMul_1MatMullstm_64_while_placeholder_2:lstm_64/while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_64/while/lstm_cell_16/addAddV2+lstm_64/while/lstm_cell_16/MatMul:product:0-lstm_64/while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
1lstm_64/while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp<lstm_64_while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
"lstm_64/while/lstm_cell_16/BiasAddBiasAdd"lstm_64/while/lstm_cell_16/add:z:09lstm_64/while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????l
*lstm_64/while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
 lstm_64/while/lstm_cell_16/splitSplit3lstm_64/while/lstm_cell_16/split/split_dim:output:0+lstm_64/while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
"lstm_64/while/lstm_cell_16/SigmoidSigmoid)lstm_64/while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2?
$lstm_64/while/lstm_cell_16/Sigmoid_1Sigmoid)lstm_64/while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_64/while/lstm_cell_16/mulMul(lstm_64/while/lstm_cell_16/Sigmoid_1:y:0lstm_64_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
lstm_64/while/lstm_cell_16/ReluRelu)lstm_64/while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2?
 lstm_64/while/lstm_cell_16/mul_1Mul&lstm_64/while/lstm_cell_16/Sigmoid:y:0-lstm_64/while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
 lstm_64/while/lstm_cell_16/add_1AddV2"lstm_64/while/lstm_cell_16/mul:z:0$lstm_64/while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
$lstm_64/while/lstm_cell_16/Sigmoid_2Sigmoid)lstm_64/while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2?
!lstm_64/while/lstm_cell_16/Relu_1Relu$lstm_64/while/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_64/while/lstm_cell_16/mul_2Mul(lstm_64/while/lstm_cell_16/Sigmoid_2:y:0/lstm_64/while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
2lstm_64/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_64_while_placeholder_1lstm_64_while_placeholder$lstm_64/while/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_64/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_64/while/addAddV2lstm_64_while_placeholderlstm_64/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_64/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_64/while/add_1AddV2(lstm_64_while_lstm_64_while_loop_counterlstm_64/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_64/while/IdentityIdentitylstm_64/while/add_1:z:0^lstm_64/while/NoOp*
T0*
_output_shapes
: ?
lstm_64/while/Identity_1Identity.lstm_64_while_lstm_64_while_maximum_iterations^lstm_64/while/NoOp*
T0*
_output_shapes
: q
lstm_64/while/Identity_2Identitylstm_64/while/add:z:0^lstm_64/while/NoOp*
T0*
_output_shapes
: ?
lstm_64/while/Identity_3IdentityBlstm_64/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_64/while/NoOp*
T0*
_output_shapes
: ?
lstm_64/while/Identity_4Identity$lstm_64/while/lstm_cell_16/mul_2:z:0^lstm_64/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_64/while/Identity_5Identity$lstm_64/while/lstm_cell_16/add_1:z:0^lstm_64/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_64/while/NoOpNoOp2^lstm_64/while/lstm_cell_16/BiasAdd/ReadVariableOp1^lstm_64/while/lstm_cell_16/MatMul/ReadVariableOp3^lstm_64/while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_64_while_identitylstm_64/while/Identity:output:0"=
lstm_64_while_identity_1!lstm_64/while/Identity_1:output:0"=
lstm_64_while_identity_2!lstm_64/while/Identity_2:output:0"=
lstm_64_while_identity_3!lstm_64/while/Identity_3:output:0"=
lstm_64_while_identity_4!lstm_64/while/Identity_4:output:0"=
lstm_64_while_identity_5!lstm_64/while/Identity_5:output:0"P
%lstm_64_while_lstm_64_strided_slice_1'lstm_64_while_lstm_64_strided_slice_1_0"z
:lstm_64_while_lstm_cell_16_biasadd_readvariableop_resource<lstm_64_while_lstm_cell_16_biasadd_readvariableop_resource_0"|
;lstm_64_while_lstm_cell_16_matmul_1_readvariableop_resource=lstm_64_while_lstm_cell_16_matmul_1_readvariableop_resource_0"x
9lstm_64_while_lstm_cell_16_matmul_readvariableop_resource;lstm_64_while_lstm_cell_16_matmul_readvariableop_resource_0"?
alstm_64_while_tensorarrayv2read_tensorlistgetitem_lstm_64_tensorarrayunstack_tensorlistfromtensorclstm_64_while_tensorarrayv2read_tensorlistgetitem_lstm_64_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2f
1lstm_64/while/lstm_cell_16/BiasAdd/ReadVariableOp1lstm_64/while/lstm_cell_16/BiasAdd/ReadVariableOp2d
0lstm_64/while/lstm_cell_16/MatMul/ReadVariableOp0lstm_64/while/lstm_cell_16/MatMul/ReadVariableOp2h
2lstm_64/while/lstm_cell_16/MatMul_1/ReadVariableOp2lstm_64/while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_sequential_21_layer_call_and_return_conditional_losses_106556

inputs!
lstm_63_106529:	?!
lstm_63_106531:	d?
lstm_63_106533:	?!
lstm_64_106536:	d?!
lstm_64_106538:	2?
lstm_64_106540:	? 
lstm_65_106543:2( 
lstm_65_106545:
(
lstm_65_106547:(!
dense_21_106550:

dense_21_106552:
identity?? dense_21/StatefulPartitionedCall?lstm_63/StatefulPartitionedCall?lstm_64/StatefulPartitionedCall?lstm_65/StatefulPartitionedCall?
lstm_63/StatefulPartitionedCallStatefulPartitionedCallinputslstm_63_106529lstm_63_106531lstm_63_106533*
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
GPU 2J 8? *L
fGRE
C__inference_lstm_63_layer_call_and_return_conditional_losses_106488?
lstm_64/StatefulPartitionedCallStatefulPartitionedCall(lstm_63/StatefulPartitionedCall:output:0lstm_64_106536lstm_64_106538lstm_64_106540*
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
GPU 2J 8? *L
fGRE
C__inference_lstm_64_layer_call_and_return_conditional_losses_106323?
lstm_65/StatefulPartitionedCallStatefulPartitionedCall(lstm_64/StatefulPartitionedCall:output:0lstm_65_106543lstm_65_106545lstm_65_106547*
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
GPU 2J 8? *L
fGRE
C__inference_lstm_65_layer_call_and_return_conditional_losses_106158?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall(lstm_65/StatefulPartitionedCall:output:0dense_21_106550dense_21_106552*
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
GPU 2J 8? *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_105960x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_21/StatefulPartitionedCall ^lstm_63/StatefulPartitionedCall ^lstm_64/StatefulPartitionedCall ^lstm_65/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2B
lstm_63/StatefulPartitionedCalllstm_63/StatefulPartitionedCall2B
lstm_64/StatefulPartitionedCalllstm_64/StatefulPartitionedCall2B
lstm_65/StatefulPartitionedCalllstm_65/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_64_while_cond_106954,
(lstm_64_while_lstm_64_while_loop_counter2
.lstm_64_while_lstm_64_while_maximum_iterations
lstm_64_while_placeholder
lstm_64_while_placeholder_1
lstm_64_while_placeholder_2
lstm_64_while_placeholder_3.
*lstm_64_while_less_lstm_64_strided_slice_1D
@lstm_64_while_lstm_64_while_cond_106954___redundant_placeholder0D
@lstm_64_while_lstm_64_while_cond_106954___redundant_placeholder1D
@lstm_64_while_lstm_64_while_cond_106954___redundant_placeholder2D
@lstm_64_while_lstm_64_while_cond_106954___redundant_placeholder3
lstm_64_while_identity
?
lstm_64/while/LessLesslstm_64_while_placeholder*lstm_64_while_less_lstm_64_strided_slice_1*
T0*
_output_shapes
: [
lstm_64/while/IdentityIdentitylstm_64/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_64_while_identitylstm_64/while/Identity:output:0*(
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

?
lstm_63_while_cond_107242,
(lstm_63_while_lstm_63_while_loop_counter2
.lstm_63_while_lstm_63_while_maximum_iterations
lstm_63_while_placeholder
lstm_63_while_placeholder_1
lstm_63_while_placeholder_2
lstm_63_while_placeholder_3.
*lstm_63_while_less_lstm_63_strided_slice_1D
@lstm_63_while_lstm_63_while_cond_107242___redundant_placeholder0D
@lstm_63_while_lstm_63_while_cond_107242___redundant_placeholder1D
@lstm_63_while_lstm_63_while_cond_107242___redundant_placeholder2D
@lstm_63_while_lstm_63_while_cond_107242___redundant_placeholder3
lstm_63_while_identity
?
lstm_63/while/LessLesslstm_63_while_placeholder*lstm_63_while_less_lstm_63_strided_slice_1*
T0*
_output_shapes
: [
lstm_63/while/IdentityIdentitylstm_63/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_63_while_identitylstm_63/while/Identity:output:0*(
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
C__inference_lstm_63_layer_call_and_return_conditional_losses_107798
inputs_0>
+lstm_cell_15_matmul_readvariableop_resource:	?@
-lstm_cell_15_matmul_1_readvariableop_resource:	d?;
,lstm_cell_15_biasadd_readvariableop_resource:	?
identity??#lstm_cell_15/BiasAdd/ReadVariableOp?"lstm_cell_15/MatMul/ReadVariableOp?$lstm_cell_15/MatMul_1/ReadVariableOp?while=
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
"lstm_cell_15/MatMul/ReadVariableOpReadVariableOp+lstm_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_15/MatMulMatMulstrided_slice_2:output:0*lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_15_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_15/MatMul_1MatMulzeros:output:0,lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_15/addAddV2lstm_cell_15/MatMul:product:0lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_15/BiasAddBiasAddlstm_cell_15/add:z:0+lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_15/splitSplit%lstm_cell_15/split/split_dim:output:0lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitn
lstm_cell_15/SigmoidSigmoidlstm_cell_15/split:output:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_15/Sigmoid_1Sigmoidlstm_cell_15/split:output:1*
T0*'
_output_shapes
:?????????dw
lstm_cell_15/mulMullstm_cell_15/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dh
lstm_cell_15/ReluRelulstm_cell_15/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_15/mul_1Mullstm_cell_15/Sigmoid:y:0lstm_cell_15/Relu:activations:0*
T0*'
_output_shapes
:?????????d{
lstm_cell_15/add_1AddV2lstm_cell_15/mul:z:0lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_15/Sigmoid_2Sigmoidlstm_cell_15/split:output:3*
T0*'
_output_shapes
:?????????de
lstm_cell_15/Relu_1Relulstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_15/mul_2Mullstm_cell_15/Sigmoid_2:y:0!lstm_cell_15/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_15_matmul_readvariableop_resource-lstm_cell_15_matmul_1_readvariableop_resource,lstm_cell_15_biasadd_readvariableop_resource*
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
bodyR
while_body_107714*
condR
while_cond_107713*K
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
NoOpNoOp$^lstm_cell_15/BiasAdd/ReadVariableOp#^lstm_cell_15/MatMul/ReadVariableOp%^lstm_cell_15/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_15/BiasAdd/ReadVariableOp#lstm_cell_15/BiasAdd/ReadVariableOp2H
"lstm_cell_15/MatMul/ReadVariableOp"lstm_cell_15/MatMul/ReadVariableOp2L
$lstm_cell_15/MatMul_1/ReadVariableOp$lstm_cell_15/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
C__inference_lstm_65_layer_call_and_return_conditional_losses_105942

inputs=
+lstm_cell_17_matmul_readvariableop_resource:2(?
-lstm_cell_17_matmul_1_readvariableop_resource:
(:
,lstm_cell_17_biasadd_readvariableop_resource:(
identity??#lstm_cell_17/BiasAdd/ReadVariableOp?"lstm_cell_17/MatMul/ReadVariableOp?$lstm_cell_17/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(^
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitn
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????
p
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????
w
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
h
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????
{
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????
p
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????
e
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
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
bodyR
while_body_105858*
condR
while_cond_105857*K
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
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
(__inference_lstm_63_layer_call_fn_107633
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
GPU 2J 8? *L
fGRE
C__inference_lstm_63_layer_call_and_return_conditional_losses_104784|
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
?
while_body_105558
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_15_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_15_matmul_1_readvariableop_resource_0:	d?C
4while_lstm_cell_15_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_15_matmul_readvariableop_resource:	?F
3while_lstm_cell_15_matmul_1_readvariableop_resource:	d?A
2while_lstm_cell_15_biasadd_readvariableop_resource:	???)while/lstm_cell_15/BiasAdd/ReadVariableOp?(while/lstm_cell_15/MatMul/ReadVariableOp?*while/lstm_cell_15/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
(while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_15/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_15/addAddV2#while/lstm_cell_15/MatMul:product:0%while/lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_15/BiasAddBiasAddwhile/lstm_cell_15/add:z:01while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_15/splitSplit+while/lstm_cell_15/split/split_dim:output:0#while/lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitz
while/lstm_cell_15/SigmoidSigmoid!while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_15/Sigmoid_1Sigmoid!while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_15/mulMul while/lstm_cell_15/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dt
while/lstm_cell_15/ReluRelu!while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_15/mul_1Mulwhile/lstm_cell_15/Sigmoid:y:0%while/lstm_cell_15/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_15/add_1AddV2while/lstm_cell_15/mul:z:0while/lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_15/Sigmoid_2Sigmoid!while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:?????????dq
while/lstm_cell_15/Relu_1Reluwhile/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_15/mul_2Mul while/lstm_cell_15/Sigmoid_2:y:0'while/lstm_cell_15/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_15/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_15/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dy
while/Identity_5Identitywhile/lstm_cell_15/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_15_biasadd_readvariableop_resource4while_lstm_cell_15_biasadd_readvariableop_resource_0"l
3while_lstm_cell_15_matmul_1_readvariableop_resource5while_lstm_cell_15_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_15_matmul_readvariableop_resource3while_lstm_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2V
)while/lstm_cell_15/BiasAdd/ReadVariableOp)while/lstm_cell_15/BiasAdd/ReadVariableOp2T
(while/lstm_cell_15/MatMul/ReadVariableOp(while/lstm_cell_15/MatMul/ReadVariableOp2X
*while/lstm_cell_15/MatMul_1/ReadVariableOp*while/lstm_cell_15/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_sequential_21_layer_call_and_return_conditional_losses_106638
lstm_63_input!
lstm_63_106611:	?!
lstm_63_106613:	d?
lstm_63_106615:	?!
lstm_64_106618:	d?!
lstm_64_106620:	2?
lstm_64_106622:	? 
lstm_65_106625:2( 
lstm_65_106627:
(
lstm_65_106629:(!
dense_21_106632:

dense_21_106634:
identity?? dense_21/StatefulPartitionedCall?lstm_63/StatefulPartitionedCall?lstm_64/StatefulPartitionedCall?lstm_65/StatefulPartitionedCall?
lstm_63/StatefulPartitionedCallStatefulPartitionedCalllstm_63_inputlstm_63_106611lstm_63_106613lstm_63_106615*
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
GPU 2J 8? *L
fGRE
C__inference_lstm_63_layer_call_and_return_conditional_losses_105642?
lstm_64/StatefulPartitionedCallStatefulPartitionedCall(lstm_63/StatefulPartitionedCall:output:0lstm_64_106618lstm_64_106620lstm_64_106622*
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
GPU 2J 8? *L
fGRE
C__inference_lstm_64_layer_call_and_return_conditional_losses_105792?
lstm_65/StatefulPartitionedCallStatefulPartitionedCall(lstm_64/StatefulPartitionedCall:output:0lstm_65_106625lstm_65_106627lstm_65_106629*
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
GPU 2J 8? *L
fGRE
C__inference_lstm_65_layer_call_and_return_conditional_losses_105942?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall(lstm_65/StatefulPartitionedCall:output:0dense_21_106632dense_21_106634*
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
GPU 2J 8? *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_105960x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_21/StatefulPartitionedCall ^lstm_63/StatefulPartitionedCall ^lstm_64/StatefulPartitionedCall ^lstm_65/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2B
lstm_63/StatefulPartitionedCalllstm_63/StatefulPartitionedCall2B
lstm_64/StatefulPartitionedCalllstm_64/StatefulPartitionedCall2B
lstm_65/StatefulPartitionedCalllstm_65/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_63_input
?7
?
while_body_108946
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_17_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_17_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_17_matmul_readvariableop_resource:2(E
3while_lstm_cell_17_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_17_biasadd_readvariableop_resource:(??)while/lstm_cell_17/BiasAdd/ReadVariableOp?(while/lstm_cell_17/MatMul/ReadVariableOp?*while/lstm_cell_17/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitz
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????
|
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
t
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????
|
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????
q
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_17/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
y
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_105557
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_105557___redundant_placeholder04
0while_while_cond_105557___redundant_placeholder14
0while_while_cond_105557___redundant_placeholder24
0while_while_cond_105557___redundant_placeholder3
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
C__inference_lstm_65_layer_call_and_return_conditional_losses_106158

inputs=
+lstm_cell_17_matmul_readvariableop_resource:2(?
-lstm_cell_17_matmul_1_readvariableop_resource:
(:
,lstm_cell_17_biasadd_readvariableop_resource:(
identity??#lstm_cell_17/BiasAdd/ReadVariableOp?"lstm_cell_17/MatMul/ReadVariableOp?$lstm_cell_17/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(^
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitn
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????
p
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????
w
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
h
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????
{
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????
p
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????
e
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
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
bodyR
while_body_106074*
condR
while_cond_106073*K
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
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
(__inference_lstm_64_layer_call_fn_108249
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
GPU 2J 8? *L
fGRE
C__inference_lstm_64_layer_call_and_return_conditional_losses_105134|
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
?
?
(__inference_lstm_63_layer_call_fn_107655

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
GPU 2J 8? *L
fGRE
C__inference_lstm_63_layer_call_and_return_conditional_losses_106488s
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
?
?
(__inference_lstm_65_layer_call_fn_108865
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
GPU 2J 8? *L
fGRE
C__inference_lstm_65_layer_call_and_return_conditional_losses_105484o
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
while_body_107714
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_15_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_15_matmul_1_readvariableop_resource_0:	d?C
4while_lstm_cell_15_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_15_matmul_readvariableop_resource:	?F
3while_lstm_cell_15_matmul_1_readvariableop_resource:	d?A
2while_lstm_cell_15_biasadd_readvariableop_resource:	???)while/lstm_cell_15/BiasAdd/ReadVariableOp?(while/lstm_cell_15/MatMul/ReadVariableOp?*while/lstm_cell_15/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
(while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_15/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_15/addAddV2#while/lstm_cell_15/MatMul:product:0%while/lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_15/BiasAddBiasAddwhile/lstm_cell_15/add:z:01while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_15/splitSplit+while/lstm_cell_15/split/split_dim:output:0#while/lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitz
while/lstm_cell_15/SigmoidSigmoid!while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_15/Sigmoid_1Sigmoid!while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_15/mulMul while/lstm_cell_15/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dt
while/lstm_cell_15/ReluRelu!while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_15/mul_1Mulwhile/lstm_cell_15/Sigmoid:y:0%while/lstm_cell_15/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_15/add_1AddV2while/lstm_cell_15/mul:z:0while/lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_15/Sigmoid_2Sigmoid!while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:?????????dq
while/lstm_cell_15/Relu_1Reluwhile/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_15/mul_2Mul while/lstm_cell_15/Sigmoid_2:y:0'while/lstm_cell_15/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_15/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_15/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dy
while/Identity_5Identitywhile/lstm_cell_15/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_15_biasadd_readvariableop_resource4while_lstm_cell_15_biasadd_readvariableop_resource_0"l
3while_lstm_cell_15_matmul_1_readvariableop_resource5while_lstm_cell_15_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_15_matmul_readvariableop_resource3while_lstm_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2V
)while/lstm_cell_15/BiasAdd/ReadVariableOp)while/lstm_cell_15/BiasAdd/ReadVariableOp2T
(while/lstm_cell_15/MatMul/ReadVariableOp(while/lstm_cell_15/MatMul/ReadVariableOp2X
*while/lstm_cell_15/MatMul_1/ReadVariableOp*while/lstm_cell_15/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
-__inference_lstm_cell_15_layer_call_fn_109512

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
GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_104656o
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
?A
?

lstm_63_while_body_107243,
(lstm_63_while_lstm_63_while_loop_counter2
.lstm_63_while_lstm_63_while_maximum_iterations
lstm_63_while_placeholder
lstm_63_while_placeholder_1
lstm_63_while_placeholder_2
lstm_63_while_placeholder_3+
'lstm_63_while_lstm_63_strided_slice_1_0g
clstm_63_while_tensorarrayv2read_tensorlistgetitem_lstm_63_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_63_while_lstm_cell_15_matmul_readvariableop_resource_0:	?P
=lstm_63_while_lstm_cell_15_matmul_1_readvariableop_resource_0:	d?K
<lstm_63_while_lstm_cell_15_biasadd_readvariableop_resource_0:	?
lstm_63_while_identity
lstm_63_while_identity_1
lstm_63_while_identity_2
lstm_63_while_identity_3
lstm_63_while_identity_4
lstm_63_while_identity_5)
%lstm_63_while_lstm_63_strided_slice_1e
alstm_63_while_tensorarrayv2read_tensorlistgetitem_lstm_63_tensorarrayunstack_tensorlistfromtensorL
9lstm_63_while_lstm_cell_15_matmul_readvariableop_resource:	?N
;lstm_63_while_lstm_cell_15_matmul_1_readvariableop_resource:	d?I
:lstm_63_while_lstm_cell_15_biasadd_readvariableop_resource:	???1lstm_63/while/lstm_cell_15/BiasAdd/ReadVariableOp?0lstm_63/while/lstm_cell_15/MatMul/ReadVariableOp?2lstm_63/while/lstm_cell_15/MatMul_1/ReadVariableOp?
?lstm_63/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
1lstm_63/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_63_while_tensorarrayv2read_tensorlistgetitem_lstm_63_tensorarrayunstack_tensorlistfromtensor_0lstm_63_while_placeholderHlstm_63/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
0lstm_63/while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp;lstm_63_while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
!lstm_63/while/lstm_cell_15/MatMulMatMul8lstm_63/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_63/while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
2lstm_63/while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp=lstm_63_while_lstm_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_63/while/lstm_cell_15/MatMul_1MatMullstm_63_while_placeholder_2:lstm_63/while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_63/while/lstm_cell_15/addAddV2+lstm_63/while/lstm_cell_15/MatMul:product:0-lstm_63/while/lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
1lstm_63/while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp<lstm_63_while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
"lstm_63/while/lstm_cell_15/BiasAddBiasAdd"lstm_63/while/lstm_cell_15/add:z:09lstm_63/while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????l
*lstm_63/while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
 lstm_63/while/lstm_cell_15/splitSplit3lstm_63/while/lstm_cell_15/split/split_dim:output:0+lstm_63/while/lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
"lstm_63/while/lstm_cell_15/SigmoidSigmoid)lstm_63/while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:?????????d?
$lstm_63/while/lstm_cell_15/Sigmoid_1Sigmoid)lstm_63/while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_63/while/lstm_cell_15/mulMul(lstm_63/while/lstm_cell_15/Sigmoid_1:y:0lstm_63_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
lstm_63/while/lstm_cell_15/ReluRelu)lstm_63/while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:?????????d?
 lstm_63/while/lstm_cell_15/mul_1Mul&lstm_63/while/lstm_cell_15/Sigmoid:y:0-lstm_63/while/lstm_cell_15/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
 lstm_63/while/lstm_cell_15/add_1AddV2"lstm_63/while/lstm_cell_15/mul:z:0$lstm_63/while/lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
$lstm_63/while/lstm_cell_15/Sigmoid_2Sigmoid)lstm_63/while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:?????????d?
!lstm_63/while/lstm_cell_15/Relu_1Relu$lstm_63/while/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_63/while/lstm_cell_15/mul_2Mul(lstm_63/while/lstm_cell_15/Sigmoid_2:y:0/lstm_63/while/lstm_cell_15/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
2lstm_63/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_63_while_placeholder_1lstm_63_while_placeholder$lstm_63/while/lstm_cell_15/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_63/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_63/while/addAddV2lstm_63_while_placeholderlstm_63/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_63/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_63/while/add_1AddV2(lstm_63_while_lstm_63_while_loop_counterlstm_63/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_63/while/IdentityIdentitylstm_63/while/add_1:z:0^lstm_63/while/NoOp*
T0*
_output_shapes
: ?
lstm_63/while/Identity_1Identity.lstm_63_while_lstm_63_while_maximum_iterations^lstm_63/while/NoOp*
T0*
_output_shapes
: q
lstm_63/while/Identity_2Identitylstm_63/while/add:z:0^lstm_63/while/NoOp*
T0*
_output_shapes
: ?
lstm_63/while/Identity_3IdentityBlstm_63/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_63/while/NoOp*
T0*
_output_shapes
: ?
lstm_63/while/Identity_4Identity$lstm_63/while/lstm_cell_15/mul_2:z:0^lstm_63/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_63/while/Identity_5Identity$lstm_63/while/lstm_cell_15/add_1:z:0^lstm_63/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_63/while/NoOpNoOp2^lstm_63/while/lstm_cell_15/BiasAdd/ReadVariableOp1^lstm_63/while/lstm_cell_15/MatMul/ReadVariableOp3^lstm_63/while/lstm_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_63_while_identitylstm_63/while/Identity:output:0"=
lstm_63_while_identity_1!lstm_63/while/Identity_1:output:0"=
lstm_63_while_identity_2!lstm_63/while/Identity_2:output:0"=
lstm_63_while_identity_3!lstm_63/while/Identity_3:output:0"=
lstm_63_while_identity_4!lstm_63/while/Identity_4:output:0"=
lstm_63_while_identity_5!lstm_63/while/Identity_5:output:0"P
%lstm_63_while_lstm_63_strided_slice_1'lstm_63_while_lstm_63_strided_slice_1_0"z
:lstm_63_while_lstm_cell_15_biasadd_readvariableop_resource<lstm_63_while_lstm_cell_15_biasadd_readvariableop_resource_0"|
;lstm_63_while_lstm_cell_15_matmul_1_readvariableop_resource=lstm_63_while_lstm_cell_15_matmul_1_readvariableop_resource_0"x
9lstm_63_while_lstm_cell_15_matmul_readvariableop_resource;lstm_63_while_lstm_cell_15_matmul_readvariableop_resource_0"?
alstm_63_while_tensorarrayv2read_tensorlistgetitem_lstm_63_tensorarrayunstack_tensorlistfromtensorclstm_63_while_tensorarrayv2read_tensorlistgetitem_lstm_63_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2f
1lstm_63/while/lstm_cell_15/BiasAdd/ReadVariableOp1lstm_63/while/lstm_cell_15/BiasAdd/ReadVariableOp2d
0lstm_63/while/lstm_cell_15/MatMul/ReadVariableOp0lstm_63/while/lstm_cell_15/MatMul/ReadVariableOp2h
2lstm_63/while/lstm_cell_15/MatMul_1/ReadVariableOp2lstm_63/while/lstm_cell_15/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_107857
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_15_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_15_matmul_1_readvariableop_resource_0:	d?C
4while_lstm_cell_15_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_15_matmul_readvariableop_resource:	?F
3while_lstm_cell_15_matmul_1_readvariableop_resource:	d?A
2while_lstm_cell_15_biasadd_readvariableop_resource:	???)while/lstm_cell_15/BiasAdd/ReadVariableOp?(while/lstm_cell_15/MatMul/ReadVariableOp?*while/lstm_cell_15/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
(while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_15/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_15/addAddV2#while/lstm_cell_15/MatMul:product:0%while/lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_15/BiasAddBiasAddwhile/lstm_cell_15/add:z:01while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_15/splitSplit+while/lstm_cell_15/split/split_dim:output:0#while/lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitz
while/lstm_cell_15/SigmoidSigmoid!while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_15/Sigmoid_1Sigmoid!while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_15/mulMul while/lstm_cell_15/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dt
while/lstm_cell_15/ReluRelu!while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_15/mul_1Mulwhile/lstm_cell_15/Sigmoid:y:0%while/lstm_cell_15/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_15/add_1AddV2while/lstm_cell_15/mul:z:0while/lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_15/Sigmoid_2Sigmoid!while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:?????????dq
while/lstm_cell_15/Relu_1Reluwhile/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_15/mul_2Mul while/lstm_cell_15/Sigmoid_2:y:0'while/lstm_cell_15/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_15/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_15/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dy
while/Identity_5Identitywhile/lstm_cell_15/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_15_biasadd_readvariableop_resource4while_lstm_cell_15_biasadd_readvariableop_resource_0"l
3while_lstm_cell_15_matmul_1_readvariableop_resource5while_lstm_cell_15_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_15_matmul_readvariableop_resource3while_lstm_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2V
)while/lstm_cell_15/BiasAdd/ReadVariableOp)while/lstm_cell_15/BiasAdd/ReadVariableOp2T
(while/lstm_cell_15/MatMul/ReadVariableOp(while/lstm_cell_15/MatMul/ReadVariableOp2X
*while/lstm_cell_15/MatMul_1/ReadVariableOp*while/lstm_cell_15/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_105006

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
??
?

I__inference_sequential_21_layer_call_and_return_conditional_losses_107611

inputsF
3lstm_63_lstm_cell_15_matmul_readvariableop_resource:	?H
5lstm_63_lstm_cell_15_matmul_1_readvariableop_resource:	d?C
4lstm_63_lstm_cell_15_biasadd_readvariableop_resource:	?F
3lstm_64_lstm_cell_16_matmul_readvariableop_resource:	d?H
5lstm_64_lstm_cell_16_matmul_1_readvariableop_resource:	2?C
4lstm_64_lstm_cell_16_biasadd_readvariableop_resource:	?E
3lstm_65_lstm_cell_17_matmul_readvariableop_resource:2(G
5lstm_65_lstm_cell_17_matmul_1_readvariableop_resource:
(B
4lstm_65_lstm_cell_17_biasadd_readvariableop_resource:(9
'dense_21_matmul_readvariableop_resource:
6
(dense_21_biasadd_readvariableop_resource:
identity??dense_21/BiasAdd/ReadVariableOp?dense_21/MatMul/ReadVariableOp?+lstm_63/lstm_cell_15/BiasAdd/ReadVariableOp?*lstm_63/lstm_cell_15/MatMul/ReadVariableOp?,lstm_63/lstm_cell_15/MatMul_1/ReadVariableOp?lstm_63/while?+lstm_64/lstm_cell_16/BiasAdd/ReadVariableOp?*lstm_64/lstm_cell_16/MatMul/ReadVariableOp?,lstm_64/lstm_cell_16/MatMul_1/ReadVariableOp?lstm_64/while?+lstm_65/lstm_cell_17/BiasAdd/ReadVariableOp?*lstm_65/lstm_cell_17/MatMul/ReadVariableOp?,lstm_65/lstm_cell_17/MatMul_1/ReadVariableOp?lstm_65/whileC
lstm_63/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_63/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_63/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_63/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_63/strided_sliceStridedSlicelstm_63/Shape:output:0$lstm_63/strided_slice/stack:output:0&lstm_63/strided_slice/stack_1:output:0&lstm_63/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_63/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_63/zeros/packedPacklstm_63/strided_slice:output:0lstm_63/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_63/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_63/zerosFilllstm_63/zeros/packed:output:0lstm_63/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dZ
lstm_63/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_63/zeros_1/packedPacklstm_63/strided_slice:output:0!lstm_63/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_63/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_63/zeros_1Filllstm_63/zeros_1/packed:output:0lstm_63/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dk
lstm_63/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_63/transpose	Transposeinputslstm_63/transpose/perm:output:0*
T0*+
_output_shapes
:?????????T
lstm_63/Shape_1Shapelstm_63/transpose:y:0*
T0*
_output_shapes
:g
lstm_63/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_63/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_63/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_63/strided_slice_1StridedSlicelstm_63/Shape_1:output:0&lstm_63/strided_slice_1/stack:output:0(lstm_63/strided_slice_1/stack_1:output:0(lstm_63/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_63/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_63/TensorArrayV2TensorListReserve,lstm_63/TensorArrayV2/element_shape:output:0 lstm_63/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_63/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
/lstm_63/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_63/transpose:y:0Flstm_63/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_63/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_63/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_63/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_63/strided_slice_2StridedSlicelstm_63/transpose:y:0&lstm_63/strided_slice_2/stack:output:0(lstm_63/strided_slice_2/stack_1:output:0(lstm_63/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
*lstm_63/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp3lstm_63_lstm_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_63/lstm_cell_15/MatMulMatMul lstm_63/strided_slice_2:output:02lstm_63/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,lstm_63/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp5lstm_63_lstm_cell_15_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_63/lstm_cell_15/MatMul_1MatMullstm_63/zeros:output:04lstm_63/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_63/lstm_cell_15/addAddV2%lstm_63/lstm_cell_15/MatMul:product:0'lstm_63/lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
+lstm_63/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp4lstm_63_lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_63/lstm_cell_15/BiasAddBiasAddlstm_63/lstm_cell_15/add:z:03lstm_63/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????f
$lstm_63/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_63/lstm_cell_15/splitSplit-lstm_63/lstm_cell_15/split/split_dim:output:0%lstm_63/lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split~
lstm_63/lstm_cell_15/SigmoidSigmoid#lstm_63/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:?????????d?
lstm_63/lstm_cell_15/Sigmoid_1Sigmoid#lstm_63/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_63/lstm_cell_15/mulMul"lstm_63/lstm_cell_15/Sigmoid_1:y:0lstm_63/zeros_1:output:0*
T0*'
_output_shapes
:?????????dx
lstm_63/lstm_cell_15/ReluRelu#lstm_63/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_63/lstm_cell_15/mul_1Mul lstm_63/lstm_cell_15/Sigmoid:y:0'lstm_63/lstm_cell_15/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_63/lstm_cell_15/add_1AddV2lstm_63/lstm_cell_15/mul:z:0lstm_63/lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_63/lstm_cell_15/Sigmoid_2Sigmoid#lstm_63/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:?????????du
lstm_63/lstm_cell_15/Relu_1Relulstm_63/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_63/lstm_cell_15/mul_2Mul"lstm_63/lstm_cell_15/Sigmoid_2:y:0)lstm_63/lstm_cell_15/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dv
%lstm_63/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_63/TensorArrayV2_1TensorListReserve.lstm_63/TensorArrayV2_1/element_shape:output:0 lstm_63/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_63/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_63/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_63/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_63/whileWhile#lstm_63/while/loop_counter:output:0)lstm_63/while/maximum_iterations:output:0lstm_63/time:output:0 lstm_63/TensorArrayV2_1:handle:0lstm_63/zeros:output:0lstm_63/zeros_1:output:0 lstm_63/strided_slice_1:output:0?lstm_63/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_63_lstm_cell_15_matmul_readvariableop_resource5lstm_63_lstm_cell_15_matmul_1_readvariableop_resource4lstm_63_lstm_cell_15_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_63_while_body_107243*%
condR
lstm_63_while_cond_107242*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
8lstm_63/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
*lstm_63/TensorArrayV2Stack/TensorListStackTensorListStacklstm_63/while:output:3Alstm_63/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0p
lstm_63/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_63/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_63/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_63/strided_slice_3StridedSlice3lstm_63/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_63/strided_slice_3/stack:output:0(lstm_63/strided_slice_3/stack_1:output:0(lstm_63/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskm
lstm_63/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_63/transpose_1	Transpose3lstm_63/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_63/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dc
lstm_63/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_64/ShapeShapelstm_63/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_64/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_64/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_64/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_64/strided_sliceStridedSlicelstm_64/Shape:output:0$lstm_64/strided_slice/stack:output:0&lstm_64/strided_slice/stack_1:output:0&lstm_64/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_64/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_64/zeros/packedPacklstm_64/strided_slice:output:0lstm_64/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_64/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_64/zerosFilllstm_64/zeros/packed:output:0lstm_64/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2Z
lstm_64/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_64/zeros_1/packedPacklstm_64/strided_slice:output:0!lstm_64/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_64/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_64/zeros_1Filllstm_64/zeros_1/packed:output:0lstm_64/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2k
lstm_64/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_64/transpose	Transposelstm_63/transpose_1:y:0lstm_64/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dT
lstm_64/Shape_1Shapelstm_64/transpose:y:0*
T0*
_output_shapes
:g
lstm_64/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_64/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_64/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_64/strided_slice_1StridedSlicelstm_64/Shape_1:output:0&lstm_64/strided_slice_1/stack:output:0(lstm_64/strided_slice_1/stack_1:output:0(lstm_64/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_64/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_64/TensorArrayV2TensorListReserve,lstm_64/TensorArrayV2/element_shape:output:0 lstm_64/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_64/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
/lstm_64/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_64/transpose:y:0Flstm_64/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_64/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_64/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_64/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_64/strided_slice_2StridedSlicelstm_64/transpose:y:0&lstm_64/strided_slice_2/stack:output:0(lstm_64/strided_slice_2/stack_1:output:0(lstm_64/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
*lstm_64/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3lstm_64_lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_64/lstm_cell_16/MatMulMatMul lstm_64/strided_slice_2:output:02lstm_64/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,lstm_64/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5lstm_64_lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_64/lstm_cell_16/MatMul_1MatMullstm_64/zeros:output:04lstm_64/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_64/lstm_cell_16/addAddV2%lstm_64/lstm_cell_16/MatMul:product:0'lstm_64/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
+lstm_64/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4lstm_64_lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_64/lstm_cell_16/BiasAddBiasAddlstm_64/lstm_cell_16/add:z:03lstm_64/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????f
$lstm_64/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_64/lstm_cell_16/splitSplit-lstm_64/lstm_cell_16/split/split_dim:output:0%lstm_64/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split~
lstm_64/lstm_cell_16/SigmoidSigmoid#lstm_64/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2?
lstm_64/lstm_cell_16/Sigmoid_1Sigmoid#lstm_64/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_64/lstm_cell_16/mulMul"lstm_64/lstm_cell_16/Sigmoid_1:y:0lstm_64/zeros_1:output:0*
T0*'
_output_shapes
:?????????2x
lstm_64/lstm_cell_16/ReluRelu#lstm_64/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_64/lstm_cell_16/mul_1Mul lstm_64/lstm_cell_16/Sigmoid:y:0'lstm_64/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_64/lstm_cell_16/add_1AddV2lstm_64/lstm_cell_16/mul:z:0lstm_64/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_64/lstm_cell_16/Sigmoid_2Sigmoid#lstm_64/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2u
lstm_64/lstm_cell_16/Relu_1Relulstm_64/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_64/lstm_cell_16/mul_2Mul"lstm_64/lstm_cell_16/Sigmoid_2:y:0)lstm_64/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2v
%lstm_64/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_64/TensorArrayV2_1TensorListReserve.lstm_64/TensorArrayV2_1/element_shape:output:0 lstm_64/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_64/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_64/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_64/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_64/whileWhile#lstm_64/while/loop_counter:output:0)lstm_64/while/maximum_iterations:output:0lstm_64/time:output:0 lstm_64/TensorArrayV2_1:handle:0lstm_64/zeros:output:0lstm_64/zeros_1:output:0 lstm_64/strided_slice_1:output:0?lstm_64/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_64_lstm_cell_16_matmul_readvariableop_resource5lstm_64_lstm_cell_16_matmul_1_readvariableop_resource4lstm_64_lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_64_while_body_107382*%
condR
lstm_64_while_cond_107381*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
8lstm_64/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
*lstm_64/TensorArrayV2Stack/TensorListStackTensorListStacklstm_64/while:output:3Alstm_64/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0p
lstm_64/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_64/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_64/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_64/strided_slice_3StridedSlice3lstm_64/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_64/strided_slice_3/stack:output:0(lstm_64/strided_slice_3/stack_1:output:0(lstm_64/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskm
lstm_64/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_64/transpose_1	Transpose3lstm_64/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_64/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2c
lstm_64/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_65/ShapeShapelstm_64/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_65/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_65/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_65/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_65/strided_sliceStridedSlicelstm_65/Shape:output:0$lstm_65/strided_slice/stack:output:0&lstm_65/strided_slice/stack_1:output:0&lstm_65/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_65/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_65/zeros/packedPacklstm_65/strided_slice:output:0lstm_65/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_65/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_65/zerosFilllstm_65/zeros/packed:output:0lstm_65/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
Z
lstm_65/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_65/zeros_1/packedPacklstm_65/strided_slice:output:0!lstm_65/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_65/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_65/zeros_1Filllstm_65/zeros_1/packed:output:0lstm_65/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
k
lstm_65/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_65/transpose	Transposelstm_64/transpose_1:y:0lstm_65/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2T
lstm_65/Shape_1Shapelstm_65/transpose:y:0*
T0*
_output_shapes
:g
lstm_65/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_65/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_65/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_65/strided_slice_1StridedSlicelstm_65/Shape_1:output:0&lstm_65/strided_slice_1/stack:output:0(lstm_65/strided_slice_1/stack_1:output:0(lstm_65/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_65/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_65/TensorArrayV2TensorListReserve,lstm_65/TensorArrayV2/element_shape:output:0 lstm_65/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_65/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
/lstm_65/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_65/transpose:y:0Flstm_65/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_65/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_65/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_65/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_65/strided_slice_2StridedSlicelstm_65/transpose:y:0&lstm_65/strided_slice_2/stack:output:0(lstm_65/strided_slice_2/stack_1:output:0(lstm_65/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
*lstm_65/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3lstm_65_lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_65/lstm_cell_17/MatMulMatMul lstm_65/strided_slice_2:output:02lstm_65/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
,lstm_65/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5lstm_65_lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_65/lstm_cell_17/MatMul_1MatMullstm_65/zeros:output:04lstm_65/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_65/lstm_cell_17/addAddV2%lstm_65/lstm_cell_17/MatMul:product:0'lstm_65/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
+lstm_65/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4lstm_65_lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_65/lstm_cell_17/BiasAddBiasAddlstm_65/lstm_cell_17/add:z:03lstm_65/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(f
$lstm_65/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_65/lstm_cell_17/splitSplit-lstm_65/lstm_cell_17/split/split_dim:output:0%lstm_65/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split~
lstm_65/lstm_cell_17/SigmoidSigmoid#lstm_65/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????
?
lstm_65/lstm_cell_17/Sigmoid_1Sigmoid#lstm_65/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_65/lstm_cell_17/mulMul"lstm_65/lstm_cell_17/Sigmoid_1:y:0lstm_65/zeros_1:output:0*
T0*'
_output_shapes
:?????????
x
lstm_65/lstm_cell_17/ReluRelu#lstm_65/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_65/lstm_cell_17/mul_1Mul lstm_65/lstm_cell_17/Sigmoid:y:0'lstm_65/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_65/lstm_cell_17/add_1AddV2lstm_65/lstm_cell_17/mul:z:0lstm_65/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_65/lstm_cell_17/Sigmoid_2Sigmoid#lstm_65/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????
u
lstm_65/lstm_cell_17/Relu_1Relulstm_65/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_65/lstm_cell_17/mul_2Mul"lstm_65/lstm_cell_17/Sigmoid_2:y:0)lstm_65/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
v
%lstm_65/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_65/TensorArrayV2_1TensorListReserve.lstm_65/TensorArrayV2_1/element_shape:output:0 lstm_65/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_65/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_65/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_65/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_65/whileWhile#lstm_65/while/loop_counter:output:0)lstm_65/while/maximum_iterations:output:0lstm_65/time:output:0 lstm_65/TensorArrayV2_1:handle:0lstm_65/zeros:output:0lstm_65/zeros_1:output:0 lstm_65/strided_slice_1:output:0?lstm_65/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_65_lstm_cell_17_matmul_readvariableop_resource5lstm_65_lstm_cell_17_matmul_1_readvariableop_resource4lstm_65_lstm_cell_17_biasadd_readvariableop_resource*
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
_stateful_parallelism( *%
bodyR
lstm_65_while_body_107521*%
condR
lstm_65_while_cond_107520*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
8lstm_65/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
*lstm_65/TensorArrayV2Stack/TensorListStackTensorListStacklstm_65/while:output:3Alstm_65/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0p
lstm_65/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_65/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_65/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_65/strided_slice_3StridedSlice3lstm_65/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_65/strided_slice_3/stack:output:0(lstm_65/strided_slice_3/stack_1:output:0(lstm_65/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskm
lstm_65/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_65/transpose_1	Transpose3lstm_65/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_65/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
c
lstm_65/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_21/MatMulMatMul lstm_65/strided_slice_3:output:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_21/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp,^lstm_63/lstm_cell_15/BiasAdd/ReadVariableOp+^lstm_63/lstm_cell_15/MatMul/ReadVariableOp-^lstm_63/lstm_cell_15/MatMul_1/ReadVariableOp^lstm_63/while,^lstm_64/lstm_cell_16/BiasAdd/ReadVariableOp+^lstm_64/lstm_cell_16/MatMul/ReadVariableOp-^lstm_64/lstm_cell_16/MatMul_1/ReadVariableOp^lstm_64/while,^lstm_65/lstm_cell_17/BiasAdd/ReadVariableOp+^lstm_65/lstm_cell_17/MatMul/ReadVariableOp-^lstm_65/lstm_cell_17/MatMul_1/ReadVariableOp^lstm_65/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2Z
+lstm_63/lstm_cell_15/BiasAdd/ReadVariableOp+lstm_63/lstm_cell_15/BiasAdd/ReadVariableOp2X
*lstm_63/lstm_cell_15/MatMul/ReadVariableOp*lstm_63/lstm_cell_15/MatMul/ReadVariableOp2\
,lstm_63/lstm_cell_15/MatMul_1/ReadVariableOp,lstm_63/lstm_cell_15/MatMul_1/ReadVariableOp2
lstm_63/whilelstm_63/while2Z
+lstm_64/lstm_cell_16/BiasAdd/ReadVariableOp+lstm_64/lstm_cell_16/BiasAdd/ReadVariableOp2X
*lstm_64/lstm_cell_16/MatMul/ReadVariableOp*lstm_64/lstm_cell_16/MatMul/ReadVariableOp2\
,lstm_64/lstm_cell_16/MatMul_1/ReadVariableOp,lstm_64/lstm_cell_16/MatMul_1/ReadVariableOp2
lstm_64/whilelstm_64/while2Z
+lstm_65/lstm_cell_17/BiasAdd/ReadVariableOp+lstm_65/lstm_cell_17/BiasAdd/ReadVariableOp2X
*lstm_65/lstm_cell_17/MatMul/ReadVariableOp*lstm_65/lstm_cell_17/MatMul/ReadVariableOp2\
,lstm_65/lstm_cell_17/MatMul_1/ReadVariableOp,lstm_65/lstm_cell_17/MatMul_1/ReadVariableOp2
lstm_65/whilelstm_65/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_109544

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
?
?
while_cond_104873
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_104873___redundant_placeholder04
0while_while_cond_104873___redundant_placeholder14
0while_while_cond_104873___redundant_placeholder24
0while_while_cond_104873___redundant_placeholder3
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
?7
?
while_body_105858
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_17_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_17_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_17_matmul_readvariableop_resource:2(E
3while_lstm_cell_17_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_17_biasadd_readvariableop_resource:(??)while/lstm_cell_17/BiasAdd/ReadVariableOp?(while/lstm_cell_17/MatMul/ReadVariableOp?*while/lstm_cell_17/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitz
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????
|
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
t
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????
|
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????
q
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_17/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
y
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
"__inference__traced_restore_110045
file_prefix2
 assignvariableop_dense_21_kernel:
.
 assignvariableop_1_dense_21_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: A
.assignvariableop_7_lstm_63_lstm_cell_63_kernel:	?K
8assignvariableop_8_lstm_63_lstm_cell_63_recurrent_kernel:	d?;
,assignvariableop_9_lstm_63_lstm_cell_63_bias:	?B
/assignvariableop_10_lstm_64_lstm_cell_64_kernel:	d?L
9assignvariableop_11_lstm_64_lstm_cell_64_recurrent_kernel:	2?<
-assignvariableop_12_lstm_64_lstm_cell_64_bias:	?A
/assignvariableop_13_lstm_65_lstm_cell_65_kernel:2(K
9assignvariableop_14_lstm_65_lstm_cell_65_recurrent_kernel:
(;
-assignvariableop_15_lstm_65_lstm_cell_65_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_21_kernel_m:
6
(assignvariableop_19_adam_dense_21_bias_m:I
6assignvariableop_20_adam_lstm_63_lstm_cell_63_kernel_m:	?S
@assignvariableop_21_adam_lstm_63_lstm_cell_63_recurrent_kernel_m:	d?C
4assignvariableop_22_adam_lstm_63_lstm_cell_63_bias_m:	?I
6assignvariableop_23_adam_lstm_64_lstm_cell_64_kernel_m:	d?S
@assignvariableop_24_adam_lstm_64_lstm_cell_64_recurrent_kernel_m:	2?C
4assignvariableop_25_adam_lstm_64_lstm_cell_64_bias_m:	?H
6assignvariableop_26_adam_lstm_65_lstm_cell_65_kernel_m:2(R
@assignvariableop_27_adam_lstm_65_lstm_cell_65_recurrent_kernel_m:
(B
4assignvariableop_28_adam_lstm_65_lstm_cell_65_bias_m:(<
*assignvariableop_29_adam_dense_21_kernel_v:
6
(assignvariableop_30_adam_dense_21_bias_v:I
6assignvariableop_31_adam_lstm_63_lstm_cell_63_kernel_v:	?S
@assignvariableop_32_adam_lstm_63_lstm_cell_63_recurrent_kernel_v:	d?C
4assignvariableop_33_adam_lstm_63_lstm_cell_63_bias_v:	?I
6assignvariableop_34_adam_lstm_64_lstm_cell_64_kernel_v:	d?S
@assignvariableop_35_adam_lstm_64_lstm_cell_64_recurrent_kernel_v:	2?C
4assignvariableop_36_adam_lstm_64_lstm_cell_64_bias_v:	?H
6assignvariableop_37_adam_lstm_65_lstm_cell_65_kernel_v:2(R
@assignvariableop_38_adam_lstm_65_lstm_cell_65_recurrent_kernel_v:
(B
4assignvariableop_39_adam_lstm_65_lstm_cell_65_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_21_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_21_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_63_lstm_cell_63_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_63_lstm_cell_63_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_63_lstm_cell_63_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp/assignvariableop_10_lstm_64_lstm_cell_64_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp9assignvariableop_11_lstm_64_lstm_cell_64_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp-assignvariableop_12_lstm_64_lstm_cell_64_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp/assignvariableop_13_lstm_65_lstm_cell_65_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp9assignvariableop_14_lstm_65_lstm_cell_65_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp-assignvariableop_15_lstm_65_lstm_cell_65_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_21_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_21_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_lstm_63_lstm_cell_63_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_lstm_63_lstm_cell_63_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_lstm_63_lstm_cell_63_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_lstm_64_lstm_cell_64_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_lstm_64_lstm_cell_64_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_lstm_64_lstm_cell_64_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp6assignvariableop_26_adam_lstm_65_lstm_cell_65_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_lstm_65_lstm_cell_65_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp4assignvariableop_28_adam_lstm_65_lstm_cell_65_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_21_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_21_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_lstm_63_lstm_cell_63_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp@assignvariableop_32_adam_lstm_63_lstm_cell_63_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_lstm_63_lstm_cell_63_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_lstm_64_lstm_cell_64_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp@assignvariableop_35_adam_lstm_64_lstm_cell_64_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_lstm_64_lstm_cell_64_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp6assignvariableop_37_adam_lstm_65_lstm_cell_65_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp@assignvariableop_38_adam_lstm_65_lstm_cell_65_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_lstm_65_lstm_cell_65_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
?
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_109772

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
?
'sequential_21_lstm_65_while_cond_104352H
Dsequential_21_lstm_65_while_sequential_21_lstm_65_while_loop_counterN
Jsequential_21_lstm_65_while_sequential_21_lstm_65_while_maximum_iterations+
'sequential_21_lstm_65_while_placeholder-
)sequential_21_lstm_65_while_placeholder_1-
)sequential_21_lstm_65_while_placeholder_2-
)sequential_21_lstm_65_while_placeholder_3J
Fsequential_21_lstm_65_while_less_sequential_21_lstm_65_strided_slice_1`
\sequential_21_lstm_65_while_sequential_21_lstm_65_while_cond_104352___redundant_placeholder0`
\sequential_21_lstm_65_while_sequential_21_lstm_65_while_cond_104352___redundant_placeholder1`
\sequential_21_lstm_65_while_sequential_21_lstm_65_while_cond_104352___redundant_placeholder2`
\sequential_21_lstm_65_while_sequential_21_lstm_65_while_cond_104352___redundant_placeholder3(
$sequential_21_lstm_65_while_identity
?
 sequential_21/lstm_65/while/LessLess'sequential_21_lstm_65_while_placeholderFsequential_21_lstm_65_while_less_sequential_21_lstm_65_strided_slice_1*
T0*
_output_shapes
: w
$sequential_21/lstm_65/while/IdentityIdentity$sequential_21/lstm_65/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_21_lstm_65_while_identity-sequential_21/lstm_65/while/Identity:output:0*(
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
?"
?
while_body_105415
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_17_105439_0:2(-
while_lstm_cell_17_105441_0:
()
while_lstm_cell_17_105443_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_17_105439:2(+
while_lstm_cell_17_105441:
('
while_lstm_cell_17_105443:(??*while/lstm_cell_17/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
*while/lstm_cell_17/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_17_105439_0while_lstm_cell_17_105441_0while_lstm_cell_17_105443_0*
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
GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_105356?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_17/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_17/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity3while/lstm_cell_17/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
y

while/NoOpNoOp+^while/lstm_cell_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_17_105439while_lstm_cell_17_105439_0"8
while_lstm_cell_17_105441while_lstm_cell_17_105441_0"8
while_lstm_cell_17_105443while_lstm_cell_17_105443_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_17/StatefulPartitionedCall*while/lstm_cell_17/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
.__inference_sequential_21_layer_call_fn_106608
lstm_63_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_63_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8? *R
fMRK
I__inference_sequential_21_layer_call_and_return_conditional_losses_106556o
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
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_63_input
?J
?
C__inference_lstm_65_layer_call_and_return_conditional_losses_109316

inputs=
+lstm_cell_17_matmul_readvariableop_resource:2(?
-lstm_cell_17_matmul_1_readvariableop_resource:
(:
,lstm_cell_17_biasadd_readvariableop_resource:(
identity??#lstm_cell_17/BiasAdd/ReadVariableOp?"lstm_cell_17/MatMul/ReadVariableOp?$lstm_cell_17/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(^
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitn
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????
p
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????
w
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
h
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????
{
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????
p
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????
e
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
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
bodyR
while_body_109232*
condR
while_cond_109231*K
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
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
C__inference_lstm_65_layer_call_and_return_conditional_losses_105484

inputs%
lstm_cell_17_105402:2(%
lstm_cell_17_105404:
(!
lstm_cell_17_105406:(
identity??$lstm_cell_17/StatefulPartitionedCall?while;
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
$lstm_cell_17/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_17_105402lstm_cell_17_105404lstm_cell_17_105406*
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
GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_105356n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_17_105402lstm_cell_17_105404lstm_cell_17_105406*
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
bodyR
while_body_105415*
condR
while_cond_105414*K
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
u
NoOpNoOp%^lstm_cell_17/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_17/StatefulPartitionedCall$lstm_cell_17/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
-__inference_lstm_cell_16_layer_call_fn_109610

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
GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_105006o
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
C__inference_lstm_64_layer_call_and_return_conditional_losses_108414
inputs_0>
+lstm_cell_16_matmul_readvariableop_resource:	d?@
-lstm_cell_16_matmul_1_readvariableop_resource:	2?;
,lstm_cell_16_biasadd_readvariableop_resource:	?
identity??#lstm_cell_16/BiasAdd/ReadVariableOp?"lstm_cell_16/MatMul/ReadVariableOp?$lstm_cell_16/MatMul_1/ReadVariableOp?while=
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
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitn
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2p
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2w
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2h
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2{
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2p
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2e
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
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
bodyR
while_body_108330*
condR
while_cond_108329*K
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
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
.__inference_sequential_21_layer_call_fn_105992
lstm_63_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_63_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8? *R
fMRK
I__inference_sequential_21_layer_call_and_return_conditional_losses_105967o
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
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_63_input
?
?
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_109642

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
states/1"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
K
lstm_63_input:
serving_default_lstm_63_input:0?????????<
dense_210
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
2dense_21/kernel
:2dense_21/bias
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
.:,	?2lstm_63/lstm_cell_63/kernel
8:6	d?2%lstm_63/lstm_cell_63/recurrent_kernel
(:&?2lstm_63/lstm_cell_63/bias
.:,	d?2lstm_64/lstm_cell_64/kernel
8:6	2?2%lstm_64/lstm_cell_64/recurrent_kernel
(:&?2lstm_64/lstm_cell_64/bias
-:+2(2lstm_65/lstm_cell_65/kernel
7:5
(2%lstm_65/lstm_cell_65/recurrent_kernel
':%(2lstm_65/lstm_cell_65/bias
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
2Adam/dense_21/kernel/m
 :2Adam/dense_21/bias/m
3:1	?2"Adam/lstm_63/lstm_cell_63/kernel/m
=:;	d?2,Adam/lstm_63/lstm_cell_63/recurrent_kernel/m
-:+?2 Adam/lstm_63/lstm_cell_63/bias/m
3:1	d?2"Adam/lstm_64/lstm_cell_64/kernel/m
=:;	2?2,Adam/lstm_64/lstm_cell_64/recurrent_kernel/m
-:+?2 Adam/lstm_64/lstm_cell_64/bias/m
2:02(2"Adam/lstm_65/lstm_cell_65/kernel/m
<::
(2,Adam/lstm_65/lstm_cell_65/recurrent_kernel/m
,:*(2 Adam/lstm_65/lstm_cell_65/bias/m
&:$
2Adam/dense_21/kernel/v
 :2Adam/dense_21/bias/v
3:1	?2"Adam/lstm_63/lstm_cell_63/kernel/v
=:;	d?2,Adam/lstm_63/lstm_cell_63/recurrent_kernel/v
-:+?2 Adam/lstm_63/lstm_cell_63/bias/v
3:1	d?2"Adam/lstm_64/lstm_cell_64/kernel/v
=:;	2?2,Adam/lstm_64/lstm_cell_64/recurrent_kernel/v
-:+?2 Adam/lstm_64/lstm_cell_64/bias/v
2:02(2"Adam/lstm_65/lstm_cell_65/kernel/v
<::
(2,Adam/lstm_65/lstm_cell_65/recurrent_kernel/v
,:*(2 Adam/lstm_65/lstm_cell_65/bias/v
?2?
.__inference_sequential_21_layer_call_fn_105992
.__inference_sequential_21_layer_call_fn_106730
.__inference_sequential_21_layer_call_fn_106757
.__inference_sequential_21_layer_call_fn_106608?
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
I__inference_sequential_21_layer_call_and_return_conditional_losses_107184
I__inference_sequential_21_layer_call_and_return_conditional_losses_107611
I__inference_sequential_21_layer_call_and_return_conditional_losses_106638
I__inference_sequential_21_layer_call_and_return_conditional_losses_106668?
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
!__inference__wrapped_model_104443lstm_63_input"?
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
(__inference_lstm_63_layer_call_fn_107622
(__inference_lstm_63_layer_call_fn_107633
(__inference_lstm_63_layer_call_fn_107644
(__inference_lstm_63_layer_call_fn_107655?
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
C__inference_lstm_63_layer_call_and_return_conditional_losses_107798
C__inference_lstm_63_layer_call_and_return_conditional_losses_107941
C__inference_lstm_63_layer_call_and_return_conditional_losses_108084
C__inference_lstm_63_layer_call_and_return_conditional_losses_108227?
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
(__inference_lstm_64_layer_call_fn_108238
(__inference_lstm_64_layer_call_fn_108249
(__inference_lstm_64_layer_call_fn_108260
(__inference_lstm_64_layer_call_fn_108271?
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
C__inference_lstm_64_layer_call_and_return_conditional_losses_108414
C__inference_lstm_64_layer_call_and_return_conditional_losses_108557
C__inference_lstm_64_layer_call_and_return_conditional_losses_108700
C__inference_lstm_64_layer_call_and_return_conditional_losses_108843?
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
(__inference_lstm_65_layer_call_fn_108854
(__inference_lstm_65_layer_call_fn_108865
(__inference_lstm_65_layer_call_fn_108876
(__inference_lstm_65_layer_call_fn_108887?
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
C__inference_lstm_65_layer_call_and_return_conditional_losses_109030
C__inference_lstm_65_layer_call_and_return_conditional_losses_109173
C__inference_lstm_65_layer_call_and_return_conditional_losses_109316
C__inference_lstm_65_layer_call_and_return_conditional_losses_109459?
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
)__inference_dense_21_layer_call_fn_109468?
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
D__inference_dense_21_layer_call_and_return_conditional_losses_109478?
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
$__inference_signature_wrapper_106703lstm_63_input"?
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
-__inference_lstm_cell_15_layer_call_fn_109495
-__inference_lstm_cell_15_layer_call_fn_109512?
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
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_109544
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_109576?
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
-__inference_lstm_cell_16_layer_call_fn_109593
-__inference_lstm_cell_16_layer_call_fn_109610?
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
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_109642
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_109674?
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
-__inference_lstm_cell_17_layer_call_fn_109691
-__inference_lstm_cell_17_layer_call_fn_109708?
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
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_109740
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_109772?
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
!__inference__wrapped_model_104443~-./012345!":?7
0?-
+?(
lstm_63_input?????????
? "3?0
.
dense_21"?
dense_21??????????
D__inference_dense_21_layer_call_and_return_conditional_losses_109478\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? |
)__inference_dense_21_layer_call_fn_109468O!"/?,
%?"
 ?
inputs?????????

? "???????????
C__inference_lstm_63_layer_call_and_return_conditional_losses_107798?-./O?L
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
C__inference_lstm_63_layer_call_and_return_conditional_losses_107941?-./O?L
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
C__inference_lstm_63_layer_call_and_return_conditional_losses_108084q-./??<
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
C__inference_lstm_63_layer_call_and_return_conditional_losses_108227q-./??<
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
(__inference_lstm_63_layer_call_fn_107622}-./O?L
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
(__inference_lstm_63_layer_call_fn_107633}-./O?L
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
(__inference_lstm_63_layer_call_fn_107644d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
(__inference_lstm_63_layer_call_fn_107655d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
C__inference_lstm_64_layer_call_and_return_conditional_losses_108414?012O?L
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
C__inference_lstm_64_layer_call_and_return_conditional_losses_108557?012O?L
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
C__inference_lstm_64_layer_call_and_return_conditional_losses_108700q012??<
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
C__inference_lstm_64_layer_call_and_return_conditional_losses_108843q012??<
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
(__inference_lstm_64_layer_call_fn_108238}012O?L
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
(__inference_lstm_64_layer_call_fn_108249}012O?L
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
(__inference_lstm_64_layer_call_fn_108260d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
(__inference_lstm_64_layer_call_fn_108271d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
C__inference_lstm_65_layer_call_and_return_conditional_losses_109030}345O?L
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
C__inference_lstm_65_layer_call_and_return_conditional_losses_109173}345O?L
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
C__inference_lstm_65_layer_call_and_return_conditional_losses_109316m345??<
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
C__inference_lstm_65_layer_call_and_return_conditional_losses_109459m345??<
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
(__inference_lstm_65_layer_call_fn_108854p345O?L
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
(__inference_lstm_65_layer_call_fn_108865p345O?L
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
(__inference_lstm_65_layer_call_fn_108876`345??<
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
(__inference_lstm_65_layer_call_fn_108887`345??<
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
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_109544?-./??}
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
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_109576?-./??}
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
-__inference_lstm_cell_15_layer_call_fn_109495?-./??}
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
-__inference_lstm_cell_15_layer_call_fn_109512?-./??}
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
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_109642?012??}
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
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_109674?012??}
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
-__inference_lstm_cell_16_layer_call_fn_109593?012??}
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
-__inference_lstm_cell_16_layer_call_fn_109610?012??}
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
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_109740?345??}
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
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_109772?345??}
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
-__inference_lstm_cell_17_layer_call_fn_109691?345??}
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
-__inference_lstm_cell_17_layer_call_fn_109708?345??}
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
I__inference_sequential_21_layer_call_and_return_conditional_losses_106638x-./012345!"B??
8?5
+?(
lstm_63_input?????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_21_layer_call_and_return_conditional_losses_106668x-./012345!"B??
8?5
+?(
lstm_63_input?????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_21_layer_call_and_return_conditional_losses_107184q-./012345!";?8
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
I__inference_sequential_21_layer_call_and_return_conditional_losses_107611q-./012345!";?8
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
.__inference_sequential_21_layer_call_fn_105992k-./012345!"B??
8?5
+?(
lstm_63_input?????????
p 

 
? "???????????
.__inference_sequential_21_layer_call_fn_106608k-./012345!"B??
8?5
+?(
lstm_63_input?????????
p

 
? "???????????
.__inference_sequential_21_layer_call_fn_106730d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
.__inference_sequential_21_layer_call_fn_106757d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_106703?-./012345!"K?H
? 
A?>
<
lstm_63_input+?(
lstm_63_input?????????"3?0
.
dense_21"?
dense_21?????????