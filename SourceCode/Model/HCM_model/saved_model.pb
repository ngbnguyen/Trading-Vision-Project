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
dense_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_32/kernel
s
#dense_32/kernel/Read/ReadVariableOpReadVariableOpdense_32/kernel*
_output_shapes

:
*
dtype0
r
dense_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_32/bias
k
!dense_32/bias/Read/ReadVariableOpReadVariableOpdense_32/bias*
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
lstm_96/lstm_cell_96/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_namelstm_96/lstm_cell_96/kernel
?
/lstm_96/lstm_cell_96/kernel/Read/ReadVariableOpReadVariableOplstm_96/lstm_cell_96/kernel*
_output_shapes
:	?*
dtype0
?
%lstm_96/lstm_cell_96/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*6
shared_name'%lstm_96/lstm_cell_96/recurrent_kernel
?
9lstm_96/lstm_cell_96/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_96/lstm_cell_96/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_96/lstm_cell_96/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namelstm_96/lstm_cell_96/bias
?
-lstm_96/lstm_cell_96/bias/Read/ReadVariableOpReadVariableOplstm_96/lstm_cell_96/bias*
_output_shapes	
:?*
dtype0
?
lstm_97/lstm_cell_97/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*,
shared_namelstm_97/lstm_cell_97/kernel
?
/lstm_97/lstm_cell_97/kernel/Read/ReadVariableOpReadVariableOplstm_97/lstm_cell_97/kernel*
_output_shapes
:	d?*
dtype0
?
%lstm_97/lstm_cell_97/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*6
shared_name'%lstm_97/lstm_cell_97/recurrent_kernel
?
9lstm_97/lstm_cell_97/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_97/lstm_cell_97/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_97/lstm_cell_97/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namelstm_97/lstm_cell_97/bias
?
-lstm_97/lstm_cell_97/bias/Read/ReadVariableOpReadVariableOplstm_97/lstm_cell_97/bias*
_output_shapes	
:?*
dtype0
?
lstm_98/lstm_cell_98/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*,
shared_namelstm_98/lstm_cell_98/kernel
?
/lstm_98/lstm_cell_98/kernel/Read/ReadVariableOpReadVariableOplstm_98/lstm_cell_98/kernel*
_output_shapes

:2(*
dtype0
?
%lstm_98/lstm_cell_98/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*6
shared_name'%lstm_98/lstm_cell_98/recurrent_kernel
?
9lstm_98/lstm_cell_98/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_98/lstm_cell_98/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_98/lstm_cell_98/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(**
shared_namelstm_98/lstm_cell_98/bias
?
-lstm_98/lstm_cell_98/bias/Read/ReadVariableOpReadVariableOplstm_98/lstm_cell_98/bias*
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
Adam/dense_32/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_32/kernel/m
?
*Adam/dense_32/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_32/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_32/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_32/bias/m
y
(Adam/dense_32/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_32/bias/m*
_output_shapes
:*
dtype0
?
"Adam/lstm_96/lstm_cell_96/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_96/lstm_cell_96/kernel/m
?
6Adam/lstm_96/lstm_cell_96/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_96/lstm_cell_96/kernel/m*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_96/lstm_cell_96/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*=
shared_name.,Adam/lstm_96/lstm_cell_96/recurrent_kernel/m
?
@Adam/lstm_96/lstm_cell_96/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_96/lstm_cell_96/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
 Adam/lstm_96/lstm_cell_96/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_96/lstm_cell_96/bias/m
?
4Adam/lstm_96/lstm_cell_96/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_96/lstm_cell_96/bias/m*
_output_shapes	
:?*
dtype0
?
"Adam/lstm_97/lstm_cell_97/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*3
shared_name$"Adam/lstm_97/lstm_cell_97/kernel/m
?
6Adam/lstm_97/lstm_cell_97/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_97/lstm_cell_97/kernel/m*
_output_shapes
:	d?*
dtype0
?
,Adam/lstm_97/lstm_cell_97/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*=
shared_name.,Adam/lstm_97/lstm_cell_97/recurrent_kernel/m
?
@Adam/lstm_97/lstm_cell_97/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_97/lstm_cell_97/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
 Adam/lstm_97/lstm_cell_97/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_97/lstm_cell_97/bias/m
?
4Adam/lstm_97/lstm_cell_97/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_97/lstm_cell_97/bias/m*
_output_shapes	
:?*
dtype0
?
"Adam/lstm_98/lstm_cell_98/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_98/lstm_cell_98/kernel/m
?
6Adam/lstm_98/lstm_cell_98/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_98/lstm_cell_98/kernel/m*
_output_shapes

:2(*
dtype0
?
,Adam/lstm_98/lstm_cell_98/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_98/lstm_cell_98/recurrent_kernel/m
?
@Adam/lstm_98/lstm_cell_98/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_98/lstm_cell_98/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
 Adam/lstm_98/lstm_cell_98/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_98/lstm_cell_98/bias/m
?
4Adam/lstm_98/lstm_cell_98/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_98/lstm_cell_98/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_32/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_32/kernel/v
?
*Adam/dense_32/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_32/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_32/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_32/bias/v
y
(Adam/dense_32/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_32/bias/v*
_output_shapes
:*
dtype0
?
"Adam/lstm_96/lstm_cell_96/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_96/lstm_cell_96/kernel/v
?
6Adam/lstm_96/lstm_cell_96/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_96/lstm_cell_96/kernel/v*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_96/lstm_cell_96/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*=
shared_name.,Adam/lstm_96/lstm_cell_96/recurrent_kernel/v
?
@Adam/lstm_96/lstm_cell_96/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_96/lstm_cell_96/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
 Adam/lstm_96/lstm_cell_96/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_96/lstm_cell_96/bias/v
?
4Adam/lstm_96/lstm_cell_96/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_96/lstm_cell_96/bias/v*
_output_shapes	
:?*
dtype0
?
"Adam/lstm_97/lstm_cell_97/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*3
shared_name$"Adam/lstm_97/lstm_cell_97/kernel/v
?
6Adam/lstm_97/lstm_cell_97/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_97/lstm_cell_97/kernel/v*
_output_shapes
:	d?*
dtype0
?
,Adam/lstm_97/lstm_cell_97/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*=
shared_name.,Adam/lstm_97/lstm_cell_97/recurrent_kernel/v
?
@Adam/lstm_97/lstm_cell_97/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_97/lstm_cell_97/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
 Adam/lstm_97/lstm_cell_97/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_97/lstm_cell_97/bias/v
?
4Adam/lstm_97/lstm_cell_97/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_97/lstm_cell_97/bias/v*
_output_shapes	
:?*
dtype0
?
"Adam/lstm_98/lstm_cell_98/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Adam/lstm_98/lstm_cell_98/kernel/v
?
6Adam/lstm_98/lstm_cell_98/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_98/lstm_cell_98/kernel/v*
_output_shapes

:2(*
dtype0
?
,Adam/lstm_98/lstm_cell_98/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_98/lstm_cell_98/recurrent_kernel/v
?
@Adam/lstm_98/lstm_cell_98/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_98/lstm_cell_98/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
 Adam/lstm_98/lstm_cell_98/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_98/lstm_cell_98/bias/v
?
4Adam/lstm_98/lstm_cell_98/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_98/lstm_cell_98/bias/v*
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
VARIABLE_VALUEdense_32/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_32/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_96/lstm_cell_96/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_96/lstm_cell_96/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_96/lstm_cell_96/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_97/lstm_cell_97/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_97/lstm_cell_97/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_97/lstm_cell_97/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_98/lstm_cell_98/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_98/lstm_cell_98/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_98/lstm_cell_98/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_32/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_32/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_96/lstm_cell_96/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_96/lstm_cell_96/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_96/lstm_cell_96/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_97/lstm_cell_97/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_97/lstm_cell_97/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_97/lstm_cell_97/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_98/lstm_cell_98/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_98/lstm_cell_98/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_98/lstm_cell_98/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_32/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_32/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_96/lstm_cell_96/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_96/lstm_cell_96/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_96/lstm_cell_96/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_97/lstm_cell_97/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_97/lstm_cell_97/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_97/lstm_cell_97/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_98/lstm_cell_98/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_98/lstm_cell_98/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_98/lstm_cell_98/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_96_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_96_inputlstm_96/lstm_cell_96/kernel%lstm_96/lstm_cell_96/recurrent_kernellstm_96/lstm_cell_96/biaslstm_97/lstm_cell_97/kernel%lstm_97/lstm_cell_97/recurrent_kernellstm_97/lstm_cell_97/biaslstm_98/lstm_cell_98/kernel%lstm_98/lstm_cell_98/recurrent_kernellstm_98/lstm_cell_98/biasdense_32/kerneldense_32/bias*
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
$__inference_signature_wrapper_142907
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_32/kernel/Read/ReadVariableOp!dense_32/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_96/lstm_cell_96/kernel/Read/ReadVariableOp9lstm_96/lstm_cell_96/recurrent_kernel/Read/ReadVariableOp-lstm_96/lstm_cell_96/bias/Read/ReadVariableOp/lstm_97/lstm_cell_97/kernel/Read/ReadVariableOp9lstm_97/lstm_cell_97/recurrent_kernel/Read/ReadVariableOp-lstm_97/lstm_cell_97/bias/Read/ReadVariableOp/lstm_98/lstm_cell_98/kernel/Read/ReadVariableOp9lstm_98/lstm_cell_98/recurrent_kernel/Read/ReadVariableOp-lstm_98/lstm_cell_98/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_32/kernel/m/Read/ReadVariableOp(Adam/dense_32/bias/m/Read/ReadVariableOp6Adam/lstm_96/lstm_cell_96/kernel/m/Read/ReadVariableOp@Adam/lstm_96/lstm_cell_96/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_96/lstm_cell_96/bias/m/Read/ReadVariableOp6Adam/lstm_97/lstm_cell_97/kernel/m/Read/ReadVariableOp@Adam/lstm_97/lstm_cell_97/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_97/lstm_cell_97/bias/m/Read/ReadVariableOp6Adam/lstm_98/lstm_cell_98/kernel/m/Read/ReadVariableOp@Adam/lstm_98/lstm_cell_98/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_98/lstm_cell_98/bias/m/Read/ReadVariableOp*Adam/dense_32/kernel/v/Read/ReadVariableOp(Adam/dense_32/bias/v/Read/ReadVariableOp6Adam/lstm_96/lstm_cell_96/kernel/v/Read/ReadVariableOp@Adam/lstm_96/lstm_cell_96/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_96/lstm_cell_96/bias/v/Read/ReadVariableOp6Adam/lstm_97/lstm_cell_97/kernel/v/Read/ReadVariableOp@Adam/lstm_97/lstm_cell_97/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_97/lstm_cell_97/bias/v/Read/ReadVariableOp6Adam/lstm_98/lstm_cell_98/kernel/v/Read/ReadVariableOp@Adam/lstm_98/lstm_cell_98/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_98/lstm_cell_98/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_146119
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_32/kerneldense_32/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_96/lstm_cell_96/kernel%lstm_96/lstm_cell_96/recurrent_kernellstm_96/lstm_cell_96/biaslstm_97/lstm_cell_97/kernel%lstm_97/lstm_cell_97/recurrent_kernellstm_97/lstm_cell_97/biaslstm_98/lstm_cell_98/kernel%lstm_98/lstm_cell_98/recurrent_kernellstm_98/lstm_cell_98/biastotalcountAdam/dense_32/kernel/mAdam/dense_32/bias/m"Adam/lstm_96/lstm_cell_96/kernel/m,Adam/lstm_96/lstm_cell_96/recurrent_kernel/m Adam/lstm_96/lstm_cell_96/bias/m"Adam/lstm_97/lstm_cell_97/kernel/m,Adam/lstm_97/lstm_cell_97/recurrent_kernel/m Adam/lstm_97/lstm_cell_97/bias/m"Adam/lstm_98/lstm_cell_98/kernel/m,Adam/lstm_98/lstm_cell_98/recurrent_kernel/m Adam/lstm_98/lstm_cell_98/bias/mAdam/dense_32/kernel/vAdam/dense_32/bias/v"Adam/lstm_96/lstm_cell_96/kernel/v,Adam/lstm_96/lstm_cell_96/recurrent_kernel/v Adam/lstm_96/lstm_cell_96/bias/v"Adam/lstm_97/lstm_cell_97/kernel/v,Adam/lstm_97/lstm_cell_97/recurrent_kernel/v Adam/lstm_97/lstm_cell_97/bias/v"Adam/lstm_98/lstm_cell_98/kernel/v,Adam/lstm_98/lstm_cell_98/recurrent_kernel/v Adam/lstm_98/lstm_cell_98/bias/v*4
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
"__inference__traced_restore_146249??+
?
?
(__inference_lstm_96_layer_call_fn_143859

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
C__inference_lstm_96_layer_call_and_return_conditional_losses_142692s
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
?
?
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_145846

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
?
?
(__inference_lstm_98_layer_call_fn_145069
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
C__inference_lstm_98_layer_call_and_return_conditional_losses_141688o
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
?
C__inference_lstm_98_layer_call_and_return_conditional_losses_141688

inputs%
lstm_cell_23_141606:2(%
lstm_cell_23_141608:
(!
lstm_cell_23_141610:(
identity??$lstm_cell_23/StatefulPartitionedCall?while;
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
$lstm_cell_23/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_23_141606lstm_cell_23_141608lstm_cell_23_141610*
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
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_141560n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_23_141606lstm_cell_23_141608lstm_cell_23_141610*
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
while_body_141619*
condR
while_cond_141618*K
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
NoOpNoOp%^lstm_cell_23/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_23/StatefulPartitionedCall$lstm_cell_23/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_142608
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_21_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_21_matmul_1_readvariableop_resource_0:	d?C
4while_lstm_cell_21_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_21_matmul_readvariableop_resource:	?F
3while_lstm_cell_21_matmul_1_readvariableop_resource:	d?A
2while_lstm_cell_21_biasadd_readvariableop_resource:	???)while/lstm_cell_21/BiasAdd/ReadVariableOp?(while/lstm_cell_21/MatMul/ReadVariableOp?*while/lstm_cell_21/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
(while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_21/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_21/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_21/addAddV2#while/lstm_cell_21/MatMul:product:0%while/lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_21/BiasAddBiasAddwhile/lstm_cell_21/add:z:01while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_21/splitSplit+while/lstm_cell_21/split/split_dim:output:0#while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitz
while/lstm_cell_21/SigmoidSigmoid!while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_21/Sigmoid_1Sigmoid!while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_21/mulMul while/lstm_cell_21/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dt
while/lstm_cell_21/ReluRelu!while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_21/mul_1Mulwhile/lstm_cell_21/Sigmoid:y:0%while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_21/add_1AddV2while/lstm_cell_21/mul:z:0while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_21/Sigmoid_2Sigmoid!while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:?????????dq
while/lstm_cell_21/Relu_1Reluwhile/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_21/mul_2Mul while/lstm_cell_21/Sigmoid_2:y:0'while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_21/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_21/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dy
while/Identity_5Identitywhile/lstm_cell_21/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp*^while/lstm_cell_21/BiasAdd/ReadVariableOp)^while/lstm_cell_21/MatMul/ReadVariableOp+^while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_21_biasadd_readvariableop_resource4while_lstm_cell_21_biasadd_readvariableop_resource_0"l
3while_lstm_cell_21_matmul_1_readvariableop_resource5while_lstm_cell_21_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_21_matmul_readvariableop_resource3while_lstm_cell_21_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2V
)while/lstm_cell_21/BiasAdd/ReadVariableOp)while/lstm_cell_21/BiasAdd/ReadVariableOp2T
(while/lstm_cell_21/MatMul/ReadVariableOp(while/lstm_cell_21/MatMul/ReadVariableOp2X
*while/lstm_cell_21/MatMul_1/ReadVariableOp*while/lstm_cell_21/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?"
?
while_body_140919
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_21_140943_0:	?.
while_lstm_cell_21_140945_0:	d?*
while_lstm_cell_21_140947_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_21_140943:	?,
while_lstm_cell_21_140945:	d?(
while_lstm_cell_21_140947:	???*while/lstm_cell_21/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
*while/lstm_cell_21/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_21_140943_0while_lstm_cell_21_140945_0while_lstm_cell_21_140947_0*
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
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_140860?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_21/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_21/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity3while/lstm_cell_21/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dy

while/NoOpNoOp+^while/lstm_cell_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_21_140943while_lstm_cell_21_140943_0"8
while_lstm_cell_21_140945while_lstm_cell_21_140945_0"8
while_lstm_cell_21_140947while_lstm_cell_21_140947_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_21/StatefulPartitionedCall*while/lstm_cell_21/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
C__inference_lstm_97_layer_call_and_return_conditional_losses_144761
inputs_0>
+lstm_cell_22_matmul_readvariableop_resource:	d?@
-lstm_cell_22_matmul_1_readvariableop_resource:	2?;
,lstm_cell_22_biasadd_readvariableop_resource:	?
identity??#lstm_cell_22/BiasAdd/ReadVariableOp?"lstm_cell_22/MatMul/ReadVariableOp?$lstm_cell_22/MatMul_1/ReadVariableOp?while=
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
"lstm_cell_22/MatMul/ReadVariableOpReadVariableOp+lstm_cell_22_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_22/MatMulMatMulstrided_slice_2:output:0*lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_22/MatMul_1MatMulzeros:output:0,lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_22/addAddV2lstm_cell_22/MatMul:product:0lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_22/BiasAddBiasAddlstm_cell_22/add:z:0+lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_22/splitSplit%lstm_cell_22/split/split_dim:output:0lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitn
lstm_cell_22/SigmoidSigmoidlstm_cell_22/split:output:0*
T0*'
_output_shapes
:?????????2p
lstm_cell_22/Sigmoid_1Sigmoidlstm_cell_22/split:output:1*
T0*'
_output_shapes
:?????????2w
lstm_cell_22/mulMullstm_cell_22/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2h
lstm_cell_22/ReluRelulstm_cell_22/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_22/mul_1Mullstm_cell_22/Sigmoid:y:0lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:?????????2{
lstm_cell_22/add_1AddV2lstm_cell_22/mul:z:0lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:?????????2p
lstm_cell_22/Sigmoid_2Sigmoidlstm_cell_22/split:output:3*
T0*'
_output_shapes
:?????????2e
lstm_cell_22/Relu_1Relulstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_22/mul_2Mullstm_cell_22/Sigmoid_2:y:0!lstm_cell_22/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_22_matmul_readvariableop_resource-lstm_cell_22_matmul_1_readvariableop_resource,lstm_cell_22_biasadd_readvariableop_resource*
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
while_body_144677*
condR
while_cond_144676*K
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
NoOpNoOp$^lstm_cell_22/BiasAdd/ReadVariableOp#^lstm_cell_22/MatMul/ReadVariableOp%^lstm_cell_22/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2J
#lstm_cell_22/BiasAdd/ReadVariableOp#lstm_cell_22/BiasAdd/ReadVariableOp2H
"lstm_cell_22/MatMul/ReadVariableOp"lstm_cell_22/MatMul/ReadVariableOp2L
$lstm_cell_22/MatMul_1/ReadVariableOp$lstm_cell_22/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
I__inference_sequential_32_layer_call_and_return_conditional_losses_142760

inputs!
lstm_96_142733:	?!
lstm_96_142735:	d?
lstm_96_142737:	?!
lstm_97_142740:	d?!
lstm_97_142742:	2?
lstm_97_142744:	? 
lstm_98_142747:2( 
lstm_98_142749:
(
lstm_98_142751:(!
dense_32_142754:

dense_32_142756:
identity?? dense_32/StatefulPartitionedCall?lstm_96/StatefulPartitionedCall?lstm_97/StatefulPartitionedCall?lstm_98/StatefulPartitionedCall?
lstm_96/StatefulPartitionedCallStatefulPartitionedCallinputslstm_96_142733lstm_96_142735lstm_96_142737*
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
C__inference_lstm_96_layer_call_and_return_conditional_losses_142692?
lstm_97/StatefulPartitionedCallStatefulPartitionedCall(lstm_96/StatefulPartitionedCall:output:0lstm_97_142740lstm_97_142742lstm_97_142744*
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
C__inference_lstm_97_layer_call_and_return_conditional_losses_142527?
lstm_98/StatefulPartitionedCallStatefulPartitionedCall(lstm_97/StatefulPartitionedCall:output:0lstm_98_142747lstm_98_142749lstm_98_142751*
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
C__inference_lstm_98_layer_call_and_return_conditional_losses_142362?
 dense_32/StatefulPartitionedCallStatefulPartitionedCall(lstm_98/StatefulPartitionedCall:output:0dense_32_142754dense_32_142756*
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
D__inference_dense_32_layer_call_and_return_conditional_losses_142164x
IdentityIdentity)dense_32/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_32/StatefulPartitionedCall ^lstm_96/StatefulPartitionedCall ^lstm_97/StatefulPartitionedCall ^lstm_98/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2B
lstm_96/StatefulPartitionedCalllstm_96/StatefulPartitionedCall2B
lstm_97/StatefulPartitionedCalllstm_97/StatefulPartitionedCall2B
lstm_98/StatefulPartitionedCalllstm_98/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?A
?

lstm_98_while_body_143725,
(lstm_98_while_lstm_98_while_loop_counter2
.lstm_98_while_lstm_98_while_maximum_iterations
lstm_98_while_placeholder
lstm_98_while_placeholder_1
lstm_98_while_placeholder_2
lstm_98_while_placeholder_3+
'lstm_98_while_lstm_98_strided_slice_1_0g
clstm_98_while_tensorarrayv2read_tensorlistgetitem_lstm_98_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_98_while_lstm_cell_23_matmul_readvariableop_resource_0:2(O
=lstm_98_while_lstm_cell_23_matmul_1_readvariableop_resource_0:
(J
<lstm_98_while_lstm_cell_23_biasadd_readvariableop_resource_0:(
lstm_98_while_identity
lstm_98_while_identity_1
lstm_98_while_identity_2
lstm_98_while_identity_3
lstm_98_while_identity_4
lstm_98_while_identity_5)
%lstm_98_while_lstm_98_strided_slice_1e
alstm_98_while_tensorarrayv2read_tensorlistgetitem_lstm_98_tensorarrayunstack_tensorlistfromtensorK
9lstm_98_while_lstm_cell_23_matmul_readvariableop_resource:2(M
;lstm_98_while_lstm_cell_23_matmul_1_readvariableop_resource:
(H
:lstm_98_while_lstm_cell_23_biasadd_readvariableop_resource:(??1lstm_98/while/lstm_cell_23/BiasAdd/ReadVariableOp?0lstm_98/while/lstm_cell_23/MatMul/ReadVariableOp?2lstm_98/while/lstm_cell_23/MatMul_1/ReadVariableOp?
?lstm_98/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
1lstm_98/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_98_while_tensorarrayv2read_tensorlistgetitem_lstm_98_tensorarrayunstack_tensorlistfromtensor_0lstm_98_while_placeholderHlstm_98/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
0lstm_98/while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp;lstm_98_while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
!lstm_98/while/lstm_cell_23/MatMulMatMul8lstm_98/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_98/while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
2lstm_98/while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp=lstm_98_while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
#lstm_98/while/lstm_cell_23/MatMul_1MatMullstm_98_while_placeholder_2:lstm_98/while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_98/while/lstm_cell_23/addAddV2+lstm_98/while/lstm_cell_23/MatMul:product:0-lstm_98/while/lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
1lstm_98/while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp<lstm_98_while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
"lstm_98/while/lstm_cell_23/BiasAddBiasAdd"lstm_98/while/lstm_cell_23/add:z:09lstm_98/while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(l
*lstm_98/while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
 lstm_98/while/lstm_cell_23/splitSplit3lstm_98/while/lstm_cell_23/split/split_dim:output:0+lstm_98/while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
"lstm_98/while/lstm_cell_23/SigmoidSigmoid)lstm_98/while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:?????????
?
$lstm_98/while/lstm_cell_23/Sigmoid_1Sigmoid)lstm_98/while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_98/while/lstm_cell_23/mulMul(lstm_98/while/lstm_cell_23/Sigmoid_1:y:0lstm_98_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
lstm_98/while/lstm_cell_23/ReluRelu)lstm_98/while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:?????????
?
 lstm_98/while/lstm_cell_23/mul_1Mul&lstm_98/while/lstm_cell_23/Sigmoid:y:0-lstm_98/while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
 lstm_98/while/lstm_cell_23/add_1AddV2"lstm_98/while/lstm_cell_23/mul:z:0$lstm_98/while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
$lstm_98/while/lstm_cell_23/Sigmoid_2Sigmoid)lstm_98/while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:?????????
?
!lstm_98/while/lstm_cell_23/Relu_1Relu$lstm_98/while/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_98/while/lstm_cell_23/mul_2Mul(lstm_98/while/lstm_cell_23/Sigmoid_2:y:0/lstm_98/while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
2lstm_98/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_98_while_placeholder_1lstm_98_while_placeholder$lstm_98/while/lstm_cell_23/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_98/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_98/while/addAddV2lstm_98_while_placeholderlstm_98/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_98/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_98/while/add_1AddV2(lstm_98_while_lstm_98_while_loop_counterlstm_98/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_98/while/IdentityIdentitylstm_98/while/add_1:z:0^lstm_98/while/NoOp*
T0*
_output_shapes
: ?
lstm_98/while/Identity_1Identity.lstm_98_while_lstm_98_while_maximum_iterations^lstm_98/while/NoOp*
T0*
_output_shapes
: q
lstm_98/while/Identity_2Identitylstm_98/while/add:z:0^lstm_98/while/NoOp*
T0*
_output_shapes
: ?
lstm_98/while/Identity_3IdentityBlstm_98/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_98/while/NoOp*
T0*
_output_shapes
: ?
lstm_98/while/Identity_4Identity$lstm_98/while/lstm_cell_23/mul_2:z:0^lstm_98/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_98/while/Identity_5Identity$lstm_98/while/lstm_cell_23/add_1:z:0^lstm_98/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_98/while/NoOpNoOp2^lstm_98/while/lstm_cell_23/BiasAdd/ReadVariableOp1^lstm_98/while/lstm_cell_23/MatMul/ReadVariableOp3^lstm_98/while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_98_while_identitylstm_98/while/Identity:output:0"=
lstm_98_while_identity_1!lstm_98/while/Identity_1:output:0"=
lstm_98_while_identity_2!lstm_98/while/Identity_2:output:0"=
lstm_98_while_identity_3!lstm_98/while/Identity_3:output:0"=
lstm_98_while_identity_4!lstm_98/while/Identity_4:output:0"=
lstm_98_while_identity_5!lstm_98/while/Identity_5:output:0"P
%lstm_98_while_lstm_98_strided_slice_1'lstm_98_while_lstm_98_strided_slice_1_0"z
:lstm_98_while_lstm_cell_23_biasadd_readvariableop_resource<lstm_98_while_lstm_cell_23_biasadd_readvariableop_resource_0"|
;lstm_98_while_lstm_cell_23_matmul_1_readvariableop_resource=lstm_98_while_lstm_cell_23_matmul_1_readvariableop_resource_0"x
9lstm_98_while_lstm_cell_23_matmul_readvariableop_resource;lstm_98_while_lstm_cell_23_matmul_readvariableop_resource_0"?
alstm_98_while_tensorarrayv2read_tensorlistgetitem_lstm_98_tensorarrayunstack_tensorlistfromtensorclstm_98_while_tensorarrayv2read_tensorlistgetitem_lstm_98_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2f
1lstm_98/while/lstm_cell_23/BiasAdd/ReadVariableOp1lstm_98/while/lstm_cell_23/BiasAdd/ReadVariableOp2d
0lstm_98/while/lstm_cell_23/MatMul/ReadVariableOp0lstm_98/while/lstm_cell_23/MatMul/ReadVariableOp2h
2lstm_98/while/lstm_cell_23/MatMul_1/ReadVariableOp2lstm_98/while/lstm_cell_23/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
.__inference_sequential_32_layer_call_fn_142196
lstm_96_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_96_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
I__inference_sequential_32_layer_call_and_return_conditional_losses_142171o
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
_user_specified_namelstm_96_input
?
?
I__inference_sequential_32_layer_call_and_return_conditional_losses_142171

inputs!
lstm_96_141847:	?!
lstm_96_141849:	d?
lstm_96_141851:	?!
lstm_97_141997:	d?!
lstm_97_141999:	2?
lstm_97_142001:	? 
lstm_98_142147:2( 
lstm_98_142149:
(
lstm_98_142151:(!
dense_32_142165:

dense_32_142167:
identity?? dense_32/StatefulPartitionedCall?lstm_96/StatefulPartitionedCall?lstm_97/StatefulPartitionedCall?lstm_98/StatefulPartitionedCall?
lstm_96/StatefulPartitionedCallStatefulPartitionedCallinputslstm_96_141847lstm_96_141849lstm_96_141851*
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
C__inference_lstm_96_layer_call_and_return_conditional_losses_141846?
lstm_97/StatefulPartitionedCallStatefulPartitionedCall(lstm_96/StatefulPartitionedCall:output:0lstm_97_141997lstm_97_141999lstm_97_142001*
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
C__inference_lstm_97_layer_call_and_return_conditional_losses_141996?
lstm_98/StatefulPartitionedCallStatefulPartitionedCall(lstm_97/StatefulPartitionedCall:output:0lstm_98_142147lstm_98_142149lstm_98_142151*
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
C__inference_lstm_98_layer_call_and_return_conditional_losses_142146?
 dense_32/StatefulPartitionedCallStatefulPartitionedCall(lstm_98/StatefulPartitionedCall:output:0dense_32_142165dense_32_142167*
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
D__inference_dense_32_layer_call_and_return_conditional_losses_142164x
IdentityIdentity)dense_32/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_32/StatefulPartitionedCall ^lstm_96/StatefulPartitionedCall ^lstm_97/StatefulPartitionedCall ^lstm_98/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2B
lstm_96/StatefulPartitionedCalllstm_96/StatefulPartitionedCall2B
lstm_97/StatefulPartitionedCalllstm_97/StatefulPartitionedCall2B
lstm_98/StatefulPartitionedCalllstm_98/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_140714

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

?
lstm_96_while_cond_143446,
(lstm_96_while_lstm_96_while_loop_counter2
.lstm_96_while_lstm_96_while_maximum_iterations
lstm_96_while_placeholder
lstm_96_while_placeholder_1
lstm_96_while_placeholder_2
lstm_96_while_placeholder_3.
*lstm_96_while_less_lstm_96_strided_slice_1D
@lstm_96_while_lstm_96_while_cond_143446___redundant_placeholder0D
@lstm_96_while_lstm_96_while_cond_143446___redundant_placeholder1D
@lstm_96_while_lstm_96_while_cond_143446___redundant_placeholder2D
@lstm_96_while_lstm_96_while_cond_143446___redundant_placeholder3
lstm_96_while_identity
?
lstm_96/while/LessLesslstm_96_while_placeholder*lstm_96_while_less_lstm_96_strided_slice_1*
T0*
_output_shapes
: [
lstm_96/while/IdentityIdentitylstm_96/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_96_while_identitylstm_96/while/Identity:output:0*(
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
while_cond_141077
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_141077___redundant_placeholder04
0while_while_cond_141077___redundant_placeholder14
0while_while_cond_141077___redundant_placeholder24
0while_while_cond_141077___redundant_placeholder3
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
D__inference_dense_32_layer_call_and_return_conditional_losses_145682

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

?
lstm_97_while_cond_143585,
(lstm_97_while_lstm_97_while_loop_counter2
.lstm_97_while_lstm_97_while_maximum_iterations
lstm_97_while_placeholder
lstm_97_while_placeholder_1
lstm_97_while_placeholder_2
lstm_97_while_placeholder_3.
*lstm_97_while_less_lstm_97_strided_slice_1D
@lstm_97_while_lstm_97_while_cond_143585___redundant_placeholder0D
@lstm_97_while_lstm_97_while_cond_143585___redundant_placeholder1D
@lstm_97_while_lstm_97_while_cond_143585___redundant_placeholder2D
@lstm_97_while_lstm_97_while_cond_143585___redundant_placeholder3
lstm_97_while_identity
?
lstm_97/while/LessLesslstm_97_while_placeholder*lstm_97_while_less_lstm_97_strided_slice_1*
T0*
_output_shapes
: [
lstm_97/while/IdentityIdentitylstm_97/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_97_while_identitylstm_97/while/Identity:output:0*(
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
C__inference_lstm_98_layer_call_and_return_conditional_losses_145234
inputs_0=
+lstm_cell_23_matmul_readvariableop_resource:2(?
-lstm_cell_23_matmul_1_readvariableop_resource:
(:
,lstm_cell_23_biasadd_readvariableop_resource:(
identity??#lstm_cell_23/BiasAdd/ReadVariableOp?"lstm_cell_23/MatMul/ReadVariableOp?$lstm_cell_23/MatMul_1/ReadVariableOp?while=
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
"lstm_cell_23/MatMul/ReadVariableOpReadVariableOp+lstm_cell_23_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_23/MatMulMatMulstrided_slice_2:output:0*lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_23/MatMul_1MatMulzeros:output:0,lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_23/addAddV2lstm_cell_23/MatMul:product:0lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
#lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_23/BiasAddBiasAddlstm_cell_23/add:z:0+lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(^
lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_23/splitSplit%lstm_cell_23/split/split_dim:output:0lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitn
lstm_cell_23/SigmoidSigmoidlstm_cell_23/split:output:0*
T0*'
_output_shapes
:?????????
p
lstm_cell_23/Sigmoid_1Sigmoidlstm_cell_23/split:output:1*
T0*'
_output_shapes
:?????????
w
lstm_cell_23/mulMullstm_cell_23/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
h
lstm_cell_23/ReluRelulstm_cell_23/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_23/mul_1Mullstm_cell_23/Sigmoid:y:0lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:?????????
{
lstm_cell_23/add_1AddV2lstm_cell_23/mul:z:0lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:?????????
p
lstm_cell_23/Sigmoid_2Sigmoidlstm_cell_23/split:output:3*
T0*'
_output_shapes
:?????????
e
lstm_cell_23/Relu_1Relulstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_23/mul_2Mullstm_cell_23/Sigmoid_2:y:0!lstm_cell_23/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_23_matmul_readvariableop_resource-lstm_cell_23_matmul_1_readvariableop_resource,lstm_cell_23_biasadd_readvariableop_resource*
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
while_body_145150*
condR
while_cond_145149*K
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
NoOpNoOp$^lstm_cell_23/BiasAdd/ReadVariableOp#^lstm_cell_23/MatMul/ReadVariableOp%^lstm_cell_23/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2J
#lstm_cell_23/BiasAdd/ReadVariableOp#lstm_cell_23/BiasAdd/ReadVariableOp2H
"lstm_cell_23/MatMul/ReadVariableOp"lstm_cell_23/MatMul/ReadVariableOp2L
$lstm_cell_23/MatMul_1/ReadVariableOp$lstm_cell_23/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
C__inference_lstm_97_layer_call_and_return_conditional_losses_141338

inputs&
lstm_cell_22_141256:	d?&
lstm_cell_22_141258:	2?"
lstm_cell_22_141260:	?
identity??$lstm_cell_22/StatefulPartitionedCall?while;
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
$lstm_cell_22/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_22_141256lstm_cell_22_141258lstm_cell_22_141260*
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
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_141210n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_22_141256lstm_cell_22_141258lstm_cell_22_141260*
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
while_body_141269*
condR
while_cond_141268*K
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
NoOpNoOp%^lstm_cell_22/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_22/StatefulPartitionedCall$lstm_cell_22/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?7
?
while_body_145293
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_23_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_23_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_23_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_23_matmul_readvariableop_resource:2(E
3while_lstm_cell_23_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_23_biasadd_readvariableop_resource:(??)while/lstm_cell_23/BiasAdd/ReadVariableOp?(while/lstm_cell_23/MatMul/ReadVariableOp?*while/lstm_cell_23/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
(while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_23/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_23/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_23/addAddV2#while/lstm_cell_23/MatMul:product:0%while/lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
)while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_23/BiasAddBiasAddwhile/lstm_cell_23/add:z:01while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
"while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_23/splitSplit+while/lstm_cell_23/split/split_dim:output:0#while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitz
while/lstm_cell_23/SigmoidSigmoid!while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:?????????
|
while/lstm_cell_23/Sigmoid_1Sigmoid!while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_23/mulMul while/lstm_cell_23/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
t
while/lstm_cell_23/ReluRelu!while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_23/mul_1Mulwhile/lstm_cell_23/Sigmoid:y:0%while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_23/add_1AddV2while/lstm_cell_23/mul:z:0while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:?????????
|
while/lstm_cell_23/Sigmoid_2Sigmoid!while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:?????????
q
while/lstm_cell_23/Relu_1Reluwhile/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_23/mul_2Mul while/lstm_cell_23/Sigmoid_2:y:0'while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_23/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_23/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
y
while/Identity_5Identitywhile/lstm_cell_23/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp*^while/lstm_cell_23/BiasAdd/ReadVariableOp)^while/lstm_cell_23/MatMul/ReadVariableOp+^while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_23_biasadd_readvariableop_resource4while_lstm_cell_23_biasadd_readvariableop_resource_0"l
3while_lstm_cell_23_matmul_1_readvariableop_resource5while_lstm_cell_23_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_23_matmul_readvariableop_resource3while_lstm_cell_23_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2V
)while/lstm_cell_23/BiasAdd/ReadVariableOp)while/lstm_cell_23/BiasAdd/ReadVariableOp2T
(while/lstm_cell_23/MatMul/ReadVariableOp(while/lstm_cell_23/MatMul/ReadVariableOp2X
*while/lstm_cell_23/MatMul_1/ReadVariableOp*while/lstm_cell_23/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
(__inference_lstm_97_layer_call_fn_144442
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
C__inference_lstm_97_layer_call_and_return_conditional_losses_141147|
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
?J
?
C__inference_lstm_97_layer_call_and_return_conditional_losses_144618
inputs_0>
+lstm_cell_22_matmul_readvariableop_resource:	d?@
-lstm_cell_22_matmul_1_readvariableop_resource:	2?;
,lstm_cell_22_biasadd_readvariableop_resource:	?
identity??#lstm_cell_22/BiasAdd/ReadVariableOp?"lstm_cell_22/MatMul/ReadVariableOp?$lstm_cell_22/MatMul_1/ReadVariableOp?while=
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
"lstm_cell_22/MatMul/ReadVariableOpReadVariableOp+lstm_cell_22_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_22/MatMulMatMulstrided_slice_2:output:0*lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_22/MatMul_1MatMulzeros:output:0,lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_22/addAddV2lstm_cell_22/MatMul:product:0lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_22/BiasAddBiasAddlstm_cell_22/add:z:0+lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_22/splitSplit%lstm_cell_22/split/split_dim:output:0lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitn
lstm_cell_22/SigmoidSigmoidlstm_cell_22/split:output:0*
T0*'
_output_shapes
:?????????2p
lstm_cell_22/Sigmoid_1Sigmoidlstm_cell_22/split:output:1*
T0*'
_output_shapes
:?????????2w
lstm_cell_22/mulMullstm_cell_22/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2h
lstm_cell_22/ReluRelulstm_cell_22/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_22/mul_1Mullstm_cell_22/Sigmoid:y:0lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:?????????2{
lstm_cell_22/add_1AddV2lstm_cell_22/mul:z:0lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:?????????2p
lstm_cell_22/Sigmoid_2Sigmoidlstm_cell_22/split:output:3*
T0*'
_output_shapes
:?????????2e
lstm_cell_22/Relu_1Relulstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_22/mul_2Mullstm_cell_22/Sigmoid_2:y:0!lstm_cell_22/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_22_matmul_readvariableop_resource-lstm_cell_22_matmul_1_readvariableop_resource,lstm_cell_22_biasadd_readvariableop_resource*
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
while_body_144534*
condR
while_cond_144533*K
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
NoOpNoOp$^lstm_cell_22/BiasAdd/ReadVariableOp#^lstm_cell_22/MatMul/ReadVariableOp%^lstm_cell_22/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2J
#lstm_cell_22/BiasAdd/ReadVariableOp#lstm_cell_22/BiasAdd/ReadVariableOp2H
"lstm_cell_22/MatMul/ReadVariableOp"lstm_cell_22/MatMul/ReadVariableOp2L
$lstm_cell_22/MatMul_1/ReadVariableOp$lstm_cell_22/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
??
?

I__inference_sequential_32_layer_call_and_return_conditional_losses_143815

inputsF
3lstm_96_lstm_cell_21_matmul_readvariableop_resource:	?H
5lstm_96_lstm_cell_21_matmul_1_readvariableop_resource:	d?C
4lstm_96_lstm_cell_21_biasadd_readvariableop_resource:	?F
3lstm_97_lstm_cell_22_matmul_readvariableop_resource:	d?H
5lstm_97_lstm_cell_22_matmul_1_readvariableop_resource:	2?C
4lstm_97_lstm_cell_22_biasadd_readvariableop_resource:	?E
3lstm_98_lstm_cell_23_matmul_readvariableop_resource:2(G
5lstm_98_lstm_cell_23_matmul_1_readvariableop_resource:
(B
4lstm_98_lstm_cell_23_biasadd_readvariableop_resource:(9
'dense_32_matmul_readvariableop_resource:
6
(dense_32_biasadd_readvariableop_resource:
identity??dense_32/BiasAdd/ReadVariableOp?dense_32/MatMul/ReadVariableOp?+lstm_96/lstm_cell_21/BiasAdd/ReadVariableOp?*lstm_96/lstm_cell_21/MatMul/ReadVariableOp?,lstm_96/lstm_cell_21/MatMul_1/ReadVariableOp?lstm_96/while?+lstm_97/lstm_cell_22/BiasAdd/ReadVariableOp?*lstm_97/lstm_cell_22/MatMul/ReadVariableOp?,lstm_97/lstm_cell_22/MatMul_1/ReadVariableOp?lstm_97/while?+lstm_98/lstm_cell_23/BiasAdd/ReadVariableOp?*lstm_98/lstm_cell_23/MatMul/ReadVariableOp?,lstm_98/lstm_cell_23/MatMul_1/ReadVariableOp?lstm_98/whileC
lstm_96/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_96/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_96/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_96/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_96/strided_sliceStridedSlicelstm_96/Shape:output:0$lstm_96/strided_slice/stack:output:0&lstm_96/strided_slice/stack_1:output:0&lstm_96/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_96/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_96/zeros/packedPacklstm_96/strided_slice:output:0lstm_96/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_96/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_96/zerosFilllstm_96/zeros/packed:output:0lstm_96/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dZ
lstm_96/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_96/zeros_1/packedPacklstm_96/strided_slice:output:0!lstm_96/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_96/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_96/zeros_1Filllstm_96/zeros_1/packed:output:0lstm_96/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dk
lstm_96/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_96/transpose	Transposeinputslstm_96/transpose/perm:output:0*
T0*+
_output_shapes
:?????????T
lstm_96/Shape_1Shapelstm_96/transpose:y:0*
T0*
_output_shapes
:g
lstm_96/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_96/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_96/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_96/strided_slice_1StridedSlicelstm_96/Shape_1:output:0&lstm_96/strided_slice_1/stack:output:0(lstm_96/strided_slice_1/stack_1:output:0(lstm_96/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_96/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_96/TensorArrayV2TensorListReserve,lstm_96/TensorArrayV2/element_shape:output:0 lstm_96/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_96/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
/lstm_96/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_96/transpose:y:0Flstm_96/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_96/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_96/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_96/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_96/strided_slice_2StridedSlicelstm_96/transpose:y:0&lstm_96/strided_slice_2/stack:output:0(lstm_96/strided_slice_2/stack_1:output:0(lstm_96/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
*lstm_96/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp3lstm_96_lstm_cell_21_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_96/lstm_cell_21/MatMulMatMul lstm_96/strided_slice_2:output:02lstm_96/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,lstm_96/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp5lstm_96_lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_96/lstm_cell_21/MatMul_1MatMullstm_96/zeros:output:04lstm_96/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_96/lstm_cell_21/addAddV2%lstm_96/lstm_cell_21/MatMul:product:0'lstm_96/lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
+lstm_96/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp4lstm_96_lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_96/lstm_cell_21/BiasAddBiasAddlstm_96/lstm_cell_21/add:z:03lstm_96/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????f
$lstm_96/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_96/lstm_cell_21/splitSplit-lstm_96/lstm_cell_21/split/split_dim:output:0%lstm_96/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split~
lstm_96/lstm_cell_21/SigmoidSigmoid#lstm_96/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:?????????d?
lstm_96/lstm_cell_21/Sigmoid_1Sigmoid#lstm_96/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_96/lstm_cell_21/mulMul"lstm_96/lstm_cell_21/Sigmoid_1:y:0lstm_96/zeros_1:output:0*
T0*'
_output_shapes
:?????????dx
lstm_96/lstm_cell_21/ReluRelu#lstm_96/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_96/lstm_cell_21/mul_1Mul lstm_96/lstm_cell_21/Sigmoid:y:0'lstm_96/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_96/lstm_cell_21/add_1AddV2lstm_96/lstm_cell_21/mul:z:0lstm_96/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_96/lstm_cell_21/Sigmoid_2Sigmoid#lstm_96/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:?????????du
lstm_96/lstm_cell_21/Relu_1Relulstm_96/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_96/lstm_cell_21/mul_2Mul"lstm_96/lstm_cell_21/Sigmoid_2:y:0)lstm_96/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dv
%lstm_96/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_96/TensorArrayV2_1TensorListReserve.lstm_96/TensorArrayV2_1/element_shape:output:0 lstm_96/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_96/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_96/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_96/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_96/whileWhile#lstm_96/while/loop_counter:output:0)lstm_96/while/maximum_iterations:output:0lstm_96/time:output:0 lstm_96/TensorArrayV2_1:handle:0lstm_96/zeros:output:0lstm_96/zeros_1:output:0 lstm_96/strided_slice_1:output:0?lstm_96/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_96_lstm_cell_21_matmul_readvariableop_resource5lstm_96_lstm_cell_21_matmul_1_readvariableop_resource4lstm_96_lstm_cell_21_biasadd_readvariableop_resource*
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
lstm_96_while_body_143447*%
condR
lstm_96_while_cond_143446*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
8lstm_96/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
*lstm_96/TensorArrayV2Stack/TensorListStackTensorListStacklstm_96/while:output:3Alstm_96/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0p
lstm_96/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_96/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_96/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_96/strided_slice_3StridedSlice3lstm_96/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_96/strided_slice_3/stack:output:0(lstm_96/strided_slice_3/stack_1:output:0(lstm_96/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskm
lstm_96/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_96/transpose_1	Transpose3lstm_96/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_96/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dc
lstm_96/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_97/ShapeShapelstm_96/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_97/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_97/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_97/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_97/strided_sliceStridedSlicelstm_97/Shape:output:0$lstm_97/strided_slice/stack:output:0&lstm_97/strided_slice/stack_1:output:0&lstm_97/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_97/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_97/zeros/packedPacklstm_97/strided_slice:output:0lstm_97/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_97/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_97/zerosFilllstm_97/zeros/packed:output:0lstm_97/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2Z
lstm_97/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_97/zeros_1/packedPacklstm_97/strided_slice:output:0!lstm_97/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_97/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_97/zeros_1Filllstm_97/zeros_1/packed:output:0lstm_97/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2k
lstm_97/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_97/transpose	Transposelstm_96/transpose_1:y:0lstm_97/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dT
lstm_97/Shape_1Shapelstm_97/transpose:y:0*
T0*
_output_shapes
:g
lstm_97/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_97/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_97/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_97/strided_slice_1StridedSlicelstm_97/Shape_1:output:0&lstm_97/strided_slice_1/stack:output:0(lstm_97/strided_slice_1/stack_1:output:0(lstm_97/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_97/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_97/TensorArrayV2TensorListReserve,lstm_97/TensorArrayV2/element_shape:output:0 lstm_97/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_97/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
/lstm_97/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_97/transpose:y:0Flstm_97/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_97/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_97/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_97/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_97/strided_slice_2StridedSlicelstm_97/transpose:y:0&lstm_97/strided_slice_2/stack:output:0(lstm_97/strided_slice_2/stack_1:output:0(lstm_97/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
*lstm_97/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp3lstm_97_lstm_cell_22_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_97/lstm_cell_22/MatMulMatMul lstm_97/strided_slice_2:output:02lstm_97/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,lstm_97/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp5lstm_97_lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_97/lstm_cell_22/MatMul_1MatMullstm_97/zeros:output:04lstm_97/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_97/lstm_cell_22/addAddV2%lstm_97/lstm_cell_22/MatMul:product:0'lstm_97/lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
+lstm_97/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp4lstm_97_lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_97/lstm_cell_22/BiasAddBiasAddlstm_97/lstm_cell_22/add:z:03lstm_97/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????f
$lstm_97/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_97/lstm_cell_22/splitSplit-lstm_97/lstm_cell_22/split/split_dim:output:0%lstm_97/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split~
lstm_97/lstm_cell_22/SigmoidSigmoid#lstm_97/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:?????????2?
lstm_97/lstm_cell_22/Sigmoid_1Sigmoid#lstm_97/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_97/lstm_cell_22/mulMul"lstm_97/lstm_cell_22/Sigmoid_1:y:0lstm_97/zeros_1:output:0*
T0*'
_output_shapes
:?????????2x
lstm_97/lstm_cell_22/ReluRelu#lstm_97/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_97/lstm_cell_22/mul_1Mul lstm_97/lstm_cell_22/Sigmoid:y:0'lstm_97/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_97/lstm_cell_22/add_1AddV2lstm_97/lstm_cell_22/mul:z:0lstm_97/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_97/lstm_cell_22/Sigmoid_2Sigmoid#lstm_97/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:?????????2u
lstm_97/lstm_cell_22/Relu_1Relulstm_97/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_97/lstm_cell_22/mul_2Mul"lstm_97/lstm_cell_22/Sigmoid_2:y:0)lstm_97/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2v
%lstm_97/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_97/TensorArrayV2_1TensorListReserve.lstm_97/TensorArrayV2_1/element_shape:output:0 lstm_97/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_97/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_97/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_97/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_97/whileWhile#lstm_97/while/loop_counter:output:0)lstm_97/while/maximum_iterations:output:0lstm_97/time:output:0 lstm_97/TensorArrayV2_1:handle:0lstm_97/zeros:output:0lstm_97/zeros_1:output:0 lstm_97/strided_slice_1:output:0?lstm_97/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_97_lstm_cell_22_matmul_readvariableop_resource5lstm_97_lstm_cell_22_matmul_1_readvariableop_resource4lstm_97_lstm_cell_22_biasadd_readvariableop_resource*
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
lstm_97_while_body_143586*%
condR
lstm_97_while_cond_143585*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
8lstm_97/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
*lstm_97/TensorArrayV2Stack/TensorListStackTensorListStacklstm_97/while:output:3Alstm_97/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0p
lstm_97/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_97/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_97/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_97/strided_slice_3StridedSlice3lstm_97/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_97/strided_slice_3/stack:output:0(lstm_97/strided_slice_3/stack_1:output:0(lstm_97/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskm
lstm_97/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_97/transpose_1	Transpose3lstm_97/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_97/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2c
lstm_97/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_98/ShapeShapelstm_97/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_98/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_98/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_98/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_98/strided_sliceStridedSlicelstm_98/Shape:output:0$lstm_98/strided_slice/stack:output:0&lstm_98/strided_slice/stack_1:output:0&lstm_98/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_98/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_98/zeros/packedPacklstm_98/strided_slice:output:0lstm_98/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_98/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_98/zerosFilllstm_98/zeros/packed:output:0lstm_98/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
Z
lstm_98/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_98/zeros_1/packedPacklstm_98/strided_slice:output:0!lstm_98/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_98/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_98/zeros_1Filllstm_98/zeros_1/packed:output:0lstm_98/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
k
lstm_98/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_98/transpose	Transposelstm_97/transpose_1:y:0lstm_98/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2T
lstm_98/Shape_1Shapelstm_98/transpose:y:0*
T0*
_output_shapes
:g
lstm_98/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_98/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_98/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_98/strided_slice_1StridedSlicelstm_98/Shape_1:output:0&lstm_98/strided_slice_1/stack:output:0(lstm_98/strided_slice_1/stack_1:output:0(lstm_98/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_98/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_98/TensorArrayV2TensorListReserve,lstm_98/TensorArrayV2/element_shape:output:0 lstm_98/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_98/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
/lstm_98/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_98/transpose:y:0Flstm_98/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_98/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_98/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_98/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_98/strided_slice_2StridedSlicelstm_98/transpose:y:0&lstm_98/strided_slice_2/stack:output:0(lstm_98/strided_slice_2/stack_1:output:0(lstm_98/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
*lstm_98/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp3lstm_98_lstm_cell_23_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_98/lstm_cell_23/MatMulMatMul lstm_98/strided_slice_2:output:02lstm_98/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
,lstm_98/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp5lstm_98_lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_98/lstm_cell_23/MatMul_1MatMullstm_98/zeros:output:04lstm_98/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_98/lstm_cell_23/addAddV2%lstm_98/lstm_cell_23/MatMul:product:0'lstm_98/lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
+lstm_98/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp4lstm_98_lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_98/lstm_cell_23/BiasAddBiasAddlstm_98/lstm_cell_23/add:z:03lstm_98/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(f
$lstm_98/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_98/lstm_cell_23/splitSplit-lstm_98/lstm_cell_23/split/split_dim:output:0%lstm_98/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split~
lstm_98/lstm_cell_23/SigmoidSigmoid#lstm_98/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:?????????
?
lstm_98/lstm_cell_23/Sigmoid_1Sigmoid#lstm_98/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_98/lstm_cell_23/mulMul"lstm_98/lstm_cell_23/Sigmoid_1:y:0lstm_98/zeros_1:output:0*
T0*'
_output_shapes
:?????????
x
lstm_98/lstm_cell_23/ReluRelu#lstm_98/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_98/lstm_cell_23/mul_1Mul lstm_98/lstm_cell_23/Sigmoid:y:0'lstm_98/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_98/lstm_cell_23/add_1AddV2lstm_98/lstm_cell_23/mul:z:0lstm_98/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_98/lstm_cell_23/Sigmoid_2Sigmoid#lstm_98/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:?????????
u
lstm_98/lstm_cell_23/Relu_1Relulstm_98/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_98/lstm_cell_23/mul_2Mul"lstm_98/lstm_cell_23/Sigmoid_2:y:0)lstm_98/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
v
%lstm_98/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_98/TensorArrayV2_1TensorListReserve.lstm_98/TensorArrayV2_1/element_shape:output:0 lstm_98/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_98/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_98/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_98/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_98/whileWhile#lstm_98/while/loop_counter:output:0)lstm_98/while/maximum_iterations:output:0lstm_98/time:output:0 lstm_98/TensorArrayV2_1:handle:0lstm_98/zeros:output:0lstm_98/zeros_1:output:0 lstm_98/strided_slice_1:output:0?lstm_98/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_98_lstm_cell_23_matmul_readvariableop_resource5lstm_98_lstm_cell_23_matmul_1_readvariableop_resource4lstm_98_lstm_cell_23_biasadd_readvariableop_resource*
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
lstm_98_while_body_143725*%
condR
lstm_98_while_cond_143724*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
8lstm_98/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
*lstm_98/TensorArrayV2Stack/TensorListStackTensorListStacklstm_98/while:output:3Alstm_98/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0p
lstm_98/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_98/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_98/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_98/strided_slice_3StridedSlice3lstm_98/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_98/strided_slice_3/stack:output:0(lstm_98/strided_slice_3/stack_1:output:0(lstm_98/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskm
lstm_98/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_98/transpose_1	Transpose3lstm_98/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_98/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
c
lstm_98/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_32/MatMul/ReadVariableOpReadVariableOp'dense_32_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_32/MatMulMatMul lstm_98/strided_slice_3:output:0&dense_32/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_32/BiasAdd/ReadVariableOpReadVariableOp(dense_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_32/BiasAddBiasAdddense_32/MatMul:product:0'dense_32/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_32/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_32/BiasAdd/ReadVariableOp^dense_32/MatMul/ReadVariableOp,^lstm_96/lstm_cell_21/BiasAdd/ReadVariableOp+^lstm_96/lstm_cell_21/MatMul/ReadVariableOp-^lstm_96/lstm_cell_21/MatMul_1/ReadVariableOp^lstm_96/while,^lstm_97/lstm_cell_22/BiasAdd/ReadVariableOp+^lstm_97/lstm_cell_22/MatMul/ReadVariableOp-^lstm_97/lstm_cell_22/MatMul_1/ReadVariableOp^lstm_97/while,^lstm_98/lstm_cell_23/BiasAdd/ReadVariableOp+^lstm_98/lstm_cell_23/MatMul/ReadVariableOp-^lstm_98/lstm_cell_23/MatMul_1/ReadVariableOp^lstm_98/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_32/BiasAdd/ReadVariableOpdense_32/BiasAdd/ReadVariableOp2@
dense_32/MatMul/ReadVariableOpdense_32/MatMul/ReadVariableOp2Z
+lstm_96/lstm_cell_21/BiasAdd/ReadVariableOp+lstm_96/lstm_cell_21/BiasAdd/ReadVariableOp2X
*lstm_96/lstm_cell_21/MatMul/ReadVariableOp*lstm_96/lstm_cell_21/MatMul/ReadVariableOp2\
,lstm_96/lstm_cell_21/MatMul_1/ReadVariableOp,lstm_96/lstm_cell_21/MatMul_1/ReadVariableOp2
lstm_96/whilelstm_96/while2Z
+lstm_97/lstm_cell_22/BiasAdd/ReadVariableOp+lstm_97/lstm_cell_22/BiasAdd/ReadVariableOp2X
*lstm_97/lstm_cell_22/MatMul/ReadVariableOp*lstm_97/lstm_cell_22/MatMul/ReadVariableOp2\
,lstm_97/lstm_cell_22/MatMul_1/ReadVariableOp,lstm_97/lstm_cell_22/MatMul_1/ReadVariableOp2
lstm_97/whilelstm_97/while2Z
+lstm_98/lstm_cell_23/BiasAdd/ReadVariableOp+lstm_98/lstm_cell_23/BiasAdd/ReadVariableOp2X
*lstm_98/lstm_cell_23/MatMul/ReadVariableOp*lstm_98/lstm_cell_23/MatMul/ReadVariableOp2\
,lstm_98/lstm_cell_23/MatMul_1/ReadVariableOp,lstm_98/lstm_cell_23/MatMul_1/ReadVariableOp2
lstm_98/whilelstm_98/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_144347
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_21_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_21_matmul_1_readvariableop_resource_0:	d?C
4while_lstm_cell_21_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_21_matmul_readvariableop_resource:	?F
3while_lstm_cell_21_matmul_1_readvariableop_resource:	d?A
2while_lstm_cell_21_biasadd_readvariableop_resource:	???)while/lstm_cell_21/BiasAdd/ReadVariableOp?(while/lstm_cell_21/MatMul/ReadVariableOp?*while/lstm_cell_21/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
(while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_21/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_21/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_21/addAddV2#while/lstm_cell_21/MatMul:product:0%while/lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_21/BiasAddBiasAddwhile/lstm_cell_21/add:z:01while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_21/splitSplit+while/lstm_cell_21/split/split_dim:output:0#while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitz
while/lstm_cell_21/SigmoidSigmoid!while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_21/Sigmoid_1Sigmoid!while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_21/mulMul while/lstm_cell_21/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dt
while/lstm_cell_21/ReluRelu!while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_21/mul_1Mulwhile/lstm_cell_21/Sigmoid:y:0%while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_21/add_1AddV2while/lstm_cell_21/mul:z:0while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_21/Sigmoid_2Sigmoid!while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:?????????dq
while/lstm_cell_21/Relu_1Reluwhile/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_21/mul_2Mul while/lstm_cell_21/Sigmoid_2:y:0'while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_21/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_21/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dy
while/Identity_5Identitywhile/lstm_cell_21/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp*^while/lstm_cell_21/BiasAdd/ReadVariableOp)^while/lstm_cell_21/MatMul/ReadVariableOp+^while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_21_biasadd_readvariableop_resource4while_lstm_cell_21_biasadd_readvariableop_resource_0"l
3while_lstm_cell_21_matmul_1_readvariableop_resource5while_lstm_cell_21_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_21_matmul_readvariableop_resource3while_lstm_cell_21_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2V
)while/lstm_cell_21/BiasAdd/ReadVariableOp)while/lstm_cell_21/BiasAdd/ReadVariableOp2T
(while/lstm_cell_21/MatMul/ReadVariableOp(while/lstm_cell_21/MatMul/ReadVariableOp2X
*while/lstm_cell_21/MatMul_1/ReadVariableOp*while/lstm_cell_21/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
C__inference_lstm_98_layer_call_and_return_conditional_losses_145663

inputs=
+lstm_cell_23_matmul_readvariableop_resource:2(?
-lstm_cell_23_matmul_1_readvariableop_resource:
(:
,lstm_cell_23_biasadd_readvariableop_resource:(
identity??#lstm_cell_23/BiasAdd/ReadVariableOp?"lstm_cell_23/MatMul/ReadVariableOp?$lstm_cell_23/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_23/MatMul/ReadVariableOpReadVariableOp+lstm_cell_23_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_23/MatMulMatMulstrided_slice_2:output:0*lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_23/MatMul_1MatMulzeros:output:0,lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_23/addAddV2lstm_cell_23/MatMul:product:0lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
#lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_23/BiasAddBiasAddlstm_cell_23/add:z:0+lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(^
lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_23/splitSplit%lstm_cell_23/split/split_dim:output:0lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitn
lstm_cell_23/SigmoidSigmoidlstm_cell_23/split:output:0*
T0*'
_output_shapes
:?????????
p
lstm_cell_23/Sigmoid_1Sigmoidlstm_cell_23/split:output:1*
T0*'
_output_shapes
:?????????
w
lstm_cell_23/mulMullstm_cell_23/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
h
lstm_cell_23/ReluRelulstm_cell_23/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_23/mul_1Mullstm_cell_23/Sigmoid:y:0lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:?????????
{
lstm_cell_23/add_1AddV2lstm_cell_23/mul:z:0lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:?????????
p
lstm_cell_23/Sigmoid_2Sigmoidlstm_cell_23/split:output:3*
T0*'
_output_shapes
:?????????
e
lstm_cell_23/Relu_1Relulstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_23/mul_2Mullstm_cell_23/Sigmoid_2:y:0!lstm_cell_23/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_23_matmul_readvariableop_resource-lstm_cell_23_matmul_1_readvariableop_resource,lstm_cell_23_biasadd_readvariableop_resource*
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
while_body_145579*
condR
while_cond_145578*K
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
NoOpNoOp$^lstm_cell_23/BiasAdd/ReadVariableOp#^lstm_cell_23/MatMul/ReadVariableOp%^lstm_cell_23/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2J
#lstm_cell_23/BiasAdd/ReadVariableOp#lstm_cell_23/BiasAdd/ReadVariableOp2H
"lstm_cell_23/MatMul/ReadVariableOp"lstm_cell_23/MatMul/ReadVariableOp2L
$lstm_cell_23/MatMul_1/ReadVariableOp$lstm_cell_23/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_145748

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
while_cond_140727
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_140727___redundant_placeholder04
0while_while_cond_140727___redundant_placeholder14
0while_while_cond_140727___redundant_placeholder24
0while_while_cond_140727___redundant_placeholder3
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
while_cond_143917
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_143917___redundant_placeholder04
0while_while_cond_143917___redundant_placeholder14
0while_while_cond_143917___redundant_placeholder24
0while_while_cond_143917___redundant_placeholder3
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
while_cond_144962
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_144962___redundant_placeholder04
0while_while_cond_144962___redundant_placeholder14
0while_while_cond_144962___redundant_placeholder24
0while_while_cond_144962___redundant_placeholder3
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
?
C__inference_lstm_96_layer_call_and_return_conditional_losses_140988

inputs&
lstm_cell_21_140906:	?&
lstm_cell_21_140908:	d?"
lstm_cell_21_140910:	?
identity??$lstm_cell_21/StatefulPartitionedCall?while;
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
$lstm_cell_21/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_21_140906lstm_cell_21_140908lstm_cell_21_140910*
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
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_140860n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_21_140906lstm_cell_21_140908lstm_cell_21_140910*
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
while_body_140919*
condR
while_cond_140918*K
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
NoOpNoOp%^lstm_cell_21/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_21/StatefulPartitionedCall$lstm_cell_21/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_142277
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_142277___redundant_placeholder04
0while_while_cond_142277___redundant_placeholder14
0while_while_cond_142277___redundant_placeholder24
0while_while_cond_142277___redundant_placeholder3
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
while_body_145150
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_23_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_23_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_23_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_23_matmul_readvariableop_resource:2(E
3while_lstm_cell_23_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_23_biasadd_readvariableop_resource:(??)while/lstm_cell_23/BiasAdd/ReadVariableOp?(while/lstm_cell_23/MatMul/ReadVariableOp?*while/lstm_cell_23/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
(while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_23/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_23/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_23/addAddV2#while/lstm_cell_23/MatMul:product:0%while/lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
)while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_23/BiasAddBiasAddwhile/lstm_cell_23/add:z:01while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
"while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_23/splitSplit+while/lstm_cell_23/split/split_dim:output:0#while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitz
while/lstm_cell_23/SigmoidSigmoid!while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:?????????
|
while/lstm_cell_23/Sigmoid_1Sigmoid!while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_23/mulMul while/lstm_cell_23/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
t
while/lstm_cell_23/ReluRelu!while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_23/mul_1Mulwhile/lstm_cell_23/Sigmoid:y:0%while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_23/add_1AddV2while/lstm_cell_23/mul:z:0while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:?????????
|
while/lstm_cell_23/Sigmoid_2Sigmoid!while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:?????????
q
while/lstm_cell_23/Relu_1Reluwhile/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_23/mul_2Mul while/lstm_cell_23/Sigmoid_2:y:0'while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_23/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_23/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
y
while/Identity_5Identitywhile/lstm_cell_23/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp*^while/lstm_cell_23/BiasAdd/ReadVariableOp)^while/lstm_cell_23/MatMul/ReadVariableOp+^while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_23_biasadd_readvariableop_resource4while_lstm_cell_23_biasadd_readvariableop_resource_0"l
3while_lstm_cell_23_matmul_1_readvariableop_resource5while_lstm_cell_23_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_23_matmul_readvariableop_resource3while_lstm_cell_23_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2V
)while/lstm_cell_23/BiasAdd/ReadVariableOp)while/lstm_cell_23/BiasAdd/ReadVariableOp2T
(while/lstm_cell_23/MatMul/ReadVariableOp(while/lstm_cell_23/MatMul/ReadVariableOp2X
*while/lstm_cell_23/MatMul_1/ReadVariableOp*while/lstm_cell_23/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_96_while_cond_143019,
(lstm_96_while_lstm_96_while_loop_counter2
.lstm_96_while_lstm_96_while_maximum_iterations
lstm_96_while_placeholder
lstm_96_while_placeholder_1
lstm_96_while_placeholder_2
lstm_96_while_placeholder_3.
*lstm_96_while_less_lstm_96_strided_slice_1D
@lstm_96_while_lstm_96_while_cond_143019___redundant_placeholder0D
@lstm_96_while_lstm_96_while_cond_143019___redundant_placeholder1D
@lstm_96_while_lstm_96_while_cond_143019___redundant_placeholder2D
@lstm_96_while_lstm_96_while_cond_143019___redundant_placeholder3
lstm_96_while_identity
?
lstm_96/while/LessLesslstm_96_while_placeholder*lstm_96_while_less_lstm_96_strided_slice_1*
T0*
_output_shapes
: [
lstm_96/while/IdentityIdentitylstm_96/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_96_while_identitylstm_96/while/Identity:output:0*(
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
while_cond_142442
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_142442___redundant_placeholder04
0while_while_cond_142442___redundant_placeholder14
0while_while_cond_142442___redundant_placeholder24
0while_while_cond_142442___redundant_placeholder3
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
??
?
!__inference__wrapped_model_140647
lstm_96_inputT
Asequential_32_lstm_96_lstm_cell_21_matmul_readvariableop_resource:	?V
Csequential_32_lstm_96_lstm_cell_21_matmul_1_readvariableop_resource:	d?Q
Bsequential_32_lstm_96_lstm_cell_21_biasadd_readvariableop_resource:	?T
Asequential_32_lstm_97_lstm_cell_22_matmul_readvariableop_resource:	d?V
Csequential_32_lstm_97_lstm_cell_22_matmul_1_readvariableop_resource:	2?Q
Bsequential_32_lstm_97_lstm_cell_22_biasadd_readvariableop_resource:	?S
Asequential_32_lstm_98_lstm_cell_23_matmul_readvariableop_resource:2(U
Csequential_32_lstm_98_lstm_cell_23_matmul_1_readvariableop_resource:
(P
Bsequential_32_lstm_98_lstm_cell_23_biasadd_readvariableop_resource:(G
5sequential_32_dense_32_matmul_readvariableop_resource:
D
6sequential_32_dense_32_biasadd_readvariableop_resource:
identity??-sequential_32/dense_32/BiasAdd/ReadVariableOp?,sequential_32/dense_32/MatMul/ReadVariableOp?9sequential_32/lstm_96/lstm_cell_21/BiasAdd/ReadVariableOp?8sequential_32/lstm_96/lstm_cell_21/MatMul/ReadVariableOp?:sequential_32/lstm_96/lstm_cell_21/MatMul_1/ReadVariableOp?sequential_32/lstm_96/while?9sequential_32/lstm_97/lstm_cell_22/BiasAdd/ReadVariableOp?8sequential_32/lstm_97/lstm_cell_22/MatMul/ReadVariableOp?:sequential_32/lstm_97/lstm_cell_22/MatMul_1/ReadVariableOp?sequential_32/lstm_97/while?9sequential_32/lstm_98/lstm_cell_23/BiasAdd/ReadVariableOp?8sequential_32/lstm_98/lstm_cell_23/MatMul/ReadVariableOp?:sequential_32/lstm_98/lstm_cell_23/MatMul_1/ReadVariableOp?sequential_32/lstm_98/whileX
sequential_32/lstm_96/ShapeShapelstm_96_input*
T0*
_output_shapes
:s
)sequential_32/lstm_96/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_32/lstm_96/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_32/lstm_96/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#sequential_32/lstm_96/strided_sliceStridedSlice$sequential_32/lstm_96/Shape:output:02sequential_32/lstm_96/strided_slice/stack:output:04sequential_32/lstm_96/strided_slice/stack_1:output:04sequential_32/lstm_96/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_32/lstm_96/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
"sequential_32/lstm_96/zeros/packedPack,sequential_32/lstm_96/strided_slice:output:0-sequential_32/lstm_96/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_32/lstm_96/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_32/lstm_96/zerosFill+sequential_32/lstm_96/zeros/packed:output:0*sequential_32/lstm_96/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dh
&sequential_32/lstm_96/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_32/lstm_96/zeros_1/packedPack,sequential_32/lstm_96/strided_slice:output:0/sequential_32/lstm_96/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_32/lstm_96/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_32/lstm_96/zeros_1Fill-sequential_32/lstm_96/zeros_1/packed:output:0,sequential_32/lstm_96/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dy
$sequential_32/lstm_96/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
sequential_32/lstm_96/transpose	Transposelstm_96_input-sequential_32/lstm_96/transpose/perm:output:0*
T0*+
_output_shapes
:?????????p
sequential_32/lstm_96/Shape_1Shape#sequential_32/lstm_96/transpose:y:0*
T0*
_output_shapes
:u
+sequential_32/lstm_96/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_32/lstm_96/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_32/lstm_96/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_32/lstm_96/strided_slice_1StridedSlice&sequential_32/lstm_96/Shape_1:output:04sequential_32/lstm_96/strided_slice_1/stack:output:06sequential_32/lstm_96/strided_slice_1/stack_1:output:06sequential_32/lstm_96/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_32/lstm_96/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
#sequential_32/lstm_96/TensorArrayV2TensorListReserve:sequential_32/lstm_96/TensorArrayV2/element_shape:output:0.sequential_32/lstm_96/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Ksequential_32/lstm_96/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
=sequential_32/lstm_96/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_32/lstm_96/transpose:y:0Tsequential_32/lstm_96/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???u
+sequential_32/lstm_96/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_32/lstm_96/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_32/lstm_96/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_32/lstm_96/strided_slice_2StridedSlice#sequential_32/lstm_96/transpose:y:04sequential_32/lstm_96/strided_slice_2/stack:output:06sequential_32/lstm_96/strided_slice_2/stack_1:output:06sequential_32/lstm_96/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
8sequential_32/lstm_96/lstm_cell_21/MatMul/ReadVariableOpReadVariableOpAsequential_32_lstm_96_lstm_cell_21_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
)sequential_32/lstm_96/lstm_cell_21/MatMulMatMul.sequential_32/lstm_96/strided_slice_2:output:0@sequential_32/lstm_96/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
:sequential_32/lstm_96/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOpCsequential_32_lstm_96_lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_32/lstm_96/lstm_cell_21/MatMul_1MatMul$sequential_32/lstm_96/zeros:output:0Bsequential_32/lstm_96/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
&sequential_32/lstm_96/lstm_cell_21/addAddV23sequential_32/lstm_96/lstm_cell_21/MatMul:product:05sequential_32/lstm_96/lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
9sequential_32/lstm_96/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOpBsequential_32_lstm_96_lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
*sequential_32/lstm_96/lstm_cell_21/BiasAddBiasAdd*sequential_32/lstm_96/lstm_cell_21/add:z:0Asequential_32/lstm_96/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????t
2sequential_32/lstm_96/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
(sequential_32/lstm_96/lstm_cell_21/splitSplit;sequential_32/lstm_96/lstm_cell_21/split/split_dim:output:03sequential_32/lstm_96/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
*sequential_32/lstm_96/lstm_cell_21/SigmoidSigmoid1sequential_32/lstm_96/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:?????????d?
,sequential_32/lstm_96/lstm_cell_21/Sigmoid_1Sigmoid1sequential_32/lstm_96/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:?????????d?
&sequential_32/lstm_96/lstm_cell_21/mulMul0sequential_32/lstm_96/lstm_cell_21/Sigmoid_1:y:0&sequential_32/lstm_96/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
'sequential_32/lstm_96/lstm_cell_21/ReluRelu1sequential_32/lstm_96/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:?????????d?
(sequential_32/lstm_96/lstm_cell_21/mul_1Mul.sequential_32/lstm_96/lstm_cell_21/Sigmoid:y:05sequential_32/lstm_96/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
(sequential_32/lstm_96/lstm_cell_21/add_1AddV2*sequential_32/lstm_96/lstm_cell_21/mul:z:0,sequential_32/lstm_96/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
,sequential_32/lstm_96/lstm_cell_21/Sigmoid_2Sigmoid1sequential_32/lstm_96/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:?????????d?
)sequential_32/lstm_96/lstm_cell_21/Relu_1Relu,sequential_32/lstm_96/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:?????????d?
(sequential_32/lstm_96/lstm_cell_21/mul_2Mul0sequential_32/lstm_96/lstm_cell_21/Sigmoid_2:y:07sequential_32/lstm_96/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3sequential_32/lstm_96/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
%sequential_32/lstm_96/TensorArrayV2_1TensorListReserve<sequential_32/lstm_96/TensorArrayV2_1/element_shape:output:0.sequential_32/lstm_96/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???\
sequential_32/lstm_96/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_32/lstm_96/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????j
(sequential_32/lstm_96/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_32/lstm_96/whileWhile1sequential_32/lstm_96/while/loop_counter:output:07sequential_32/lstm_96/while/maximum_iterations:output:0#sequential_32/lstm_96/time:output:0.sequential_32/lstm_96/TensorArrayV2_1:handle:0$sequential_32/lstm_96/zeros:output:0&sequential_32/lstm_96/zeros_1:output:0.sequential_32/lstm_96/strided_slice_1:output:0Msequential_32/lstm_96/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_32_lstm_96_lstm_cell_21_matmul_readvariableop_resourceCsequential_32_lstm_96_lstm_cell_21_matmul_1_readvariableop_resourceBsequential_32_lstm_96_lstm_cell_21_biasadd_readvariableop_resource*
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
'sequential_32_lstm_96_while_body_140279*3
cond+R)
'sequential_32_lstm_96_while_cond_140278*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Fsequential_32/lstm_96/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
8sequential_32/lstm_96/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_32/lstm_96/while:output:3Osequential_32/lstm_96/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0~
+sequential_32/lstm_96/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????w
-sequential_32/lstm_96/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_32/lstm_96/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_32/lstm_96/strided_slice_3StridedSliceAsequential_32/lstm_96/TensorArrayV2Stack/TensorListStack:tensor:04sequential_32/lstm_96/strided_slice_3/stack:output:06sequential_32/lstm_96/strided_slice_3/stack_1:output:06sequential_32/lstm_96/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask{
&sequential_32/lstm_96/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_32/lstm_96/transpose_1	TransposeAsequential_32/lstm_96/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_32/lstm_96/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dq
sequential_32/lstm_96/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_32/lstm_97/ShapeShape%sequential_32/lstm_96/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_32/lstm_97/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_32/lstm_97/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_32/lstm_97/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#sequential_32/lstm_97/strided_sliceStridedSlice$sequential_32/lstm_97/Shape:output:02sequential_32/lstm_97/strided_slice/stack:output:04sequential_32/lstm_97/strided_slice/stack_1:output:04sequential_32/lstm_97/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_32/lstm_97/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
"sequential_32/lstm_97/zeros/packedPack,sequential_32/lstm_97/strided_slice:output:0-sequential_32/lstm_97/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_32/lstm_97/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_32/lstm_97/zerosFill+sequential_32/lstm_97/zeros/packed:output:0*sequential_32/lstm_97/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2h
&sequential_32/lstm_97/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_32/lstm_97/zeros_1/packedPack,sequential_32/lstm_97/strided_slice:output:0/sequential_32/lstm_97/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_32/lstm_97/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_32/lstm_97/zeros_1Fill-sequential_32/lstm_97/zeros_1/packed:output:0,sequential_32/lstm_97/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2y
$sequential_32/lstm_97/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
sequential_32/lstm_97/transpose	Transpose%sequential_32/lstm_96/transpose_1:y:0-sequential_32/lstm_97/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dp
sequential_32/lstm_97/Shape_1Shape#sequential_32/lstm_97/transpose:y:0*
T0*
_output_shapes
:u
+sequential_32/lstm_97/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_32/lstm_97/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_32/lstm_97/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_32/lstm_97/strided_slice_1StridedSlice&sequential_32/lstm_97/Shape_1:output:04sequential_32/lstm_97/strided_slice_1/stack:output:06sequential_32/lstm_97/strided_slice_1/stack_1:output:06sequential_32/lstm_97/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_32/lstm_97/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
#sequential_32/lstm_97/TensorArrayV2TensorListReserve:sequential_32/lstm_97/TensorArrayV2/element_shape:output:0.sequential_32/lstm_97/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Ksequential_32/lstm_97/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
=sequential_32/lstm_97/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_32/lstm_97/transpose:y:0Tsequential_32/lstm_97/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???u
+sequential_32/lstm_97/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_32/lstm_97/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_32/lstm_97/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_32/lstm_97/strided_slice_2StridedSlice#sequential_32/lstm_97/transpose:y:04sequential_32/lstm_97/strided_slice_2/stack:output:06sequential_32/lstm_97/strided_slice_2/stack_1:output:06sequential_32/lstm_97/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
8sequential_32/lstm_97/lstm_cell_22/MatMul/ReadVariableOpReadVariableOpAsequential_32_lstm_97_lstm_cell_22_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
)sequential_32/lstm_97/lstm_cell_22/MatMulMatMul.sequential_32/lstm_97/strided_slice_2:output:0@sequential_32/lstm_97/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
:sequential_32/lstm_97/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOpCsequential_32_lstm_97_lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
+sequential_32/lstm_97/lstm_cell_22/MatMul_1MatMul$sequential_32/lstm_97/zeros:output:0Bsequential_32/lstm_97/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
&sequential_32/lstm_97/lstm_cell_22/addAddV23sequential_32/lstm_97/lstm_cell_22/MatMul:product:05sequential_32/lstm_97/lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
9sequential_32/lstm_97/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOpBsequential_32_lstm_97_lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
*sequential_32/lstm_97/lstm_cell_22/BiasAddBiasAdd*sequential_32/lstm_97/lstm_cell_22/add:z:0Asequential_32/lstm_97/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????t
2sequential_32/lstm_97/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
(sequential_32/lstm_97/lstm_cell_22/splitSplit;sequential_32/lstm_97/lstm_cell_22/split/split_dim:output:03sequential_32/lstm_97/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
*sequential_32/lstm_97/lstm_cell_22/SigmoidSigmoid1sequential_32/lstm_97/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:?????????2?
,sequential_32/lstm_97/lstm_cell_22/Sigmoid_1Sigmoid1sequential_32/lstm_97/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:?????????2?
&sequential_32/lstm_97/lstm_cell_22/mulMul0sequential_32/lstm_97/lstm_cell_22/Sigmoid_1:y:0&sequential_32/lstm_97/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
'sequential_32/lstm_97/lstm_cell_22/ReluRelu1sequential_32/lstm_97/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:?????????2?
(sequential_32/lstm_97/lstm_cell_22/mul_1Mul.sequential_32/lstm_97/lstm_cell_22/Sigmoid:y:05sequential_32/lstm_97/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
(sequential_32/lstm_97/lstm_cell_22/add_1AddV2*sequential_32/lstm_97/lstm_cell_22/mul:z:0,sequential_32/lstm_97/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
,sequential_32/lstm_97/lstm_cell_22/Sigmoid_2Sigmoid1sequential_32/lstm_97/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:?????????2?
)sequential_32/lstm_97/lstm_cell_22/Relu_1Relu,sequential_32/lstm_97/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:?????????2?
(sequential_32/lstm_97/lstm_cell_22/mul_2Mul0sequential_32/lstm_97/lstm_cell_22/Sigmoid_2:y:07sequential_32/lstm_97/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3sequential_32/lstm_97/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
%sequential_32/lstm_97/TensorArrayV2_1TensorListReserve<sequential_32/lstm_97/TensorArrayV2_1/element_shape:output:0.sequential_32/lstm_97/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???\
sequential_32/lstm_97/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_32/lstm_97/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????j
(sequential_32/lstm_97/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_32/lstm_97/whileWhile1sequential_32/lstm_97/while/loop_counter:output:07sequential_32/lstm_97/while/maximum_iterations:output:0#sequential_32/lstm_97/time:output:0.sequential_32/lstm_97/TensorArrayV2_1:handle:0$sequential_32/lstm_97/zeros:output:0&sequential_32/lstm_97/zeros_1:output:0.sequential_32/lstm_97/strided_slice_1:output:0Msequential_32/lstm_97/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_32_lstm_97_lstm_cell_22_matmul_readvariableop_resourceCsequential_32_lstm_97_lstm_cell_22_matmul_1_readvariableop_resourceBsequential_32_lstm_97_lstm_cell_22_biasadd_readvariableop_resource*
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
'sequential_32_lstm_97_while_body_140418*3
cond+R)
'sequential_32_lstm_97_while_cond_140417*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Fsequential_32/lstm_97/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
8sequential_32/lstm_97/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_32/lstm_97/while:output:3Osequential_32/lstm_97/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0~
+sequential_32/lstm_97/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????w
-sequential_32/lstm_97/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_32/lstm_97/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_32/lstm_97/strided_slice_3StridedSliceAsequential_32/lstm_97/TensorArrayV2Stack/TensorListStack:tensor:04sequential_32/lstm_97/strided_slice_3/stack:output:06sequential_32/lstm_97/strided_slice_3/stack_1:output:06sequential_32/lstm_97/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask{
&sequential_32/lstm_97/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_32/lstm_97/transpose_1	TransposeAsequential_32/lstm_97/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_32/lstm_97/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2q
sequential_32/lstm_97/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_32/lstm_98/ShapeShape%sequential_32/lstm_97/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_32/lstm_98/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_32/lstm_98/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_32/lstm_98/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#sequential_32/lstm_98/strided_sliceStridedSlice$sequential_32/lstm_98/Shape:output:02sequential_32/lstm_98/strided_slice/stack:output:04sequential_32/lstm_98/strided_slice/stack_1:output:04sequential_32/lstm_98/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_32/lstm_98/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
"sequential_32/lstm_98/zeros/packedPack,sequential_32/lstm_98/strided_slice:output:0-sequential_32/lstm_98/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_32/lstm_98/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_32/lstm_98/zerosFill+sequential_32/lstm_98/zeros/packed:output:0*sequential_32/lstm_98/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
h
&sequential_32/lstm_98/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_32/lstm_98/zeros_1/packedPack,sequential_32/lstm_98/strided_slice:output:0/sequential_32/lstm_98/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_32/lstm_98/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_32/lstm_98/zeros_1Fill-sequential_32/lstm_98/zeros_1/packed:output:0,sequential_32/lstm_98/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
y
$sequential_32/lstm_98/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
sequential_32/lstm_98/transpose	Transpose%sequential_32/lstm_97/transpose_1:y:0-sequential_32/lstm_98/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2p
sequential_32/lstm_98/Shape_1Shape#sequential_32/lstm_98/transpose:y:0*
T0*
_output_shapes
:u
+sequential_32/lstm_98/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_32/lstm_98/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_32/lstm_98/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_32/lstm_98/strided_slice_1StridedSlice&sequential_32/lstm_98/Shape_1:output:04sequential_32/lstm_98/strided_slice_1/stack:output:06sequential_32/lstm_98/strided_slice_1/stack_1:output:06sequential_32/lstm_98/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_32/lstm_98/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
#sequential_32/lstm_98/TensorArrayV2TensorListReserve:sequential_32/lstm_98/TensorArrayV2/element_shape:output:0.sequential_32/lstm_98/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Ksequential_32/lstm_98/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
=sequential_32/lstm_98/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_32/lstm_98/transpose:y:0Tsequential_32/lstm_98/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???u
+sequential_32/lstm_98/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_32/lstm_98/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_32/lstm_98/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_32/lstm_98/strided_slice_2StridedSlice#sequential_32/lstm_98/transpose:y:04sequential_32/lstm_98/strided_slice_2/stack:output:06sequential_32/lstm_98/strided_slice_2/stack_1:output:06sequential_32/lstm_98/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
8sequential_32/lstm_98/lstm_cell_23/MatMul/ReadVariableOpReadVariableOpAsequential_32_lstm_98_lstm_cell_23_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
)sequential_32/lstm_98/lstm_cell_23/MatMulMatMul.sequential_32/lstm_98/strided_slice_2:output:0@sequential_32/lstm_98/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
:sequential_32/lstm_98/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOpCsequential_32_lstm_98_lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
+sequential_32/lstm_98/lstm_cell_23/MatMul_1MatMul$sequential_32/lstm_98/zeros:output:0Bsequential_32/lstm_98/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
&sequential_32/lstm_98/lstm_cell_23/addAddV23sequential_32/lstm_98/lstm_cell_23/MatMul:product:05sequential_32/lstm_98/lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
9sequential_32/lstm_98/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOpBsequential_32_lstm_98_lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
*sequential_32/lstm_98/lstm_cell_23/BiasAddBiasAdd*sequential_32/lstm_98/lstm_cell_23/add:z:0Asequential_32/lstm_98/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(t
2sequential_32/lstm_98/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
(sequential_32/lstm_98/lstm_cell_23/splitSplit;sequential_32/lstm_98/lstm_cell_23/split/split_dim:output:03sequential_32/lstm_98/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
*sequential_32/lstm_98/lstm_cell_23/SigmoidSigmoid1sequential_32/lstm_98/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:?????????
?
,sequential_32/lstm_98/lstm_cell_23/Sigmoid_1Sigmoid1sequential_32/lstm_98/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:?????????
?
&sequential_32/lstm_98/lstm_cell_23/mulMul0sequential_32/lstm_98/lstm_cell_23/Sigmoid_1:y:0&sequential_32/lstm_98/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
'sequential_32/lstm_98/lstm_cell_23/ReluRelu1sequential_32/lstm_98/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:?????????
?
(sequential_32/lstm_98/lstm_cell_23/mul_1Mul.sequential_32/lstm_98/lstm_cell_23/Sigmoid:y:05sequential_32/lstm_98/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
(sequential_32/lstm_98/lstm_cell_23/add_1AddV2*sequential_32/lstm_98/lstm_cell_23/mul:z:0,sequential_32/lstm_98/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
,sequential_32/lstm_98/lstm_cell_23/Sigmoid_2Sigmoid1sequential_32/lstm_98/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:?????????
?
)sequential_32/lstm_98/lstm_cell_23/Relu_1Relu,sequential_32/lstm_98/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:?????????
?
(sequential_32/lstm_98/lstm_cell_23/mul_2Mul0sequential_32/lstm_98/lstm_cell_23/Sigmoid_2:y:07sequential_32/lstm_98/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3sequential_32/lstm_98/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
%sequential_32/lstm_98/TensorArrayV2_1TensorListReserve<sequential_32/lstm_98/TensorArrayV2_1/element_shape:output:0.sequential_32/lstm_98/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???\
sequential_32/lstm_98/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_32/lstm_98/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????j
(sequential_32/lstm_98/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_32/lstm_98/whileWhile1sequential_32/lstm_98/while/loop_counter:output:07sequential_32/lstm_98/while/maximum_iterations:output:0#sequential_32/lstm_98/time:output:0.sequential_32/lstm_98/TensorArrayV2_1:handle:0$sequential_32/lstm_98/zeros:output:0&sequential_32/lstm_98/zeros_1:output:0.sequential_32/lstm_98/strided_slice_1:output:0Msequential_32/lstm_98/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_32_lstm_98_lstm_cell_23_matmul_readvariableop_resourceCsequential_32_lstm_98_lstm_cell_23_matmul_1_readvariableop_resourceBsequential_32_lstm_98_lstm_cell_23_biasadd_readvariableop_resource*
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
'sequential_32_lstm_98_while_body_140557*3
cond+R)
'sequential_32_lstm_98_while_cond_140556*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Fsequential_32/lstm_98/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
8sequential_32/lstm_98/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_32/lstm_98/while:output:3Osequential_32/lstm_98/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0~
+sequential_32/lstm_98/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????w
-sequential_32/lstm_98/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_32/lstm_98/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_32/lstm_98/strided_slice_3StridedSliceAsequential_32/lstm_98/TensorArrayV2Stack/TensorListStack:tensor:04sequential_32/lstm_98/strided_slice_3/stack:output:06sequential_32/lstm_98/strided_slice_3/stack_1:output:06sequential_32/lstm_98/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask{
&sequential_32/lstm_98/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_32/lstm_98/transpose_1	TransposeAsequential_32/lstm_98/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_32/lstm_98/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
q
sequential_32/lstm_98/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_32/dense_32/MatMul/ReadVariableOpReadVariableOp5sequential_32_dense_32_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_32/dense_32/MatMulMatMul.sequential_32/lstm_98/strided_slice_3:output:04sequential_32/dense_32/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_32/dense_32/BiasAdd/ReadVariableOpReadVariableOp6sequential_32_dense_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_32/dense_32/BiasAddBiasAdd'sequential_32/dense_32/MatMul:product:05sequential_32/dense_32/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_32/dense_32/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_32/dense_32/BiasAdd/ReadVariableOp-^sequential_32/dense_32/MatMul/ReadVariableOp:^sequential_32/lstm_96/lstm_cell_21/BiasAdd/ReadVariableOp9^sequential_32/lstm_96/lstm_cell_21/MatMul/ReadVariableOp;^sequential_32/lstm_96/lstm_cell_21/MatMul_1/ReadVariableOp^sequential_32/lstm_96/while:^sequential_32/lstm_97/lstm_cell_22/BiasAdd/ReadVariableOp9^sequential_32/lstm_97/lstm_cell_22/MatMul/ReadVariableOp;^sequential_32/lstm_97/lstm_cell_22/MatMul_1/ReadVariableOp^sequential_32/lstm_97/while:^sequential_32/lstm_98/lstm_cell_23/BiasAdd/ReadVariableOp9^sequential_32/lstm_98/lstm_cell_23/MatMul/ReadVariableOp;^sequential_32/lstm_98/lstm_cell_23/MatMul_1/ReadVariableOp^sequential_32/lstm_98/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_32/dense_32/BiasAdd/ReadVariableOp-sequential_32/dense_32/BiasAdd/ReadVariableOp2\
,sequential_32/dense_32/MatMul/ReadVariableOp,sequential_32/dense_32/MatMul/ReadVariableOp2v
9sequential_32/lstm_96/lstm_cell_21/BiasAdd/ReadVariableOp9sequential_32/lstm_96/lstm_cell_21/BiasAdd/ReadVariableOp2t
8sequential_32/lstm_96/lstm_cell_21/MatMul/ReadVariableOp8sequential_32/lstm_96/lstm_cell_21/MatMul/ReadVariableOp2x
:sequential_32/lstm_96/lstm_cell_21/MatMul_1/ReadVariableOp:sequential_32/lstm_96/lstm_cell_21/MatMul_1/ReadVariableOp2:
sequential_32/lstm_96/whilesequential_32/lstm_96/while2v
9sequential_32/lstm_97/lstm_cell_22/BiasAdd/ReadVariableOp9sequential_32/lstm_97/lstm_cell_22/BiasAdd/ReadVariableOp2t
8sequential_32/lstm_97/lstm_cell_22/MatMul/ReadVariableOp8sequential_32/lstm_97/lstm_cell_22/MatMul/ReadVariableOp2x
:sequential_32/lstm_97/lstm_cell_22/MatMul_1/ReadVariableOp:sequential_32/lstm_97/lstm_cell_22/MatMul_1/ReadVariableOp2:
sequential_32/lstm_97/whilesequential_32/lstm_97/while2v
9sequential_32/lstm_98/lstm_cell_23/BiasAdd/ReadVariableOp9sequential_32/lstm_98/lstm_cell_23/BiasAdd/ReadVariableOp2t
8sequential_32/lstm_98/lstm_cell_23/MatMul/ReadVariableOp8sequential_32/lstm_98/lstm_cell_23/MatMul/ReadVariableOp2x
:sequential_32/lstm_98/lstm_cell_23/MatMul_1/ReadVariableOp:sequential_32/lstm_98/lstm_cell_23/MatMul_1/ReadVariableOp2:
sequential_32/lstm_98/whilesequential_32/lstm_98/while:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_96_input
?R
?
'sequential_32_lstm_96_while_body_140279H
Dsequential_32_lstm_96_while_sequential_32_lstm_96_while_loop_counterN
Jsequential_32_lstm_96_while_sequential_32_lstm_96_while_maximum_iterations+
'sequential_32_lstm_96_while_placeholder-
)sequential_32_lstm_96_while_placeholder_1-
)sequential_32_lstm_96_while_placeholder_2-
)sequential_32_lstm_96_while_placeholder_3G
Csequential_32_lstm_96_while_sequential_32_lstm_96_strided_slice_1_0?
sequential_32_lstm_96_while_tensorarrayv2read_tensorlistgetitem_sequential_32_lstm_96_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_32_lstm_96_while_lstm_cell_21_matmul_readvariableop_resource_0:	?^
Ksequential_32_lstm_96_while_lstm_cell_21_matmul_1_readvariableop_resource_0:	d?Y
Jsequential_32_lstm_96_while_lstm_cell_21_biasadd_readvariableop_resource_0:	?(
$sequential_32_lstm_96_while_identity*
&sequential_32_lstm_96_while_identity_1*
&sequential_32_lstm_96_while_identity_2*
&sequential_32_lstm_96_while_identity_3*
&sequential_32_lstm_96_while_identity_4*
&sequential_32_lstm_96_while_identity_5E
Asequential_32_lstm_96_while_sequential_32_lstm_96_strided_slice_1?
}sequential_32_lstm_96_while_tensorarrayv2read_tensorlistgetitem_sequential_32_lstm_96_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_32_lstm_96_while_lstm_cell_21_matmul_readvariableop_resource:	?\
Isequential_32_lstm_96_while_lstm_cell_21_matmul_1_readvariableop_resource:	d?W
Hsequential_32_lstm_96_while_lstm_cell_21_biasadd_readvariableop_resource:	????sequential_32/lstm_96/while/lstm_cell_21/BiasAdd/ReadVariableOp?>sequential_32/lstm_96/while/lstm_cell_21/MatMul/ReadVariableOp?@sequential_32/lstm_96/while/lstm_cell_21/MatMul_1/ReadVariableOp?
Msequential_32/lstm_96/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_32/lstm_96/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_32_lstm_96_while_tensorarrayv2read_tensorlistgetitem_sequential_32_lstm_96_tensorarrayunstack_tensorlistfromtensor_0'sequential_32_lstm_96_while_placeholderVsequential_32/lstm_96/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
>sequential_32/lstm_96/while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOpIsequential_32_lstm_96_while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
/sequential_32/lstm_96/while/lstm_cell_21/MatMulMatMulFsequential_32/lstm_96/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_32/lstm_96/while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
@sequential_32/lstm_96/while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOpKsequential_32_lstm_96_while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_32/lstm_96/while/lstm_cell_21/MatMul_1MatMul)sequential_32_lstm_96_while_placeholder_2Hsequential_32/lstm_96/while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,sequential_32/lstm_96/while/lstm_cell_21/addAddV29sequential_32/lstm_96/while/lstm_cell_21/MatMul:product:0;sequential_32/lstm_96/while/lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
?sequential_32/lstm_96/while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOpJsequential_32_lstm_96_while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
0sequential_32/lstm_96/while/lstm_cell_21/BiasAddBiasAdd0sequential_32/lstm_96/while/lstm_cell_21/add:z:0Gsequential_32/lstm_96/while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
8sequential_32/lstm_96/while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
.sequential_32/lstm_96/while/lstm_cell_21/splitSplitAsequential_32/lstm_96/while/lstm_cell_21/split/split_dim:output:09sequential_32/lstm_96/while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
0sequential_32/lstm_96/while/lstm_cell_21/SigmoidSigmoid7sequential_32/lstm_96/while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:?????????d?
2sequential_32/lstm_96/while/lstm_cell_21/Sigmoid_1Sigmoid7sequential_32/lstm_96/while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:?????????d?
,sequential_32/lstm_96/while/lstm_cell_21/mulMul6sequential_32/lstm_96/while/lstm_cell_21/Sigmoid_1:y:0)sequential_32_lstm_96_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
-sequential_32/lstm_96/while/lstm_cell_21/ReluRelu7sequential_32/lstm_96/while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:?????????d?
.sequential_32/lstm_96/while/lstm_cell_21/mul_1Mul4sequential_32/lstm_96/while/lstm_cell_21/Sigmoid:y:0;sequential_32/lstm_96/while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
.sequential_32/lstm_96/while/lstm_cell_21/add_1AddV20sequential_32/lstm_96/while/lstm_cell_21/mul:z:02sequential_32/lstm_96/while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
2sequential_32/lstm_96/while/lstm_cell_21/Sigmoid_2Sigmoid7sequential_32/lstm_96/while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:?????????d?
/sequential_32/lstm_96/while/lstm_cell_21/Relu_1Relu2sequential_32/lstm_96/while/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_32/lstm_96/while/lstm_cell_21/mul_2Mul6sequential_32/lstm_96/while/lstm_cell_21/Sigmoid_2:y:0=sequential_32/lstm_96/while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
@sequential_32/lstm_96/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_32_lstm_96_while_placeholder_1'sequential_32_lstm_96_while_placeholder2sequential_32/lstm_96/while/lstm_cell_21/mul_2:z:0*
_output_shapes
: *
element_dtype0:???c
!sequential_32/lstm_96/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
sequential_32/lstm_96/while/addAddV2'sequential_32_lstm_96_while_placeholder*sequential_32/lstm_96/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_32/lstm_96/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_32/lstm_96/while/add_1AddV2Dsequential_32_lstm_96_while_sequential_32_lstm_96_while_loop_counter,sequential_32/lstm_96/while/add_1/y:output:0*
T0*
_output_shapes
: ?
$sequential_32/lstm_96/while/IdentityIdentity%sequential_32/lstm_96/while/add_1:z:0!^sequential_32/lstm_96/while/NoOp*
T0*
_output_shapes
: ?
&sequential_32/lstm_96/while/Identity_1IdentityJsequential_32_lstm_96_while_sequential_32_lstm_96_while_maximum_iterations!^sequential_32/lstm_96/while/NoOp*
T0*
_output_shapes
: ?
&sequential_32/lstm_96/while/Identity_2Identity#sequential_32/lstm_96/while/add:z:0!^sequential_32/lstm_96/while/NoOp*
T0*
_output_shapes
: ?
&sequential_32/lstm_96/while/Identity_3IdentityPsequential_32/lstm_96/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_32/lstm_96/while/NoOp*
T0*
_output_shapes
: ?
&sequential_32/lstm_96/while/Identity_4Identity2sequential_32/lstm_96/while/lstm_cell_21/mul_2:z:0!^sequential_32/lstm_96/while/NoOp*
T0*'
_output_shapes
:?????????d?
&sequential_32/lstm_96/while/Identity_5Identity2sequential_32/lstm_96/while/lstm_cell_21/add_1:z:0!^sequential_32/lstm_96/while/NoOp*
T0*'
_output_shapes
:?????????d?
 sequential_32/lstm_96/while/NoOpNoOp@^sequential_32/lstm_96/while/lstm_cell_21/BiasAdd/ReadVariableOp?^sequential_32/lstm_96/while/lstm_cell_21/MatMul/ReadVariableOpA^sequential_32/lstm_96/while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_32_lstm_96_while_identity-sequential_32/lstm_96/while/Identity:output:0"Y
&sequential_32_lstm_96_while_identity_1/sequential_32/lstm_96/while/Identity_1:output:0"Y
&sequential_32_lstm_96_while_identity_2/sequential_32/lstm_96/while/Identity_2:output:0"Y
&sequential_32_lstm_96_while_identity_3/sequential_32/lstm_96/while/Identity_3:output:0"Y
&sequential_32_lstm_96_while_identity_4/sequential_32/lstm_96/while/Identity_4:output:0"Y
&sequential_32_lstm_96_while_identity_5/sequential_32/lstm_96/while/Identity_5:output:0"?
Hsequential_32_lstm_96_while_lstm_cell_21_biasadd_readvariableop_resourceJsequential_32_lstm_96_while_lstm_cell_21_biasadd_readvariableop_resource_0"?
Isequential_32_lstm_96_while_lstm_cell_21_matmul_1_readvariableop_resourceKsequential_32_lstm_96_while_lstm_cell_21_matmul_1_readvariableop_resource_0"?
Gsequential_32_lstm_96_while_lstm_cell_21_matmul_readvariableop_resourceIsequential_32_lstm_96_while_lstm_cell_21_matmul_readvariableop_resource_0"?
Asequential_32_lstm_96_while_sequential_32_lstm_96_strided_slice_1Csequential_32_lstm_96_while_sequential_32_lstm_96_strided_slice_1_0"?
}sequential_32_lstm_96_while_tensorarrayv2read_tensorlistgetitem_sequential_32_lstm_96_tensorarrayunstack_tensorlistfromtensorsequential_32_lstm_96_while_tensorarrayv2read_tensorlistgetitem_sequential_32_lstm_96_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
?sequential_32/lstm_96/while/lstm_cell_21/BiasAdd/ReadVariableOp?sequential_32/lstm_96/while/lstm_cell_21/BiasAdd/ReadVariableOp2?
>sequential_32/lstm_96/while/lstm_cell_21/MatMul/ReadVariableOp>sequential_32/lstm_96/while/lstm_cell_21/MatMul/ReadVariableOp2?
@sequential_32/lstm_96/while/lstm_cell_21/MatMul_1/ReadVariableOp@sequential_32/lstm_96/while/lstm_cell_21/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_145780

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
?
?
(__inference_lstm_97_layer_call_fn_144475

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
C__inference_lstm_97_layer_call_and_return_conditional_losses_142527s
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
?
D__inference_dense_32_layer_call_and_return_conditional_losses_142164

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

?
lstm_98_while_cond_143297,
(lstm_98_while_lstm_98_while_loop_counter2
.lstm_98_while_lstm_98_while_maximum_iterations
lstm_98_while_placeholder
lstm_98_while_placeholder_1
lstm_98_while_placeholder_2
lstm_98_while_placeholder_3.
*lstm_98_while_less_lstm_98_strided_slice_1D
@lstm_98_while_lstm_98_while_cond_143297___redundant_placeholder0D
@lstm_98_while_lstm_98_while_cond_143297___redundant_placeholder1D
@lstm_98_while_lstm_98_while_cond_143297___redundant_placeholder2D
@lstm_98_while_lstm_98_while_cond_143297___redundant_placeholder3
lstm_98_while_identity
?
lstm_98/while/LessLesslstm_98_while_placeholder*lstm_98_while_less_lstm_98_strided_slice_1*
T0*
_output_shapes
: [
lstm_98/while/IdentityIdentitylstm_98/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_98_while_identitylstm_98/while/Identity:output:0*(
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
?
?
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_145944

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
C__inference_lstm_98_layer_call_and_return_conditional_losses_142146

inputs=
+lstm_cell_23_matmul_readvariableop_resource:2(?
-lstm_cell_23_matmul_1_readvariableop_resource:
(:
,lstm_cell_23_biasadd_readvariableop_resource:(
identity??#lstm_cell_23/BiasAdd/ReadVariableOp?"lstm_cell_23/MatMul/ReadVariableOp?$lstm_cell_23/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_23/MatMul/ReadVariableOpReadVariableOp+lstm_cell_23_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_23/MatMulMatMulstrided_slice_2:output:0*lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_23/MatMul_1MatMulzeros:output:0,lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_23/addAddV2lstm_cell_23/MatMul:product:0lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
#lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_23/BiasAddBiasAddlstm_cell_23/add:z:0+lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(^
lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_23/splitSplit%lstm_cell_23/split/split_dim:output:0lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitn
lstm_cell_23/SigmoidSigmoidlstm_cell_23/split:output:0*
T0*'
_output_shapes
:?????????
p
lstm_cell_23/Sigmoid_1Sigmoidlstm_cell_23/split:output:1*
T0*'
_output_shapes
:?????????
w
lstm_cell_23/mulMullstm_cell_23/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
h
lstm_cell_23/ReluRelulstm_cell_23/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_23/mul_1Mullstm_cell_23/Sigmoid:y:0lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:?????????
{
lstm_cell_23/add_1AddV2lstm_cell_23/mul:z:0lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:?????????
p
lstm_cell_23/Sigmoid_2Sigmoidlstm_cell_23/split:output:3*
T0*'
_output_shapes
:?????????
e
lstm_cell_23/Relu_1Relulstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_23/mul_2Mullstm_cell_23/Sigmoid_2:y:0!lstm_cell_23/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_23_matmul_readvariableop_resource-lstm_cell_23_matmul_1_readvariableop_resource,lstm_cell_23_biasadd_readvariableop_resource*
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
while_body_142062*
condR
while_cond_142061*K
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
NoOpNoOp$^lstm_cell_23/BiasAdd/ReadVariableOp#^lstm_cell_23/MatMul/ReadVariableOp%^lstm_cell_23/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2J
#lstm_cell_23/BiasAdd/ReadVariableOp#lstm_cell_23/BiasAdd/ReadVariableOp2H
"lstm_cell_23/MatMul/ReadVariableOp"lstm_cell_23/MatMul/ReadVariableOp2L
$lstm_cell_23/MatMul_1/ReadVariableOp$lstm_cell_23/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
(__inference_lstm_96_layer_call_fn_143826
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
C__inference_lstm_96_layer_call_and_return_conditional_losses_140797|
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
?J
?
C__inference_lstm_96_layer_call_and_return_conditional_losses_144288

inputs>
+lstm_cell_21_matmul_readvariableop_resource:	?@
-lstm_cell_21_matmul_1_readvariableop_resource:	d?;
,lstm_cell_21_biasadd_readvariableop_resource:	?
identity??#lstm_cell_21/BiasAdd/ReadVariableOp?"lstm_cell_21/MatMul/ReadVariableOp?$lstm_cell_21/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_21/MatMul/ReadVariableOpReadVariableOp+lstm_cell_21_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_21/MatMulMatMulstrided_slice_2:output:0*lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_21/MatMul_1MatMulzeros:output:0,lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_21/addAddV2lstm_cell_21/MatMul:product:0lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_21/BiasAddBiasAddlstm_cell_21/add:z:0+lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_21/splitSplit%lstm_cell_21/split/split_dim:output:0lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitn
lstm_cell_21/SigmoidSigmoidlstm_cell_21/split:output:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_21/Sigmoid_1Sigmoidlstm_cell_21/split:output:1*
T0*'
_output_shapes
:?????????dw
lstm_cell_21/mulMullstm_cell_21/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dh
lstm_cell_21/ReluRelulstm_cell_21/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_21/mul_1Mullstm_cell_21/Sigmoid:y:0lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:?????????d{
lstm_cell_21/add_1AddV2lstm_cell_21/mul:z:0lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_21/Sigmoid_2Sigmoidlstm_cell_21/split:output:3*
T0*'
_output_shapes
:?????????de
lstm_cell_21/Relu_1Relulstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_21/mul_2Mullstm_cell_21/Sigmoid_2:y:0!lstm_cell_21/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_21_matmul_readvariableop_resource-lstm_cell_21_matmul_1_readvariableop_resource,lstm_cell_21_biasadd_readvariableop_resource*
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
while_body_144204*
condR
while_cond_144203*K
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
NoOpNoOp$^lstm_cell_21/BiasAdd/ReadVariableOp#^lstm_cell_21/MatMul/ReadVariableOp%^lstm_cell_21/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_21/BiasAdd/ReadVariableOp#lstm_cell_21/BiasAdd/ReadVariableOp2H
"lstm_cell_21/MatMul/ReadVariableOp"lstm_cell_21/MatMul/ReadVariableOp2L
$lstm_cell_21/MatMul_1/ReadVariableOp$lstm_cell_21/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?A
?

lstm_97_while_body_143586,
(lstm_97_while_lstm_97_while_loop_counter2
.lstm_97_while_lstm_97_while_maximum_iterations
lstm_97_while_placeholder
lstm_97_while_placeholder_1
lstm_97_while_placeholder_2
lstm_97_while_placeholder_3+
'lstm_97_while_lstm_97_strided_slice_1_0g
clstm_97_while_tensorarrayv2read_tensorlistgetitem_lstm_97_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_97_while_lstm_cell_22_matmul_readvariableop_resource_0:	d?P
=lstm_97_while_lstm_cell_22_matmul_1_readvariableop_resource_0:	2?K
<lstm_97_while_lstm_cell_22_biasadd_readvariableop_resource_0:	?
lstm_97_while_identity
lstm_97_while_identity_1
lstm_97_while_identity_2
lstm_97_while_identity_3
lstm_97_while_identity_4
lstm_97_while_identity_5)
%lstm_97_while_lstm_97_strided_slice_1e
alstm_97_while_tensorarrayv2read_tensorlistgetitem_lstm_97_tensorarrayunstack_tensorlistfromtensorL
9lstm_97_while_lstm_cell_22_matmul_readvariableop_resource:	d?N
;lstm_97_while_lstm_cell_22_matmul_1_readvariableop_resource:	2?I
:lstm_97_while_lstm_cell_22_biasadd_readvariableop_resource:	???1lstm_97/while/lstm_cell_22/BiasAdd/ReadVariableOp?0lstm_97/while/lstm_cell_22/MatMul/ReadVariableOp?2lstm_97/while/lstm_cell_22/MatMul_1/ReadVariableOp?
?lstm_97/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
1lstm_97/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_97_while_tensorarrayv2read_tensorlistgetitem_lstm_97_tensorarrayunstack_tensorlistfromtensor_0lstm_97_while_placeholderHlstm_97/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
0lstm_97/while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp;lstm_97_while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
!lstm_97/while/lstm_cell_22/MatMulMatMul8lstm_97/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_97/while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
2lstm_97/while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp=lstm_97_while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
#lstm_97/while/lstm_cell_22/MatMul_1MatMullstm_97_while_placeholder_2:lstm_97/while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_97/while/lstm_cell_22/addAddV2+lstm_97/while/lstm_cell_22/MatMul:product:0-lstm_97/while/lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
1lstm_97/while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp<lstm_97_while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
"lstm_97/while/lstm_cell_22/BiasAddBiasAdd"lstm_97/while/lstm_cell_22/add:z:09lstm_97/while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????l
*lstm_97/while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
 lstm_97/while/lstm_cell_22/splitSplit3lstm_97/while/lstm_cell_22/split/split_dim:output:0+lstm_97/while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
"lstm_97/while/lstm_cell_22/SigmoidSigmoid)lstm_97/while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:?????????2?
$lstm_97/while/lstm_cell_22/Sigmoid_1Sigmoid)lstm_97/while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_97/while/lstm_cell_22/mulMul(lstm_97/while/lstm_cell_22/Sigmoid_1:y:0lstm_97_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
lstm_97/while/lstm_cell_22/ReluRelu)lstm_97/while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:?????????2?
 lstm_97/while/lstm_cell_22/mul_1Mul&lstm_97/while/lstm_cell_22/Sigmoid:y:0-lstm_97/while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
 lstm_97/while/lstm_cell_22/add_1AddV2"lstm_97/while/lstm_cell_22/mul:z:0$lstm_97/while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
$lstm_97/while/lstm_cell_22/Sigmoid_2Sigmoid)lstm_97/while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:?????????2?
!lstm_97/while/lstm_cell_22/Relu_1Relu$lstm_97/while/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_97/while/lstm_cell_22/mul_2Mul(lstm_97/while/lstm_cell_22/Sigmoid_2:y:0/lstm_97/while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
2lstm_97/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_97_while_placeholder_1lstm_97_while_placeholder$lstm_97/while/lstm_cell_22/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_97/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_97/while/addAddV2lstm_97_while_placeholderlstm_97/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_97/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_97/while/add_1AddV2(lstm_97_while_lstm_97_while_loop_counterlstm_97/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_97/while/IdentityIdentitylstm_97/while/add_1:z:0^lstm_97/while/NoOp*
T0*
_output_shapes
: ?
lstm_97/while/Identity_1Identity.lstm_97_while_lstm_97_while_maximum_iterations^lstm_97/while/NoOp*
T0*
_output_shapes
: q
lstm_97/while/Identity_2Identitylstm_97/while/add:z:0^lstm_97/while/NoOp*
T0*
_output_shapes
: ?
lstm_97/while/Identity_3IdentityBlstm_97/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_97/while/NoOp*
T0*
_output_shapes
: ?
lstm_97/while/Identity_4Identity$lstm_97/while/lstm_cell_22/mul_2:z:0^lstm_97/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_97/while/Identity_5Identity$lstm_97/while/lstm_cell_22/add_1:z:0^lstm_97/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_97/while/NoOpNoOp2^lstm_97/while/lstm_cell_22/BiasAdd/ReadVariableOp1^lstm_97/while/lstm_cell_22/MatMul/ReadVariableOp3^lstm_97/while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_97_while_identitylstm_97/while/Identity:output:0"=
lstm_97_while_identity_1!lstm_97/while/Identity_1:output:0"=
lstm_97_while_identity_2!lstm_97/while/Identity_2:output:0"=
lstm_97_while_identity_3!lstm_97/while/Identity_3:output:0"=
lstm_97_while_identity_4!lstm_97/while/Identity_4:output:0"=
lstm_97_while_identity_5!lstm_97/while/Identity_5:output:0"P
%lstm_97_while_lstm_97_strided_slice_1'lstm_97_while_lstm_97_strided_slice_1_0"z
:lstm_97_while_lstm_cell_22_biasadd_readvariableop_resource<lstm_97_while_lstm_cell_22_biasadd_readvariableop_resource_0"|
;lstm_97_while_lstm_cell_22_matmul_1_readvariableop_resource=lstm_97_while_lstm_cell_22_matmul_1_readvariableop_resource_0"x
9lstm_97_while_lstm_cell_22_matmul_readvariableop_resource;lstm_97_while_lstm_cell_22_matmul_readvariableop_resource_0"?
alstm_97_while_tensorarrayv2read_tensorlistgetitem_lstm_97_tensorarrayunstack_tensorlistfromtensorclstm_97_while_tensorarrayv2read_tensorlistgetitem_lstm_97_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2f
1lstm_97/while/lstm_cell_22/BiasAdd/ReadVariableOp1lstm_97/while/lstm_cell_22/BiasAdd/ReadVariableOp2d
0lstm_97/while/lstm_cell_22/MatMul/ReadVariableOp0lstm_97/while/lstm_cell_22/MatMul/ReadVariableOp2h
2lstm_97/while/lstm_cell_22/MatMul_1/ReadVariableOp2lstm_97/while/lstm_cell_22/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
(__inference_lstm_98_layer_call_fn_145080

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
C__inference_lstm_98_layer_call_and_return_conditional_losses_142146o
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
while_body_143918
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_21_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_21_matmul_1_readvariableop_resource_0:	d?C
4while_lstm_cell_21_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_21_matmul_readvariableop_resource:	?F
3while_lstm_cell_21_matmul_1_readvariableop_resource:	d?A
2while_lstm_cell_21_biasadd_readvariableop_resource:	???)while/lstm_cell_21/BiasAdd/ReadVariableOp?(while/lstm_cell_21/MatMul/ReadVariableOp?*while/lstm_cell_21/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
(while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_21/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_21/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_21/addAddV2#while/lstm_cell_21/MatMul:product:0%while/lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_21/BiasAddBiasAddwhile/lstm_cell_21/add:z:01while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_21/splitSplit+while/lstm_cell_21/split/split_dim:output:0#while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitz
while/lstm_cell_21/SigmoidSigmoid!while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_21/Sigmoid_1Sigmoid!while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_21/mulMul while/lstm_cell_21/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dt
while/lstm_cell_21/ReluRelu!while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_21/mul_1Mulwhile/lstm_cell_21/Sigmoid:y:0%while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_21/add_1AddV2while/lstm_cell_21/mul:z:0while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_21/Sigmoid_2Sigmoid!while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:?????????dq
while/lstm_cell_21/Relu_1Reluwhile/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_21/mul_2Mul while/lstm_cell_21/Sigmoid_2:y:0'while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_21/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_21/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dy
while/Identity_5Identitywhile/lstm_cell_21/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp*^while/lstm_cell_21/BiasAdd/ReadVariableOp)^while/lstm_cell_21/MatMul/ReadVariableOp+^while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_21_biasadd_readvariableop_resource4while_lstm_cell_21_biasadd_readvariableop_resource_0"l
3while_lstm_cell_21_matmul_1_readvariableop_resource5while_lstm_cell_21_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_21_matmul_readvariableop_resource3while_lstm_cell_21_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2V
)while/lstm_cell_21/BiasAdd/ReadVariableOp)while/lstm_cell_21/BiasAdd/ReadVariableOp2T
(while/lstm_cell_21/MatMul/ReadVariableOp(while/lstm_cell_21/MatMul/ReadVariableOp2X
*while/lstm_cell_21/MatMul_1/ReadVariableOp*while/lstm_cell_21/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_141268
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_141268___redundant_placeholder04
0while_while_cond_141268___redundant_placeholder14
0while_while_cond_141268___redundant_placeholder24
0while_while_cond_141268___redundant_placeholder3
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
while_cond_141618
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_141618___redundant_placeholder04
0while_while_cond_141618___redundant_placeholder14
0while_while_cond_141618___redundant_placeholder24
0while_while_cond_141618___redundant_placeholder3
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
C__inference_lstm_96_layer_call_and_return_conditional_losses_142692

inputs>
+lstm_cell_21_matmul_readvariableop_resource:	?@
-lstm_cell_21_matmul_1_readvariableop_resource:	d?;
,lstm_cell_21_biasadd_readvariableop_resource:	?
identity??#lstm_cell_21/BiasAdd/ReadVariableOp?"lstm_cell_21/MatMul/ReadVariableOp?$lstm_cell_21/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_21/MatMul/ReadVariableOpReadVariableOp+lstm_cell_21_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_21/MatMulMatMulstrided_slice_2:output:0*lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_21/MatMul_1MatMulzeros:output:0,lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_21/addAddV2lstm_cell_21/MatMul:product:0lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_21/BiasAddBiasAddlstm_cell_21/add:z:0+lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_21/splitSplit%lstm_cell_21/split/split_dim:output:0lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitn
lstm_cell_21/SigmoidSigmoidlstm_cell_21/split:output:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_21/Sigmoid_1Sigmoidlstm_cell_21/split:output:1*
T0*'
_output_shapes
:?????????dw
lstm_cell_21/mulMullstm_cell_21/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dh
lstm_cell_21/ReluRelulstm_cell_21/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_21/mul_1Mullstm_cell_21/Sigmoid:y:0lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:?????????d{
lstm_cell_21/add_1AddV2lstm_cell_21/mul:z:0lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_21/Sigmoid_2Sigmoidlstm_cell_21/split:output:3*
T0*'
_output_shapes
:?????????de
lstm_cell_21/Relu_1Relulstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_21/mul_2Mullstm_cell_21/Sigmoid_2:y:0!lstm_cell_21/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_21_matmul_readvariableop_resource-lstm_cell_21_matmul_1_readvariableop_resource,lstm_cell_21_biasadd_readvariableop_resource*
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
while_body_142608*
condR
while_cond_142607*K
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
NoOpNoOp$^lstm_cell_21/BiasAdd/ReadVariableOp#^lstm_cell_21/MatMul/ReadVariableOp%^lstm_cell_21/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_21/BiasAdd/ReadVariableOp#lstm_cell_21/BiasAdd/ReadVariableOp2H
"lstm_cell_21/MatMul/ReadVariableOp"lstm_cell_21/MatMul/ReadVariableOp2L
$lstm_cell_21/MatMul_1/ReadVariableOp$lstm_cell_21/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?A
?

lstm_97_while_body_143159,
(lstm_97_while_lstm_97_while_loop_counter2
.lstm_97_while_lstm_97_while_maximum_iterations
lstm_97_while_placeholder
lstm_97_while_placeholder_1
lstm_97_while_placeholder_2
lstm_97_while_placeholder_3+
'lstm_97_while_lstm_97_strided_slice_1_0g
clstm_97_while_tensorarrayv2read_tensorlistgetitem_lstm_97_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_97_while_lstm_cell_22_matmul_readvariableop_resource_0:	d?P
=lstm_97_while_lstm_cell_22_matmul_1_readvariableop_resource_0:	2?K
<lstm_97_while_lstm_cell_22_biasadd_readvariableop_resource_0:	?
lstm_97_while_identity
lstm_97_while_identity_1
lstm_97_while_identity_2
lstm_97_while_identity_3
lstm_97_while_identity_4
lstm_97_while_identity_5)
%lstm_97_while_lstm_97_strided_slice_1e
alstm_97_while_tensorarrayv2read_tensorlistgetitem_lstm_97_tensorarrayunstack_tensorlistfromtensorL
9lstm_97_while_lstm_cell_22_matmul_readvariableop_resource:	d?N
;lstm_97_while_lstm_cell_22_matmul_1_readvariableop_resource:	2?I
:lstm_97_while_lstm_cell_22_biasadd_readvariableop_resource:	???1lstm_97/while/lstm_cell_22/BiasAdd/ReadVariableOp?0lstm_97/while/lstm_cell_22/MatMul/ReadVariableOp?2lstm_97/while/lstm_cell_22/MatMul_1/ReadVariableOp?
?lstm_97/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
1lstm_97/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_97_while_tensorarrayv2read_tensorlistgetitem_lstm_97_tensorarrayunstack_tensorlistfromtensor_0lstm_97_while_placeholderHlstm_97/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
0lstm_97/while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp;lstm_97_while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
!lstm_97/while/lstm_cell_22/MatMulMatMul8lstm_97/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_97/while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
2lstm_97/while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp=lstm_97_while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
#lstm_97/while/lstm_cell_22/MatMul_1MatMullstm_97_while_placeholder_2:lstm_97/while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_97/while/lstm_cell_22/addAddV2+lstm_97/while/lstm_cell_22/MatMul:product:0-lstm_97/while/lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
1lstm_97/while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp<lstm_97_while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
"lstm_97/while/lstm_cell_22/BiasAddBiasAdd"lstm_97/while/lstm_cell_22/add:z:09lstm_97/while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????l
*lstm_97/while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
 lstm_97/while/lstm_cell_22/splitSplit3lstm_97/while/lstm_cell_22/split/split_dim:output:0+lstm_97/while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
"lstm_97/while/lstm_cell_22/SigmoidSigmoid)lstm_97/while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:?????????2?
$lstm_97/while/lstm_cell_22/Sigmoid_1Sigmoid)lstm_97/while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_97/while/lstm_cell_22/mulMul(lstm_97/while/lstm_cell_22/Sigmoid_1:y:0lstm_97_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
lstm_97/while/lstm_cell_22/ReluRelu)lstm_97/while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:?????????2?
 lstm_97/while/lstm_cell_22/mul_1Mul&lstm_97/while/lstm_cell_22/Sigmoid:y:0-lstm_97/while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
 lstm_97/while/lstm_cell_22/add_1AddV2"lstm_97/while/lstm_cell_22/mul:z:0$lstm_97/while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
$lstm_97/while/lstm_cell_22/Sigmoid_2Sigmoid)lstm_97/while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:?????????2?
!lstm_97/while/lstm_cell_22/Relu_1Relu$lstm_97/while/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_97/while/lstm_cell_22/mul_2Mul(lstm_97/while/lstm_cell_22/Sigmoid_2:y:0/lstm_97/while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
2lstm_97/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_97_while_placeholder_1lstm_97_while_placeholder$lstm_97/while/lstm_cell_22/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_97/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_97/while/addAddV2lstm_97_while_placeholderlstm_97/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_97/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_97/while/add_1AddV2(lstm_97_while_lstm_97_while_loop_counterlstm_97/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_97/while/IdentityIdentitylstm_97/while/add_1:z:0^lstm_97/while/NoOp*
T0*
_output_shapes
: ?
lstm_97/while/Identity_1Identity.lstm_97_while_lstm_97_while_maximum_iterations^lstm_97/while/NoOp*
T0*
_output_shapes
: q
lstm_97/while/Identity_2Identitylstm_97/while/add:z:0^lstm_97/while/NoOp*
T0*
_output_shapes
: ?
lstm_97/while/Identity_3IdentityBlstm_97/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_97/while/NoOp*
T0*
_output_shapes
: ?
lstm_97/while/Identity_4Identity$lstm_97/while/lstm_cell_22/mul_2:z:0^lstm_97/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_97/while/Identity_5Identity$lstm_97/while/lstm_cell_22/add_1:z:0^lstm_97/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_97/while/NoOpNoOp2^lstm_97/while/lstm_cell_22/BiasAdd/ReadVariableOp1^lstm_97/while/lstm_cell_22/MatMul/ReadVariableOp3^lstm_97/while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_97_while_identitylstm_97/while/Identity:output:0"=
lstm_97_while_identity_1!lstm_97/while/Identity_1:output:0"=
lstm_97_while_identity_2!lstm_97/while/Identity_2:output:0"=
lstm_97_while_identity_3!lstm_97/while/Identity_3:output:0"=
lstm_97_while_identity_4!lstm_97/while/Identity_4:output:0"=
lstm_97_while_identity_5!lstm_97/while/Identity_5:output:0"P
%lstm_97_while_lstm_97_strided_slice_1'lstm_97_while_lstm_97_strided_slice_1_0"z
:lstm_97_while_lstm_cell_22_biasadd_readvariableop_resource<lstm_97_while_lstm_cell_22_biasadd_readvariableop_resource_0"|
;lstm_97_while_lstm_cell_22_matmul_1_readvariableop_resource=lstm_97_while_lstm_cell_22_matmul_1_readvariableop_resource_0"x
9lstm_97_while_lstm_cell_22_matmul_readvariableop_resource;lstm_97_while_lstm_cell_22_matmul_readvariableop_resource_0"?
alstm_97_while_tensorarrayv2read_tensorlistgetitem_lstm_97_tensorarrayunstack_tensorlistfromtensorclstm_97_while_tensorarrayv2read_tensorlistgetitem_lstm_97_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2f
1lstm_97/while/lstm_cell_22/BiasAdd/ReadVariableOp1lstm_97/while/lstm_cell_22/BiasAdd/ReadVariableOp2d
0lstm_97/while/lstm_cell_22/MatMul/ReadVariableOp0lstm_97/while/lstm_cell_22/MatMul/ReadVariableOp2h
2lstm_97/while/lstm_cell_22/MatMul_1/ReadVariableOp2lstm_97/while/lstm_cell_22/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
C__inference_lstm_96_layer_call_and_return_conditional_losses_144431

inputs>
+lstm_cell_21_matmul_readvariableop_resource:	?@
-lstm_cell_21_matmul_1_readvariableop_resource:	d?;
,lstm_cell_21_biasadd_readvariableop_resource:	?
identity??#lstm_cell_21/BiasAdd/ReadVariableOp?"lstm_cell_21/MatMul/ReadVariableOp?$lstm_cell_21/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_21/MatMul/ReadVariableOpReadVariableOp+lstm_cell_21_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_21/MatMulMatMulstrided_slice_2:output:0*lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_21/MatMul_1MatMulzeros:output:0,lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_21/addAddV2lstm_cell_21/MatMul:product:0lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_21/BiasAddBiasAddlstm_cell_21/add:z:0+lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_21/splitSplit%lstm_cell_21/split/split_dim:output:0lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitn
lstm_cell_21/SigmoidSigmoidlstm_cell_21/split:output:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_21/Sigmoid_1Sigmoidlstm_cell_21/split:output:1*
T0*'
_output_shapes
:?????????dw
lstm_cell_21/mulMullstm_cell_21/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dh
lstm_cell_21/ReluRelulstm_cell_21/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_21/mul_1Mullstm_cell_21/Sigmoid:y:0lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:?????????d{
lstm_cell_21/add_1AddV2lstm_cell_21/mul:z:0lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_21/Sigmoid_2Sigmoidlstm_cell_21/split:output:3*
T0*'
_output_shapes
:?????????de
lstm_cell_21/Relu_1Relulstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_21/mul_2Mullstm_cell_21/Sigmoid_2:y:0!lstm_cell_21/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_21_matmul_readvariableop_resource-lstm_cell_21_matmul_1_readvariableop_resource,lstm_cell_21_biasadd_readvariableop_resource*
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
while_body_144347*
condR
while_cond_144346*K
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
NoOpNoOp$^lstm_cell_21/BiasAdd/ReadVariableOp#^lstm_cell_21/MatMul/ReadVariableOp%^lstm_cell_21/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_21/BiasAdd/ReadVariableOp#lstm_cell_21/BiasAdd/ReadVariableOp2H
"lstm_cell_21/MatMul/ReadVariableOp"lstm_cell_21/MatMul/ReadVariableOp2L
$lstm_cell_21/MatMul_1/ReadVariableOp$lstm_cell_21/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_98_while_cond_143724,
(lstm_98_while_lstm_98_while_loop_counter2
.lstm_98_while_lstm_98_while_maximum_iterations
lstm_98_while_placeholder
lstm_98_while_placeholder_1
lstm_98_while_placeholder_2
lstm_98_while_placeholder_3.
*lstm_98_while_less_lstm_98_strided_slice_1D
@lstm_98_while_lstm_98_while_cond_143724___redundant_placeholder0D
@lstm_98_while_lstm_98_while_cond_143724___redundant_placeholder1D
@lstm_98_while_lstm_98_while_cond_143724___redundant_placeholder2D
@lstm_98_while_lstm_98_while_cond_143724___redundant_placeholder3
lstm_98_while_identity
?
lstm_98/while/LessLesslstm_98_while_placeholder*lstm_98_while_less_lstm_98_strided_slice_1*
T0*
_output_shapes
: [
lstm_98/while/IdentityIdentitylstm_98/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_98_while_identitylstm_98/while/Identity:output:0*(
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
C__inference_lstm_98_layer_call_and_return_conditional_losses_145520

inputs=
+lstm_cell_23_matmul_readvariableop_resource:2(?
-lstm_cell_23_matmul_1_readvariableop_resource:
(:
,lstm_cell_23_biasadd_readvariableop_resource:(
identity??#lstm_cell_23/BiasAdd/ReadVariableOp?"lstm_cell_23/MatMul/ReadVariableOp?$lstm_cell_23/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_23/MatMul/ReadVariableOpReadVariableOp+lstm_cell_23_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_23/MatMulMatMulstrided_slice_2:output:0*lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_23/MatMul_1MatMulzeros:output:0,lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_23/addAddV2lstm_cell_23/MatMul:product:0lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
#lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_23/BiasAddBiasAddlstm_cell_23/add:z:0+lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(^
lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_23/splitSplit%lstm_cell_23/split/split_dim:output:0lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitn
lstm_cell_23/SigmoidSigmoidlstm_cell_23/split:output:0*
T0*'
_output_shapes
:?????????
p
lstm_cell_23/Sigmoid_1Sigmoidlstm_cell_23/split:output:1*
T0*'
_output_shapes
:?????????
w
lstm_cell_23/mulMullstm_cell_23/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
h
lstm_cell_23/ReluRelulstm_cell_23/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_23/mul_1Mullstm_cell_23/Sigmoid:y:0lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:?????????
{
lstm_cell_23/add_1AddV2lstm_cell_23/mul:z:0lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:?????????
p
lstm_cell_23/Sigmoid_2Sigmoidlstm_cell_23/split:output:3*
T0*'
_output_shapes
:?????????
e
lstm_cell_23/Relu_1Relulstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_23/mul_2Mullstm_cell_23/Sigmoid_2:y:0!lstm_cell_23/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_23_matmul_readvariableop_resource-lstm_cell_23_matmul_1_readvariableop_resource,lstm_cell_23_biasadd_readvariableop_resource*
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
while_body_145436*
condR
while_cond_145435*K
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
NoOpNoOp$^lstm_cell_23/BiasAdd/ReadVariableOp#^lstm_cell_23/MatMul/ReadVariableOp%^lstm_cell_23/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2J
#lstm_cell_23/BiasAdd/ReadVariableOp#lstm_cell_23/BiasAdd/ReadVariableOp2H
"lstm_cell_23/MatMul/ReadVariableOp"lstm_cell_23/MatMul/ReadVariableOp2L
$lstm_cell_23/MatMul_1/ReadVariableOp$lstm_cell_23/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_140860

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
C__inference_lstm_97_layer_call_and_return_conditional_losses_141996

inputs>
+lstm_cell_22_matmul_readvariableop_resource:	d?@
-lstm_cell_22_matmul_1_readvariableop_resource:	2?;
,lstm_cell_22_biasadd_readvariableop_resource:	?
identity??#lstm_cell_22/BiasAdd/ReadVariableOp?"lstm_cell_22/MatMul/ReadVariableOp?$lstm_cell_22/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_22/MatMul/ReadVariableOpReadVariableOp+lstm_cell_22_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_22/MatMulMatMulstrided_slice_2:output:0*lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_22/MatMul_1MatMulzeros:output:0,lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_22/addAddV2lstm_cell_22/MatMul:product:0lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_22/BiasAddBiasAddlstm_cell_22/add:z:0+lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_22/splitSplit%lstm_cell_22/split/split_dim:output:0lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitn
lstm_cell_22/SigmoidSigmoidlstm_cell_22/split:output:0*
T0*'
_output_shapes
:?????????2p
lstm_cell_22/Sigmoid_1Sigmoidlstm_cell_22/split:output:1*
T0*'
_output_shapes
:?????????2w
lstm_cell_22/mulMullstm_cell_22/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2h
lstm_cell_22/ReluRelulstm_cell_22/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_22/mul_1Mullstm_cell_22/Sigmoid:y:0lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:?????????2{
lstm_cell_22/add_1AddV2lstm_cell_22/mul:z:0lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:?????????2p
lstm_cell_22/Sigmoid_2Sigmoidlstm_cell_22/split:output:3*
T0*'
_output_shapes
:?????????2e
lstm_cell_22/Relu_1Relulstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_22/mul_2Mullstm_cell_22/Sigmoid_2:y:0!lstm_cell_22/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_22_matmul_readvariableop_resource-lstm_cell_22_matmul_1_readvariableop_resource,lstm_cell_22_biasadd_readvariableop_resource*
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
while_body_141912*
condR
while_cond_141911*K
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
NoOpNoOp$^lstm_cell_22/BiasAdd/ReadVariableOp#^lstm_cell_22/MatMul/ReadVariableOp%^lstm_cell_22/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2J
#lstm_cell_22/BiasAdd/ReadVariableOp#lstm_cell_22/BiasAdd/ReadVariableOp2H
"lstm_cell_22/MatMul/ReadVariableOp"lstm_cell_22/MatMul/ReadVariableOp2L
$lstm_cell_22/MatMul_1/ReadVariableOp$lstm_cell_22/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
C__inference_lstm_98_layer_call_and_return_conditional_losses_145377
inputs_0=
+lstm_cell_23_matmul_readvariableop_resource:2(?
-lstm_cell_23_matmul_1_readvariableop_resource:
(:
,lstm_cell_23_biasadd_readvariableop_resource:(
identity??#lstm_cell_23/BiasAdd/ReadVariableOp?"lstm_cell_23/MatMul/ReadVariableOp?$lstm_cell_23/MatMul_1/ReadVariableOp?while=
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
"lstm_cell_23/MatMul/ReadVariableOpReadVariableOp+lstm_cell_23_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_23/MatMulMatMulstrided_slice_2:output:0*lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_23/MatMul_1MatMulzeros:output:0,lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_23/addAddV2lstm_cell_23/MatMul:product:0lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
#lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_23/BiasAddBiasAddlstm_cell_23/add:z:0+lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(^
lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_23/splitSplit%lstm_cell_23/split/split_dim:output:0lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitn
lstm_cell_23/SigmoidSigmoidlstm_cell_23/split:output:0*
T0*'
_output_shapes
:?????????
p
lstm_cell_23/Sigmoid_1Sigmoidlstm_cell_23/split:output:1*
T0*'
_output_shapes
:?????????
w
lstm_cell_23/mulMullstm_cell_23/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
h
lstm_cell_23/ReluRelulstm_cell_23/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_23/mul_1Mullstm_cell_23/Sigmoid:y:0lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:?????????
{
lstm_cell_23/add_1AddV2lstm_cell_23/mul:z:0lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:?????????
p
lstm_cell_23/Sigmoid_2Sigmoidlstm_cell_23/split:output:3*
T0*'
_output_shapes
:?????????
e
lstm_cell_23/Relu_1Relulstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_23/mul_2Mullstm_cell_23/Sigmoid_2:y:0!lstm_cell_23/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_23_matmul_readvariableop_resource-lstm_cell_23_matmul_1_readvariableop_resource,lstm_cell_23_biasadd_readvariableop_resource*
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
while_body_145293*
condR
while_cond_145292*K
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
NoOpNoOp$^lstm_cell_23/BiasAdd/ReadVariableOp#^lstm_cell_23/MatMul/ReadVariableOp%^lstm_cell_23/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2J
#lstm_cell_23/BiasAdd/ReadVariableOp#lstm_cell_23/BiasAdd/ReadVariableOp2H
"lstm_cell_23/MatMul/ReadVariableOp"lstm_cell_23/MatMul/ReadVariableOp2L
$lstm_cell_23/MatMul_1/ReadVariableOp$lstm_cell_23/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_145435
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_145435___redundant_placeholder04
0while_while_cond_145435___redundant_placeholder14
0while_while_cond_145435___redundant_placeholder24
0while_while_cond_145435___redundant_placeholder3
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
while_body_144204
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_21_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_21_matmul_1_readvariableop_resource_0:	d?C
4while_lstm_cell_21_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_21_matmul_readvariableop_resource:	?F
3while_lstm_cell_21_matmul_1_readvariableop_resource:	d?A
2while_lstm_cell_21_biasadd_readvariableop_resource:	???)while/lstm_cell_21/BiasAdd/ReadVariableOp?(while/lstm_cell_21/MatMul/ReadVariableOp?*while/lstm_cell_21/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
(while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_21/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_21/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_21/addAddV2#while/lstm_cell_21/MatMul:product:0%while/lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_21/BiasAddBiasAddwhile/lstm_cell_21/add:z:01while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_21/splitSplit+while/lstm_cell_21/split/split_dim:output:0#while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitz
while/lstm_cell_21/SigmoidSigmoid!while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_21/Sigmoid_1Sigmoid!while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_21/mulMul while/lstm_cell_21/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dt
while/lstm_cell_21/ReluRelu!while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_21/mul_1Mulwhile/lstm_cell_21/Sigmoid:y:0%while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_21/add_1AddV2while/lstm_cell_21/mul:z:0while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_21/Sigmoid_2Sigmoid!while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:?????????dq
while/lstm_cell_21/Relu_1Reluwhile/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_21/mul_2Mul while/lstm_cell_21/Sigmoid_2:y:0'while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_21/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_21/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dy
while/Identity_5Identitywhile/lstm_cell_21/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp*^while/lstm_cell_21/BiasAdd/ReadVariableOp)^while/lstm_cell_21/MatMul/ReadVariableOp+^while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_21_biasadd_readvariableop_resource4while_lstm_cell_21_biasadd_readvariableop_resource_0"l
3while_lstm_cell_21_matmul_1_readvariableop_resource5while_lstm_cell_21_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_21_matmul_readvariableop_resource3while_lstm_cell_21_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2V
)while/lstm_cell_21/BiasAdd/ReadVariableOp)while/lstm_cell_21/BiasAdd/ReadVariableOp2T
(while/lstm_cell_21/MatMul/ReadVariableOp(while/lstm_cell_21/MatMul/ReadVariableOp2X
*while/lstm_cell_21/MatMul_1/ReadVariableOp*while/lstm_cell_21/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_141761
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_141761___redundant_placeholder04
0while_while_cond_141761___redundant_placeholder14
0while_while_cond_141761___redundant_placeholder24
0while_while_cond_141761___redundant_placeholder3
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
while_cond_141911
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_141911___redundant_placeholder04
0while_while_cond_141911___redundant_placeholder14
0while_while_cond_141911___redundant_placeholder24
0while_while_cond_141911___redundant_placeholder3
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
while_cond_145149
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_145149___redundant_placeholder04
0while_while_cond_145149___redundant_placeholder14
0while_while_cond_145149___redundant_placeholder24
0while_while_cond_145149___redundant_placeholder3
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
'sequential_32_lstm_96_while_cond_140278H
Dsequential_32_lstm_96_while_sequential_32_lstm_96_while_loop_counterN
Jsequential_32_lstm_96_while_sequential_32_lstm_96_while_maximum_iterations+
'sequential_32_lstm_96_while_placeholder-
)sequential_32_lstm_96_while_placeholder_1-
)sequential_32_lstm_96_while_placeholder_2-
)sequential_32_lstm_96_while_placeholder_3J
Fsequential_32_lstm_96_while_less_sequential_32_lstm_96_strided_slice_1`
\sequential_32_lstm_96_while_sequential_32_lstm_96_while_cond_140278___redundant_placeholder0`
\sequential_32_lstm_96_while_sequential_32_lstm_96_while_cond_140278___redundant_placeholder1`
\sequential_32_lstm_96_while_sequential_32_lstm_96_while_cond_140278___redundant_placeholder2`
\sequential_32_lstm_96_while_sequential_32_lstm_96_while_cond_140278___redundant_placeholder3(
$sequential_32_lstm_96_while_identity
?
 sequential_32/lstm_96/while/LessLess'sequential_32_lstm_96_while_placeholderFsequential_32_lstm_96_while_less_sequential_32_lstm_96_strided_slice_1*
T0*
_output_shapes
: w
$sequential_32/lstm_96/while/IdentityIdentity$sequential_32/lstm_96/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_32_lstm_96_while_identity-sequential_32/lstm_96/while/Identity:output:0*(
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
?7
?
while_body_145436
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_23_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_23_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_23_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_23_matmul_readvariableop_resource:2(E
3while_lstm_cell_23_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_23_biasadd_readvariableop_resource:(??)while/lstm_cell_23/BiasAdd/ReadVariableOp?(while/lstm_cell_23/MatMul/ReadVariableOp?*while/lstm_cell_23/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
(while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_23/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_23/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_23/addAddV2#while/lstm_cell_23/MatMul:product:0%while/lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
)while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_23/BiasAddBiasAddwhile/lstm_cell_23/add:z:01while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
"while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_23/splitSplit+while/lstm_cell_23/split/split_dim:output:0#while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitz
while/lstm_cell_23/SigmoidSigmoid!while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:?????????
|
while/lstm_cell_23/Sigmoid_1Sigmoid!while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_23/mulMul while/lstm_cell_23/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
t
while/lstm_cell_23/ReluRelu!while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_23/mul_1Mulwhile/lstm_cell_23/Sigmoid:y:0%while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_23/add_1AddV2while/lstm_cell_23/mul:z:0while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:?????????
|
while/lstm_cell_23/Sigmoid_2Sigmoid!while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:?????????
q
while/lstm_cell_23/Relu_1Reluwhile/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_23/mul_2Mul while/lstm_cell_23/Sigmoid_2:y:0'while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_23/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_23/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
y
while/Identity_5Identitywhile/lstm_cell_23/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp*^while/lstm_cell_23/BiasAdd/ReadVariableOp)^while/lstm_cell_23/MatMul/ReadVariableOp+^while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_23_biasadd_readvariableop_resource4while_lstm_cell_23_biasadd_readvariableop_resource_0"l
3while_lstm_cell_23_matmul_1_readvariableop_resource5while_lstm_cell_23_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_23_matmul_readvariableop_resource3while_lstm_cell_23_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2V
)while/lstm_cell_23/BiasAdd/ReadVariableOp)while/lstm_cell_23/BiasAdd/ReadVariableOp2T
(while/lstm_cell_23/MatMul/ReadVariableOp(while/lstm_cell_23/MatMul/ReadVariableOp2X
*while/lstm_cell_23/MatMul_1/ReadVariableOp*while/lstm_cell_23/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
(__inference_lstm_97_layer_call_fn_144453
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
C__inference_lstm_97_layer_call_and_return_conditional_losses_141338|
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
?J
?
C__inference_lstm_97_layer_call_and_return_conditional_losses_144904

inputs>
+lstm_cell_22_matmul_readvariableop_resource:	d?@
-lstm_cell_22_matmul_1_readvariableop_resource:	2?;
,lstm_cell_22_biasadd_readvariableop_resource:	?
identity??#lstm_cell_22/BiasAdd/ReadVariableOp?"lstm_cell_22/MatMul/ReadVariableOp?$lstm_cell_22/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_22/MatMul/ReadVariableOpReadVariableOp+lstm_cell_22_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_22/MatMulMatMulstrided_slice_2:output:0*lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_22/MatMul_1MatMulzeros:output:0,lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_22/addAddV2lstm_cell_22/MatMul:product:0lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_22/BiasAddBiasAddlstm_cell_22/add:z:0+lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_22/splitSplit%lstm_cell_22/split/split_dim:output:0lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitn
lstm_cell_22/SigmoidSigmoidlstm_cell_22/split:output:0*
T0*'
_output_shapes
:?????????2p
lstm_cell_22/Sigmoid_1Sigmoidlstm_cell_22/split:output:1*
T0*'
_output_shapes
:?????????2w
lstm_cell_22/mulMullstm_cell_22/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2h
lstm_cell_22/ReluRelulstm_cell_22/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_22/mul_1Mullstm_cell_22/Sigmoid:y:0lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:?????????2{
lstm_cell_22/add_1AddV2lstm_cell_22/mul:z:0lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:?????????2p
lstm_cell_22/Sigmoid_2Sigmoidlstm_cell_22/split:output:3*
T0*'
_output_shapes
:?????????2e
lstm_cell_22/Relu_1Relulstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_22/mul_2Mullstm_cell_22/Sigmoid_2:y:0!lstm_cell_22/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_22_matmul_readvariableop_resource-lstm_cell_22_matmul_1_readvariableop_resource,lstm_cell_22_biasadd_readvariableop_resource*
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
while_body_144820*
condR
while_cond_144819*K
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
NoOpNoOp$^lstm_cell_22/BiasAdd/ReadVariableOp#^lstm_cell_22/MatMul/ReadVariableOp%^lstm_cell_22/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2J
#lstm_cell_22/BiasAdd/ReadVariableOp#lstm_cell_22/BiasAdd/ReadVariableOp2H
"lstm_cell_22/MatMul/ReadVariableOp"lstm_cell_22/MatMul/ReadVariableOp2L
$lstm_cell_22/MatMul_1/ReadVariableOp$lstm_cell_22/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?A
?

lstm_96_while_body_143020,
(lstm_96_while_lstm_96_while_loop_counter2
.lstm_96_while_lstm_96_while_maximum_iterations
lstm_96_while_placeholder
lstm_96_while_placeholder_1
lstm_96_while_placeholder_2
lstm_96_while_placeholder_3+
'lstm_96_while_lstm_96_strided_slice_1_0g
clstm_96_while_tensorarrayv2read_tensorlistgetitem_lstm_96_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_96_while_lstm_cell_21_matmul_readvariableop_resource_0:	?P
=lstm_96_while_lstm_cell_21_matmul_1_readvariableop_resource_0:	d?K
<lstm_96_while_lstm_cell_21_biasadd_readvariableop_resource_0:	?
lstm_96_while_identity
lstm_96_while_identity_1
lstm_96_while_identity_2
lstm_96_while_identity_3
lstm_96_while_identity_4
lstm_96_while_identity_5)
%lstm_96_while_lstm_96_strided_slice_1e
alstm_96_while_tensorarrayv2read_tensorlistgetitem_lstm_96_tensorarrayunstack_tensorlistfromtensorL
9lstm_96_while_lstm_cell_21_matmul_readvariableop_resource:	?N
;lstm_96_while_lstm_cell_21_matmul_1_readvariableop_resource:	d?I
:lstm_96_while_lstm_cell_21_biasadd_readvariableop_resource:	???1lstm_96/while/lstm_cell_21/BiasAdd/ReadVariableOp?0lstm_96/while/lstm_cell_21/MatMul/ReadVariableOp?2lstm_96/while/lstm_cell_21/MatMul_1/ReadVariableOp?
?lstm_96/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
1lstm_96/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_96_while_tensorarrayv2read_tensorlistgetitem_lstm_96_tensorarrayunstack_tensorlistfromtensor_0lstm_96_while_placeholderHlstm_96/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
0lstm_96/while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp;lstm_96_while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
!lstm_96/while/lstm_cell_21/MatMulMatMul8lstm_96/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_96/while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
2lstm_96/while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp=lstm_96_while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_96/while/lstm_cell_21/MatMul_1MatMullstm_96_while_placeholder_2:lstm_96/while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_96/while/lstm_cell_21/addAddV2+lstm_96/while/lstm_cell_21/MatMul:product:0-lstm_96/while/lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
1lstm_96/while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp<lstm_96_while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
"lstm_96/while/lstm_cell_21/BiasAddBiasAdd"lstm_96/while/lstm_cell_21/add:z:09lstm_96/while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????l
*lstm_96/while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
 lstm_96/while/lstm_cell_21/splitSplit3lstm_96/while/lstm_cell_21/split/split_dim:output:0+lstm_96/while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
"lstm_96/while/lstm_cell_21/SigmoidSigmoid)lstm_96/while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:?????????d?
$lstm_96/while/lstm_cell_21/Sigmoid_1Sigmoid)lstm_96/while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_96/while/lstm_cell_21/mulMul(lstm_96/while/lstm_cell_21/Sigmoid_1:y:0lstm_96_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
lstm_96/while/lstm_cell_21/ReluRelu)lstm_96/while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:?????????d?
 lstm_96/while/lstm_cell_21/mul_1Mul&lstm_96/while/lstm_cell_21/Sigmoid:y:0-lstm_96/while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
 lstm_96/while/lstm_cell_21/add_1AddV2"lstm_96/while/lstm_cell_21/mul:z:0$lstm_96/while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
$lstm_96/while/lstm_cell_21/Sigmoid_2Sigmoid)lstm_96/while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:?????????d?
!lstm_96/while/lstm_cell_21/Relu_1Relu$lstm_96/while/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_96/while/lstm_cell_21/mul_2Mul(lstm_96/while/lstm_cell_21/Sigmoid_2:y:0/lstm_96/while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
2lstm_96/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_96_while_placeholder_1lstm_96_while_placeholder$lstm_96/while/lstm_cell_21/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_96/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_96/while/addAddV2lstm_96_while_placeholderlstm_96/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_96/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_96/while/add_1AddV2(lstm_96_while_lstm_96_while_loop_counterlstm_96/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_96/while/IdentityIdentitylstm_96/while/add_1:z:0^lstm_96/while/NoOp*
T0*
_output_shapes
: ?
lstm_96/while/Identity_1Identity.lstm_96_while_lstm_96_while_maximum_iterations^lstm_96/while/NoOp*
T0*
_output_shapes
: q
lstm_96/while/Identity_2Identitylstm_96/while/add:z:0^lstm_96/while/NoOp*
T0*
_output_shapes
: ?
lstm_96/while/Identity_3IdentityBlstm_96/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_96/while/NoOp*
T0*
_output_shapes
: ?
lstm_96/while/Identity_4Identity$lstm_96/while/lstm_cell_21/mul_2:z:0^lstm_96/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_96/while/Identity_5Identity$lstm_96/while/lstm_cell_21/add_1:z:0^lstm_96/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_96/while/NoOpNoOp2^lstm_96/while/lstm_cell_21/BiasAdd/ReadVariableOp1^lstm_96/while/lstm_cell_21/MatMul/ReadVariableOp3^lstm_96/while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_96_while_identitylstm_96/while/Identity:output:0"=
lstm_96_while_identity_1!lstm_96/while/Identity_1:output:0"=
lstm_96_while_identity_2!lstm_96/while/Identity_2:output:0"=
lstm_96_while_identity_3!lstm_96/while/Identity_3:output:0"=
lstm_96_while_identity_4!lstm_96/while/Identity_4:output:0"=
lstm_96_while_identity_5!lstm_96/while/Identity_5:output:0"P
%lstm_96_while_lstm_96_strided_slice_1'lstm_96_while_lstm_96_strided_slice_1_0"z
:lstm_96_while_lstm_cell_21_biasadd_readvariableop_resource<lstm_96_while_lstm_cell_21_biasadd_readvariableop_resource_0"|
;lstm_96_while_lstm_cell_21_matmul_1_readvariableop_resource=lstm_96_while_lstm_cell_21_matmul_1_readvariableop_resource_0"x
9lstm_96_while_lstm_cell_21_matmul_readvariableop_resource;lstm_96_while_lstm_cell_21_matmul_readvariableop_resource_0"?
alstm_96_while_tensorarrayv2read_tensorlistgetitem_lstm_96_tensorarrayunstack_tensorlistfromtensorclstm_96_while_tensorarrayv2read_tensorlistgetitem_lstm_96_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2f
1lstm_96/while/lstm_cell_21/BiasAdd/ReadVariableOp1lstm_96/while/lstm_cell_21/BiasAdd/ReadVariableOp2d
0lstm_96/while/lstm_cell_21/MatMul/ReadVariableOp0lstm_96/while/lstm_cell_21/MatMul/ReadVariableOp2h
2lstm_96/while/lstm_cell_21/MatMul_1/ReadVariableOp2lstm_96/while/lstm_cell_21/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
$__inference_signature_wrapper_142907
lstm_96_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_96_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_140647o
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
_user_specified_namelstm_96_input
?
?
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_141414

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
?"
?
while_body_141078
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_22_141102_0:	d?.
while_lstm_cell_22_141104_0:	2?*
while_lstm_cell_22_141106_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_22_141102:	d?,
while_lstm_cell_22_141104:	2?(
while_lstm_cell_22_141106:	???*while/lstm_cell_22/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
*while/lstm_cell_22/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_22_141102_0while_lstm_cell_22_141104_0while_lstm_cell_22_141106_0*
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
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_141064?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_22/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_22/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity3while/lstm_cell_22/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2y

while/NoOpNoOp+^while/lstm_cell_22/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_22_141102while_lstm_cell_22_141102_0"8
while_lstm_cell_22_141104while_lstm_cell_22_141104_0"8
while_lstm_cell_22_141106while_lstm_cell_22_141106_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_22/StatefulPartitionedCall*while/lstm_cell_22/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_141210

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
?
while_body_142443
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_22_matmul_readvariableop_resource_0:	d?H
5while_lstm_cell_22_matmul_1_readvariableop_resource_0:	2?C
4while_lstm_cell_22_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_22_matmul_readvariableop_resource:	d?F
3while_lstm_cell_22_matmul_1_readvariableop_resource:	2?A
2while_lstm_cell_22_biasadd_readvariableop_resource:	???)while/lstm_cell_22/BiasAdd/ReadVariableOp?(while/lstm_cell_22/MatMul/ReadVariableOp?*while/lstm_cell_22/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
(while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_22/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_22/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_22/addAddV2#while/lstm_cell_22/MatMul:product:0%while/lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_22/BiasAddBiasAddwhile/lstm_cell_22/add:z:01while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_22/splitSplit+while/lstm_cell_22/split/split_dim:output:0#while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitz
while/lstm_cell_22/SigmoidSigmoid!while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:?????????2|
while/lstm_cell_22/Sigmoid_1Sigmoid!while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_22/mulMul while/lstm_cell_22/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2t
while/lstm_cell_22/ReluRelu!while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_22/mul_1Mulwhile/lstm_cell_22/Sigmoid:y:0%while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_22/add_1AddV2while/lstm_cell_22/mul:z:0while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:?????????2|
while/lstm_cell_22/Sigmoid_2Sigmoid!while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:?????????2q
while/lstm_cell_22/Relu_1Reluwhile/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_22/mul_2Mul while/lstm_cell_22/Sigmoid_2:y:0'while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_22/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_22/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2y
while/Identity_5Identitywhile/lstm_cell_22/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp*^while/lstm_cell_22/BiasAdd/ReadVariableOp)^while/lstm_cell_22/MatMul/ReadVariableOp+^while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_22_biasadd_readvariableop_resource4while_lstm_cell_22_biasadd_readvariableop_resource_0"l
3while_lstm_cell_22_matmul_1_readvariableop_resource5while_lstm_cell_22_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_22_matmul_readvariableop_resource3while_lstm_cell_22_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2V
)while/lstm_cell_22/BiasAdd/ReadVariableOp)while/lstm_cell_22/BiasAdd/ReadVariableOp2T
(while/lstm_cell_22/MatMul/ReadVariableOp(while/lstm_cell_22/MatMul/ReadVariableOp2X
*while/lstm_cell_22/MatMul_1/ReadVariableOp*while/lstm_cell_22/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
-__inference_lstm_cell_22_layer_call_fn_145814

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
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_141210o
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
?8
?
while_body_144534
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_22_matmul_readvariableop_resource_0:	d?H
5while_lstm_cell_22_matmul_1_readvariableop_resource_0:	2?C
4while_lstm_cell_22_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_22_matmul_readvariableop_resource:	d?F
3while_lstm_cell_22_matmul_1_readvariableop_resource:	2?A
2while_lstm_cell_22_biasadd_readvariableop_resource:	???)while/lstm_cell_22/BiasAdd/ReadVariableOp?(while/lstm_cell_22/MatMul/ReadVariableOp?*while/lstm_cell_22/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
(while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_22/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_22/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_22/addAddV2#while/lstm_cell_22/MatMul:product:0%while/lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_22/BiasAddBiasAddwhile/lstm_cell_22/add:z:01while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_22/splitSplit+while/lstm_cell_22/split/split_dim:output:0#while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitz
while/lstm_cell_22/SigmoidSigmoid!while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:?????????2|
while/lstm_cell_22/Sigmoid_1Sigmoid!while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_22/mulMul while/lstm_cell_22/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2t
while/lstm_cell_22/ReluRelu!while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_22/mul_1Mulwhile/lstm_cell_22/Sigmoid:y:0%while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_22/add_1AddV2while/lstm_cell_22/mul:z:0while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:?????????2|
while/lstm_cell_22/Sigmoid_2Sigmoid!while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:?????????2q
while/lstm_cell_22/Relu_1Reluwhile/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_22/mul_2Mul while/lstm_cell_22/Sigmoid_2:y:0'while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_22/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_22/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2y
while/Identity_5Identitywhile/lstm_cell_22/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp*^while/lstm_cell_22/BiasAdd/ReadVariableOp)^while/lstm_cell_22/MatMul/ReadVariableOp+^while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_22_biasadd_readvariableop_resource4while_lstm_cell_22_biasadd_readvariableop_resource_0"l
3while_lstm_cell_22_matmul_1_readvariableop_resource5while_lstm_cell_22_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_22_matmul_readvariableop_resource3while_lstm_cell_22_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2V
)while/lstm_cell_22/BiasAdd/ReadVariableOp)while/lstm_cell_22/BiasAdd/ReadVariableOp2T
(while/lstm_cell_22/MatMul/ReadVariableOp(while/lstm_cell_22/MatMul/ReadVariableOp2X
*while/lstm_cell_22/MatMul_1/ReadVariableOp*while/lstm_cell_22/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_144061
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_21_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_21_matmul_1_readvariableop_resource_0:	d?C
4while_lstm_cell_21_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_21_matmul_readvariableop_resource:	?F
3while_lstm_cell_21_matmul_1_readvariableop_resource:	d?A
2while_lstm_cell_21_biasadd_readvariableop_resource:	???)while/lstm_cell_21/BiasAdd/ReadVariableOp?(while/lstm_cell_21/MatMul/ReadVariableOp?*while/lstm_cell_21/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
(while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_21/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_21/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_21/addAddV2#while/lstm_cell_21/MatMul:product:0%while/lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_21/BiasAddBiasAddwhile/lstm_cell_21/add:z:01while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_21/splitSplit+while/lstm_cell_21/split/split_dim:output:0#while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitz
while/lstm_cell_21/SigmoidSigmoid!while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_21/Sigmoid_1Sigmoid!while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_21/mulMul while/lstm_cell_21/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dt
while/lstm_cell_21/ReluRelu!while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_21/mul_1Mulwhile/lstm_cell_21/Sigmoid:y:0%while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_21/add_1AddV2while/lstm_cell_21/mul:z:0while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_21/Sigmoid_2Sigmoid!while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:?????????dq
while/lstm_cell_21/Relu_1Reluwhile/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_21/mul_2Mul while/lstm_cell_21/Sigmoid_2:y:0'while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_21/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_21/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dy
while/Identity_5Identitywhile/lstm_cell_21/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp*^while/lstm_cell_21/BiasAdd/ReadVariableOp)^while/lstm_cell_21/MatMul/ReadVariableOp+^while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_21_biasadd_readvariableop_resource4while_lstm_cell_21_biasadd_readvariableop_resource_0"l
3while_lstm_cell_21_matmul_1_readvariableop_resource5while_lstm_cell_21_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_21_matmul_readvariableop_resource3while_lstm_cell_21_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2V
)while/lstm_cell_21/BiasAdd/ReadVariableOp)while/lstm_cell_21/BiasAdd/ReadVariableOp2T
(while/lstm_cell_21/MatMul/ReadVariableOp(while/lstm_cell_21/MatMul/ReadVariableOp2X
*while/lstm_cell_21/MatMul_1/ReadVariableOp*while/lstm_cell_21/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
(__inference_lstm_97_layer_call_fn_144464

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
C__inference_lstm_97_layer_call_and_return_conditional_losses_141996s
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
?R
?
'sequential_32_lstm_97_while_body_140418H
Dsequential_32_lstm_97_while_sequential_32_lstm_97_while_loop_counterN
Jsequential_32_lstm_97_while_sequential_32_lstm_97_while_maximum_iterations+
'sequential_32_lstm_97_while_placeholder-
)sequential_32_lstm_97_while_placeholder_1-
)sequential_32_lstm_97_while_placeholder_2-
)sequential_32_lstm_97_while_placeholder_3G
Csequential_32_lstm_97_while_sequential_32_lstm_97_strided_slice_1_0?
sequential_32_lstm_97_while_tensorarrayv2read_tensorlistgetitem_sequential_32_lstm_97_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_32_lstm_97_while_lstm_cell_22_matmul_readvariableop_resource_0:	d?^
Ksequential_32_lstm_97_while_lstm_cell_22_matmul_1_readvariableop_resource_0:	2?Y
Jsequential_32_lstm_97_while_lstm_cell_22_biasadd_readvariableop_resource_0:	?(
$sequential_32_lstm_97_while_identity*
&sequential_32_lstm_97_while_identity_1*
&sequential_32_lstm_97_while_identity_2*
&sequential_32_lstm_97_while_identity_3*
&sequential_32_lstm_97_while_identity_4*
&sequential_32_lstm_97_while_identity_5E
Asequential_32_lstm_97_while_sequential_32_lstm_97_strided_slice_1?
}sequential_32_lstm_97_while_tensorarrayv2read_tensorlistgetitem_sequential_32_lstm_97_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_32_lstm_97_while_lstm_cell_22_matmul_readvariableop_resource:	d?\
Isequential_32_lstm_97_while_lstm_cell_22_matmul_1_readvariableop_resource:	2?W
Hsequential_32_lstm_97_while_lstm_cell_22_biasadd_readvariableop_resource:	????sequential_32/lstm_97/while/lstm_cell_22/BiasAdd/ReadVariableOp?>sequential_32/lstm_97/while/lstm_cell_22/MatMul/ReadVariableOp?@sequential_32/lstm_97/while/lstm_cell_22/MatMul_1/ReadVariableOp?
Msequential_32/lstm_97/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_32/lstm_97/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_32_lstm_97_while_tensorarrayv2read_tensorlistgetitem_sequential_32_lstm_97_tensorarrayunstack_tensorlistfromtensor_0'sequential_32_lstm_97_while_placeholderVsequential_32/lstm_97/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
>sequential_32/lstm_97/while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOpIsequential_32_lstm_97_while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
/sequential_32/lstm_97/while/lstm_cell_22/MatMulMatMulFsequential_32/lstm_97/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_32/lstm_97/while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
@sequential_32/lstm_97/while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOpKsequential_32_lstm_97_while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
1sequential_32/lstm_97/while/lstm_cell_22/MatMul_1MatMul)sequential_32_lstm_97_while_placeholder_2Hsequential_32/lstm_97/while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,sequential_32/lstm_97/while/lstm_cell_22/addAddV29sequential_32/lstm_97/while/lstm_cell_22/MatMul:product:0;sequential_32/lstm_97/while/lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
?sequential_32/lstm_97/while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOpJsequential_32_lstm_97_while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
0sequential_32/lstm_97/while/lstm_cell_22/BiasAddBiasAdd0sequential_32/lstm_97/while/lstm_cell_22/add:z:0Gsequential_32/lstm_97/while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
8sequential_32/lstm_97/while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
.sequential_32/lstm_97/while/lstm_cell_22/splitSplitAsequential_32/lstm_97/while/lstm_cell_22/split/split_dim:output:09sequential_32/lstm_97/while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
0sequential_32/lstm_97/while/lstm_cell_22/SigmoidSigmoid7sequential_32/lstm_97/while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:?????????2?
2sequential_32/lstm_97/while/lstm_cell_22/Sigmoid_1Sigmoid7sequential_32/lstm_97/while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:?????????2?
,sequential_32/lstm_97/while/lstm_cell_22/mulMul6sequential_32/lstm_97/while/lstm_cell_22/Sigmoid_1:y:0)sequential_32_lstm_97_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
-sequential_32/lstm_97/while/lstm_cell_22/ReluRelu7sequential_32/lstm_97/while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:?????????2?
.sequential_32/lstm_97/while/lstm_cell_22/mul_1Mul4sequential_32/lstm_97/while/lstm_cell_22/Sigmoid:y:0;sequential_32/lstm_97/while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
.sequential_32/lstm_97/while/lstm_cell_22/add_1AddV20sequential_32/lstm_97/while/lstm_cell_22/mul:z:02sequential_32/lstm_97/while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
2sequential_32/lstm_97/while/lstm_cell_22/Sigmoid_2Sigmoid7sequential_32/lstm_97/while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:?????????2?
/sequential_32/lstm_97/while/lstm_cell_22/Relu_1Relu2sequential_32/lstm_97/while/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_32/lstm_97/while/lstm_cell_22/mul_2Mul6sequential_32/lstm_97/while/lstm_cell_22/Sigmoid_2:y:0=sequential_32/lstm_97/while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
@sequential_32/lstm_97/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_32_lstm_97_while_placeholder_1'sequential_32_lstm_97_while_placeholder2sequential_32/lstm_97/while/lstm_cell_22/mul_2:z:0*
_output_shapes
: *
element_dtype0:???c
!sequential_32/lstm_97/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
sequential_32/lstm_97/while/addAddV2'sequential_32_lstm_97_while_placeholder*sequential_32/lstm_97/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_32/lstm_97/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_32/lstm_97/while/add_1AddV2Dsequential_32_lstm_97_while_sequential_32_lstm_97_while_loop_counter,sequential_32/lstm_97/while/add_1/y:output:0*
T0*
_output_shapes
: ?
$sequential_32/lstm_97/while/IdentityIdentity%sequential_32/lstm_97/while/add_1:z:0!^sequential_32/lstm_97/while/NoOp*
T0*
_output_shapes
: ?
&sequential_32/lstm_97/while/Identity_1IdentityJsequential_32_lstm_97_while_sequential_32_lstm_97_while_maximum_iterations!^sequential_32/lstm_97/while/NoOp*
T0*
_output_shapes
: ?
&sequential_32/lstm_97/while/Identity_2Identity#sequential_32/lstm_97/while/add:z:0!^sequential_32/lstm_97/while/NoOp*
T0*
_output_shapes
: ?
&sequential_32/lstm_97/while/Identity_3IdentityPsequential_32/lstm_97/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_32/lstm_97/while/NoOp*
T0*
_output_shapes
: ?
&sequential_32/lstm_97/while/Identity_4Identity2sequential_32/lstm_97/while/lstm_cell_22/mul_2:z:0!^sequential_32/lstm_97/while/NoOp*
T0*'
_output_shapes
:?????????2?
&sequential_32/lstm_97/while/Identity_5Identity2sequential_32/lstm_97/while/lstm_cell_22/add_1:z:0!^sequential_32/lstm_97/while/NoOp*
T0*'
_output_shapes
:?????????2?
 sequential_32/lstm_97/while/NoOpNoOp@^sequential_32/lstm_97/while/lstm_cell_22/BiasAdd/ReadVariableOp?^sequential_32/lstm_97/while/lstm_cell_22/MatMul/ReadVariableOpA^sequential_32/lstm_97/while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_32_lstm_97_while_identity-sequential_32/lstm_97/while/Identity:output:0"Y
&sequential_32_lstm_97_while_identity_1/sequential_32/lstm_97/while/Identity_1:output:0"Y
&sequential_32_lstm_97_while_identity_2/sequential_32/lstm_97/while/Identity_2:output:0"Y
&sequential_32_lstm_97_while_identity_3/sequential_32/lstm_97/while/Identity_3:output:0"Y
&sequential_32_lstm_97_while_identity_4/sequential_32/lstm_97/while/Identity_4:output:0"Y
&sequential_32_lstm_97_while_identity_5/sequential_32/lstm_97/while/Identity_5:output:0"?
Hsequential_32_lstm_97_while_lstm_cell_22_biasadd_readvariableop_resourceJsequential_32_lstm_97_while_lstm_cell_22_biasadd_readvariableop_resource_0"?
Isequential_32_lstm_97_while_lstm_cell_22_matmul_1_readvariableop_resourceKsequential_32_lstm_97_while_lstm_cell_22_matmul_1_readvariableop_resource_0"?
Gsequential_32_lstm_97_while_lstm_cell_22_matmul_readvariableop_resourceIsequential_32_lstm_97_while_lstm_cell_22_matmul_readvariableop_resource_0"?
Asequential_32_lstm_97_while_sequential_32_lstm_97_strided_slice_1Csequential_32_lstm_97_while_sequential_32_lstm_97_strided_slice_1_0"?
}sequential_32_lstm_97_while_tensorarrayv2read_tensorlistgetitem_sequential_32_lstm_97_tensorarrayunstack_tensorlistfromtensorsequential_32_lstm_97_while_tensorarrayv2read_tensorlistgetitem_sequential_32_lstm_97_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
?sequential_32/lstm_97/while/lstm_cell_22/BiasAdd/ReadVariableOp?sequential_32/lstm_97/while/lstm_cell_22/BiasAdd/ReadVariableOp2?
>sequential_32/lstm_97/while/lstm_cell_22/MatMul/ReadVariableOp>sequential_32/lstm_97/while/lstm_cell_22/MatMul/ReadVariableOp2?
@sequential_32/lstm_97/while/lstm_cell_22/MatMul_1/ReadVariableOp@sequential_32/lstm_97/while/lstm_cell_22/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_144533
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_144533___redundant_placeholder04
0while_while_cond_144533___redundant_placeholder14
0while_while_cond_144533___redundant_placeholder24
0while_while_cond_144533___redundant_placeholder3
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
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_141064

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
?
while_body_141912
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_22_matmul_readvariableop_resource_0:	d?H
5while_lstm_cell_22_matmul_1_readvariableop_resource_0:	2?C
4while_lstm_cell_22_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_22_matmul_readvariableop_resource:	d?F
3while_lstm_cell_22_matmul_1_readvariableop_resource:	2?A
2while_lstm_cell_22_biasadd_readvariableop_resource:	???)while/lstm_cell_22/BiasAdd/ReadVariableOp?(while/lstm_cell_22/MatMul/ReadVariableOp?*while/lstm_cell_22/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
(while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_22/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_22/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_22/addAddV2#while/lstm_cell_22/MatMul:product:0%while/lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_22/BiasAddBiasAddwhile/lstm_cell_22/add:z:01while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_22/splitSplit+while/lstm_cell_22/split/split_dim:output:0#while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitz
while/lstm_cell_22/SigmoidSigmoid!while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:?????????2|
while/lstm_cell_22/Sigmoid_1Sigmoid!while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_22/mulMul while/lstm_cell_22/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2t
while/lstm_cell_22/ReluRelu!while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_22/mul_1Mulwhile/lstm_cell_22/Sigmoid:y:0%while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_22/add_1AddV2while/lstm_cell_22/mul:z:0while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:?????????2|
while/lstm_cell_22/Sigmoid_2Sigmoid!while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:?????????2q
while/lstm_cell_22/Relu_1Reluwhile/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_22/mul_2Mul while/lstm_cell_22/Sigmoid_2:y:0'while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_22/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_22/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2y
while/Identity_5Identitywhile/lstm_cell_22/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp*^while/lstm_cell_22/BiasAdd/ReadVariableOp)^while/lstm_cell_22/MatMul/ReadVariableOp+^while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_22_biasadd_readvariableop_resource4while_lstm_cell_22_biasadd_readvariableop_resource_0"l
3while_lstm_cell_22_matmul_1_readvariableop_resource5while_lstm_cell_22_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_22_matmul_readvariableop_resource3while_lstm_cell_22_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2V
)while/lstm_cell_22/BiasAdd/ReadVariableOp)while/lstm_cell_22/BiasAdd/ReadVariableOp2T
(while/lstm_cell_22/MatMul/ReadVariableOp(while/lstm_cell_22/MatMul/ReadVariableOp2X
*while/lstm_cell_22/MatMul_1/ReadVariableOp*while/lstm_cell_22/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
C__inference_lstm_96_layer_call_and_return_conditional_losses_141846

inputs>
+lstm_cell_21_matmul_readvariableop_resource:	?@
-lstm_cell_21_matmul_1_readvariableop_resource:	d?;
,lstm_cell_21_biasadd_readvariableop_resource:	?
identity??#lstm_cell_21/BiasAdd/ReadVariableOp?"lstm_cell_21/MatMul/ReadVariableOp?$lstm_cell_21/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_21/MatMul/ReadVariableOpReadVariableOp+lstm_cell_21_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_21/MatMulMatMulstrided_slice_2:output:0*lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_21/MatMul_1MatMulzeros:output:0,lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_21/addAddV2lstm_cell_21/MatMul:product:0lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_21/BiasAddBiasAddlstm_cell_21/add:z:0+lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_21/splitSplit%lstm_cell_21/split/split_dim:output:0lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitn
lstm_cell_21/SigmoidSigmoidlstm_cell_21/split:output:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_21/Sigmoid_1Sigmoidlstm_cell_21/split:output:1*
T0*'
_output_shapes
:?????????dw
lstm_cell_21/mulMullstm_cell_21/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dh
lstm_cell_21/ReluRelulstm_cell_21/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_21/mul_1Mullstm_cell_21/Sigmoid:y:0lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:?????????d{
lstm_cell_21/add_1AddV2lstm_cell_21/mul:z:0lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_21/Sigmoid_2Sigmoidlstm_cell_21/split:output:3*
T0*'
_output_shapes
:?????????de
lstm_cell_21/Relu_1Relulstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_21/mul_2Mullstm_cell_21/Sigmoid_2:y:0!lstm_cell_21/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_21_matmul_readvariableop_resource-lstm_cell_21_matmul_1_readvariableop_resource,lstm_cell_21_biasadd_readvariableop_resource*
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
while_body_141762*
condR
while_cond_141761*K
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
NoOpNoOp$^lstm_cell_21/BiasAdd/ReadVariableOp#^lstm_cell_21/MatMul/ReadVariableOp%^lstm_cell_21/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_21/BiasAdd/ReadVariableOp#lstm_cell_21/BiasAdd/ReadVariableOp2H
"lstm_cell_21/MatMul/ReadVariableOp"lstm_cell_21/MatMul/ReadVariableOp2L
$lstm_cell_21/MatMul_1/ReadVariableOp$lstm_cell_21/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_dense_32_layer_call_fn_145672

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
D__inference_dense_32_layer_call_and_return_conditional_losses_142164o
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
C__inference_lstm_96_layer_call_and_return_conditional_losses_144002
inputs_0>
+lstm_cell_21_matmul_readvariableop_resource:	?@
-lstm_cell_21_matmul_1_readvariableop_resource:	d?;
,lstm_cell_21_biasadd_readvariableop_resource:	?
identity??#lstm_cell_21/BiasAdd/ReadVariableOp?"lstm_cell_21/MatMul/ReadVariableOp?$lstm_cell_21/MatMul_1/ReadVariableOp?while=
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
"lstm_cell_21/MatMul/ReadVariableOpReadVariableOp+lstm_cell_21_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_21/MatMulMatMulstrided_slice_2:output:0*lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_21/MatMul_1MatMulzeros:output:0,lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_21/addAddV2lstm_cell_21/MatMul:product:0lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_21/BiasAddBiasAddlstm_cell_21/add:z:0+lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_21/splitSplit%lstm_cell_21/split/split_dim:output:0lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitn
lstm_cell_21/SigmoidSigmoidlstm_cell_21/split:output:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_21/Sigmoid_1Sigmoidlstm_cell_21/split:output:1*
T0*'
_output_shapes
:?????????dw
lstm_cell_21/mulMullstm_cell_21/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dh
lstm_cell_21/ReluRelulstm_cell_21/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_21/mul_1Mullstm_cell_21/Sigmoid:y:0lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:?????????d{
lstm_cell_21/add_1AddV2lstm_cell_21/mul:z:0lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_21/Sigmoid_2Sigmoidlstm_cell_21/split:output:3*
T0*'
_output_shapes
:?????????de
lstm_cell_21/Relu_1Relulstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_21/mul_2Mullstm_cell_21/Sigmoid_2:y:0!lstm_cell_21/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_21_matmul_readvariableop_resource-lstm_cell_21_matmul_1_readvariableop_resource,lstm_cell_21_biasadd_readvariableop_resource*
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
while_body_143918*
condR
while_cond_143917*K
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
NoOpNoOp$^lstm_cell_21/BiasAdd/ReadVariableOp#^lstm_cell_21/MatMul/ReadVariableOp%^lstm_cell_21/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_21/BiasAdd/ReadVariableOp#lstm_cell_21/BiasAdd/ReadVariableOp2H
"lstm_cell_21/MatMul/ReadVariableOp"lstm_cell_21/MatMul/ReadVariableOp2L
$lstm_cell_21/MatMul_1/ReadVariableOp$lstm_cell_21/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
lstm_97_while_cond_143158,
(lstm_97_while_lstm_97_while_loop_counter2
.lstm_97_while_lstm_97_while_maximum_iterations
lstm_97_while_placeholder
lstm_97_while_placeholder_1
lstm_97_while_placeholder_2
lstm_97_while_placeholder_3.
*lstm_97_while_less_lstm_97_strided_slice_1D
@lstm_97_while_lstm_97_while_cond_143158___redundant_placeholder0D
@lstm_97_while_lstm_97_while_cond_143158___redundant_placeholder1D
@lstm_97_while_lstm_97_while_cond_143158___redundant_placeholder2D
@lstm_97_while_lstm_97_while_cond_143158___redundant_placeholder3
lstm_97_while_identity
?
lstm_97/while/LessLesslstm_97_while_placeholder*lstm_97_while_less_lstm_97_strided_slice_1*
T0*
_output_shapes
: [
lstm_97/while/IdentityIdentitylstm_97/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_97_while_identitylstm_97/while/Identity:output:0*(
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
(__inference_lstm_96_layer_call_fn_143848

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
C__inference_lstm_96_layer_call_and_return_conditional_losses_141846s
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
?
while_cond_145578
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_145578___redundant_placeholder04
0while_while_cond_145578___redundant_placeholder14
0while_while_cond_145578___redundant_placeholder24
0while_while_cond_145578___redundant_placeholder3
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
while_cond_144346
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_144346___redundant_placeholder04
0while_while_cond_144346___redundant_placeholder14
0while_while_cond_144346___redundant_placeholder24
0while_while_cond_144346___redundant_placeholder3
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
while_cond_142607
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_142607___redundant_placeholder04
0while_while_cond_142607___redundant_placeholder14
0while_while_cond_142607___redundant_placeholder24
0while_while_cond_142607___redundant_placeholder3
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

?
.__inference_sequential_32_layer_call_fn_142934

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
I__inference_sequential_32_layer_call_and_return_conditional_losses_142171o
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
-__inference_lstm_cell_22_layer_call_fn_145797

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
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_141064o
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
?
?
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_141560

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
?J
?
C__inference_lstm_98_layer_call_and_return_conditional_losses_142362

inputs=
+lstm_cell_23_matmul_readvariableop_resource:2(?
-lstm_cell_23_matmul_1_readvariableop_resource:
(:
,lstm_cell_23_biasadd_readvariableop_resource:(
identity??#lstm_cell_23/BiasAdd/ReadVariableOp?"lstm_cell_23/MatMul/ReadVariableOp?$lstm_cell_23/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_23/MatMul/ReadVariableOpReadVariableOp+lstm_cell_23_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_23/MatMulMatMulstrided_slice_2:output:0*lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_23/MatMul_1MatMulzeros:output:0,lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_23/addAddV2lstm_cell_23/MatMul:product:0lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
#lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_23/BiasAddBiasAddlstm_cell_23/add:z:0+lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(^
lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_23/splitSplit%lstm_cell_23/split/split_dim:output:0lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitn
lstm_cell_23/SigmoidSigmoidlstm_cell_23/split:output:0*
T0*'
_output_shapes
:?????????
p
lstm_cell_23/Sigmoid_1Sigmoidlstm_cell_23/split:output:1*
T0*'
_output_shapes
:?????????
w
lstm_cell_23/mulMullstm_cell_23/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
h
lstm_cell_23/ReluRelulstm_cell_23/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_23/mul_1Mullstm_cell_23/Sigmoid:y:0lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:?????????
{
lstm_cell_23/add_1AddV2lstm_cell_23/mul:z:0lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:?????????
p
lstm_cell_23/Sigmoid_2Sigmoidlstm_cell_23/split:output:3*
T0*'
_output_shapes
:?????????
e
lstm_cell_23/Relu_1Relulstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_23/mul_2Mullstm_cell_23/Sigmoid_2:y:0!lstm_cell_23/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_23_matmul_readvariableop_resource-lstm_cell_23_matmul_1_readvariableop_resource,lstm_cell_23_biasadd_readvariableop_resource*
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
while_body_142278*
condR
while_cond_142277*K
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
NoOpNoOp$^lstm_cell_23/BiasAdd/ReadVariableOp#^lstm_cell_23/MatMul/ReadVariableOp%^lstm_cell_23/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2J
#lstm_cell_23/BiasAdd/ReadVariableOp#lstm_cell_23/BiasAdd/ReadVariableOp2H
"lstm_cell_23/MatMul/ReadVariableOp"lstm_cell_23/MatMul/ReadVariableOp2L
$lstm_cell_23/MatMul_1/ReadVariableOp$lstm_cell_23/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_144820
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_22_matmul_readvariableop_resource_0:	d?H
5while_lstm_cell_22_matmul_1_readvariableop_resource_0:	2?C
4while_lstm_cell_22_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_22_matmul_readvariableop_resource:	d?F
3while_lstm_cell_22_matmul_1_readvariableop_resource:	2?A
2while_lstm_cell_22_biasadd_readvariableop_resource:	???)while/lstm_cell_22/BiasAdd/ReadVariableOp?(while/lstm_cell_22/MatMul/ReadVariableOp?*while/lstm_cell_22/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
(while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_22/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_22/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_22/addAddV2#while/lstm_cell_22/MatMul:product:0%while/lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_22/BiasAddBiasAddwhile/lstm_cell_22/add:z:01while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_22/splitSplit+while/lstm_cell_22/split/split_dim:output:0#while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitz
while/lstm_cell_22/SigmoidSigmoid!while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:?????????2|
while/lstm_cell_22/Sigmoid_1Sigmoid!while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_22/mulMul while/lstm_cell_22/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2t
while/lstm_cell_22/ReluRelu!while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_22/mul_1Mulwhile/lstm_cell_22/Sigmoid:y:0%while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_22/add_1AddV2while/lstm_cell_22/mul:z:0while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:?????????2|
while/lstm_cell_22/Sigmoid_2Sigmoid!while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:?????????2q
while/lstm_cell_22/Relu_1Reluwhile/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_22/mul_2Mul while/lstm_cell_22/Sigmoid_2:y:0'while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_22/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_22/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2y
while/Identity_5Identitywhile/lstm_cell_22/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp*^while/lstm_cell_22/BiasAdd/ReadVariableOp)^while/lstm_cell_22/MatMul/ReadVariableOp+^while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_22_biasadd_readvariableop_resource4while_lstm_cell_22_biasadd_readvariableop_resource_0"l
3while_lstm_cell_22_matmul_1_readvariableop_resource5while_lstm_cell_22_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_22_matmul_readvariableop_resource3while_lstm_cell_22_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2V
)while/lstm_cell_22/BiasAdd/ReadVariableOp)while/lstm_cell_22/BiasAdd/ReadVariableOp2T
(while/lstm_cell_22/MatMul/ReadVariableOp(while/lstm_cell_22/MatMul/ReadVariableOp2X
*while/lstm_cell_22/MatMul_1/ReadVariableOp*while/lstm_cell_22/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_141762
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_21_matmul_readvariableop_resource_0:	?H
5while_lstm_cell_21_matmul_1_readvariableop_resource_0:	d?C
4while_lstm_cell_21_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_21_matmul_readvariableop_resource:	?F
3while_lstm_cell_21_matmul_1_readvariableop_resource:	d?A
2while_lstm_cell_21_biasadd_readvariableop_resource:	???)while/lstm_cell_21/BiasAdd/ReadVariableOp?(while/lstm_cell_21/MatMul/ReadVariableOp?*while/lstm_cell_21/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
(while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_21/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_21/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_21/addAddV2#while/lstm_cell_21/MatMul:product:0%while/lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_21/BiasAddBiasAddwhile/lstm_cell_21/add:z:01while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_21/splitSplit+while/lstm_cell_21/split/split_dim:output:0#while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitz
while/lstm_cell_21/SigmoidSigmoid!while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_21/Sigmoid_1Sigmoid!while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_21/mulMul while/lstm_cell_21/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dt
while/lstm_cell_21/ReluRelu!while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_21/mul_1Mulwhile/lstm_cell_21/Sigmoid:y:0%while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_21/add_1AddV2while/lstm_cell_21/mul:z:0while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:?????????d|
while/lstm_cell_21/Sigmoid_2Sigmoid!while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:?????????dq
while/lstm_cell_21/Relu_1Reluwhile/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_21/mul_2Mul while/lstm_cell_21/Sigmoid_2:y:0'while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_21/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_21/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dy
while/Identity_5Identitywhile/lstm_cell_21/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp*^while/lstm_cell_21/BiasAdd/ReadVariableOp)^while/lstm_cell_21/MatMul/ReadVariableOp+^while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_21_biasadd_readvariableop_resource4while_lstm_cell_21_biasadd_readvariableop_resource_0"l
3while_lstm_cell_21_matmul_1_readvariableop_resource5while_lstm_cell_21_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_21_matmul_readvariableop_resource3while_lstm_cell_21_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2V
)while/lstm_cell_21/BiasAdd/ReadVariableOp)while/lstm_cell_21/BiasAdd/ReadVariableOp2T
(while/lstm_cell_21/MatMul/ReadVariableOp(while/lstm_cell_21/MatMul/ReadVariableOp2X
*while/lstm_cell_21/MatMul_1/ReadVariableOp*while/lstm_cell_21/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?

I__inference_sequential_32_layer_call_and_return_conditional_losses_143388

inputsF
3lstm_96_lstm_cell_21_matmul_readvariableop_resource:	?H
5lstm_96_lstm_cell_21_matmul_1_readvariableop_resource:	d?C
4lstm_96_lstm_cell_21_biasadd_readvariableop_resource:	?F
3lstm_97_lstm_cell_22_matmul_readvariableop_resource:	d?H
5lstm_97_lstm_cell_22_matmul_1_readvariableop_resource:	2?C
4lstm_97_lstm_cell_22_biasadd_readvariableop_resource:	?E
3lstm_98_lstm_cell_23_matmul_readvariableop_resource:2(G
5lstm_98_lstm_cell_23_matmul_1_readvariableop_resource:
(B
4lstm_98_lstm_cell_23_biasadd_readvariableop_resource:(9
'dense_32_matmul_readvariableop_resource:
6
(dense_32_biasadd_readvariableop_resource:
identity??dense_32/BiasAdd/ReadVariableOp?dense_32/MatMul/ReadVariableOp?+lstm_96/lstm_cell_21/BiasAdd/ReadVariableOp?*lstm_96/lstm_cell_21/MatMul/ReadVariableOp?,lstm_96/lstm_cell_21/MatMul_1/ReadVariableOp?lstm_96/while?+lstm_97/lstm_cell_22/BiasAdd/ReadVariableOp?*lstm_97/lstm_cell_22/MatMul/ReadVariableOp?,lstm_97/lstm_cell_22/MatMul_1/ReadVariableOp?lstm_97/while?+lstm_98/lstm_cell_23/BiasAdd/ReadVariableOp?*lstm_98/lstm_cell_23/MatMul/ReadVariableOp?,lstm_98/lstm_cell_23/MatMul_1/ReadVariableOp?lstm_98/whileC
lstm_96/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_96/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_96/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_96/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_96/strided_sliceStridedSlicelstm_96/Shape:output:0$lstm_96/strided_slice/stack:output:0&lstm_96/strided_slice/stack_1:output:0&lstm_96/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_96/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_96/zeros/packedPacklstm_96/strided_slice:output:0lstm_96/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_96/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_96/zerosFilllstm_96/zeros/packed:output:0lstm_96/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dZ
lstm_96/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_96/zeros_1/packedPacklstm_96/strided_slice:output:0!lstm_96/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_96/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_96/zeros_1Filllstm_96/zeros_1/packed:output:0lstm_96/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dk
lstm_96/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_96/transpose	Transposeinputslstm_96/transpose/perm:output:0*
T0*+
_output_shapes
:?????????T
lstm_96/Shape_1Shapelstm_96/transpose:y:0*
T0*
_output_shapes
:g
lstm_96/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_96/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_96/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_96/strided_slice_1StridedSlicelstm_96/Shape_1:output:0&lstm_96/strided_slice_1/stack:output:0(lstm_96/strided_slice_1/stack_1:output:0(lstm_96/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_96/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_96/TensorArrayV2TensorListReserve,lstm_96/TensorArrayV2/element_shape:output:0 lstm_96/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_96/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
/lstm_96/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_96/transpose:y:0Flstm_96/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_96/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_96/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_96/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_96/strided_slice_2StridedSlicelstm_96/transpose:y:0&lstm_96/strided_slice_2/stack:output:0(lstm_96/strided_slice_2/stack_1:output:0(lstm_96/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
*lstm_96/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp3lstm_96_lstm_cell_21_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_96/lstm_cell_21/MatMulMatMul lstm_96/strided_slice_2:output:02lstm_96/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,lstm_96/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp5lstm_96_lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_96/lstm_cell_21/MatMul_1MatMullstm_96/zeros:output:04lstm_96/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_96/lstm_cell_21/addAddV2%lstm_96/lstm_cell_21/MatMul:product:0'lstm_96/lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
+lstm_96/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp4lstm_96_lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_96/lstm_cell_21/BiasAddBiasAddlstm_96/lstm_cell_21/add:z:03lstm_96/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????f
$lstm_96/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_96/lstm_cell_21/splitSplit-lstm_96/lstm_cell_21/split/split_dim:output:0%lstm_96/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split~
lstm_96/lstm_cell_21/SigmoidSigmoid#lstm_96/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:?????????d?
lstm_96/lstm_cell_21/Sigmoid_1Sigmoid#lstm_96/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_96/lstm_cell_21/mulMul"lstm_96/lstm_cell_21/Sigmoid_1:y:0lstm_96/zeros_1:output:0*
T0*'
_output_shapes
:?????????dx
lstm_96/lstm_cell_21/ReluRelu#lstm_96/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_96/lstm_cell_21/mul_1Mul lstm_96/lstm_cell_21/Sigmoid:y:0'lstm_96/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_96/lstm_cell_21/add_1AddV2lstm_96/lstm_cell_21/mul:z:0lstm_96/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_96/lstm_cell_21/Sigmoid_2Sigmoid#lstm_96/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:?????????du
lstm_96/lstm_cell_21/Relu_1Relulstm_96/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_96/lstm_cell_21/mul_2Mul"lstm_96/lstm_cell_21/Sigmoid_2:y:0)lstm_96/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dv
%lstm_96/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_96/TensorArrayV2_1TensorListReserve.lstm_96/TensorArrayV2_1/element_shape:output:0 lstm_96/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_96/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_96/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_96/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_96/whileWhile#lstm_96/while/loop_counter:output:0)lstm_96/while/maximum_iterations:output:0lstm_96/time:output:0 lstm_96/TensorArrayV2_1:handle:0lstm_96/zeros:output:0lstm_96/zeros_1:output:0 lstm_96/strided_slice_1:output:0?lstm_96/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_96_lstm_cell_21_matmul_readvariableop_resource5lstm_96_lstm_cell_21_matmul_1_readvariableop_resource4lstm_96_lstm_cell_21_biasadd_readvariableop_resource*
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
lstm_96_while_body_143020*%
condR
lstm_96_while_cond_143019*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
8lstm_96/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
*lstm_96/TensorArrayV2Stack/TensorListStackTensorListStacklstm_96/while:output:3Alstm_96/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0p
lstm_96/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_96/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_96/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_96/strided_slice_3StridedSlice3lstm_96/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_96/strided_slice_3/stack:output:0(lstm_96/strided_slice_3/stack_1:output:0(lstm_96/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskm
lstm_96/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_96/transpose_1	Transpose3lstm_96/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_96/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dc
lstm_96/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_97/ShapeShapelstm_96/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_97/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_97/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_97/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_97/strided_sliceStridedSlicelstm_97/Shape:output:0$lstm_97/strided_slice/stack:output:0&lstm_97/strided_slice/stack_1:output:0&lstm_97/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_97/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_97/zeros/packedPacklstm_97/strided_slice:output:0lstm_97/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_97/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_97/zerosFilllstm_97/zeros/packed:output:0lstm_97/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2Z
lstm_97/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_97/zeros_1/packedPacklstm_97/strided_slice:output:0!lstm_97/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_97/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_97/zeros_1Filllstm_97/zeros_1/packed:output:0lstm_97/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2k
lstm_97/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_97/transpose	Transposelstm_96/transpose_1:y:0lstm_97/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dT
lstm_97/Shape_1Shapelstm_97/transpose:y:0*
T0*
_output_shapes
:g
lstm_97/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_97/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_97/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_97/strided_slice_1StridedSlicelstm_97/Shape_1:output:0&lstm_97/strided_slice_1/stack:output:0(lstm_97/strided_slice_1/stack_1:output:0(lstm_97/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_97/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_97/TensorArrayV2TensorListReserve,lstm_97/TensorArrayV2/element_shape:output:0 lstm_97/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_97/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
/lstm_97/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_97/transpose:y:0Flstm_97/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_97/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_97/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_97/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_97/strided_slice_2StridedSlicelstm_97/transpose:y:0&lstm_97/strided_slice_2/stack:output:0(lstm_97/strided_slice_2/stack_1:output:0(lstm_97/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
*lstm_97/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp3lstm_97_lstm_cell_22_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_97/lstm_cell_22/MatMulMatMul lstm_97/strided_slice_2:output:02lstm_97/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,lstm_97/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp5lstm_97_lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_97/lstm_cell_22/MatMul_1MatMullstm_97/zeros:output:04lstm_97/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_97/lstm_cell_22/addAddV2%lstm_97/lstm_cell_22/MatMul:product:0'lstm_97/lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
+lstm_97/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp4lstm_97_lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_97/lstm_cell_22/BiasAddBiasAddlstm_97/lstm_cell_22/add:z:03lstm_97/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????f
$lstm_97/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_97/lstm_cell_22/splitSplit-lstm_97/lstm_cell_22/split/split_dim:output:0%lstm_97/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split~
lstm_97/lstm_cell_22/SigmoidSigmoid#lstm_97/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:?????????2?
lstm_97/lstm_cell_22/Sigmoid_1Sigmoid#lstm_97/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_97/lstm_cell_22/mulMul"lstm_97/lstm_cell_22/Sigmoid_1:y:0lstm_97/zeros_1:output:0*
T0*'
_output_shapes
:?????????2x
lstm_97/lstm_cell_22/ReluRelu#lstm_97/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_97/lstm_cell_22/mul_1Mul lstm_97/lstm_cell_22/Sigmoid:y:0'lstm_97/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_97/lstm_cell_22/add_1AddV2lstm_97/lstm_cell_22/mul:z:0lstm_97/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_97/lstm_cell_22/Sigmoid_2Sigmoid#lstm_97/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:?????????2u
lstm_97/lstm_cell_22/Relu_1Relulstm_97/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_97/lstm_cell_22/mul_2Mul"lstm_97/lstm_cell_22/Sigmoid_2:y:0)lstm_97/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2v
%lstm_97/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_97/TensorArrayV2_1TensorListReserve.lstm_97/TensorArrayV2_1/element_shape:output:0 lstm_97/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_97/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_97/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_97/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_97/whileWhile#lstm_97/while/loop_counter:output:0)lstm_97/while/maximum_iterations:output:0lstm_97/time:output:0 lstm_97/TensorArrayV2_1:handle:0lstm_97/zeros:output:0lstm_97/zeros_1:output:0 lstm_97/strided_slice_1:output:0?lstm_97/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_97_lstm_cell_22_matmul_readvariableop_resource5lstm_97_lstm_cell_22_matmul_1_readvariableop_resource4lstm_97_lstm_cell_22_biasadd_readvariableop_resource*
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
lstm_97_while_body_143159*%
condR
lstm_97_while_cond_143158*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
8lstm_97/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
*lstm_97/TensorArrayV2Stack/TensorListStackTensorListStacklstm_97/while:output:3Alstm_97/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0p
lstm_97/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_97/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_97/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_97/strided_slice_3StridedSlice3lstm_97/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_97/strided_slice_3/stack:output:0(lstm_97/strided_slice_3/stack_1:output:0(lstm_97/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskm
lstm_97/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_97/transpose_1	Transpose3lstm_97/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_97/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2c
lstm_97/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_98/ShapeShapelstm_97/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_98/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_98/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_98/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_98/strided_sliceStridedSlicelstm_98/Shape:output:0$lstm_98/strided_slice/stack:output:0&lstm_98/strided_slice/stack_1:output:0&lstm_98/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_98/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_98/zeros/packedPacklstm_98/strided_slice:output:0lstm_98/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_98/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_98/zerosFilllstm_98/zeros/packed:output:0lstm_98/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
Z
lstm_98/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_98/zeros_1/packedPacklstm_98/strided_slice:output:0!lstm_98/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_98/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_98/zeros_1Filllstm_98/zeros_1/packed:output:0lstm_98/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
k
lstm_98/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_98/transpose	Transposelstm_97/transpose_1:y:0lstm_98/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2T
lstm_98/Shape_1Shapelstm_98/transpose:y:0*
T0*
_output_shapes
:g
lstm_98/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_98/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_98/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_98/strided_slice_1StridedSlicelstm_98/Shape_1:output:0&lstm_98/strided_slice_1/stack:output:0(lstm_98/strided_slice_1/stack_1:output:0(lstm_98/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_98/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_98/TensorArrayV2TensorListReserve,lstm_98/TensorArrayV2/element_shape:output:0 lstm_98/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
=lstm_98/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
/lstm_98/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_98/transpose:y:0Flstm_98/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???g
lstm_98/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_98/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_98/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_98/strided_slice_2StridedSlicelstm_98/transpose:y:0&lstm_98/strided_slice_2/stack:output:0(lstm_98/strided_slice_2/stack_1:output:0(lstm_98/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
*lstm_98/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp3lstm_98_lstm_cell_23_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_98/lstm_cell_23/MatMulMatMul lstm_98/strided_slice_2:output:02lstm_98/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
,lstm_98/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp5lstm_98_lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_98/lstm_cell_23/MatMul_1MatMullstm_98/zeros:output:04lstm_98/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_98/lstm_cell_23/addAddV2%lstm_98/lstm_cell_23/MatMul:product:0'lstm_98/lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
+lstm_98/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp4lstm_98_lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_98/lstm_cell_23/BiasAddBiasAddlstm_98/lstm_cell_23/add:z:03lstm_98/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(f
$lstm_98/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_98/lstm_cell_23/splitSplit-lstm_98/lstm_cell_23/split/split_dim:output:0%lstm_98/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split~
lstm_98/lstm_cell_23/SigmoidSigmoid#lstm_98/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:?????????
?
lstm_98/lstm_cell_23/Sigmoid_1Sigmoid#lstm_98/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_98/lstm_cell_23/mulMul"lstm_98/lstm_cell_23/Sigmoid_1:y:0lstm_98/zeros_1:output:0*
T0*'
_output_shapes
:?????????
x
lstm_98/lstm_cell_23/ReluRelu#lstm_98/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_98/lstm_cell_23/mul_1Mul lstm_98/lstm_cell_23/Sigmoid:y:0'lstm_98/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_98/lstm_cell_23/add_1AddV2lstm_98/lstm_cell_23/mul:z:0lstm_98/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_98/lstm_cell_23/Sigmoid_2Sigmoid#lstm_98/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:?????????
u
lstm_98/lstm_cell_23/Relu_1Relulstm_98/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_98/lstm_cell_23/mul_2Mul"lstm_98/lstm_cell_23/Sigmoid_2:y:0)lstm_98/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
v
%lstm_98/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_98/TensorArrayV2_1TensorListReserve.lstm_98/TensorArrayV2_1/element_shape:output:0 lstm_98/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???N
lstm_98/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_98/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????\
lstm_98/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_98/whileWhile#lstm_98/while/loop_counter:output:0)lstm_98/while/maximum_iterations:output:0lstm_98/time:output:0 lstm_98/TensorArrayV2_1:handle:0lstm_98/zeros:output:0lstm_98/zeros_1:output:0 lstm_98/strided_slice_1:output:0?lstm_98/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_98_lstm_cell_23_matmul_readvariableop_resource5lstm_98_lstm_cell_23_matmul_1_readvariableop_resource4lstm_98_lstm_cell_23_biasadd_readvariableop_resource*
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
lstm_98_while_body_143298*%
condR
lstm_98_while_cond_143297*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
8lstm_98/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
*lstm_98/TensorArrayV2Stack/TensorListStackTensorListStacklstm_98/while:output:3Alstm_98/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0p
lstm_98/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????i
lstm_98/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_98/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_98/strided_slice_3StridedSlice3lstm_98/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_98/strided_slice_3/stack:output:0(lstm_98/strided_slice_3/stack_1:output:0(lstm_98/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskm
lstm_98/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_98/transpose_1	Transpose3lstm_98/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_98/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
c
lstm_98/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_32/MatMul/ReadVariableOpReadVariableOp'dense_32_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_32/MatMulMatMul lstm_98/strided_slice_3:output:0&dense_32/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_32/BiasAdd/ReadVariableOpReadVariableOp(dense_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_32/BiasAddBiasAdddense_32/MatMul:product:0'dense_32/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_32/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_32/BiasAdd/ReadVariableOp^dense_32/MatMul/ReadVariableOp,^lstm_96/lstm_cell_21/BiasAdd/ReadVariableOp+^lstm_96/lstm_cell_21/MatMul/ReadVariableOp-^lstm_96/lstm_cell_21/MatMul_1/ReadVariableOp^lstm_96/while,^lstm_97/lstm_cell_22/BiasAdd/ReadVariableOp+^lstm_97/lstm_cell_22/MatMul/ReadVariableOp-^lstm_97/lstm_cell_22/MatMul_1/ReadVariableOp^lstm_97/while,^lstm_98/lstm_cell_23/BiasAdd/ReadVariableOp+^lstm_98/lstm_cell_23/MatMul/ReadVariableOp-^lstm_98/lstm_cell_23/MatMul_1/ReadVariableOp^lstm_98/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_32/BiasAdd/ReadVariableOpdense_32/BiasAdd/ReadVariableOp2@
dense_32/MatMul/ReadVariableOpdense_32/MatMul/ReadVariableOp2Z
+lstm_96/lstm_cell_21/BiasAdd/ReadVariableOp+lstm_96/lstm_cell_21/BiasAdd/ReadVariableOp2X
*lstm_96/lstm_cell_21/MatMul/ReadVariableOp*lstm_96/lstm_cell_21/MatMul/ReadVariableOp2\
,lstm_96/lstm_cell_21/MatMul_1/ReadVariableOp,lstm_96/lstm_cell_21/MatMul_1/ReadVariableOp2
lstm_96/whilelstm_96/while2Z
+lstm_97/lstm_cell_22/BiasAdd/ReadVariableOp+lstm_97/lstm_cell_22/BiasAdd/ReadVariableOp2X
*lstm_97/lstm_cell_22/MatMul/ReadVariableOp*lstm_97/lstm_cell_22/MatMul/ReadVariableOp2\
,lstm_97/lstm_cell_22/MatMul_1/ReadVariableOp,lstm_97/lstm_cell_22/MatMul_1/ReadVariableOp2
lstm_97/whilelstm_97/while2Z
+lstm_98/lstm_cell_23/BiasAdd/ReadVariableOp+lstm_98/lstm_cell_23/BiasAdd/ReadVariableOp2X
*lstm_98/lstm_cell_23/MatMul/ReadVariableOp*lstm_98/lstm_cell_23/MatMul/ReadVariableOp2\
,lstm_98/lstm_cell_23/MatMul_1/ReadVariableOp,lstm_98/lstm_cell_23/MatMul_1/ReadVariableOp2
lstm_98/whilelstm_98/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_lstm_96_layer_call_fn_143837
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
C__inference_lstm_96_layer_call_and_return_conditional_losses_140988|
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
I__inference_sequential_32_layer_call_and_return_conditional_losses_142872
lstm_96_input!
lstm_96_142845:	?!
lstm_96_142847:	d?
lstm_96_142849:	?!
lstm_97_142852:	d?!
lstm_97_142854:	2?
lstm_97_142856:	? 
lstm_98_142859:2( 
lstm_98_142861:
(
lstm_98_142863:(!
dense_32_142866:

dense_32_142868:
identity?? dense_32/StatefulPartitionedCall?lstm_96/StatefulPartitionedCall?lstm_97/StatefulPartitionedCall?lstm_98/StatefulPartitionedCall?
lstm_96/StatefulPartitionedCallStatefulPartitionedCalllstm_96_inputlstm_96_142845lstm_96_142847lstm_96_142849*
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
C__inference_lstm_96_layer_call_and_return_conditional_losses_142692?
lstm_97/StatefulPartitionedCallStatefulPartitionedCall(lstm_96/StatefulPartitionedCall:output:0lstm_97_142852lstm_97_142854lstm_97_142856*
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
C__inference_lstm_97_layer_call_and_return_conditional_losses_142527?
lstm_98/StatefulPartitionedCallStatefulPartitionedCall(lstm_97/StatefulPartitionedCall:output:0lstm_98_142859lstm_98_142861lstm_98_142863*
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
C__inference_lstm_98_layer_call_and_return_conditional_losses_142362?
 dense_32/StatefulPartitionedCallStatefulPartitionedCall(lstm_98/StatefulPartitionedCall:output:0dense_32_142866dense_32_142868*
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
D__inference_dense_32_layer_call_and_return_conditional_losses_142164x
IdentityIdentity)dense_32/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_32/StatefulPartitionedCall ^lstm_96/StatefulPartitionedCall ^lstm_97/StatefulPartitionedCall ^lstm_98/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2B
lstm_96/StatefulPartitionedCalllstm_96/StatefulPartitionedCall2B
lstm_97/StatefulPartitionedCalllstm_97/StatefulPartitionedCall2B
lstm_98/StatefulPartitionedCalllstm_98/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_96_input
?J
?
C__inference_lstm_96_layer_call_and_return_conditional_losses_144145
inputs_0>
+lstm_cell_21_matmul_readvariableop_resource:	?@
-lstm_cell_21_matmul_1_readvariableop_resource:	d?;
,lstm_cell_21_biasadd_readvariableop_resource:	?
identity??#lstm_cell_21/BiasAdd/ReadVariableOp?"lstm_cell_21/MatMul/ReadVariableOp?$lstm_cell_21/MatMul_1/ReadVariableOp?while=
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
"lstm_cell_21/MatMul/ReadVariableOpReadVariableOp+lstm_cell_21_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_21/MatMulMatMulstrided_slice_2:output:0*lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_21/MatMul_1MatMulzeros:output:0,lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_21/addAddV2lstm_cell_21/MatMul:product:0lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_21/BiasAddBiasAddlstm_cell_21/add:z:0+lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_21/splitSplit%lstm_cell_21/split/split_dim:output:0lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitn
lstm_cell_21/SigmoidSigmoidlstm_cell_21/split:output:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_21/Sigmoid_1Sigmoidlstm_cell_21/split:output:1*
T0*'
_output_shapes
:?????????dw
lstm_cell_21/mulMullstm_cell_21/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dh
lstm_cell_21/ReluRelulstm_cell_21/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_21/mul_1Mullstm_cell_21/Sigmoid:y:0lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:?????????d{
lstm_cell_21/add_1AddV2lstm_cell_21/mul:z:0lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:?????????dp
lstm_cell_21/Sigmoid_2Sigmoidlstm_cell_21/split:output:3*
T0*'
_output_shapes
:?????????de
lstm_cell_21/Relu_1Relulstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_21/mul_2Mullstm_cell_21/Sigmoid_2:y:0!lstm_cell_21/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_21_matmul_readvariableop_resource-lstm_cell_21_matmul_1_readvariableop_resource,lstm_cell_21_biasadd_readvariableop_resource*
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
while_body_144061*
condR
while_cond_144060*K
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
NoOpNoOp$^lstm_cell_21/BiasAdd/ReadVariableOp#^lstm_cell_21/MatMul/ReadVariableOp%^lstm_cell_21/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_21/BiasAdd/ReadVariableOp#lstm_cell_21/BiasAdd/ReadVariableOp2H
"lstm_cell_21/MatMul/ReadVariableOp"lstm_cell_21/MatMul/ReadVariableOp2L
$lstm_cell_21/MatMul_1/ReadVariableOp$lstm_cell_21/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
'sequential_32_lstm_98_while_cond_140556H
Dsequential_32_lstm_98_while_sequential_32_lstm_98_while_loop_counterN
Jsequential_32_lstm_98_while_sequential_32_lstm_98_while_maximum_iterations+
'sequential_32_lstm_98_while_placeholder-
)sequential_32_lstm_98_while_placeholder_1-
)sequential_32_lstm_98_while_placeholder_2-
)sequential_32_lstm_98_while_placeholder_3J
Fsequential_32_lstm_98_while_less_sequential_32_lstm_98_strided_slice_1`
\sequential_32_lstm_98_while_sequential_32_lstm_98_while_cond_140556___redundant_placeholder0`
\sequential_32_lstm_98_while_sequential_32_lstm_98_while_cond_140556___redundant_placeholder1`
\sequential_32_lstm_98_while_sequential_32_lstm_98_while_cond_140556___redundant_placeholder2`
\sequential_32_lstm_98_while_sequential_32_lstm_98_while_cond_140556___redundant_placeholder3(
$sequential_32_lstm_98_while_identity
?
 sequential_32/lstm_98/while/LessLess'sequential_32_lstm_98_while_placeholderFsequential_32_lstm_98_while_less_sequential_32_lstm_98_strided_slice_1*
T0*
_output_shapes
: w
$sequential_32/lstm_98/while/IdentityIdentity$sequential_32/lstm_98/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_32_lstm_98_while_identity-sequential_32/lstm_98/while/Identity:output:0*(
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
while_body_144963
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_22_matmul_readvariableop_resource_0:	d?H
5while_lstm_cell_22_matmul_1_readvariableop_resource_0:	2?C
4while_lstm_cell_22_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_22_matmul_readvariableop_resource:	d?F
3while_lstm_cell_22_matmul_1_readvariableop_resource:	2?A
2while_lstm_cell_22_biasadd_readvariableop_resource:	???)while/lstm_cell_22/BiasAdd/ReadVariableOp?(while/lstm_cell_22/MatMul/ReadVariableOp?*while/lstm_cell_22/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
(while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_22/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_22/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_22/addAddV2#while/lstm_cell_22/MatMul:product:0%while/lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_22/BiasAddBiasAddwhile/lstm_cell_22/add:z:01while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_22/splitSplit+while/lstm_cell_22/split/split_dim:output:0#while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitz
while/lstm_cell_22/SigmoidSigmoid!while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:?????????2|
while/lstm_cell_22/Sigmoid_1Sigmoid!while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_22/mulMul while/lstm_cell_22/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2t
while/lstm_cell_22/ReluRelu!while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_22/mul_1Mulwhile/lstm_cell_22/Sigmoid:y:0%while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_22/add_1AddV2while/lstm_cell_22/mul:z:0while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:?????????2|
while/lstm_cell_22/Sigmoid_2Sigmoid!while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:?????????2q
while/lstm_cell_22/Relu_1Reluwhile/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_22/mul_2Mul while/lstm_cell_22/Sigmoid_2:y:0'while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_22/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_22/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2y
while/Identity_5Identitywhile/lstm_cell_22/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp*^while/lstm_cell_22/BiasAdd/ReadVariableOp)^while/lstm_cell_22/MatMul/ReadVariableOp+^while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_22_biasadd_readvariableop_resource4while_lstm_cell_22_biasadd_readvariableop_resource_0"l
3while_lstm_cell_22_matmul_1_readvariableop_resource5while_lstm_cell_22_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_22_matmul_readvariableop_resource3while_lstm_cell_22_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2V
)while/lstm_cell_22/BiasAdd/ReadVariableOp)while/lstm_cell_22/BiasAdd/ReadVariableOp2T
(while/lstm_cell_22/MatMul/ReadVariableOp(while/lstm_cell_22/MatMul/ReadVariableOp2X
*while/lstm_cell_22/MatMul_1/ReadVariableOp*while/lstm_cell_22/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
__inference__traced_save_146119
file_prefix.
*savev2_dense_32_kernel_read_readvariableop,
(savev2_dense_32_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_96_lstm_cell_96_kernel_read_readvariableopD
@savev2_lstm_96_lstm_cell_96_recurrent_kernel_read_readvariableop8
4savev2_lstm_96_lstm_cell_96_bias_read_readvariableop:
6savev2_lstm_97_lstm_cell_97_kernel_read_readvariableopD
@savev2_lstm_97_lstm_cell_97_recurrent_kernel_read_readvariableop8
4savev2_lstm_97_lstm_cell_97_bias_read_readvariableop:
6savev2_lstm_98_lstm_cell_98_kernel_read_readvariableopD
@savev2_lstm_98_lstm_cell_98_recurrent_kernel_read_readvariableop8
4savev2_lstm_98_lstm_cell_98_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_32_kernel_m_read_readvariableop3
/savev2_adam_dense_32_bias_m_read_readvariableopA
=savev2_adam_lstm_96_lstm_cell_96_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_96_lstm_cell_96_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_96_lstm_cell_96_bias_m_read_readvariableopA
=savev2_adam_lstm_97_lstm_cell_97_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_97_lstm_cell_97_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_97_lstm_cell_97_bias_m_read_readvariableopA
=savev2_adam_lstm_98_lstm_cell_98_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_98_lstm_cell_98_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_98_lstm_cell_98_bias_m_read_readvariableop5
1savev2_adam_dense_32_kernel_v_read_readvariableop3
/savev2_adam_dense_32_bias_v_read_readvariableopA
=savev2_adam_lstm_96_lstm_cell_96_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_96_lstm_cell_96_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_96_lstm_cell_96_bias_v_read_readvariableopA
=savev2_adam_lstm_97_lstm_cell_97_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_97_lstm_cell_97_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_97_lstm_cell_97_bias_v_read_readvariableopA
=savev2_adam_lstm_98_lstm_cell_98_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_98_lstm_cell_98_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_98_lstm_cell_98_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_32_kernel_read_readvariableop(savev2_dense_32_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_96_lstm_cell_96_kernel_read_readvariableop@savev2_lstm_96_lstm_cell_96_recurrent_kernel_read_readvariableop4savev2_lstm_96_lstm_cell_96_bias_read_readvariableop6savev2_lstm_97_lstm_cell_97_kernel_read_readvariableop@savev2_lstm_97_lstm_cell_97_recurrent_kernel_read_readvariableop4savev2_lstm_97_lstm_cell_97_bias_read_readvariableop6savev2_lstm_98_lstm_cell_98_kernel_read_readvariableop@savev2_lstm_98_lstm_cell_98_recurrent_kernel_read_readvariableop4savev2_lstm_98_lstm_cell_98_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_32_kernel_m_read_readvariableop/savev2_adam_dense_32_bias_m_read_readvariableop=savev2_adam_lstm_96_lstm_cell_96_kernel_m_read_readvariableopGsavev2_adam_lstm_96_lstm_cell_96_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_96_lstm_cell_96_bias_m_read_readvariableop=savev2_adam_lstm_97_lstm_cell_97_kernel_m_read_readvariableopGsavev2_adam_lstm_97_lstm_cell_97_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_97_lstm_cell_97_bias_m_read_readvariableop=savev2_adam_lstm_98_lstm_cell_98_kernel_m_read_readvariableopGsavev2_adam_lstm_98_lstm_cell_98_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_98_lstm_cell_98_bias_m_read_readvariableop1savev2_adam_dense_32_kernel_v_read_readvariableop/savev2_adam_dense_32_bias_v_read_readvariableop=savev2_adam_lstm_96_lstm_cell_96_kernel_v_read_readvariableopGsavev2_adam_lstm_96_lstm_cell_96_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_96_lstm_cell_96_bias_v_read_readvariableop=savev2_adam_lstm_97_lstm_cell_97_kernel_v_read_readvariableopGsavev2_adam_lstm_97_lstm_cell_97_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_97_lstm_cell_97_bias_v_read_readvariableop=savev2_adam_lstm_98_lstm_cell_98_kernel_v_read_readvariableopGsavev2_adam_lstm_98_lstm_cell_98_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_98_lstm_cell_98_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
?
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_145878

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
?
?
I__inference_sequential_32_layer_call_and_return_conditional_losses_142842
lstm_96_input!
lstm_96_142815:	?!
lstm_96_142817:	d?
lstm_96_142819:	?!
lstm_97_142822:	d?!
lstm_97_142824:	2?
lstm_97_142826:	? 
lstm_98_142829:2( 
lstm_98_142831:
(
lstm_98_142833:(!
dense_32_142836:

dense_32_142838:
identity?? dense_32/StatefulPartitionedCall?lstm_96/StatefulPartitionedCall?lstm_97/StatefulPartitionedCall?lstm_98/StatefulPartitionedCall?
lstm_96/StatefulPartitionedCallStatefulPartitionedCalllstm_96_inputlstm_96_142815lstm_96_142817lstm_96_142819*
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
C__inference_lstm_96_layer_call_and_return_conditional_losses_141846?
lstm_97/StatefulPartitionedCallStatefulPartitionedCall(lstm_96/StatefulPartitionedCall:output:0lstm_97_142822lstm_97_142824lstm_97_142826*
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
C__inference_lstm_97_layer_call_and_return_conditional_losses_141996?
lstm_98/StatefulPartitionedCallStatefulPartitionedCall(lstm_97/StatefulPartitionedCall:output:0lstm_98_142829lstm_98_142831lstm_98_142833*
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
C__inference_lstm_98_layer_call_and_return_conditional_losses_142146?
 dense_32/StatefulPartitionedCallStatefulPartitionedCall(lstm_98/StatefulPartitionedCall:output:0dense_32_142836dense_32_142838*
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
D__inference_dense_32_layer_call_and_return_conditional_losses_142164x
IdentityIdentity)dense_32/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_32/StatefulPartitionedCall ^lstm_96/StatefulPartitionedCall ^lstm_97/StatefulPartitionedCall ^lstm_98/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2B
lstm_96/StatefulPartitionedCalllstm_96/StatefulPartitionedCall2B
lstm_97/StatefulPartitionedCalllstm_97/StatefulPartitionedCall2B
lstm_98/StatefulPartitionedCalllstm_98/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_96_input
?8
?
while_body_144677
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_22_matmul_readvariableop_resource_0:	d?H
5while_lstm_cell_22_matmul_1_readvariableop_resource_0:	2?C
4while_lstm_cell_22_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_22_matmul_readvariableop_resource:	d?F
3while_lstm_cell_22_matmul_1_readvariableop_resource:	2?A
2while_lstm_cell_22_biasadd_readvariableop_resource:	???)while/lstm_cell_22/BiasAdd/ReadVariableOp?(while/lstm_cell_22/MatMul/ReadVariableOp?*while/lstm_cell_22/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
(while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_22/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_22/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_22/addAddV2#while/lstm_cell_22/MatMul:product:0%while/lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_22/BiasAddBiasAddwhile/lstm_cell_22/add:z:01while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_22/splitSplit+while/lstm_cell_22/split/split_dim:output:0#while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitz
while/lstm_cell_22/SigmoidSigmoid!while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:?????????2|
while/lstm_cell_22/Sigmoid_1Sigmoid!while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_22/mulMul while/lstm_cell_22/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2t
while/lstm_cell_22/ReluRelu!while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_22/mul_1Mulwhile/lstm_cell_22/Sigmoid:y:0%while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_22/add_1AddV2while/lstm_cell_22/mul:z:0while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:?????????2|
while/lstm_cell_22/Sigmoid_2Sigmoid!while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:?????????2q
while/lstm_cell_22/Relu_1Reluwhile/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_22/mul_2Mul while/lstm_cell_22/Sigmoid_2:y:0'while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_22/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_22/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2y
while/Identity_5Identitywhile/lstm_cell_22/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp*^while/lstm_cell_22/BiasAdd/ReadVariableOp)^while/lstm_cell_22/MatMul/ReadVariableOp+^while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_22_biasadd_readvariableop_resource4while_lstm_cell_22_biasadd_readvariableop_resource_0"l
3while_lstm_cell_22_matmul_1_readvariableop_resource5while_lstm_cell_22_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_22_matmul_readvariableop_resource3while_lstm_cell_22_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2V
)while/lstm_cell_22/BiasAdd/ReadVariableOp)while/lstm_cell_22/BiasAdd/ReadVariableOp2T
(while/lstm_cell_22/MatMul/ReadVariableOp(while/lstm_cell_22/MatMul/ReadVariableOp2X
*while/lstm_cell_22/MatMul_1/ReadVariableOp*while/lstm_cell_22/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_144819
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_144819___redundant_placeholder04
0while_while_cond_144819___redundant_placeholder14
0while_while_cond_144819___redundant_placeholder24
0while_while_cond_144819___redundant_placeholder3
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
while_body_140728
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_21_140752_0:	?.
while_lstm_cell_21_140754_0:	d?*
while_lstm_cell_21_140756_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_21_140752:	?,
while_lstm_cell_21_140754:	d?(
while_lstm_cell_21_140756:	???*while/lstm_cell_21/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
*while/lstm_cell_21/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_21_140752_0while_lstm_cell_21_140754_0while_lstm_cell_21_140756_0*
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
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_140714?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_21/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_21/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity3while/lstm_cell_21/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dy

while/NoOpNoOp+^while/lstm_cell_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_21_140752while_lstm_cell_21_140752_0"8
while_lstm_cell_21_140754while_lstm_cell_21_140754_0"8
while_lstm_cell_21_140756while_lstm_cell_21_140756_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_21/StatefulPartitionedCall*while/lstm_cell_21/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_145976

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
?
-__inference_lstm_cell_21_layer_call_fn_145716

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
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_140860o
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
?"
?
while_body_141619
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_23_141643_0:2(-
while_lstm_cell_23_141645_0:
()
while_lstm_cell_23_141647_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_23_141643:2(+
while_lstm_cell_23_141645:
('
while_lstm_cell_23_141647:(??*while/lstm_cell_23/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
*while/lstm_cell_23/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_23_141643_0while_lstm_cell_23_141645_0while_lstm_cell_23_141647_0*
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
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_141560?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_23/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_23/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity3while/lstm_cell_23/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
y

while/NoOpNoOp+^while/lstm_cell_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_23_141643while_lstm_cell_23_141643_0"8
while_lstm_cell_23_141645while_lstm_cell_23_141645_0"8
while_lstm_cell_23_141647while_lstm_cell_23_141647_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_23/StatefulPartitionedCall*while/lstm_cell_23/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
.__inference_sequential_32_layer_call_fn_142812
lstm_96_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_96_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
I__inference_sequential_32_layer_call_and_return_conditional_losses_142760o
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
_user_specified_namelstm_96_input
?
?
while_cond_140918
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_140918___redundant_placeholder04
0while_while_cond_140918___redundant_placeholder14
0while_while_cond_140918___redundant_placeholder24
0while_while_cond_140918___redundant_placeholder3
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
while_cond_144060
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_144060___redundant_placeholder04
0while_while_cond_144060___redundant_placeholder14
0while_while_cond_144060___redundant_placeholder24
0while_while_cond_144060___redundant_placeholder3
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
while_cond_144203
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_144203___redundant_placeholder04
0while_while_cond_144203___redundant_placeholder14
0while_while_cond_144203___redundant_placeholder24
0while_while_cond_144203___redundant_placeholder3
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
while_cond_144676
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_144676___redundant_placeholder04
0while_while_cond_144676___redundant_placeholder14
0while_while_cond_144676___redundant_placeholder24
0while_while_cond_144676___redundant_placeholder3
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
(__inference_lstm_98_layer_call_fn_145058
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
C__inference_lstm_98_layer_call_and_return_conditional_losses_141497o
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
?7
?
while_body_145579
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_23_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_23_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_23_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_23_matmul_readvariableop_resource:2(E
3while_lstm_cell_23_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_23_biasadd_readvariableop_resource:(??)while/lstm_cell_23/BiasAdd/ReadVariableOp?(while/lstm_cell_23/MatMul/ReadVariableOp?*while/lstm_cell_23/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
(while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_23/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_23/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_23/addAddV2#while/lstm_cell_23/MatMul:product:0%while/lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
)while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_23/BiasAddBiasAddwhile/lstm_cell_23/add:z:01while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
"while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_23/splitSplit+while/lstm_cell_23/split/split_dim:output:0#while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitz
while/lstm_cell_23/SigmoidSigmoid!while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:?????????
|
while/lstm_cell_23/Sigmoid_1Sigmoid!while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_23/mulMul while/lstm_cell_23/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
t
while/lstm_cell_23/ReluRelu!while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_23/mul_1Mulwhile/lstm_cell_23/Sigmoid:y:0%while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_23/add_1AddV2while/lstm_cell_23/mul:z:0while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:?????????
|
while/lstm_cell_23/Sigmoid_2Sigmoid!while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:?????????
q
while/lstm_cell_23/Relu_1Reluwhile/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_23/mul_2Mul while/lstm_cell_23/Sigmoid_2:y:0'while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_23/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_23/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
y
while/Identity_5Identitywhile/lstm_cell_23/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp*^while/lstm_cell_23/BiasAdd/ReadVariableOp)^while/lstm_cell_23/MatMul/ReadVariableOp+^while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_23_biasadd_readvariableop_resource4while_lstm_cell_23_biasadd_readvariableop_resource_0"l
3while_lstm_cell_23_matmul_1_readvariableop_resource5while_lstm_cell_23_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_23_matmul_readvariableop_resource3while_lstm_cell_23_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2V
)while/lstm_cell_23/BiasAdd/ReadVariableOp)while/lstm_cell_23/BiasAdd/ReadVariableOp2T
(while/lstm_cell_23/MatMul/ReadVariableOp(while/lstm_cell_23/MatMul/ReadVariableOp2X
*while/lstm_cell_23/MatMul_1/ReadVariableOp*while/lstm_cell_23/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
-__inference_lstm_cell_23_layer_call_fn_145912

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
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_141560o
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
while_body_141428
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_23_141452_0:2(-
while_lstm_cell_23_141454_0:
()
while_lstm_cell_23_141456_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_23_141452:2(+
while_lstm_cell_23_141454:
('
while_lstm_cell_23_141456:(??*while/lstm_cell_23/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
*while/lstm_cell_23/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_23_141452_0while_lstm_cell_23_141454_0while_lstm_cell_23_141456_0*
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
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_141414?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_23/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_23/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity3while/lstm_cell_23/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
y

while/NoOpNoOp+^while/lstm_cell_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_23_141452while_lstm_cell_23_141452_0"8
while_lstm_cell_23_141454while_lstm_cell_23_141454_0"8
while_lstm_cell_23_141456while_lstm_cell_23_141456_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_23/StatefulPartitionedCall*while/lstm_cell_23/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_141269
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_22_141293_0:	d?.
while_lstm_cell_22_141295_0:	2?*
while_lstm_cell_22_141297_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_22_141293:	d?,
while_lstm_cell_22_141295:	2?(
while_lstm_cell_22_141297:	???*while/lstm_cell_22/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
*while/lstm_cell_22/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_22_141293_0while_lstm_cell_22_141295_0while_lstm_cell_22_141297_0*
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
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_141210?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_22/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_22/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity3while/lstm_cell_22/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2y

while/NoOpNoOp+^while/lstm_cell_22/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_22_141293while_lstm_cell_22_141293_0"8
while_lstm_cell_22_141295while_lstm_cell_22_141295_0"8
while_lstm_cell_22_141297while_lstm_cell_22_141297_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_22/StatefulPartitionedCall*while/lstm_cell_22/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_141427
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_141427___redundant_placeholder04
0while_while_cond_141427___redundant_placeholder14
0while_while_cond_141427___redundant_placeholder24
0while_while_cond_141427___redundant_placeholder3
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
?
?
(__inference_lstm_98_layer_call_fn_145091

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
C__inference_lstm_98_layer_call_and_return_conditional_losses_142362o
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
?
C__inference_lstm_97_layer_call_and_return_conditional_losses_141147

inputs&
lstm_cell_22_141065:	d?&
lstm_cell_22_141067:	2?"
lstm_cell_22_141069:	?
identity??$lstm_cell_22/StatefulPartitionedCall?while;
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
$lstm_cell_22/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_22_141065lstm_cell_22_141067lstm_cell_22_141069*
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
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_141064n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_22_141065lstm_cell_22_141067lstm_cell_22_141069*
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
while_body_141078*
condR
while_cond_141077*K
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
NoOpNoOp%^lstm_cell_22/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_22/StatefulPartitionedCall$lstm_cell_22/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
C__inference_lstm_98_layer_call_and_return_conditional_losses_141497

inputs%
lstm_cell_23_141415:2(%
lstm_cell_23_141417:
(!
lstm_cell_23_141419:(
identity??$lstm_cell_23/StatefulPartitionedCall?while;
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
$lstm_cell_23/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_23_141415lstm_cell_23_141417lstm_cell_23_141419*
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
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_141414n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_23_141415lstm_cell_23_141417lstm_cell_23_141419*
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
while_body_141428*
condR
while_cond_141427*K
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
NoOpNoOp%^lstm_cell_23/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_23/StatefulPartitionedCall$lstm_cell_23/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?J
?
C__inference_lstm_97_layer_call_and_return_conditional_losses_145047

inputs>
+lstm_cell_22_matmul_readvariableop_resource:	d?@
-lstm_cell_22_matmul_1_readvariableop_resource:	2?;
,lstm_cell_22_biasadd_readvariableop_resource:	?
identity??#lstm_cell_22/BiasAdd/ReadVariableOp?"lstm_cell_22/MatMul/ReadVariableOp?$lstm_cell_22/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_22/MatMul/ReadVariableOpReadVariableOp+lstm_cell_22_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_22/MatMulMatMulstrided_slice_2:output:0*lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_22/MatMul_1MatMulzeros:output:0,lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_22/addAddV2lstm_cell_22/MatMul:product:0lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_22/BiasAddBiasAddlstm_cell_22/add:z:0+lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_22/splitSplit%lstm_cell_22/split/split_dim:output:0lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitn
lstm_cell_22/SigmoidSigmoidlstm_cell_22/split:output:0*
T0*'
_output_shapes
:?????????2p
lstm_cell_22/Sigmoid_1Sigmoidlstm_cell_22/split:output:1*
T0*'
_output_shapes
:?????????2w
lstm_cell_22/mulMullstm_cell_22/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2h
lstm_cell_22/ReluRelulstm_cell_22/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_22/mul_1Mullstm_cell_22/Sigmoid:y:0lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:?????????2{
lstm_cell_22/add_1AddV2lstm_cell_22/mul:z:0lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:?????????2p
lstm_cell_22/Sigmoid_2Sigmoidlstm_cell_22/split:output:3*
T0*'
_output_shapes
:?????????2e
lstm_cell_22/Relu_1Relulstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_22/mul_2Mullstm_cell_22/Sigmoid_2:y:0!lstm_cell_22/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_22_matmul_readvariableop_resource-lstm_cell_22_matmul_1_readvariableop_resource,lstm_cell_22_biasadd_readvariableop_resource*
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
while_body_144963*
condR
while_cond_144962*K
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
NoOpNoOp$^lstm_cell_22/BiasAdd/ReadVariableOp#^lstm_cell_22/MatMul/ReadVariableOp%^lstm_cell_22/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2J
#lstm_cell_22/BiasAdd/ReadVariableOp#lstm_cell_22/BiasAdd/ReadVariableOp2H
"lstm_cell_22/MatMul/ReadVariableOp"lstm_cell_22/MatMul/ReadVariableOp2L
$lstm_cell_22/MatMul_1/ReadVariableOp$lstm_cell_22/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
-__inference_lstm_cell_23_layer_call_fn_145895

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
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_141414o
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
??
?
"__inference__traced_restore_146249
file_prefix2
 assignvariableop_dense_32_kernel:
.
 assignvariableop_1_dense_32_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: A
.assignvariableop_7_lstm_96_lstm_cell_96_kernel:	?K
8assignvariableop_8_lstm_96_lstm_cell_96_recurrent_kernel:	d?;
,assignvariableop_9_lstm_96_lstm_cell_96_bias:	?B
/assignvariableop_10_lstm_97_lstm_cell_97_kernel:	d?L
9assignvariableop_11_lstm_97_lstm_cell_97_recurrent_kernel:	2?<
-assignvariableop_12_lstm_97_lstm_cell_97_bias:	?A
/assignvariableop_13_lstm_98_lstm_cell_98_kernel:2(K
9assignvariableop_14_lstm_98_lstm_cell_98_recurrent_kernel:
(;
-assignvariableop_15_lstm_98_lstm_cell_98_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_32_kernel_m:
6
(assignvariableop_19_adam_dense_32_bias_m:I
6assignvariableop_20_adam_lstm_96_lstm_cell_96_kernel_m:	?S
@assignvariableop_21_adam_lstm_96_lstm_cell_96_recurrent_kernel_m:	d?C
4assignvariableop_22_adam_lstm_96_lstm_cell_96_bias_m:	?I
6assignvariableop_23_adam_lstm_97_lstm_cell_97_kernel_m:	d?S
@assignvariableop_24_adam_lstm_97_lstm_cell_97_recurrent_kernel_m:	2?C
4assignvariableop_25_adam_lstm_97_lstm_cell_97_bias_m:	?H
6assignvariableop_26_adam_lstm_98_lstm_cell_98_kernel_m:2(R
@assignvariableop_27_adam_lstm_98_lstm_cell_98_recurrent_kernel_m:
(B
4assignvariableop_28_adam_lstm_98_lstm_cell_98_bias_m:(<
*assignvariableop_29_adam_dense_32_kernel_v:
6
(assignvariableop_30_adam_dense_32_bias_v:I
6assignvariableop_31_adam_lstm_96_lstm_cell_96_kernel_v:	?S
@assignvariableop_32_adam_lstm_96_lstm_cell_96_recurrent_kernel_v:	d?C
4assignvariableop_33_adam_lstm_96_lstm_cell_96_bias_v:	?I
6assignvariableop_34_adam_lstm_97_lstm_cell_97_kernel_v:	d?S
@assignvariableop_35_adam_lstm_97_lstm_cell_97_recurrent_kernel_v:	2?C
4assignvariableop_36_adam_lstm_97_lstm_cell_97_bias_v:	?H
6assignvariableop_37_adam_lstm_98_lstm_cell_98_kernel_v:2(R
@assignvariableop_38_adam_lstm_98_lstm_cell_98_recurrent_kernel_v:
(B
4assignvariableop_39_adam_lstm_98_lstm_cell_98_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_32_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_32_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_96_lstm_cell_96_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_96_lstm_cell_96_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_96_lstm_cell_96_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp/assignvariableop_10_lstm_97_lstm_cell_97_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp9assignvariableop_11_lstm_97_lstm_cell_97_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp-assignvariableop_12_lstm_97_lstm_cell_97_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp/assignvariableop_13_lstm_98_lstm_cell_98_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp9assignvariableop_14_lstm_98_lstm_cell_98_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp-assignvariableop_15_lstm_98_lstm_cell_98_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_32_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_32_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_lstm_96_lstm_cell_96_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_lstm_96_lstm_cell_96_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_lstm_96_lstm_cell_96_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_lstm_97_lstm_cell_97_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_lstm_97_lstm_cell_97_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_lstm_97_lstm_cell_97_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp6assignvariableop_26_adam_lstm_98_lstm_cell_98_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_lstm_98_lstm_cell_98_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp4assignvariableop_28_adam_lstm_98_lstm_cell_98_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_32_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_32_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_lstm_96_lstm_cell_96_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp@assignvariableop_32_adam_lstm_96_lstm_cell_96_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_lstm_96_lstm_cell_96_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_lstm_97_lstm_cell_97_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp@assignvariableop_35_adam_lstm_97_lstm_cell_97_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_lstm_97_lstm_cell_97_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp6assignvariableop_37_adam_lstm_98_lstm_cell_98_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp@assignvariableop_38_adam_lstm_98_lstm_cell_98_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_lstm_98_lstm_cell_98_bias_vIdentity_39:output:0"/device:CPU:0*
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
?7
?
while_body_142278
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_23_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_23_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_23_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_23_matmul_readvariableop_resource:2(E
3while_lstm_cell_23_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_23_biasadd_readvariableop_resource:(??)while/lstm_cell_23/BiasAdd/ReadVariableOp?(while/lstm_cell_23/MatMul/ReadVariableOp?*while/lstm_cell_23/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
(while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_23/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_23/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_23/addAddV2#while/lstm_cell_23/MatMul:product:0%while/lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
)while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_23/BiasAddBiasAddwhile/lstm_cell_23/add:z:01while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
"while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_23/splitSplit+while/lstm_cell_23/split/split_dim:output:0#while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitz
while/lstm_cell_23/SigmoidSigmoid!while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:?????????
|
while/lstm_cell_23/Sigmoid_1Sigmoid!while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_23/mulMul while/lstm_cell_23/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
t
while/lstm_cell_23/ReluRelu!while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_23/mul_1Mulwhile/lstm_cell_23/Sigmoid:y:0%while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_23/add_1AddV2while/lstm_cell_23/mul:z:0while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:?????????
|
while/lstm_cell_23/Sigmoid_2Sigmoid!while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:?????????
q
while/lstm_cell_23/Relu_1Reluwhile/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_23/mul_2Mul while/lstm_cell_23/Sigmoid_2:y:0'while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_23/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_23/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
y
while/Identity_5Identitywhile/lstm_cell_23/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp*^while/lstm_cell_23/BiasAdd/ReadVariableOp)^while/lstm_cell_23/MatMul/ReadVariableOp+^while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_23_biasadd_readvariableop_resource4while_lstm_cell_23_biasadd_readvariableop_resource_0"l
3while_lstm_cell_23_matmul_1_readvariableop_resource5while_lstm_cell_23_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_23_matmul_readvariableop_resource3while_lstm_cell_23_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2V
)while/lstm_cell_23/BiasAdd/ReadVariableOp)while/lstm_cell_23/BiasAdd/ReadVariableOp2T
(while/lstm_cell_23/MatMul/ReadVariableOp(while/lstm_cell_23/MatMul/ReadVariableOp2X
*while/lstm_cell_23/MatMul_1/ReadVariableOp*while/lstm_cell_23/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
C__inference_lstm_96_layer_call_and_return_conditional_losses_140797

inputs&
lstm_cell_21_140715:	?&
lstm_cell_21_140717:	d?"
lstm_cell_21_140719:	?
identity??$lstm_cell_21/StatefulPartitionedCall?while;
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
$lstm_cell_21/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_21_140715lstm_cell_21_140717lstm_cell_21_140719*
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
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_140714n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_21_140715lstm_cell_21_140717lstm_cell_21_140719*
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
while_body_140728*
condR
while_cond_140727*K
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
NoOpNoOp%^lstm_cell_21/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_21/StatefulPartitionedCall$lstm_cell_21/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?A
?

lstm_98_while_body_143298,
(lstm_98_while_lstm_98_while_loop_counter2
.lstm_98_while_lstm_98_while_maximum_iterations
lstm_98_while_placeholder
lstm_98_while_placeholder_1
lstm_98_while_placeholder_2
lstm_98_while_placeholder_3+
'lstm_98_while_lstm_98_strided_slice_1_0g
clstm_98_while_tensorarrayv2read_tensorlistgetitem_lstm_98_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_98_while_lstm_cell_23_matmul_readvariableop_resource_0:2(O
=lstm_98_while_lstm_cell_23_matmul_1_readvariableop_resource_0:
(J
<lstm_98_while_lstm_cell_23_biasadd_readvariableop_resource_0:(
lstm_98_while_identity
lstm_98_while_identity_1
lstm_98_while_identity_2
lstm_98_while_identity_3
lstm_98_while_identity_4
lstm_98_while_identity_5)
%lstm_98_while_lstm_98_strided_slice_1e
alstm_98_while_tensorarrayv2read_tensorlistgetitem_lstm_98_tensorarrayunstack_tensorlistfromtensorK
9lstm_98_while_lstm_cell_23_matmul_readvariableop_resource:2(M
;lstm_98_while_lstm_cell_23_matmul_1_readvariableop_resource:
(H
:lstm_98_while_lstm_cell_23_biasadd_readvariableop_resource:(??1lstm_98/while/lstm_cell_23/BiasAdd/ReadVariableOp?0lstm_98/while/lstm_cell_23/MatMul/ReadVariableOp?2lstm_98/while/lstm_cell_23/MatMul_1/ReadVariableOp?
?lstm_98/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
1lstm_98/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_98_while_tensorarrayv2read_tensorlistgetitem_lstm_98_tensorarrayunstack_tensorlistfromtensor_0lstm_98_while_placeholderHlstm_98/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
0lstm_98/while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp;lstm_98_while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
!lstm_98/while/lstm_cell_23/MatMulMatMul8lstm_98/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_98/while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
2lstm_98/while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp=lstm_98_while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
#lstm_98/while/lstm_cell_23/MatMul_1MatMullstm_98_while_placeholder_2:lstm_98/while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_98/while/lstm_cell_23/addAddV2+lstm_98/while/lstm_cell_23/MatMul:product:0-lstm_98/while/lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
1lstm_98/while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp<lstm_98_while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
"lstm_98/while/lstm_cell_23/BiasAddBiasAdd"lstm_98/while/lstm_cell_23/add:z:09lstm_98/while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(l
*lstm_98/while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
 lstm_98/while/lstm_cell_23/splitSplit3lstm_98/while/lstm_cell_23/split/split_dim:output:0+lstm_98/while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
"lstm_98/while/lstm_cell_23/SigmoidSigmoid)lstm_98/while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:?????????
?
$lstm_98/while/lstm_cell_23/Sigmoid_1Sigmoid)lstm_98/while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_98/while/lstm_cell_23/mulMul(lstm_98/while/lstm_cell_23/Sigmoid_1:y:0lstm_98_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
lstm_98/while/lstm_cell_23/ReluRelu)lstm_98/while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:?????????
?
 lstm_98/while/lstm_cell_23/mul_1Mul&lstm_98/while/lstm_cell_23/Sigmoid:y:0-lstm_98/while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
 lstm_98/while/lstm_cell_23/add_1AddV2"lstm_98/while/lstm_cell_23/mul:z:0$lstm_98/while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
$lstm_98/while/lstm_cell_23/Sigmoid_2Sigmoid)lstm_98/while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:?????????
?
!lstm_98/while/lstm_cell_23/Relu_1Relu$lstm_98/while/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_98/while/lstm_cell_23/mul_2Mul(lstm_98/while/lstm_cell_23/Sigmoid_2:y:0/lstm_98/while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
2lstm_98/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_98_while_placeholder_1lstm_98_while_placeholder$lstm_98/while/lstm_cell_23/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_98/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_98/while/addAddV2lstm_98_while_placeholderlstm_98/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_98/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_98/while/add_1AddV2(lstm_98_while_lstm_98_while_loop_counterlstm_98/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_98/while/IdentityIdentitylstm_98/while/add_1:z:0^lstm_98/while/NoOp*
T0*
_output_shapes
: ?
lstm_98/while/Identity_1Identity.lstm_98_while_lstm_98_while_maximum_iterations^lstm_98/while/NoOp*
T0*
_output_shapes
: q
lstm_98/while/Identity_2Identitylstm_98/while/add:z:0^lstm_98/while/NoOp*
T0*
_output_shapes
: ?
lstm_98/while/Identity_3IdentityBlstm_98/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_98/while/NoOp*
T0*
_output_shapes
: ?
lstm_98/while/Identity_4Identity$lstm_98/while/lstm_cell_23/mul_2:z:0^lstm_98/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_98/while/Identity_5Identity$lstm_98/while/lstm_cell_23/add_1:z:0^lstm_98/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_98/while/NoOpNoOp2^lstm_98/while/lstm_cell_23/BiasAdd/ReadVariableOp1^lstm_98/while/lstm_cell_23/MatMul/ReadVariableOp3^lstm_98/while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_98_while_identitylstm_98/while/Identity:output:0"=
lstm_98_while_identity_1!lstm_98/while/Identity_1:output:0"=
lstm_98_while_identity_2!lstm_98/while/Identity_2:output:0"=
lstm_98_while_identity_3!lstm_98/while/Identity_3:output:0"=
lstm_98_while_identity_4!lstm_98/while/Identity_4:output:0"=
lstm_98_while_identity_5!lstm_98/while/Identity_5:output:0"P
%lstm_98_while_lstm_98_strided_slice_1'lstm_98_while_lstm_98_strided_slice_1_0"z
:lstm_98_while_lstm_cell_23_biasadd_readvariableop_resource<lstm_98_while_lstm_cell_23_biasadd_readvariableop_resource_0"|
;lstm_98_while_lstm_cell_23_matmul_1_readvariableop_resource=lstm_98_while_lstm_cell_23_matmul_1_readvariableop_resource_0"x
9lstm_98_while_lstm_cell_23_matmul_readvariableop_resource;lstm_98_while_lstm_cell_23_matmul_readvariableop_resource_0"?
alstm_98_while_tensorarrayv2read_tensorlistgetitem_lstm_98_tensorarrayunstack_tensorlistfromtensorclstm_98_while_tensorarrayv2read_tensorlistgetitem_lstm_98_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2f
1lstm_98/while/lstm_cell_23/BiasAdd/ReadVariableOp1lstm_98/while/lstm_cell_23/BiasAdd/ReadVariableOp2d
0lstm_98/while/lstm_cell_23/MatMul/ReadVariableOp0lstm_98/while/lstm_cell_23/MatMul/ReadVariableOp2h
2lstm_98/while/lstm_cell_23/MatMul_1/ReadVariableOp2lstm_98/while/lstm_cell_23/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
-__inference_lstm_cell_21_layer_call_fn_145699

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
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_140714o
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
?J
?
C__inference_lstm_97_layer_call_and_return_conditional_losses_142527

inputs>
+lstm_cell_22_matmul_readvariableop_resource:	d?@
-lstm_cell_22_matmul_1_readvariableop_resource:	2?;
,lstm_cell_22_biasadd_readvariableop_resource:	?
identity??#lstm_cell_22/BiasAdd/ReadVariableOp?"lstm_cell_22/MatMul/ReadVariableOp?$lstm_cell_22/MatMul_1/ReadVariableOp?while;
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
"lstm_cell_22/MatMul/ReadVariableOpReadVariableOp+lstm_cell_22_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_22/MatMulMatMulstrided_slice_2:output:0*lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_22/MatMul_1MatMulzeros:output:0,lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_22/addAddV2lstm_cell_22/MatMul:product:0lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_22/BiasAddBiasAddlstm_cell_22/add:z:0+lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_22/splitSplit%lstm_cell_22/split/split_dim:output:0lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitn
lstm_cell_22/SigmoidSigmoidlstm_cell_22/split:output:0*
T0*'
_output_shapes
:?????????2p
lstm_cell_22/Sigmoid_1Sigmoidlstm_cell_22/split:output:1*
T0*'
_output_shapes
:?????????2w
lstm_cell_22/mulMullstm_cell_22/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2h
lstm_cell_22/ReluRelulstm_cell_22/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_22/mul_1Mullstm_cell_22/Sigmoid:y:0lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:?????????2{
lstm_cell_22/add_1AddV2lstm_cell_22/mul:z:0lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:?????????2p
lstm_cell_22/Sigmoid_2Sigmoidlstm_cell_22/split:output:3*
T0*'
_output_shapes
:?????????2e
lstm_cell_22/Relu_1Relulstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_22/mul_2Mullstm_cell_22/Sigmoid_2:y:0!lstm_cell_22/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_22_matmul_readvariableop_resource-lstm_cell_22_matmul_1_readvariableop_resource,lstm_cell_22_biasadd_readvariableop_resource*
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
while_body_142443*
condR
while_cond_142442*K
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
NoOpNoOp$^lstm_cell_22/BiasAdd/ReadVariableOp#^lstm_cell_22/MatMul/ReadVariableOp%^lstm_cell_22/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2J
#lstm_cell_22/BiasAdd/ReadVariableOp#lstm_cell_22/BiasAdd/ReadVariableOp2H
"lstm_cell_22/MatMul/ReadVariableOp"lstm_cell_22/MatMul/ReadVariableOp2L
$lstm_cell_22/MatMul_1/ReadVariableOp$lstm_cell_22/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?A
?

lstm_96_while_body_143447,
(lstm_96_while_lstm_96_while_loop_counter2
.lstm_96_while_lstm_96_while_maximum_iterations
lstm_96_while_placeholder
lstm_96_while_placeholder_1
lstm_96_while_placeholder_2
lstm_96_while_placeholder_3+
'lstm_96_while_lstm_96_strided_slice_1_0g
clstm_96_while_tensorarrayv2read_tensorlistgetitem_lstm_96_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_96_while_lstm_cell_21_matmul_readvariableop_resource_0:	?P
=lstm_96_while_lstm_cell_21_matmul_1_readvariableop_resource_0:	d?K
<lstm_96_while_lstm_cell_21_biasadd_readvariableop_resource_0:	?
lstm_96_while_identity
lstm_96_while_identity_1
lstm_96_while_identity_2
lstm_96_while_identity_3
lstm_96_while_identity_4
lstm_96_while_identity_5)
%lstm_96_while_lstm_96_strided_slice_1e
alstm_96_while_tensorarrayv2read_tensorlistgetitem_lstm_96_tensorarrayunstack_tensorlistfromtensorL
9lstm_96_while_lstm_cell_21_matmul_readvariableop_resource:	?N
;lstm_96_while_lstm_cell_21_matmul_1_readvariableop_resource:	d?I
:lstm_96_while_lstm_cell_21_biasadd_readvariableop_resource:	???1lstm_96/while/lstm_cell_21/BiasAdd/ReadVariableOp?0lstm_96/while/lstm_cell_21/MatMul/ReadVariableOp?2lstm_96/while/lstm_cell_21/MatMul_1/ReadVariableOp?
?lstm_96/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
1lstm_96/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_96_while_tensorarrayv2read_tensorlistgetitem_lstm_96_tensorarrayunstack_tensorlistfromtensor_0lstm_96_while_placeholderHlstm_96/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
0lstm_96/while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp;lstm_96_while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
!lstm_96/while/lstm_cell_21/MatMulMatMul8lstm_96/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_96/while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
2lstm_96/while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp=lstm_96_while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_96/while/lstm_cell_21/MatMul_1MatMullstm_96_while_placeholder_2:lstm_96/while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_96/while/lstm_cell_21/addAddV2+lstm_96/while/lstm_cell_21/MatMul:product:0-lstm_96/while/lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
1lstm_96/while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp<lstm_96_while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
"lstm_96/while/lstm_cell_21/BiasAddBiasAdd"lstm_96/while/lstm_cell_21/add:z:09lstm_96/while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????l
*lstm_96/while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
 lstm_96/while/lstm_cell_21/splitSplit3lstm_96/while/lstm_cell_21/split/split_dim:output:0+lstm_96/while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
"lstm_96/while/lstm_cell_21/SigmoidSigmoid)lstm_96/while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:?????????d?
$lstm_96/while/lstm_cell_21/Sigmoid_1Sigmoid)lstm_96/while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_96/while/lstm_cell_21/mulMul(lstm_96/while/lstm_cell_21/Sigmoid_1:y:0lstm_96_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
lstm_96/while/lstm_cell_21/ReluRelu)lstm_96/while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:?????????d?
 lstm_96/while/lstm_cell_21/mul_1Mul&lstm_96/while/lstm_cell_21/Sigmoid:y:0-lstm_96/while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
 lstm_96/while/lstm_cell_21/add_1AddV2"lstm_96/while/lstm_cell_21/mul:z:0$lstm_96/while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
$lstm_96/while/lstm_cell_21/Sigmoid_2Sigmoid)lstm_96/while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:?????????d?
!lstm_96/while/lstm_cell_21/Relu_1Relu$lstm_96/while/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_96/while/lstm_cell_21/mul_2Mul(lstm_96/while/lstm_cell_21/Sigmoid_2:y:0/lstm_96/while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
2lstm_96/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_96_while_placeholder_1lstm_96_while_placeholder$lstm_96/while/lstm_cell_21/mul_2:z:0*
_output_shapes
: *
element_dtype0:???U
lstm_96/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_96/while/addAddV2lstm_96_while_placeholderlstm_96/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_96/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_96/while/add_1AddV2(lstm_96_while_lstm_96_while_loop_counterlstm_96/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_96/while/IdentityIdentitylstm_96/while/add_1:z:0^lstm_96/while/NoOp*
T0*
_output_shapes
: ?
lstm_96/while/Identity_1Identity.lstm_96_while_lstm_96_while_maximum_iterations^lstm_96/while/NoOp*
T0*
_output_shapes
: q
lstm_96/while/Identity_2Identitylstm_96/while/add:z:0^lstm_96/while/NoOp*
T0*
_output_shapes
: ?
lstm_96/while/Identity_3IdentityBlstm_96/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_96/while/NoOp*
T0*
_output_shapes
: ?
lstm_96/while/Identity_4Identity$lstm_96/while/lstm_cell_21/mul_2:z:0^lstm_96/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_96/while/Identity_5Identity$lstm_96/while/lstm_cell_21/add_1:z:0^lstm_96/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_96/while/NoOpNoOp2^lstm_96/while/lstm_cell_21/BiasAdd/ReadVariableOp1^lstm_96/while/lstm_cell_21/MatMul/ReadVariableOp3^lstm_96/while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_96_while_identitylstm_96/while/Identity:output:0"=
lstm_96_while_identity_1!lstm_96/while/Identity_1:output:0"=
lstm_96_while_identity_2!lstm_96/while/Identity_2:output:0"=
lstm_96_while_identity_3!lstm_96/while/Identity_3:output:0"=
lstm_96_while_identity_4!lstm_96/while/Identity_4:output:0"=
lstm_96_while_identity_5!lstm_96/while/Identity_5:output:0"P
%lstm_96_while_lstm_96_strided_slice_1'lstm_96_while_lstm_96_strided_slice_1_0"z
:lstm_96_while_lstm_cell_21_biasadd_readvariableop_resource<lstm_96_while_lstm_cell_21_biasadd_readvariableop_resource_0"|
;lstm_96_while_lstm_cell_21_matmul_1_readvariableop_resource=lstm_96_while_lstm_cell_21_matmul_1_readvariableop_resource_0"x
9lstm_96_while_lstm_cell_21_matmul_readvariableop_resource;lstm_96_while_lstm_cell_21_matmul_readvariableop_resource_0"?
alstm_96_while_tensorarrayv2read_tensorlistgetitem_lstm_96_tensorarrayunstack_tensorlistfromtensorclstm_96_while_tensorarrayv2read_tensorlistgetitem_lstm_96_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2f
1lstm_96/while/lstm_cell_21/BiasAdd/ReadVariableOp1lstm_96/while/lstm_cell_21/BiasAdd/ReadVariableOp2d
0lstm_96/while/lstm_cell_21/MatMul/ReadVariableOp0lstm_96/while/lstm_cell_21/MatMul/ReadVariableOp2h
2lstm_96/while/lstm_cell_21/MatMul_1/ReadVariableOp2lstm_96/while/lstm_cell_21/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?Q
?
'sequential_32_lstm_98_while_body_140557H
Dsequential_32_lstm_98_while_sequential_32_lstm_98_while_loop_counterN
Jsequential_32_lstm_98_while_sequential_32_lstm_98_while_maximum_iterations+
'sequential_32_lstm_98_while_placeholder-
)sequential_32_lstm_98_while_placeholder_1-
)sequential_32_lstm_98_while_placeholder_2-
)sequential_32_lstm_98_while_placeholder_3G
Csequential_32_lstm_98_while_sequential_32_lstm_98_strided_slice_1_0?
sequential_32_lstm_98_while_tensorarrayv2read_tensorlistgetitem_sequential_32_lstm_98_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_32_lstm_98_while_lstm_cell_23_matmul_readvariableop_resource_0:2(]
Ksequential_32_lstm_98_while_lstm_cell_23_matmul_1_readvariableop_resource_0:
(X
Jsequential_32_lstm_98_while_lstm_cell_23_biasadd_readvariableop_resource_0:((
$sequential_32_lstm_98_while_identity*
&sequential_32_lstm_98_while_identity_1*
&sequential_32_lstm_98_while_identity_2*
&sequential_32_lstm_98_while_identity_3*
&sequential_32_lstm_98_while_identity_4*
&sequential_32_lstm_98_while_identity_5E
Asequential_32_lstm_98_while_sequential_32_lstm_98_strided_slice_1?
}sequential_32_lstm_98_while_tensorarrayv2read_tensorlistgetitem_sequential_32_lstm_98_tensorarrayunstack_tensorlistfromtensorY
Gsequential_32_lstm_98_while_lstm_cell_23_matmul_readvariableop_resource:2([
Isequential_32_lstm_98_while_lstm_cell_23_matmul_1_readvariableop_resource:
(V
Hsequential_32_lstm_98_while_lstm_cell_23_biasadd_readvariableop_resource:(???sequential_32/lstm_98/while/lstm_cell_23/BiasAdd/ReadVariableOp?>sequential_32/lstm_98/while/lstm_cell_23/MatMul/ReadVariableOp?@sequential_32/lstm_98/while/lstm_cell_23/MatMul_1/ReadVariableOp?
Msequential_32/lstm_98/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_32/lstm_98/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_32_lstm_98_while_tensorarrayv2read_tensorlistgetitem_sequential_32_lstm_98_tensorarrayunstack_tensorlistfromtensor_0'sequential_32_lstm_98_while_placeholderVsequential_32/lstm_98/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
>sequential_32/lstm_98/while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOpIsequential_32_lstm_98_while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
/sequential_32/lstm_98/while/lstm_cell_23/MatMulMatMulFsequential_32/lstm_98/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_32/lstm_98/while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
@sequential_32/lstm_98/while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOpKsequential_32_lstm_98_while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
1sequential_32/lstm_98/while/lstm_cell_23/MatMul_1MatMul)sequential_32_lstm_98_while_placeholder_2Hsequential_32/lstm_98/while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
,sequential_32/lstm_98/while/lstm_cell_23/addAddV29sequential_32/lstm_98/while/lstm_cell_23/MatMul:product:0;sequential_32/lstm_98/while/lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
?sequential_32/lstm_98/while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOpJsequential_32_lstm_98_while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
0sequential_32/lstm_98/while/lstm_cell_23/BiasAddBiasAdd0sequential_32/lstm_98/while/lstm_cell_23/add:z:0Gsequential_32/lstm_98/while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(z
8sequential_32/lstm_98/while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
.sequential_32/lstm_98/while/lstm_cell_23/splitSplitAsequential_32/lstm_98/while/lstm_cell_23/split/split_dim:output:09sequential_32/lstm_98/while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
0sequential_32/lstm_98/while/lstm_cell_23/SigmoidSigmoid7sequential_32/lstm_98/while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:?????????
?
2sequential_32/lstm_98/while/lstm_cell_23/Sigmoid_1Sigmoid7sequential_32/lstm_98/while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:?????????
?
,sequential_32/lstm_98/while/lstm_cell_23/mulMul6sequential_32/lstm_98/while/lstm_cell_23/Sigmoid_1:y:0)sequential_32_lstm_98_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
-sequential_32/lstm_98/while/lstm_cell_23/ReluRelu7sequential_32/lstm_98/while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:?????????
?
.sequential_32/lstm_98/while/lstm_cell_23/mul_1Mul4sequential_32/lstm_98/while/lstm_cell_23/Sigmoid:y:0;sequential_32/lstm_98/while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
.sequential_32/lstm_98/while/lstm_cell_23/add_1AddV20sequential_32/lstm_98/while/lstm_cell_23/mul:z:02sequential_32/lstm_98/while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
2sequential_32/lstm_98/while/lstm_cell_23/Sigmoid_2Sigmoid7sequential_32/lstm_98/while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:?????????
?
/sequential_32/lstm_98/while/lstm_cell_23/Relu_1Relu2sequential_32/lstm_98/while/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_32/lstm_98/while/lstm_cell_23/mul_2Mul6sequential_32/lstm_98/while/lstm_cell_23/Sigmoid_2:y:0=sequential_32/lstm_98/while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
@sequential_32/lstm_98/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_32_lstm_98_while_placeholder_1'sequential_32_lstm_98_while_placeholder2sequential_32/lstm_98/while/lstm_cell_23/mul_2:z:0*
_output_shapes
: *
element_dtype0:???c
!sequential_32/lstm_98/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
sequential_32/lstm_98/while/addAddV2'sequential_32_lstm_98_while_placeholder*sequential_32/lstm_98/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_32/lstm_98/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_32/lstm_98/while/add_1AddV2Dsequential_32_lstm_98_while_sequential_32_lstm_98_while_loop_counter,sequential_32/lstm_98/while/add_1/y:output:0*
T0*
_output_shapes
: ?
$sequential_32/lstm_98/while/IdentityIdentity%sequential_32/lstm_98/while/add_1:z:0!^sequential_32/lstm_98/while/NoOp*
T0*
_output_shapes
: ?
&sequential_32/lstm_98/while/Identity_1IdentityJsequential_32_lstm_98_while_sequential_32_lstm_98_while_maximum_iterations!^sequential_32/lstm_98/while/NoOp*
T0*
_output_shapes
: ?
&sequential_32/lstm_98/while/Identity_2Identity#sequential_32/lstm_98/while/add:z:0!^sequential_32/lstm_98/while/NoOp*
T0*
_output_shapes
: ?
&sequential_32/lstm_98/while/Identity_3IdentityPsequential_32/lstm_98/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_32/lstm_98/while/NoOp*
T0*
_output_shapes
: ?
&sequential_32/lstm_98/while/Identity_4Identity2sequential_32/lstm_98/while/lstm_cell_23/mul_2:z:0!^sequential_32/lstm_98/while/NoOp*
T0*'
_output_shapes
:?????????
?
&sequential_32/lstm_98/while/Identity_5Identity2sequential_32/lstm_98/while/lstm_cell_23/add_1:z:0!^sequential_32/lstm_98/while/NoOp*
T0*'
_output_shapes
:?????????
?
 sequential_32/lstm_98/while/NoOpNoOp@^sequential_32/lstm_98/while/lstm_cell_23/BiasAdd/ReadVariableOp?^sequential_32/lstm_98/while/lstm_cell_23/MatMul/ReadVariableOpA^sequential_32/lstm_98/while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_32_lstm_98_while_identity-sequential_32/lstm_98/while/Identity:output:0"Y
&sequential_32_lstm_98_while_identity_1/sequential_32/lstm_98/while/Identity_1:output:0"Y
&sequential_32_lstm_98_while_identity_2/sequential_32/lstm_98/while/Identity_2:output:0"Y
&sequential_32_lstm_98_while_identity_3/sequential_32/lstm_98/while/Identity_3:output:0"Y
&sequential_32_lstm_98_while_identity_4/sequential_32/lstm_98/while/Identity_4:output:0"Y
&sequential_32_lstm_98_while_identity_5/sequential_32/lstm_98/while/Identity_5:output:0"?
Hsequential_32_lstm_98_while_lstm_cell_23_biasadd_readvariableop_resourceJsequential_32_lstm_98_while_lstm_cell_23_biasadd_readvariableop_resource_0"?
Isequential_32_lstm_98_while_lstm_cell_23_matmul_1_readvariableop_resourceKsequential_32_lstm_98_while_lstm_cell_23_matmul_1_readvariableop_resource_0"?
Gsequential_32_lstm_98_while_lstm_cell_23_matmul_readvariableop_resourceIsequential_32_lstm_98_while_lstm_cell_23_matmul_readvariableop_resource_0"?
Asequential_32_lstm_98_while_sequential_32_lstm_98_strided_slice_1Csequential_32_lstm_98_while_sequential_32_lstm_98_strided_slice_1_0"?
}sequential_32_lstm_98_while_tensorarrayv2read_tensorlistgetitem_sequential_32_lstm_98_tensorarrayunstack_tensorlistfromtensorsequential_32_lstm_98_while_tensorarrayv2read_tensorlistgetitem_sequential_32_lstm_98_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
?sequential_32/lstm_98/while/lstm_cell_23/BiasAdd/ReadVariableOp?sequential_32/lstm_98/while/lstm_cell_23/BiasAdd/ReadVariableOp2?
>sequential_32/lstm_98/while/lstm_cell_23/MatMul/ReadVariableOp>sequential_32/lstm_98/while/lstm_cell_23/MatMul/ReadVariableOp2?
@sequential_32/lstm_98/while/lstm_cell_23/MatMul_1/ReadVariableOp@sequential_32/lstm_98/while/lstm_cell_23/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_142061
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_142061___redundant_placeholder04
0while_while_cond_142061___redundant_placeholder14
0while_while_cond_142061___redundant_placeholder24
0while_while_cond_142061___redundant_placeholder3
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
while_body_142062
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_23_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_23_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_23_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_23_matmul_readvariableop_resource:2(E
3while_lstm_cell_23_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_23_biasadd_readvariableop_resource:(??)while/lstm_cell_23/BiasAdd/ReadVariableOp?(while/lstm_cell_23/MatMul/ReadVariableOp?*while/lstm_cell_23/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
(while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_23/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_23/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_23/addAddV2#while/lstm_cell_23/MatMul:product:0%while/lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
)while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_23/BiasAddBiasAddwhile/lstm_cell_23/add:z:01while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
"while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_23/splitSplit+while/lstm_cell_23/split/split_dim:output:0#while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitz
while/lstm_cell_23/SigmoidSigmoid!while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:?????????
|
while/lstm_cell_23/Sigmoid_1Sigmoid!while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_23/mulMul while/lstm_cell_23/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
t
while/lstm_cell_23/ReluRelu!while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_23/mul_1Mulwhile/lstm_cell_23/Sigmoid:y:0%while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_23/add_1AddV2while/lstm_cell_23/mul:z:0while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:?????????
|
while/lstm_cell_23/Sigmoid_2Sigmoid!while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:?????????
q
while/lstm_cell_23/Relu_1Reluwhile/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_23/mul_2Mul while/lstm_cell_23/Sigmoid_2:y:0'while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_23/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_23/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
y
while/Identity_5Identitywhile/lstm_cell_23/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp*^while/lstm_cell_23/BiasAdd/ReadVariableOp)^while/lstm_cell_23/MatMul/ReadVariableOp+^while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_23_biasadd_readvariableop_resource4while_lstm_cell_23_biasadd_readvariableop_resource_0"l
3while_lstm_cell_23_matmul_1_readvariableop_resource5while_lstm_cell_23_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_23_matmul_readvariableop_resource3while_lstm_cell_23_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2V
)while/lstm_cell_23/BiasAdd/ReadVariableOp)while/lstm_cell_23/BiasAdd/ReadVariableOp2T
(while/lstm_cell_23/MatMul/ReadVariableOp(while/lstm_cell_23/MatMul/ReadVariableOp2X
*while/lstm_cell_23/MatMul_1/ReadVariableOp*while/lstm_cell_23/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_145292
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_145292___redundant_placeholder04
0while_while_cond_145292___redundant_placeholder14
0while_while_cond_145292___redundant_placeholder24
0while_while_cond_145292___redundant_placeholder3
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
.__inference_sequential_32_layer_call_fn_142961

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
I__inference_sequential_32_layer_call_and_return_conditional_losses_142760o
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
?
'sequential_32_lstm_97_while_cond_140417H
Dsequential_32_lstm_97_while_sequential_32_lstm_97_while_loop_counterN
Jsequential_32_lstm_97_while_sequential_32_lstm_97_while_maximum_iterations+
'sequential_32_lstm_97_while_placeholder-
)sequential_32_lstm_97_while_placeholder_1-
)sequential_32_lstm_97_while_placeholder_2-
)sequential_32_lstm_97_while_placeholder_3J
Fsequential_32_lstm_97_while_less_sequential_32_lstm_97_strided_slice_1`
\sequential_32_lstm_97_while_sequential_32_lstm_97_while_cond_140417___redundant_placeholder0`
\sequential_32_lstm_97_while_sequential_32_lstm_97_while_cond_140417___redundant_placeholder1`
\sequential_32_lstm_97_while_sequential_32_lstm_97_while_cond_140417___redundant_placeholder2`
\sequential_32_lstm_97_while_sequential_32_lstm_97_while_cond_140417___redundant_placeholder3(
$sequential_32_lstm_97_while_identity
?
 sequential_32/lstm_97/while/LessLess'sequential_32_lstm_97_while_placeholderFsequential_32_lstm_97_while_less_sequential_32_lstm_97_strided_slice_1*
T0*
_output_shapes
: w
$sequential_32/lstm_97/while/IdentityIdentity$sequential_32/lstm_97/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_32_lstm_97_while_identity-sequential_32/lstm_97/while/Identity:output:0*(
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
:"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
K
lstm_96_input:
serving_default_lstm_96_input:0?????????<
dense_320
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
2dense_32/kernel
:2dense_32/bias
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
.:,	?2lstm_96/lstm_cell_96/kernel
8:6	d?2%lstm_96/lstm_cell_96/recurrent_kernel
(:&?2lstm_96/lstm_cell_96/bias
.:,	d?2lstm_97/lstm_cell_97/kernel
8:6	2?2%lstm_97/lstm_cell_97/recurrent_kernel
(:&?2lstm_97/lstm_cell_97/bias
-:+2(2lstm_98/lstm_cell_98/kernel
7:5
(2%lstm_98/lstm_cell_98/recurrent_kernel
':%(2lstm_98/lstm_cell_98/bias
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
2Adam/dense_32/kernel/m
 :2Adam/dense_32/bias/m
3:1	?2"Adam/lstm_96/lstm_cell_96/kernel/m
=:;	d?2,Adam/lstm_96/lstm_cell_96/recurrent_kernel/m
-:+?2 Adam/lstm_96/lstm_cell_96/bias/m
3:1	d?2"Adam/lstm_97/lstm_cell_97/kernel/m
=:;	2?2,Adam/lstm_97/lstm_cell_97/recurrent_kernel/m
-:+?2 Adam/lstm_97/lstm_cell_97/bias/m
2:02(2"Adam/lstm_98/lstm_cell_98/kernel/m
<::
(2,Adam/lstm_98/lstm_cell_98/recurrent_kernel/m
,:*(2 Adam/lstm_98/lstm_cell_98/bias/m
&:$
2Adam/dense_32/kernel/v
 :2Adam/dense_32/bias/v
3:1	?2"Adam/lstm_96/lstm_cell_96/kernel/v
=:;	d?2,Adam/lstm_96/lstm_cell_96/recurrent_kernel/v
-:+?2 Adam/lstm_96/lstm_cell_96/bias/v
3:1	d?2"Adam/lstm_97/lstm_cell_97/kernel/v
=:;	2?2,Adam/lstm_97/lstm_cell_97/recurrent_kernel/v
-:+?2 Adam/lstm_97/lstm_cell_97/bias/v
2:02(2"Adam/lstm_98/lstm_cell_98/kernel/v
<::
(2,Adam/lstm_98/lstm_cell_98/recurrent_kernel/v
,:*(2 Adam/lstm_98/lstm_cell_98/bias/v
?2?
.__inference_sequential_32_layer_call_fn_142196
.__inference_sequential_32_layer_call_fn_142934
.__inference_sequential_32_layer_call_fn_142961
.__inference_sequential_32_layer_call_fn_142812?
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
I__inference_sequential_32_layer_call_and_return_conditional_losses_143388
I__inference_sequential_32_layer_call_and_return_conditional_losses_143815
I__inference_sequential_32_layer_call_and_return_conditional_losses_142842
I__inference_sequential_32_layer_call_and_return_conditional_losses_142872?
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
!__inference__wrapped_model_140647lstm_96_input"?
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
(__inference_lstm_96_layer_call_fn_143826
(__inference_lstm_96_layer_call_fn_143837
(__inference_lstm_96_layer_call_fn_143848
(__inference_lstm_96_layer_call_fn_143859?
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
C__inference_lstm_96_layer_call_and_return_conditional_losses_144002
C__inference_lstm_96_layer_call_and_return_conditional_losses_144145
C__inference_lstm_96_layer_call_and_return_conditional_losses_144288
C__inference_lstm_96_layer_call_and_return_conditional_losses_144431?
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
(__inference_lstm_97_layer_call_fn_144442
(__inference_lstm_97_layer_call_fn_144453
(__inference_lstm_97_layer_call_fn_144464
(__inference_lstm_97_layer_call_fn_144475?
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
C__inference_lstm_97_layer_call_and_return_conditional_losses_144618
C__inference_lstm_97_layer_call_and_return_conditional_losses_144761
C__inference_lstm_97_layer_call_and_return_conditional_losses_144904
C__inference_lstm_97_layer_call_and_return_conditional_losses_145047?
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
(__inference_lstm_98_layer_call_fn_145058
(__inference_lstm_98_layer_call_fn_145069
(__inference_lstm_98_layer_call_fn_145080
(__inference_lstm_98_layer_call_fn_145091?
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
C__inference_lstm_98_layer_call_and_return_conditional_losses_145234
C__inference_lstm_98_layer_call_and_return_conditional_losses_145377
C__inference_lstm_98_layer_call_and_return_conditional_losses_145520
C__inference_lstm_98_layer_call_and_return_conditional_losses_145663?
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
)__inference_dense_32_layer_call_fn_145672?
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
D__inference_dense_32_layer_call_and_return_conditional_losses_145682?
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
$__inference_signature_wrapper_142907lstm_96_input"?
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
-__inference_lstm_cell_21_layer_call_fn_145699
-__inference_lstm_cell_21_layer_call_fn_145716?
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
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_145748
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_145780?
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
-__inference_lstm_cell_22_layer_call_fn_145797
-__inference_lstm_cell_22_layer_call_fn_145814?
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
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_145846
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_145878?
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
-__inference_lstm_cell_23_layer_call_fn_145895
-__inference_lstm_cell_23_layer_call_fn_145912?
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
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_145944
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_145976?
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
!__inference__wrapped_model_140647~-./012345!":?7
0?-
+?(
lstm_96_input?????????
? "3?0
.
dense_32"?
dense_32??????????
D__inference_dense_32_layer_call_and_return_conditional_losses_145682\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? |
)__inference_dense_32_layer_call_fn_145672O!"/?,
%?"
 ?
inputs?????????

? "???????????
C__inference_lstm_96_layer_call_and_return_conditional_losses_144002?-./O?L
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
C__inference_lstm_96_layer_call_and_return_conditional_losses_144145?-./O?L
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
C__inference_lstm_96_layer_call_and_return_conditional_losses_144288q-./??<
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
C__inference_lstm_96_layer_call_and_return_conditional_losses_144431q-./??<
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
(__inference_lstm_96_layer_call_fn_143826}-./O?L
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
(__inference_lstm_96_layer_call_fn_143837}-./O?L
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
(__inference_lstm_96_layer_call_fn_143848d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
(__inference_lstm_96_layer_call_fn_143859d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
C__inference_lstm_97_layer_call_and_return_conditional_losses_144618?012O?L
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
C__inference_lstm_97_layer_call_and_return_conditional_losses_144761?012O?L
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
C__inference_lstm_97_layer_call_and_return_conditional_losses_144904q012??<
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
C__inference_lstm_97_layer_call_and_return_conditional_losses_145047q012??<
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
(__inference_lstm_97_layer_call_fn_144442}012O?L
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
(__inference_lstm_97_layer_call_fn_144453}012O?L
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
(__inference_lstm_97_layer_call_fn_144464d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
(__inference_lstm_97_layer_call_fn_144475d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
C__inference_lstm_98_layer_call_and_return_conditional_losses_145234}345O?L
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
C__inference_lstm_98_layer_call_and_return_conditional_losses_145377}345O?L
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
C__inference_lstm_98_layer_call_and_return_conditional_losses_145520m345??<
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
C__inference_lstm_98_layer_call_and_return_conditional_losses_145663m345??<
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
(__inference_lstm_98_layer_call_fn_145058p345O?L
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
(__inference_lstm_98_layer_call_fn_145069p345O?L
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
(__inference_lstm_98_layer_call_fn_145080`345??<
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
(__inference_lstm_98_layer_call_fn_145091`345??<
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
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_145748?-./??}
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
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_145780?-./??}
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
-__inference_lstm_cell_21_layer_call_fn_145699?-./??}
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
-__inference_lstm_cell_21_layer_call_fn_145716?-./??}
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
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_145846?012??}
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
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_145878?012??}
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
-__inference_lstm_cell_22_layer_call_fn_145797?012??}
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
-__inference_lstm_cell_22_layer_call_fn_145814?012??}
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
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_145944?345??}
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
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_145976?345??}
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
-__inference_lstm_cell_23_layer_call_fn_145895?345??}
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
-__inference_lstm_cell_23_layer_call_fn_145912?345??}
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
I__inference_sequential_32_layer_call_and_return_conditional_losses_142842x-./012345!"B??
8?5
+?(
lstm_96_input?????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_32_layer_call_and_return_conditional_losses_142872x-./012345!"B??
8?5
+?(
lstm_96_input?????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_32_layer_call_and_return_conditional_losses_143388q-./012345!";?8
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
I__inference_sequential_32_layer_call_and_return_conditional_losses_143815q-./012345!";?8
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
.__inference_sequential_32_layer_call_fn_142196k-./012345!"B??
8?5
+?(
lstm_96_input?????????
p 

 
? "???????????
.__inference_sequential_32_layer_call_fn_142812k-./012345!"B??
8?5
+?(
lstm_96_input?????????
p

 
? "???????????
.__inference_sequential_32_layer_call_fn_142934d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
.__inference_sequential_32_layer_call_fn_142961d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_142907?-./012345!"K?H
? 
A?>
<
lstm_96_input+?(
lstm_96_input?????????"3?0
.
dense_32"?
dense_32?????????