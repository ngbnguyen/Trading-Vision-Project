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
dense_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_23/kernel
s
#dense_23/kernel/Read/ReadVariableOpReadVariableOpdense_23/kernel*
_output_shapes

:
*
dtype0
r
dense_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_23/bias
k
!dense_23/bias/Read/ReadVariableOpReadVariableOpdense_23/bias*
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
lstm_69/lstm_cell_69/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_namelstm_69/lstm_cell_69/kernel
?
/lstm_69/lstm_cell_69/kernel/Read/ReadVariableOpReadVariableOplstm_69/lstm_cell_69/kernel*
_output_shapes
:	?*
dtype0
?
%lstm_69/lstm_cell_69/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*6
shared_name'%lstm_69/lstm_cell_69/recurrent_kernel
?
9lstm_69/lstm_cell_69/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_69/lstm_cell_69/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_69/lstm_cell_69/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namelstm_69/lstm_cell_69/bias
?
-lstm_69/lstm_cell_69/bias/Read/ReadVariableOpReadVariableOplstm_69/lstm_cell_69/bias*
_output_shapes	
:?*
dtype0
?
lstm_70/lstm_cell_70/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*,
shared_namelstm_70/lstm_cell_70/kernel
?
/lstm_70/lstm_cell_70/kernel/Read/ReadVariableOpReadVariableOplstm_70/lstm_cell_70/kernel*
_output_shapes
:	d?*
dtype0
?
%lstm_70/lstm_cell_70/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*6
shared_name'%lstm_70/lstm_cell_70/recurrent_kernel
?
9lstm_70/lstm_cell_70/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_70/lstm_cell_70/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_70/lstm_cell_70/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namelstm_70/lstm_cell_70/bias
?
-lstm_70/lstm_cell_70/bias/Read/ReadVariableOpReadVariableOplstm_70/lstm_cell_70/bias*
_output_shapes	
:?*
dtype0
?
lstm_71/lstm_cell_71/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*,
shared_namelstm_71/lstm_cell_71/kernel
?
/lstm_71/lstm_cell_71/kernel/Read/ReadVariableOpReadVariableOplstm_71/lstm_cell_71/kernel*
_output_shapes

:2(*
dtype0
?
%lstm_71/lstm_cell_71/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*6
shared_name'%lstm_71/lstm_cell_71/recurrent_kernel
?
9lstm_71/lstm_cell_71/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_71/lstm_cell_71/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_71/lstm_cell_71/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(**
shared_namelstm_71/lstm_cell_71/bias
?
-lstm_71/lstm_cell_71/bias/Read/ReadVariableOpReadVariableOplstm_71/lstm_cell_71/bias*
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
Adam/dense_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_23/kernel/m
?
*Adam/dense_23/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_23/bias/m
y
(Adam/dense_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/m*
_output_shapes
:*
dtype0
?
"Adam/lstm_69/lstm_cell_69/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_69/lstm_cell_69/kernel/m
?
6Adam/lstm_69/lstm_cell_69/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_69/lstm_cell_69/kernel/m*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_69/lstm_cell_69/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*=
shared_name.,Adam/lstm_69/lstm_cell_69/recurrent_kernel/m
?
@Adam/lstm_69/lstm_cell_69/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_69/lstm_cell_69/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
 Adam/lstm_69/lstm_cell_69/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_69/lstm_cell_69/bias/m
?
4Adam/lstm_69/lstm_cell_69/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_69/lstm_cell_69/bias/m*
_output_shapes	
:?*
dtype0
?
"Adam/lstm_70/lstm_cell_70/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*3
shared_name$"Adam/lstm_70/lstm_cell_70/kernel/m
?
6Adam/lstm_70/lstm_cell_70/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_70/lstm_cell_70/kernel/m*
_output_shapes
:	d?*
dtype0
?
,Adam/lstm_70/lstm_cell_70/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*=
shared_name.,Adam/lstm_70/lstm_cell_70/recurrent_kernel/m
?
@Adam/lstm_70/lstm_cell_70/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_70/lstm_cell_70/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
 Adam/lstm_70/lstm_cell_70/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_70/lstm_cell_70/bias/m
?
4Adam/lstm_70/lstm_cell_70/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_70/lstm_cell_70/bias/m*
_output_shapes	
:?*
dtype0
?
"Adam/lstm_71/lstm_cell_71/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_71/lstm_cell_71/kernel/m
?
6Adam/lstm_71/lstm_cell_71/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_71/lstm_cell_71/kernel/m*
_output_shapes

:2(*
dtype0
?
,Adam/lstm_71/lstm_cell_71/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_71/lstm_cell_71/recurrent_kernel/m
?
@Adam/lstm_71/lstm_cell_71/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_71/lstm_cell_71/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
 Adam/lstm_71/lstm_cell_71/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_71/lstm_cell_71/bias/m
?
4Adam/lstm_71/lstm_cell_71/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_71/lstm_cell_71/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_23/kernel/v
?
*Adam/dense_23/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_23/bias/v
y
(Adam/dense_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/v*
_output_shapes
:*
dtype0
?
"Adam/lstm_69/lstm_cell_69/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_69/lstm_cell_69/kernel/v
?
6Adam/lstm_69/lstm_cell_69/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_69/lstm_cell_69/kernel/v*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_69/lstm_cell_69/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*=
shared_name.,Adam/lstm_69/lstm_cell_69/recurrent_kernel/v
?
@Adam/lstm_69/lstm_cell_69/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_69/lstm_cell_69/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
 Adam/lstm_69/lstm_cell_69/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_69/lstm_cell_69/bias/v
?
4Adam/lstm_69/lstm_cell_69/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_69/lstm_cell_69/bias/v*
_output_shapes	
:?*
dtype0
?
"Adam/lstm_70/lstm_cell_70/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*3
shared_name$"Adam/lstm_70/lstm_cell_70/kernel/v
?
6Adam/lstm_70/lstm_cell_70/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_70/lstm_cell_70/kernel/v*
_output_shapes
:	d?*
dtype0
?
,Adam/lstm_70/lstm_cell_70/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*=
shared_name.,Adam/lstm_70/lstm_cell_70/recurrent_kernel/v
?
@Adam/lstm_70/lstm_cell_70/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_70/lstm_cell_70/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
 Adam/lstm_70/lstm_cell_70/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_70/lstm_cell_70/bias/v
?
4Adam/lstm_70/lstm_cell_70/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_70/lstm_cell_70/bias/v*
_output_shapes	
:?*
dtype0
?
"Adam/lstm_71/lstm_cell_71/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_71/lstm_cell_71/kernel/v
?
6Adam/lstm_71/lstm_cell_71/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_71/lstm_cell_71/kernel/v*
_output_shapes

:2(*
dtype0
?
,Adam/lstm_71/lstm_cell_71/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_71/lstm_cell_71/recurrent_kernel/v
?
@Adam/lstm_71/lstm_cell_71/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_71/lstm_cell_71/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
 Adam/lstm_71/lstm_cell_71/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_71/lstm_cell_71/bias/v
?
4Adam/lstm_71/lstm_cell_71/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_71/lstm_cell_71/bias/v*
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
VARIABLE_VALUEdense_23/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_23/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_69/lstm_cell_69/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_69/lstm_cell_69/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_69/lstm_cell_69/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_70/lstm_cell_70/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_70/lstm_cell_70/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_70/lstm_cell_70/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_71/lstm_cell_71/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_71/lstm_cell_71/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_71/lstm_cell_71/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_23/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_23/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_69/lstm_cell_69/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_69/lstm_cell_69/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_69/lstm_cell_69/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_70/lstm_cell_70/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_70/lstm_cell_70/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_70/lstm_cell_70/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_71/lstm_cell_71/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_71/lstm_cell_71/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_71/lstm_cell_71/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_23/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_23/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_69/lstm_cell_69/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_69/lstm_cell_69/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_69/lstm_cell_69/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_70/lstm_cell_70/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_70/lstm_cell_70/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_70/lstm_cell_70/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_71/lstm_cell_71/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_71/lstm_cell_71/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_71/lstm_cell_71/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_69_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_69_inputlstm_69/lstm_cell_69/kernel%lstm_69/lstm_cell_69/recurrent_kernellstm_69/lstm_cell_69/biaslstm_70/lstm_cell_70/kernel%lstm_70/lstm_cell_70/recurrent_kernellstm_70/lstm_cell_70/biaslstm_71/lstm_cell_71/kernel%lstm_71/lstm_cell_71/recurrent_kernellstm_71/lstm_cell_71/biasdense_23/kerneldense_23/bias*
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
GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_50013
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_23/kernel/Read/ReadVariableOp!dense_23/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_69/lstm_cell_69/kernel/Read/ReadVariableOp9lstm_69/lstm_cell_69/recurrent_kernel/Read/ReadVariableOp-lstm_69/lstm_cell_69/bias/Read/ReadVariableOp/lstm_70/lstm_cell_70/kernel/Read/ReadVariableOp9lstm_70/lstm_cell_70/recurrent_kernel/Read/ReadVariableOp-lstm_70/lstm_cell_70/bias/Read/ReadVariableOp/lstm_71/lstm_cell_71/kernel/Read/ReadVariableOp9lstm_71/lstm_cell_71/recurrent_kernel/Read/ReadVariableOp-lstm_71/lstm_cell_71/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_23/kernel/m/Read/ReadVariableOp(Adam/dense_23/bias/m/Read/ReadVariableOp6Adam/lstm_69/lstm_cell_69/kernel/m/Read/ReadVariableOp@Adam/lstm_69/lstm_cell_69/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_69/lstm_cell_69/bias/m/Read/ReadVariableOp6Adam/lstm_70/lstm_cell_70/kernel/m/Read/ReadVariableOp@Adam/lstm_70/lstm_cell_70/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_70/lstm_cell_70/bias/m/Read/ReadVariableOp6Adam/lstm_71/lstm_cell_71/kernel/m/Read/ReadVariableOp@Adam/lstm_71/lstm_cell_71/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_71/lstm_cell_71/bias/m/Read/ReadVariableOp*Adam/dense_23/kernel/v/Read/ReadVariableOp(Adam/dense_23/bias/v/Read/ReadVariableOp6Adam/lstm_69/lstm_cell_69/kernel/v/Read/ReadVariableOp@Adam/lstm_69/lstm_cell_69/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_69/lstm_cell_69/bias/v/Read/ReadVariableOp6Adam/lstm_70/lstm_cell_70/kernel/v/Read/ReadVariableOp@Adam/lstm_70/lstm_cell_70/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_70/lstm_cell_70/bias/v/Read/ReadVariableOp6Adam/lstm_71/lstm_cell_71/kernel/v/Read/ReadVariableOp@Adam/lstm_71/lstm_cell_71/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_71/lstm_cell_71/bias/v/Read/ReadVariableOpConst*5
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
GPU 2J 8? *'
f"R 
__inference__traced_save_53225
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_23/kerneldense_23/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_69/lstm_cell_69/kernel%lstm_69/lstm_cell_69/recurrent_kernellstm_69/lstm_cell_69/biaslstm_70/lstm_cell_70/kernel%lstm_70/lstm_cell_70/recurrent_kernellstm_70/lstm_cell_70/biaslstm_71/lstm_cell_71/kernel%lstm_71/lstm_cell_71/recurrent_kernellstm_71/lstm_cell_71/biastotalcountAdam/dense_23/kernel/mAdam/dense_23/bias/m"Adam/lstm_69/lstm_cell_69/kernel/m,Adam/lstm_69/lstm_cell_69/recurrent_kernel/m Adam/lstm_69/lstm_cell_69/bias/m"Adam/lstm_70/lstm_cell_70/kernel/m,Adam/lstm_70/lstm_cell_70/recurrent_kernel/m Adam/lstm_70/lstm_cell_70/bias/m"Adam/lstm_71/lstm_cell_71/kernel/m,Adam/lstm_71/lstm_cell_71/recurrent_kernel/m Adam/lstm_71/lstm_cell_71/bias/mAdam/dense_23/kernel/vAdam/dense_23/bias/v"Adam/lstm_69/lstm_cell_69/kernel/v,Adam/lstm_69/lstm_cell_69/recurrent_kernel/v Adam/lstm_69/lstm_cell_69/bias/v"Adam/lstm_70/lstm_cell_70/kernel/v,Adam/lstm_70/lstm_cell_70/recurrent_kernel/v Adam/lstm_70/lstm_cell_70/bias/v"Adam/lstm_71/lstm_cell_71/kernel/v,Adam/lstm_71/lstm_cell_71/recurrent_kernel/v Adam/lstm_71/lstm_cell_71/bias/v*4
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
GPU 2J 8? **
f%R#
!__inference__traced_restore_53355̖+
?7
?
while_body_51783
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_7_matmul_readvariableop_resource_0:	d?G
4while_lstm_cell_7_matmul_1_readvariableop_resource_0:	2?B
3while_lstm_cell_7_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_7_matmul_readvariableop_resource:	d?E
2while_lstm_cell_7_matmul_1_readvariableop_resource:	2?@
1while_lstm_cell_7_biasadd_readvariableop_resource:	???(while/lstm_cell_7/BiasAdd/ReadVariableOp?'while/lstm_cell_7/MatMul/ReadVariableOp?)while/lstm_cell_7/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
'while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_7/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_7/addAddV2"while/lstm_cell_7/MatMul:product:0$while/lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
(while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_7/BiasAddBiasAddwhile/lstm_cell_7/add:z:00while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0"while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitx
while/lstm_cell_7/SigmoidSigmoid while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????2z
while/lstm_cell_7/Sigmoid_1Sigmoid while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_7/mulMulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2r
while/lstm_cell_7/ReluRelu while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_7/mul_1Mulwhile/lstm_cell_7/Sigmoid:y:0$while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_7/add_1AddV2while/lstm_cell_7/mul:z:0while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????2z
while/lstm_cell_7/Sigmoid_2Sigmoid while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????2o
while/lstm_cell_7/Relu_1Reluwhile/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_7/mul_2Mulwhile/lstm_cell_7/Sigmoid_2:y:0&while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_7/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2x
while/Identity_5Identitywhile/lstm_cell_7/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp)^while/lstm_cell_7/BiasAdd/ReadVariableOp(^while/lstm_cell_7/MatMul/ReadVariableOp*^while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_7_biasadd_readvariableop_resource3while_lstm_cell_7_biasadd_readvariableop_resource_0"j
2while_lstm_cell_7_matmul_1_readvariableop_resource4while_lstm_cell_7_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_7_matmul_readvariableop_resource2while_lstm_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2T
(while/lstm_cell_7/BiasAdd/ReadVariableOp(while/lstm_cell_7/BiasAdd/ReadVariableOp2R
'while/lstm_cell_7/MatMul/ReadVariableOp'while/lstm_cell_7/MatMul/ReadVariableOp2V
)while/lstm_cell_7/MatMul_1/ReadVariableOp)while/lstm_cell_7/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
+__inference_lstm_cell_6_layer_call_fn_52805

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
GPU 2J 8? *O
fJRH
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_47820o
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
?I
?
B__inference_lstm_70_layer_call_and_return_conditional_losses_49102

inputs=
*lstm_cell_7_matmul_readvariableop_resource:	d??
,lstm_cell_7_matmul_1_readvariableop_resource:	2?:
+lstm_cell_7_biasadd_readvariableop_resource:	?
identity??"lstm_cell_7/BiasAdd/ReadVariableOp?!lstm_cell_7/MatMul/ReadVariableOp?#lstm_cell_7/MatMul_1/ReadVariableOp?while;
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
!lstm_cell_7/MatMul/ReadVariableOpReadVariableOp*lstm_cell_7_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_7/MatMulMatMulstrided_slice_2:output:0)lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_7/MatMul_1MatMulzeros:output:0+lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_7/addAddV2lstm_cell_7/MatMul:product:0lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_7/BiasAddBiasAddlstm_cell_7/add:z:0*lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitl
lstm_cell_7/SigmoidSigmoidlstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????2n
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????2u
lstm_cell_7/mulMullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2f
lstm_cell_7/ReluRelulstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_7/mul_1Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????2x
lstm_cell_7/add_1AddV2lstm_cell_7/mul:z:0lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????2n
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????2c
lstm_cell_7/Relu_1Relulstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_7/mul_2Mullstm_cell_7/Sigmoid_2:y:0 lstm_cell_7/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_7_matmul_readvariableop_resource,lstm_cell_7_matmul_1_readvariableop_resource+lstm_cell_7_biasadd_readvariableop_resource*
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
bodyR
while_body_49018*
condR
while_cond_49017*K
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
NoOpNoOp#^lstm_cell_7/BiasAdd/ReadVariableOp"^lstm_cell_7/MatMul/ReadVariableOp$^lstm_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2H
"lstm_cell_7/BiasAdd/ReadVariableOp"lstm_cell_7/BiasAdd/ReadVariableOp2F
!lstm_cell_7/MatMul/ReadVariableOp!lstm_cell_7/MatMul/ReadVariableOp2J
#lstm_cell_7/MatMul_1/ReadVariableOp#lstm_cell_7/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_48374
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_48374___redundant_placeholder03
/while_while_cond_48374___redundant_placeholder13
/while_while_cond_48374___redundant_placeholder23
/while_while_cond_48374___redundant_placeholder3
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
while_body_52256
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_8_matmul_readvariableop_resource_0:2(F
4while_lstm_cell_8_matmul_1_readvariableop_resource_0:
(A
3while_lstm_cell_8_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_8_matmul_readvariableop_resource:2(D
2while_lstm_cell_8_matmul_1_readvariableop_resource:
(?
1while_lstm_cell_8_biasadd_readvariableop_resource:(??(while/lstm_cell_8/BiasAdd/ReadVariableOp?'while/lstm_cell_8/MatMul/ReadVariableOp?)while/lstm_cell_8/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
'while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_8/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_8/addAddV2"while/lstm_cell_8/MatMul:product:0$while/lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
(while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_8/BiasAddBiasAddwhile/lstm_cell_8/add:z:00while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(c
!while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_8/splitSplit*while/lstm_cell_8/split/split_dim:output:0"while/lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitx
while/lstm_cell_8/SigmoidSigmoid while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:?????????
z
while/lstm_cell_8/Sigmoid_1Sigmoid while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_8/mulMulwhile/lstm_cell_8/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
r
while/lstm_cell_8/ReluRelu while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_8/mul_1Mulwhile/lstm_cell_8/Sigmoid:y:0$while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_8/add_1AddV2while/lstm_cell_8/mul:z:0while/lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:?????????
z
while/lstm_cell_8/Sigmoid_2Sigmoid while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:?????????
o
while/lstm_cell_8/Relu_1Reluwhile/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_8/mul_2Mulwhile/lstm_cell_8/Sigmoid_2:y:0&while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_8/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_8/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
x
while/Identity_5Identitywhile/lstm_cell_8/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp)^while/lstm_cell_8/BiasAdd/ReadVariableOp(^while/lstm_cell_8/MatMul/ReadVariableOp*^while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_8_biasadd_readvariableop_resource3while_lstm_cell_8_biasadd_readvariableop_resource_0"j
2while_lstm_cell_8_matmul_1_readvariableop_resource4while_lstm_cell_8_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_8_matmul_readvariableop_resource2while_lstm_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2T
(while/lstm_cell_8/BiasAdd/ReadVariableOp(while/lstm_cell_8/BiasAdd/ReadVariableOp2R
'while/lstm_cell_8/MatMul/ReadVariableOp'while/lstm_cell_8/MatMul/ReadVariableOp2V
)while/lstm_cell_8/MatMul_1/ReadVariableOp)while/lstm_cell_8/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?I
?
B__inference_lstm_71_layer_call_and_return_conditional_losses_52626

inputs<
*lstm_cell_8_matmul_readvariableop_resource:2(>
,lstm_cell_8_matmul_1_readvariableop_resource:
(9
+lstm_cell_8_biasadd_readvariableop_resource:(
identity??"lstm_cell_8/BiasAdd/ReadVariableOp?!lstm_cell_8/MatMul/ReadVariableOp?#lstm_cell_8/MatMul_1/ReadVariableOp?while;
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
!lstm_cell_8/MatMul/ReadVariableOpReadVariableOp*lstm_cell_8_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_8/MatMulMatMulstrided_slice_2:output:0)lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
#lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_8/MatMul_1MatMulzeros:output:0+lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_8/addAddV2lstm_cell_8/MatMul:product:0lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
"lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_8/BiasAddBiasAddlstm_cell_8/add:z:0*lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(]
lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_8/splitSplit$lstm_cell_8/split/split_dim:output:0lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitl
lstm_cell_8/SigmoidSigmoidlstm_cell_8/split:output:0*
T0*'
_output_shapes
:?????????
n
lstm_cell_8/Sigmoid_1Sigmoidlstm_cell_8/split:output:1*
T0*'
_output_shapes
:?????????
u
lstm_cell_8/mulMullstm_cell_8/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
f
lstm_cell_8/ReluRelulstm_cell_8/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_8/mul_1Mullstm_cell_8/Sigmoid:y:0lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:?????????
x
lstm_cell_8/add_1AddV2lstm_cell_8/mul:z:0lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:?????????
n
lstm_cell_8/Sigmoid_2Sigmoidlstm_cell_8/split:output:3*
T0*'
_output_shapes
:?????????
c
lstm_cell_8/Relu_1Relulstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_8/mul_2Mullstm_cell_8/Sigmoid_2:y:0 lstm_cell_8/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_8_matmul_readvariableop_resource,lstm_cell_8_matmul_1_readvariableop_resource+lstm_cell_8_biasadd_readvariableop_resource*
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
bodyR
while_body_52542*
condR
while_cond_52541*K
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
NoOpNoOp#^lstm_cell_8/BiasAdd/ReadVariableOp"^lstm_cell_8/MatMul/ReadVariableOp$^lstm_cell_8/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2H
"lstm_cell_8/BiasAdd/ReadVariableOp"lstm_cell_8/BiasAdd/ReadVariableOp2F
!lstm_cell_8/MatMul/ReadVariableOp!lstm_cell_8/MatMul/ReadVariableOp2J
#lstm_cell_8/MatMul_1/ReadVariableOp#lstm_cell_8/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
'__inference_lstm_69_layer_call_fn_50932
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
GPU 2J 8? *K
fFRD
B__inference_lstm_69_layer_call_and_return_conditional_losses_47903|
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
?
?
'__inference_lstm_71_layer_call_fn_52186

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
GPU 2J 8? *K
fFRD
B__inference_lstm_71_layer_call_and_return_conditional_losses_49252o
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
-__inference_sequential_23_layer_call_fn_49918
lstm_69_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_69_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8? *Q
fLRJ
H__inference_sequential_23_layer_call_and_return_conditional_losses_49866o
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
_user_specified_namelstm_69_input
?
?
while_cond_48867
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_48867___redundant_placeholder03
/while_while_cond_48867___redundant_placeholder13
/while_while_cond_48867___redundant_placeholder23
/while_while_cond_48867___redundant_placeholder3
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
while_cond_48724
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_48724___redundant_placeholder03
/while_while_cond_48724___redundant_placeholder13
/while_while_cond_48724___redundant_placeholder23
/while_while_cond_48724___redundant_placeholder3
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
while_cond_51166
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_51166___redundant_placeholder03
/while_while_cond_51166___redundant_placeholder13
/while_while_cond_51166___redundant_placeholder23
/while_while_cond_51166___redundant_placeholder3
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
?V
?
__inference__traced_save_53225
file_prefix.
*savev2_dense_23_kernel_read_readvariableop,
(savev2_dense_23_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_69_lstm_cell_69_kernel_read_readvariableopD
@savev2_lstm_69_lstm_cell_69_recurrent_kernel_read_readvariableop8
4savev2_lstm_69_lstm_cell_69_bias_read_readvariableop:
6savev2_lstm_70_lstm_cell_70_kernel_read_readvariableopD
@savev2_lstm_70_lstm_cell_70_recurrent_kernel_read_readvariableop8
4savev2_lstm_70_lstm_cell_70_bias_read_readvariableop:
6savev2_lstm_71_lstm_cell_71_kernel_read_readvariableopD
@savev2_lstm_71_lstm_cell_71_recurrent_kernel_read_readvariableop8
4savev2_lstm_71_lstm_cell_71_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_23_kernel_m_read_readvariableop3
/savev2_adam_dense_23_bias_m_read_readvariableopA
=savev2_adam_lstm_69_lstm_cell_69_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_69_lstm_cell_69_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_69_lstm_cell_69_bias_m_read_readvariableopA
=savev2_adam_lstm_70_lstm_cell_70_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_70_lstm_cell_70_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_70_lstm_cell_70_bias_m_read_readvariableopA
=savev2_adam_lstm_71_lstm_cell_71_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_71_lstm_cell_71_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_71_lstm_cell_71_bias_m_read_readvariableop5
1savev2_adam_dense_23_kernel_v_read_readvariableop3
/savev2_adam_dense_23_bias_v_read_readvariableopA
=savev2_adam_lstm_69_lstm_cell_69_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_69_lstm_cell_69_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_69_lstm_cell_69_bias_v_read_readvariableopA
=savev2_adam_lstm_70_lstm_cell_70_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_70_lstm_cell_70_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_70_lstm_cell_70_bias_v_read_readvariableopA
=savev2_adam_lstm_71_lstm_cell_71_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_71_lstm_cell_71_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_71_lstm_cell_71_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_23_kernel_read_readvariableop(savev2_dense_23_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_69_lstm_cell_69_kernel_read_readvariableop@savev2_lstm_69_lstm_cell_69_recurrent_kernel_read_readvariableop4savev2_lstm_69_lstm_cell_69_bias_read_readvariableop6savev2_lstm_70_lstm_cell_70_kernel_read_readvariableop@savev2_lstm_70_lstm_cell_70_recurrent_kernel_read_readvariableop4savev2_lstm_70_lstm_cell_70_bias_read_readvariableop6savev2_lstm_71_lstm_cell_71_kernel_read_readvariableop@savev2_lstm_71_lstm_cell_71_recurrent_kernel_read_readvariableop4savev2_lstm_71_lstm_cell_71_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_23_kernel_m_read_readvariableop/savev2_adam_dense_23_bias_m_read_readvariableop=savev2_adam_lstm_69_lstm_cell_69_kernel_m_read_readvariableopGsavev2_adam_lstm_69_lstm_cell_69_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_69_lstm_cell_69_bias_m_read_readvariableop=savev2_adam_lstm_70_lstm_cell_70_kernel_m_read_readvariableopGsavev2_adam_lstm_70_lstm_cell_70_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_70_lstm_cell_70_bias_m_read_readvariableop=savev2_adam_lstm_71_lstm_cell_71_kernel_m_read_readvariableopGsavev2_adam_lstm_71_lstm_cell_71_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_71_lstm_cell_71_bias_m_read_readvariableop1savev2_adam_dense_23_kernel_v_read_readvariableop/savev2_adam_dense_23_bias_v_read_readvariableop=savev2_adam_lstm_69_lstm_cell_69_kernel_v_read_readvariableopGsavev2_adam_lstm_69_lstm_cell_69_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_69_lstm_cell_69_bias_v_read_readvariableop=savev2_adam_lstm_70_lstm_cell_70_kernel_v_read_readvariableopGsavev2_adam_lstm_70_lstm_cell_70_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_70_lstm_cell_70_bias_v_read_readvariableop=savev2_adam_lstm_71_lstm_cell_71_kernel_v_read_readvariableopGsavev2_adam_lstm_71_lstm_cell_71_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_71_lstm_cell_71_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
?
while_cond_51023
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_51023___redundant_placeholder03
/while_while_cond_51023___redundant_placeholder13
/while_while_cond_51023___redundant_placeholder23
/while_while_cond_51023___redundant_placeholder3
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
?I
?
B__inference_lstm_71_layer_call_and_return_conditional_losses_49468

inputs<
*lstm_cell_8_matmul_readvariableop_resource:2(>
,lstm_cell_8_matmul_1_readvariableop_resource:
(9
+lstm_cell_8_biasadd_readvariableop_resource:(
identity??"lstm_cell_8/BiasAdd/ReadVariableOp?!lstm_cell_8/MatMul/ReadVariableOp?#lstm_cell_8/MatMul_1/ReadVariableOp?while;
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
!lstm_cell_8/MatMul/ReadVariableOpReadVariableOp*lstm_cell_8_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_8/MatMulMatMulstrided_slice_2:output:0)lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
#lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_8/MatMul_1MatMulzeros:output:0+lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_8/addAddV2lstm_cell_8/MatMul:product:0lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
"lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_8/BiasAddBiasAddlstm_cell_8/add:z:0*lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(]
lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_8/splitSplit$lstm_cell_8/split/split_dim:output:0lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitl
lstm_cell_8/SigmoidSigmoidlstm_cell_8/split:output:0*
T0*'
_output_shapes
:?????????
n
lstm_cell_8/Sigmoid_1Sigmoidlstm_cell_8/split:output:1*
T0*'
_output_shapes
:?????????
u
lstm_cell_8/mulMullstm_cell_8/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
f
lstm_cell_8/ReluRelulstm_cell_8/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_8/mul_1Mullstm_cell_8/Sigmoid:y:0lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:?????????
x
lstm_cell_8/add_1AddV2lstm_cell_8/mul:z:0lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:?????????
n
lstm_cell_8/Sigmoid_2Sigmoidlstm_cell_8/split:output:3*
T0*'
_output_shapes
:?????????
c
lstm_cell_8/Relu_1Relulstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_8/mul_2Mullstm_cell_8/Sigmoid_2:y:0 lstm_cell_8/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_8_matmul_readvariableop_resource,lstm_cell_8_matmul_1_readvariableop_resource+lstm_cell_8_biasadd_readvariableop_resource*
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
bodyR
while_body_49384*
condR
while_cond_49383*K
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
NoOpNoOp#^lstm_cell_8/BiasAdd/ReadVariableOp"^lstm_cell_8/MatMul/ReadVariableOp$^lstm_cell_8/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2H
"lstm_cell_8/BiasAdd/ReadVariableOp"lstm_cell_8/BiasAdd/ReadVariableOp2F
!lstm_cell_8/MatMul/ReadVariableOp!lstm_cell_8/MatMul/ReadVariableOp2J
#lstm_cell_8/MatMul_1/ReadVariableOp#lstm_cell_8/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
H__inference_sequential_23_layer_call_and_return_conditional_losses_49866

inputs 
lstm_69_49839:	? 
lstm_69_49841:	d?
lstm_69_49843:	? 
lstm_70_49846:	d? 
lstm_70_49848:	2?
lstm_70_49850:	?
lstm_71_49853:2(
lstm_71_49855:
(
lstm_71_49857:( 
dense_23_49860:

dense_23_49862:
identity?? dense_23/StatefulPartitionedCall?lstm_69/StatefulPartitionedCall?lstm_70/StatefulPartitionedCall?lstm_71/StatefulPartitionedCall?
lstm_69/StatefulPartitionedCallStatefulPartitionedCallinputslstm_69_49839lstm_69_49841lstm_69_49843*
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
GPU 2J 8? *K
fFRD
B__inference_lstm_69_layer_call_and_return_conditional_losses_49798?
lstm_70/StatefulPartitionedCallStatefulPartitionedCall(lstm_69/StatefulPartitionedCall:output:0lstm_70_49846lstm_70_49848lstm_70_49850*
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
GPU 2J 8? *K
fFRD
B__inference_lstm_70_layer_call_and_return_conditional_losses_49633?
lstm_71/StatefulPartitionedCallStatefulPartitionedCall(lstm_70/StatefulPartitionedCall:output:0lstm_71_49853lstm_71_49855lstm_71_49857*
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
GPU 2J 8? *K
fFRD
B__inference_lstm_71_layer_call_and_return_conditional_losses_49468?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall(lstm_71/StatefulPartitionedCall:output:0dense_23_49860dense_23_49862*
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
GPU 2J 8? *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_49270x
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_23/StatefulPartitionedCall ^lstm_69/StatefulPartitionedCall ^lstm_70/StatefulPartitionedCall ^lstm_71/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2B
lstm_69/StatefulPartitionedCalllstm_69/StatefulPartitionedCall2B
lstm_70/StatefulPartitionedCalllstm_70/StatefulPartitionedCall2B
lstm_71/StatefulPartitionedCalllstm_71/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?"
?
while_body_48025
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_6_48049_0:	?,
while_lstm_cell_6_48051_0:	d?(
while_lstm_cell_6_48053_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_6_48049:	?*
while_lstm_cell_6_48051:	d?&
while_lstm_cell_6_48053:	???)while/lstm_cell_6/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_6_48049_0while_lstm_cell_6_48051_0while_lstm_cell_6_48053_0*
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
GPU 2J 8? *O
fJRH
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_47966?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_6/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity2while/lstm_cell_6/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity2while/lstm_cell_6/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dx

while/NoOpNoOp*^while/lstm_cell_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_6_48049while_lstm_cell_6_48049_0"4
while_lstm_cell_6_48051while_lstm_cell_6_48051_0"4
while_lstm_cell_6_48053while_lstm_cell_6_48053_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2V
)while/lstm_cell_6/StatefulPartitionedCall)while/lstm_cell_6/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
'__inference_lstm_70_layer_call_fn_51570

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
GPU 2J 8? *K
fFRD
B__inference_lstm_70_layer_call_and_return_conditional_losses_49102s
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
?
&sequential_23_lstm_69_while_cond_47384H
Dsequential_23_lstm_69_while_sequential_23_lstm_69_while_loop_counterN
Jsequential_23_lstm_69_while_sequential_23_lstm_69_while_maximum_iterations+
'sequential_23_lstm_69_while_placeholder-
)sequential_23_lstm_69_while_placeholder_1-
)sequential_23_lstm_69_while_placeholder_2-
)sequential_23_lstm_69_while_placeholder_3J
Fsequential_23_lstm_69_while_less_sequential_23_lstm_69_strided_slice_1_
[sequential_23_lstm_69_while_sequential_23_lstm_69_while_cond_47384___redundant_placeholder0_
[sequential_23_lstm_69_while_sequential_23_lstm_69_while_cond_47384___redundant_placeholder1_
[sequential_23_lstm_69_while_sequential_23_lstm_69_while_cond_47384___redundant_placeholder2_
[sequential_23_lstm_69_while_sequential_23_lstm_69_while_cond_47384___redundant_placeholder3(
$sequential_23_lstm_69_while_identity
?
 sequential_23/lstm_69/while/LessLess'sequential_23_lstm_69_while_placeholderFsequential_23_lstm_69_while_less_sequential_23_lstm_69_strided_slice_1*
T0*
_output_shapes
: w
$sequential_23/lstm_69/while/IdentityIdentity$sequential_23/lstm_69/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_23_lstm_69_while_identity-sequential_23/lstm_69/while/Identity:output:0*(
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

?
-__inference_sequential_23_layer_call_fn_50067

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
GPU 2J 8? *Q
fLRJ
H__inference_sequential_23_layer_call_and_return_conditional_losses_49866o
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
?"
?
while_body_47834
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_6_47858_0:	?,
while_lstm_cell_6_47860_0:	d?(
while_lstm_cell_6_47862_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_6_47858:	?*
while_lstm_cell_6_47860:	d?&
while_lstm_cell_6_47862:	???)while/lstm_cell_6/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_6_47858_0while_lstm_cell_6_47860_0while_lstm_cell_6_47862_0*
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
GPU 2J 8? *O
fJRH
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_47820?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_6/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity2while/lstm_cell_6/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity2while/lstm_cell_6/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dx

while/NoOpNoOp*^while/lstm_cell_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_6_47858while_lstm_cell_6_47858_0"4
while_lstm_cell_6_47860while_lstm_cell_6_47860_0"4
while_lstm_cell_6_47862while_lstm_cell_6_47862_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2V
)while/lstm_cell_6/StatefulPartitionedCall)while/lstm_cell_6/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_51925
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_51925___redundant_placeholder03
/while_while_cond_51925___redundant_placeholder13
/while_while_cond_51925___redundant_placeholder23
/while_while_cond_51925___redundant_placeholder3
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
??
?
!__inference__traced_restore_53355
file_prefix2
 assignvariableop_dense_23_kernel:
.
 assignvariableop_1_dense_23_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: A
.assignvariableop_7_lstm_69_lstm_cell_69_kernel:	?K
8assignvariableop_8_lstm_69_lstm_cell_69_recurrent_kernel:	d?;
,assignvariableop_9_lstm_69_lstm_cell_69_bias:	?B
/assignvariableop_10_lstm_70_lstm_cell_70_kernel:	d?L
9assignvariableop_11_lstm_70_lstm_cell_70_recurrent_kernel:	2?<
-assignvariableop_12_lstm_70_lstm_cell_70_bias:	?A
/assignvariableop_13_lstm_71_lstm_cell_71_kernel:2(K
9assignvariableop_14_lstm_71_lstm_cell_71_recurrent_kernel:
(;
-assignvariableop_15_lstm_71_lstm_cell_71_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_23_kernel_m:
6
(assignvariableop_19_adam_dense_23_bias_m:I
6assignvariableop_20_adam_lstm_69_lstm_cell_69_kernel_m:	?S
@assignvariableop_21_adam_lstm_69_lstm_cell_69_recurrent_kernel_m:	d?C
4assignvariableop_22_adam_lstm_69_lstm_cell_69_bias_m:	?I
6assignvariableop_23_adam_lstm_70_lstm_cell_70_kernel_m:	d?S
@assignvariableop_24_adam_lstm_70_lstm_cell_70_recurrent_kernel_m:	2?C
4assignvariableop_25_adam_lstm_70_lstm_cell_70_bias_m:	?H
6assignvariableop_26_adam_lstm_71_lstm_cell_71_kernel_m:2(R
@assignvariableop_27_adam_lstm_71_lstm_cell_71_recurrent_kernel_m:
(B
4assignvariableop_28_adam_lstm_71_lstm_cell_71_bias_m:(<
*assignvariableop_29_adam_dense_23_kernel_v:
6
(assignvariableop_30_adam_dense_23_bias_v:I
6assignvariableop_31_adam_lstm_69_lstm_cell_69_kernel_v:	?S
@assignvariableop_32_adam_lstm_69_lstm_cell_69_recurrent_kernel_v:	d?C
4assignvariableop_33_adam_lstm_69_lstm_cell_69_bias_v:	?I
6assignvariableop_34_adam_lstm_70_lstm_cell_70_kernel_v:	d?S
@assignvariableop_35_adam_lstm_70_lstm_cell_70_recurrent_kernel_v:	2?C
4assignvariableop_36_adam_lstm_70_lstm_cell_70_bias_v:	?H
6assignvariableop_37_adam_lstm_71_lstm_cell_71_kernel_v:2(R
@assignvariableop_38_adam_lstm_71_lstm_cell_71_recurrent_kernel_v:
(B
4assignvariableop_39_adam_lstm_71_lstm_cell_71_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_23_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_23_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_69_lstm_cell_69_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_69_lstm_cell_69_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_69_lstm_cell_69_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp/assignvariableop_10_lstm_70_lstm_cell_70_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp9assignvariableop_11_lstm_70_lstm_cell_70_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp-assignvariableop_12_lstm_70_lstm_cell_70_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp/assignvariableop_13_lstm_71_lstm_cell_71_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp9assignvariableop_14_lstm_71_lstm_cell_71_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp-assignvariableop_15_lstm_71_lstm_cell_71_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_23_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_23_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_lstm_69_lstm_cell_69_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_lstm_69_lstm_cell_69_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_lstm_69_lstm_cell_69_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_lstm_70_lstm_cell_70_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_lstm_70_lstm_cell_70_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_lstm_70_lstm_cell_70_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp6assignvariableop_26_adam_lstm_71_lstm_cell_71_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_lstm_71_lstm_cell_71_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp4assignvariableop_28_adam_lstm_71_lstm_cell_71_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_23_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_23_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_lstm_69_lstm_cell_69_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp@assignvariableop_32_adam_lstm_69_lstm_cell_69_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_lstm_69_lstm_cell_69_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_lstm_70_lstm_cell_70_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp@assignvariableop_35_adam_lstm_70_lstm_cell_70_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_lstm_70_lstm_cell_70_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp6assignvariableop_37_adam_lstm_71_lstm_cell_71_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp@assignvariableop_38_adam_lstm_71_lstm_cell_71_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_lstm_71_lstm_cell_71_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
?
while_cond_48024
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_48024___redundant_placeholder03
/while_while_cond_48024___redundant_placeholder13
/while_while_cond_48024___redundant_placeholder23
/while_while_cond_48024___redundant_placeholder3
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
while_cond_51639
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_51639___redundant_placeholder03
/while_while_cond_51639___redundant_placeholder13
/while_while_cond_51639___redundant_placeholder23
/while_while_cond_51639___redundant_placeholder3
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
while_body_48725
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_8_48749_0:2(+
while_lstm_cell_8_48751_0:
('
while_lstm_cell_8_48753_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_8_48749:2()
while_lstm_cell_8_48751:
(%
while_lstm_cell_8_48753:(??)while/lstm_cell_8/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_8/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_8_48749_0while_lstm_cell_8_48751_0while_lstm_cell_8_48753_0*
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
GPU 2J 8? *O
fJRH
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_48666?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_8/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity2while/lstm_cell_8/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity2while/lstm_cell_8/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
x

while/NoOpNoOp*^while/lstm_cell_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_8_48749while_lstm_cell_8_48749_0"4
while_lstm_cell_8_48751while_lstm_cell_8_48751_0"4
while_lstm_cell_8_48753while_lstm_cell_8_48753_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2V
)while/lstm_cell_8/StatefulPartitionedCall)while/lstm_cell_8/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?"
?
while_body_48375
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_7_48399_0:	d?,
while_lstm_cell_7_48401_0:	2?(
while_lstm_cell_7_48403_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_7_48399:	d?*
while_lstm_cell_7_48401:	2?&
while_lstm_cell_7_48403:	???)while/lstm_cell_7/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_7/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_7_48399_0while_lstm_cell_7_48401_0while_lstm_cell_7_48403_0*
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
GPU 2J 8? *O
fJRH
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_48316?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_7/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity2while/lstm_cell_7/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity2while/lstm_cell_7/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2x

while/NoOpNoOp*^while/lstm_cell_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_7_48399while_lstm_cell_7_48399_0"4
while_lstm_cell_7_48401while_lstm_cell_7_48401_0"4
while_lstm_cell_7_48403while_lstm_cell_7_48403_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2V
)while/lstm_cell_7/StatefulPartitionedCall)while/lstm_cell_7/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
+__inference_lstm_cell_7_layer_call_fn_52903

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
GPU 2J 8? *O
fJRH
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_48170o
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
?7
?
while_body_52069
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_7_matmul_readvariableop_resource_0:	d?G
4while_lstm_cell_7_matmul_1_readvariableop_resource_0:	2?B
3while_lstm_cell_7_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_7_matmul_readvariableop_resource:	d?E
2while_lstm_cell_7_matmul_1_readvariableop_resource:	2?@
1while_lstm_cell_7_biasadd_readvariableop_resource:	???(while/lstm_cell_7/BiasAdd/ReadVariableOp?'while/lstm_cell_7/MatMul/ReadVariableOp?)while/lstm_cell_7/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
'while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_7/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_7/addAddV2"while/lstm_cell_7/MatMul:product:0$while/lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
(while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_7/BiasAddBiasAddwhile/lstm_cell_7/add:z:00while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0"while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitx
while/lstm_cell_7/SigmoidSigmoid while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????2z
while/lstm_cell_7/Sigmoid_1Sigmoid while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_7/mulMulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2r
while/lstm_cell_7/ReluRelu while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_7/mul_1Mulwhile/lstm_cell_7/Sigmoid:y:0$while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_7/add_1AddV2while/lstm_cell_7/mul:z:0while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????2z
while/lstm_cell_7/Sigmoid_2Sigmoid while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????2o
while/lstm_cell_7/Relu_1Reluwhile/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_7/mul_2Mulwhile/lstm_cell_7/Sigmoid_2:y:0&while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_7/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2x
while/Identity_5Identitywhile/lstm_cell_7/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp)^while/lstm_cell_7/BiasAdd/ReadVariableOp(^while/lstm_cell_7/MatMul/ReadVariableOp*^while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_7_biasadd_readvariableop_resource3while_lstm_cell_7_biasadd_readvariableop_resource_0"j
2while_lstm_cell_7_matmul_1_readvariableop_resource4while_lstm_cell_7_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_7_matmul_readvariableop_resource2while_lstm_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2T
(while/lstm_cell_7/BiasAdd/ReadVariableOp(while/lstm_cell_7/BiasAdd/ReadVariableOp2R
'while/lstm_cell_7/MatMul/ReadVariableOp'while/lstm_cell_7/MatMul/ReadVariableOp2V
)while/lstm_cell_7/MatMul_1/ReadVariableOp)while/lstm_cell_7/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?J
?
B__inference_lstm_69_layer_call_and_return_conditional_losses_51108
inputs_0=
*lstm_cell_6_matmul_readvariableop_resource:	??
,lstm_cell_6_matmul_1_readvariableop_resource:	d?:
+lstm_cell_6_biasadd_readvariableop_resource:	?
identity??"lstm_cell_6/BiasAdd/ReadVariableOp?!lstm_cell_6/MatMul/ReadVariableOp?#lstm_cell_6/MatMul_1/ReadVariableOp?while=
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
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitl
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????dn
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????du
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????df
lstm_cell_6/ReluRelulstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????dx
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????dn
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????dc
lstm_cell_6/Relu_1Relulstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0 lstm_cell_6/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
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
bodyR
while_body_51024*
condR
while_cond_51023*K
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
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?@
?

lstm_71_while_body_50404,
(lstm_71_while_lstm_71_while_loop_counter2
.lstm_71_while_lstm_71_while_maximum_iterations
lstm_71_while_placeholder
lstm_71_while_placeholder_1
lstm_71_while_placeholder_2
lstm_71_while_placeholder_3+
'lstm_71_while_lstm_71_strided_slice_1_0g
clstm_71_while_tensorarrayv2read_tensorlistgetitem_lstm_71_tensorarrayunstack_tensorlistfromtensor_0L
:lstm_71_while_lstm_cell_8_matmul_readvariableop_resource_0:2(N
<lstm_71_while_lstm_cell_8_matmul_1_readvariableop_resource_0:
(I
;lstm_71_while_lstm_cell_8_biasadd_readvariableop_resource_0:(
lstm_71_while_identity
lstm_71_while_identity_1
lstm_71_while_identity_2
lstm_71_while_identity_3
lstm_71_while_identity_4
lstm_71_while_identity_5)
%lstm_71_while_lstm_71_strided_slice_1e
alstm_71_while_tensorarrayv2read_tensorlistgetitem_lstm_71_tensorarrayunstack_tensorlistfromtensorJ
8lstm_71_while_lstm_cell_8_matmul_readvariableop_resource:2(L
:lstm_71_while_lstm_cell_8_matmul_1_readvariableop_resource:
(G
9lstm_71_while_lstm_cell_8_biasadd_readvariableop_resource:(??0lstm_71/while/lstm_cell_8/BiasAdd/ReadVariableOp?/lstm_71/while/lstm_cell_8/MatMul/ReadVariableOp?1lstm_71/while/lstm_cell_8/MatMul_1/ReadVariableOp?
?lstm_71/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
1lstm_71/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_71_while_tensorarrayv2read_tensorlistgetitem_lstm_71_tensorarrayunstack_tensorlistfromtensor_0lstm_71_while_placeholderHlstm_71/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
/lstm_71/while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp:lstm_71_while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
 lstm_71/while/lstm_cell_8/MatMulMatMul8lstm_71/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_71/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
1lstm_71/while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp<lstm_71_while_lstm_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
"lstm_71/while/lstm_cell_8/MatMul_1MatMullstm_71_while_placeholder_29lstm_71/while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_71/while/lstm_cell_8/addAddV2*lstm_71/while/lstm_cell_8/MatMul:product:0,lstm_71/while/lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
0lstm_71/while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp;lstm_71_while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
!lstm_71/while/lstm_cell_8/BiasAddBiasAdd!lstm_71/while/lstm_cell_8/add:z:08lstm_71/while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(k
)lstm_71/while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_71/while/lstm_cell_8/splitSplit2lstm_71/while/lstm_cell_8/split/split_dim:output:0*lstm_71/while/lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
!lstm_71/while/lstm_cell_8/SigmoidSigmoid(lstm_71/while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:?????????
?
#lstm_71/while/lstm_cell_8/Sigmoid_1Sigmoid(lstm_71/while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_71/while/lstm_cell_8/mulMul'lstm_71/while/lstm_cell_8/Sigmoid_1:y:0lstm_71_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
lstm_71/while/lstm_cell_8/ReluRelu(lstm_71/while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_71/while/lstm_cell_8/mul_1Mul%lstm_71/while/lstm_cell_8/Sigmoid:y:0,lstm_71/while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_71/while/lstm_cell_8/add_1AddV2!lstm_71/while/lstm_cell_8/mul:z:0#lstm_71/while/lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
#lstm_71/while/lstm_cell_8/Sigmoid_2Sigmoid(lstm_71/while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:?????????

 lstm_71/while/lstm_cell_8/Relu_1Relu#lstm_71/while/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_71/while/lstm_cell_8/mul_2Mul'lstm_71/while/lstm_cell_8/Sigmoid_2:y:0.lstm_71/while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
2lstm_71/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_71_while_placeholder_1lstm_71_while_placeholder#lstm_71/while/lstm_cell_8/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_71/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_71/while/addAddV2lstm_71_while_placeholderlstm_71/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_71/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_71/while/add_1AddV2(lstm_71_while_lstm_71_while_loop_counterlstm_71/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_71/while/IdentityIdentitylstm_71/while/add_1:z:0^lstm_71/while/NoOp*
T0*
_output_shapes
: ?
lstm_71/while/Identity_1Identity.lstm_71_while_lstm_71_while_maximum_iterations^lstm_71/while/NoOp*
T0*
_output_shapes
: q
lstm_71/while/Identity_2Identitylstm_71/while/add:z:0^lstm_71/while/NoOp*
T0*
_output_shapes
: ?
lstm_71/while/Identity_3IdentityBlstm_71/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_71/while/NoOp*
T0*
_output_shapes
: ?
lstm_71/while/Identity_4Identity#lstm_71/while/lstm_cell_8/mul_2:z:0^lstm_71/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_71/while/Identity_5Identity#lstm_71/while/lstm_cell_8/add_1:z:0^lstm_71/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_71/while/NoOpNoOp1^lstm_71/while/lstm_cell_8/BiasAdd/ReadVariableOp0^lstm_71/while/lstm_cell_8/MatMul/ReadVariableOp2^lstm_71/while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_71_while_identitylstm_71/while/Identity:output:0"=
lstm_71_while_identity_1!lstm_71/while/Identity_1:output:0"=
lstm_71_while_identity_2!lstm_71/while/Identity_2:output:0"=
lstm_71_while_identity_3!lstm_71/while/Identity_3:output:0"=
lstm_71_while_identity_4!lstm_71/while/Identity_4:output:0"=
lstm_71_while_identity_5!lstm_71/while/Identity_5:output:0"P
%lstm_71_while_lstm_71_strided_slice_1'lstm_71_while_lstm_71_strided_slice_1_0"x
9lstm_71_while_lstm_cell_8_biasadd_readvariableop_resource;lstm_71_while_lstm_cell_8_biasadd_readvariableop_resource_0"z
:lstm_71_while_lstm_cell_8_matmul_1_readvariableop_resource<lstm_71_while_lstm_cell_8_matmul_1_readvariableop_resource_0"v
8lstm_71_while_lstm_cell_8_matmul_readvariableop_resource:lstm_71_while_lstm_cell_8_matmul_readvariableop_resource_0"?
alstm_71_while_tensorarrayv2read_tensorlistgetitem_lstm_71_tensorarrayunstack_tensorlistfromtensorclstm_71_while_tensorarrayv2read_tensorlistgetitem_lstm_71_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2d
0lstm_71/while/lstm_cell_8/BiasAdd/ReadVariableOp0lstm_71/while/lstm_cell_8/BiasAdd/ReadVariableOp2b
/lstm_71/while/lstm_cell_8/MatMul/ReadVariableOp/lstm_71/while/lstm_cell_8/MatMul/ReadVariableOp2f
1lstm_71/while/lstm_cell_8/MatMul_1/ReadVariableOp1lstm_71/while/lstm_cell_8/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?I
?
B__inference_lstm_69_layer_call_and_return_conditional_losses_51394

inputs=
*lstm_cell_6_matmul_readvariableop_resource:	??
,lstm_cell_6_matmul_1_readvariableop_resource:	d?:
+lstm_cell_6_biasadd_readvariableop_resource:	?
identity??"lstm_cell_6/BiasAdd/ReadVariableOp?!lstm_cell_6/MatMul/ReadVariableOp?#lstm_cell_6/MatMul_1/ReadVariableOp?while;
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
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitl
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????dn
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????du
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????df
lstm_cell_6/ReluRelulstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????dx
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????dn
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????dc
lstm_cell_6/Relu_1Relulstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0 lstm_cell_6/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
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
bodyR
while_body_51310*
condR
while_cond_51309*K
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
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_47966

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
while_cond_47833
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_47833___redundant_placeholder03
/while_while_cond_47833___redundant_placeholder13
/while_while_cond_47833___redundant_placeholder23
/while_while_cond_47833___redundant_placeholder3
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
?
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_48666

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
?
?
(__inference_dense_23_layer_call_fn_52778

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
GPU 2J 8? *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_49270o
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
?
while_cond_52398
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_52398___redundant_placeholder03
/while_while_cond_52398___redundant_placeholder13
/while_while_cond_52398___redundant_placeholder23
/while_while_cond_52398___redundant_placeholder3
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
?7
?
while_body_51640
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_7_matmul_readvariableop_resource_0:	d?G
4while_lstm_cell_7_matmul_1_readvariableop_resource_0:	2?B
3while_lstm_cell_7_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_7_matmul_readvariableop_resource:	d?E
2while_lstm_cell_7_matmul_1_readvariableop_resource:	2?@
1while_lstm_cell_7_biasadd_readvariableop_resource:	???(while/lstm_cell_7/BiasAdd/ReadVariableOp?'while/lstm_cell_7/MatMul/ReadVariableOp?)while/lstm_cell_7/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
'while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_7/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_7/addAddV2"while/lstm_cell_7/MatMul:product:0$while/lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
(while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_7/BiasAddBiasAddwhile/lstm_cell_7/add:z:00while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0"while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitx
while/lstm_cell_7/SigmoidSigmoid while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????2z
while/lstm_cell_7/Sigmoid_1Sigmoid while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_7/mulMulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2r
while/lstm_cell_7/ReluRelu while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_7/mul_1Mulwhile/lstm_cell_7/Sigmoid:y:0$while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_7/add_1AddV2while/lstm_cell_7/mul:z:0while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????2z
while/lstm_cell_7/Sigmoid_2Sigmoid while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????2o
while/lstm_cell_7/Relu_1Reluwhile/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_7/mul_2Mulwhile/lstm_cell_7/Sigmoid_2:y:0&while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_7/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2x
while/Identity_5Identitywhile/lstm_cell_7/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp)^while/lstm_cell_7/BiasAdd/ReadVariableOp(^while/lstm_cell_7/MatMul/ReadVariableOp*^while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_7_biasadd_readvariableop_resource3while_lstm_cell_7_biasadd_readvariableop_resource_0"j
2while_lstm_cell_7_matmul_1_readvariableop_resource4while_lstm_cell_7_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_7_matmul_readvariableop_resource2while_lstm_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2T
(while/lstm_cell_7/BiasAdd/ReadVariableOp(while/lstm_cell_7/BiasAdd/ReadVariableOp2R
'while/lstm_cell_7/MatMul/ReadVariableOp'while/lstm_cell_7/MatMul/ReadVariableOp2V
)while/lstm_cell_7/MatMul_1/ReadVariableOp)while/lstm_cell_7/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?

H__inference_sequential_23_layer_call_and_return_conditional_losses_50494

inputsE
2lstm_69_lstm_cell_6_matmul_readvariableop_resource:	?G
4lstm_69_lstm_cell_6_matmul_1_readvariableop_resource:	d?B
3lstm_69_lstm_cell_6_biasadd_readvariableop_resource:	?E
2lstm_70_lstm_cell_7_matmul_readvariableop_resource:	d?G
4lstm_70_lstm_cell_7_matmul_1_readvariableop_resource:	2?B
3lstm_70_lstm_cell_7_biasadd_readvariableop_resource:	?D
2lstm_71_lstm_cell_8_matmul_readvariableop_resource:2(F
4lstm_71_lstm_cell_8_matmul_1_readvariableop_resource:
(A
3lstm_71_lstm_cell_8_biasadd_readvariableop_resource:(9
'dense_23_matmul_readvariableop_resource:
6
(dense_23_biasadd_readvariableop_resource:
identity??dense_23/BiasAdd/ReadVariableOp?dense_23/MatMul/ReadVariableOp?*lstm_69/lstm_cell_6/BiasAdd/ReadVariableOp?)lstm_69/lstm_cell_6/MatMul/ReadVariableOp?+lstm_69/lstm_cell_6/MatMul_1/ReadVariableOp?lstm_69/while?*lstm_70/lstm_cell_7/BiasAdd/ReadVariableOp?)lstm_70/lstm_cell_7/MatMul/ReadVariableOp?+lstm_70/lstm_cell_7/MatMul_1/ReadVariableOp?lstm_70/while?*lstm_71/lstm_cell_8/BiasAdd/ReadVariableOp?)lstm_71/lstm_cell_8/MatMul/ReadVariableOp?+lstm_71/lstm_cell_8/MatMul_1/ReadVariableOp?lstm_71/whileC
lstm_69/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_69/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_69/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_69/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_69/strided_sliceStridedSlicelstm_69/Shape:output:0$lstm_69/strided_slice/stack:output:0&lstm_69/strided_slice/stack_1:output:0&lstm_69/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_69/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_69/zeros/packedPacklstm_69/strided_slice:output:0lstm_69/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_69/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_69/zerosFilllstm_69/zeros/packed:output:0lstm_69/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dZ
lstm_69/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_69/zeros_1/packedPacklstm_69/strided_slice:output:0!lstm_69/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_69/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_69/zeros_1Filllstm_69/zeros_1/packed:output:0lstm_69/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dk
lstm_69/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_69/transpose	Transposeinputslstm_69/transpose/perm:output:0*
T0*+
_output_shapes
:?????????T
lstm_69/Shape_1Shapelstm_69/transpose:y:0*
T0*
_output_shapes
:g
lstm_69/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_69/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_69/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_69/strided_slice_1StridedSlicelstm_69/Shape_1:output:0&lstm_69/strided_slice_1/stack:output:0(lstm_69/strided_slice_1/stack_1:output:0(lstm_69/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_69/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_69/TensorArrayV2TensorListReserve,lstm_69/TensorArrayV2/element_shape:output:0 lstm_69/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_69/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
/lstm_69/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_69/transpose:y:0Flstm_69/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_69/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_69/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_69/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_69/strided_slice_2StridedSlicelstm_69/transpose:y:0&lstm_69/strided_slice_2/stack:output:0(lstm_69/strided_slice_2/stack_1:output:0(lstm_69/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
)lstm_69/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2lstm_69_lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_69/lstm_cell_6/MatMulMatMul lstm_69/strided_slice_2:output:01lstm_69/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+lstm_69/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4lstm_69_lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_69/lstm_cell_6/MatMul_1MatMullstm_69/zeros:output:03lstm_69/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_69/lstm_cell_6/addAddV2$lstm_69/lstm_cell_6/MatMul:product:0&lstm_69/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*lstm_69/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3lstm_69_lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_69/lstm_cell_6/BiasAddBiasAddlstm_69/lstm_cell_6/add:z:02lstm_69/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#lstm_69/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_69/lstm_cell_6/splitSplit,lstm_69/lstm_cell_6/split/split_dim:output:0$lstm_69/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
lstm_69/lstm_cell_6/SigmoidSigmoid"lstm_69/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????d~
lstm_69/lstm_cell_6/Sigmoid_1Sigmoid"lstm_69/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_69/lstm_cell_6/mulMul!lstm_69/lstm_cell_6/Sigmoid_1:y:0lstm_69/zeros_1:output:0*
T0*'
_output_shapes
:?????????dv
lstm_69/lstm_cell_6/ReluRelu"lstm_69/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_69/lstm_cell_6/mul_1Mullstm_69/lstm_cell_6/Sigmoid:y:0&lstm_69/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_69/lstm_cell_6/add_1AddV2lstm_69/lstm_cell_6/mul:z:0lstm_69/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
lstm_69/lstm_cell_6/Sigmoid_2Sigmoid"lstm_69/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????ds
lstm_69/lstm_cell_6/Relu_1Relulstm_69/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_69/lstm_cell_6/mul_2Mul!lstm_69/lstm_cell_6/Sigmoid_2:y:0(lstm_69/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dv
%lstm_69/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_69/TensorArrayV2_1TensorListReserve.lstm_69/TensorArrayV2_1/element_shape:output:0 lstm_69/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_69/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_69/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_69/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_69/whileWhile#lstm_69/while/loop_counter:output:0)lstm_69/while/maximum_iterations:output:0lstm_69/time:output:0 lstm_69/TensorArrayV2_1:handle:0lstm_69/zeros:output:0lstm_69/zeros_1:output:0 lstm_69/strided_slice_1:output:0?lstm_69/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_69_lstm_cell_6_matmul_readvariableop_resource4lstm_69_lstm_cell_6_matmul_1_readvariableop_resource3lstm_69_lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_69_while_body_50126*$
condR
lstm_69_while_cond_50125*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
8lstm_69/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
*lstm_69/TensorArrayV2Stack/TensorListStackTensorListStacklstm_69/while:output:3Alstm_69/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0p
lstm_69/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_69/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_69/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_69/strided_slice_3StridedSlice3lstm_69/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_69/strided_slice_3/stack:output:0(lstm_69/strided_slice_3/stack_1:output:0(lstm_69/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskm
lstm_69/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_69/transpose_1	Transpose3lstm_69/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_69/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dc
lstm_69/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_70/ShapeShapelstm_69/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_70/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_70/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_70/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_70/strided_sliceStridedSlicelstm_70/Shape:output:0$lstm_70/strided_slice/stack:output:0&lstm_70/strided_slice/stack_1:output:0&lstm_70/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_70/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_70/zeros/packedPacklstm_70/strided_slice:output:0lstm_70/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_70/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_70/zerosFilllstm_70/zeros/packed:output:0lstm_70/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2Z
lstm_70/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_70/zeros_1/packedPacklstm_70/strided_slice:output:0!lstm_70/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_70/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_70/zeros_1Filllstm_70/zeros_1/packed:output:0lstm_70/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2k
lstm_70/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_70/transpose	Transposelstm_69/transpose_1:y:0lstm_70/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dT
lstm_70/Shape_1Shapelstm_70/transpose:y:0*
T0*
_output_shapes
:g
lstm_70/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_70/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_70/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_70/strided_slice_1StridedSlicelstm_70/Shape_1:output:0&lstm_70/strided_slice_1/stack:output:0(lstm_70/strided_slice_1/stack_1:output:0(lstm_70/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_70/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_70/TensorArrayV2TensorListReserve,lstm_70/TensorArrayV2/element_shape:output:0 lstm_70/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_70/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
/lstm_70/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_70/transpose:y:0Flstm_70/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_70/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_70/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_70/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_70/strided_slice_2StridedSlicelstm_70/transpose:y:0&lstm_70/strided_slice_2/stack:output:0(lstm_70/strided_slice_2/stack_1:output:0(lstm_70/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
)lstm_70/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp2lstm_70_lstm_cell_7_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_70/lstm_cell_7/MatMulMatMul lstm_70/strided_slice_2:output:01lstm_70/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+lstm_70/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp4lstm_70_lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_70/lstm_cell_7/MatMul_1MatMullstm_70/zeros:output:03lstm_70/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_70/lstm_cell_7/addAddV2$lstm_70/lstm_cell_7/MatMul:product:0&lstm_70/lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*lstm_70/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp3lstm_70_lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_70/lstm_cell_7/BiasAddBiasAddlstm_70/lstm_cell_7/add:z:02lstm_70/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#lstm_70/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_70/lstm_cell_7/splitSplit,lstm_70/lstm_cell_7/split/split_dim:output:0$lstm_70/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
lstm_70/lstm_cell_7/SigmoidSigmoid"lstm_70/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????2~
lstm_70/lstm_cell_7/Sigmoid_1Sigmoid"lstm_70/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_70/lstm_cell_7/mulMul!lstm_70/lstm_cell_7/Sigmoid_1:y:0lstm_70/zeros_1:output:0*
T0*'
_output_shapes
:?????????2v
lstm_70/lstm_cell_7/ReluRelu"lstm_70/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_70/lstm_cell_7/mul_1Mullstm_70/lstm_cell_7/Sigmoid:y:0&lstm_70/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_70/lstm_cell_7/add_1AddV2lstm_70/lstm_cell_7/mul:z:0lstm_70/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
lstm_70/lstm_cell_7/Sigmoid_2Sigmoid"lstm_70/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????2s
lstm_70/lstm_cell_7/Relu_1Relulstm_70/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_70/lstm_cell_7/mul_2Mul!lstm_70/lstm_cell_7/Sigmoid_2:y:0(lstm_70/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2v
%lstm_70/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_70/TensorArrayV2_1TensorListReserve.lstm_70/TensorArrayV2_1/element_shape:output:0 lstm_70/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_70/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_70/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_70/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_70/whileWhile#lstm_70/while/loop_counter:output:0)lstm_70/while/maximum_iterations:output:0lstm_70/time:output:0 lstm_70/TensorArrayV2_1:handle:0lstm_70/zeros:output:0lstm_70/zeros_1:output:0 lstm_70/strided_slice_1:output:0?lstm_70/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_70_lstm_cell_7_matmul_readvariableop_resource4lstm_70_lstm_cell_7_matmul_1_readvariableop_resource3lstm_70_lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_70_while_body_50265*$
condR
lstm_70_while_cond_50264*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
8lstm_70/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
*lstm_70/TensorArrayV2Stack/TensorListStackTensorListStacklstm_70/while:output:3Alstm_70/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0p
lstm_70/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_70/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_70/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_70/strided_slice_3StridedSlice3lstm_70/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_70/strided_slice_3/stack:output:0(lstm_70/strided_slice_3/stack_1:output:0(lstm_70/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskm
lstm_70/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_70/transpose_1	Transpose3lstm_70/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_70/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2c
lstm_70/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_71/ShapeShapelstm_70/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_71/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_71/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_71/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_71/strided_sliceStridedSlicelstm_71/Shape:output:0$lstm_71/strided_slice/stack:output:0&lstm_71/strided_slice/stack_1:output:0&lstm_71/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_71/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_71/zeros/packedPacklstm_71/strided_slice:output:0lstm_71/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_71/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_71/zerosFilllstm_71/zeros/packed:output:0lstm_71/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
Z
lstm_71/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_71/zeros_1/packedPacklstm_71/strided_slice:output:0!lstm_71/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_71/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_71/zeros_1Filllstm_71/zeros_1/packed:output:0lstm_71/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
k
lstm_71/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_71/transpose	Transposelstm_70/transpose_1:y:0lstm_71/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2T
lstm_71/Shape_1Shapelstm_71/transpose:y:0*
T0*
_output_shapes
:g
lstm_71/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_71/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_71/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_71/strided_slice_1StridedSlicelstm_71/Shape_1:output:0&lstm_71/strided_slice_1/stack:output:0(lstm_71/strided_slice_1/stack_1:output:0(lstm_71/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_71/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_71/TensorArrayV2TensorListReserve,lstm_71/TensorArrayV2/element_shape:output:0 lstm_71/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_71/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
/lstm_71/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_71/transpose:y:0Flstm_71/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_71/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_71/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_71/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_71/strided_slice_2StridedSlicelstm_71/transpose:y:0&lstm_71/strided_slice_2/stack:output:0(lstm_71/strided_slice_2/stack_1:output:0(lstm_71/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
)lstm_71/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp2lstm_71_lstm_cell_8_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_71/lstm_cell_8/MatMulMatMul lstm_71/strided_slice_2:output:01lstm_71/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+lstm_71/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp4lstm_71_lstm_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_71/lstm_cell_8/MatMul_1MatMullstm_71/zeros:output:03lstm_71/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_71/lstm_cell_8/addAddV2$lstm_71/lstm_cell_8/MatMul:product:0&lstm_71/lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*lstm_71/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp3lstm_71_lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_71/lstm_cell_8/BiasAddBiasAddlstm_71/lstm_cell_8/add:z:02lstm_71/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#lstm_71/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_71/lstm_cell_8/splitSplit,lstm_71/lstm_cell_8/split/split_dim:output:0$lstm_71/lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
lstm_71/lstm_cell_8/SigmoidSigmoid"lstm_71/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:?????????
~
lstm_71/lstm_cell_8/Sigmoid_1Sigmoid"lstm_71/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_71/lstm_cell_8/mulMul!lstm_71/lstm_cell_8/Sigmoid_1:y:0lstm_71/zeros_1:output:0*
T0*'
_output_shapes
:?????????
v
lstm_71/lstm_cell_8/ReluRelu"lstm_71/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_71/lstm_cell_8/mul_1Mullstm_71/lstm_cell_8/Sigmoid:y:0&lstm_71/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_71/lstm_cell_8/add_1AddV2lstm_71/lstm_cell_8/mul:z:0lstm_71/lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
lstm_71/lstm_cell_8/Sigmoid_2Sigmoid"lstm_71/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:?????????
s
lstm_71/lstm_cell_8/Relu_1Relulstm_71/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_71/lstm_cell_8/mul_2Mul!lstm_71/lstm_cell_8/Sigmoid_2:y:0(lstm_71/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
v
%lstm_71/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_71/TensorArrayV2_1TensorListReserve.lstm_71/TensorArrayV2_1/element_shape:output:0 lstm_71/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_71/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_71/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_71/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_71/whileWhile#lstm_71/while/loop_counter:output:0)lstm_71/while/maximum_iterations:output:0lstm_71/time:output:0 lstm_71/TensorArrayV2_1:handle:0lstm_71/zeros:output:0lstm_71/zeros_1:output:0 lstm_71/strided_slice_1:output:0?lstm_71/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_71_lstm_cell_8_matmul_readvariableop_resource4lstm_71_lstm_cell_8_matmul_1_readvariableop_resource3lstm_71_lstm_cell_8_biasadd_readvariableop_resource*
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
_stateful_parallelism( *$
bodyR
lstm_71_while_body_50404*$
condR
lstm_71_while_cond_50403*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
8lstm_71/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
*lstm_71/TensorArrayV2Stack/TensorListStackTensorListStacklstm_71/while:output:3Alstm_71/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0p
lstm_71/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_71/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_71/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_71/strided_slice_3StridedSlice3lstm_71/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_71/strided_slice_3/stack:output:0(lstm_71/strided_slice_3/stack_1:output:0(lstm_71/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskm
lstm_71/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_71/transpose_1	Transpose3lstm_71/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_71/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
c
lstm_71/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_23/MatMulMatMul lstm_71/strided_slice_3:output:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_23/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp+^lstm_69/lstm_cell_6/BiasAdd/ReadVariableOp*^lstm_69/lstm_cell_6/MatMul/ReadVariableOp,^lstm_69/lstm_cell_6/MatMul_1/ReadVariableOp^lstm_69/while+^lstm_70/lstm_cell_7/BiasAdd/ReadVariableOp*^lstm_70/lstm_cell_7/MatMul/ReadVariableOp,^lstm_70/lstm_cell_7/MatMul_1/ReadVariableOp^lstm_70/while+^lstm_71/lstm_cell_8/BiasAdd/ReadVariableOp*^lstm_71/lstm_cell_8/MatMul/ReadVariableOp,^lstm_71/lstm_cell_8/MatMul_1/ReadVariableOp^lstm_71/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2X
*lstm_69/lstm_cell_6/BiasAdd/ReadVariableOp*lstm_69/lstm_cell_6/BiasAdd/ReadVariableOp2V
)lstm_69/lstm_cell_6/MatMul/ReadVariableOp)lstm_69/lstm_cell_6/MatMul/ReadVariableOp2Z
+lstm_69/lstm_cell_6/MatMul_1/ReadVariableOp+lstm_69/lstm_cell_6/MatMul_1/ReadVariableOp2
lstm_69/whilelstm_69/while2X
*lstm_70/lstm_cell_7/BiasAdd/ReadVariableOp*lstm_70/lstm_cell_7/BiasAdd/ReadVariableOp2V
)lstm_70/lstm_cell_7/MatMul/ReadVariableOp)lstm_70/lstm_cell_7/MatMul/ReadVariableOp2Z
+lstm_70/lstm_cell_7/MatMul_1/ReadVariableOp+lstm_70/lstm_cell_7/MatMul_1/ReadVariableOp2
lstm_70/whilelstm_70/while2X
*lstm_71/lstm_cell_8/BiasAdd/ReadVariableOp*lstm_71/lstm_cell_8/BiasAdd/ReadVariableOp2V
)lstm_71/lstm_cell_8/MatMul/ReadVariableOp)lstm_71/lstm_cell_8/MatMul/ReadVariableOp2Z
+lstm_71/lstm_cell_8/MatMul_1/ReadVariableOp+lstm_71/lstm_cell_8/MatMul_1/ReadVariableOp2
lstm_71/whilelstm_71/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?I
?
B__inference_lstm_69_layer_call_and_return_conditional_losses_49798

inputs=
*lstm_cell_6_matmul_readvariableop_resource:	??
,lstm_cell_6_matmul_1_readvariableop_resource:	d?:
+lstm_cell_6_biasadd_readvariableop_resource:	?
identity??"lstm_cell_6/BiasAdd/ReadVariableOp?!lstm_cell_6/MatMul/ReadVariableOp?#lstm_cell_6/MatMul_1/ReadVariableOp?while;
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
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitl
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????dn
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????du
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????df
lstm_cell_6/ReluRelulstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????dx
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????dn
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????dc
lstm_cell_6/Relu_1Relulstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0 lstm_cell_6/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
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
bodyR
while_body_49714*
condR
while_cond_49713*K
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
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?I
?
B__inference_lstm_70_layer_call_and_return_conditional_losses_52153

inputs=
*lstm_cell_7_matmul_readvariableop_resource:	d??
,lstm_cell_7_matmul_1_readvariableop_resource:	2?:
+lstm_cell_7_biasadd_readvariableop_resource:	?
identity??"lstm_cell_7/BiasAdd/ReadVariableOp?!lstm_cell_7/MatMul/ReadVariableOp?#lstm_cell_7/MatMul_1/ReadVariableOp?while;
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
!lstm_cell_7/MatMul/ReadVariableOpReadVariableOp*lstm_cell_7_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_7/MatMulMatMulstrided_slice_2:output:0)lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_7/MatMul_1MatMulzeros:output:0+lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_7/addAddV2lstm_cell_7/MatMul:product:0lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_7/BiasAddBiasAddlstm_cell_7/add:z:0*lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitl
lstm_cell_7/SigmoidSigmoidlstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????2n
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????2u
lstm_cell_7/mulMullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2f
lstm_cell_7/ReluRelulstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_7/mul_1Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????2x
lstm_cell_7/add_1AddV2lstm_cell_7/mul:z:0lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????2n
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????2c
lstm_cell_7/Relu_1Relulstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_7/mul_2Mullstm_cell_7/Sigmoid_2:y:0 lstm_cell_7/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_7_matmul_readvariableop_resource,lstm_cell_7_matmul_1_readvariableop_resource+lstm_cell_7_biasadd_readvariableop_resource*
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
bodyR
while_body_52069*
condR
while_cond_52068*K
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
NoOpNoOp#^lstm_cell_7/BiasAdd/ReadVariableOp"^lstm_cell_7/MatMul/ReadVariableOp$^lstm_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2H
"lstm_cell_7/BiasAdd/ReadVariableOp"lstm_cell_7/BiasAdd/ReadVariableOp2F
!lstm_cell_7/MatMul/ReadVariableOp!lstm_cell_7/MatMul/ReadVariableOp2J
#lstm_cell_7/MatMul_1/ReadVariableOp#lstm_cell_7/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_48316

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
B__inference_lstm_71_layer_call_and_return_conditional_losses_52483
inputs_0<
*lstm_cell_8_matmul_readvariableop_resource:2(>
,lstm_cell_8_matmul_1_readvariableop_resource:
(9
+lstm_cell_8_biasadd_readvariableop_resource:(
identity??"lstm_cell_8/BiasAdd/ReadVariableOp?!lstm_cell_8/MatMul/ReadVariableOp?#lstm_cell_8/MatMul_1/ReadVariableOp?while=
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
!lstm_cell_8/MatMul/ReadVariableOpReadVariableOp*lstm_cell_8_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_8/MatMulMatMulstrided_slice_2:output:0)lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
#lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_8/MatMul_1MatMulzeros:output:0+lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_8/addAddV2lstm_cell_8/MatMul:product:0lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
"lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_8/BiasAddBiasAddlstm_cell_8/add:z:0*lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(]
lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_8/splitSplit$lstm_cell_8/split/split_dim:output:0lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitl
lstm_cell_8/SigmoidSigmoidlstm_cell_8/split:output:0*
T0*'
_output_shapes
:?????????
n
lstm_cell_8/Sigmoid_1Sigmoidlstm_cell_8/split:output:1*
T0*'
_output_shapes
:?????????
u
lstm_cell_8/mulMullstm_cell_8/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
f
lstm_cell_8/ReluRelulstm_cell_8/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_8/mul_1Mullstm_cell_8/Sigmoid:y:0lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:?????????
x
lstm_cell_8/add_1AddV2lstm_cell_8/mul:z:0lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:?????????
n
lstm_cell_8/Sigmoid_2Sigmoidlstm_cell_8/split:output:3*
T0*'
_output_shapes
:?????????
c
lstm_cell_8/Relu_1Relulstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_8/mul_2Mullstm_cell_8/Sigmoid_2:y:0 lstm_cell_8/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_8_matmul_readvariableop_resource,lstm_cell_8_matmul_1_readvariableop_resource+lstm_cell_8_biasadd_readvariableop_resource*
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
bodyR
while_body_52399*
condR
while_cond_52398*K
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
NoOpNoOp#^lstm_cell_8/BiasAdd/ReadVariableOp"^lstm_cell_8/MatMul/ReadVariableOp$^lstm_cell_8/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2H
"lstm_cell_8/BiasAdd/ReadVariableOp"lstm_cell_8/BiasAdd/ReadVariableOp2F
!lstm_cell_8/MatMul/ReadVariableOp!lstm_cell_8/MatMul/ReadVariableOp2J
#lstm_cell_8/MatMul_1/ReadVariableOp#lstm_cell_8/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
'__inference_lstm_71_layer_call_fn_52197

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
GPU 2J 8? *K
fFRD
B__inference_lstm_71_layer_call_and_return_conditional_losses_49468o
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
?7
?
while_body_51310
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_6_matmul_readvariableop_resource_0:	?G
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:	d?B
3while_lstm_cell_6_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_6_matmul_readvariableop_resource:	?E
2while_lstm_cell_6_matmul_1_readvariableop_resource:	d?@
1while_lstm_cell_6_biasadd_readvariableop_resource:	???(while/lstm_cell_6/BiasAdd/ReadVariableOp?'while/lstm_cell_6/MatMul/ReadVariableOp?)while/lstm_cell_6/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitx
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????dz
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dr
while/lstm_cell_6/ReluRelu while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????dz
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????do
while/lstm_cell_6/Relu_1Reluwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0&while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dx
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_52854

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
?

?
#__inference_signature_wrapper_50013
lstm_69_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_69_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8? *)
f$R"
 __inference__wrapped_model_47753o
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
_user_specified_namelstm_69_input
?
?
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_52886

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
?7
?
B__inference_lstm_70_layer_call_and_return_conditional_losses_48253

inputs$
lstm_cell_7_48171:	d?$
lstm_cell_7_48173:	2? 
lstm_cell_7_48175:	?
identity??#lstm_cell_7/StatefulPartitionedCall?while;
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
#lstm_cell_7/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_7_48171lstm_cell_7_48173lstm_cell_7_48175*
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
GPU 2J 8? *O
fJRH
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_48170n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_7_48171lstm_cell_7_48173lstm_cell_7_48175*
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
bodyR
while_body_48184*
condR
while_cond_48183*K
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
 :??????????????????2t
NoOpNoOp$^lstm_cell_7/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2J
#lstm_cell_7/StatefulPartitionedCall#lstm_cell_7/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?@
?

lstm_69_while_body_50553,
(lstm_69_while_lstm_69_while_loop_counter2
.lstm_69_while_lstm_69_while_maximum_iterations
lstm_69_while_placeholder
lstm_69_while_placeholder_1
lstm_69_while_placeholder_2
lstm_69_while_placeholder_3+
'lstm_69_while_lstm_69_strided_slice_1_0g
clstm_69_while_tensorarrayv2read_tensorlistgetitem_lstm_69_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_69_while_lstm_cell_6_matmul_readvariableop_resource_0:	?O
<lstm_69_while_lstm_cell_6_matmul_1_readvariableop_resource_0:	d?J
;lstm_69_while_lstm_cell_6_biasadd_readvariableop_resource_0:	?
lstm_69_while_identity
lstm_69_while_identity_1
lstm_69_while_identity_2
lstm_69_while_identity_3
lstm_69_while_identity_4
lstm_69_while_identity_5)
%lstm_69_while_lstm_69_strided_slice_1e
alstm_69_while_tensorarrayv2read_tensorlistgetitem_lstm_69_tensorarrayunstack_tensorlistfromtensorK
8lstm_69_while_lstm_cell_6_matmul_readvariableop_resource:	?M
:lstm_69_while_lstm_cell_6_matmul_1_readvariableop_resource:	d?H
9lstm_69_while_lstm_cell_6_biasadd_readvariableop_resource:	???0lstm_69/while/lstm_cell_6/BiasAdd/ReadVariableOp?/lstm_69/while/lstm_cell_6/MatMul/ReadVariableOp?1lstm_69/while/lstm_cell_6/MatMul_1/ReadVariableOp?
?lstm_69/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
1lstm_69/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_69_while_tensorarrayv2read_tensorlistgetitem_lstm_69_tensorarrayunstack_tensorlistfromtensor_0lstm_69_while_placeholderHlstm_69/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
/lstm_69/while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp:lstm_69_while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
 lstm_69/while/lstm_cell_6/MatMulMatMul8lstm_69/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_69/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
1lstm_69/while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp<lstm_69_while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
"lstm_69/while/lstm_cell_6/MatMul_1MatMullstm_69_while_placeholder_29lstm_69/while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_69/while/lstm_cell_6/addAddV2*lstm_69/while/lstm_cell_6/MatMul:product:0,lstm_69/while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
0lstm_69/while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp;lstm_69_while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
!lstm_69/while/lstm_cell_6/BiasAddBiasAdd!lstm_69/while/lstm_cell_6/add:z:08lstm_69/while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????k
)lstm_69/while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_69/while/lstm_cell_6/splitSplit2lstm_69/while/lstm_cell_6/split/split_dim:output:0*lstm_69/while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
!lstm_69/while/lstm_cell_6/SigmoidSigmoid(lstm_69/while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????d?
#lstm_69/while/lstm_cell_6/Sigmoid_1Sigmoid(lstm_69/while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_69/while/lstm_cell_6/mulMul'lstm_69/while/lstm_cell_6/Sigmoid_1:y:0lstm_69_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
lstm_69/while/lstm_cell_6/ReluRelu(lstm_69/while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_69/while/lstm_cell_6/mul_1Mul%lstm_69/while/lstm_cell_6/Sigmoid:y:0,lstm_69/while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_69/while/lstm_cell_6/add_1AddV2!lstm_69/while/lstm_cell_6/mul:z:0#lstm_69/while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
#lstm_69/while/lstm_cell_6/Sigmoid_2Sigmoid(lstm_69/while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????d
 lstm_69/while/lstm_cell_6/Relu_1Relu#lstm_69/while/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_69/while/lstm_cell_6/mul_2Mul'lstm_69/while/lstm_cell_6/Sigmoid_2:y:0.lstm_69/while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
2lstm_69/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_69_while_placeholder_1lstm_69_while_placeholder#lstm_69/while/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_69/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_69/while/addAddV2lstm_69_while_placeholderlstm_69/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_69/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_69/while/add_1AddV2(lstm_69_while_lstm_69_while_loop_counterlstm_69/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_69/while/IdentityIdentitylstm_69/while/add_1:z:0^lstm_69/while/NoOp*
T0*
_output_shapes
: ?
lstm_69/while/Identity_1Identity.lstm_69_while_lstm_69_while_maximum_iterations^lstm_69/while/NoOp*
T0*
_output_shapes
: q
lstm_69/while/Identity_2Identitylstm_69/while/add:z:0^lstm_69/while/NoOp*
T0*
_output_shapes
: ?
lstm_69/while/Identity_3IdentityBlstm_69/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_69/while/NoOp*
T0*
_output_shapes
: ?
lstm_69/while/Identity_4Identity#lstm_69/while/lstm_cell_6/mul_2:z:0^lstm_69/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_69/while/Identity_5Identity#lstm_69/while/lstm_cell_6/add_1:z:0^lstm_69/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_69/while/NoOpNoOp1^lstm_69/while/lstm_cell_6/BiasAdd/ReadVariableOp0^lstm_69/while/lstm_cell_6/MatMul/ReadVariableOp2^lstm_69/while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_69_while_identitylstm_69/while/Identity:output:0"=
lstm_69_while_identity_1!lstm_69/while/Identity_1:output:0"=
lstm_69_while_identity_2!lstm_69/while/Identity_2:output:0"=
lstm_69_while_identity_3!lstm_69/while/Identity_3:output:0"=
lstm_69_while_identity_4!lstm_69/while/Identity_4:output:0"=
lstm_69_while_identity_5!lstm_69/while/Identity_5:output:0"P
%lstm_69_while_lstm_69_strided_slice_1'lstm_69_while_lstm_69_strided_slice_1_0"x
9lstm_69_while_lstm_cell_6_biasadd_readvariableop_resource;lstm_69_while_lstm_cell_6_biasadd_readvariableop_resource_0"z
:lstm_69_while_lstm_cell_6_matmul_1_readvariableop_resource<lstm_69_while_lstm_cell_6_matmul_1_readvariableop_resource_0"v
8lstm_69_while_lstm_cell_6_matmul_readvariableop_resource:lstm_69_while_lstm_cell_6_matmul_readvariableop_resource_0"?
alstm_69_while_tensorarrayv2read_tensorlistgetitem_lstm_69_tensorarrayunstack_tensorlistfromtensorclstm_69_while_tensorarrayv2read_tensorlistgetitem_lstm_69_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2d
0lstm_69/while/lstm_cell_6/BiasAdd/ReadVariableOp0lstm_69/while/lstm_cell_6/BiasAdd/ReadVariableOp2b
/lstm_69/while/lstm_cell_6/MatMul/ReadVariableOp/lstm_69/while/lstm_cell_6/MatMul/ReadVariableOp2f
1lstm_69/while/lstm_cell_6/MatMul_1/ReadVariableOp1lstm_69/while/lstm_cell_6/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
B__inference_lstm_69_layer_call_and_return_conditional_losses_47903

inputs$
lstm_cell_6_47821:	?$
lstm_cell_6_47823:	d? 
lstm_cell_6_47825:	?
identity??#lstm_cell_6/StatefulPartitionedCall?while;
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
#lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_6_47821lstm_cell_6_47823lstm_cell_6_47825*
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
GPU 2J 8? *O
fJRH
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_47820n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_6_47821lstm_cell_6_47823lstm_cell_6_47825*
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
bodyR
while_body_47834*
condR
while_cond_47833*K
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
 :??????????????????dt
NoOpNoOp$^lstm_cell_6/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_6/StatefulPartitionedCall#lstm_cell_6/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
+__inference_lstm_cell_7_layer_call_fn_52920

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
GPU 2J 8? *O
fJRH
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_48316o
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
 __inference__wrapped_model_47753
lstm_69_inputS
@sequential_23_lstm_69_lstm_cell_6_matmul_readvariableop_resource:	?U
Bsequential_23_lstm_69_lstm_cell_6_matmul_1_readvariableop_resource:	d?P
Asequential_23_lstm_69_lstm_cell_6_biasadd_readvariableop_resource:	?S
@sequential_23_lstm_70_lstm_cell_7_matmul_readvariableop_resource:	d?U
Bsequential_23_lstm_70_lstm_cell_7_matmul_1_readvariableop_resource:	2?P
Asequential_23_lstm_70_lstm_cell_7_biasadd_readvariableop_resource:	?R
@sequential_23_lstm_71_lstm_cell_8_matmul_readvariableop_resource:2(T
Bsequential_23_lstm_71_lstm_cell_8_matmul_1_readvariableop_resource:
(O
Asequential_23_lstm_71_lstm_cell_8_biasadd_readvariableop_resource:(G
5sequential_23_dense_23_matmul_readvariableop_resource:
D
6sequential_23_dense_23_biasadd_readvariableop_resource:
identity??-sequential_23/dense_23/BiasAdd/ReadVariableOp?,sequential_23/dense_23/MatMul/ReadVariableOp?8sequential_23/lstm_69/lstm_cell_6/BiasAdd/ReadVariableOp?7sequential_23/lstm_69/lstm_cell_6/MatMul/ReadVariableOp?9sequential_23/lstm_69/lstm_cell_6/MatMul_1/ReadVariableOp?sequential_23/lstm_69/while?8sequential_23/lstm_70/lstm_cell_7/BiasAdd/ReadVariableOp?7sequential_23/lstm_70/lstm_cell_7/MatMul/ReadVariableOp?9sequential_23/lstm_70/lstm_cell_7/MatMul_1/ReadVariableOp?sequential_23/lstm_70/while?8sequential_23/lstm_71/lstm_cell_8/BiasAdd/ReadVariableOp?7sequential_23/lstm_71/lstm_cell_8/MatMul/ReadVariableOp?9sequential_23/lstm_71/lstm_cell_8/MatMul_1/ReadVariableOp?sequential_23/lstm_71/whileX
sequential_23/lstm_69/ShapeShapelstm_69_input*
T0*
_output_shapes
:s
)sequential_23/lstm_69/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_23/lstm_69/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_23/lstm_69/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#sequential_23/lstm_69/strided_sliceStridedSlice$sequential_23/lstm_69/Shape:output:02sequential_23/lstm_69/strided_slice/stack:output:04sequential_23/lstm_69/strided_slice/stack_1:output:04sequential_23/lstm_69/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_23/lstm_69/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
"sequential_23/lstm_69/zeros/packedPack,sequential_23/lstm_69/strided_slice:output:0-sequential_23/lstm_69/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_23/lstm_69/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_23/lstm_69/zerosFill+sequential_23/lstm_69/zeros/packed:output:0*sequential_23/lstm_69/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dh
&sequential_23/lstm_69/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_23/lstm_69/zeros_1/packedPack,sequential_23/lstm_69/strided_slice:output:0/sequential_23/lstm_69/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_23/lstm_69/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_23/lstm_69/zeros_1Fill-sequential_23/lstm_69/zeros_1/packed:output:0,sequential_23/lstm_69/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dy
$sequential_23/lstm_69/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
sequential_23/lstm_69/transpose	Transposelstm_69_input-sequential_23/lstm_69/transpose/perm:output:0*
T0*+
_output_shapes
:?????????p
sequential_23/lstm_69/Shape_1Shape#sequential_23/lstm_69/transpose:y:0*
T0*
_output_shapes
:u
+sequential_23/lstm_69/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_23/lstm_69/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_23/lstm_69/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_23/lstm_69/strided_slice_1StridedSlice&sequential_23/lstm_69/Shape_1:output:04sequential_23/lstm_69/strided_slice_1/stack:output:06sequential_23/lstm_69/strided_slice_1/stack_1:output:06sequential_23/lstm_69/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_23/lstm_69/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
#sequential_23/lstm_69/TensorArrayV2TensorListReserve:sequential_23/lstm_69/TensorArrayV2/element_shape:output:0.sequential_23/lstm_69/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Ksequential_23/lstm_69/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
=sequential_23/lstm_69/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_23/lstm_69/transpose:y:0Tsequential_23/lstm_69/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???u
+sequential_23/lstm_69/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_23/lstm_69/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_23/lstm_69/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_23/lstm_69/strided_slice_2StridedSlice#sequential_23/lstm_69/transpose:y:04sequential_23/lstm_69/strided_slice_2/stack:output:06sequential_23/lstm_69/strided_slice_2/stack_1:output:06sequential_23/lstm_69/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
7sequential_23/lstm_69/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp@sequential_23_lstm_69_lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
(sequential_23/lstm_69/lstm_cell_6/MatMulMatMul.sequential_23/lstm_69/strided_slice_2:output:0?sequential_23/lstm_69/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
9sequential_23/lstm_69/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOpBsequential_23_lstm_69_lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
*sequential_23/lstm_69/lstm_cell_6/MatMul_1MatMul$sequential_23/lstm_69/zeros:output:0Asequential_23/lstm_69/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%sequential_23/lstm_69/lstm_cell_6/addAddV22sequential_23/lstm_69/lstm_cell_6/MatMul:product:04sequential_23/lstm_69/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
8sequential_23/lstm_69/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOpAsequential_23_lstm_69_lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
)sequential_23/lstm_69/lstm_cell_6/BiasAddBiasAdd)sequential_23/lstm_69/lstm_cell_6/add:z:0@sequential_23/lstm_69/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
1sequential_23/lstm_69/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
'sequential_23/lstm_69/lstm_cell_6/splitSplit:sequential_23/lstm_69/lstm_cell_6/split/split_dim:output:02sequential_23/lstm_69/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
)sequential_23/lstm_69/lstm_cell_6/SigmoidSigmoid0sequential_23/lstm_69/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????d?
+sequential_23/lstm_69/lstm_cell_6/Sigmoid_1Sigmoid0sequential_23/lstm_69/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????d?
%sequential_23/lstm_69/lstm_cell_6/mulMul/sequential_23/lstm_69/lstm_cell_6/Sigmoid_1:y:0&sequential_23/lstm_69/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
&sequential_23/lstm_69/lstm_cell_6/ReluRelu0sequential_23/lstm_69/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????d?
'sequential_23/lstm_69/lstm_cell_6/mul_1Mul-sequential_23/lstm_69/lstm_cell_6/Sigmoid:y:04sequential_23/lstm_69/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
'sequential_23/lstm_69/lstm_cell_6/add_1AddV2)sequential_23/lstm_69/lstm_cell_6/mul:z:0+sequential_23/lstm_69/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_23/lstm_69/lstm_cell_6/Sigmoid_2Sigmoid0sequential_23/lstm_69/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????d?
(sequential_23/lstm_69/lstm_cell_6/Relu_1Relu+sequential_23/lstm_69/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????d?
'sequential_23/lstm_69/lstm_cell_6/mul_2Mul/sequential_23/lstm_69/lstm_cell_6/Sigmoid_2:y:06sequential_23/lstm_69/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3sequential_23/lstm_69/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
%sequential_23/lstm_69/TensorArrayV2_1TensorListReserve<sequential_23/lstm_69/TensorArrayV2_1/element_shape:output:0.sequential_23/lstm_69/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???\
sequential_23/lstm_69/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_23/lstm_69/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????j
(sequential_23/lstm_69/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_23/lstm_69/whileWhile1sequential_23/lstm_69/while/loop_counter:output:07sequential_23/lstm_69/while/maximum_iterations:output:0#sequential_23/lstm_69/time:output:0.sequential_23/lstm_69/TensorArrayV2_1:handle:0$sequential_23/lstm_69/zeros:output:0&sequential_23/lstm_69/zeros_1:output:0.sequential_23/lstm_69/strided_slice_1:output:0Msequential_23/lstm_69/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_23_lstm_69_lstm_cell_6_matmul_readvariableop_resourceBsequential_23_lstm_69_lstm_cell_6_matmul_1_readvariableop_resourceAsequential_23_lstm_69_lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_23_lstm_69_while_body_47385*2
cond*R(
&sequential_23_lstm_69_while_cond_47384*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Fsequential_23/lstm_69/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
8sequential_23/lstm_69/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_23/lstm_69/while:output:3Osequential_23/lstm_69/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0~
+sequential_23/lstm_69/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????w
-sequential_23/lstm_69/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_23/lstm_69/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_23/lstm_69/strided_slice_3StridedSliceAsequential_23/lstm_69/TensorArrayV2Stack/TensorListStack:tensor:04sequential_23/lstm_69/strided_slice_3/stack:output:06sequential_23/lstm_69/strided_slice_3/stack_1:output:06sequential_23/lstm_69/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask{
&sequential_23/lstm_69/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_23/lstm_69/transpose_1	TransposeAsequential_23/lstm_69/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_23/lstm_69/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dq
sequential_23/lstm_69/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_23/lstm_70/ShapeShape%sequential_23/lstm_69/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_23/lstm_70/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_23/lstm_70/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_23/lstm_70/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#sequential_23/lstm_70/strided_sliceStridedSlice$sequential_23/lstm_70/Shape:output:02sequential_23/lstm_70/strided_slice/stack:output:04sequential_23/lstm_70/strided_slice/stack_1:output:04sequential_23/lstm_70/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_23/lstm_70/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
"sequential_23/lstm_70/zeros/packedPack,sequential_23/lstm_70/strided_slice:output:0-sequential_23/lstm_70/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_23/lstm_70/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_23/lstm_70/zerosFill+sequential_23/lstm_70/zeros/packed:output:0*sequential_23/lstm_70/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2h
&sequential_23/lstm_70/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_23/lstm_70/zeros_1/packedPack,sequential_23/lstm_70/strided_slice:output:0/sequential_23/lstm_70/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_23/lstm_70/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_23/lstm_70/zeros_1Fill-sequential_23/lstm_70/zeros_1/packed:output:0,sequential_23/lstm_70/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2y
$sequential_23/lstm_70/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
sequential_23/lstm_70/transpose	Transpose%sequential_23/lstm_69/transpose_1:y:0-sequential_23/lstm_70/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dp
sequential_23/lstm_70/Shape_1Shape#sequential_23/lstm_70/transpose:y:0*
T0*
_output_shapes
:u
+sequential_23/lstm_70/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_23/lstm_70/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_23/lstm_70/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_23/lstm_70/strided_slice_1StridedSlice&sequential_23/lstm_70/Shape_1:output:04sequential_23/lstm_70/strided_slice_1/stack:output:06sequential_23/lstm_70/strided_slice_1/stack_1:output:06sequential_23/lstm_70/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_23/lstm_70/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
#sequential_23/lstm_70/TensorArrayV2TensorListReserve:sequential_23/lstm_70/TensorArrayV2/element_shape:output:0.sequential_23/lstm_70/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Ksequential_23/lstm_70/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
=sequential_23/lstm_70/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_23/lstm_70/transpose:y:0Tsequential_23/lstm_70/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???u
+sequential_23/lstm_70/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_23/lstm_70/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_23/lstm_70/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_23/lstm_70/strided_slice_2StridedSlice#sequential_23/lstm_70/transpose:y:04sequential_23/lstm_70/strided_slice_2/stack:output:06sequential_23/lstm_70/strided_slice_2/stack_1:output:06sequential_23/lstm_70/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
7sequential_23/lstm_70/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp@sequential_23_lstm_70_lstm_cell_7_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
(sequential_23/lstm_70/lstm_cell_7/MatMulMatMul.sequential_23/lstm_70/strided_slice_2:output:0?sequential_23/lstm_70/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
9sequential_23/lstm_70/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOpBsequential_23_lstm_70_lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
*sequential_23/lstm_70/lstm_cell_7/MatMul_1MatMul$sequential_23/lstm_70/zeros:output:0Asequential_23/lstm_70/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%sequential_23/lstm_70/lstm_cell_7/addAddV22sequential_23/lstm_70/lstm_cell_7/MatMul:product:04sequential_23/lstm_70/lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
8sequential_23/lstm_70/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOpAsequential_23_lstm_70_lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
)sequential_23/lstm_70/lstm_cell_7/BiasAddBiasAdd)sequential_23/lstm_70/lstm_cell_7/add:z:0@sequential_23/lstm_70/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
1sequential_23/lstm_70/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
'sequential_23/lstm_70/lstm_cell_7/splitSplit:sequential_23/lstm_70/lstm_cell_7/split/split_dim:output:02sequential_23/lstm_70/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
)sequential_23/lstm_70/lstm_cell_7/SigmoidSigmoid0sequential_23/lstm_70/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????2?
+sequential_23/lstm_70/lstm_cell_7/Sigmoid_1Sigmoid0sequential_23/lstm_70/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????2?
%sequential_23/lstm_70/lstm_cell_7/mulMul/sequential_23/lstm_70/lstm_cell_7/Sigmoid_1:y:0&sequential_23/lstm_70/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
&sequential_23/lstm_70/lstm_cell_7/ReluRelu0sequential_23/lstm_70/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????2?
'sequential_23/lstm_70/lstm_cell_7/mul_1Mul-sequential_23/lstm_70/lstm_cell_7/Sigmoid:y:04sequential_23/lstm_70/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
'sequential_23/lstm_70/lstm_cell_7/add_1AddV2)sequential_23/lstm_70/lstm_cell_7/mul:z:0+sequential_23/lstm_70/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_23/lstm_70/lstm_cell_7/Sigmoid_2Sigmoid0sequential_23/lstm_70/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????2?
(sequential_23/lstm_70/lstm_cell_7/Relu_1Relu+sequential_23/lstm_70/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????2?
'sequential_23/lstm_70/lstm_cell_7/mul_2Mul/sequential_23/lstm_70/lstm_cell_7/Sigmoid_2:y:06sequential_23/lstm_70/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3sequential_23/lstm_70/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
%sequential_23/lstm_70/TensorArrayV2_1TensorListReserve<sequential_23/lstm_70/TensorArrayV2_1/element_shape:output:0.sequential_23/lstm_70/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???\
sequential_23/lstm_70/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_23/lstm_70/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????j
(sequential_23/lstm_70/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_23/lstm_70/whileWhile1sequential_23/lstm_70/while/loop_counter:output:07sequential_23/lstm_70/while/maximum_iterations:output:0#sequential_23/lstm_70/time:output:0.sequential_23/lstm_70/TensorArrayV2_1:handle:0$sequential_23/lstm_70/zeros:output:0&sequential_23/lstm_70/zeros_1:output:0.sequential_23/lstm_70/strided_slice_1:output:0Msequential_23/lstm_70/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_23_lstm_70_lstm_cell_7_matmul_readvariableop_resourceBsequential_23_lstm_70_lstm_cell_7_matmul_1_readvariableop_resourceAsequential_23_lstm_70_lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_23_lstm_70_while_body_47524*2
cond*R(
&sequential_23_lstm_70_while_cond_47523*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Fsequential_23/lstm_70/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
8sequential_23/lstm_70/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_23/lstm_70/while:output:3Osequential_23/lstm_70/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0~
+sequential_23/lstm_70/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????w
-sequential_23/lstm_70/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_23/lstm_70/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_23/lstm_70/strided_slice_3StridedSliceAsequential_23/lstm_70/TensorArrayV2Stack/TensorListStack:tensor:04sequential_23/lstm_70/strided_slice_3/stack:output:06sequential_23/lstm_70/strided_slice_3/stack_1:output:06sequential_23/lstm_70/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask{
&sequential_23/lstm_70/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_23/lstm_70/transpose_1	TransposeAsequential_23/lstm_70/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_23/lstm_70/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2q
sequential_23/lstm_70/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_23/lstm_71/ShapeShape%sequential_23/lstm_70/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_23/lstm_71/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_23/lstm_71/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_23/lstm_71/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#sequential_23/lstm_71/strided_sliceStridedSlice$sequential_23/lstm_71/Shape:output:02sequential_23/lstm_71/strided_slice/stack:output:04sequential_23/lstm_71/strided_slice/stack_1:output:04sequential_23/lstm_71/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_23/lstm_71/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
"sequential_23/lstm_71/zeros/packedPack,sequential_23/lstm_71/strided_slice:output:0-sequential_23/lstm_71/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_23/lstm_71/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_23/lstm_71/zerosFill+sequential_23/lstm_71/zeros/packed:output:0*sequential_23/lstm_71/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
h
&sequential_23/lstm_71/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_23/lstm_71/zeros_1/packedPack,sequential_23/lstm_71/strided_slice:output:0/sequential_23/lstm_71/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_23/lstm_71/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_23/lstm_71/zeros_1Fill-sequential_23/lstm_71/zeros_1/packed:output:0,sequential_23/lstm_71/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
y
$sequential_23/lstm_71/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
sequential_23/lstm_71/transpose	Transpose%sequential_23/lstm_70/transpose_1:y:0-sequential_23/lstm_71/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2p
sequential_23/lstm_71/Shape_1Shape#sequential_23/lstm_71/transpose:y:0*
T0*
_output_shapes
:u
+sequential_23/lstm_71/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_23/lstm_71/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_23/lstm_71/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_23/lstm_71/strided_slice_1StridedSlice&sequential_23/lstm_71/Shape_1:output:04sequential_23/lstm_71/strided_slice_1/stack:output:06sequential_23/lstm_71/strided_slice_1/stack_1:output:06sequential_23/lstm_71/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_23/lstm_71/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
#sequential_23/lstm_71/TensorArrayV2TensorListReserve:sequential_23/lstm_71/TensorArrayV2/element_shape:output:0.sequential_23/lstm_71/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Ksequential_23/lstm_71/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
=sequential_23/lstm_71/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_23/lstm_71/transpose:y:0Tsequential_23/lstm_71/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???u
+sequential_23/lstm_71/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_23/lstm_71/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_23/lstm_71/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_23/lstm_71/strided_slice_2StridedSlice#sequential_23/lstm_71/transpose:y:04sequential_23/lstm_71/strided_slice_2/stack:output:06sequential_23/lstm_71/strided_slice_2/stack_1:output:06sequential_23/lstm_71/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
7sequential_23/lstm_71/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp@sequential_23_lstm_71_lstm_cell_8_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
(sequential_23/lstm_71/lstm_cell_8/MatMulMatMul.sequential_23/lstm_71/strided_slice_2:output:0?sequential_23/lstm_71/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
9sequential_23/lstm_71/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOpBsequential_23_lstm_71_lstm_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
*sequential_23/lstm_71/lstm_cell_8/MatMul_1MatMul$sequential_23/lstm_71/zeros:output:0Asequential_23/lstm_71/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%sequential_23/lstm_71/lstm_cell_8/addAddV22sequential_23/lstm_71/lstm_cell_8/MatMul:product:04sequential_23/lstm_71/lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
8sequential_23/lstm_71/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOpAsequential_23_lstm_71_lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
)sequential_23/lstm_71/lstm_cell_8/BiasAddBiasAdd)sequential_23/lstm_71/lstm_cell_8/add:z:0@sequential_23/lstm_71/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(s
1sequential_23/lstm_71/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
'sequential_23/lstm_71/lstm_cell_8/splitSplit:sequential_23/lstm_71/lstm_cell_8/split/split_dim:output:02sequential_23/lstm_71/lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
)sequential_23/lstm_71/lstm_cell_8/SigmoidSigmoid0sequential_23/lstm_71/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:?????????
?
+sequential_23/lstm_71/lstm_cell_8/Sigmoid_1Sigmoid0sequential_23/lstm_71/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:?????????
?
%sequential_23/lstm_71/lstm_cell_8/mulMul/sequential_23/lstm_71/lstm_cell_8/Sigmoid_1:y:0&sequential_23/lstm_71/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
&sequential_23/lstm_71/lstm_cell_8/ReluRelu0sequential_23/lstm_71/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:?????????
?
'sequential_23/lstm_71/lstm_cell_8/mul_1Mul-sequential_23/lstm_71/lstm_cell_8/Sigmoid:y:04sequential_23/lstm_71/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
'sequential_23/lstm_71/lstm_cell_8/add_1AddV2)sequential_23/lstm_71/lstm_cell_8/mul:z:0+sequential_23/lstm_71/lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_23/lstm_71/lstm_cell_8/Sigmoid_2Sigmoid0sequential_23/lstm_71/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:?????????
?
(sequential_23/lstm_71/lstm_cell_8/Relu_1Relu+sequential_23/lstm_71/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:?????????
?
'sequential_23/lstm_71/lstm_cell_8/mul_2Mul/sequential_23/lstm_71/lstm_cell_8/Sigmoid_2:y:06sequential_23/lstm_71/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3sequential_23/lstm_71/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
%sequential_23/lstm_71/TensorArrayV2_1TensorListReserve<sequential_23/lstm_71/TensorArrayV2_1/element_shape:output:0.sequential_23/lstm_71/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???\
sequential_23/lstm_71/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_23/lstm_71/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????j
(sequential_23/lstm_71/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_23/lstm_71/whileWhile1sequential_23/lstm_71/while/loop_counter:output:07sequential_23/lstm_71/while/maximum_iterations:output:0#sequential_23/lstm_71/time:output:0.sequential_23/lstm_71/TensorArrayV2_1:handle:0$sequential_23/lstm_71/zeros:output:0&sequential_23/lstm_71/zeros_1:output:0.sequential_23/lstm_71/strided_slice_1:output:0Msequential_23/lstm_71/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_23_lstm_71_lstm_cell_8_matmul_readvariableop_resourceBsequential_23_lstm_71_lstm_cell_8_matmul_1_readvariableop_resourceAsequential_23_lstm_71_lstm_cell_8_biasadd_readvariableop_resource*
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
_stateful_parallelism( *2
body*R(
&sequential_23_lstm_71_while_body_47663*2
cond*R(
&sequential_23_lstm_71_while_cond_47662*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Fsequential_23/lstm_71/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
8sequential_23/lstm_71/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_23/lstm_71/while:output:3Osequential_23/lstm_71/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0~
+sequential_23/lstm_71/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????w
-sequential_23/lstm_71/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_23/lstm_71/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_23/lstm_71/strided_slice_3StridedSliceAsequential_23/lstm_71/TensorArrayV2Stack/TensorListStack:tensor:04sequential_23/lstm_71/strided_slice_3/stack:output:06sequential_23/lstm_71/strided_slice_3/stack_1:output:06sequential_23/lstm_71/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask{
&sequential_23/lstm_71/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_23/lstm_71/transpose_1	TransposeAsequential_23/lstm_71/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_23/lstm_71/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
q
sequential_23/lstm_71/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_23/dense_23/MatMul/ReadVariableOpReadVariableOp5sequential_23_dense_23_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_23/dense_23/MatMulMatMul.sequential_23/lstm_71/strided_slice_3:output:04sequential_23/dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_23/dense_23/BiasAdd/ReadVariableOpReadVariableOp6sequential_23_dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_23/dense_23/BiasAddBiasAdd'sequential_23/dense_23/MatMul:product:05sequential_23/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_23/dense_23/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_23/dense_23/BiasAdd/ReadVariableOp-^sequential_23/dense_23/MatMul/ReadVariableOp9^sequential_23/lstm_69/lstm_cell_6/BiasAdd/ReadVariableOp8^sequential_23/lstm_69/lstm_cell_6/MatMul/ReadVariableOp:^sequential_23/lstm_69/lstm_cell_6/MatMul_1/ReadVariableOp^sequential_23/lstm_69/while9^sequential_23/lstm_70/lstm_cell_7/BiasAdd/ReadVariableOp8^sequential_23/lstm_70/lstm_cell_7/MatMul/ReadVariableOp:^sequential_23/lstm_70/lstm_cell_7/MatMul_1/ReadVariableOp^sequential_23/lstm_70/while9^sequential_23/lstm_71/lstm_cell_8/BiasAdd/ReadVariableOp8^sequential_23/lstm_71/lstm_cell_8/MatMul/ReadVariableOp:^sequential_23/lstm_71/lstm_cell_8/MatMul_1/ReadVariableOp^sequential_23/lstm_71/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_23/dense_23/BiasAdd/ReadVariableOp-sequential_23/dense_23/BiasAdd/ReadVariableOp2\
,sequential_23/dense_23/MatMul/ReadVariableOp,sequential_23/dense_23/MatMul/ReadVariableOp2t
8sequential_23/lstm_69/lstm_cell_6/BiasAdd/ReadVariableOp8sequential_23/lstm_69/lstm_cell_6/BiasAdd/ReadVariableOp2r
7sequential_23/lstm_69/lstm_cell_6/MatMul/ReadVariableOp7sequential_23/lstm_69/lstm_cell_6/MatMul/ReadVariableOp2v
9sequential_23/lstm_69/lstm_cell_6/MatMul_1/ReadVariableOp9sequential_23/lstm_69/lstm_cell_6/MatMul_1/ReadVariableOp2:
sequential_23/lstm_69/whilesequential_23/lstm_69/while2t
8sequential_23/lstm_70/lstm_cell_7/BiasAdd/ReadVariableOp8sequential_23/lstm_70/lstm_cell_7/BiasAdd/ReadVariableOp2r
7sequential_23/lstm_70/lstm_cell_7/MatMul/ReadVariableOp7sequential_23/lstm_70/lstm_cell_7/MatMul/ReadVariableOp2v
9sequential_23/lstm_70/lstm_cell_7/MatMul_1/ReadVariableOp9sequential_23/lstm_70/lstm_cell_7/MatMul_1/ReadVariableOp2:
sequential_23/lstm_70/whilesequential_23/lstm_70/while2t
8sequential_23/lstm_71/lstm_cell_8/BiasAdd/ReadVariableOp8sequential_23/lstm_71/lstm_cell_8/BiasAdd/ReadVariableOp2r
7sequential_23/lstm_71/lstm_cell_8/MatMul/ReadVariableOp7sequential_23/lstm_71/lstm_cell_8/MatMul/ReadVariableOp2v
9sequential_23/lstm_71/lstm_cell_8/MatMul_1/ReadVariableOp9sequential_23/lstm_71/lstm_cell_8/MatMul_1/ReadVariableOp2:
sequential_23/lstm_71/whilesequential_23/lstm_71/while:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_69_input
?Q
?
&sequential_23_lstm_70_while_body_47524H
Dsequential_23_lstm_70_while_sequential_23_lstm_70_while_loop_counterN
Jsequential_23_lstm_70_while_sequential_23_lstm_70_while_maximum_iterations+
'sequential_23_lstm_70_while_placeholder-
)sequential_23_lstm_70_while_placeholder_1-
)sequential_23_lstm_70_while_placeholder_2-
)sequential_23_lstm_70_while_placeholder_3G
Csequential_23_lstm_70_while_sequential_23_lstm_70_strided_slice_1_0?
sequential_23_lstm_70_while_tensorarrayv2read_tensorlistgetitem_sequential_23_lstm_70_tensorarrayunstack_tensorlistfromtensor_0[
Hsequential_23_lstm_70_while_lstm_cell_7_matmul_readvariableop_resource_0:	d?]
Jsequential_23_lstm_70_while_lstm_cell_7_matmul_1_readvariableop_resource_0:	2?X
Isequential_23_lstm_70_while_lstm_cell_7_biasadd_readvariableop_resource_0:	?(
$sequential_23_lstm_70_while_identity*
&sequential_23_lstm_70_while_identity_1*
&sequential_23_lstm_70_while_identity_2*
&sequential_23_lstm_70_while_identity_3*
&sequential_23_lstm_70_while_identity_4*
&sequential_23_lstm_70_while_identity_5E
Asequential_23_lstm_70_while_sequential_23_lstm_70_strided_slice_1?
}sequential_23_lstm_70_while_tensorarrayv2read_tensorlistgetitem_sequential_23_lstm_70_tensorarrayunstack_tensorlistfromtensorY
Fsequential_23_lstm_70_while_lstm_cell_7_matmul_readvariableop_resource:	d?[
Hsequential_23_lstm_70_while_lstm_cell_7_matmul_1_readvariableop_resource:	2?V
Gsequential_23_lstm_70_while_lstm_cell_7_biasadd_readvariableop_resource:	???>sequential_23/lstm_70/while/lstm_cell_7/BiasAdd/ReadVariableOp?=sequential_23/lstm_70/while/lstm_cell_7/MatMul/ReadVariableOp??sequential_23/lstm_70/while/lstm_cell_7/MatMul_1/ReadVariableOp?
Msequential_23/lstm_70/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_23/lstm_70/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_23_lstm_70_while_tensorarrayv2read_tensorlistgetitem_sequential_23_lstm_70_tensorarrayunstack_tensorlistfromtensor_0'sequential_23_lstm_70_while_placeholderVsequential_23/lstm_70/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
=sequential_23/lstm_70/while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOpHsequential_23_lstm_70_while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
.sequential_23/lstm_70/while/lstm_cell_7/MatMulMatMulFsequential_23/lstm_70/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_23/lstm_70/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
?sequential_23/lstm_70/while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOpJsequential_23_lstm_70_while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
0sequential_23/lstm_70/while/lstm_cell_7/MatMul_1MatMul)sequential_23_lstm_70_while_placeholder_2Gsequential_23/lstm_70/while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+sequential_23/lstm_70/while/lstm_cell_7/addAddV28sequential_23/lstm_70/while/lstm_cell_7/MatMul:product:0:sequential_23/lstm_70/while/lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
>sequential_23/lstm_70/while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOpIsequential_23_lstm_70_while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
/sequential_23/lstm_70/while/lstm_cell_7/BiasAddBiasAdd/sequential_23/lstm_70/while/lstm_cell_7/add:z:0Fsequential_23/lstm_70/while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
7sequential_23/lstm_70/while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
-sequential_23/lstm_70/while/lstm_cell_7/splitSplit@sequential_23/lstm_70/while/lstm_cell_7/split/split_dim:output:08sequential_23/lstm_70/while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
/sequential_23/lstm_70/while/lstm_cell_7/SigmoidSigmoid6sequential_23/lstm_70/while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????2?
1sequential_23/lstm_70/while/lstm_cell_7/Sigmoid_1Sigmoid6sequential_23/lstm_70/while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????2?
+sequential_23/lstm_70/while/lstm_cell_7/mulMul5sequential_23/lstm_70/while/lstm_cell_7/Sigmoid_1:y:0)sequential_23_lstm_70_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
,sequential_23/lstm_70/while/lstm_cell_7/ReluRelu6sequential_23/lstm_70/while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????2?
-sequential_23/lstm_70/while/lstm_cell_7/mul_1Mul3sequential_23/lstm_70/while/lstm_cell_7/Sigmoid:y:0:sequential_23/lstm_70/while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
-sequential_23/lstm_70/while/lstm_cell_7/add_1AddV2/sequential_23/lstm_70/while/lstm_cell_7/mul:z:01sequential_23/lstm_70/while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_23/lstm_70/while/lstm_cell_7/Sigmoid_2Sigmoid6sequential_23/lstm_70/while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????2?
.sequential_23/lstm_70/while/lstm_cell_7/Relu_1Relu1sequential_23/lstm_70/while/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????2?
-sequential_23/lstm_70/while/lstm_cell_7/mul_2Mul5sequential_23/lstm_70/while/lstm_cell_7/Sigmoid_2:y:0<sequential_23/lstm_70/while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
@sequential_23/lstm_70/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_23_lstm_70_while_placeholder_1'sequential_23_lstm_70_while_placeholder1sequential_23/lstm_70/while/lstm_cell_7/mul_2:z:0*
_output_shapes
: *
element_dtype0:???c
!sequential_23/lstm_70/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
sequential_23/lstm_70/while/addAddV2'sequential_23_lstm_70_while_placeholder*sequential_23/lstm_70/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_23/lstm_70/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_23/lstm_70/while/add_1AddV2Dsequential_23_lstm_70_while_sequential_23_lstm_70_while_loop_counter,sequential_23/lstm_70/while/add_1/y:output:0*
T0*
_output_shapes
: ?
$sequential_23/lstm_70/while/IdentityIdentity%sequential_23/lstm_70/while/add_1:z:0!^sequential_23/lstm_70/while/NoOp*
T0*
_output_shapes
: ?
&sequential_23/lstm_70/while/Identity_1IdentityJsequential_23_lstm_70_while_sequential_23_lstm_70_while_maximum_iterations!^sequential_23/lstm_70/while/NoOp*
T0*
_output_shapes
: ?
&sequential_23/lstm_70/while/Identity_2Identity#sequential_23/lstm_70/while/add:z:0!^sequential_23/lstm_70/while/NoOp*
T0*
_output_shapes
: ?
&sequential_23/lstm_70/while/Identity_3IdentityPsequential_23/lstm_70/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_23/lstm_70/while/NoOp*
T0*
_output_shapes
: ?
&sequential_23/lstm_70/while/Identity_4Identity1sequential_23/lstm_70/while/lstm_cell_7/mul_2:z:0!^sequential_23/lstm_70/while/NoOp*
T0*'
_output_shapes
:?????????2?
&sequential_23/lstm_70/while/Identity_5Identity1sequential_23/lstm_70/while/lstm_cell_7/add_1:z:0!^sequential_23/lstm_70/while/NoOp*
T0*'
_output_shapes
:?????????2?
 sequential_23/lstm_70/while/NoOpNoOp?^sequential_23/lstm_70/while/lstm_cell_7/BiasAdd/ReadVariableOp>^sequential_23/lstm_70/while/lstm_cell_7/MatMul/ReadVariableOp@^sequential_23/lstm_70/while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_23_lstm_70_while_identity-sequential_23/lstm_70/while/Identity:output:0"Y
&sequential_23_lstm_70_while_identity_1/sequential_23/lstm_70/while/Identity_1:output:0"Y
&sequential_23_lstm_70_while_identity_2/sequential_23/lstm_70/while/Identity_2:output:0"Y
&sequential_23_lstm_70_while_identity_3/sequential_23/lstm_70/while/Identity_3:output:0"Y
&sequential_23_lstm_70_while_identity_4/sequential_23/lstm_70/while/Identity_4:output:0"Y
&sequential_23_lstm_70_while_identity_5/sequential_23/lstm_70/while/Identity_5:output:0"?
Gsequential_23_lstm_70_while_lstm_cell_7_biasadd_readvariableop_resourceIsequential_23_lstm_70_while_lstm_cell_7_biasadd_readvariableop_resource_0"?
Hsequential_23_lstm_70_while_lstm_cell_7_matmul_1_readvariableop_resourceJsequential_23_lstm_70_while_lstm_cell_7_matmul_1_readvariableop_resource_0"?
Fsequential_23_lstm_70_while_lstm_cell_7_matmul_readvariableop_resourceHsequential_23_lstm_70_while_lstm_cell_7_matmul_readvariableop_resource_0"?
Asequential_23_lstm_70_while_sequential_23_lstm_70_strided_slice_1Csequential_23_lstm_70_while_sequential_23_lstm_70_strided_slice_1_0"?
}sequential_23_lstm_70_while_tensorarrayv2read_tensorlistgetitem_sequential_23_lstm_70_tensorarrayunstack_tensorlistfromtensorsequential_23_lstm_70_while_tensorarrayv2read_tensorlistgetitem_sequential_23_lstm_70_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
>sequential_23/lstm_70/while/lstm_cell_7/BiasAdd/ReadVariableOp>sequential_23/lstm_70/while/lstm_cell_7/BiasAdd/ReadVariableOp2~
=sequential_23/lstm_70/while/lstm_cell_7/MatMul/ReadVariableOp=sequential_23/lstm_70/while/lstm_cell_7/MatMul/ReadVariableOp2?
?sequential_23/lstm_70/while/lstm_cell_7/MatMul_1/ReadVariableOp?sequential_23/lstm_70/while/lstm_cell_7/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
+__inference_lstm_cell_8_layer_call_fn_53001

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
GPU 2J 8? *O
fJRH
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_48520o
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
?
?
'__inference_lstm_69_layer_call_fn_50965

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
GPU 2J 8? *K
fFRD
B__inference_lstm_69_layer_call_and_return_conditional_losses_49798s
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
?7
?
while_body_52685
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_8_matmul_readvariableop_resource_0:2(F
4while_lstm_cell_8_matmul_1_readvariableop_resource_0:
(A
3while_lstm_cell_8_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_8_matmul_readvariableop_resource:2(D
2while_lstm_cell_8_matmul_1_readvariableop_resource:
(?
1while_lstm_cell_8_biasadd_readvariableop_resource:(??(while/lstm_cell_8/BiasAdd/ReadVariableOp?'while/lstm_cell_8/MatMul/ReadVariableOp?)while/lstm_cell_8/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
'while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_8/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_8/addAddV2"while/lstm_cell_8/MatMul:product:0$while/lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
(while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_8/BiasAddBiasAddwhile/lstm_cell_8/add:z:00while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(c
!while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_8/splitSplit*while/lstm_cell_8/split/split_dim:output:0"while/lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitx
while/lstm_cell_8/SigmoidSigmoid while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:?????????
z
while/lstm_cell_8/Sigmoid_1Sigmoid while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_8/mulMulwhile/lstm_cell_8/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
r
while/lstm_cell_8/ReluRelu while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_8/mul_1Mulwhile/lstm_cell_8/Sigmoid:y:0$while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_8/add_1AddV2while/lstm_cell_8/mul:z:0while/lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:?????????
z
while/lstm_cell_8/Sigmoid_2Sigmoid while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:?????????
o
while/lstm_cell_8/Relu_1Reluwhile/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_8/mul_2Mulwhile/lstm_cell_8/Sigmoid_2:y:0&while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_8/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_8/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
x
while/Identity_5Identitywhile/lstm_cell_8/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp)^while/lstm_cell_8/BiasAdd/ReadVariableOp(^while/lstm_cell_8/MatMul/ReadVariableOp*^while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_8_biasadd_readvariableop_resource3while_lstm_cell_8_biasadd_readvariableop_resource_0"j
2while_lstm_cell_8_matmul_1_readvariableop_resource4while_lstm_cell_8_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_8_matmul_readvariableop_resource2while_lstm_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2T
(while/lstm_cell_8/BiasAdd/ReadVariableOp(while/lstm_cell_8/BiasAdd/ReadVariableOp2R
'while/lstm_cell_8/MatMul/ReadVariableOp'while/lstm_cell_8/MatMul/ReadVariableOp2V
)while/lstm_cell_8/MatMul_1/ReadVariableOp)while/lstm_cell_8/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_49018
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_7_matmul_readvariableop_resource_0:	d?G
4while_lstm_cell_7_matmul_1_readvariableop_resource_0:	2?B
3while_lstm_cell_7_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_7_matmul_readvariableop_resource:	d?E
2while_lstm_cell_7_matmul_1_readvariableop_resource:	2?@
1while_lstm_cell_7_biasadd_readvariableop_resource:	???(while/lstm_cell_7/BiasAdd/ReadVariableOp?'while/lstm_cell_7/MatMul/ReadVariableOp?)while/lstm_cell_7/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
'while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_7/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_7/addAddV2"while/lstm_cell_7/MatMul:product:0$while/lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
(while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_7/BiasAddBiasAddwhile/lstm_cell_7/add:z:00while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0"while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitx
while/lstm_cell_7/SigmoidSigmoid while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????2z
while/lstm_cell_7/Sigmoid_1Sigmoid while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_7/mulMulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2r
while/lstm_cell_7/ReluRelu while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_7/mul_1Mulwhile/lstm_cell_7/Sigmoid:y:0$while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_7/add_1AddV2while/lstm_cell_7/mul:z:0while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????2z
while/lstm_cell_7/Sigmoid_2Sigmoid while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????2o
while/lstm_cell_7/Relu_1Reluwhile/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_7/mul_2Mulwhile/lstm_cell_7/Sigmoid_2:y:0&while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_7/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2x
while/Identity_5Identitywhile/lstm_cell_7/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp)^while/lstm_cell_7/BiasAdd/ReadVariableOp(^while/lstm_cell_7/MatMul/ReadVariableOp*^while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_7_biasadd_readvariableop_resource3while_lstm_cell_7_biasadd_readvariableop_resource_0"j
2while_lstm_cell_7_matmul_1_readvariableop_resource4while_lstm_cell_7_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_7_matmul_readvariableop_resource2while_lstm_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2T
(while/lstm_cell_7/BiasAdd/ReadVariableOp(while/lstm_cell_7/BiasAdd/ReadVariableOp2R
'while/lstm_cell_7/MatMul/ReadVariableOp'while/lstm_cell_7/MatMul/ReadVariableOp2V
)while/lstm_cell_7/MatMul_1/ReadVariableOp)while/lstm_cell_7/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_69_while_cond_50125,
(lstm_69_while_lstm_69_while_loop_counter2
.lstm_69_while_lstm_69_while_maximum_iterations
lstm_69_while_placeholder
lstm_69_while_placeholder_1
lstm_69_while_placeholder_2
lstm_69_while_placeholder_3.
*lstm_69_while_less_lstm_69_strided_slice_1C
?lstm_69_while_lstm_69_while_cond_50125___redundant_placeholder0C
?lstm_69_while_lstm_69_while_cond_50125___redundant_placeholder1C
?lstm_69_while_lstm_69_while_cond_50125___redundant_placeholder2C
?lstm_69_while_lstm_69_while_cond_50125___redundant_placeholder3
lstm_69_while_identity
?
lstm_69/while/LessLesslstm_69_while_placeholder*lstm_69_while_less_lstm_69_strided_slice_1*
T0*
_output_shapes
: [
lstm_69/while/IdentityIdentitylstm_69/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_69_while_identitylstm_69/while/Identity:output:0*(
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
C__inference_dense_23_layer_call_and_return_conditional_losses_52788

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
while_cond_52684
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_52684___redundant_placeholder03
/while_while_cond_52684___redundant_placeholder13
/while_while_cond_52684___redundant_placeholder23
/while_while_cond_52684___redundant_placeholder3
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
lstm_70_while_cond_50264,
(lstm_70_while_lstm_70_while_loop_counter2
.lstm_70_while_lstm_70_while_maximum_iterations
lstm_70_while_placeholder
lstm_70_while_placeholder_1
lstm_70_while_placeholder_2
lstm_70_while_placeholder_3.
*lstm_70_while_less_lstm_70_strided_slice_1C
?lstm_70_while_lstm_70_while_cond_50264___redundant_placeholder0C
?lstm_70_while_lstm_70_while_cond_50264___redundant_placeholder1C
?lstm_70_while_lstm_70_while_cond_50264___redundant_placeholder2C
?lstm_70_while_lstm_70_while_cond_50264___redundant_placeholder3
lstm_70_while_identity
?
lstm_70/while/LessLesslstm_70_while_placeholder*lstm_70_while_less_lstm_70_strided_slice_1*
T0*
_output_shapes
: [
lstm_70/while/IdentityIdentitylstm_70/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_70_while_identitylstm_70/while/Identity:output:0*(
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
?
?
H__inference_sequential_23_layer_call_and_return_conditional_losses_49948
lstm_69_input 
lstm_69_49921:	? 
lstm_69_49923:	d?
lstm_69_49925:	? 
lstm_70_49928:	d? 
lstm_70_49930:	2?
lstm_70_49932:	?
lstm_71_49935:2(
lstm_71_49937:
(
lstm_71_49939:( 
dense_23_49942:

dense_23_49944:
identity?? dense_23/StatefulPartitionedCall?lstm_69/StatefulPartitionedCall?lstm_70/StatefulPartitionedCall?lstm_71/StatefulPartitionedCall?
lstm_69/StatefulPartitionedCallStatefulPartitionedCalllstm_69_inputlstm_69_49921lstm_69_49923lstm_69_49925*
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
GPU 2J 8? *K
fFRD
B__inference_lstm_69_layer_call_and_return_conditional_losses_48952?
lstm_70/StatefulPartitionedCallStatefulPartitionedCall(lstm_69/StatefulPartitionedCall:output:0lstm_70_49928lstm_70_49930lstm_70_49932*
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
GPU 2J 8? *K
fFRD
B__inference_lstm_70_layer_call_and_return_conditional_losses_49102?
lstm_71/StatefulPartitionedCallStatefulPartitionedCall(lstm_70/StatefulPartitionedCall:output:0lstm_71_49935lstm_71_49937lstm_71_49939*
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
GPU 2J 8? *K
fFRD
B__inference_lstm_71_layer_call_and_return_conditional_losses_49252?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall(lstm_71/StatefulPartitionedCall:output:0dense_23_49942dense_23_49944*
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
GPU 2J 8? *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_49270x
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_23/StatefulPartitionedCall ^lstm_69/StatefulPartitionedCall ^lstm_70/StatefulPartitionedCall ^lstm_71/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2B
lstm_69/StatefulPartitionedCalllstm_69/StatefulPartitionedCall2B
lstm_70/StatefulPartitionedCalllstm_70/StatefulPartitionedCall2B
lstm_71/StatefulPartitionedCalllstm_71/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_69_input
?
?
while_cond_48183
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_48183___redundant_placeholder03
/while_while_cond_48183___redundant_placeholder13
/while_while_cond_48183___redundant_placeholder23
/while_while_cond_48183___redundant_placeholder3
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
?
B__inference_lstm_71_layer_call_and_return_conditional_losses_48603

inputs#
lstm_cell_8_48521:2(#
lstm_cell_8_48523:
(
lstm_cell_8_48525:(
identity??#lstm_cell_8/StatefulPartitionedCall?while;
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
#lstm_cell_8/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_8_48521lstm_cell_8_48523lstm_cell_8_48525*
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
GPU 2J 8? *O
fJRH
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_48520n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_8_48521lstm_cell_8_48523lstm_cell_8_48525*
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
bodyR
while_body_48534*
condR
while_cond_48533*K
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
t
NoOpNoOp$^lstm_cell_8/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2J
#lstm_cell_8/StatefulPartitionedCall#lstm_cell_8/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_51782
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_51782___redundant_placeholder03
/while_while_cond_51782___redundant_placeholder13
/while_while_cond_51782___redundant_placeholder23
/while_while_cond_51782___redundant_placeholder3
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

?
lstm_71_while_cond_50403,
(lstm_71_while_lstm_71_while_loop_counter2
.lstm_71_while_lstm_71_while_maximum_iterations
lstm_71_while_placeholder
lstm_71_while_placeholder_1
lstm_71_while_placeholder_2
lstm_71_while_placeholder_3.
*lstm_71_while_less_lstm_71_strided_slice_1C
?lstm_71_while_lstm_71_while_cond_50403___redundant_placeholder0C
?lstm_71_while_lstm_71_while_cond_50403___redundant_placeholder1C
?lstm_71_while_lstm_71_while_cond_50403___redundant_placeholder2C
?lstm_71_while_lstm_71_while_cond_50403___redundant_placeholder3
lstm_71_while_identity
?
lstm_71/while/LessLesslstm_71_while_placeholder*lstm_71_while_less_lstm_71_strided_slice_1*
T0*
_output_shapes
: [
lstm_71/while/IdentityIdentitylstm_71/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_71_while_identitylstm_71/while/Identity:output:0*(
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
lstm_70_while_cond_50691,
(lstm_70_while_lstm_70_while_loop_counter2
.lstm_70_while_lstm_70_while_maximum_iterations
lstm_70_while_placeholder
lstm_70_while_placeholder_1
lstm_70_while_placeholder_2
lstm_70_while_placeholder_3.
*lstm_70_while_less_lstm_70_strided_slice_1C
?lstm_70_while_lstm_70_while_cond_50691___redundant_placeholder0C
?lstm_70_while_lstm_70_while_cond_50691___redundant_placeholder1C
?lstm_70_while_lstm_70_while_cond_50691___redundant_placeholder2C
?lstm_70_while_lstm_70_while_cond_50691___redundant_placeholder3
lstm_70_while_identity
?
lstm_70/while/LessLesslstm_70_while_placeholder*lstm_70_while_less_lstm_70_strided_slice_1*
T0*
_output_shapes
: [
lstm_70/while/IdentityIdentitylstm_70/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_70_while_identitylstm_70/while/Identity:output:0*(
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
?
B__inference_lstm_71_layer_call_and_return_conditional_losses_48794

inputs#
lstm_cell_8_48712:2(#
lstm_cell_8_48714:
(
lstm_cell_8_48716:(
identity??#lstm_cell_8/StatefulPartitionedCall?while;
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
#lstm_cell_8/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_8_48712lstm_cell_8_48714lstm_cell_8_48716*
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
GPU 2J 8? *O
fJRH
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_48666n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_8_48712lstm_cell_8_48714lstm_cell_8_48716*
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
bodyR
while_body_48725*
condR
while_cond_48724*K
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
t
NoOpNoOp$^lstm_cell_8/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2J
#lstm_cell_8/StatefulPartitionedCall#lstm_cell_8/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_53082

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
?I
?
B__inference_lstm_69_layer_call_and_return_conditional_losses_51537

inputs=
*lstm_cell_6_matmul_readvariableop_resource:	??
,lstm_cell_6_matmul_1_readvariableop_resource:	d?:
+lstm_cell_6_biasadd_readvariableop_resource:	?
identity??"lstm_cell_6/BiasAdd/ReadVariableOp?!lstm_cell_6/MatMul/ReadVariableOp?#lstm_cell_6/MatMul_1/ReadVariableOp?while;
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
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitl
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????dn
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????du
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????df
lstm_cell_6/ReluRelulstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????dx
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????dn
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????dc
lstm_cell_6/Relu_1Relulstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0 lstm_cell_6/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
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
bodyR
while_body_51453*
condR
while_cond_51452*K
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
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?7
?
while_body_52399
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_8_matmul_readvariableop_resource_0:2(F
4while_lstm_cell_8_matmul_1_readvariableop_resource_0:
(A
3while_lstm_cell_8_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_8_matmul_readvariableop_resource:2(D
2while_lstm_cell_8_matmul_1_readvariableop_resource:
(?
1while_lstm_cell_8_biasadd_readvariableop_resource:(??(while/lstm_cell_8/BiasAdd/ReadVariableOp?'while/lstm_cell_8/MatMul/ReadVariableOp?)while/lstm_cell_8/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
'while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_8/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_8/addAddV2"while/lstm_cell_8/MatMul:product:0$while/lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
(while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_8/BiasAddBiasAddwhile/lstm_cell_8/add:z:00while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(c
!while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_8/splitSplit*while/lstm_cell_8/split/split_dim:output:0"while/lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitx
while/lstm_cell_8/SigmoidSigmoid while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:?????????
z
while/lstm_cell_8/Sigmoid_1Sigmoid while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_8/mulMulwhile/lstm_cell_8/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
r
while/lstm_cell_8/ReluRelu while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_8/mul_1Mulwhile/lstm_cell_8/Sigmoid:y:0$while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_8/add_1AddV2while/lstm_cell_8/mul:z:0while/lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:?????????
z
while/lstm_cell_8/Sigmoid_2Sigmoid while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:?????????
o
while/lstm_cell_8/Relu_1Reluwhile/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_8/mul_2Mulwhile/lstm_cell_8/Sigmoid_2:y:0&while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_8/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_8/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
x
while/Identity_5Identitywhile/lstm_cell_8/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp)^while/lstm_cell_8/BiasAdd/ReadVariableOp(^while/lstm_cell_8/MatMul/ReadVariableOp*^while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_8_biasadd_readvariableop_resource3while_lstm_cell_8_biasadd_readvariableop_resource_0"j
2while_lstm_cell_8_matmul_1_readvariableop_resource4while_lstm_cell_8_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_8_matmul_readvariableop_resource2while_lstm_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2T
(while/lstm_cell_8/BiasAdd/ReadVariableOp(while/lstm_cell_8/BiasAdd/ReadVariableOp2R
'while/lstm_cell_8/MatMul/ReadVariableOp'while/lstm_cell_8/MatMul/ReadVariableOp2V
)while/lstm_cell_8/MatMul_1/ReadVariableOp)while/lstm_cell_8/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?I
?
B__inference_lstm_69_layer_call_and_return_conditional_losses_48952

inputs=
*lstm_cell_6_matmul_readvariableop_resource:	??
,lstm_cell_6_matmul_1_readvariableop_resource:	d?:
+lstm_cell_6_biasadd_readvariableop_resource:	?
identity??"lstm_cell_6/BiasAdd/ReadVariableOp?!lstm_cell_6/MatMul/ReadVariableOp?#lstm_cell_6/MatMul_1/ReadVariableOp?while;
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
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitl
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????dn
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????du
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????df
lstm_cell_6/ReluRelulstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????dx
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????dn
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????dc
lstm_cell_6/Relu_1Relulstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0 lstm_cell_6/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
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
bodyR
while_body_48868*
condR
while_cond_48867*K
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
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?@
?

lstm_70_while_body_50265,
(lstm_70_while_lstm_70_while_loop_counter2
.lstm_70_while_lstm_70_while_maximum_iterations
lstm_70_while_placeholder
lstm_70_while_placeholder_1
lstm_70_while_placeholder_2
lstm_70_while_placeholder_3+
'lstm_70_while_lstm_70_strided_slice_1_0g
clstm_70_while_tensorarrayv2read_tensorlistgetitem_lstm_70_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_70_while_lstm_cell_7_matmul_readvariableop_resource_0:	d?O
<lstm_70_while_lstm_cell_7_matmul_1_readvariableop_resource_0:	2?J
;lstm_70_while_lstm_cell_7_biasadd_readvariableop_resource_0:	?
lstm_70_while_identity
lstm_70_while_identity_1
lstm_70_while_identity_2
lstm_70_while_identity_3
lstm_70_while_identity_4
lstm_70_while_identity_5)
%lstm_70_while_lstm_70_strided_slice_1e
alstm_70_while_tensorarrayv2read_tensorlistgetitem_lstm_70_tensorarrayunstack_tensorlistfromtensorK
8lstm_70_while_lstm_cell_7_matmul_readvariableop_resource:	d?M
:lstm_70_while_lstm_cell_7_matmul_1_readvariableop_resource:	2?H
9lstm_70_while_lstm_cell_7_biasadd_readvariableop_resource:	???0lstm_70/while/lstm_cell_7/BiasAdd/ReadVariableOp?/lstm_70/while/lstm_cell_7/MatMul/ReadVariableOp?1lstm_70/while/lstm_cell_7/MatMul_1/ReadVariableOp?
?lstm_70/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
1lstm_70/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_70_while_tensorarrayv2read_tensorlistgetitem_lstm_70_tensorarrayunstack_tensorlistfromtensor_0lstm_70_while_placeholderHlstm_70/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
/lstm_70/while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp:lstm_70_while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
 lstm_70/while/lstm_cell_7/MatMulMatMul8lstm_70/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_70/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
1lstm_70/while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp<lstm_70_while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
"lstm_70/while/lstm_cell_7/MatMul_1MatMullstm_70_while_placeholder_29lstm_70/while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_70/while/lstm_cell_7/addAddV2*lstm_70/while/lstm_cell_7/MatMul:product:0,lstm_70/while/lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
0lstm_70/while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp;lstm_70_while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
!lstm_70/while/lstm_cell_7/BiasAddBiasAdd!lstm_70/while/lstm_cell_7/add:z:08lstm_70/while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????k
)lstm_70/while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_70/while/lstm_cell_7/splitSplit2lstm_70/while/lstm_cell_7/split/split_dim:output:0*lstm_70/while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
!lstm_70/while/lstm_cell_7/SigmoidSigmoid(lstm_70/while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????2?
#lstm_70/while/lstm_cell_7/Sigmoid_1Sigmoid(lstm_70/while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_70/while/lstm_cell_7/mulMul'lstm_70/while/lstm_cell_7/Sigmoid_1:y:0lstm_70_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
lstm_70/while/lstm_cell_7/ReluRelu(lstm_70/while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_70/while/lstm_cell_7/mul_1Mul%lstm_70/while/lstm_cell_7/Sigmoid:y:0,lstm_70/while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_70/while/lstm_cell_7/add_1AddV2!lstm_70/while/lstm_cell_7/mul:z:0#lstm_70/while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
#lstm_70/while/lstm_cell_7/Sigmoid_2Sigmoid(lstm_70/while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????2
 lstm_70/while/lstm_cell_7/Relu_1Relu#lstm_70/while/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_70/while/lstm_cell_7/mul_2Mul'lstm_70/while/lstm_cell_7/Sigmoid_2:y:0.lstm_70/while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
2lstm_70/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_70_while_placeholder_1lstm_70_while_placeholder#lstm_70/while/lstm_cell_7/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_70/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_70/while/addAddV2lstm_70_while_placeholderlstm_70/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_70/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_70/while/add_1AddV2(lstm_70_while_lstm_70_while_loop_counterlstm_70/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_70/while/IdentityIdentitylstm_70/while/add_1:z:0^lstm_70/while/NoOp*
T0*
_output_shapes
: ?
lstm_70/while/Identity_1Identity.lstm_70_while_lstm_70_while_maximum_iterations^lstm_70/while/NoOp*
T0*
_output_shapes
: q
lstm_70/while/Identity_2Identitylstm_70/while/add:z:0^lstm_70/while/NoOp*
T0*
_output_shapes
: ?
lstm_70/while/Identity_3IdentityBlstm_70/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_70/while/NoOp*
T0*
_output_shapes
: ?
lstm_70/while/Identity_4Identity#lstm_70/while/lstm_cell_7/mul_2:z:0^lstm_70/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_70/while/Identity_5Identity#lstm_70/while/lstm_cell_7/add_1:z:0^lstm_70/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_70/while/NoOpNoOp1^lstm_70/while/lstm_cell_7/BiasAdd/ReadVariableOp0^lstm_70/while/lstm_cell_7/MatMul/ReadVariableOp2^lstm_70/while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_70_while_identitylstm_70/while/Identity:output:0"=
lstm_70_while_identity_1!lstm_70/while/Identity_1:output:0"=
lstm_70_while_identity_2!lstm_70/while/Identity_2:output:0"=
lstm_70_while_identity_3!lstm_70/while/Identity_3:output:0"=
lstm_70_while_identity_4!lstm_70/while/Identity_4:output:0"=
lstm_70_while_identity_5!lstm_70/while/Identity_5:output:0"P
%lstm_70_while_lstm_70_strided_slice_1'lstm_70_while_lstm_70_strided_slice_1_0"x
9lstm_70_while_lstm_cell_7_biasadd_readvariableop_resource;lstm_70_while_lstm_cell_7_biasadd_readvariableop_resource_0"z
:lstm_70_while_lstm_cell_7_matmul_1_readvariableop_resource<lstm_70_while_lstm_cell_7_matmul_1_readvariableop_resource_0"v
8lstm_70_while_lstm_cell_7_matmul_readvariableop_resource:lstm_70_while_lstm_cell_7_matmul_readvariableop_resource_0"?
alstm_70_while_tensorarrayv2read_tensorlistgetitem_lstm_70_tensorarrayunstack_tensorlistfromtensorclstm_70_while_tensorarrayv2read_tensorlistgetitem_lstm_70_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2d
0lstm_70/while/lstm_cell_7/BiasAdd/ReadVariableOp0lstm_70/while/lstm_cell_7/BiasAdd/ReadVariableOp2b
/lstm_70/while/lstm_cell_7/MatMul/ReadVariableOp/lstm_70/while/lstm_cell_7/MatMul/ReadVariableOp2f
1lstm_70/while/lstm_cell_7/MatMul_1/ReadVariableOp1lstm_70/while/lstm_cell_7/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?I
?
B__inference_lstm_71_layer_call_and_return_conditional_losses_49252

inputs<
*lstm_cell_8_matmul_readvariableop_resource:2(>
,lstm_cell_8_matmul_1_readvariableop_resource:
(9
+lstm_cell_8_biasadd_readvariableop_resource:(
identity??"lstm_cell_8/BiasAdd/ReadVariableOp?!lstm_cell_8/MatMul/ReadVariableOp?#lstm_cell_8/MatMul_1/ReadVariableOp?while;
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
!lstm_cell_8/MatMul/ReadVariableOpReadVariableOp*lstm_cell_8_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_8/MatMulMatMulstrided_slice_2:output:0)lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
#lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_8/MatMul_1MatMulzeros:output:0+lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_8/addAddV2lstm_cell_8/MatMul:product:0lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
"lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_8/BiasAddBiasAddlstm_cell_8/add:z:0*lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(]
lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_8/splitSplit$lstm_cell_8/split/split_dim:output:0lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitl
lstm_cell_8/SigmoidSigmoidlstm_cell_8/split:output:0*
T0*'
_output_shapes
:?????????
n
lstm_cell_8/Sigmoid_1Sigmoidlstm_cell_8/split:output:1*
T0*'
_output_shapes
:?????????
u
lstm_cell_8/mulMullstm_cell_8/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
f
lstm_cell_8/ReluRelulstm_cell_8/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_8/mul_1Mullstm_cell_8/Sigmoid:y:0lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:?????????
x
lstm_cell_8/add_1AddV2lstm_cell_8/mul:z:0lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:?????????
n
lstm_cell_8/Sigmoid_2Sigmoidlstm_cell_8/split:output:3*
T0*'
_output_shapes
:?????????
c
lstm_cell_8/Relu_1Relulstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_8/mul_2Mullstm_cell_8/Sigmoid_2:y:0 lstm_cell_8/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_8_matmul_readvariableop_resource,lstm_cell_8_matmul_1_readvariableop_resource+lstm_cell_8_biasadd_readvariableop_resource*
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
bodyR
while_body_49168*
condR
while_cond_49167*K
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
NoOpNoOp#^lstm_cell_8/BiasAdd/ReadVariableOp"^lstm_cell_8/MatMul/ReadVariableOp$^lstm_cell_8/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2H
"lstm_cell_8/BiasAdd/ReadVariableOp"lstm_cell_8/BiasAdd/ReadVariableOp2F
!lstm_cell_8/MatMul/ReadVariableOp!lstm_cell_8/MatMul/ReadVariableOp2J
#lstm_cell_8/MatMul_1/ReadVariableOp#lstm_cell_8/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?Q
?
&sequential_23_lstm_69_while_body_47385H
Dsequential_23_lstm_69_while_sequential_23_lstm_69_while_loop_counterN
Jsequential_23_lstm_69_while_sequential_23_lstm_69_while_maximum_iterations+
'sequential_23_lstm_69_while_placeholder-
)sequential_23_lstm_69_while_placeholder_1-
)sequential_23_lstm_69_while_placeholder_2-
)sequential_23_lstm_69_while_placeholder_3G
Csequential_23_lstm_69_while_sequential_23_lstm_69_strided_slice_1_0?
sequential_23_lstm_69_while_tensorarrayv2read_tensorlistgetitem_sequential_23_lstm_69_tensorarrayunstack_tensorlistfromtensor_0[
Hsequential_23_lstm_69_while_lstm_cell_6_matmul_readvariableop_resource_0:	?]
Jsequential_23_lstm_69_while_lstm_cell_6_matmul_1_readvariableop_resource_0:	d?X
Isequential_23_lstm_69_while_lstm_cell_6_biasadd_readvariableop_resource_0:	?(
$sequential_23_lstm_69_while_identity*
&sequential_23_lstm_69_while_identity_1*
&sequential_23_lstm_69_while_identity_2*
&sequential_23_lstm_69_while_identity_3*
&sequential_23_lstm_69_while_identity_4*
&sequential_23_lstm_69_while_identity_5E
Asequential_23_lstm_69_while_sequential_23_lstm_69_strided_slice_1?
}sequential_23_lstm_69_while_tensorarrayv2read_tensorlistgetitem_sequential_23_lstm_69_tensorarrayunstack_tensorlistfromtensorY
Fsequential_23_lstm_69_while_lstm_cell_6_matmul_readvariableop_resource:	?[
Hsequential_23_lstm_69_while_lstm_cell_6_matmul_1_readvariableop_resource:	d?V
Gsequential_23_lstm_69_while_lstm_cell_6_biasadd_readvariableop_resource:	???>sequential_23/lstm_69/while/lstm_cell_6/BiasAdd/ReadVariableOp?=sequential_23/lstm_69/while/lstm_cell_6/MatMul/ReadVariableOp??sequential_23/lstm_69/while/lstm_cell_6/MatMul_1/ReadVariableOp?
Msequential_23/lstm_69/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_23/lstm_69/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_23_lstm_69_while_tensorarrayv2read_tensorlistgetitem_sequential_23_lstm_69_tensorarrayunstack_tensorlistfromtensor_0'sequential_23_lstm_69_while_placeholderVsequential_23/lstm_69/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
=sequential_23/lstm_69/while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOpHsequential_23_lstm_69_while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
.sequential_23/lstm_69/while/lstm_cell_6/MatMulMatMulFsequential_23/lstm_69/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_23/lstm_69/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
?sequential_23/lstm_69/while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOpJsequential_23_lstm_69_while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
0sequential_23/lstm_69/while/lstm_cell_6/MatMul_1MatMul)sequential_23_lstm_69_while_placeholder_2Gsequential_23/lstm_69/while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+sequential_23/lstm_69/while/lstm_cell_6/addAddV28sequential_23/lstm_69/while/lstm_cell_6/MatMul:product:0:sequential_23/lstm_69/while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
>sequential_23/lstm_69/while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOpIsequential_23_lstm_69_while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
/sequential_23/lstm_69/while/lstm_cell_6/BiasAddBiasAdd/sequential_23/lstm_69/while/lstm_cell_6/add:z:0Fsequential_23/lstm_69/while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
7sequential_23/lstm_69/while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
-sequential_23/lstm_69/while/lstm_cell_6/splitSplit@sequential_23/lstm_69/while/lstm_cell_6/split/split_dim:output:08sequential_23/lstm_69/while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
/sequential_23/lstm_69/while/lstm_cell_6/SigmoidSigmoid6sequential_23/lstm_69/while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????d?
1sequential_23/lstm_69/while/lstm_cell_6/Sigmoid_1Sigmoid6sequential_23/lstm_69/while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????d?
+sequential_23/lstm_69/while/lstm_cell_6/mulMul5sequential_23/lstm_69/while/lstm_cell_6/Sigmoid_1:y:0)sequential_23_lstm_69_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
,sequential_23/lstm_69/while/lstm_cell_6/ReluRelu6sequential_23/lstm_69/while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????d?
-sequential_23/lstm_69/while/lstm_cell_6/mul_1Mul3sequential_23/lstm_69/while/lstm_cell_6/Sigmoid:y:0:sequential_23/lstm_69/while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
-sequential_23/lstm_69/while/lstm_cell_6/add_1AddV2/sequential_23/lstm_69/while/lstm_cell_6/mul:z:01sequential_23/lstm_69/while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_23/lstm_69/while/lstm_cell_6/Sigmoid_2Sigmoid6sequential_23/lstm_69/while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????d?
.sequential_23/lstm_69/while/lstm_cell_6/Relu_1Relu1sequential_23/lstm_69/while/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????d?
-sequential_23/lstm_69/while/lstm_cell_6/mul_2Mul5sequential_23/lstm_69/while/lstm_cell_6/Sigmoid_2:y:0<sequential_23/lstm_69/while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
@sequential_23/lstm_69/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_23_lstm_69_while_placeholder_1'sequential_23_lstm_69_while_placeholder1sequential_23/lstm_69/while/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype0:???c
!sequential_23/lstm_69/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
sequential_23/lstm_69/while/addAddV2'sequential_23_lstm_69_while_placeholder*sequential_23/lstm_69/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_23/lstm_69/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_23/lstm_69/while/add_1AddV2Dsequential_23_lstm_69_while_sequential_23_lstm_69_while_loop_counter,sequential_23/lstm_69/while/add_1/y:output:0*
T0*
_output_shapes
: ?
$sequential_23/lstm_69/while/IdentityIdentity%sequential_23/lstm_69/while/add_1:z:0!^sequential_23/lstm_69/while/NoOp*
T0*
_output_shapes
: ?
&sequential_23/lstm_69/while/Identity_1IdentityJsequential_23_lstm_69_while_sequential_23_lstm_69_while_maximum_iterations!^sequential_23/lstm_69/while/NoOp*
T0*
_output_shapes
: ?
&sequential_23/lstm_69/while/Identity_2Identity#sequential_23/lstm_69/while/add:z:0!^sequential_23/lstm_69/while/NoOp*
T0*
_output_shapes
: ?
&sequential_23/lstm_69/while/Identity_3IdentityPsequential_23/lstm_69/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_23/lstm_69/while/NoOp*
T0*
_output_shapes
: ?
&sequential_23/lstm_69/while/Identity_4Identity1sequential_23/lstm_69/while/lstm_cell_6/mul_2:z:0!^sequential_23/lstm_69/while/NoOp*
T0*'
_output_shapes
:?????????d?
&sequential_23/lstm_69/while/Identity_5Identity1sequential_23/lstm_69/while/lstm_cell_6/add_1:z:0!^sequential_23/lstm_69/while/NoOp*
T0*'
_output_shapes
:?????????d?
 sequential_23/lstm_69/while/NoOpNoOp?^sequential_23/lstm_69/while/lstm_cell_6/BiasAdd/ReadVariableOp>^sequential_23/lstm_69/while/lstm_cell_6/MatMul/ReadVariableOp@^sequential_23/lstm_69/while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_23_lstm_69_while_identity-sequential_23/lstm_69/while/Identity:output:0"Y
&sequential_23_lstm_69_while_identity_1/sequential_23/lstm_69/while/Identity_1:output:0"Y
&sequential_23_lstm_69_while_identity_2/sequential_23/lstm_69/while/Identity_2:output:0"Y
&sequential_23_lstm_69_while_identity_3/sequential_23/lstm_69/while/Identity_3:output:0"Y
&sequential_23_lstm_69_while_identity_4/sequential_23/lstm_69/while/Identity_4:output:0"Y
&sequential_23_lstm_69_while_identity_5/sequential_23/lstm_69/while/Identity_5:output:0"?
Gsequential_23_lstm_69_while_lstm_cell_6_biasadd_readvariableop_resourceIsequential_23_lstm_69_while_lstm_cell_6_biasadd_readvariableop_resource_0"?
Hsequential_23_lstm_69_while_lstm_cell_6_matmul_1_readvariableop_resourceJsequential_23_lstm_69_while_lstm_cell_6_matmul_1_readvariableop_resource_0"?
Fsequential_23_lstm_69_while_lstm_cell_6_matmul_readvariableop_resourceHsequential_23_lstm_69_while_lstm_cell_6_matmul_readvariableop_resource_0"?
Asequential_23_lstm_69_while_sequential_23_lstm_69_strided_slice_1Csequential_23_lstm_69_while_sequential_23_lstm_69_strided_slice_1_0"?
}sequential_23_lstm_69_while_tensorarrayv2read_tensorlistgetitem_sequential_23_lstm_69_tensorarrayunstack_tensorlistfromtensorsequential_23_lstm_69_while_tensorarrayv2read_tensorlistgetitem_sequential_23_lstm_69_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
>sequential_23/lstm_69/while/lstm_cell_6/BiasAdd/ReadVariableOp>sequential_23/lstm_69/while/lstm_cell_6/BiasAdd/ReadVariableOp2~
=sequential_23/lstm_69/while/lstm_cell_6/MatMul/ReadVariableOp=sequential_23/lstm_69/while/lstm_cell_6/MatMul/ReadVariableOp2?
?sequential_23/lstm_69/while/lstm_cell_6/MatMul_1/ReadVariableOp?sequential_23/lstm_69/while/lstm_cell_6/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
?
H__inference_sequential_23_layer_call_and_return_conditional_losses_49978
lstm_69_input 
lstm_69_49951:	? 
lstm_69_49953:	d?
lstm_69_49955:	? 
lstm_70_49958:	d? 
lstm_70_49960:	2?
lstm_70_49962:	?
lstm_71_49965:2(
lstm_71_49967:
(
lstm_71_49969:( 
dense_23_49972:

dense_23_49974:
identity?? dense_23/StatefulPartitionedCall?lstm_69/StatefulPartitionedCall?lstm_70/StatefulPartitionedCall?lstm_71/StatefulPartitionedCall?
lstm_69/StatefulPartitionedCallStatefulPartitionedCalllstm_69_inputlstm_69_49951lstm_69_49953lstm_69_49955*
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
GPU 2J 8? *K
fFRD
B__inference_lstm_69_layer_call_and_return_conditional_losses_49798?
lstm_70/StatefulPartitionedCallStatefulPartitionedCall(lstm_69/StatefulPartitionedCall:output:0lstm_70_49958lstm_70_49960lstm_70_49962*
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
GPU 2J 8? *K
fFRD
B__inference_lstm_70_layer_call_and_return_conditional_losses_49633?
lstm_71/StatefulPartitionedCallStatefulPartitionedCall(lstm_70/StatefulPartitionedCall:output:0lstm_71_49965lstm_71_49967lstm_71_49969*
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
GPU 2J 8? *K
fFRD
B__inference_lstm_71_layer_call_and_return_conditional_losses_49468?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall(lstm_71/StatefulPartitionedCall:output:0dense_23_49972dense_23_49974*
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
GPU 2J 8? *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_49270x
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_23/StatefulPartitionedCall ^lstm_69/StatefulPartitionedCall ^lstm_70/StatefulPartitionedCall ^lstm_71/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2B
lstm_69/StatefulPartitionedCalllstm_69/StatefulPartitionedCall2B
lstm_70/StatefulPartitionedCalllstm_70/StatefulPartitionedCall2B
lstm_71/StatefulPartitionedCalllstm_71/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_69_input
?
?
+__inference_lstm_cell_8_layer_call_fn_53018

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
GPU 2J 8? *O
fJRH
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_48666o
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
?J
?
B__inference_lstm_71_layer_call_and_return_conditional_losses_52340
inputs_0<
*lstm_cell_8_matmul_readvariableop_resource:2(>
,lstm_cell_8_matmul_1_readvariableop_resource:
(9
+lstm_cell_8_biasadd_readvariableop_resource:(
identity??"lstm_cell_8/BiasAdd/ReadVariableOp?!lstm_cell_8/MatMul/ReadVariableOp?#lstm_cell_8/MatMul_1/ReadVariableOp?while=
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
!lstm_cell_8/MatMul/ReadVariableOpReadVariableOp*lstm_cell_8_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_8/MatMulMatMulstrided_slice_2:output:0)lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
#lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_8/MatMul_1MatMulzeros:output:0+lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_8/addAddV2lstm_cell_8/MatMul:product:0lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
"lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_8/BiasAddBiasAddlstm_cell_8/add:z:0*lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(]
lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_8/splitSplit$lstm_cell_8/split/split_dim:output:0lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitl
lstm_cell_8/SigmoidSigmoidlstm_cell_8/split:output:0*
T0*'
_output_shapes
:?????????
n
lstm_cell_8/Sigmoid_1Sigmoidlstm_cell_8/split:output:1*
T0*'
_output_shapes
:?????????
u
lstm_cell_8/mulMullstm_cell_8/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
f
lstm_cell_8/ReluRelulstm_cell_8/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_8/mul_1Mullstm_cell_8/Sigmoid:y:0lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:?????????
x
lstm_cell_8/add_1AddV2lstm_cell_8/mul:z:0lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:?????????
n
lstm_cell_8/Sigmoid_2Sigmoidlstm_cell_8/split:output:3*
T0*'
_output_shapes
:?????????
c
lstm_cell_8/Relu_1Relulstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_8/mul_2Mullstm_cell_8/Sigmoid_2:y:0 lstm_cell_8/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_8_matmul_readvariableop_resource,lstm_cell_8_matmul_1_readvariableop_resource+lstm_cell_8_biasadd_readvariableop_resource*
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
bodyR
while_body_52256*
condR
while_cond_52255*K
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
NoOpNoOp#^lstm_cell_8/BiasAdd/ReadVariableOp"^lstm_cell_8/MatMul/ReadVariableOp$^lstm_cell_8/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2H
"lstm_cell_8/BiasAdd/ReadVariableOp"lstm_cell_8/BiasAdd/ReadVariableOp2F
!lstm_cell_8/MatMul/ReadVariableOp!lstm_cell_8/MatMul/ReadVariableOp2J
#lstm_cell_8/MatMul_1/ReadVariableOp#lstm_cell_8/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
H__inference_sequential_23_layer_call_and_return_conditional_losses_49277

inputs 
lstm_69_48953:	? 
lstm_69_48955:	d?
lstm_69_48957:	? 
lstm_70_49103:	d? 
lstm_70_49105:	2?
lstm_70_49107:	?
lstm_71_49253:2(
lstm_71_49255:
(
lstm_71_49257:( 
dense_23_49271:

dense_23_49273:
identity?? dense_23/StatefulPartitionedCall?lstm_69/StatefulPartitionedCall?lstm_70/StatefulPartitionedCall?lstm_71/StatefulPartitionedCall?
lstm_69/StatefulPartitionedCallStatefulPartitionedCallinputslstm_69_48953lstm_69_48955lstm_69_48957*
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
GPU 2J 8? *K
fFRD
B__inference_lstm_69_layer_call_and_return_conditional_losses_48952?
lstm_70/StatefulPartitionedCallStatefulPartitionedCall(lstm_69/StatefulPartitionedCall:output:0lstm_70_49103lstm_70_49105lstm_70_49107*
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
GPU 2J 8? *K
fFRD
B__inference_lstm_70_layer_call_and_return_conditional_losses_49102?
lstm_71/StatefulPartitionedCallStatefulPartitionedCall(lstm_70/StatefulPartitionedCall:output:0lstm_71_49253lstm_71_49255lstm_71_49257*
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
GPU 2J 8? *K
fFRD
B__inference_lstm_71_layer_call_and_return_conditional_losses_49252?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall(lstm_71/StatefulPartitionedCall:output:0dense_23_49271dense_23_49273*
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
GPU 2J 8? *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_49270x
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_23/StatefulPartitionedCall ^lstm_69/StatefulPartitionedCall ^lstm_70/StatefulPartitionedCall ^lstm_71/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2B
lstm_69/StatefulPartitionedCalllstm_69/StatefulPartitionedCall2B
lstm_70/StatefulPartitionedCalllstm_70/StatefulPartitionedCall2B
lstm_71/StatefulPartitionedCalllstm_71/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?7
?
while_body_51024
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_6_matmul_readvariableop_resource_0:	?G
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:	d?B
3while_lstm_cell_6_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_6_matmul_readvariableop_resource:	?E
2while_lstm_cell_6_matmul_1_readvariableop_resource:	d?@
1while_lstm_cell_6_biasadd_readvariableop_resource:	???(while/lstm_cell_6/BiasAdd/ReadVariableOp?'while/lstm_cell_6/MatMul/ReadVariableOp?)while/lstm_cell_6/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitx
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????dz
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dr
while/lstm_cell_6/ReluRelu while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????dz
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????do
while/lstm_cell_6/Relu_1Reluwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0&while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dx
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
-__inference_sequential_23_layer_call_fn_50040

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
GPU 2J 8? *Q
fLRJ
H__inference_sequential_23_layer_call_and_return_conditional_losses_49277o
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
?	
?
C__inference_dense_23_layer_call_and_return_conditional_losses_49270

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
?7
?
B__inference_lstm_69_layer_call_and_return_conditional_losses_48094

inputs$
lstm_cell_6_48012:	?$
lstm_cell_6_48014:	d? 
lstm_cell_6_48016:	?
identity??#lstm_cell_6/StatefulPartitionedCall?while;
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
#lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_6_48012lstm_cell_6_48014lstm_cell_6_48016*
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
GPU 2J 8? *O
fJRH
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_47966n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_6_48012lstm_cell_6_48014lstm_cell_6_48016*
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
bodyR
while_body_48025*
condR
while_cond_48024*K
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
 :??????????????????dt
NoOpNoOp$^lstm_cell_6/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_6/StatefulPartitionedCall#lstm_cell_6/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_51309
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_51309___redundant_placeholder03
/while_while_cond_51309___redundant_placeholder13
/while_while_cond_51309___redundant_placeholder23
/while_while_cond_51309___redundant_placeholder3
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
'__inference_lstm_70_layer_call_fn_51581

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
GPU 2J 8? *K
fFRD
B__inference_lstm_70_layer_call_and_return_conditional_losses_49633s
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
?7
?
while_body_51453
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_6_matmul_readvariableop_resource_0:	?G
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:	d?B
3while_lstm_cell_6_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_6_matmul_readvariableop_resource:	?E
2while_lstm_cell_6_matmul_1_readvariableop_resource:	d?@
1while_lstm_cell_6_biasadd_readvariableop_resource:	???(while/lstm_cell_6/BiasAdd/ReadVariableOp?'while/lstm_cell_6/MatMul/ReadVariableOp?)while/lstm_cell_6/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitx
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????dz
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dr
while/lstm_cell_6/ReluRelu while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????dz
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????do
while/lstm_cell_6/Relu_1Reluwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0&while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dx
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_52984

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
?7
?
B__inference_lstm_70_layer_call_and_return_conditional_losses_48444

inputs$
lstm_cell_7_48362:	d?$
lstm_cell_7_48364:	2? 
lstm_cell_7_48366:	?
identity??#lstm_cell_7/StatefulPartitionedCall?while;
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
#lstm_cell_7/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_7_48362lstm_cell_7_48364lstm_cell_7_48366*
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
GPU 2J 8? *O
fJRH
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_48316n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_7_48362lstm_cell_7_48364lstm_cell_7_48366*
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
bodyR
while_body_48375*
condR
while_cond_48374*K
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
 :??????????????????2t
NoOpNoOp$^lstm_cell_7/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2J
#lstm_cell_7/StatefulPartitionedCall#lstm_cell_7/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?7
?
while_body_49168
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_8_matmul_readvariableop_resource_0:2(F
4while_lstm_cell_8_matmul_1_readvariableop_resource_0:
(A
3while_lstm_cell_8_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_8_matmul_readvariableop_resource:2(D
2while_lstm_cell_8_matmul_1_readvariableop_resource:
(?
1while_lstm_cell_8_biasadd_readvariableop_resource:(??(while/lstm_cell_8/BiasAdd/ReadVariableOp?'while/lstm_cell_8/MatMul/ReadVariableOp?)while/lstm_cell_8/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
'while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_8/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_8/addAddV2"while/lstm_cell_8/MatMul:product:0$while/lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
(while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_8/BiasAddBiasAddwhile/lstm_cell_8/add:z:00while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(c
!while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_8/splitSplit*while/lstm_cell_8/split/split_dim:output:0"while/lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitx
while/lstm_cell_8/SigmoidSigmoid while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:?????????
z
while/lstm_cell_8/Sigmoid_1Sigmoid while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_8/mulMulwhile/lstm_cell_8/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
r
while/lstm_cell_8/ReluRelu while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_8/mul_1Mulwhile/lstm_cell_8/Sigmoid:y:0$while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_8/add_1AddV2while/lstm_cell_8/mul:z:0while/lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:?????????
z
while/lstm_cell_8/Sigmoid_2Sigmoid while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:?????????
o
while/lstm_cell_8/Relu_1Reluwhile/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_8/mul_2Mulwhile/lstm_cell_8/Sigmoid_2:y:0&while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_8/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_8/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
x
while/Identity_5Identitywhile/lstm_cell_8/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp)^while/lstm_cell_8/BiasAdd/ReadVariableOp(^while/lstm_cell_8/MatMul/ReadVariableOp*^while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_8_biasadd_readvariableop_resource3while_lstm_cell_8_biasadd_readvariableop_resource_0"j
2while_lstm_cell_8_matmul_1_readvariableop_resource4while_lstm_cell_8_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_8_matmul_readvariableop_resource2while_lstm_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2T
(while/lstm_cell_8/BiasAdd/ReadVariableOp(while/lstm_cell_8/BiasAdd/ReadVariableOp2R
'while/lstm_cell_8/MatMul/ReadVariableOp'while/lstm_cell_8/MatMul/ReadVariableOp2V
)while/lstm_cell_8/MatMul_1/ReadVariableOp)while/lstm_cell_8/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_48533
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_48533___redundant_placeholder03
/while_while_cond_48533___redundant_placeholder13
/while_while_cond_48533___redundant_placeholder23
/while_while_cond_48533___redundant_placeholder3
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
-__inference_sequential_23_layer_call_fn_49302
lstm_69_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_69_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8? *Q
fLRJ
H__inference_sequential_23_layer_call_and_return_conditional_losses_49277o
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
_user_specified_namelstm_69_input
?@
?

lstm_70_while_body_50692,
(lstm_70_while_lstm_70_while_loop_counter2
.lstm_70_while_lstm_70_while_maximum_iterations
lstm_70_while_placeholder
lstm_70_while_placeholder_1
lstm_70_while_placeholder_2
lstm_70_while_placeholder_3+
'lstm_70_while_lstm_70_strided_slice_1_0g
clstm_70_while_tensorarrayv2read_tensorlistgetitem_lstm_70_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_70_while_lstm_cell_7_matmul_readvariableop_resource_0:	d?O
<lstm_70_while_lstm_cell_7_matmul_1_readvariableop_resource_0:	2?J
;lstm_70_while_lstm_cell_7_biasadd_readvariableop_resource_0:	?
lstm_70_while_identity
lstm_70_while_identity_1
lstm_70_while_identity_2
lstm_70_while_identity_3
lstm_70_while_identity_4
lstm_70_while_identity_5)
%lstm_70_while_lstm_70_strided_slice_1e
alstm_70_while_tensorarrayv2read_tensorlistgetitem_lstm_70_tensorarrayunstack_tensorlistfromtensorK
8lstm_70_while_lstm_cell_7_matmul_readvariableop_resource:	d?M
:lstm_70_while_lstm_cell_7_matmul_1_readvariableop_resource:	2?H
9lstm_70_while_lstm_cell_7_biasadd_readvariableop_resource:	???0lstm_70/while/lstm_cell_7/BiasAdd/ReadVariableOp?/lstm_70/while/lstm_cell_7/MatMul/ReadVariableOp?1lstm_70/while/lstm_cell_7/MatMul_1/ReadVariableOp?
?lstm_70/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
1lstm_70/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_70_while_tensorarrayv2read_tensorlistgetitem_lstm_70_tensorarrayunstack_tensorlistfromtensor_0lstm_70_while_placeholderHlstm_70/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
/lstm_70/while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp:lstm_70_while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
 lstm_70/while/lstm_cell_7/MatMulMatMul8lstm_70/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_70/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
1lstm_70/while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp<lstm_70_while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
"lstm_70/while/lstm_cell_7/MatMul_1MatMullstm_70_while_placeholder_29lstm_70/while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_70/while/lstm_cell_7/addAddV2*lstm_70/while/lstm_cell_7/MatMul:product:0,lstm_70/while/lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
0lstm_70/while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp;lstm_70_while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
!lstm_70/while/lstm_cell_7/BiasAddBiasAdd!lstm_70/while/lstm_cell_7/add:z:08lstm_70/while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????k
)lstm_70/while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_70/while/lstm_cell_7/splitSplit2lstm_70/while/lstm_cell_7/split/split_dim:output:0*lstm_70/while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
!lstm_70/while/lstm_cell_7/SigmoidSigmoid(lstm_70/while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????2?
#lstm_70/while/lstm_cell_7/Sigmoid_1Sigmoid(lstm_70/while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_70/while/lstm_cell_7/mulMul'lstm_70/while/lstm_cell_7/Sigmoid_1:y:0lstm_70_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
lstm_70/while/lstm_cell_7/ReluRelu(lstm_70/while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_70/while/lstm_cell_7/mul_1Mul%lstm_70/while/lstm_cell_7/Sigmoid:y:0,lstm_70/while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_70/while/lstm_cell_7/add_1AddV2!lstm_70/while/lstm_cell_7/mul:z:0#lstm_70/while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
#lstm_70/while/lstm_cell_7/Sigmoid_2Sigmoid(lstm_70/while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????2
 lstm_70/while/lstm_cell_7/Relu_1Relu#lstm_70/while/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_70/while/lstm_cell_7/mul_2Mul'lstm_70/while/lstm_cell_7/Sigmoid_2:y:0.lstm_70/while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
2lstm_70/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_70_while_placeholder_1lstm_70_while_placeholder#lstm_70/while/lstm_cell_7/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_70/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_70/while/addAddV2lstm_70_while_placeholderlstm_70/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_70/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_70/while/add_1AddV2(lstm_70_while_lstm_70_while_loop_counterlstm_70/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_70/while/IdentityIdentitylstm_70/while/add_1:z:0^lstm_70/while/NoOp*
T0*
_output_shapes
: ?
lstm_70/while/Identity_1Identity.lstm_70_while_lstm_70_while_maximum_iterations^lstm_70/while/NoOp*
T0*
_output_shapes
: q
lstm_70/while/Identity_2Identitylstm_70/while/add:z:0^lstm_70/while/NoOp*
T0*
_output_shapes
: ?
lstm_70/while/Identity_3IdentityBlstm_70/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_70/while/NoOp*
T0*
_output_shapes
: ?
lstm_70/while/Identity_4Identity#lstm_70/while/lstm_cell_7/mul_2:z:0^lstm_70/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_70/while/Identity_5Identity#lstm_70/while/lstm_cell_7/add_1:z:0^lstm_70/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_70/while/NoOpNoOp1^lstm_70/while/lstm_cell_7/BiasAdd/ReadVariableOp0^lstm_70/while/lstm_cell_7/MatMul/ReadVariableOp2^lstm_70/while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_70_while_identitylstm_70/while/Identity:output:0"=
lstm_70_while_identity_1!lstm_70/while/Identity_1:output:0"=
lstm_70_while_identity_2!lstm_70/while/Identity_2:output:0"=
lstm_70_while_identity_3!lstm_70/while/Identity_3:output:0"=
lstm_70_while_identity_4!lstm_70/while/Identity_4:output:0"=
lstm_70_while_identity_5!lstm_70/while/Identity_5:output:0"P
%lstm_70_while_lstm_70_strided_slice_1'lstm_70_while_lstm_70_strided_slice_1_0"x
9lstm_70_while_lstm_cell_7_biasadd_readvariableop_resource;lstm_70_while_lstm_cell_7_biasadd_readvariableop_resource_0"z
:lstm_70_while_lstm_cell_7_matmul_1_readvariableop_resource<lstm_70_while_lstm_cell_7_matmul_1_readvariableop_resource_0"v
8lstm_70_while_lstm_cell_7_matmul_readvariableop_resource:lstm_70_while_lstm_cell_7_matmul_readvariableop_resource_0"?
alstm_70_while_tensorarrayv2read_tensorlistgetitem_lstm_70_tensorarrayunstack_tensorlistfromtensorclstm_70_while_tensorarrayv2read_tensorlistgetitem_lstm_70_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2d
0lstm_70/while/lstm_cell_7/BiasAdd/ReadVariableOp0lstm_70/while/lstm_cell_7/BiasAdd/ReadVariableOp2b
/lstm_70/while/lstm_cell_7/MatMul/ReadVariableOp/lstm_70/while/lstm_cell_7/MatMul/ReadVariableOp2f
1lstm_70/while/lstm_cell_7/MatMul_1/ReadVariableOp1lstm_70/while/lstm_cell_7/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_52068
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_52068___redundant_placeholder03
/while_while_cond_52068___redundant_placeholder13
/while_while_cond_52068___redundant_placeholder23
/while_while_cond_52068___redundant_placeholder3
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
while_body_48534
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_8_48558_0:2(+
while_lstm_cell_8_48560_0:
('
while_lstm_cell_8_48562_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_8_48558:2()
while_lstm_cell_8_48560:
(%
while_lstm_cell_8_48562:(??)while/lstm_cell_8/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_8/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_8_48558_0while_lstm_cell_8_48560_0while_lstm_cell_8_48562_0*
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
GPU 2J 8? *O
fJRH
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_48520?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_8/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity2while/lstm_cell_8/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity2while/lstm_cell_8/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
x

while/NoOpNoOp*^while/lstm_cell_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_8_48558while_lstm_cell_8_48558_0"4
while_lstm_cell_8_48560while_lstm_cell_8_48560_0"4
while_lstm_cell_8_48562while_lstm_cell_8_48562_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2V
)while/lstm_cell_8/StatefulPartitionedCall)while/lstm_cell_8/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
'__inference_lstm_70_layer_call_fn_51559
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
GPU 2J 8? *K
fFRD
B__inference_lstm_70_layer_call_and_return_conditional_losses_48444|
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
?7
?
while_body_49714
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_6_matmul_readvariableop_resource_0:	?G
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:	d?B
3while_lstm_cell_6_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_6_matmul_readvariableop_resource:	?E
2while_lstm_cell_6_matmul_1_readvariableop_resource:	d?@
1while_lstm_cell_6_biasadd_readvariableop_resource:	???(while/lstm_cell_6/BiasAdd/ReadVariableOp?'while/lstm_cell_6/MatMul/ReadVariableOp?)while/lstm_cell_6/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitx
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????dz
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dr
while/lstm_cell_6/ReluRelu while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????dz
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????do
while/lstm_cell_6/Relu_1Reluwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0&while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dx
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_48170

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
?
?
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_47820

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
?I
?
B__inference_lstm_70_layer_call_and_return_conditional_losses_49633

inputs=
*lstm_cell_7_matmul_readvariableop_resource:	d??
,lstm_cell_7_matmul_1_readvariableop_resource:	2?:
+lstm_cell_7_biasadd_readvariableop_resource:	?
identity??"lstm_cell_7/BiasAdd/ReadVariableOp?!lstm_cell_7/MatMul/ReadVariableOp?#lstm_cell_7/MatMul_1/ReadVariableOp?while;
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
!lstm_cell_7/MatMul/ReadVariableOpReadVariableOp*lstm_cell_7_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_7/MatMulMatMulstrided_slice_2:output:0)lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_7/MatMul_1MatMulzeros:output:0+lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_7/addAddV2lstm_cell_7/MatMul:product:0lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_7/BiasAddBiasAddlstm_cell_7/add:z:0*lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitl
lstm_cell_7/SigmoidSigmoidlstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????2n
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????2u
lstm_cell_7/mulMullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2f
lstm_cell_7/ReluRelulstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_7/mul_1Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????2x
lstm_cell_7/add_1AddV2lstm_cell_7/mul:z:0lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????2n
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????2c
lstm_cell_7/Relu_1Relulstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_7/mul_2Mullstm_cell_7/Sigmoid_2:y:0 lstm_cell_7/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_7_matmul_readvariableop_resource,lstm_cell_7_matmul_1_readvariableop_resource+lstm_cell_7_biasadd_readvariableop_resource*
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
bodyR
while_body_49549*
condR
while_cond_49548*K
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
NoOpNoOp#^lstm_cell_7/BiasAdd/ReadVariableOp"^lstm_cell_7/MatMul/ReadVariableOp$^lstm_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2H
"lstm_cell_7/BiasAdd/ReadVariableOp"lstm_cell_7/BiasAdd/ReadVariableOp2F
!lstm_cell_7/MatMul/ReadVariableOp!lstm_cell_7/MatMul/ReadVariableOp2J
#lstm_cell_7/MatMul_1/ReadVariableOp#lstm_cell_7/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
'__inference_lstm_71_layer_call_fn_52164
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
GPU 2J 8? *K
fFRD
B__inference_lstm_71_layer_call_and_return_conditional_losses_48603o
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
'__inference_lstm_70_layer_call_fn_51548
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
GPU 2J 8? *K
fFRD
B__inference_lstm_70_layer_call_and_return_conditional_losses_48253|
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
?
?
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_53050

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
?
while_cond_49713
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_49713___redundant_placeholder03
/while_while_cond_49713___redundant_placeholder13
/while_while_cond_49713___redundant_placeholder23
/while_while_cond_49713___redundant_placeholder3
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
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_52952

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
?
&sequential_23_lstm_70_while_cond_47523H
Dsequential_23_lstm_70_while_sequential_23_lstm_70_while_loop_counterN
Jsequential_23_lstm_70_while_sequential_23_lstm_70_while_maximum_iterations+
'sequential_23_lstm_70_while_placeholder-
)sequential_23_lstm_70_while_placeholder_1-
)sequential_23_lstm_70_while_placeholder_2-
)sequential_23_lstm_70_while_placeholder_3J
Fsequential_23_lstm_70_while_less_sequential_23_lstm_70_strided_slice_1_
[sequential_23_lstm_70_while_sequential_23_lstm_70_while_cond_47523___redundant_placeholder0_
[sequential_23_lstm_70_while_sequential_23_lstm_70_while_cond_47523___redundant_placeholder1_
[sequential_23_lstm_70_while_sequential_23_lstm_70_while_cond_47523___redundant_placeholder2_
[sequential_23_lstm_70_while_sequential_23_lstm_70_while_cond_47523___redundant_placeholder3(
$sequential_23_lstm_70_while_identity
?
 sequential_23/lstm_70/while/LessLess'sequential_23_lstm_70_while_placeholderFsequential_23_lstm_70_while_less_sequential_23_lstm_70_strided_slice_1*
T0*
_output_shapes
: w
$sequential_23/lstm_70/while/IdentityIdentity$sequential_23/lstm_70/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_23_lstm_70_while_identity-sequential_23/lstm_70/while/Identity:output:0*(
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
B__inference_lstm_70_layer_call_and_return_conditional_losses_51867
inputs_0=
*lstm_cell_7_matmul_readvariableop_resource:	d??
,lstm_cell_7_matmul_1_readvariableop_resource:	2?:
+lstm_cell_7_biasadd_readvariableop_resource:	?
identity??"lstm_cell_7/BiasAdd/ReadVariableOp?!lstm_cell_7/MatMul/ReadVariableOp?#lstm_cell_7/MatMul_1/ReadVariableOp?while=
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
!lstm_cell_7/MatMul/ReadVariableOpReadVariableOp*lstm_cell_7_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_7/MatMulMatMulstrided_slice_2:output:0)lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_7/MatMul_1MatMulzeros:output:0+lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_7/addAddV2lstm_cell_7/MatMul:product:0lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_7/BiasAddBiasAddlstm_cell_7/add:z:0*lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitl
lstm_cell_7/SigmoidSigmoidlstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????2n
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????2u
lstm_cell_7/mulMullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2f
lstm_cell_7/ReluRelulstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_7/mul_1Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????2x
lstm_cell_7/add_1AddV2lstm_cell_7/mul:z:0lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????2n
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????2c
lstm_cell_7/Relu_1Relulstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_7/mul_2Mullstm_cell_7/Sigmoid_2:y:0 lstm_cell_7/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_7_matmul_readvariableop_resource,lstm_cell_7_matmul_1_readvariableop_resource+lstm_cell_7_biasadd_readvariableop_resource*
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
bodyR
while_body_51783*
condR
while_cond_51782*K
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
NoOpNoOp#^lstm_cell_7/BiasAdd/ReadVariableOp"^lstm_cell_7/MatMul/ReadVariableOp$^lstm_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2H
"lstm_cell_7/BiasAdd/ReadVariableOp"lstm_cell_7/BiasAdd/ReadVariableOp2F
!lstm_cell_7/MatMul/ReadVariableOp!lstm_cell_7/MatMul/ReadVariableOp2J
#lstm_cell_7/MatMul_1/ReadVariableOp#lstm_cell_7/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?7
?
while_body_49384
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_8_matmul_readvariableop_resource_0:2(F
4while_lstm_cell_8_matmul_1_readvariableop_resource_0:
(A
3while_lstm_cell_8_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_8_matmul_readvariableop_resource:2(D
2while_lstm_cell_8_matmul_1_readvariableop_resource:
(?
1while_lstm_cell_8_biasadd_readvariableop_resource:(??(while/lstm_cell_8/BiasAdd/ReadVariableOp?'while/lstm_cell_8/MatMul/ReadVariableOp?)while/lstm_cell_8/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
'while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_8/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_8/addAddV2"while/lstm_cell_8/MatMul:product:0$while/lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
(while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_8/BiasAddBiasAddwhile/lstm_cell_8/add:z:00while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(c
!while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_8/splitSplit*while/lstm_cell_8/split/split_dim:output:0"while/lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitx
while/lstm_cell_8/SigmoidSigmoid while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:?????????
z
while/lstm_cell_8/Sigmoid_1Sigmoid while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_8/mulMulwhile/lstm_cell_8/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
r
while/lstm_cell_8/ReluRelu while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_8/mul_1Mulwhile/lstm_cell_8/Sigmoid:y:0$while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_8/add_1AddV2while/lstm_cell_8/mul:z:0while/lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:?????????
z
while/lstm_cell_8/Sigmoid_2Sigmoid while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:?????????
o
while/lstm_cell_8/Relu_1Reluwhile/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_8/mul_2Mulwhile/lstm_cell_8/Sigmoid_2:y:0&while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_8/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_8/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
x
while/Identity_5Identitywhile/lstm_cell_8/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp)^while/lstm_cell_8/BiasAdd/ReadVariableOp(^while/lstm_cell_8/MatMul/ReadVariableOp*^while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_8_biasadd_readvariableop_resource3while_lstm_cell_8_biasadd_readvariableop_resource_0"j
2while_lstm_cell_8_matmul_1_readvariableop_resource4while_lstm_cell_8_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_8_matmul_readvariableop_resource2while_lstm_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2T
(while/lstm_cell_8/BiasAdd/ReadVariableOp(while/lstm_cell_8/BiasAdd/ReadVariableOp2R
'while/lstm_cell_8/MatMul/ReadVariableOp'while/lstm_cell_8/MatMul/ReadVariableOp2V
)while/lstm_cell_8/MatMul_1/ReadVariableOp)while/lstm_cell_8/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
?
'__inference_lstm_69_layer_call_fn_50954

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
GPU 2J 8? *K
fFRD
B__inference_lstm_69_layer_call_and_return_conditional_losses_48952s
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
?7
?
while_body_51926
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_7_matmul_readvariableop_resource_0:	d?G
4while_lstm_cell_7_matmul_1_readvariableop_resource_0:	2?B
3while_lstm_cell_7_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_7_matmul_readvariableop_resource:	d?E
2while_lstm_cell_7_matmul_1_readvariableop_resource:	2?@
1while_lstm_cell_7_biasadd_readvariableop_resource:	???(while/lstm_cell_7/BiasAdd/ReadVariableOp?'while/lstm_cell_7/MatMul/ReadVariableOp?)while/lstm_cell_7/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
'while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_7/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_7/addAddV2"while/lstm_cell_7/MatMul:product:0$while/lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
(while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_7/BiasAddBiasAddwhile/lstm_cell_7/add:z:00while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0"while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitx
while/lstm_cell_7/SigmoidSigmoid while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????2z
while/lstm_cell_7/Sigmoid_1Sigmoid while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_7/mulMulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2r
while/lstm_cell_7/ReluRelu while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_7/mul_1Mulwhile/lstm_cell_7/Sigmoid:y:0$while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_7/add_1AddV2while/lstm_cell_7/mul:z:0while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????2z
while/lstm_cell_7/Sigmoid_2Sigmoid while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????2o
while/lstm_cell_7/Relu_1Reluwhile/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_7/mul_2Mulwhile/lstm_cell_7/Sigmoid_2:y:0&while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_7/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2x
while/Identity_5Identitywhile/lstm_cell_7/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp)^while/lstm_cell_7/BiasAdd/ReadVariableOp(^while/lstm_cell_7/MatMul/ReadVariableOp*^while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_7_biasadd_readvariableop_resource3while_lstm_cell_7_biasadd_readvariableop_resource_0"j
2while_lstm_cell_7_matmul_1_readvariableop_resource4while_lstm_cell_7_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_7_matmul_readvariableop_resource2while_lstm_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2T
(while/lstm_cell_7/BiasAdd/ReadVariableOp(while/lstm_cell_7/BiasAdd/ReadVariableOp2R
'while/lstm_cell_7/MatMul/ReadVariableOp'while/lstm_cell_7/MatMul/ReadVariableOp2V
)while/lstm_cell_7/MatMul_1/ReadVariableOp)while/lstm_cell_7/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?7
?
while_body_52542
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_8_matmul_readvariableop_resource_0:2(F
4while_lstm_cell_8_matmul_1_readvariableop_resource_0:
(A
3while_lstm_cell_8_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_8_matmul_readvariableop_resource:2(D
2while_lstm_cell_8_matmul_1_readvariableop_resource:
(?
1while_lstm_cell_8_biasadd_readvariableop_resource:(??(while/lstm_cell_8/BiasAdd/ReadVariableOp?'while/lstm_cell_8/MatMul/ReadVariableOp?)while/lstm_cell_8/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
'while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_8/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_8/addAddV2"while/lstm_cell_8/MatMul:product:0$while/lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
(while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_8/BiasAddBiasAddwhile/lstm_cell_8/add:z:00while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(c
!while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_8/splitSplit*while/lstm_cell_8/split/split_dim:output:0"while/lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitx
while/lstm_cell_8/SigmoidSigmoid while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:?????????
z
while/lstm_cell_8/Sigmoid_1Sigmoid while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_8/mulMulwhile/lstm_cell_8/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
r
while/lstm_cell_8/ReluRelu while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_8/mul_1Mulwhile/lstm_cell_8/Sigmoid:y:0$while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_8/add_1AddV2while/lstm_cell_8/mul:z:0while/lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:?????????
z
while/lstm_cell_8/Sigmoid_2Sigmoid while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:?????????
o
while/lstm_cell_8/Relu_1Reluwhile/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_8/mul_2Mulwhile/lstm_cell_8/Sigmoid_2:y:0&while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_8/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_8/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
x
while/Identity_5Identitywhile/lstm_cell_8/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp)^while/lstm_cell_8/BiasAdd/ReadVariableOp(^while/lstm_cell_8/MatMul/ReadVariableOp*^while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_8_biasadd_readvariableop_resource3while_lstm_cell_8_biasadd_readvariableop_resource_0"j
2while_lstm_cell_8_matmul_1_readvariableop_resource4while_lstm_cell_8_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_8_matmul_readvariableop_resource2while_lstm_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2T
(while/lstm_cell_8/BiasAdd/ReadVariableOp(while/lstm_cell_8/BiasAdd/ReadVariableOp2R
'while/lstm_cell_8/MatMul/ReadVariableOp'while/lstm_cell_8/MatMul/ReadVariableOp2V
)while/lstm_cell_8/MatMul_1/ReadVariableOp)while/lstm_cell_8/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_52255
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_52255___redundant_placeholder03
/while_while_cond_52255___redundant_placeholder13
/while_while_cond_52255___redundant_placeholder23
/while_while_cond_52255___redundant_placeholder3
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
while_cond_49017
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_49017___redundant_placeholder03
/while_while_cond_49017___redundant_placeholder13
/while_while_cond_49017___redundant_placeholder23
/while_while_cond_49017___redundant_placeholder3
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
?
'__inference_lstm_69_layer_call_fn_50943
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
GPU 2J 8? *K
fFRD
B__inference_lstm_69_layer_call_and_return_conditional_losses_48094|
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
?"
?
while_body_48184
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_7_48208_0:	d?,
while_lstm_cell_7_48210_0:	2?(
while_lstm_cell_7_48212_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_7_48208:	d?*
while_lstm_cell_7_48210:	2?&
while_lstm_cell_7_48212:	???)while/lstm_cell_7/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_7/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_7_48208_0while_lstm_cell_7_48210_0while_lstm_cell_7_48212_0*
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
GPU 2J 8? *O
fJRH
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_48170?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_7/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity2while/lstm_cell_7/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity2while/lstm_cell_7/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2x

while/NoOpNoOp*^while/lstm_cell_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_7_48208while_lstm_cell_7_48208_0"4
while_lstm_cell_7_48210while_lstm_cell_7_48210_0"4
while_lstm_cell_7_48212while_lstm_cell_7_48212_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2V
)while/lstm_cell_7/StatefulPartitionedCall)while/lstm_cell_7/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_51452
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_51452___redundant_placeholder03
/while_while_cond_51452___redundant_placeholder13
/while_while_cond_51452___redundant_placeholder23
/while_while_cond_51452___redundant_placeholder3
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
B__inference_lstm_70_layer_call_and_return_conditional_losses_51724
inputs_0=
*lstm_cell_7_matmul_readvariableop_resource:	d??
,lstm_cell_7_matmul_1_readvariableop_resource:	2?:
+lstm_cell_7_biasadd_readvariableop_resource:	?
identity??"lstm_cell_7/BiasAdd/ReadVariableOp?!lstm_cell_7/MatMul/ReadVariableOp?#lstm_cell_7/MatMul_1/ReadVariableOp?while=
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
!lstm_cell_7/MatMul/ReadVariableOpReadVariableOp*lstm_cell_7_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_7/MatMulMatMulstrided_slice_2:output:0)lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_7/MatMul_1MatMulzeros:output:0+lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_7/addAddV2lstm_cell_7/MatMul:product:0lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_7/BiasAddBiasAddlstm_cell_7/add:z:0*lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitl
lstm_cell_7/SigmoidSigmoidlstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????2n
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????2u
lstm_cell_7/mulMullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2f
lstm_cell_7/ReluRelulstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_7/mul_1Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????2x
lstm_cell_7/add_1AddV2lstm_cell_7/mul:z:0lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????2n
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????2c
lstm_cell_7/Relu_1Relulstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_7/mul_2Mullstm_cell_7/Sigmoid_2:y:0 lstm_cell_7/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_7_matmul_readvariableop_resource,lstm_cell_7_matmul_1_readvariableop_resource+lstm_cell_7_biasadd_readvariableop_resource*
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
bodyR
while_body_51640*
condR
while_cond_51639*K
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
NoOpNoOp#^lstm_cell_7/BiasAdd/ReadVariableOp"^lstm_cell_7/MatMul/ReadVariableOp$^lstm_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2H
"lstm_cell_7/BiasAdd/ReadVariableOp"lstm_cell_7/BiasAdd/ReadVariableOp2F
!lstm_cell_7/MatMul/ReadVariableOp!lstm_cell_7/MatMul/ReadVariableOp2J
#lstm_cell_7/MatMul_1/ReadVariableOp#lstm_cell_7/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_52541
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_52541___redundant_placeholder03
/while_while_cond_52541___redundant_placeholder13
/while_while_cond_52541___redundant_placeholder23
/while_while_cond_52541___redundant_placeholder3
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
?7
?
while_body_49549
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_7_matmul_readvariableop_resource_0:	d?G
4while_lstm_cell_7_matmul_1_readvariableop_resource_0:	2?B
3while_lstm_cell_7_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_7_matmul_readvariableop_resource:	d?E
2while_lstm_cell_7_matmul_1_readvariableop_resource:	2?@
1while_lstm_cell_7_biasadd_readvariableop_resource:	???(while/lstm_cell_7/BiasAdd/ReadVariableOp?'while/lstm_cell_7/MatMul/ReadVariableOp?)while/lstm_cell_7/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
'while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_7/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_7/addAddV2"while/lstm_cell_7/MatMul:product:0$while/lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
(while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_7/BiasAddBiasAddwhile/lstm_cell_7/add:z:00while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0"while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitx
while/lstm_cell_7/SigmoidSigmoid while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????2z
while/lstm_cell_7/Sigmoid_1Sigmoid while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_7/mulMulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2r
while/lstm_cell_7/ReluRelu while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_7/mul_1Mulwhile/lstm_cell_7/Sigmoid:y:0$while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_7/add_1AddV2while/lstm_cell_7/mul:z:0while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????2z
while/lstm_cell_7/Sigmoid_2Sigmoid while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????2o
while/lstm_cell_7/Relu_1Reluwhile/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_7/mul_2Mulwhile/lstm_cell_7/Sigmoid_2:y:0&while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_7/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2x
while/Identity_5Identitywhile/lstm_cell_7/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp)^while/lstm_cell_7/BiasAdd/ReadVariableOp(^while/lstm_cell_7/MatMul/ReadVariableOp*^while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_7_biasadd_readvariableop_resource3while_lstm_cell_7_biasadd_readvariableop_resource_0"j
2while_lstm_cell_7_matmul_1_readvariableop_resource4while_lstm_cell_7_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_7_matmul_readvariableop_resource2while_lstm_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2T
(while/lstm_cell_7/BiasAdd/ReadVariableOp(while/lstm_cell_7/BiasAdd/ReadVariableOp2R
'while/lstm_cell_7/MatMul/ReadVariableOp'while/lstm_cell_7/MatMul/ReadVariableOp2V
)while/lstm_cell_7/MatMul_1/ReadVariableOp)while/lstm_cell_7/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?@
?

lstm_69_while_body_50126,
(lstm_69_while_lstm_69_while_loop_counter2
.lstm_69_while_lstm_69_while_maximum_iterations
lstm_69_while_placeholder
lstm_69_while_placeholder_1
lstm_69_while_placeholder_2
lstm_69_while_placeholder_3+
'lstm_69_while_lstm_69_strided_slice_1_0g
clstm_69_while_tensorarrayv2read_tensorlistgetitem_lstm_69_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_69_while_lstm_cell_6_matmul_readvariableop_resource_0:	?O
<lstm_69_while_lstm_cell_6_matmul_1_readvariableop_resource_0:	d?J
;lstm_69_while_lstm_cell_6_biasadd_readvariableop_resource_0:	?
lstm_69_while_identity
lstm_69_while_identity_1
lstm_69_while_identity_2
lstm_69_while_identity_3
lstm_69_while_identity_4
lstm_69_while_identity_5)
%lstm_69_while_lstm_69_strided_slice_1e
alstm_69_while_tensorarrayv2read_tensorlistgetitem_lstm_69_tensorarrayunstack_tensorlistfromtensorK
8lstm_69_while_lstm_cell_6_matmul_readvariableop_resource:	?M
:lstm_69_while_lstm_cell_6_matmul_1_readvariableop_resource:	d?H
9lstm_69_while_lstm_cell_6_biasadd_readvariableop_resource:	???0lstm_69/while/lstm_cell_6/BiasAdd/ReadVariableOp?/lstm_69/while/lstm_cell_6/MatMul/ReadVariableOp?1lstm_69/while/lstm_cell_6/MatMul_1/ReadVariableOp?
?lstm_69/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
1lstm_69/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_69_while_tensorarrayv2read_tensorlistgetitem_lstm_69_tensorarrayunstack_tensorlistfromtensor_0lstm_69_while_placeholderHlstm_69/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
/lstm_69/while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp:lstm_69_while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
 lstm_69/while/lstm_cell_6/MatMulMatMul8lstm_69/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_69/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
1lstm_69/while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp<lstm_69_while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
"lstm_69/while/lstm_cell_6/MatMul_1MatMullstm_69_while_placeholder_29lstm_69/while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_69/while/lstm_cell_6/addAddV2*lstm_69/while/lstm_cell_6/MatMul:product:0,lstm_69/while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
0lstm_69/while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp;lstm_69_while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
!lstm_69/while/lstm_cell_6/BiasAddBiasAdd!lstm_69/while/lstm_cell_6/add:z:08lstm_69/while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????k
)lstm_69/while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_69/while/lstm_cell_6/splitSplit2lstm_69/while/lstm_cell_6/split/split_dim:output:0*lstm_69/while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
!lstm_69/while/lstm_cell_6/SigmoidSigmoid(lstm_69/while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????d?
#lstm_69/while/lstm_cell_6/Sigmoid_1Sigmoid(lstm_69/while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_69/while/lstm_cell_6/mulMul'lstm_69/while/lstm_cell_6/Sigmoid_1:y:0lstm_69_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
lstm_69/while/lstm_cell_6/ReluRelu(lstm_69/while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_69/while/lstm_cell_6/mul_1Mul%lstm_69/while/lstm_cell_6/Sigmoid:y:0,lstm_69/while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_69/while/lstm_cell_6/add_1AddV2!lstm_69/while/lstm_cell_6/mul:z:0#lstm_69/while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
#lstm_69/while/lstm_cell_6/Sigmoid_2Sigmoid(lstm_69/while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????d
 lstm_69/while/lstm_cell_6/Relu_1Relu#lstm_69/while/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_69/while/lstm_cell_6/mul_2Mul'lstm_69/while/lstm_cell_6/Sigmoid_2:y:0.lstm_69/while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
2lstm_69/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_69_while_placeholder_1lstm_69_while_placeholder#lstm_69/while/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_69/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_69/while/addAddV2lstm_69_while_placeholderlstm_69/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_69/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_69/while/add_1AddV2(lstm_69_while_lstm_69_while_loop_counterlstm_69/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_69/while/IdentityIdentitylstm_69/while/add_1:z:0^lstm_69/while/NoOp*
T0*
_output_shapes
: ?
lstm_69/while/Identity_1Identity.lstm_69_while_lstm_69_while_maximum_iterations^lstm_69/while/NoOp*
T0*
_output_shapes
: q
lstm_69/while/Identity_2Identitylstm_69/while/add:z:0^lstm_69/while/NoOp*
T0*
_output_shapes
: ?
lstm_69/while/Identity_3IdentityBlstm_69/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_69/while/NoOp*
T0*
_output_shapes
: ?
lstm_69/while/Identity_4Identity#lstm_69/while/lstm_cell_6/mul_2:z:0^lstm_69/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_69/while/Identity_5Identity#lstm_69/while/lstm_cell_6/add_1:z:0^lstm_69/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_69/while/NoOpNoOp1^lstm_69/while/lstm_cell_6/BiasAdd/ReadVariableOp0^lstm_69/while/lstm_cell_6/MatMul/ReadVariableOp2^lstm_69/while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_69_while_identitylstm_69/while/Identity:output:0"=
lstm_69_while_identity_1!lstm_69/while/Identity_1:output:0"=
lstm_69_while_identity_2!lstm_69/while/Identity_2:output:0"=
lstm_69_while_identity_3!lstm_69/while/Identity_3:output:0"=
lstm_69_while_identity_4!lstm_69/while/Identity_4:output:0"=
lstm_69_while_identity_5!lstm_69/while/Identity_5:output:0"P
%lstm_69_while_lstm_69_strided_slice_1'lstm_69_while_lstm_69_strided_slice_1_0"x
9lstm_69_while_lstm_cell_6_biasadd_readvariableop_resource;lstm_69_while_lstm_cell_6_biasadd_readvariableop_resource_0"z
:lstm_69_while_lstm_cell_6_matmul_1_readvariableop_resource<lstm_69_while_lstm_cell_6_matmul_1_readvariableop_resource_0"v
8lstm_69_while_lstm_cell_6_matmul_readvariableop_resource:lstm_69_while_lstm_cell_6_matmul_readvariableop_resource_0"?
alstm_69_while_tensorarrayv2read_tensorlistgetitem_lstm_69_tensorarrayunstack_tensorlistfromtensorclstm_69_while_tensorarrayv2read_tensorlistgetitem_lstm_69_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2d
0lstm_69/while/lstm_cell_6/BiasAdd/ReadVariableOp0lstm_69/while/lstm_cell_6/BiasAdd/ReadVariableOp2b
/lstm_69/while/lstm_cell_6/MatMul/ReadVariableOp/lstm_69/while/lstm_cell_6/MatMul/ReadVariableOp2f
1lstm_69/while/lstm_cell_6/MatMul_1/ReadVariableOp1lstm_69/while/lstm_cell_6/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_48868
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_6_matmul_readvariableop_resource_0:	?G
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:	d?B
3while_lstm_cell_6_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_6_matmul_readvariableop_resource:	?E
2while_lstm_cell_6_matmul_1_readvariableop_resource:	d?@
1while_lstm_cell_6_biasadd_readvariableop_resource:	???(while/lstm_cell_6/BiasAdd/ReadVariableOp?'while/lstm_cell_6/MatMul/ReadVariableOp?)while/lstm_cell_6/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitx
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????dz
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dr
while/lstm_cell_6/ReluRelu while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????dz
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????do
while/lstm_cell_6/Relu_1Reluwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0&while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dx
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_48520

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
'__inference_lstm_71_layer_call_fn_52175
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
GPU 2J 8? *K
fFRD
B__inference_lstm_71_layer_call_and_return_conditional_losses_48794o
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
?
while_cond_49548
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_49548___redundant_placeholder03
/while_while_cond_49548___redundant_placeholder13
/while_while_cond_49548___redundant_placeholder23
/while_while_cond_49548___redundant_placeholder3
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
?@
?

lstm_71_while_body_50831,
(lstm_71_while_lstm_71_while_loop_counter2
.lstm_71_while_lstm_71_while_maximum_iterations
lstm_71_while_placeholder
lstm_71_while_placeholder_1
lstm_71_while_placeholder_2
lstm_71_while_placeholder_3+
'lstm_71_while_lstm_71_strided_slice_1_0g
clstm_71_while_tensorarrayv2read_tensorlistgetitem_lstm_71_tensorarrayunstack_tensorlistfromtensor_0L
:lstm_71_while_lstm_cell_8_matmul_readvariableop_resource_0:2(N
<lstm_71_while_lstm_cell_8_matmul_1_readvariableop_resource_0:
(I
;lstm_71_while_lstm_cell_8_biasadd_readvariableop_resource_0:(
lstm_71_while_identity
lstm_71_while_identity_1
lstm_71_while_identity_2
lstm_71_while_identity_3
lstm_71_while_identity_4
lstm_71_while_identity_5)
%lstm_71_while_lstm_71_strided_slice_1e
alstm_71_while_tensorarrayv2read_tensorlistgetitem_lstm_71_tensorarrayunstack_tensorlistfromtensorJ
8lstm_71_while_lstm_cell_8_matmul_readvariableop_resource:2(L
:lstm_71_while_lstm_cell_8_matmul_1_readvariableop_resource:
(G
9lstm_71_while_lstm_cell_8_biasadd_readvariableop_resource:(??0lstm_71/while/lstm_cell_8/BiasAdd/ReadVariableOp?/lstm_71/while/lstm_cell_8/MatMul/ReadVariableOp?1lstm_71/while/lstm_cell_8/MatMul_1/ReadVariableOp?
?lstm_71/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
1lstm_71/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_71_while_tensorarrayv2read_tensorlistgetitem_lstm_71_tensorarrayunstack_tensorlistfromtensor_0lstm_71_while_placeholderHlstm_71/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
/lstm_71/while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp:lstm_71_while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
 lstm_71/while/lstm_cell_8/MatMulMatMul8lstm_71/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_71/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
1lstm_71/while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp<lstm_71_while_lstm_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
"lstm_71/while/lstm_cell_8/MatMul_1MatMullstm_71_while_placeholder_29lstm_71/while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_71/while/lstm_cell_8/addAddV2*lstm_71/while/lstm_cell_8/MatMul:product:0,lstm_71/while/lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
0lstm_71/while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp;lstm_71_while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
!lstm_71/while/lstm_cell_8/BiasAddBiasAdd!lstm_71/while/lstm_cell_8/add:z:08lstm_71/while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(k
)lstm_71/while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_71/while/lstm_cell_8/splitSplit2lstm_71/while/lstm_cell_8/split/split_dim:output:0*lstm_71/while/lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
!lstm_71/while/lstm_cell_8/SigmoidSigmoid(lstm_71/while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:?????????
?
#lstm_71/while/lstm_cell_8/Sigmoid_1Sigmoid(lstm_71/while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_71/while/lstm_cell_8/mulMul'lstm_71/while/lstm_cell_8/Sigmoid_1:y:0lstm_71_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
lstm_71/while/lstm_cell_8/ReluRelu(lstm_71/while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_71/while/lstm_cell_8/mul_1Mul%lstm_71/while/lstm_cell_8/Sigmoid:y:0,lstm_71/while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_71/while/lstm_cell_8/add_1AddV2!lstm_71/while/lstm_cell_8/mul:z:0#lstm_71/while/lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
#lstm_71/while/lstm_cell_8/Sigmoid_2Sigmoid(lstm_71/while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:?????????

 lstm_71/while/lstm_cell_8/Relu_1Relu#lstm_71/while/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_71/while/lstm_cell_8/mul_2Mul'lstm_71/while/lstm_cell_8/Sigmoid_2:y:0.lstm_71/while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
2lstm_71/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_71_while_placeholder_1lstm_71_while_placeholder#lstm_71/while/lstm_cell_8/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_71/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_71/while/addAddV2lstm_71_while_placeholderlstm_71/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_71/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_71/while/add_1AddV2(lstm_71_while_lstm_71_while_loop_counterlstm_71/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_71/while/IdentityIdentitylstm_71/while/add_1:z:0^lstm_71/while/NoOp*
T0*
_output_shapes
: ?
lstm_71/while/Identity_1Identity.lstm_71_while_lstm_71_while_maximum_iterations^lstm_71/while/NoOp*
T0*
_output_shapes
: q
lstm_71/while/Identity_2Identitylstm_71/while/add:z:0^lstm_71/while/NoOp*
T0*
_output_shapes
: ?
lstm_71/while/Identity_3IdentityBlstm_71/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_71/while/NoOp*
T0*
_output_shapes
: ?
lstm_71/while/Identity_4Identity#lstm_71/while/lstm_cell_8/mul_2:z:0^lstm_71/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_71/while/Identity_5Identity#lstm_71/while/lstm_cell_8/add_1:z:0^lstm_71/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_71/while/NoOpNoOp1^lstm_71/while/lstm_cell_8/BiasAdd/ReadVariableOp0^lstm_71/while/lstm_cell_8/MatMul/ReadVariableOp2^lstm_71/while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_71_while_identitylstm_71/while/Identity:output:0"=
lstm_71_while_identity_1!lstm_71/while/Identity_1:output:0"=
lstm_71_while_identity_2!lstm_71/while/Identity_2:output:0"=
lstm_71_while_identity_3!lstm_71/while/Identity_3:output:0"=
lstm_71_while_identity_4!lstm_71/while/Identity_4:output:0"=
lstm_71_while_identity_5!lstm_71/while/Identity_5:output:0"P
%lstm_71_while_lstm_71_strided_slice_1'lstm_71_while_lstm_71_strided_slice_1_0"x
9lstm_71_while_lstm_cell_8_biasadd_readvariableop_resource;lstm_71_while_lstm_cell_8_biasadd_readvariableop_resource_0"z
:lstm_71_while_lstm_cell_8_matmul_1_readvariableop_resource<lstm_71_while_lstm_cell_8_matmul_1_readvariableop_resource_0"v
8lstm_71_while_lstm_cell_8_matmul_readvariableop_resource:lstm_71_while_lstm_cell_8_matmul_readvariableop_resource_0"?
alstm_71_while_tensorarrayv2read_tensorlistgetitem_lstm_71_tensorarrayunstack_tensorlistfromtensorclstm_71_while_tensorarrayv2read_tensorlistgetitem_lstm_71_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2d
0lstm_71/while/lstm_cell_8/BiasAdd/ReadVariableOp0lstm_71/while/lstm_cell_8/BiasAdd/ReadVariableOp2b
/lstm_71/while/lstm_cell_8/MatMul/ReadVariableOp/lstm_71/while/lstm_cell_8/MatMul/ReadVariableOp2f
1lstm_71/while/lstm_cell_8/MatMul_1/ReadVariableOp1lstm_71/while/lstm_cell_8/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_69_while_cond_50552,
(lstm_69_while_lstm_69_while_loop_counter2
.lstm_69_while_lstm_69_while_maximum_iterations
lstm_69_while_placeholder
lstm_69_while_placeholder_1
lstm_69_while_placeholder_2
lstm_69_while_placeholder_3.
*lstm_69_while_less_lstm_69_strided_slice_1C
?lstm_69_while_lstm_69_while_cond_50552___redundant_placeholder0C
?lstm_69_while_lstm_69_while_cond_50552___redundant_placeholder1C
?lstm_69_while_lstm_69_while_cond_50552___redundant_placeholder2C
?lstm_69_while_lstm_69_while_cond_50552___redundant_placeholder3
lstm_69_while_identity
?
lstm_69/while/LessLesslstm_69_while_placeholder*lstm_69_while_less_lstm_69_strided_slice_1*
T0*
_output_shapes
: [
lstm_69/while/IdentityIdentitylstm_69/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_69_while_identitylstm_69/while/Identity:output:0*(
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
?I
?
B__inference_lstm_71_layer_call_and_return_conditional_losses_52769

inputs<
*lstm_cell_8_matmul_readvariableop_resource:2(>
,lstm_cell_8_matmul_1_readvariableop_resource:
(9
+lstm_cell_8_biasadd_readvariableop_resource:(
identity??"lstm_cell_8/BiasAdd/ReadVariableOp?!lstm_cell_8/MatMul/ReadVariableOp?#lstm_cell_8/MatMul_1/ReadVariableOp?while;
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
!lstm_cell_8/MatMul/ReadVariableOpReadVariableOp*lstm_cell_8_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_8/MatMulMatMulstrided_slice_2:output:0)lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
#lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_8/MatMul_1MatMulzeros:output:0+lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_8/addAddV2lstm_cell_8/MatMul:product:0lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
"lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_8/BiasAddBiasAddlstm_cell_8/add:z:0*lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(]
lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_8/splitSplit$lstm_cell_8/split/split_dim:output:0lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitl
lstm_cell_8/SigmoidSigmoidlstm_cell_8/split:output:0*
T0*'
_output_shapes
:?????????
n
lstm_cell_8/Sigmoid_1Sigmoidlstm_cell_8/split:output:1*
T0*'
_output_shapes
:?????????
u
lstm_cell_8/mulMullstm_cell_8/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
f
lstm_cell_8/ReluRelulstm_cell_8/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_8/mul_1Mullstm_cell_8/Sigmoid:y:0lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:?????????
x
lstm_cell_8/add_1AddV2lstm_cell_8/mul:z:0lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:?????????
n
lstm_cell_8/Sigmoid_2Sigmoidlstm_cell_8/split:output:3*
T0*'
_output_shapes
:?????????
c
lstm_cell_8/Relu_1Relulstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_8/mul_2Mullstm_cell_8/Sigmoid_2:y:0 lstm_cell_8/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_8_matmul_readvariableop_resource,lstm_cell_8_matmul_1_readvariableop_resource+lstm_cell_8_biasadd_readvariableop_resource*
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
bodyR
while_body_52685*
condR
while_cond_52684*K
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
NoOpNoOp#^lstm_cell_8/BiasAdd/ReadVariableOp"^lstm_cell_8/MatMul/ReadVariableOp$^lstm_cell_8/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2H
"lstm_cell_8/BiasAdd/ReadVariableOp"lstm_cell_8/BiasAdd/ReadVariableOp2F
!lstm_cell_8/MatMul/ReadVariableOp!lstm_cell_8/MatMul/ReadVariableOp2J
#lstm_cell_8/MatMul_1/ReadVariableOp#lstm_cell_8/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_71_while_cond_50830,
(lstm_71_while_lstm_71_while_loop_counter2
.lstm_71_while_lstm_71_while_maximum_iterations
lstm_71_while_placeholder
lstm_71_while_placeholder_1
lstm_71_while_placeholder_2
lstm_71_while_placeholder_3.
*lstm_71_while_less_lstm_71_strided_slice_1C
?lstm_71_while_lstm_71_while_cond_50830___redundant_placeholder0C
?lstm_71_while_lstm_71_while_cond_50830___redundant_placeholder1C
?lstm_71_while_lstm_71_while_cond_50830___redundant_placeholder2C
?lstm_71_while_lstm_71_while_cond_50830___redundant_placeholder3
lstm_71_while_identity
?
lstm_71/while/LessLesslstm_71_while_placeholder*lstm_71_while_less_lstm_71_strided_slice_1*
T0*
_output_shapes
: [
lstm_71/while/IdentityIdentitylstm_71/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_71_while_identitylstm_71/while/Identity:output:0*(
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
while_cond_49167
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_49167___redundant_placeholder03
/while_while_cond_49167___redundant_placeholder13
/while_while_cond_49167___redundant_placeholder23
/while_while_cond_49167___redundant_placeholder3
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
+__inference_lstm_cell_6_layer_call_fn_52822

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
GPU 2J 8? *O
fJRH
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_47966o
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
while_body_51167
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_6_matmul_readvariableop_resource_0:	?G
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:	d?B
3while_lstm_cell_6_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_6_matmul_readvariableop_resource:	?E
2while_lstm_cell_6_matmul_1_readvariableop_resource:	d?@
1while_lstm_cell_6_biasadd_readvariableop_resource:	???(while/lstm_cell_6/BiasAdd/ReadVariableOp?'while/lstm_cell_6/MatMul/ReadVariableOp?)while/lstm_cell_6/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitx
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????dz
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dr
while/lstm_cell_6/ReluRelu while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????dz
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????do
while/lstm_cell_6/Relu_1Reluwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0&while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dx
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
&sequential_23_lstm_71_while_cond_47662H
Dsequential_23_lstm_71_while_sequential_23_lstm_71_while_loop_counterN
Jsequential_23_lstm_71_while_sequential_23_lstm_71_while_maximum_iterations+
'sequential_23_lstm_71_while_placeholder-
)sequential_23_lstm_71_while_placeholder_1-
)sequential_23_lstm_71_while_placeholder_2-
)sequential_23_lstm_71_while_placeholder_3J
Fsequential_23_lstm_71_while_less_sequential_23_lstm_71_strided_slice_1_
[sequential_23_lstm_71_while_sequential_23_lstm_71_while_cond_47662___redundant_placeholder0_
[sequential_23_lstm_71_while_sequential_23_lstm_71_while_cond_47662___redundant_placeholder1_
[sequential_23_lstm_71_while_sequential_23_lstm_71_while_cond_47662___redundant_placeholder2_
[sequential_23_lstm_71_while_sequential_23_lstm_71_while_cond_47662___redundant_placeholder3(
$sequential_23_lstm_71_while_identity
?
 sequential_23/lstm_71/while/LessLess'sequential_23_lstm_71_while_placeholderFsequential_23_lstm_71_while_less_sequential_23_lstm_71_strided_slice_1*
T0*
_output_shapes
: w
$sequential_23/lstm_71/while/IdentityIdentity$sequential_23/lstm_71/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_23_lstm_71_while_identity-sequential_23/lstm_71/while/Identity:output:0*(
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
B__inference_lstm_69_layer_call_and_return_conditional_losses_51251
inputs_0=
*lstm_cell_6_matmul_readvariableop_resource:	??
,lstm_cell_6_matmul_1_readvariableop_resource:	d?:
+lstm_cell_6_biasadd_readvariableop_resource:	?
identity??"lstm_cell_6/BiasAdd/ReadVariableOp?!lstm_cell_6/MatMul/ReadVariableOp?#lstm_cell_6/MatMul_1/ReadVariableOp?while=
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
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitl
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????dn
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????du
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????df
lstm_cell_6/ReluRelulstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????dx
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????dn
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????dc
lstm_cell_6/Relu_1Relulstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0 lstm_cell_6/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
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
bodyR
while_body_51167*
condR
while_cond_51166*K
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
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
??
?

H__inference_sequential_23_layer_call_and_return_conditional_losses_50921

inputsE
2lstm_69_lstm_cell_6_matmul_readvariableop_resource:	?G
4lstm_69_lstm_cell_6_matmul_1_readvariableop_resource:	d?B
3lstm_69_lstm_cell_6_biasadd_readvariableop_resource:	?E
2lstm_70_lstm_cell_7_matmul_readvariableop_resource:	d?G
4lstm_70_lstm_cell_7_matmul_1_readvariableop_resource:	2?B
3lstm_70_lstm_cell_7_biasadd_readvariableop_resource:	?D
2lstm_71_lstm_cell_8_matmul_readvariableop_resource:2(F
4lstm_71_lstm_cell_8_matmul_1_readvariableop_resource:
(A
3lstm_71_lstm_cell_8_biasadd_readvariableop_resource:(9
'dense_23_matmul_readvariableop_resource:
6
(dense_23_biasadd_readvariableop_resource:
identity??dense_23/BiasAdd/ReadVariableOp?dense_23/MatMul/ReadVariableOp?*lstm_69/lstm_cell_6/BiasAdd/ReadVariableOp?)lstm_69/lstm_cell_6/MatMul/ReadVariableOp?+lstm_69/lstm_cell_6/MatMul_1/ReadVariableOp?lstm_69/while?*lstm_70/lstm_cell_7/BiasAdd/ReadVariableOp?)lstm_70/lstm_cell_7/MatMul/ReadVariableOp?+lstm_70/lstm_cell_7/MatMul_1/ReadVariableOp?lstm_70/while?*lstm_71/lstm_cell_8/BiasAdd/ReadVariableOp?)lstm_71/lstm_cell_8/MatMul/ReadVariableOp?+lstm_71/lstm_cell_8/MatMul_1/ReadVariableOp?lstm_71/whileC
lstm_69/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_69/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_69/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_69/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_69/strided_sliceStridedSlicelstm_69/Shape:output:0$lstm_69/strided_slice/stack:output:0&lstm_69/strided_slice/stack_1:output:0&lstm_69/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_69/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_69/zeros/packedPacklstm_69/strided_slice:output:0lstm_69/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_69/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_69/zerosFilllstm_69/zeros/packed:output:0lstm_69/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dZ
lstm_69/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_69/zeros_1/packedPacklstm_69/strided_slice:output:0!lstm_69/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_69/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_69/zeros_1Filllstm_69/zeros_1/packed:output:0lstm_69/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dk
lstm_69/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_69/transpose	Transposeinputslstm_69/transpose/perm:output:0*
T0*+
_output_shapes
:?????????T
lstm_69/Shape_1Shapelstm_69/transpose:y:0*
T0*
_output_shapes
:g
lstm_69/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_69/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_69/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_69/strided_slice_1StridedSlicelstm_69/Shape_1:output:0&lstm_69/strided_slice_1/stack:output:0(lstm_69/strided_slice_1/stack_1:output:0(lstm_69/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_69/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_69/TensorArrayV2TensorListReserve,lstm_69/TensorArrayV2/element_shape:output:0 lstm_69/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_69/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
/lstm_69/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_69/transpose:y:0Flstm_69/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_69/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_69/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_69/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_69/strided_slice_2StridedSlicelstm_69/transpose:y:0&lstm_69/strided_slice_2/stack:output:0(lstm_69/strided_slice_2/stack_1:output:0(lstm_69/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
)lstm_69/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2lstm_69_lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_69/lstm_cell_6/MatMulMatMul lstm_69/strided_slice_2:output:01lstm_69/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+lstm_69/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4lstm_69_lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_69/lstm_cell_6/MatMul_1MatMullstm_69/zeros:output:03lstm_69/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_69/lstm_cell_6/addAddV2$lstm_69/lstm_cell_6/MatMul:product:0&lstm_69/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*lstm_69/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3lstm_69_lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_69/lstm_cell_6/BiasAddBiasAddlstm_69/lstm_cell_6/add:z:02lstm_69/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#lstm_69/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_69/lstm_cell_6/splitSplit,lstm_69/lstm_cell_6/split/split_dim:output:0$lstm_69/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
lstm_69/lstm_cell_6/SigmoidSigmoid"lstm_69/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????d~
lstm_69/lstm_cell_6/Sigmoid_1Sigmoid"lstm_69/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_69/lstm_cell_6/mulMul!lstm_69/lstm_cell_6/Sigmoid_1:y:0lstm_69/zeros_1:output:0*
T0*'
_output_shapes
:?????????dv
lstm_69/lstm_cell_6/ReluRelu"lstm_69/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_69/lstm_cell_6/mul_1Mullstm_69/lstm_cell_6/Sigmoid:y:0&lstm_69/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_69/lstm_cell_6/add_1AddV2lstm_69/lstm_cell_6/mul:z:0lstm_69/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
lstm_69/lstm_cell_6/Sigmoid_2Sigmoid"lstm_69/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????ds
lstm_69/lstm_cell_6/Relu_1Relulstm_69/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_69/lstm_cell_6/mul_2Mul!lstm_69/lstm_cell_6/Sigmoid_2:y:0(lstm_69/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dv
%lstm_69/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_69/TensorArrayV2_1TensorListReserve.lstm_69/TensorArrayV2_1/element_shape:output:0 lstm_69/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_69/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_69/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_69/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_69/whileWhile#lstm_69/while/loop_counter:output:0)lstm_69/while/maximum_iterations:output:0lstm_69/time:output:0 lstm_69/TensorArrayV2_1:handle:0lstm_69/zeros:output:0lstm_69/zeros_1:output:0 lstm_69/strided_slice_1:output:0?lstm_69/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_69_lstm_cell_6_matmul_readvariableop_resource4lstm_69_lstm_cell_6_matmul_1_readvariableop_resource3lstm_69_lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_69_while_body_50553*$
condR
lstm_69_while_cond_50552*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
8lstm_69/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
*lstm_69/TensorArrayV2Stack/TensorListStackTensorListStacklstm_69/while:output:3Alstm_69/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0p
lstm_69/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_69/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_69/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_69/strided_slice_3StridedSlice3lstm_69/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_69/strided_slice_3/stack:output:0(lstm_69/strided_slice_3/stack_1:output:0(lstm_69/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskm
lstm_69/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_69/transpose_1	Transpose3lstm_69/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_69/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dc
lstm_69/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_70/ShapeShapelstm_69/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_70/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_70/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_70/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_70/strided_sliceStridedSlicelstm_70/Shape:output:0$lstm_70/strided_slice/stack:output:0&lstm_70/strided_slice/stack_1:output:0&lstm_70/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_70/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_70/zeros/packedPacklstm_70/strided_slice:output:0lstm_70/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_70/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_70/zerosFilllstm_70/zeros/packed:output:0lstm_70/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2Z
lstm_70/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_70/zeros_1/packedPacklstm_70/strided_slice:output:0!lstm_70/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_70/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_70/zeros_1Filllstm_70/zeros_1/packed:output:0lstm_70/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2k
lstm_70/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_70/transpose	Transposelstm_69/transpose_1:y:0lstm_70/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dT
lstm_70/Shape_1Shapelstm_70/transpose:y:0*
T0*
_output_shapes
:g
lstm_70/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_70/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_70/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_70/strided_slice_1StridedSlicelstm_70/Shape_1:output:0&lstm_70/strided_slice_1/stack:output:0(lstm_70/strided_slice_1/stack_1:output:0(lstm_70/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_70/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_70/TensorArrayV2TensorListReserve,lstm_70/TensorArrayV2/element_shape:output:0 lstm_70/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_70/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
/lstm_70/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_70/transpose:y:0Flstm_70/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_70/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_70/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_70/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_70/strided_slice_2StridedSlicelstm_70/transpose:y:0&lstm_70/strided_slice_2/stack:output:0(lstm_70/strided_slice_2/stack_1:output:0(lstm_70/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
)lstm_70/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp2lstm_70_lstm_cell_7_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_70/lstm_cell_7/MatMulMatMul lstm_70/strided_slice_2:output:01lstm_70/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+lstm_70/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp4lstm_70_lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_70/lstm_cell_7/MatMul_1MatMullstm_70/zeros:output:03lstm_70/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_70/lstm_cell_7/addAddV2$lstm_70/lstm_cell_7/MatMul:product:0&lstm_70/lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*lstm_70/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp3lstm_70_lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_70/lstm_cell_7/BiasAddBiasAddlstm_70/lstm_cell_7/add:z:02lstm_70/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#lstm_70/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_70/lstm_cell_7/splitSplit,lstm_70/lstm_cell_7/split/split_dim:output:0$lstm_70/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
lstm_70/lstm_cell_7/SigmoidSigmoid"lstm_70/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????2~
lstm_70/lstm_cell_7/Sigmoid_1Sigmoid"lstm_70/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_70/lstm_cell_7/mulMul!lstm_70/lstm_cell_7/Sigmoid_1:y:0lstm_70/zeros_1:output:0*
T0*'
_output_shapes
:?????????2v
lstm_70/lstm_cell_7/ReluRelu"lstm_70/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_70/lstm_cell_7/mul_1Mullstm_70/lstm_cell_7/Sigmoid:y:0&lstm_70/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_70/lstm_cell_7/add_1AddV2lstm_70/lstm_cell_7/mul:z:0lstm_70/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
lstm_70/lstm_cell_7/Sigmoid_2Sigmoid"lstm_70/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????2s
lstm_70/lstm_cell_7/Relu_1Relulstm_70/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_70/lstm_cell_7/mul_2Mul!lstm_70/lstm_cell_7/Sigmoid_2:y:0(lstm_70/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2v
%lstm_70/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_70/TensorArrayV2_1TensorListReserve.lstm_70/TensorArrayV2_1/element_shape:output:0 lstm_70/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_70/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_70/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_70/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_70/whileWhile#lstm_70/while/loop_counter:output:0)lstm_70/while/maximum_iterations:output:0lstm_70/time:output:0 lstm_70/TensorArrayV2_1:handle:0lstm_70/zeros:output:0lstm_70/zeros_1:output:0 lstm_70/strided_slice_1:output:0?lstm_70/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_70_lstm_cell_7_matmul_readvariableop_resource4lstm_70_lstm_cell_7_matmul_1_readvariableop_resource3lstm_70_lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_70_while_body_50692*$
condR
lstm_70_while_cond_50691*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
8lstm_70/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
*lstm_70/TensorArrayV2Stack/TensorListStackTensorListStacklstm_70/while:output:3Alstm_70/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0p
lstm_70/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_70/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_70/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_70/strided_slice_3StridedSlice3lstm_70/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_70/strided_slice_3/stack:output:0(lstm_70/strided_slice_3/stack_1:output:0(lstm_70/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskm
lstm_70/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_70/transpose_1	Transpose3lstm_70/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_70/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2c
lstm_70/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_71/ShapeShapelstm_70/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_71/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_71/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_71/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_71/strided_sliceStridedSlicelstm_71/Shape:output:0$lstm_71/strided_slice/stack:output:0&lstm_71/strided_slice/stack_1:output:0&lstm_71/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_71/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_71/zeros/packedPacklstm_71/strided_slice:output:0lstm_71/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_71/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_71/zerosFilllstm_71/zeros/packed:output:0lstm_71/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
Z
lstm_71/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_71/zeros_1/packedPacklstm_71/strided_slice:output:0!lstm_71/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_71/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_71/zeros_1Filllstm_71/zeros_1/packed:output:0lstm_71/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
k
lstm_71/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_71/transpose	Transposelstm_70/transpose_1:y:0lstm_71/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2T
lstm_71/Shape_1Shapelstm_71/transpose:y:0*
T0*
_output_shapes
:g
lstm_71/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_71/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_71/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_71/strided_slice_1StridedSlicelstm_71/Shape_1:output:0&lstm_71/strided_slice_1/stack:output:0(lstm_71/strided_slice_1/stack_1:output:0(lstm_71/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_71/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_71/TensorArrayV2TensorListReserve,lstm_71/TensorArrayV2/element_shape:output:0 lstm_71/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_71/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
/lstm_71/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_71/transpose:y:0Flstm_71/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_71/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_71/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_71/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_71/strided_slice_2StridedSlicelstm_71/transpose:y:0&lstm_71/strided_slice_2/stack:output:0(lstm_71/strided_slice_2/stack_1:output:0(lstm_71/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
)lstm_71/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp2lstm_71_lstm_cell_8_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_71/lstm_cell_8/MatMulMatMul lstm_71/strided_slice_2:output:01lstm_71/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+lstm_71/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp4lstm_71_lstm_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_71/lstm_cell_8/MatMul_1MatMullstm_71/zeros:output:03lstm_71/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_71/lstm_cell_8/addAddV2$lstm_71/lstm_cell_8/MatMul:product:0&lstm_71/lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*lstm_71/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp3lstm_71_lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_71/lstm_cell_8/BiasAddBiasAddlstm_71/lstm_cell_8/add:z:02lstm_71/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#lstm_71/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_71/lstm_cell_8/splitSplit,lstm_71/lstm_cell_8/split/split_dim:output:0$lstm_71/lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
lstm_71/lstm_cell_8/SigmoidSigmoid"lstm_71/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:?????????
~
lstm_71/lstm_cell_8/Sigmoid_1Sigmoid"lstm_71/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_71/lstm_cell_8/mulMul!lstm_71/lstm_cell_8/Sigmoid_1:y:0lstm_71/zeros_1:output:0*
T0*'
_output_shapes
:?????????
v
lstm_71/lstm_cell_8/ReluRelu"lstm_71/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_71/lstm_cell_8/mul_1Mullstm_71/lstm_cell_8/Sigmoid:y:0&lstm_71/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_71/lstm_cell_8/add_1AddV2lstm_71/lstm_cell_8/mul:z:0lstm_71/lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
lstm_71/lstm_cell_8/Sigmoid_2Sigmoid"lstm_71/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:?????????
s
lstm_71/lstm_cell_8/Relu_1Relulstm_71/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_71/lstm_cell_8/mul_2Mul!lstm_71/lstm_cell_8/Sigmoid_2:y:0(lstm_71/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
v
%lstm_71/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_71/TensorArrayV2_1TensorListReserve.lstm_71/TensorArrayV2_1/element_shape:output:0 lstm_71/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_71/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_71/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_71/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_71/whileWhile#lstm_71/while/loop_counter:output:0)lstm_71/while/maximum_iterations:output:0lstm_71/time:output:0 lstm_71/TensorArrayV2_1:handle:0lstm_71/zeros:output:0lstm_71/zeros_1:output:0 lstm_71/strided_slice_1:output:0?lstm_71/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_71_lstm_cell_8_matmul_readvariableop_resource4lstm_71_lstm_cell_8_matmul_1_readvariableop_resource3lstm_71_lstm_cell_8_biasadd_readvariableop_resource*
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
_stateful_parallelism( *$
bodyR
lstm_71_while_body_50831*$
condR
lstm_71_while_cond_50830*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
8lstm_71/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
*lstm_71/TensorArrayV2Stack/TensorListStackTensorListStacklstm_71/while:output:3Alstm_71/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0p
lstm_71/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_71/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_71/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_71/strided_slice_3StridedSlice3lstm_71/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_71/strided_slice_3/stack:output:0(lstm_71/strided_slice_3/stack_1:output:0(lstm_71/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskm
lstm_71/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_71/transpose_1	Transpose3lstm_71/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_71/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
c
lstm_71/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_23/MatMulMatMul lstm_71/strided_slice_3:output:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_23/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp+^lstm_69/lstm_cell_6/BiasAdd/ReadVariableOp*^lstm_69/lstm_cell_6/MatMul/ReadVariableOp,^lstm_69/lstm_cell_6/MatMul_1/ReadVariableOp^lstm_69/while+^lstm_70/lstm_cell_7/BiasAdd/ReadVariableOp*^lstm_70/lstm_cell_7/MatMul/ReadVariableOp,^lstm_70/lstm_cell_7/MatMul_1/ReadVariableOp^lstm_70/while+^lstm_71/lstm_cell_8/BiasAdd/ReadVariableOp*^lstm_71/lstm_cell_8/MatMul/ReadVariableOp,^lstm_71/lstm_cell_8/MatMul_1/ReadVariableOp^lstm_71/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2X
*lstm_69/lstm_cell_6/BiasAdd/ReadVariableOp*lstm_69/lstm_cell_6/BiasAdd/ReadVariableOp2V
)lstm_69/lstm_cell_6/MatMul/ReadVariableOp)lstm_69/lstm_cell_6/MatMul/ReadVariableOp2Z
+lstm_69/lstm_cell_6/MatMul_1/ReadVariableOp+lstm_69/lstm_cell_6/MatMul_1/ReadVariableOp2
lstm_69/whilelstm_69/while2X
*lstm_70/lstm_cell_7/BiasAdd/ReadVariableOp*lstm_70/lstm_cell_7/BiasAdd/ReadVariableOp2V
)lstm_70/lstm_cell_7/MatMul/ReadVariableOp)lstm_70/lstm_cell_7/MatMul/ReadVariableOp2Z
+lstm_70/lstm_cell_7/MatMul_1/ReadVariableOp+lstm_70/lstm_cell_7/MatMul_1/ReadVariableOp2
lstm_70/whilelstm_70/while2X
*lstm_71/lstm_cell_8/BiasAdd/ReadVariableOp*lstm_71/lstm_cell_8/BiasAdd/ReadVariableOp2V
)lstm_71/lstm_cell_8/MatMul/ReadVariableOp)lstm_71/lstm_cell_8/MatMul/ReadVariableOp2Z
+lstm_71/lstm_cell_8/MatMul_1/ReadVariableOp+lstm_71/lstm_cell_8/MatMul_1/ReadVariableOp2
lstm_71/whilelstm_71/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_49383
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_49383___redundant_placeholder03
/while_while_cond_49383___redundant_placeholder13
/while_while_cond_49383___redundant_placeholder23
/while_while_cond_49383___redundant_placeholder3
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
?Q
?
&sequential_23_lstm_71_while_body_47663H
Dsequential_23_lstm_71_while_sequential_23_lstm_71_while_loop_counterN
Jsequential_23_lstm_71_while_sequential_23_lstm_71_while_maximum_iterations+
'sequential_23_lstm_71_while_placeholder-
)sequential_23_lstm_71_while_placeholder_1-
)sequential_23_lstm_71_while_placeholder_2-
)sequential_23_lstm_71_while_placeholder_3G
Csequential_23_lstm_71_while_sequential_23_lstm_71_strided_slice_1_0?
sequential_23_lstm_71_while_tensorarrayv2read_tensorlistgetitem_sequential_23_lstm_71_tensorarrayunstack_tensorlistfromtensor_0Z
Hsequential_23_lstm_71_while_lstm_cell_8_matmul_readvariableop_resource_0:2(\
Jsequential_23_lstm_71_while_lstm_cell_8_matmul_1_readvariableop_resource_0:
(W
Isequential_23_lstm_71_while_lstm_cell_8_biasadd_readvariableop_resource_0:((
$sequential_23_lstm_71_while_identity*
&sequential_23_lstm_71_while_identity_1*
&sequential_23_lstm_71_while_identity_2*
&sequential_23_lstm_71_while_identity_3*
&sequential_23_lstm_71_while_identity_4*
&sequential_23_lstm_71_while_identity_5E
Asequential_23_lstm_71_while_sequential_23_lstm_71_strided_slice_1?
}sequential_23_lstm_71_while_tensorarrayv2read_tensorlistgetitem_sequential_23_lstm_71_tensorarrayunstack_tensorlistfromtensorX
Fsequential_23_lstm_71_while_lstm_cell_8_matmul_readvariableop_resource:2(Z
Hsequential_23_lstm_71_while_lstm_cell_8_matmul_1_readvariableop_resource:
(U
Gsequential_23_lstm_71_while_lstm_cell_8_biasadd_readvariableop_resource:(??>sequential_23/lstm_71/while/lstm_cell_8/BiasAdd/ReadVariableOp?=sequential_23/lstm_71/while/lstm_cell_8/MatMul/ReadVariableOp??sequential_23/lstm_71/while/lstm_cell_8/MatMul_1/ReadVariableOp?
Msequential_23/lstm_71/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_23/lstm_71/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_23_lstm_71_while_tensorarrayv2read_tensorlistgetitem_sequential_23_lstm_71_tensorarrayunstack_tensorlistfromtensor_0'sequential_23_lstm_71_while_placeholderVsequential_23/lstm_71/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
=sequential_23/lstm_71/while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOpHsequential_23_lstm_71_while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
.sequential_23/lstm_71/while/lstm_cell_8/MatMulMatMulFsequential_23/lstm_71/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_23/lstm_71/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
?sequential_23/lstm_71/while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOpJsequential_23_lstm_71_while_lstm_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
0sequential_23/lstm_71/while/lstm_cell_8/MatMul_1MatMul)sequential_23_lstm_71_while_placeholder_2Gsequential_23/lstm_71/while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+sequential_23/lstm_71/while/lstm_cell_8/addAddV28sequential_23/lstm_71/while/lstm_cell_8/MatMul:product:0:sequential_23/lstm_71/while/lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
>sequential_23/lstm_71/while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOpIsequential_23_lstm_71_while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
/sequential_23/lstm_71/while/lstm_cell_8/BiasAddBiasAdd/sequential_23/lstm_71/while/lstm_cell_8/add:z:0Fsequential_23/lstm_71/while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(y
7sequential_23/lstm_71/while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
-sequential_23/lstm_71/while/lstm_cell_8/splitSplit@sequential_23/lstm_71/while/lstm_cell_8/split/split_dim:output:08sequential_23/lstm_71/while/lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
/sequential_23/lstm_71/while/lstm_cell_8/SigmoidSigmoid6sequential_23/lstm_71/while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:?????????
?
1sequential_23/lstm_71/while/lstm_cell_8/Sigmoid_1Sigmoid6sequential_23/lstm_71/while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:?????????
?
+sequential_23/lstm_71/while/lstm_cell_8/mulMul5sequential_23/lstm_71/while/lstm_cell_8/Sigmoid_1:y:0)sequential_23_lstm_71_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
,sequential_23/lstm_71/while/lstm_cell_8/ReluRelu6sequential_23/lstm_71/while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:?????????
?
-sequential_23/lstm_71/while/lstm_cell_8/mul_1Mul3sequential_23/lstm_71/while/lstm_cell_8/Sigmoid:y:0:sequential_23/lstm_71/while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
-sequential_23/lstm_71/while/lstm_cell_8/add_1AddV2/sequential_23/lstm_71/while/lstm_cell_8/mul:z:01sequential_23/lstm_71/while/lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_23/lstm_71/while/lstm_cell_8/Sigmoid_2Sigmoid6sequential_23/lstm_71/while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:?????????
?
.sequential_23/lstm_71/while/lstm_cell_8/Relu_1Relu1sequential_23/lstm_71/while/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:?????????
?
-sequential_23/lstm_71/while/lstm_cell_8/mul_2Mul5sequential_23/lstm_71/while/lstm_cell_8/Sigmoid_2:y:0<sequential_23/lstm_71/while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
@sequential_23/lstm_71/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_23_lstm_71_while_placeholder_1'sequential_23_lstm_71_while_placeholder1sequential_23/lstm_71/while/lstm_cell_8/mul_2:z:0*
_output_shapes
: *
element_dtype0:???c
!sequential_23/lstm_71/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
sequential_23/lstm_71/while/addAddV2'sequential_23_lstm_71_while_placeholder*sequential_23/lstm_71/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_23/lstm_71/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_23/lstm_71/while/add_1AddV2Dsequential_23_lstm_71_while_sequential_23_lstm_71_while_loop_counter,sequential_23/lstm_71/while/add_1/y:output:0*
T0*
_output_shapes
: ?
$sequential_23/lstm_71/while/IdentityIdentity%sequential_23/lstm_71/while/add_1:z:0!^sequential_23/lstm_71/while/NoOp*
T0*
_output_shapes
: ?
&sequential_23/lstm_71/while/Identity_1IdentityJsequential_23_lstm_71_while_sequential_23_lstm_71_while_maximum_iterations!^sequential_23/lstm_71/while/NoOp*
T0*
_output_shapes
: ?
&sequential_23/lstm_71/while/Identity_2Identity#sequential_23/lstm_71/while/add:z:0!^sequential_23/lstm_71/while/NoOp*
T0*
_output_shapes
: ?
&sequential_23/lstm_71/while/Identity_3IdentityPsequential_23/lstm_71/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_23/lstm_71/while/NoOp*
T0*
_output_shapes
: ?
&sequential_23/lstm_71/while/Identity_4Identity1sequential_23/lstm_71/while/lstm_cell_8/mul_2:z:0!^sequential_23/lstm_71/while/NoOp*
T0*'
_output_shapes
:?????????
?
&sequential_23/lstm_71/while/Identity_5Identity1sequential_23/lstm_71/while/lstm_cell_8/add_1:z:0!^sequential_23/lstm_71/while/NoOp*
T0*'
_output_shapes
:?????????
?
 sequential_23/lstm_71/while/NoOpNoOp?^sequential_23/lstm_71/while/lstm_cell_8/BiasAdd/ReadVariableOp>^sequential_23/lstm_71/while/lstm_cell_8/MatMul/ReadVariableOp@^sequential_23/lstm_71/while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_23_lstm_71_while_identity-sequential_23/lstm_71/while/Identity:output:0"Y
&sequential_23_lstm_71_while_identity_1/sequential_23/lstm_71/while/Identity_1:output:0"Y
&sequential_23_lstm_71_while_identity_2/sequential_23/lstm_71/while/Identity_2:output:0"Y
&sequential_23_lstm_71_while_identity_3/sequential_23/lstm_71/while/Identity_3:output:0"Y
&sequential_23_lstm_71_while_identity_4/sequential_23/lstm_71/while/Identity_4:output:0"Y
&sequential_23_lstm_71_while_identity_5/sequential_23/lstm_71/while/Identity_5:output:0"?
Gsequential_23_lstm_71_while_lstm_cell_8_biasadd_readvariableop_resourceIsequential_23_lstm_71_while_lstm_cell_8_biasadd_readvariableop_resource_0"?
Hsequential_23_lstm_71_while_lstm_cell_8_matmul_1_readvariableop_resourceJsequential_23_lstm_71_while_lstm_cell_8_matmul_1_readvariableop_resource_0"?
Fsequential_23_lstm_71_while_lstm_cell_8_matmul_readvariableop_resourceHsequential_23_lstm_71_while_lstm_cell_8_matmul_readvariableop_resource_0"?
Asequential_23_lstm_71_while_sequential_23_lstm_71_strided_slice_1Csequential_23_lstm_71_while_sequential_23_lstm_71_strided_slice_1_0"?
}sequential_23_lstm_71_while_tensorarrayv2read_tensorlistgetitem_sequential_23_lstm_71_tensorarrayunstack_tensorlistfromtensorsequential_23_lstm_71_while_tensorarrayv2read_tensorlistgetitem_sequential_23_lstm_71_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
>sequential_23/lstm_71/while/lstm_cell_8/BiasAdd/ReadVariableOp>sequential_23/lstm_71/while/lstm_cell_8/BiasAdd/ReadVariableOp2~
=sequential_23/lstm_71/while/lstm_cell_8/MatMul/ReadVariableOp=sequential_23/lstm_71/while/lstm_cell_8/MatMul/ReadVariableOp2?
?sequential_23/lstm_71/while/lstm_cell_8/MatMul_1/ReadVariableOp?sequential_23/lstm_71/while/lstm_cell_8/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?I
?
B__inference_lstm_70_layer_call_and_return_conditional_losses_52010

inputs=
*lstm_cell_7_matmul_readvariableop_resource:	d??
,lstm_cell_7_matmul_1_readvariableop_resource:	2?:
+lstm_cell_7_biasadd_readvariableop_resource:	?
identity??"lstm_cell_7/BiasAdd/ReadVariableOp?!lstm_cell_7/MatMul/ReadVariableOp?#lstm_cell_7/MatMul_1/ReadVariableOp?while;
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
!lstm_cell_7/MatMul/ReadVariableOpReadVariableOp*lstm_cell_7_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_7/MatMulMatMulstrided_slice_2:output:0)lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_7/MatMul_1MatMulzeros:output:0+lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_7/addAddV2lstm_cell_7/MatMul:product:0lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_7/BiasAddBiasAddlstm_cell_7/add:z:0*lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitl
lstm_cell_7/SigmoidSigmoidlstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????2n
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????2u
lstm_cell_7/mulMullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2f
lstm_cell_7/ReluRelulstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_7/mul_1Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????2x
lstm_cell_7/add_1AddV2lstm_cell_7/mul:z:0lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????2n
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????2c
lstm_cell_7/Relu_1Relulstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_7/mul_2Mullstm_cell_7/Sigmoid_2:y:0 lstm_cell_7/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_7_matmul_readvariableop_resource,lstm_cell_7_matmul_1_readvariableop_resource+lstm_cell_7_biasadd_readvariableop_resource*
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
bodyR
while_body_51926*
condR
while_cond_51925*K
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
NoOpNoOp#^lstm_cell_7/BiasAdd/ReadVariableOp"^lstm_cell_7/MatMul/ReadVariableOp$^lstm_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2H
"lstm_cell_7/BiasAdd/ReadVariableOp"lstm_cell_7/BiasAdd/ReadVariableOp2F
!lstm_cell_7/MatMul/ReadVariableOp!lstm_cell_7/MatMul/ReadVariableOp2J
#lstm_cell_7/MatMul_1/ReadVariableOp#lstm_cell_7/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
K
lstm_69_input:
serving_default_lstm_69_input:0?????????<
dense_230
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
2dense_23/kernel
:2dense_23/bias
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
.:,	?2lstm_69/lstm_cell_69/kernel
8:6	d?2%lstm_69/lstm_cell_69/recurrent_kernel
(:&?2lstm_69/lstm_cell_69/bias
.:,	d?2lstm_70/lstm_cell_70/kernel
8:6	2?2%lstm_70/lstm_cell_70/recurrent_kernel
(:&?2lstm_70/lstm_cell_70/bias
-:+2(2lstm_71/lstm_cell_71/kernel
7:5
(2%lstm_71/lstm_cell_71/recurrent_kernel
':%(2lstm_71/lstm_cell_71/bias
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
2Adam/dense_23/kernel/m
 :2Adam/dense_23/bias/m
3:1	?2"Adam/lstm_69/lstm_cell_69/kernel/m
=:;	d?2,Adam/lstm_69/lstm_cell_69/recurrent_kernel/m
-:+?2 Adam/lstm_69/lstm_cell_69/bias/m
3:1	d?2"Adam/lstm_70/lstm_cell_70/kernel/m
=:;	2?2,Adam/lstm_70/lstm_cell_70/recurrent_kernel/m
-:+?2 Adam/lstm_70/lstm_cell_70/bias/m
2:02(2"Adam/lstm_71/lstm_cell_71/kernel/m
<::
(2,Adam/lstm_71/lstm_cell_71/recurrent_kernel/m
,:*(2 Adam/lstm_71/lstm_cell_71/bias/m
&:$
2Adam/dense_23/kernel/v
 :2Adam/dense_23/bias/v
3:1	?2"Adam/lstm_69/lstm_cell_69/kernel/v
=:;	d?2,Adam/lstm_69/lstm_cell_69/recurrent_kernel/v
-:+?2 Adam/lstm_69/lstm_cell_69/bias/v
3:1	d?2"Adam/lstm_70/lstm_cell_70/kernel/v
=:;	2?2,Adam/lstm_70/lstm_cell_70/recurrent_kernel/v
-:+?2 Adam/lstm_70/lstm_cell_70/bias/v
2:02(2"Adam/lstm_71/lstm_cell_71/kernel/v
<::
(2,Adam/lstm_71/lstm_cell_71/recurrent_kernel/v
,:*(2 Adam/lstm_71/lstm_cell_71/bias/v
?2?
-__inference_sequential_23_layer_call_fn_49302
-__inference_sequential_23_layer_call_fn_50040
-__inference_sequential_23_layer_call_fn_50067
-__inference_sequential_23_layer_call_fn_49918?
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
H__inference_sequential_23_layer_call_and_return_conditional_losses_50494
H__inference_sequential_23_layer_call_and_return_conditional_losses_50921
H__inference_sequential_23_layer_call_and_return_conditional_losses_49948
H__inference_sequential_23_layer_call_and_return_conditional_losses_49978?
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
 __inference__wrapped_model_47753lstm_69_input"?
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
?2?
'__inference_lstm_69_layer_call_fn_50932
'__inference_lstm_69_layer_call_fn_50943
'__inference_lstm_69_layer_call_fn_50954
'__inference_lstm_69_layer_call_fn_50965?
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
B__inference_lstm_69_layer_call_and_return_conditional_losses_51108
B__inference_lstm_69_layer_call_and_return_conditional_losses_51251
B__inference_lstm_69_layer_call_and_return_conditional_losses_51394
B__inference_lstm_69_layer_call_and_return_conditional_losses_51537?
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
?2?
'__inference_lstm_70_layer_call_fn_51548
'__inference_lstm_70_layer_call_fn_51559
'__inference_lstm_70_layer_call_fn_51570
'__inference_lstm_70_layer_call_fn_51581?
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
B__inference_lstm_70_layer_call_and_return_conditional_losses_51724
B__inference_lstm_70_layer_call_and_return_conditional_losses_51867
B__inference_lstm_70_layer_call_and_return_conditional_losses_52010
B__inference_lstm_70_layer_call_and_return_conditional_losses_52153?
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
?2?
'__inference_lstm_71_layer_call_fn_52164
'__inference_lstm_71_layer_call_fn_52175
'__inference_lstm_71_layer_call_fn_52186
'__inference_lstm_71_layer_call_fn_52197?
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
B__inference_lstm_71_layer_call_and_return_conditional_losses_52340
B__inference_lstm_71_layer_call_and_return_conditional_losses_52483
B__inference_lstm_71_layer_call_and_return_conditional_losses_52626
B__inference_lstm_71_layer_call_and_return_conditional_losses_52769?
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
(__inference_dense_23_layer_call_fn_52778?
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
C__inference_dense_23_layer_call_and_return_conditional_losses_52788?
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
#__inference_signature_wrapper_50013lstm_69_input"?
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
+__inference_lstm_cell_6_layer_call_fn_52805
+__inference_lstm_cell_6_layer_call_fn_52822?
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
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_52854
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_52886?
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
+__inference_lstm_cell_7_layer_call_fn_52903
+__inference_lstm_cell_7_layer_call_fn_52920?
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
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_52952
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_52984?
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
+__inference_lstm_cell_8_layer_call_fn_53001
+__inference_lstm_cell_8_layer_call_fn_53018?
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
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_53050
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_53082?
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
 __inference__wrapped_model_47753~-./012345!":?7
0?-
+?(
lstm_69_input?????????
? "3?0
.
dense_23"?
dense_23??????????
C__inference_dense_23_layer_call_and_return_conditional_losses_52788\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? {
(__inference_dense_23_layer_call_fn_52778O!"/?,
%?"
 ?
inputs?????????

? "???????????
B__inference_lstm_69_layer_call_and_return_conditional_losses_51108?-./O?L
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
B__inference_lstm_69_layer_call_and_return_conditional_losses_51251?-./O?L
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
B__inference_lstm_69_layer_call_and_return_conditional_losses_51394q-./??<
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
B__inference_lstm_69_layer_call_and_return_conditional_losses_51537q-./??<
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
'__inference_lstm_69_layer_call_fn_50932}-./O?L
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
'__inference_lstm_69_layer_call_fn_50943}-./O?L
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
'__inference_lstm_69_layer_call_fn_50954d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
'__inference_lstm_69_layer_call_fn_50965d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
B__inference_lstm_70_layer_call_and_return_conditional_losses_51724?012O?L
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
B__inference_lstm_70_layer_call_and_return_conditional_losses_51867?012O?L
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
B__inference_lstm_70_layer_call_and_return_conditional_losses_52010q012??<
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
B__inference_lstm_70_layer_call_and_return_conditional_losses_52153q012??<
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
'__inference_lstm_70_layer_call_fn_51548}012O?L
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
'__inference_lstm_70_layer_call_fn_51559}012O?L
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
'__inference_lstm_70_layer_call_fn_51570d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
'__inference_lstm_70_layer_call_fn_51581d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
B__inference_lstm_71_layer_call_and_return_conditional_losses_52340}345O?L
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
B__inference_lstm_71_layer_call_and_return_conditional_losses_52483}345O?L
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
B__inference_lstm_71_layer_call_and_return_conditional_losses_52626m345??<
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
B__inference_lstm_71_layer_call_and_return_conditional_losses_52769m345??<
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
'__inference_lstm_71_layer_call_fn_52164p345O?L
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
'__inference_lstm_71_layer_call_fn_52175p345O?L
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
'__inference_lstm_71_layer_call_fn_52186`345??<
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
'__inference_lstm_71_layer_call_fn_52197`345??<
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
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_52854?-./??}
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
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_52886?-./??}
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
+__inference_lstm_cell_6_layer_call_fn_52805?-./??}
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
+__inference_lstm_cell_6_layer_call_fn_52822?-./??}
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
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_52952?012??}
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
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_52984?012??}
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
+__inference_lstm_cell_7_layer_call_fn_52903?012??}
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
+__inference_lstm_cell_7_layer_call_fn_52920?012??}
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
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_53050?345??}
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
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_53082?345??}
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
+__inference_lstm_cell_8_layer_call_fn_53001?345??}
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
+__inference_lstm_cell_8_layer_call_fn_53018?345??}
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
H__inference_sequential_23_layer_call_and_return_conditional_losses_49948x-./012345!"B??
8?5
+?(
lstm_69_input?????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_23_layer_call_and_return_conditional_losses_49978x-./012345!"B??
8?5
+?(
lstm_69_input?????????
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_23_layer_call_and_return_conditional_losses_50494q-./012345!";?8
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
H__inference_sequential_23_layer_call_and_return_conditional_losses_50921q-./012345!";?8
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
-__inference_sequential_23_layer_call_fn_49302k-./012345!"B??
8?5
+?(
lstm_69_input?????????
p 

 
? "???????????
-__inference_sequential_23_layer_call_fn_49918k-./012345!"B??
8?5
+?(
lstm_69_input?????????
p

 
? "???????????
-__inference_sequential_23_layer_call_fn_50040d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
-__inference_sequential_23_layer_call_fn_50067d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
#__inference_signature_wrapper_50013?-./012345!"K?H
? 
A?>
<
lstm_69_input+?(
lstm_69_input?????????"3?0
.
dense_23"?
dense_23?????????