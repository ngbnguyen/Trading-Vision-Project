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
dense_42/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_42/kernel
s
#dense_42/kernel/Read/ReadVariableOpReadVariableOpdense_42/kernel*
_output_shapes

:
*
dtype0
r
dense_42/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_42/bias
k
!dense_42/bias/Read/ReadVariableOpReadVariableOpdense_42/bias*
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
lstm_126/lstm_cell_126/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_126/lstm_cell_126/kernel
?
1lstm_126/lstm_cell_126/kernel/Read/ReadVariableOpReadVariableOplstm_126/lstm_cell_126/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_126/lstm_cell_126/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_126/lstm_cell_126/recurrent_kernel
?
;lstm_126/lstm_cell_126/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_126/lstm_cell_126/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_126/lstm_cell_126/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_126/lstm_cell_126/bias
?
/lstm_126/lstm_cell_126/bias/Read/ReadVariableOpReadVariableOplstm_126/lstm_cell_126/bias*
_output_shapes	
:?*
dtype0
?
lstm_127/lstm_cell_127/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_127/lstm_cell_127/kernel
?
1lstm_127/lstm_cell_127/kernel/Read/ReadVariableOpReadVariableOplstm_127/lstm_cell_127/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_127/lstm_cell_127/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_127/lstm_cell_127/recurrent_kernel
?
;lstm_127/lstm_cell_127/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_127/lstm_cell_127/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_127/lstm_cell_127/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_127/lstm_cell_127/bias
?
/lstm_127/lstm_cell_127/bias/Read/ReadVariableOpReadVariableOplstm_127/lstm_cell_127/bias*
_output_shapes	
:?*
dtype0
?
lstm_128/lstm_cell_128/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_128/lstm_cell_128/kernel
?
1lstm_128/lstm_cell_128/kernel/Read/ReadVariableOpReadVariableOplstm_128/lstm_cell_128/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_128/lstm_cell_128/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_128/lstm_cell_128/recurrent_kernel
?
;lstm_128/lstm_cell_128/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_128/lstm_cell_128/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_128/lstm_cell_128/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_128/lstm_cell_128/bias
?
/lstm_128/lstm_cell_128/bias/Read/ReadVariableOpReadVariableOplstm_128/lstm_cell_128/bias*
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
Adam/dense_42/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_42/kernel/m
?
*Adam/dense_42/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_42/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_42/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_42/bias/m
y
(Adam/dense_42/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_42/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_126/lstm_cell_126/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_126/lstm_cell_126/kernel/m
?
8Adam/lstm_126/lstm_cell_126/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_126/lstm_cell_126/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_126/lstm_cell_126/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_126/lstm_cell_126/recurrent_kernel/m
?
BAdam/lstm_126/lstm_cell_126/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_126/lstm_cell_126/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_126/lstm_cell_126/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_126/lstm_cell_126/bias/m
?
6Adam/lstm_126/lstm_cell_126/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_126/lstm_cell_126/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_127/lstm_cell_127/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_127/lstm_cell_127/kernel/m
?
8Adam/lstm_127/lstm_cell_127/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_127/lstm_cell_127/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_127/lstm_cell_127/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_127/lstm_cell_127/recurrent_kernel/m
?
BAdam/lstm_127/lstm_cell_127/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_127/lstm_cell_127/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_127/lstm_cell_127/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_127/lstm_cell_127/bias/m
?
6Adam/lstm_127/lstm_cell_127/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_127/lstm_cell_127/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_128/lstm_cell_128/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_128/lstm_cell_128/kernel/m
?
8Adam/lstm_128/lstm_cell_128/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_128/lstm_cell_128/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_128/lstm_cell_128/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_128/lstm_cell_128/recurrent_kernel/m
?
BAdam/lstm_128/lstm_cell_128/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_128/lstm_cell_128/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_128/lstm_cell_128/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_128/lstm_cell_128/bias/m
?
6Adam/lstm_128/lstm_cell_128/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_128/lstm_cell_128/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_42/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_42/kernel/v
?
*Adam/dense_42/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_42/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_42/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_42/bias/v
y
(Adam/dense_42/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_42/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_126/lstm_cell_126/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_126/lstm_cell_126/kernel/v
?
8Adam/lstm_126/lstm_cell_126/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_126/lstm_cell_126/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_126/lstm_cell_126/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_126/lstm_cell_126/recurrent_kernel/v
?
BAdam/lstm_126/lstm_cell_126/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_126/lstm_cell_126/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_126/lstm_cell_126/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_126/lstm_cell_126/bias/v
?
6Adam/lstm_126/lstm_cell_126/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_126/lstm_cell_126/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_127/lstm_cell_127/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_127/lstm_cell_127/kernel/v
?
8Adam/lstm_127/lstm_cell_127/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_127/lstm_cell_127/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_127/lstm_cell_127/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_127/lstm_cell_127/recurrent_kernel/v
?
BAdam/lstm_127/lstm_cell_127/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_127/lstm_cell_127/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_127/lstm_cell_127/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_127/lstm_cell_127/bias/v
?
6Adam/lstm_127/lstm_cell_127/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_127/lstm_cell_127/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_128/lstm_cell_128/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_128/lstm_cell_128/kernel/v
?
8Adam/lstm_128/lstm_cell_128/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_128/lstm_cell_128/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_128/lstm_cell_128/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_128/lstm_cell_128/recurrent_kernel/v
?
BAdam/lstm_128/lstm_cell_128/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_128/lstm_cell_128/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_128/lstm_cell_128/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_128/lstm_cell_128/bias/v
?
6Adam/lstm_128/lstm_cell_128/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_128/lstm_cell_128/bias/v*
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
VARIABLE_VALUEdense_42/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_42/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_126/lstm_cell_126/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_126/lstm_cell_126/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_126/lstm_cell_126/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_127/lstm_cell_127/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_127/lstm_cell_127/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_127/lstm_cell_127/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_128/lstm_cell_128/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_128/lstm_cell_128/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_128/lstm_cell_128/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_42/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_42/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_126/lstm_cell_126/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_126/lstm_cell_126/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_126/lstm_cell_126/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_127/lstm_cell_127/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_127/lstm_cell_127/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_127/lstm_cell_127/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_128/lstm_cell_128/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_128/lstm_cell_128/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_128/lstm_cell_128/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_42/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_42/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_126/lstm_cell_126/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_126/lstm_cell_126/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_126/lstm_cell_126/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_127/lstm_cell_127/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_127/lstm_cell_127/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_127/lstm_cell_127/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_128/lstm_cell_128/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_128/lstm_cell_128/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_128/lstm_cell_128/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_126_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_126_inputlstm_126/lstm_cell_126/kernel'lstm_126/lstm_cell_126/recurrent_kernellstm_126/lstm_cell_126/biaslstm_127/lstm_cell_127/kernel'lstm_127/lstm_cell_127/recurrent_kernellstm_127/lstm_cell_127/biaslstm_128/lstm_cell_128/kernel'lstm_128/lstm_cell_128/recurrent_kernellstm_128/lstm_cell_128/biasdense_42/kerneldense_42/bias*
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
%__inference_signature_wrapper_2137558
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_42/kernel/Read/ReadVariableOp!dense_42/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_126/lstm_cell_126/kernel/Read/ReadVariableOp;lstm_126/lstm_cell_126/recurrent_kernel/Read/ReadVariableOp/lstm_126/lstm_cell_126/bias/Read/ReadVariableOp1lstm_127/lstm_cell_127/kernel/Read/ReadVariableOp;lstm_127/lstm_cell_127/recurrent_kernel/Read/ReadVariableOp/lstm_127/lstm_cell_127/bias/Read/ReadVariableOp1lstm_128/lstm_cell_128/kernel/Read/ReadVariableOp;lstm_128/lstm_cell_128/recurrent_kernel/Read/ReadVariableOp/lstm_128/lstm_cell_128/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_42/kernel/m/Read/ReadVariableOp(Adam/dense_42/bias/m/Read/ReadVariableOp8Adam/lstm_126/lstm_cell_126/kernel/m/Read/ReadVariableOpBAdam/lstm_126/lstm_cell_126/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_126/lstm_cell_126/bias/m/Read/ReadVariableOp8Adam/lstm_127/lstm_cell_127/kernel/m/Read/ReadVariableOpBAdam/lstm_127/lstm_cell_127/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_127/lstm_cell_127/bias/m/Read/ReadVariableOp8Adam/lstm_128/lstm_cell_128/kernel/m/Read/ReadVariableOpBAdam/lstm_128/lstm_cell_128/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_128/lstm_cell_128/bias/m/Read/ReadVariableOp*Adam/dense_42/kernel/v/Read/ReadVariableOp(Adam/dense_42/bias/v/Read/ReadVariableOp8Adam/lstm_126/lstm_cell_126/kernel/v/Read/ReadVariableOpBAdam/lstm_126/lstm_cell_126/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_126/lstm_cell_126/bias/v/Read/ReadVariableOp8Adam/lstm_127/lstm_cell_127/kernel/v/Read/ReadVariableOpBAdam/lstm_127/lstm_cell_127/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_127/lstm_cell_127/bias/v/Read/ReadVariableOp8Adam/lstm_128/lstm_cell_128/kernel/v/Read/ReadVariableOpBAdam/lstm_128/lstm_cell_128/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_128/lstm_cell_128/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2140770
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_42/kerneldense_42/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_126/lstm_cell_126/kernel'lstm_126/lstm_cell_126/recurrent_kernellstm_126/lstm_cell_126/biaslstm_127/lstm_cell_127/kernel'lstm_127/lstm_cell_127/recurrent_kernellstm_127/lstm_cell_127/biaslstm_128/lstm_cell_128/kernel'lstm_128/lstm_cell_128/recurrent_kernellstm_128/lstm_cell_128/biastotalcountAdam/dense_42/kernel/mAdam/dense_42/bias/m$Adam/lstm_126/lstm_cell_126/kernel/m.Adam/lstm_126/lstm_cell_126/recurrent_kernel/m"Adam/lstm_126/lstm_cell_126/bias/m$Adam/lstm_127/lstm_cell_127/kernel/m.Adam/lstm_127/lstm_cell_127/recurrent_kernel/m"Adam/lstm_127/lstm_cell_127/bias/m$Adam/lstm_128/lstm_cell_128/kernel/m.Adam/lstm_128/lstm_cell_128/recurrent_kernel/m"Adam/lstm_128/lstm_cell_128/bias/mAdam/dense_42/kernel/vAdam/dense_42/bias/v$Adam/lstm_126/lstm_cell_126/kernel/v.Adam/lstm_126/lstm_cell_126/recurrent_kernel/v"Adam/lstm_126/lstm_cell_126/bias/v$Adam/lstm_127/lstm_cell_127/kernel/v.Adam/lstm_127/lstm_cell_127/recurrent_kernel/v"Adam/lstm_127/lstm_cell_127/bias/v$Adam/lstm_128/lstm_cell_128/kernel/v.Adam/lstm_128/lstm_cell_128/recurrent_kernel/v"Adam/lstm_128/lstm_cell_128/bias/v*4
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
#__inference__traced_restore_2140900??+
?C
?

lstm_128_while_body_2137949.
*lstm_128_while_lstm_128_while_loop_counter4
0lstm_128_while_lstm_128_while_maximum_iterations
lstm_128_while_placeholder 
lstm_128_while_placeholder_1 
lstm_128_while_placeholder_2 
lstm_128_while_placeholder_3-
)lstm_128_while_lstm_128_strided_slice_1_0i
elstm_128_while_tensorarrayv2read_tensorlistgetitem_lstm_128_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_128_while_lstm_cell_353_matmul_readvariableop_resource_0:2(Q
?lstm_128_while_lstm_cell_353_matmul_1_readvariableop_resource_0:
(L
>lstm_128_while_lstm_cell_353_biasadd_readvariableop_resource_0:(
lstm_128_while_identity
lstm_128_while_identity_1
lstm_128_while_identity_2
lstm_128_while_identity_3
lstm_128_while_identity_4
lstm_128_while_identity_5+
'lstm_128_while_lstm_128_strided_slice_1g
clstm_128_while_tensorarrayv2read_tensorlistgetitem_lstm_128_tensorarrayunstack_tensorlistfromtensorM
;lstm_128_while_lstm_cell_353_matmul_readvariableop_resource:2(O
=lstm_128_while_lstm_cell_353_matmul_1_readvariableop_resource:
(J
<lstm_128_while_lstm_cell_353_biasadd_readvariableop_resource:(??3lstm_128/while/lstm_cell_353/BiasAdd/ReadVariableOp?2lstm_128/while/lstm_cell_353/MatMul/ReadVariableOp?4lstm_128/while/lstm_cell_353/MatMul_1/ReadVariableOp?
@lstm_128/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_128/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_128_while_tensorarrayv2read_tensorlistgetitem_lstm_128_tensorarrayunstack_tensorlistfromtensor_0lstm_128_while_placeholderIlstm_128/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_128/while/lstm_cell_353/MatMul/ReadVariableOpReadVariableOp=lstm_128_while_lstm_cell_353_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_128/while/lstm_cell_353/MatMulMatMul9lstm_128/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_128/while/lstm_cell_353/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_128/while/lstm_cell_353/MatMul_1/ReadVariableOpReadVariableOp?lstm_128_while_lstm_cell_353_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_128/while/lstm_cell_353/MatMul_1MatMullstm_128_while_placeholder_2<lstm_128/while/lstm_cell_353/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_128/while/lstm_cell_353/addAddV2-lstm_128/while/lstm_cell_353/MatMul:product:0/lstm_128/while/lstm_cell_353/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_128/while/lstm_cell_353/BiasAdd/ReadVariableOpReadVariableOp>lstm_128_while_lstm_cell_353_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_128/while/lstm_cell_353/BiasAddBiasAdd$lstm_128/while/lstm_cell_353/add:z:0;lstm_128/while/lstm_cell_353/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_128/while/lstm_cell_353/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_128/while/lstm_cell_353/splitSplit5lstm_128/while/lstm_cell_353/split/split_dim:output:0-lstm_128/while/lstm_cell_353/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_128/while/lstm_cell_353/SigmoidSigmoid+lstm_128/while/lstm_cell_353/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_128/while/lstm_cell_353/Sigmoid_1Sigmoid+lstm_128/while/lstm_cell_353/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_128/while/lstm_cell_353/mulMul*lstm_128/while/lstm_cell_353/Sigmoid_1:y:0lstm_128_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_128/while/lstm_cell_353/ReluRelu+lstm_128/while/lstm_cell_353/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_128/while/lstm_cell_353/mul_1Mul(lstm_128/while/lstm_cell_353/Sigmoid:y:0/lstm_128/while/lstm_cell_353/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_128/while/lstm_cell_353/add_1AddV2$lstm_128/while/lstm_cell_353/mul:z:0&lstm_128/while/lstm_cell_353/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_128/while/lstm_cell_353/Sigmoid_2Sigmoid+lstm_128/while/lstm_cell_353/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_128/while/lstm_cell_353/Relu_1Relu&lstm_128/while/lstm_cell_353/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_128/while/lstm_cell_353/mul_2Mul*lstm_128/while/lstm_cell_353/Sigmoid_2:y:01lstm_128/while/lstm_cell_353/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_128/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_128_while_placeholder_1lstm_128_while_placeholder&lstm_128/while/lstm_cell_353/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_128/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_128/while/addAddV2lstm_128_while_placeholderlstm_128/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_128/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_128/while/add_1AddV2*lstm_128_while_lstm_128_while_loop_counterlstm_128/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_128/while/IdentityIdentitylstm_128/while/add_1:z:0^lstm_128/while/NoOp*
T0*
_output_shapes
: ?
lstm_128/while/Identity_1Identity0lstm_128_while_lstm_128_while_maximum_iterations^lstm_128/while/NoOp*
T0*
_output_shapes
: t
lstm_128/while/Identity_2Identitylstm_128/while/add:z:0^lstm_128/while/NoOp*
T0*
_output_shapes
: ?
lstm_128/while/Identity_3IdentityClstm_128/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_128/while/NoOp*
T0*
_output_shapes
: ?
lstm_128/while/Identity_4Identity&lstm_128/while/lstm_cell_353/mul_2:z:0^lstm_128/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_128/while/Identity_5Identity&lstm_128/while/lstm_cell_353/add_1:z:0^lstm_128/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_128/while/NoOpNoOp4^lstm_128/while/lstm_cell_353/BiasAdd/ReadVariableOp3^lstm_128/while/lstm_cell_353/MatMul/ReadVariableOp5^lstm_128/while/lstm_cell_353/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_128_while_identity lstm_128/while/Identity:output:0"?
lstm_128_while_identity_1"lstm_128/while/Identity_1:output:0"?
lstm_128_while_identity_2"lstm_128/while/Identity_2:output:0"?
lstm_128_while_identity_3"lstm_128/while/Identity_3:output:0"?
lstm_128_while_identity_4"lstm_128/while/Identity_4:output:0"?
lstm_128_while_identity_5"lstm_128/while/Identity_5:output:0"T
'lstm_128_while_lstm_128_strided_slice_1)lstm_128_while_lstm_128_strided_slice_1_0"~
<lstm_128_while_lstm_cell_353_biasadd_readvariableop_resource>lstm_128_while_lstm_cell_353_biasadd_readvariableop_resource_0"?
=lstm_128_while_lstm_cell_353_matmul_1_readvariableop_resource?lstm_128_while_lstm_cell_353_matmul_1_readvariableop_resource_0"|
;lstm_128_while_lstm_cell_353_matmul_readvariableop_resource=lstm_128_while_lstm_cell_353_matmul_readvariableop_resource_0"?
clstm_128_while_tensorarrayv2read_tensorlistgetitem_lstm_128_tensorarrayunstack_tensorlistfromtensorelstm_128_while_tensorarrayv2read_tensorlistgetitem_lstm_128_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_128/while/lstm_cell_353/BiasAdd/ReadVariableOp3lstm_128/while/lstm_cell_353/BiasAdd/ReadVariableOp2h
2lstm_128/while/lstm_cell_353/MatMul/ReadVariableOp2lstm_128/while/lstm_cell_353/MatMul/ReadVariableOp2l
4lstm_128/while/lstm_cell_353/MatMul_1/ReadVariableOp4lstm_128/while/lstm_cell_353/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2138997
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2138997___redundant_placeholder05
1while_while_cond_2138997___redundant_placeholder15
1while_while_cond_2138997___redundant_placeholder25
1while_while_cond_2138997___redundant_placeholder3
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
?S
?
)sequential_42_lstm_128_while_body_2135208J
Fsequential_42_lstm_128_while_sequential_42_lstm_128_while_loop_counterP
Lsequential_42_lstm_128_while_sequential_42_lstm_128_while_maximum_iterations,
(sequential_42_lstm_128_while_placeholder.
*sequential_42_lstm_128_while_placeholder_1.
*sequential_42_lstm_128_while_placeholder_2.
*sequential_42_lstm_128_while_placeholder_3I
Esequential_42_lstm_128_while_sequential_42_lstm_128_strided_slice_1_0?
?sequential_42_lstm_128_while_tensorarrayv2read_tensorlistgetitem_sequential_42_lstm_128_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_42_lstm_128_while_lstm_cell_353_matmul_readvariableop_resource_0:2(_
Msequential_42_lstm_128_while_lstm_cell_353_matmul_1_readvariableop_resource_0:
(Z
Lsequential_42_lstm_128_while_lstm_cell_353_biasadd_readvariableop_resource_0:()
%sequential_42_lstm_128_while_identity+
'sequential_42_lstm_128_while_identity_1+
'sequential_42_lstm_128_while_identity_2+
'sequential_42_lstm_128_while_identity_3+
'sequential_42_lstm_128_while_identity_4+
'sequential_42_lstm_128_while_identity_5G
Csequential_42_lstm_128_while_sequential_42_lstm_128_strided_slice_1?
sequential_42_lstm_128_while_tensorarrayv2read_tensorlistgetitem_sequential_42_lstm_128_tensorarrayunstack_tensorlistfromtensor[
Isequential_42_lstm_128_while_lstm_cell_353_matmul_readvariableop_resource:2(]
Ksequential_42_lstm_128_while_lstm_cell_353_matmul_1_readvariableop_resource:
(X
Jsequential_42_lstm_128_while_lstm_cell_353_biasadd_readvariableop_resource:(??Asequential_42/lstm_128/while/lstm_cell_353/BiasAdd/ReadVariableOp?@sequential_42/lstm_128/while/lstm_cell_353/MatMul/ReadVariableOp?Bsequential_42/lstm_128/while/lstm_cell_353/MatMul_1/ReadVariableOp?
Nsequential_42/lstm_128/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_42/lstm_128/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_42_lstm_128_while_tensorarrayv2read_tensorlistgetitem_sequential_42_lstm_128_tensorarrayunstack_tensorlistfromtensor_0(sequential_42_lstm_128_while_placeholderWsequential_42/lstm_128/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_42/lstm_128/while/lstm_cell_353/MatMul/ReadVariableOpReadVariableOpKsequential_42_lstm_128_while_lstm_cell_353_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_42/lstm_128/while/lstm_cell_353/MatMulMatMulGsequential_42/lstm_128/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_42/lstm_128/while/lstm_cell_353/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_42/lstm_128/while/lstm_cell_353/MatMul_1/ReadVariableOpReadVariableOpMsequential_42_lstm_128_while_lstm_cell_353_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_42/lstm_128/while/lstm_cell_353/MatMul_1MatMul*sequential_42_lstm_128_while_placeholder_2Jsequential_42/lstm_128/while/lstm_cell_353/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_42/lstm_128/while/lstm_cell_353/addAddV2;sequential_42/lstm_128/while/lstm_cell_353/MatMul:product:0=sequential_42/lstm_128/while/lstm_cell_353/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_42/lstm_128/while/lstm_cell_353/BiasAdd/ReadVariableOpReadVariableOpLsequential_42_lstm_128_while_lstm_cell_353_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_42/lstm_128/while/lstm_cell_353/BiasAddBiasAdd2sequential_42/lstm_128/while/lstm_cell_353/add:z:0Isequential_42/lstm_128/while/lstm_cell_353/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_42/lstm_128/while/lstm_cell_353/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_42/lstm_128/while/lstm_cell_353/splitSplitCsequential_42/lstm_128/while/lstm_cell_353/split/split_dim:output:0;sequential_42/lstm_128/while/lstm_cell_353/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_42/lstm_128/while/lstm_cell_353/SigmoidSigmoid9sequential_42/lstm_128/while/lstm_cell_353/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_42/lstm_128/while/lstm_cell_353/Sigmoid_1Sigmoid9sequential_42/lstm_128/while/lstm_cell_353/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_42/lstm_128/while/lstm_cell_353/mulMul8sequential_42/lstm_128/while/lstm_cell_353/Sigmoid_1:y:0*sequential_42_lstm_128_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_42/lstm_128/while/lstm_cell_353/ReluRelu9sequential_42/lstm_128/while/lstm_cell_353/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_42/lstm_128/while/lstm_cell_353/mul_1Mul6sequential_42/lstm_128/while/lstm_cell_353/Sigmoid:y:0=sequential_42/lstm_128/while/lstm_cell_353/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_42/lstm_128/while/lstm_cell_353/add_1AddV22sequential_42/lstm_128/while/lstm_cell_353/mul:z:04sequential_42/lstm_128/while/lstm_cell_353/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_42/lstm_128/while/lstm_cell_353/Sigmoid_2Sigmoid9sequential_42/lstm_128/while/lstm_cell_353/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_42/lstm_128/while/lstm_cell_353/Relu_1Relu4sequential_42/lstm_128/while/lstm_cell_353/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_42/lstm_128/while/lstm_cell_353/mul_2Mul8sequential_42/lstm_128/while/lstm_cell_353/Sigmoid_2:y:0?sequential_42/lstm_128/while/lstm_cell_353/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_42/lstm_128/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_42_lstm_128_while_placeholder_1(sequential_42_lstm_128_while_placeholder4sequential_42/lstm_128/while/lstm_cell_353/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_42/lstm_128/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_42/lstm_128/while/addAddV2(sequential_42_lstm_128_while_placeholder+sequential_42/lstm_128/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_42/lstm_128/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_42/lstm_128/while/add_1AddV2Fsequential_42_lstm_128_while_sequential_42_lstm_128_while_loop_counter-sequential_42/lstm_128/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_42/lstm_128/while/IdentityIdentity&sequential_42/lstm_128/while/add_1:z:0"^sequential_42/lstm_128/while/NoOp*
T0*
_output_shapes
: ?
'sequential_42/lstm_128/while/Identity_1IdentityLsequential_42_lstm_128_while_sequential_42_lstm_128_while_maximum_iterations"^sequential_42/lstm_128/while/NoOp*
T0*
_output_shapes
: ?
'sequential_42/lstm_128/while/Identity_2Identity$sequential_42/lstm_128/while/add:z:0"^sequential_42/lstm_128/while/NoOp*
T0*
_output_shapes
: ?
'sequential_42/lstm_128/while/Identity_3IdentityQsequential_42/lstm_128/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_42/lstm_128/while/NoOp*
T0*
_output_shapes
: ?
'sequential_42/lstm_128/while/Identity_4Identity4sequential_42/lstm_128/while/lstm_cell_353/mul_2:z:0"^sequential_42/lstm_128/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_42/lstm_128/while/Identity_5Identity4sequential_42/lstm_128/while/lstm_cell_353/add_1:z:0"^sequential_42/lstm_128/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_42/lstm_128/while/NoOpNoOpB^sequential_42/lstm_128/while/lstm_cell_353/BiasAdd/ReadVariableOpA^sequential_42/lstm_128/while/lstm_cell_353/MatMul/ReadVariableOpC^sequential_42/lstm_128/while/lstm_cell_353/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_42_lstm_128_while_identity.sequential_42/lstm_128/while/Identity:output:0"[
'sequential_42_lstm_128_while_identity_10sequential_42/lstm_128/while/Identity_1:output:0"[
'sequential_42_lstm_128_while_identity_20sequential_42/lstm_128/while/Identity_2:output:0"[
'sequential_42_lstm_128_while_identity_30sequential_42/lstm_128/while/Identity_3:output:0"[
'sequential_42_lstm_128_while_identity_40sequential_42/lstm_128/while/Identity_4:output:0"[
'sequential_42_lstm_128_while_identity_50sequential_42/lstm_128/while/Identity_5:output:0"?
Jsequential_42_lstm_128_while_lstm_cell_353_biasadd_readvariableop_resourceLsequential_42_lstm_128_while_lstm_cell_353_biasadd_readvariableop_resource_0"?
Ksequential_42_lstm_128_while_lstm_cell_353_matmul_1_readvariableop_resourceMsequential_42_lstm_128_while_lstm_cell_353_matmul_1_readvariableop_resource_0"?
Isequential_42_lstm_128_while_lstm_cell_353_matmul_readvariableop_resourceKsequential_42_lstm_128_while_lstm_cell_353_matmul_readvariableop_resource_0"?
Csequential_42_lstm_128_while_sequential_42_lstm_128_strided_slice_1Esequential_42_lstm_128_while_sequential_42_lstm_128_strided_slice_1_0"?
sequential_42_lstm_128_while_tensorarrayv2read_tensorlistgetitem_sequential_42_lstm_128_tensorarrayunstack_tensorlistfromtensor?sequential_42_lstm_128_while_tensorarrayv2read_tensorlistgetitem_sequential_42_lstm_128_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_42/lstm_128/while/lstm_cell_353/BiasAdd/ReadVariableOpAsequential_42/lstm_128/while/lstm_cell_353/BiasAdd/ReadVariableOp2?
@sequential_42/lstm_128/while/lstm_cell_353/MatMul/ReadVariableOp@sequential_42/lstm_128/while/lstm_cell_353/MatMul/ReadVariableOp2?
Bsequential_42/lstm_128/while/lstm_cell_353/MatMul_1/ReadVariableOpBsequential_42/lstm_128/while/lstm_cell_353/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_126_while_body_2137671.
*lstm_126_while_lstm_126_while_loop_counter4
0lstm_126_while_lstm_126_while_maximum_iterations
lstm_126_while_placeholder 
lstm_126_while_placeholder_1 
lstm_126_while_placeholder_2 
lstm_126_while_placeholder_3-
)lstm_126_while_lstm_126_strided_slice_1_0i
elstm_126_while_tensorarrayv2read_tensorlistgetitem_lstm_126_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_126_while_lstm_cell_351_matmul_readvariableop_resource_0:	?R
?lstm_126_while_lstm_cell_351_matmul_1_readvariableop_resource_0:	d?M
>lstm_126_while_lstm_cell_351_biasadd_readvariableop_resource_0:	?
lstm_126_while_identity
lstm_126_while_identity_1
lstm_126_while_identity_2
lstm_126_while_identity_3
lstm_126_while_identity_4
lstm_126_while_identity_5+
'lstm_126_while_lstm_126_strided_slice_1g
clstm_126_while_tensorarrayv2read_tensorlistgetitem_lstm_126_tensorarrayunstack_tensorlistfromtensorN
;lstm_126_while_lstm_cell_351_matmul_readvariableop_resource:	?P
=lstm_126_while_lstm_cell_351_matmul_1_readvariableop_resource:	d?K
<lstm_126_while_lstm_cell_351_biasadd_readvariableop_resource:	???3lstm_126/while/lstm_cell_351/BiasAdd/ReadVariableOp?2lstm_126/while/lstm_cell_351/MatMul/ReadVariableOp?4lstm_126/while/lstm_cell_351/MatMul_1/ReadVariableOp?
@lstm_126/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_126/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_126_while_tensorarrayv2read_tensorlistgetitem_lstm_126_tensorarrayunstack_tensorlistfromtensor_0lstm_126_while_placeholderIlstm_126/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_126/while/lstm_cell_351/MatMul/ReadVariableOpReadVariableOp=lstm_126_while_lstm_cell_351_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_126/while/lstm_cell_351/MatMulMatMul9lstm_126/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_126/while/lstm_cell_351/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_126/while/lstm_cell_351/MatMul_1/ReadVariableOpReadVariableOp?lstm_126_while_lstm_cell_351_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_126/while/lstm_cell_351/MatMul_1MatMullstm_126_while_placeholder_2<lstm_126/while/lstm_cell_351/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_126/while/lstm_cell_351/addAddV2-lstm_126/while/lstm_cell_351/MatMul:product:0/lstm_126/while/lstm_cell_351/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_126/while/lstm_cell_351/BiasAdd/ReadVariableOpReadVariableOp>lstm_126_while_lstm_cell_351_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_126/while/lstm_cell_351/BiasAddBiasAdd$lstm_126/while/lstm_cell_351/add:z:0;lstm_126/while/lstm_cell_351/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_126/while/lstm_cell_351/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_126/while/lstm_cell_351/splitSplit5lstm_126/while/lstm_cell_351/split/split_dim:output:0-lstm_126/while/lstm_cell_351/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_126/while/lstm_cell_351/SigmoidSigmoid+lstm_126/while/lstm_cell_351/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_126/while/lstm_cell_351/Sigmoid_1Sigmoid+lstm_126/while/lstm_cell_351/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_126/while/lstm_cell_351/mulMul*lstm_126/while/lstm_cell_351/Sigmoid_1:y:0lstm_126_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_126/while/lstm_cell_351/ReluRelu+lstm_126/while/lstm_cell_351/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_126/while/lstm_cell_351/mul_1Mul(lstm_126/while/lstm_cell_351/Sigmoid:y:0/lstm_126/while/lstm_cell_351/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_126/while/lstm_cell_351/add_1AddV2$lstm_126/while/lstm_cell_351/mul:z:0&lstm_126/while/lstm_cell_351/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_126/while/lstm_cell_351/Sigmoid_2Sigmoid+lstm_126/while/lstm_cell_351/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_126/while/lstm_cell_351/Relu_1Relu&lstm_126/while/lstm_cell_351/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_126/while/lstm_cell_351/mul_2Mul*lstm_126/while/lstm_cell_351/Sigmoid_2:y:01lstm_126/while/lstm_cell_351/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_126/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_126_while_placeholder_1lstm_126_while_placeholder&lstm_126/while/lstm_cell_351/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_126/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_126/while/addAddV2lstm_126_while_placeholderlstm_126/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_126/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_126/while/add_1AddV2*lstm_126_while_lstm_126_while_loop_counterlstm_126/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_126/while/IdentityIdentitylstm_126/while/add_1:z:0^lstm_126/while/NoOp*
T0*
_output_shapes
: ?
lstm_126/while/Identity_1Identity0lstm_126_while_lstm_126_while_maximum_iterations^lstm_126/while/NoOp*
T0*
_output_shapes
: t
lstm_126/while/Identity_2Identitylstm_126/while/add:z:0^lstm_126/while/NoOp*
T0*
_output_shapes
: ?
lstm_126/while/Identity_3IdentityClstm_126/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_126/while/NoOp*
T0*
_output_shapes
: ?
lstm_126/while/Identity_4Identity&lstm_126/while/lstm_cell_351/mul_2:z:0^lstm_126/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_126/while/Identity_5Identity&lstm_126/while/lstm_cell_351/add_1:z:0^lstm_126/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_126/while/NoOpNoOp4^lstm_126/while/lstm_cell_351/BiasAdd/ReadVariableOp3^lstm_126/while/lstm_cell_351/MatMul/ReadVariableOp5^lstm_126/while/lstm_cell_351/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_126_while_identity lstm_126/while/Identity:output:0"?
lstm_126_while_identity_1"lstm_126/while/Identity_1:output:0"?
lstm_126_while_identity_2"lstm_126/while/Identity_2:output:0"?
lstm_126_while_identity_3"lstm_126/while/Identity_3:output:0"?
lstm_126_while_identity_4"lstm_126/while/Identity_4:output:0"?
lstm_126_while_identity_5"lstm_126/while/Identity_5:output:0"T
'lstm_126_while_lstm_126_strided_slice_1)lstm_126_while_lstm_126_strided_slice_1_0"~
<lstm_126_while_lstm_cell_351_biasadd_readvariableop_resource>lstm_126_while_lstm_cell_351_biasadd_readvariableop_resource_0"?
=lstm_126_while_lstm_cell_351_matmul_1_readvariableop_resource?lstm_126_while_lstm_cell_351_matmul_1_readvariableop_resource_0"|
;lstm_126_while_lstm_cell_351_matmul_readvariableop_resource=lstm_126_while_lstm_cell_351_matmul_readvariableop_resource_0"?
clstm_126_while_tensorarrayv2read_tensorlistgetitem_lstm_126_tensorarrayunstack_tensorlistfromtensorelstm_126_while_tensorarrayv2read_tensorlistgetitem_lstm_126_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_126/while/lstm_cell_351/BiasAdd/ReadVariableOp3lstm_126/while/lstm_cell_351/BiasAdd/ReadVariableOp2h
2lstm_126/while/lstm_cell_351/MatMul/ReadVariableOp2lstm_126/while/lstm_cell_351/MatMul/ReadVariableOp2l
4lstm_126/while/lstm_cell_351/MatMul_1/ReadVariableOp4lstm_126/while/lstm_cell_351/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_127_while_body_2137810.
*lstm_127_while_lstm_127_while_loop_counter4
0lstm_127_while_lstm_127_while_maximum_iterations
lstm_127_while_placeholder 
lstm_127_while_placeholder_1 
lstm_127_while_placeholder_2 
lstm_127_while_placeholder_3-
)lstm_127_while_lstm_127_strided_slice_1_0i
elstm_127_while_tensorarrayv2read_tensorlistgetitem_lstm_127_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_127_while_lstm_cell_352_matmul_readvariableop_resource_0:	d?R
?lstm_127_while_lstm_cell_352_matmul_1_readvariableop_resource_0:	2?M
>lstm_127_while_lstm_cell_352_biasadd_readvariableop_resource_0:	?
lstm_127_while_identity
lstm_127_while_identity_1
lstm_127_while_identity_2
lstm_127_while_identity_3
lstm_127_while_identity_4
lstm_127_while_identity_5+
'lstm_127_while_lstm_127_strided_slice_1g
clstm_127_while_tensorarrayv2read_tensorlistgetitem_lstm_127_tensorarrayunstack_tensorlistfromtensorN
;lstm_127_while_lstm_cell_352_matmul_readvariableop_resource:	d?P
=lstm_127_while_lstm_cell_352_matmul_1_readvariableop_resource:	2?K
<lstm_127_while_lstm_cell_352_biasadd_readvariableop_resource:	???3lstm_127/while/lstm_cell_352/BiasAdd/ReadVariableOp?2lstm_127/while/lstm_cell_352/MatMul/ReadVariableOp?4lstm_127/while/lstm_cell_352/MatMul_1/ReadVariableOp?
@lstm_127/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_127/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_127_while_tensorarrayv2read_tensorlistgetitem_lstm_127_tensorarrayunstack_tensorlistfromtensor_0lstm_127_while_placeholderIlstm_127/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_127/while/lstm_cell_352/MatMul/ReadVariableOpReadVariableOp=lstm_127_while_lstm_cell_352_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_127/while/lstm_cell_352/MatMulMatMul9lstm_127/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_127/while/lstm_cell_352/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_127/while/lstm_cell_352/MatMul_1/ReadVariableOpReadVariableOp?lstm_127_while_lstm_cell_352_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_127/while/lstm_cell_352/MatMul_1MatMullstm_127_while_placeholder_2<lstm_127/while/lstm_cell_352/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_127/while/lstm_cell_352/addAddV2-lstm_127/while/lstm_cell_352/MatMul:product:0/lstm_127/while/lstm_cell_352/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_127/while/lstm_cell_352/BiasAdd/ReadVariableOpReadVariableOp>lstm_127_while_lstm_cell_352_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_127/while/lstm_cell_352/BiasAddBiasAdd$lstm_127/while/lstm_cell_352/add:z:0;lstm_127/while/lstm_cell_352/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_127/while/lstm_cell_352/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_127/while/lstm_cell_352/splitSplit5lstm_127/while/lstm_cell_352/split/split_dim:output:0-lstm_127/while/lstm_cell_352/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_127/while/lstm_cell_352/SigmoidSigmoid+lstm_127/while/lstm_cell_352/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_127/while/lstm_cell_352/Sigmoid_1Sigmoid+lstm_127/while/lstm_cell_352/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_127/while/lstm_cell_352/mulMul*lstm_127/while/lstm_cell_352/Sigmoid_1:y:0lstm_127_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_127/while/lstm_cell_352/ReluRelu+lstm_127/while/lstm_cell_352/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_127/while/lstm_cell_352/mul_1Mul(lstm_127/while/lstm_cell_352/Sigmoid:y:0/lstm_127/while/lstm_cell_352/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_127/while/lstm_cell_352/add_1AddV2$lstm_127/while/lstm_cell_352/mul:z:0&lstm_127/while/lstm_cell_352/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_127/while/lstm_cell_352/Sigmoid_2Sigmoid+lstm_127/while/lstm_cell_352/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_127/while/lstm_cell_352/Relu_1Relu&lstm_127/while/lstm_cell_352/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_127/while/lstm_cell_352/mul_2Mul*lstm_127/while/lstm_cell_352/Sigmoid_2:y:01lstm_127/while/lstm_cell_352/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_127/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_127_while_placeholder_1lstm_127_while_placeholder&lstm_127/while/lstm_cell_352/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_127/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_127/while/addAddV2lstm_127_while_placeholderlstm_127/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_127/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_127/while/add_1AddV2*lstm_127_while_lstm_127_while_loop_counterlstm_127/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_127/while/IdentityIdentitylstm_127/while/add_1:z:0^lstm_127/while/NoOp*
T0*
_output_shapes
: ?
lstm_127/while/Identity_1Identity0lstm_127_while_lstm_127_while_maximum_iterations^lstm_127/while/NoOp*
T0*
_output_shapes
: t
lstm_127/while/Identity_2Identitylstm_127/while/add:z:0^lstm_127/while/NoOp*
T0*
_output_shapes
: ?
lstm_127/while/Identity_3IdentityClstm_127/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_127/while/NoOp*
T0*
_output_shapes
: ?
lstm_127/while/Identity_4Identity&lstm_127/while/lstm_cell_352/mul_2:z:0^lstm_127/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_127/while/Identity_5Identity&lstm_127/while/lstm_cell_352/add_1:z:0^lstm_127/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_127/while/NoOpNoOp4^lstm_127/while/lstm_cell_352/BiasAdd/ReadVariableOp3^lstm_127/while/lstm_cell_352/MatMul/ReadVariableOp5^lstm_127/while/lstm_cell_352/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_127_while_identity lstm_127/while/Identity:output:0"?
lstm_127_while_identity_1"lstm_127/while/Identity_1:output:0"?
lstm_127_while_identity_2"lstm_127/while/Identity_2:output:0"?
lstm_127_while_identity_3"lstm_127/while/Identity_3:output:0"?
lstm_127_while_identity_4"lstm_127/while/Identity_4:output:0"?
lstm_127_while_identity_5"lstm_127/while/Identity_5:output:0"T
'lstm_127_while_lstm_127_strided_slice_1)lstm_127_while_lstm_127_strided_slice_1_0"~
<lstm_127_while_lstm_cell_352_biasadd_readvariableop_resource>lstm_127_while_lstm_cell_352_biasadd_readvariableop_resource_0"?
=lstm_127_while_lstm_cell_352_matmul_1_readvariableop_resource?lstm_127_while_lstm_cell_352_matmul_1_readvariableop_resource_0"|
;lstm_127_while_lstm_cell_352_matmul_readvariableop_resource=lstm_127_while_lstm_cell_352_matmul_readvariableop_resource_0"?
clstm_127_while_tensorarrayv2read_tensorlistgetitem_lstm_127_tensorarrayunstack_tensorlistfromtensorelstm_127_while_tensorarrayv2read_tensorlistgetitem_lstm_127_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_127/while/lstm_cell_352/BiasAdd/ReadVariableOp3lstm_127/while/lstm_cell_352/BiasAdd/ReadVariableOp2h
2lstm_127/while/lstm_cell_352/MatMul/ReadVariableOp2lstm_127/while/lstm_cell_352/MatMul/ReadVariableOp2l
4lstm_127/while/lstm_cell_352/MatMul_1/ReadVariableOp4lstm_127/while/lstm_cell_352/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_126_layer_call_fn_2138510

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
E__inference_lstm_126_layer_call_and_return_conditional_losses_2137343s
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
while_cond_2136412
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2136412___redundant_placeholder05
1while_while_cond_2136412___redundant_placeholder15
1while_while_cond_2136412___redundant_placeholder25
1while_while_cond_2136412___redundant_placeholder3
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
/__inference_lstm_cell_352_layer_call_fn_2140465

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
J__inference_lstm_cell_352_layer_call_and_return_conditional_losses_2135861o
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
?
?
/__inference_lstm_cell_353_layer_call_fn_2140546

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
J__inference_lstm_cell_353_layer_call_and_return_conditional_losses_2136065o
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
?
?
J__inference_lstm_cell_352_layer_call_and_return_conditional_losses_2135861

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
?C
?

lstm_128_while_body_2138376.
*lstm_128_while_lstm_128_while_loop_counter4
0lstm_128_while_lstm_128_while_maximum_iterations
lstm_128_while_placeholder 
lstm_128_while_placeholder_1 
lstm_128_while_placeholder_2 
lstm_128_while_placeholder_3-
)lstm_128_while_lstm_128_strided_slice_1_0i
elstm_128_while_tensorarrayv2read_tensorlistgetitem_lstm_128_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_128_while_lstm_cell_353_matmul_readvariableop_resource_0:2(Q
?lstm_128_while_lstm_cell_353_matmul_1_readvariableop_resource_0:
(L
>lstm_128_while_lstm_cell_353_biasadd_readvariableop_resource_0:(
lstm_128_while_identity
lstm_128_while_identity_1
lstm_128_while_identity_2
lstm_128_while_identity_3
lstm_128_while_identity_4
lstm_128_while_identity_5+
'lstm_128_while_lstm_128_strided_slice_1g
clstm_128_while_tensorarrayv2read_tensorlistgetitem_lstm_128_tensorarrayunstack_tensorlistfromtensorM
;lstm_128_while_lstm_cell_353_matmul_readvariableop_resource:2(O
=lstm_128_while_lstm_cell_353_matmul_1_readvariableop_resource:
(J
<lstm_128_while_lstm_cell_353_biasadd_readvariableop_resource:(??3lstm_128/while/lstm_cell_353/BiasAdd/ReadVariableOp?2lstm_128/while/lstm_cell_353/MatMul/ReadVariableOp?4lstm_128/while/lstm_cell_353/MatMul_1/ReadVariableOp?
@lstm_128/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_128/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_128_while_tensorarrayv2read_tensorlistgetitem_lstm_128_tensorarrayunstack_tensorlistfromtensor_0lstm_128_while_placeholderIlstm_128/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_128/while/lstm_cell_353/MatMul/ReadVariableOpReadVariableOp=lstm_128_while_lstm_cell_353_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_128/while/lstm_cell_353/MatMulMatMul9lstm_128/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_128/while/lstm_cell_353/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_128/while/lstm_cell_353/MatMul_1/ReadVariableOpReadVariableOp?lstm_128_while_lstm_cell_353_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_128/while/lstm_cell_353/MatMul_1MatMullstm_128_while_placeholder_2<lstm_128/while/lstm_cell_353/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_128/while/lstm_cell_353/addAddV2-lstm_128/while/lstm_cell_353/MatMul:product:0/lstm_128/while/lstm_cell_353/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_128/while/lstm_cell_353/BiasAdd/ReadVariableOpReadVariableOp>lstm_128_while_lstm_cell_353_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_128/while/lstm_cell_353/BiasAddBiasAdd$lstm_128/while/lstm_cell_353/add:z:0;lstm_128/while/lstm_cell_353/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_128/while/lstm_cell_353/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_128/while/lstm_cell_353/splitSplit5lstm_128/while/lstm_cell_353/split/split_dim:output:0-lstm_128/while/lstm_cell_353/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_128/while/lstm_cell_353/SigmoidSigmoid+lstm_128/while/lstm_cell_353/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_128/while/lstm_cell_353/Sigmoid_1Sigmoid+lstm_128/while/lstm_cell_353/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_128/while/lstm_cell_353/mulMul*lstm_128/while/lstm_cell_353/Sigmoid_1:y:0lstm_128_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_128/while/lstm_cell_353/ReluRelu+lstm_128/while/lstm_cell_353/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_128/while/lstm_cell_353/mul_1Mul(lstm_128/while/lstm_cell_353/Sigmoid:y:0/lstm_128/while/lstm_cell_353/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_128/while/lstm_cell_353/add_1AddV2$lstm_128/while/lstm_cell_353/mul:z:0&lstm_128/while/lstm_cell_353/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_128/while/lstm_cell_353/Sigmoid_2Sigmoid+lstm_128/while/lstm_cell_353/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_128/while/lstm_cell_353/Relu_1Relu&lstm_128/while/lstm_cell_353/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_128/while/lstm_cell_353/mul_2Mul*lstm_128/while/lstm_cell_353/Sigmoid_2:y:01lstm_128/while/lstm_cell_353/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_128/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_128_while_placeholder_1lstm_128_while_placeholder&lstm_128/while/lstm_cell_353/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_128/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_128/while/addAddV2lstm_128_while_placeholderlstm_128/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_128/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_128/while/add_1AddV2*lstm_128_while_lstm_128_while_loop_counterlstm_128/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_128/while/IdentityIdentitylstm_128/while/add_1:z:0^lstm_128/while/NoOp*
T0*
_output_shapes
: ?
lstm_128/while/Identity_1Identity0lstm_128_while_lstm_128_while_maximum_iterations^lstm_128/while/NoOp*
T0*
_output_shapes
: t
lstm_128/while/Identity_2Identitylstm_128/while/add:z:0^lstm_128/while/NoOp*
T0*
_output_shapes
: ?
lstm_128/while/Identity_3IdentityClstm_128/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_128/while/NoOp*
T0*
_output_shapes
: ?
lstm_128/while/Identity_4Identity&lstm_128/while/lstm_cell_353/mul_2:z:0^lstm_128/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_128/while/Identity_5Identity&lstm_128/while/lstm_cell_353/add_1:z:0^lstm_128/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_128/while/NoOpNoOp4^lstm_128/while/lstm_cell_353/BiasAdd/ReadVariableOp3^lstm_128/while/lstm_cell_353/MatMul/ReadVariableOp5^lstm_128/while/lstm_cell_353/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_128_while_identity lstm_128/while/Identity:output:0"?
lstm_128_while_identity_1"lstm_128/while/Identity_1:output:0"?
lstm_128_while_identity_2"lstm_128/while/Identity_2:output:0"?
lstm_128_while_identity_3"lstm_128/while/Identity_3:output:0"?
lstm_128_while_identity_4"lstm_128/while/Identity_4:output:0"?
lstm_128_while_identity_5"lstm_128/while/Identity_5:output:0"T
'lstm_128_while_lstm_128_strided_slice_1)lstm_128_while_lstm_128_strided_slice_1_0"~
<lstm_128_while_lstm_cell_353_biasadd_readvariableop_resource>lstm_128_while_lstm_cell_353_biasadd_readvariableop_resource_0"?
=lstm_128_while_lstm_cell_353_matmul_1_readvariableop_resource?lstm_128_while_lstm_cell_353_matmul_1_readvariableop_resource_0"|
;lstm_128_while_lstm_cell_353_matmul_readvariableop_resource=lstm_128_while_lstm_cell_353_matmul_readvariableop_resource_0"?
clstm_128_while_tensorarrayv2read_tensorlistgetitem_lstm_128_tensorarrayunstack_tensorlistfromtensorelstm_128_while_tensorarrayv2read_tensorlistgetitem_lstm_128_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_128/while/lstm_cell_353/BiasAdd/ReadVariableOp3lstm_128/while/lstm_cell_353/BiasAdd/ReadVariableOp2h
2lstm_128/while/lstm_cell_353/MatMul/ReadVariableOp2lstm_128/while/lstm_cell_353/MatMul/ReadVariableOp2l
4lstm_128/while/lstm_cell_353/MatMul_1/ReadVariableOp4lstm_128/while/lstm_cell_353/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_126_layer_call_and_return_conditional_losses_2135639

inputs(
lstm_cell_351_2135557:	?(
lstm_cell_351_2135559:	d?$
lstm_cell_351_2135561:	?
identity??%lstm_cell_351/StatefulPartitionedCall?while;
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
%lstm_cell_351/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_351_2135557lstm_cell_351_2135559lstm_cell_351_2135561*
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
J__inference_lstm_cell_351_layer_call_and_return_conditional_losses_2135511n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_351_2135557lstm_cell_351_2135559lstm_cell_351_2135561*
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
while_body_2135570*
condR
while_cond_2135569*K
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
NoOpNoOp&^lstm_cell_351/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_351/StatefulPartitionedCall%lstm_cell_351/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_42_layer_call_and_return_conditional_losses_2136815

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
?8
?
E__inference_lstm_127_layer_call_and_return_conditional_losses_2135989

inputs(
lstm_cell_352_2135907:	d?(
lstm_cell_352_2135909:	2?$
lstm_cell_352_2135911:	?
identity??%lstm_cell_352/StatefulPartitionedCall?while;
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
%lstm_cell_352/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_352_2135907lstm_cell_352_2135909lstm_cell_352_2135911*
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
J__inference_lstm_cell_352_layer_call_and_return_conditional_losses_2135861n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_352_2135907lstm_cell_352_2135909lstm_cell_352_2135911*
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
while_body_2135920*
condR
while_cond_2135919*K
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
NoOpNoOp&^lstm_cell_352/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_352/StatefulPartitionedCall%lstm_cell_352/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_2135569
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2135569___redundant_placeholder05
1while_while_cond_2135569___redundant_placeholder15
1while_while_cond_2135569___redundant_placeholder25
1while_while_cond_2135569___redundant_placeholder3
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
E__inference_dense_42_layer_call_and_return_conditional_losses_2140333

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
?
?
*__inference_lstm_128_layer_call_fn_2139731

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
E__inference_lstm_128_layer_call_and_return_conditional_losses_2136797o
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
?#
?
while_body_2135729
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_352_2135753_0:	d?0
while_lstm_cell_352_2135755_0:	2?,
while_lstm_cell_352_2135757_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_352_2135753:	d?.
while_lstm_cell_352_2135755:	2?*
while_lstm_cell_352_2135757:	???+while/lstm_cell_352/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_352/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_352_2135753_0while_lstm_cell_352_2135755_0while_lstm_cell_352_2135757_0*
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
J__inference_lstm_cell_352_layer_call_and_return_conditional_losses_2135715?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_352/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_352/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_352/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_352/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_352_2135753while_lstm_cell_352_2135753_0"<
while_lstm_cell_352_2135755while_lstm_cell_352_2135755_0"<
while_lstm_cell_352_2135757while_lstm_cell_352_2135757_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_352/StatefulPartitionedCall+while/lstm_cell_352/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_128_layer_call_fn_2139709
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
E__inference_lstm_128_layer_call_and_return_conditional_losses_2136148o
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
?J
?
E__inference_lstm_128_layer_call_and_return_conditional_losses_2140314

inputs>
,lstm_cell_353_matmul_readvariableop_resource:2(@
.lstm_cell_353_matmul_1_readvariableop_resource:
(;
-lstm_cell_353_biasadd_readvariableop_resource:(
identity??$lstm_cell_353/BiasAdd/ReadVariableOp?#lstm_cell_353/MatMul/ReadVariableOp?%lstm_cell_353/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_353/MatMul/ReadVariableOpReadVariableOp,lstm_cell_353_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_353/MatMulMatMulstrided_slice_2:output:0+lstm_cell_353/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_353/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_353_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_353/MatMul_1MatMulzeros:output:0-lstm_cell_353/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_353/addAddV2lstm_cell_353/MatMul:product:0 lstm_cell_353/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_353/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_353_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_353/BiasAddBiasAddlstm_cell_353/add:z:0,lstm_cell_353/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_353/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_353/splitSplit&lstm_cell_353/split/split_dim:output:0lstm_cell_353/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_353/SigmoidSigmoidlstm_cell_353/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_353/Sigmoid_1Sigmoidlstm_cell_353/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_353/mulMullstm_cell_353/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_353/ReluRelulstm_cell_353/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_353/mul_1Mullstm_cell_353/Sigmoid:y:0 lstm_cell_353/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_353/add_1AddV2lstm_cell_353/mul:z:0lstm_cell_353/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_353/Sigmoid_2Sigmoidlstm_cell_353/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_353/Relu_1Relulstm_cell_353/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_353/mul_2Mullstm_cell_353/Sigmoid_2:y:0"lstm_cell_353/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_353_matmul_readvariableop_resource.lstm_cell_353_matmul_1_readvariableop_resource-lstm_cell_353_biasadd_readvariableop_resource*
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
while_body_2140230*
condR
while_cond_2140229*K
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
NoOpNoOp%^lstm_cell_353/BiasAdd/ReadVariableOp$^lstm_cell_353/MatMul/ReadVariableOp&^lstm_cell_353/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_353/BiasAdd/ReadVariableOp$lstm_cell_353/BiasAdd/ReadVariableOp2J
#lstm_cell_353/MatMul/ReadVariableOp#lstm_cell_353/MatMul/ReadVariableOp2N
%lstm_cell_353/MatMul_1/ReadVariableOp%lstm_cell_353/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
??
?
J__inference_sequential_42_layer_call_and_return_conditional_losses_2138466

inputsH
5lstm_126_lstm_cell_351_matmul_readvariableop_resource:	?J
7lstm_126_lstm_cell_351_matmul_1_readvariableop_resource:	d?E
6lstm_126_lstm_cell_351_biasadd_readvariableop_resource:	?H
5lstm_127_lstm_cell_352_matmul_readvariableop_resource:	d?J
7lstm_127_lstm_cell_352_matmul_1_readvariableop_resource:	2?E
6lstm_127_lstm_cell_352_biasadd_readvariableop_resource:	?G
5lstm_128_lstm_cell_353_matmul_readvariableop_resource:2(I
7lstm_128_lstm_cell_353_matmul_1_readvariableop_resource:
(D
6lstm_128_lstm_cell_353_biasadd_readvariableop_resource:(9
'dense_42_matmul_readvariableop_resource:
6
(dense_42_biasadd_readvariableop_resource:
identity??dense_42/BiasAdd/ReadVariableOp?dense_42/MatMul/ReadVariableOp?-lstm_126/lstm_cell_351/BiasAdd/ReadVariableOp?,lstm_126/lstm_cell_351/MatMul/ReadVariableOp?.lstm_126/lstm_cell_351/MatMul_1/ReadVariableOp?lstm_126/while?-lstm_127/lstm_cell_352/BiasAdd/ReadVariableOp?,lstm_127/lstm_cell_352/MatMul/ReadVariableOp?.lstm_127/lstm_cell_352/MatMul_1/ReadVariableOp?lstm_127/while?-lstm_128/lstm_cell_353/BiasAdd/ReadVariableOp?,lstm_128/lstm_cell_353/MatMul/ReadVariableOp?.lstm_128/lstm_cell_353/MatMul_1/ReadVariableOp?lstm_128/whileD
lstm_126/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_126/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_126/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_126/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_126/strided_sliceStridedSlicelstm_126/Shape:output:0%lstm_126/strided_slice/stack:output:0'lstm_126/strided_slice/stack_1:output:0'lstm_126/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_126/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_126/zeros/packedPacklstm_126/strided_slice:output:0 lstm_126/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_126/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_126/zerosFilllstm_126/zeros/packed:output:0lstm_126/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_126/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_126/zeros_1/packedPacklstm_126/strided_slice:output:0"lstm_126/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_126/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_126/zeros_1Fill lstm_126/zeros_1/packed:output:0lstm_126/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_126/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_126/transpose	Transposeinputs lstm_126/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_126/Shape_1Shapelstm_126/transpose:y:0*
T0*
_output_shapes
:h
lstm_126/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_126/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_126/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_126/strided_slice_1StridedSlicelstm_126/Shape_1:output:0'lstm_126/strided_slice_1/stack:output:0)lstm_126/strided_slice_1/stack_1:output:0)lstm_126/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_126/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_126/TensorArrayV2TensorListReserve-lstm_126/TensorArrayV2/element_shape:output:0!lstm_126/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_126/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_126/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_126/transpose:y:0Glstm_126/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_126/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_126/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_126/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_126/strided_slice_2StridedSlicelstm_126/transpose:y:0'lstm_126/strided_slice_2/stack:output:0)lstm_126/strided_slice_2/stack_1:output:0)lstm_126/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_126/lstm_cell_351/MatMul/ReadVariableOpReadVariableOp5lstm_126_lstm_cell_351_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_126/lstm_cell_351/MatMulMatMul!lstm_126/strided_slice_2:output:04lstm_126/lstm_cell_351/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_126/lstm_cell_351/MatMul_1/ReadVariableOpReadVariableOp7lstm_126_lstm_cell_351_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_126/lstm_cell_351/MatMul_1MatMullstm_126/zeros:output:06lstm_126/lstm_cell_351/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_126/lstm_cell_351/addAddV2'lstm_126/lstm_cell_351/MatMul:product:0)lstm_126/lstm_cell_351/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_126/lstm_cell_351/BiasAdd/ReadVariableOpReadVariableOp6lstm_126_lstm_cell_351_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_126/lstm_cell_351/BiasAddBiasAddlstm_126/lstm_cell_351/add:z:05lstm_126/lstm_cell_351/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_126/lstm_cell_351/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_126/lstm_cell_351/splitSplit/lstm_126/lstm_cell_351/split/split_dim:output:0'lstm_126/lstm_cell_351/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_126/lstm_cell_351/SigmoidSigmoid%lstm_126/lstm_cell_351/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_126/lstm_cell_351/Sigmoid_1Sigmoid%lstm_126/lstm_cell_351/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_126/lstm_cell_351/mulMul$lstm_126/lstm_cell_351/Sigmoid_1:y:0lstm_126/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_126/lstm_cell_351/ReluRelu%lstm_126/lstm_cell_351/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_126/lstm_cell_351/mul_1Mul"lstm_126/lstm_cell_351/Sigmoid:y:0)lstm_126/lstm_cell_351/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_126/lstm_cell_351/add_1AddV2lstm_126/lstm_cell_351/mul:z:0 lstm_126/lstm_cell_351/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_126/lstm_cell_351/Sigmoid_2Sigmoid%lstm_126/lstm_cell_351/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_126/lstm_cell_351/Relu_1Relu lstm_126/lstm_cell_351/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_126/lstm_cell_351/mul_2Mul$lstm_126/lstm_cell_351/Sigmoid_2:y:0+lstm_126/lstm_cell_351/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_126/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_126/TensorArrayV2_1TensorListReserve/lstm_126/TensorArrayV2_1/element_shape:output:0!lstm_126/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_126/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_126/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_126/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_126/whileWhile$lstm_126/while/loop_counter:output:0*lstm_126/while/maximum_iterations:output:0lstm_126/time:output:0!lstm_126/TensorArrayV2_1:handle:0lstm_126/zeros:output:0lstm_126/zeros_1:output:0!lstm_126/strided_slice_1:output:0@lstm_126/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_126_lstm_cell_351_matmul_readvariableop_resource7lstm_126_lstm_cell_351_matmul_1_readvariableop_resource6lstm_126_lstm_cell_351_biasadd_readvariableop_resource*
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
lstm_126_while_body_2138098*'
condR
lstm_126_while_cond_2138097*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_126/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_126/TensorArrayV2Stack/TensorListStackTensorListStacklstm_126/while:output:3Blstm_126/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_126/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_126/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_126/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_126/strided_slice_3StridedSlice4lstm_126/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_126/strided_slice_3/stack:output:0)lstm_126/strided_slice_3/stack_1:output:0)lstm_126/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_126/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_126/transpose_1	Transpose4lstm_126/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_126/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_126/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_127/ShapeShapelstm_126/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_127/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_127/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_127/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_127/strided_sliceStridedSlicelstm_127/Shape:output:0%lstm_127/strided_slice/stack:output:0'lstm_127/strided_slice/stack_1:output:0'lstm_127/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_127/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_127/zeros/packedPacklstm_127/strided_slice:output:0 lstm_127/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_127/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_127/zerosFilllstm_127/zeros/packed:output:0lstm_127/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_127/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_127/zeros_1/packedPacklstm_127/strided_slice:output:0"lstm_127/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_127/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_127/zeros_1Fill lstm_127/zeros_1/packed:output:0lstm_127/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_127/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_127/transpose	Transposelstm_126/transpose_1:y:0 lstm_127/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_127/Shape_1Shapelstm_127/transpose:y:0*
T0*
_output_shapes
:h
lstm_127/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_127/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_127/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_127/strided_slice_1StridedSlicelstm_127/Shape_1:output:0'lstm_127/strided_slice_1/stack:output:0)lstm_127/strided_slice_1/stack_1:output:0)lstm_127/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_127/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_127/TensorArrayV2TensorListReserve-lstm_127/TensorArrayV2/element_shape:output:0!lstm_127/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_127/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_127/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_127/transpose:y:0Glstm_127/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_127/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_127/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_127/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_127/strided_slice_2StridedSlicelstm_127/transpose:y:0'lstm_127/strided_slice_2/stack:output:0)lstm_127/strided_slice_2/stack_1:output:0)lstm_127/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_127/lstm_cell_352/MatMul/ReadVariableOpReadVariableOp5lstm_127_lstm_cell_352_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_127/lstm_cell_352/MatMulMatMul!lstm_127/strided_slice_2:output:04lstm_127/lstm_cell_352/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_127/lstm_cell_352/MatMul_1/ReadVariableOpReadVariableOp7lstm_127_lstm_cell_352_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_127/lstm_cell_352/MatMul_1MatMullstm_127/zeros:output:06lstm_127/lstm_cell_352/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_127/lstm_cell_352/addAddV2'lstm_127/lstm_cell_352/MatMul:product:0)lstm_127/lstm_cell_352/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_127/lstm_cell_352/BiasAdd/ReadVariableOpReadVariableOp6lstm_127_lstm_cell_352_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_127/lstm_cell_352/BiasAddBiasAddlstm_127/lstm_cell_352/add:z:05lstm_127/lstm_cell_352/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_127/lstm_cell_352/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_127/lstm_cell_352/splitSplit/lstm_127/lstm_cell_352/split/split_dim:output:0'lstm_127/lstm_cell_352/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_127/lstm_cell_352/SigmoidSigmoid%lstm_127/lstm_cell_352/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_127/lstm_cell_352/Sigmoid_1Sigmoid%lstm_127/lstm_cell_352/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_127/lstm_cell_352/mulMul$lstm_127/lstm_cell_352/Sigmoid_1:y:0lstm_127/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_127/lstm_cell_352/ReluRelu%lstm_127/lstm_cell_352/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_127/lstm_cell_352/mul_1Mul"lstm_127/lstm_cell_352/Sigmoid:y:0)lstm_127/lstm_cell_352/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_127/lstm_cell_352/add_1AddV2lstm_127/lstm_cell_352/mul:z:0 lstm_127/lstm_cell_352/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_127/lstm_cell_352/Sigmoid_2Sigmoid%lstm_127/lstm_cell_352/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_127/lstm_cell_352/Relu_1Relu lstm_127/lstm_cell_352/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_127/lstm_cell_352/mul_2Mul$lstm_127/lstm_cell_352/Sigmoid_2:y:0+lstm_127/lstm_cell_352/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_127/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_127/TensorArrayV2_1TensorListReserve/lstm_127/TensorArrayV2_1/element_shape:output:0!lstm_127/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_127/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_127/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_127/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_127/whileWhile$lstm_127/while/loop_counter:output:0*lstm_127/while/maximum_iterations:output:0lstm_127/time:output:0!lstm_127/TensorArrayV2_1:handle:0lstm_127/zeros:output:0lstm_127/zeros_1:output:0!lstm_127/strided_slice_1:output:0@lstm_127/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_127_lstm_cell_352_matmul_readvariableop_resource7lstm_127_lstm_cell_352_matmul_1_readvariableop_resource6lstm_127_lstm_cell_352_biasadd_readvariableop_resource*
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
lstm_127_while_body_2138237*'
condR
lstm_127_while_cond_2138236*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_127/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_127/TensorArrayV2Stack/TensorListStackTensorListStacklstm_127/while:output:3Blstm_127/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_127/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_127/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_127/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_127/strided_slice_3StridedSlice4lstm_127/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_127/strided_slice_3/stack:output:0)lstm_127/strided_slice_3/stack_1:output:0)lstm_127/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_127/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_127/transpose_1	Transpose4lstm_127/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_127/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_127/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_128/ShapeShapelstm_127/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_128/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_128/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_128/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_128/strided_sliceStridedSlicelstm_128/Shape:output:0%lstm_128/strided_slice/stack:output:0'lstm_128/strided_slice/stack_1:output:0'lstm_128/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_128/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_128/zeros/packedPacklstm_128/strided_slice:output:0 lstm_128/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_128/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_128/zerosFilllstm_128/zeros/packed:output:0lstm_128/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_128/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_128/zeros_1/packedPacklstm_128/strided_slice:output:0"lstm_128/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_128/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_128/zeros_1Fill lstm_128/zeros_1/packed:output:0lstm_128/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_128/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_128/transpose	Transposelstm_127/transpose_1:y:0 lstm_128/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_128/Shape_1Shapelstm_128/transpose:y:0*
T0*
_output_shapes
:h
lstm_128/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_128/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_128/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_128/strided_slice_1StridedSlicelstm_128/Shape_1:output:0'lstm_128/strided_slice_1/stack:output:0)lstm_128/strided_slice_1/stack_1:output:0)lstm_128/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_128/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_128/TensorArrayV2TensorListReserve-lstm_128/TensorArrayV2/element_shape:output:0!lstm_128/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_128/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_128/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_128/transpose:y:0Glstm_128/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_128/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_128/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_128/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_128/strided_slice_2StridedSlicelstm_128/transpose:y:0'lstm_128/strided_slice_2/stack:output:0)lstm_128/strided_slice_2/stack_1:output:0)lstm_128/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_128/lstm_cell_353/MatMul/ReadVariableOpReadVariableOp5lstm_128_lstm_cell_353_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_128/lstm_cell_353/MatMulMatMul!lstm_128/strided_slice_2:output:04lstm_128/lstm_cell_353/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_128/lstm_cell_353/MatMul_1/ReadVariableOpReadVariableOp7lstm_128_lstm_cell_353_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_128/lstm_cell_353/MatMul_1MatMullstm_128/zeros:output:06lstm_128/lstm_cell_353/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_128/lstm_cell_353/addAddV2'lstm_128/lstm_cell_353/MatMul:product:0)lstm_128/lstm_cell_353/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_128/lstm_cell_353/BiasAdd/ReadVariableOpReadVariableOp6lstm_128_lstm_cell_353_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_128/lstm_cell_353/BiasAddBiasAddlstm_128/lstm_cell_353/add:z:05lstm_128/lstm_cell_353/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_128/lstm_cell_353/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_128/lstm_cell_353/splitSplit/lstm_128/lstm_cell_353/split/split_dim:output:0'lstm_128/lstm_cell_353/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_128/lstm_cell_353/SigmoidSigmoid%lstm_128/lstm_cell_353/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_128/lstm_cell_353/Sigmoid_1Sigmoid%lstm_128/lstm_cell_353/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_128/lstm_cell_353/mulMul$lstm_128/lstm_cell_353/Sigmoid_1:y:0lstm_128/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_128/lstm_cell_353/ReluRelu%lstm_128/lstm_cell_353/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_128/lstm_cell_353/mul_1Mul"lstm_128/lstm_cell_353/Sigmoid:y:0)lstm_128/lstm_cell_353/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_128/lstm_cell_353/add_1AddV2lstm_128/lstm_cell_353/mul:z:0 lstm_128/lstm_cell_353/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_128/lstm_cell_353/Sigmoid_2Sigmoid%lstm_128/lstm_cell_353/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_128/lstm_cell_353/Relu_1Relu lstm_128/lstm_cell_353/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_128/lstm_cell_353/mul_2Mul$lstm_128/lstm_cell_353/Sigmoid_2:y:0+lstm_128/lstm_cell_353/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_128/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_128/TensorArrayV2_1TensorListReserve/lstm_128/TensorArrayV2_1/element_shape:output:0!lstm_128/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_128/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_128/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_128/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_128/whileWhile$lstm_128/while/loop_counter:output:0*lstm_128/while/maximum_iterations:output:0lstm_128/time:output:0!lstm_128/TensorArrayV2_1:handle:0lstm_128/zeros:output:0lstm_128/zeros_1:output:0!lstm_128/strided_slice_1:output:0@lstm_128/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_128_lstm_cell_353_matmul_readvariableop_resource7lstm_128_lstm_cell_353_matmul_1_readvariableop_resource6lstm_128_lstm_cell_353_biasadd_readvariableop_resource*
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
lstm_128_while_body_2138376*'
condR
lstm_128_while_cond_2138375*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_128/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_128/TensorArrayV2Stack/TensorListStackTensorListStacklstm_128/while:output:3Blstm_128/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_128/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_128/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_128/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_128/strided_slice_3StridedSlice4lstm_128/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_128/strided_slice_3/stack:output:0)lstm_128/strided_slice_3/stack_1:output:0)lstm_128/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_128/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_128/transpose_1	Transpose4lstm_128/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_128/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_128/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_42/MatMul/ReadVariableOpReadVariableOp'dense_42_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_42/MatMulMatMul!lstm_128/strided_slice_3:output:0&dense_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_42/BiasAdd/ReadVariableOpReadVariableOp(dense_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_42/BiasAddBiasAdddense_42/MatMul:product:0'dense_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_42/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_42/BiasAdd/ReadVariableOp^dense_42/MatMul/ReadVariableOp.^lstm_126/lstm_cell_351/BiasAdd/ReadVariableOp-^lstm_126/lstm_cell_351/MatMul/ReadVariableOp/^lstm_126/lstm_cell_351/MatMul_1/ReadVariableOp^lstm_126/while.^lstm_127/lstm_cell_352/BiasAdd/ReadVariableOp-^lstm_127/lstm_cell_352/MatMul/ReadVariableOp/^lstm_127/lstm_cell_352/MatMul_1/ReadVariableOp^lstm_127/while.^lstm_128/lstm_cell_353/BiasAdd/ReadVariableOp-^lstm_128/lstm_cell_353/MatMul/ReadVariableOp/^lstm_128/lstm_cell_353/MatMul_1/ReadVariableOp^lstm_128/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_42/BiasAdd/ReadVariableOpdense_42/BiasAdd/ReadVariableOp2@
dense_42/MatMul/ReadVariableOpdense_42/MatMul/ReadVariableOp2^
-lstm_126/lstm_cell_351/BiasAdd/ReadVariableOp-lstm_126/lstm_cell_351/BiasAdd/ReadVariableOp2\
,lstm_126/lstm_cell_351/MatMul/ReadVariableOp,lstm_126/lstm_cell_351/MatMul/ReadVariableOp2`
.lstm_126/lstm_cell_351/MatMul_1/ReadVariableOp.lstm_126/lstm_cell_351/MatMul_1/ReadVariableOp2 
lstm_126/whilelstm_126/while2^
-lstm_127/lstm_cell_352/BiasAdd/ReadVariableOp-lstm_127/lstm_cell_352/BiasAdd/ReadVariableOp2\
,lstm_127/lstm_cell_352/MatMul/ReadVariableOp,lstm_127/lstm_cell_352/MatMul/ReadVariableOp2`
.lstm_127/lstm_cell_352/MatMul_1/ReadVariableOp.lstm_127/lstm_cell_352/MatMul_1/ReadVariableOp2 
lstm_127/whilelstm_127/while2^
-lstm_128/lstm_cell_353/BiasAdd/ReadVariableOp-lstm_128/lstm_cell_353/BiasAdd/ReadVariableOp2\
,lstm_128/lstm_cell_353/MatMul/ReadVariableOp,lstm_128/lstm_cell_353/MatMul/ReadVariableOp2`
.lstm_128/lstm_cell_353/MatMul_1/ReadVariableOp.lstm_128/lstm_cell_353/MatMul_1/ReadVariableOp2 
lstm_128/whilelstm_128/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2136413
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_351_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_351_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_351_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_351_matmul_readvariableop_resource:	?G
4while_lstm_cell_351_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_351_biasadd_readvariableop_resource:	???*while/lstm_cell_351/BiasAdd/ReadVariableOp?)while/lstm_cell_351/MatMul/ReadVariableOp?+while/lstm_cell_351/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_351/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_351_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_351/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_351/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_351/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_351_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_351/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_351/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_351/addAddV2$while/lstm_cell_351/MatMul:product:0&while/lstm_cell_351/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_351/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_351_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_351/BiasAddBiasAddwhile/lstm_cell_351/add:z:02while/lstm_cell_351/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_351/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_351/splitSplit,while/lstm_cell_351/split/split_dim:output:0$while/lstm_cell_351/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_351/SigmoidSigmoid"while/lstm_cell_351/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_351/Sigmoid_1Sigmoid"while/lstm_cell_351/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_351/mulMul!while/lstm_cell_351/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_351/ReluRelu"while/lstm_cell_351/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_351/mul_1Mulwhile/lstm_cell_351/Sigmoid:y:0&while/lstm_cell_351/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_351/add_1AddV2while/lstm_cell_351/mul:z:0while/lstm_cell_351/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_351/Sigmoid_2Sigmoid"while/lstm_cell_351/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_351/Relu_1Reluwhile/lstm_cell_351/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_351/mul_2Mul!while/lstm_cell_351/Sigmoid_2:y:0(while/lstm_cell_351/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_351/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_351/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_351/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_351/BiasAdd/ReadVariableOp*^while/lstm_cell_351/MatMul/ReadVariableOp,^while/lstm_cell_351/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_351_biasadd_readvariableop_resource5while_lstm_cell_351_biasadd_readvariableop_resource_0"n
4while_lstm_cell_351_matmul_1_readvariableop_resource6while_lstm_cell_351_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_351_matmul_readvariableop_resource4while_lstm_cell_351_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_351/BiasAdd/ReadVariableOp*while/lstm_cell_351/BiasAdd/ReadVariableOp2V
)while/lstm_cell_351/MatMul/ReadVariableOp)while/lstm_cell_351/MatMul/ReadVariableOp2Z
+while/lstm_cell_351/MatMul_1/ReadVariableOp+while/lstm_cell_351/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_128_layer_call_and_return_conditional_losses_2136339

inputs'
lstm_cell_353_2136257:2('
lstm_cell_353_2136259:
(#
lstm_cell_353_2136261:(
identity??%lstm_cell_353/StatefulPartitionedCall?while;
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
%lstm_cell_353/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_353_2136257lstm_cell_353_2136259lstm_cell_353_2136261*
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
J__inference_lstm_cell_353_layer_call_and_return_conditional_losses_2136211n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_353_2136257lstm_cell_353_2136259lstm_cell_353_2136261*
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
while_body_2136270*
condR
while_cond_2136269*K
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
NoOpNoOp&^lstm_cell_353/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_353/StatefulPartitionedCall%lstm_cell_353/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_2139613
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2139613___redundant_placeholder05
1while_while_cond_2139613___redundant_placeholder15
1while_while_cond_2139613___redundant_placeholder25
1while_while_cond_2139613___redundant_placeholder3
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
?C
?

lstm_126_while_body_2138098.
*lstm_126_while_lstm_126_while_loop_counter4
0lstm_126_while_lstm_126_while_maximum_iterations
lstm_126_while_placeholder 
lstm_126_while_placeholder_1 
lstm_126_while_placeholder_2 
lstm_126_while_placeholder_3-
)lstm_126_while_lstm_126_strided_slice_1_0i
elstm_126_while_tensorarrayv2read_tensorlistgetitem_lstm_126_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_126_while_lstm_cell_351_matmul_readvariableop_resource_0:	?R
?lstm_126_while_lstm_cell_351_matmul_1_readvariableop_resource_0:	d?M
>lstm_126_while_lstm_cell_351_biasadd_readvariableop_resource_0:	?
lstm_126_while_identity
lstm_126_while_identity_1
lstm_126_while_identity_2
lstm_126_while_identity_3
lstm_126_while_identity_4
lstm_126_while_identity_5+
'lstm_126_while_lstm_126_strided_slice_1g
clstm_126_while_tensorarrayv2read_tensorlistgetitem_lstm_126_tensorarrayunstack_tensorlistfromtensorN
;lstm_126_while_lstm_cell_351_matmul_readvariableop_resource:	?P
=lstm_126_while_lstm_cell_351_matmul_1_readvariableop_resource:	d?K
<lstm_126_while_lstm_cell_351_biasadd_readvariableop_resource:	???3lstm_126/while/lstm_cell_351/BiasAdd/ReadVariableOp?2lstm_126/while/lstm_cell_351/MatMul/ReadVariableOp?4lstm_126/while/lstm_cell_351/MatMul_1/ReadVariableOp?
@lstm_126/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_126/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_126_while_tensorarrayv2read_tensorlistgetitem_lstm_126_tensorarrayunstack_tensorlistfromtensor_0lstm_126_while_placeholderIlstm_126/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_126/while/lstm_cell_351/MatMul/ReadVariableOpReadVariableOp=lstm_126_while_lstm_cell_351_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_126/while/lstm_cell_351/MatMulMatMul9lstm_126/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_126/while/lstm_cell_351/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_126/while/lstm_cell_351/MatMul_1/ReadVariableOpReadVariableOp?lstm_126_while_lstm_cell_351_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_126/while/lstm_cell_351/MatMul_1MatMullstm_126_while_placeholder_2<lstm_126/while/lstm_cell_351/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_126/while/lstm_cell_351/addAddV2-lstm_126/while/lstm_cell_351/MatMul:product:0/lstm_126/while/lstm_cell_351/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_126/while/lstm_cell_351/BiasAdd/ReadVariableOpReadVariableOp>lstm_126_while_lstm_cell_351_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_126/while/lstm_cell_351/BiasAddBiasAdd$lstm_126/while/lstm_cell_351/add:z:0;lstm_126/while/lstm_cell_351/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_126/while/lstm_cell_351/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_126/while/lstm_cell_351/splitSplit5lstm_126/while/lstm_cell_351/split/split_dim:output:0-lstm_126/while/lstm_cell_351/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_126/while/lstm_cell_351/SigmoidSigmoid+lstm_126/while/lstm_cell_351/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_126/while/lstm_cell_351/Sigmoid_1Sigmoid+lstm_126/while/lstm_cell_351/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_126/while/lstm_cell_351/mulMul*lstm_126/while/lstm_cell_351/Sigmoid_1:y:0lstm_126_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_126/while/lstm_cell_351/ReluRelu+lstm_126/while/lstm_cell_351/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_126/while/lstm_cell_351/mul_1Mul(lstm_126/while/lstm_cell_351/Sigmoid:y:0/lstm_126/while/lstm_cell_351/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_126/while/lstm_cell_351/add_1AddV2$lstm_126/while/lstm_cell_351/mul:z:0&lstm_126/while/lstm_cell_351/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_126/while/lstm_cell_351/Sigmoid_2Sigmoid+lstm_126/while/lstm_cell_351/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_126/while/lstm_cell_351/Relu_1Relu&lstm_126/while/lstm_cell_351/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_126/while/lstm_cell_351/mul_2Mul*lstm_126/while/lstm_cell_351/Sigmoid_2:y:01lstm_126/while/lstm_cell_351/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_126/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_126_while_placeholder_1lstm_126_while_placeholder&lstm_126/while/lstm_cell_351/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_126/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_126/while/addAddV2lstm_126_while_placeholderlstm_126/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_126/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_126/while/add_1AddV2*lstm_126_while_lstm_126_while_loop_counterlstm_126/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_126/while/IdentityIdentitylstm_126/while/add_1:z:0^lstm_126/while/NoOp*
T0*
_output_shapes
: ?
lstm_126/while/Identity_1Identity0lstm_126_while_lstm_126_while_maximum_iterations^lstm_126/while/NoOp*
T0*
_output_shapes
: t
lstm_126/while/Identity_2Identitylstm_126/while/add:z:0^lstm_126/while/NoOp*
T0*
_output_shapes
: ?
lstm_126/while/Identity_3IdentityClstm_126/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_126/while/NoOp*
T0*
_output_shapes
: ?
lstm_126/while/Identity_4Identity&lstm_126/while/lstm_cell_351/mul_2:z:0^lstm_126/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_126/while/Identity_5Identity&lstm_126/while/lstm_cell_351/add_1:z:0^lstm_126/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_126/while/NoOpNoOp4^lstm_126/while/lstm_cell_351/BiasAdd/ReadVariableOp3^lstm_126/while/lstm_cell_351/MatMul/ReadVariableOp5^lstm_126/while/lstm_cell_351/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_126_while_identity lstm_126/while/Identity:output:0"?
lstm_126_while_identity_1"lstm_126/while/Identity_1:output:0"?
lstm_126_while_identity_2"lstm_126/while/Identity_2:output:0"?
lstm_126_while_identity_3"lstm_126/while/Identity_3:output:0"?
lstm_126_while_identity_4"lstm_126/while/Identity_4:output:0"?
lstm_126_while_identity_5"lstm_126/while/Identity_5:output:0"T
'lstm_126_while_lstm_126_strided_slice_1)lstm_126_while_lstm_126_strided_slice_1_0"~
<lstm_126_while_lstm_cell_351_biasadd_readvariableop_resource>lstm_126_while_lstm_cell_351_biasadd_readvariableop_resource_0"?
=lstm_126_while_lstm_cell_351_matmul_1_readvariableop_resource?lstm_126_while_lstm_cell_351_matmul_1_readvariableop_resource_0"|
;lstm_126_while_lstm_cell_351_matmul_readvariableop_resource=lstm_126_while_lstm_cell_351_matmul_readvariableop_resource_0"?
clstm_126_while_tensorarrayv2read_tensorlistgetitem_lstm_126_tensorarrayunstack_tensorlistfromtensorelstm_126_while_tensorarrayv2read_tensorlistgetitem_lstm_126_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_126/while/lstm_cell_351/BiasAdd/ReadVariableOp3lstm_126/while/lstm_cell_351/BiasAdd/ReadVariableOp2h
2lstm_126/while/lstm_cell_351/MatMul/ReadVariableOp2lstm_126/while/lstm_cell_351/MatMul/ReadVariableOp2l
4lstm_126/while/lstm_cell_351/MatMul_1/ReadVariableOp4lstm_126/while/lstm_cell_351/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2139614
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_352_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_352_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_352_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_352_matmul_readvariableop_resource:	d?G
4while_lstm_cell_352_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_352_biasadd_readvariableop_resource:	???*while/lstm_cell_352/BiasAdd/ReadVariableOp?)while/lstm_cell_352/MatMul/ReadVariableOp?+while/lstm_cell_352/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_352/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_352_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_352/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_352/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_352/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_352_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_352/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_352/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_352/addAddV2$while/lstm_cell_352/MatMul:product:0&while/lstm_cell_352/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_352/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_352_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_352/BiasAddBiasAddwhile/lstm_cell_352/add:z:02while/lstm_cell_352/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_352/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_352/splitSplit,while/lstm_cell_352/split/split_dim:output:0$while/lstm_cell_352/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_352/SigmoidSigmoid"while/lstm_cell_352/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_352/Sigmoid_1Sigmoid"while/lstm_cell_352/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_352/mulMul!while/lstm_cell_352/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_352/ReluRelu"while/lstm_cell_352/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_352/mul_1Mulwhile/lstm_cell_352/Sigmoid:y:0&while/lstm_cell_352/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_352/add_1AddV2while/lstm_cell_352/mul:z:0while/lstm_cell_352/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_352/Sigmoid_2Sigmoid"while/lstm_cell_352/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_352/Relu_1Reluwhile/lstm_cell_352/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_352/mul_2Mul!while/lstm_cell_352/Sigmoid_2:y:0(while/lstm_cell_352/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_352/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_352/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_352/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_352/BiasAdd/ReadVariableOp*^while/lstm_cell_352/MatMul/ReadVariableOp,^while/lstm_cell_352/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_352_biasadd_readvariableop_resource5while_lstm_cell_352_biasadd_readvariableop_resource_0"n
4while_lstm_cell_352_matmul_1_readvariableop_resource6while_lstm_cell_352_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_352_matmul_readvariableop_resource4while_lstm_cell_352_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_352/BiasAdd/ReadVariableOp*while/lstm_cell_352/BiasAdd/ReadVariableOp2V
)while/lstm_cell_352/MatMul/ReadVariableOp)while/lstm_cell_352/MatMul/ReadVariableOp2Z
+while/lstm_cell_352/MatMul_1/ReadVariableOp+while/lstm_cell_352/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2139328
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_352_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_352_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_352_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_352_matmul_readvariableop_resource:	d?G
4while_lstm_cell_352_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_352_biasadd_readvariableop_resource:	???*while/lstm_cell_352/BiasAdd/ReadVariableOp?)while/lstm_cell_352/MatMul/ReadVariableOp?+while/lstm_cell_352/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_352/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_352_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_352/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_352/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_352/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_352_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_352/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_352/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_352/addAddV2$while/lstm_cell_352/MatMul:product:0&while/lstm_cell_352/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_352/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_352_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_352/BiasAddBiasAddwhile/lstm_cell_352/add:z:02while/lstm_cell_352/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_352/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_352/splitSplit,while/lstm_cell_352/split/split_dim:output:0$while/lstm_cell_352/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_352/SigmoidSigmoid"while/lstm_cell_352/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_352/Sigmoid_1Sigmoid"while/lstm_cell_352/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_352/mulMul!while/lstm_cell_352/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_352/ReluRelu"while/lstm_cell_352/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_352/mul_1Mulwhile/lstm_cell_352/Sigmoid:y:0&while/lstm_cell_352/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_352/add_1AddV2while/lstm_cell_352/mul:z:0while/lstm_cell_352/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_352/Sigmoid_2Sigmoid"while/lstm_cell_352/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_352/Relu_1Reluwhile/lstm_cell_352/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_352/mul_2Mul!while/lstm_cell_352/Sigmoid_2:y:0(while/lstm_cell_352/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_352/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_352/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_352/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_352/BiasAdd/ReadVariableOp*^while/lstm_cell_352/MatMul/ReadVariableOp,^while/lstm_cell_352/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_352_biasadd_readvariableop_resource5while_lstm_cell_352_biasadd_readvariableop_resource_0"n
4while_lstm_cell_352_matmul_1_readvariableop_resource6while_lstm_cell_352_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_352_matmul_readvariableop_resource4while_lstm_cell_352_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_352/BiasAdd/ReadVariableOp*while/lstm_cell_352/BiasAdd/ReadVariableOp2V
)while/lstm_cell_352/MatMul/ReadVariableOp)while/lstm_cell_352/MatMul/ReadVariableOp2Z
+while/lstm_cell_352/MatMul_1/ReadVariableOp+while/lstm_cell_352/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_127_layer_call_fn_2139115

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
E__inference_lstm_127_layer_call_and_return_conditional_losses_2136647s
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
?
while_body_2140230
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_353_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_353_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_353_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_353_matmul_readvariableop_resource:2(F
4while_lstm_cell_353_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_353_biasadd_readvariableop_resource:(??*while/lstm_cell_353/BiasAdd/ReadVariableOp?)while/lstm_cell_353/MatMul/ReadVariableOp?+while/lstm_cell_353/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_353/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_353_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_353/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_353/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_353/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_353_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_353/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_353/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_353/addAddV2$while/lstm_cell_353/MatMul:product:0&while/lstm_cell_353/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_353/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_353_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_353/BiasAddBiasAddwhile/lstm_cell_353/add:z:02while/lstm_cell_353/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_353/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_353/splitSplit,while/lstm_cell_353/split/split_dim:output:0$while/lstm_cell_353/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_353/SigmoidSigmoid"while/lstm_cell_353/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_353/Sigmoid_1Sigmoid"while/lstm_cell_353/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_353/mulMul!while/lstm_cell_353/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_353/ReluRelu"while/lstm_cell_353/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_353/mul_1Mulwhile/lstm_cell_353/Sigmoid:y:0&while/lstm_cell_353/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_353/add_1AddV2while/lstm_cell_353/mul:z:0while/lstm_cell_353/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_353/Sigmoid_2Sigmoid"while/lstm_cell_353/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_353/Relu_1Reluwhile/lstm_cell_353/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_353/mul_2Mul!while/lstm_cell_353/Sigmoid_2:y:0(while/lstm_cell_353/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_353/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_353/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_353/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_353/BiasAdd/ReadVariableOp*^while/lstm_cell_353/MatMul/ReadVariableOp,^while/lstm_cell_353/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_353_biasadd_readvariableop_resource5while_lstm_cell_353_biasadd_readvariableop_resource_0"n
4while_lstm_cell_353_matmul_1_readvariableop_resource6while_lstm_cell_353_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_353_matmul_readvariableop_resource4while_lstm_cell_353_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_353/BiasAdd/ReadVariableOp*while/lstm_cell_353/BiasAdd/ReadVariableOp2V
)while/lstm_cell_353/MatMul/ReadVariableOp)while/lstm_cell_353/MatMul/ReadVariableOp2Z
+while/lstm_cell_353/MatMul_1/ReadVariableOp+while/lstm_cell_353/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_353_layer_call_fn_2140563

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
J__inference_lstm_cell_353_layer_call_and_return_conditional_losses_2136211o
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
?
?
J__inference_lstm_cell_351_layer_call_and_return_conditional_losses_2140431

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

?
lstm_128_while_cond_2137948.
*lstm_128_while_lstm_128_while_loop_counter4
0lstm_128_while_lstm_128_while_maximum_iterations
lstm_128_while_placeholder 
lstm_128_while_placeholder_1 
lstm_128_while_placeholder_2 
lstm_128_while_placeholder_30
,lstm_128_while_less_lstm_128_strided_slice_1G
Clstm_128_while_lstm_128_while_cond_2137948___redundant_placeholder0G
Clstm_128_while_lstm_128_while_cond_2137948___redundant_placeholder1G
Clstm_128_while_lstm_128_while_cond_2137948___redundant_placeholder2G
Clstm_128_while_lstm_128_while_cond_2137948___redundant_placeholder3
lstm_128_while_identity
?
lstm_128/while/LessLesslstm_128_while_placeholder,lstm_128_while_less_lstm_128_strided_slice_1*
T0*
_output_shapes
: ]
lstm_128/while/IdentityIdentitylstm_128/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_128_while_identity lstm_128/while/Identity:output:0*(
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
E__inference_lstm_128_layer_call_and_return_conditional_losses_2140028
inputs_0>
,lstm_cell_353_matmul_readvariableop_resource:2(@
.lstm_cell_353_matmul_1_readvariableop_resource:
(;
-lstm_cell_353_biasadd_readvariableop_resource:(
identity??$lstm_cell_353/BiasAdd/ReadVariableOp?#lstm_cell_353/MatMul/ReadVariableOp?%lstm_cell_353/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_353/MatMul/ReadVariableOpReadVariableOp,lstm_cell_353_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_353/MatMulMatMulstrided_slice_2:output:0+lstm_cell_353/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_353/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_353_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_353/MatMul_1MatMulzeros:output:0-lstm_cell_353/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_353/addAddV2lstm_cell_353/MatMul:product:0 lstm_cell_353/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_353/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_353_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_353/BiasAddBiasAddlstm_cell_353/add:z:0,lstm_cell_353/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_353/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_353/splitSplit&lstm_cell_353/split/split_dim:output:0lstm_cell_353/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_353/SigmoidSigmoidlstm_cell_353/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_353/Sigmoid_1Sigmoidlstm_cell_353/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_353/mulMullstm_cell_353/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_353/ReluRelulstm_cell_353/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_353/mul_1Mullstm_cell_353/Sigmoid:y:0 lstm_cell_353/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_353/add_1AddV2lstm_cell_353/mul:z:0lstm_cell_353/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_353/Sigmoid_2Sigmoidlstm_cell_353/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_353/Relu_1Relulstm_cell_353/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_353/mul_2Mullstm_cell_353/Sigmoid_2:y:0"lstm_cell_353/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_353_matmul_readvariableop_resource.lstm_cell_353_matmul_1_readvariableop_resource-lstm_cell_353_biasadd_readvariableop_resource*
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
while_body_2139944*
condR
while_cond_2139943*K
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
NoOpNoOp%^lstm_cell_353/BiasAdd/ReadVariableOp$^lstm_cell_353/MatMul/ReadVariableOp&^lstm_cell_353/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_353/BiasAdd/ReadVariableOp$lstm_cell_353/BiasAdd/ReadVariableOp2J
#lstm_cell_353/MatMul/ReadVariableOp#lstm_cell_353/MatMul/ReadVariableOp2N
%lstm_cell_353/MatMul_1/ReadVariableOp%lstm_cell_353/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_351_layer_call_fn_2140350

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
J__inference_lstm_cell_351_layer_call_and_return_conditional_losses_2135365o
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
?#
?
while_body_2136270
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_353_2136294_0:2(/
while_lstm_cell_353_2136296_0:
(+
while_lstm_cell_353_2136298_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_353_2136294:2(-
while_lstm_cell_353_2136296:
()
while_lstm_cell_353_2136298:(??+while/lstm_cell_353/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_353/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_353_2136294_0while_lstm_cell_353_2136296_0while_lstm_cell_353_2136298_0*
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
J__inference_lstm_cell_353_layer_call_and_return_conditional_losses_2136211?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_353/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_353/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_353/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_353/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_353_2136294while_lstm_cell_353_2136294_0"<
while_lstm_cell_353_2136296while_lstm_cell_353_2136296_0"<
while_lstm_cell_353_2136298while_lstm_cell_353_2136298_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_353/StatefulPartitionedCall+while/lstm_cell_353/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_126_layer_call_and_return_conditional_losses_2138796
inputs_0?
,lstm_cell_351_matmul_readvariableop_resource:	?A
.lstm_cell_351_matmul_1_readvariableop_resource:	d?<
-lstm_cell_351_biasadd_readvariableop_resource:	?
identity??$lstm_cell_351/BiasAdd/ReadVariableOp?#lstm_cell_351/MatMul/ReadVariableOp?%lstm_cell_351/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_351/MatMul/ReadVariableOpReadVariableOp,lstm_cell_351_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_351/MatMulMatMulstrided_slice_2:output:0+lstm_cell_351/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_351/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_351_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_351/MatMul_1MatMulzeros:output:0-lstm_cell_351/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_351/addAddV2lstm_cell_351/MatMul:product:0 lstm_cell_351/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_351/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_351_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_351/BiasAddBiasAddlstm_cell_351/add:z:0,lstm_cell_351/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_351/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_351/splitSplit&lstm_cell_351/split/split_dim:output:0lstm_cell_351/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_351/SigmoidSigmoidlstm_cell_351/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_351/Sigmoid_1Sigmoidlstm_cell_351/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_351/mulMullstm_cell_351/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_351/ReluRelulstm_cell_351/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_351/mul_1Mullstm_cell_351/Sigmoid:y:0 lstm_cell_351/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_351/add_1AddV2lstm_cell_351/mul:z:0lstm_cell_351/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_351/Sigmoid_2Sigmoidlstm_cell_351/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_351/Relu_1Relulstm_cell_351/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_351/mul_2Mullstm_cell_351/Sigmoid_2:y:0"lstm_cell_351/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_351_matmul_readvariableop_resource.lstm_cell_351_matmul_1_readvariableop_resource-lstm_cell_351_biasadd_readvariableop_resource*
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
while_body_2138712*
condR
while_cond_2138711*K
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
NoOpNoOp%^lstm_cell_351/BiasAdd/ReadVariableOp$^lstm_cell_351/MatMul/ReadVariableOp&^lstm_cell_351/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_351/BiasAdd/ReadVariableOp$lstm_cell_351/BiasAdd/ReadVariableOp2J
#lstm_cell_351/MatMul/ReadVariableOp#lstm_cell_351/MatMul/ReadVariableOp2N
%lstm_cell_351/MatMul_1/ReadVariableOp%lstm_cell_351/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_126_layer_call_and_return_conditional_losses_2136497

inputs?
,lstm_cell_351_matmul_readvariableop_resource:	?A
.lstm_cell_351_matmul_1_readvariableop_resource:	d?<
-lstm_cell_351_biasadd_readvariableop_resource:	?
identity??$lstm_cell_351/BiasAdd/ReadVariableOp?#lstm_cell_351/MatMul/ReadVariableOp?%lstm_cell_351/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_351/MatMul/ReadVariableOpReadVariableOp,lstm_cell_351_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_351/MatMulMatMulstrided_slice_2:output:0+lstm_cell_351/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_351/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_351_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_351/MatMul_1MatMulzeros:output:0-lstm_cell_351/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_351/addAddV2lstm_cell_351/MatMul:product:0 lstm_cell_351/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_351/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_351_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_351/BiasAddBiasAddlstm_cell_351/add:z:0,lstm_cell_351/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_351/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_351/splitSplit&lstm_cell_351/split/split_dim:output:0lstm_cell_351/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_351/SigmoidSigmoidlstm_cell_351/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_351/Sigmoid_1Sigmoidlstm_cell_351/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_351/mulMullstm_cell_351/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_351/ReluRelulstm_cell_351/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_351/mul_1Mullstm_cell_351/Sigmoid:y:0 lstm_cell_351/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_351/add_1AddV2lstm_cell_351/mul:z:0lstm_cell_351/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_351/Sigmoid_2Sigmoidlstm_cell_351/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_351/Relu_1Relulstm_cell_351/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_351/mul_2Mullstm_cell_351/Sigmoid_2:y:0"lstm_cell_351/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_351_matmul_readvariableop_resource.lstm_cell_351_matmul_1_readvariableop_resource-lstm_cell_351_biasadd_readvariableop_resource*
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
while_body_2136413*
condR
while_cond_2136412*K
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
NoOpNoOp%^lstm_cell_351/BiasAdd/ReadVariableOp$^lstm_cell_351/MatMul/ReadVariableOp&^lstm_cell_351/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_351/BiasAdd/ReadVariableOp$lstm_cell_351/BiasAdd/ReadVariableOp2J
#lstm_cell_351/MatMul/ReadVariableOp#lstm_cell_351/MatMul/ReadVariableOp2N
%lstm_cell_351/MatMul_1/ReadVariableOp%lstm_cell_351/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_127_layer_call_and_return_conditional_losses_2139412
inputs_0?
,lstm_cell_352_matmul_readvariableop_resource:	d?A
.lstm_cell_352_matmul_1_readvariableop_resource:	2?<
-lstm_cell_352_biasadd_readvariableop_resource:	?
identity??$lstm_cell_352/BiasAdd/ReadVariableOp?#lstm_cell_352/MatMul/ReadVariableOp?%lstm_cell_352/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_352/MatMul/ReadVariableOpReadVariableOp,lstm_cell_352_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_352/MatMulMatMulstrided_slice_2:output:0+lstm_cell_352/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_352/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_352_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_352/MatMul_1MatMulzeros:output:0-lstm_cell_352/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_352/addAddV2lstm_cell_352/MatMul:product:0 lstm_cell_352/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_352/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_352_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_352/BiasAddBiasAddlstm_cell_352/add:z:0,lstm_cell_352/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_352/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_352/splitSplit&lstm_cell_352/split/split_dim:output:0lstm_cell_352/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_352/SigmoidSigmoidlstm_cell_352/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_352/Sigmoid_1Sigmoidlstm_cell_352/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_352/mulMullstm_cell_352/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_352/ReluRelulstm_cell_352/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_352/mul_1Mullstm_cell_352/Sigmoid:y:0 lstm_cell_352/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_352/add_1AddV2lstm_cell_352/mul:z:0lstm_cell_352/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_352/Sigmoid_2Sigmoidlstm_cell_352/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_352/Relu_1Relulstm_cell_352/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_352/mul_2Mullstm_cell_352/Sigmoid_2:y:0"lstm_cell_352/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_352_matmul_readvariableop_resource.lstm_cell_352_matmul_1_readvariableop_resource-lstm_cell_352_biasadd_readvariableop_resource*
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
while_body_2139328*
condR
while_cond_2139327*K
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
NoOpNoOp%^lstm_cell_352/BiasAdd/ReadVariableOp$^lstm_cell_352/MatMul/ReadVariableOp&^lstm_cell_352/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_352/BiasAdd/ReadVariableOp$lstm_cell_352/BiasAdd/ReadVariableOp2J
#lstm_cell_352/MatMul/ReadVariableOp#lstm_cell_352/MatMul/ReadVariableOp2N
%lstm_cell_352/MatMul_1/ReadVariableOp%lstm_cell_352/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_126_layer_call_fn_2138488
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
E__inference_lstm_126_layer_call_and_return_conditional_losses_2135639|
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
?
?
*__inference_lstm_128_layer_call_fn_2139720
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
E__inference_lstm_128_layer_call_and_return_conditional_losses_2136339o
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
*__inference_lstm_127_layer_call_fn_2139104
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
E__inference_lstm_127_layer_call_and_return_conditional_losses_2135989|
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
J__inference_lstm_cell_352_layer_call_and_return_conditional_losses_2140497

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
?
while_cond_2138568
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2138568___redundant_placeholder05
1while_while_cond_2138568___redundant_placeholder15
1while_while_cond_2138568___redundant_placeholder25
1while_while_cond_2138568___redundant_placeholder3
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
while_body_2138569
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_351_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_351_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_351_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_351_matmul_readvariableop_resource:	?G
4while_lstm_cell_351_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_351_biasadd_readvariableop_resource:	???*while/lstm_cell_351/BiasAdd/ReadVariableOp?)while/lstm_cell_351/MatMul/ReadVariableOp?+while/lstm_cell_351/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_351/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_351_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_351/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_351/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_351/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_351_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_351/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_351/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_351/addAddV2$while/lstm_cell_351/MatMul:product:0&while/lstm_cell_351/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_351/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_351_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_351/BiasAddBiasAddwhile/lstm_cell_351/add:z:02while/lstm_cell_351/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_351/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_351/splitSplit,while/lstm_cell_351/split/split_dim:output:0$while/lstm_cell_351/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_351/SigmoidSigmoid"while/lstm_cell_351/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_351/Sigmoid_1Sigmoid"while/lstm_cell_351/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_351/mulMul!while/lstm_cell_351/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_351/ReluRelu"while/lstm_cell_351/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_351/mul_1Mulwhile/lstm_cell_351/Sigmoid:y:0&while/lstm_cell_351/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_351/add_1AddV2while/lstm_cell_351/mul:z:0while/lstm_cell_351/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_351/Sigmoid_2Sigmoid"while/lstm_cell_351/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_351/Relu_1Reluwhile/lstm_cell_351/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_351/mul_2Mul!while/lstm_cell_351/Sigmoid_2:y:0(while/lstm_cell_351/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_351/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_351/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_351/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_351/BiasAdd/ReadVariableOp*^while/lstm_cell_351/MatMul/ReadVariableOp,^while/lstm_cell_351/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_351_biasadd_readvariableop_resource5while_lstm_cell_351_biasadd_readvariableop_resource_0"n
4while_lstm_cell_351_matmul_1_readvariableop_resource6while_lstm_cell_351_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_351_matmul_readvariableop_resource4while_lstm_cell_351_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_351/BiasAdd/ReadVariableOp*while/lstm_cell_351/BiasAdd/ReadVariableOp2V
)while/lstm_cell_351/MatMul/ReadVariableOp)while/lstm_cell_351/MatMul/ReadVariableOp2Z
+while/lstm_cell_351/MatMul_1/ReadVariableOp+while/lstm_cell_351/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2136078
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2136078___redundant_placeholder05
1while_while_cond_2136078___redundant_placeholder15
1while_while_cond_2136078___redundant_placeholder25
1while_while_cond_2136078___redundant_placeholder3
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
while_body_2136929
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_353_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_353_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_353_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_353_matmul_readvariableop_resource:2(F
4while_lstm_cell_353_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_353_biasadd_readvariableop_resource:(??*while/lstm_cell_353/BiasAdd/ReadVariableOp?)while/lstm_cell_353/MatMul/ReadVariableOp?+while/lstm_cell_353/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_353/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_353_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_353/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_353/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_353/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_353_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_353/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_353/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_353/addAddV2$while/lstm_cell_353/MatMul:product:0&while/lstm_cell_353/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_353/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_353_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_353/BiasAddBiasAddwhile/lstm_cell_353/add:z:02while/lstm_cell_353/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_353/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_353/splitSplit,while/lstm_cell_353/split/split_dim:output:0$while/lstm_cell_353/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_353/SigmoidSigmoid"while/lstm_cell_353/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_353/Sigmoid_1Sigmoid"while/lstm_cell_353/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_353/mulMul!while/lstm_cell_353/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_353/ReluRelu"while/lstm_cell_353/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_353/mul_1Mulwhile/lstm_cell_353/Sigmoid:y:0&while/lstm_cell_353/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_353/add_1AddV2while/lstm_cell_353/mul:z:0while/lstm_cell_353/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_353/Sigmoid_2Sigmoid"while/lstm_cell_353/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_353/Relu_1Reluwhile/lstm_cell_353/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_353/mul_2Mul!while/lstm_cell_353/Sigmoid_2:y:0(while/lstm_cell_353/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_353/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_353/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_353/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_353/BiasAdd/ReadVariableOp*^while/lstm_cell_353/MatMul/ReadVariableOp,^while/lstm_cell_353/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_353_biasadd_readvariableop_resource5while_lstm_cell_353_biasadd_readvariableop_resource_0"n
4while_lstm_cell_353_matmul_1_readvariableop_resource6while_lstm_cell_353_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_353_matmul_readvariableop_resource4while_lstm_cell_353_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_353/BiasAdd/ReadVariableOp*while/lstm_cell_353/BiasAdd/ReadVariableOp2V
)while/lstm_cell_353/MatMul/ReadVariableOp)while/lstm_cell_353/MatMul/ReadVariableOp2Z
+while/lstm_cell_353/MatMul_1/ReadVariableOp+while/lstm_cell_353/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2135378
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2135378___redundant_placeholder05
1while_while_cond_2135378___redundant_placeholder15
1while_while_cond_2135378___redundant_placeholder25
1while_while_cond_2135378___redundant_placeholder3
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

?
lstm_128_while_cond_2138375.
*lstm_128_while_lstm_128_while_loop_counter4
0lstm_128_while_lstm_128_while_maximum_iterations
lstm_128_while_placeholder 
lstm_128_while_placeholder_1 
lstm_128_while_placeholder_2 
lstm_128_while_placeholder_30
,lstm_128_while_less_lstm_128_strided_slice_1G
Clstm_128_while_lstm_128_while_cond_2138375___redundant_placeholder0G
Clstm_128_while_lstm_128_while_cond_2138375___redundant_placeholder1G
Clstm_128_while_lstm_128_while_cond_2138375___redundant_placeholder2G
Clstm_128_while_lstm_128_while_cond_2138375___redundant_placeholder3
lstm_128_while_identity
?
lstm_128/while/LessLesslstm_128_while_placeholder,lstm_128_while_less_lstm_128_strided_slice_1*
T0*
_output_shapes
: ]
lstm_128/while/IdentityIdentitylstm_128/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_128_while_identity lstm_128/while/Identity:output:0*(
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
?
?
J__inference_sequential_42_layer_call_and_return_conditional_losses_2137411

inputs#
lstm_126_2137384:	?#
lstm_126_2137386:	d?
lstm_126_2137388:	?#
lstm_127_2137391:	d?#
lstm_127_2137393:	2?
lstm_127_2137395:	?"
lstm_128_2137398:2("
lstm_128_2137400:
(
lstm_128_2137402:("
dense_42_2137405:

dense_42_2137407:
identity?? dense_42/StatefulPartitionedCall? lstm_126/StatefulPartitionedCall? lstm_127/StatefulPartitionedCall? lstm_128/StatefulPartitionedCall?
 lstm_126/StatefulPartitionedCallStatefulPartitionedCallinputslstm_126_2137384lstm_126_2137386lstm_126_2137388*
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
E__inference_lstm_126_layer_call_and_return_conditional_losses_2137343?
 lstm_127/StatefulPartitionedCallStatefulPartitionedCall)lstm_126/StatefulPartitionedCall:output:0lstm_127_2137391lstm_127_2137393lstm_127_2137395*
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
E__inference_lstm_127_layer_call_and_return_conditional_losses_2137178?
 lstm_128/StatefulPartitionedCallStatefulPartitionedCall)lstm_127/StatefulPartitionedCall:output:0lstm_128_2137398lstm_128_2137400lstm_128_2137402*
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
E__inference_lstm_128_layer_call_and_return_conditional_losses_2137013?
 dense_42/StatefulPartitionedCallStatefulPartitionedCall)lstm_128/StatefulPartitionedCall:output:0dense_42_2137405dense_42_2137407*
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
E__inference_dense_42_layer_call_and_return_conditional_losses_2136815x
IdentityIdentity)dense_42/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_42/StatefulPartitionedCall!^lstm_126/StatefulPartitionedCall!^lstm_127/StatefulPartitionedCall!^lstm_128/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 lstm_126/StatefulPartitionedCall lstm_126/StatefulPartitionedCall2D
 lstm_127/StatefulPartitionedCall lstm_127/StatefulPartitionedCall2D
 lstm_128/StatefulPartitionedCall lstm_128/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_127_while_cond_2138236.
*lstm_127_while_lstm_127_while_loop_counter4
0lstm_127_while_lstm_127_while_maximum_iterations
lstm_127_while_placeholder 
lstm_127_while_placeholder_1 
lstm_127_while_placeholder_2 
lstm_127_while_placeholder_30
,lstm_127_while_less_lstm_127_strided_slice_1G
Clstm_127_while_lstm_127_while_cond_2138236___redundant_placeholder0G
Clstm_127_while_lstm_127_while_cond_2138236___redundant_placeholder1G
Clstm_127_while_lstm_127_while_cond_2138236___redundant_placeholder2G
Clstm_127_while_lstm_127_while_cond_2138236___redundant_placeholder3
lstm_127_while_identity
?
lstm_127/while/LessLesslstm_127_while_placeholder,lstm_127_while_less_lstm_127_strided_slice_1*
T0*
_output_shapes
: ]
lstm_127/while/IdentityIdentitylstm_127/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_127_while_identity lstm_127/while/Identity:output:0*(
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
while_body_2138998
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_351_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_351_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_351_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_351_matmul_readvariableop_resource:	?G
4while_lstm_cell_351_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_351_biasadd_readvariableop_resource:	???*while/lstm_cell_351/BiasAdd/ReadVariableOp?)while/lstm_cell_351/MatMul/ReadVariableOp?+while/lstm_cell_351/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_351/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_351_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_351/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_351/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_351/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_351_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_351/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_351/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_351/addAddV2$while/lstm_cell_351/MatMul:product:0&while/lstm_cell_351/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_351/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_351_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_351/BiasAddBiasAddwhile/lstm_cell_351/add:z:02while/lstm_cell_351/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_351/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_351/splitSplit,while/lstm_cell_351/split/split_dim:output:0$while/lstm_cell_351/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_351/SigmoidSigmoid"while/lstm_cell_351/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_351/Sigmoid_1Sigmoid"while/lstm_cell_351/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_351/mulMul!while/lstm_cell_351/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_351/ReluRelu"while/lstm_cell_351/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_351/mul_1Mulwhile/lstm_cell_351/Sigmoid:y:0&while/lstm_cell_351/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_351/add_1AddV2while/lstm_cell_351/mul:z:0while/lstm_cell_351/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_351/Sigmoid_2Sigmoid"while/lstm_cell_351/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_351/Relu_1Reluwhile/lstm_cell_351/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_351/mul_2Mul!while/lstm_cell_351/Sigmoid_2:y:0(while/lstm_cell_351/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_351/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_351/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_351/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_351/BiasAdd/ReadVariableOp*^while/lstm_cell_351/MatMul/ReadVariableOp,^while/lstm_cell_351/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_351_biasadd_readvariableop_resource5while_lstm_cell_351_biasadd_readvariableop_resource_0"n
4while_lstm_cell_351_matmul_1_readvariableop_resource6while_lstm_cell_351_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_351_matmul_readvariableop_resource4while_lstm_cell_351_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_351/BiasAdd/ReadVariableOp*while/lstm_cell_351/BiasAdd/ReadVariableOp2V
)while/lstm_cell_351/MatMul/ReadVariableOp)while/lstm_cell_351/MatMul/ReadVariableOp2Z
+while/lstm_cell_351/MatMul_1/ReadVariableOp+while/lstm_cell_351/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_127_layer_call_and_return_conditional_losses_2135798

inputs(
lstm_cell_352_2135716:	d?(
lstm_cell_352_2135718:	2?$
lstm_cell_352_2135720:	?
identity??%lstm_cell_352/StatefulPartitionedCall?while;
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
%lstm_cell_352/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_352_2135716lstm_cell_352_2135718lstm_cell_352_2135720*
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
J__inference_lstm_cell_352_layer_call_and_return_conditional_losses_2135715n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_352_2135716lstm_cell_352_2135718lstm_cell_352_2135720*
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
while_body_2135729*
condR
while_cond_2135728*K
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
NoOpNoOp&^lstm_cell_352/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_352/StatefulPartitionedCall%lstm_cell_352/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_2138711
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2138711___redundant_placeholder05
1while_while_cond_2138711___redundant_placeholder15
1while_while_cond_2138711___redundant_placeholder25
1while_while_cond_2138711___redundant_placeholder3
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
while_body_2136079
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_353_2136103_0:2(/
while_lstm_cell_353_2136105_0:
(+
while_lstm_cell_353_2136107_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_353_2136103:2(-
while_lstm_cell_353_2136105:
()
while_lstm_cell_353_2136107:(??+while/lstm_cell_353/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_353/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_353_2136103_0while_lstm_cell_353_2136105_0while_lstm_cell_353_2136107_0*
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
J__inference_lstm_cell_353_layer_call_and_return_conditional_losses_2136065?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_353/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_353/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_353/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_353/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_353_2136103while_lstm_cell_353_2136103_0"<
while_lstm_cell_353_2136105while_lstm_cell_353_2136105_0"<
while_lstm_cell_353_2136107while_lstm_cell_353_2136107_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_353/StatefulPartitionedCall+while/lstm_cell_353/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_351_layer_call_fn_2140367

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
J__inference_lstm_cell_351_layer_call_and_return_conditional_losses_2135511o
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
while_body_2137259
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_351_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_351_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_351_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_351_matmul_readvariableop_resource:	?G
4while_lstm_cell_351_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_351_biasadd_readvariableop_resource:	???*while/lstm_cell_351/BiasAdd/ReadVariableOp?)while/lstm_cell_351/MatMul/ReadVariableOp?+while/lstm_cell_351/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_351/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_351_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_351/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_351/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_351/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_351_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_351/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_351/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_351/addAddV2$while/lstm_cell_351/MatMul:product:0&while/lstm_cell_351/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_351/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_351_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_351/BiasAddBiasAddwhile/lstm_cell_351/add:z:02while/lstm_cell_351/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_351/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_351/splitSplit,while/lstm_cell_351/split/split_dim:output:0$while/lstm_cell_351/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_351/SigmoidSigmoid"while/lstm_cell_351/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_351/Sigmoid_1Sigmoid"while/lstm_cell_351/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_351/mulMul!while/lstm_cell_351/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_351/ReluRelu"while/lstm_cell_351/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_351/mul_1Mulwhile/lstm_cell_351/Sigmoid:y:0&while/lstm_cell_351/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_351/add_1AddV2while/lstm_cell_351/mul:z:0while/lstm_cell_351/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_351/Sigmoid_2Sigmoid"while/lstm_cell_351/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_351/Relu_1Reluwhile/lstm_cell_351/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_351/mul_2Mul!while/lstm_cell_351/Sigmoid_2:y:0(while/lstm_cell_351/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_351/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_351/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_351/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_351/BiasAdd/ReadVariableOp*^while/lstm_cell_351/MatMul/ReadVariableOp,^while/lstm_cell_351/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_351_biasadd_readvariableop_resource5while_lstm_cell_351_biasadd_readvariableop_resource_0"n
4while_lstm_cell_351_matmul_1_readvariableop_resource6while_lstm_cell_351_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_351_matmul_readvariableop_resource4while_lstm_cell_351_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_351/BiasAdd/ReadVariableOp*while/lstm_cell_351/BiasAdd/ReadVariableOp2V
)while/lstm_cell_351/MatMul/ReadVariableOp)while/lstm_cell_351/MatMul/ReadVariableOp2Z
+while/lstm_cell_351/MatMul_1/ReadVariableOp+while/lstm_cell_351/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2139327
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2139327___redundant_placeholder05
1while_while_cond_2139327___redundant_placeholder15
1while_while_cond_2139327___redundant_placeholder25
1while_while_cond_2139327___redundant_placeholder3
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
E__inference_lstm_127_layer_call_and_return_conditional_losses_2136647

inputs?
,lstm_cell_352_matmul_readvariableop_resource:	d?A
.lstm_cell_352_matmul_1_readvariableop_resource:	2?<
-lstm_cell_352_biasadd_readvariableop_resource:	?
identity??$lstm_cell_352/BiasAdd/ReadVariableOp?#lstm_cell_352/MatMul/ReadVariableOp?%lstm_cell_352/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_352/MatMul/ReadVariableOpReadVariableOp,lstm_cell_352_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_352/MatMulMatMulstrided_slice_2:output:0+lstm_cell_352/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_352/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_352_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_352/MatMul_1MatMulzeros:output:0-lstm_cell_352/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_352/addAddV2lstm_cell_352/MatMul:product:0 lstm_cell_352/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_352/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_352_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_352/BiasAddBiasAddlstm_cell_352/add:z:0,lstm_cell_352/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_352/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_352/splitSplit&lstm_cell_352/split/split_dim:output:0lstm_cell_352/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_352/SigmoidSigmoidlstm_cell_352/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_352/Sigmoid_1Sigmoidlstm_cell_352/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_352/mulMullstm_cell_352/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_352/ReluRelulstm_cell_352/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_352/mul_1Mullstm_cell_352/Sigmoid:y:0 lstm_cell_352/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_352/add_1AddV2lstm_cell_352/mul:z:0lstm_cell_352/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_352/Sigmoid_2Sigmoidlstm_cell_352/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_352/Relu_1Relulstm_cell_352/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_352/mul_2Mullstm_cell_352/Sigmoid_2:y:0"lstm_cell_352/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_352_matmul_readvariableop_resource.lstm_cell_352_matmul_1_readvariableop_resource-lstm_cell_352_biasadd_readvariableop_resource*
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
while_body_2136563*
condR
while_cond_2136562*K
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
NoOpNoOp%^lstm_cell_352/BiasAdd/ReadVariableOp$^lstm_cell_352/MatMul/ReadVariableOp&^lstm_cell_352/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_352/BiasAdd/ReadVariableOp$lstm_cell_352/BiasAdd/ReadVariableOp2J
#lstm_cell_352/MatMul/ReadVariableOp#lstm_cell_352/MatMul/ReadVariableOp2N
%lstm_cell_352/MatMul_1/ReadVariableOp%lstm_cell_352/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_2136563
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_352_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_352_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_352_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_352_matmul_readvariableop_resource:	d?G
4while_lstm_cell_352_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_352_biasadd_readvariableop_resource:	???*while/lstm_cell_352/BiasAdd/ReadVariableOp?)while/lstm_cell_352/MatMul/ReadVariableOp?+while/lstm_cell_352/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_352/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_352_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_352/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_352/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_352/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_352_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_352/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_352/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_352/addAddV2$while/lstm_cell_352/MatMul:product:0&while/lstm_cell_352/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_352/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_352_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_352/BiasAddBiasAddwhile/lstm_cell_352/add:z:02while/lstm_cell_352/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_352/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_352/splitSplit,while/lstm_cell_352/split/split_dim:output:0$while/lstm_cell_352/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_352/SigmoidSigmoid"while/lstm_cell_352/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_352/Sigmoid_1Sigmoid"while/lstm_cell_352/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_352/mulMul!while/lstm_cell_352/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_352/ReluRelu"while/lstm_cell_352/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_352/mul_1Mulwhile/lstm_cell_352/Sigmoid:y:0&while/lstm_cell_352/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_352/add_1AddV2while/lstm_cell_352/mul:z:0while/lstm_cell_352/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_352/Sigmoid_2Sigmoid"while/lstm_cell_352/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_352/Relu_1Reluwhile/lstm_cell_352/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_352/mul_2Mul!while/lstm_cell_352/Sigmoid_2:y:0(while/lstm_cell_352/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_352/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_352/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_352/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_352/BiasAdd/ReadVariableOp*^while/lstm_cell_352/MatMul/ReadVariableOp,^while/lstm_cell_352/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_352_biasadd_readvariableop_resource5while_lstm_cell_352_biasadd_readvariableop_resource_0"n
4while_lstm_cell_352_matmul_1_readvariableop_resource6while_lstm_cell_352_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_352_matmul_readvariableop_resource4while_lstm_cell_352_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_352/BiasAdd/ReadVariableOp*while/lstm_cell_352/BiasAdd/ReadVariableOp2V
)while/lstm_cell_352/MatMul/ReadVariableOp)while/lstm_cell_352/MatMul/ReadVariableOp2Z
+while/lstm_cell_352/MatMul_1/ReadVariableOp+while/lstm_cell_352/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_128_layer_call_and_return_conditional_losses_2137013

inputs>
,lstm_cell_353_matmul_readvariableop_resource:2(@
.lstm_cell_353_matmul_1_readvariableop_resource:
(;
-lstm_cell_353_biasadd_readvariableop_resource:(
identity??$lstm_cell_353/BiasAdd/ReadVariableOp?#lstm_cell_353/MatMul/ReadVariableOp?%lstm_cell_353/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_353/MatMul/ReadVariableOpReadVariableOp,lstm_cell_353_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_353/MatMulMatMulstrided_slice_2:output:0+lstm_cell_353/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_353/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_353_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_353/MatMul_1MatMulzeros:output:0-lstm_cell_353/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_353/addAddV2lstm_cell_353/MatMul:product:0 lstm_cell_353/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_353/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_353_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_353/BiasAddBiasAddlstm_cell_353/add:z:0,lstm_cell_353/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_353/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_353/splitSplit&lstm_cell_353/split/split_dim:output:0lstm_cell_353/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_353/SigmoidSigmoidlstm_cell_353/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_353/Sigmoid_1Sigmoidlstm_cell_353/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_353/mulMullstm_cell_353/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_353/ReluRelulstm_cell_353/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_353/mul_1Mullstm_cell_353/Sigmoid:y:0 lstm_cell_353/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_353/add_1AddV2lstm_cell_353/mul:z:0lstm_cell_353/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_353/Sigmoid_2Sigmoidlstm_cell_353/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_353/Relu_1Relulstm_cell_353/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_353/mul_2Mullstm_cell_353/Sigmoid_2:y:0"lstm_cell_353/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_353_matmul_readvariableop_resource.lstm_cell_353_matmul_1_readvariableop_resource-lstm_cell_353_biasadd_readvariableop_resource*
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
while_body_2136929*
condR
while_cond_2136928*K
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
NoOpNoOp%^lstm_cell_353/BiasAdd/ReadVariableOp$^lstm_cell_353/MatMul/ReadVariableOp&^lstm_cell_353/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_353/BiasAdd/ReadVariableOp$lstm_cell_353/BiasAdd/ReadVariableOp2J
#lstm_cell_353/MatMul/ReadVariableOp#lstm_cell_353/MatMul/ReadVariableOp2N
%lstm_cell_353/MatMul_1/ReadVariableOp%lstm_cell_353/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_2140770
file_prefix.
*savev2_dense_42_kernel_read_readvariableop,
(savev2_dense_42_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_126_lstm_cell_126_kernel_read_readvariableopF
Bsavev2_lstm_126_lstm_cell_126_recurrent_kernel_read_readvariableop:
6savev2_lstm_126_lstm_cell_126_bias_read_readvariableop<
8savev2_lstm_127_lstm_cell_127_kernel_read_readvariableopF
Bsavev2_lstm_127_lstm_cell_127_recurrent_kernel_read_readvariableop:
6savev2_lstm_127_lstm_cell_127_bias_read_readvariableop<
8savev2_lstm_128_lstm_cell_128_kernel_read_readvariableopF
Bsavev2_lstm_128_lstm_cell_128_recurrent_kernel_read_readvariableop:
6savev2_lstm_128_lstm_cell_128_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_42_kernel_m_read_readvariableop3
/savev2_adam_dense_42_bias_m_read_readvariableopC
?savev2_adam_lstm_126_lstm_cell_126_kernel_m_read_readvariableopM
Isavev2_adam_lstm_126_lstm_cell_126_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_126_lstm_cell_126_bias_m_read_readvariableopC
?savev2_adam_lstm_127_lstm_cell_127_kernel_m_read_readvariableopM
Isavev2_adam_lstm_127_lstm_cell_127_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_127_lstm_cell_127_bias_m_read_readvariableopC
?savev2_adam_lstm_128_lstm_cell_128_kernel_m_read_readvariableopM
Isavev2_adam_lstm_128_lstm_cell_128_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_128_lstm_cell_128_bias_m_read_readvariableop5
1savev2_adam_dense_42_kernel_v_read_readvariableop3
/savev2_adam_dense_42_bias_v_read_readvariableopC
?savev2_adam_lstm_126_lstm_cell_126_kernel_v_read_readvariableopM
Isavev2_adam_lstm_126_lstm_cell_126_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_126_lstm_cell_126_bias_v_read_readvariableopC
?savev2_adam_lstm_127_lstm_cell_127_kernel_v_read_readvariableopM
Isavev2_adam_lstm_127_lstm_cell_127_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_127_lstm_cell_127_bias_v_read_readvariableopC
?savev2_adam_lstm_128_lstm_cell_128_kernel_v_read_readvariableopM
Isavev2_adam_lstm_128_lstm_cell_128_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_128_lstm_cell_128_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_42_kernel_read_readvariableop(savev2_dense_42_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_126_lstm_cell_126_kernel_read_readvariableopBsavev2_lstm_126_lstm_cell_126_recurrent_kernel_read_readvariableop6savev2_lstm_126_lstm_cell_126_bias_read_readvariableop8savev2_lstm_127_lstm_cell_127_kernel_read_readvariableopBsavev2_lstm_127_lstm_cell_127_recurrent_kernel_read_readvariableop6savev2_lstm_127_lstm_cell_127_bias_read_readvariableop8savev2_lstm_128_lstm_cell_128_kernel_read_readvariableopBsavev2_lstm_128_lstm_cell_128_recurrent_kernel_read_readvariableop6savev2_lstm_128_lstm_cell_128_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_42_kernel_m_read_readvariableop/savev2_adam_dense_42_bias_m_read_readvariableop?savev2_adam_lstm_126_lstm_cell_126_kernel_m_read_readvariableopIsavev2_adam_lstm_126_lstm_cell_126_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_126_lstm_cell_126_bias_m_read_readvariableop?savev2_adam_lstm_127_lstm_cell_127_kernel_m_read_readvariableopIsavev2_adam_lstm_127_lstm_cell_127_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_127_lstm_cell_127_bias_m_read_readvariableop?savev2_adam_lstm_128_lstm_cell_128_kernel_m_read_readvariableopIsavev2_adam_lstm_128_lstm_cell_128_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_128_lstm_cell_128_bias_m_read_readvariableop1savev2_adam_dense_42_kernel_v_read_readvariableop/savev2_adam_dense_42_bias_v_read_readvariableop?savev2_adam_lstm_126_lstm_cell_126_kernel_v_read_readvariableopIsavev2_adam_lstm_126_lstm_cell_126_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_126_lstm_cell_126_bias_v_read_readvariableop?savev2_adam_lstm_127_lstm_cell_127_kernel_v_read_readvariableopIsavev2_adam_lstm_127_lstm_cell_127_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_127_lstm_cell_127_bias_v_read_readvariableop?savev2_adam_lstm_128_lstm_cell_128_kernel_v_read_readvariableopIsavev2_adam_lstm_128_lstm_cell_128_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_128_lstm_cell_128_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
J__inference_lstm_cell_353_layer_call_and_return_conditional_losses_2136065

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
*__inference_lstm_127_layer_call_fn_2139093
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
E__inference_lstm_127_layer_call_and_return_conditional_losses_2135798|
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
*__inference_dense_42_layer_call_fn_2140323

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
E__inference_dense_42_layer_call_and_return_conditional_losses_2136815o
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
E__inference_lstm_128_layer_call_and_return_conditional_losses_2140171

inputs>
,lstm_cell_353_matmul_readvariableop_resource:2(@
.lstm_cell_353_matmul_1_readvariableop_resource:
(;
-lstm_cell_353_biasadd_readvariableop_resource:(
identity??$lstm_cell_353/BiasAdd/ReadVariableOp?#lstm_cell_353/MatMul/ReadVariableOp?%lstm_cell_353/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_353/MatMul/ReadVariableOpReadVariableOp,lstm_cell_353_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_353/MatMulMatMulstrided_slice_2:output:0+lstm_cell_353/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_353/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_353_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_353/MatMul_1MatMulzeros:output:0-lstm_cell_353/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_353/addAddV2lstm_cell_353/MatMul:product:0 lstm_cell_353/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_353/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_353_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_353/BiasAddBiasAddlstm_cell_353/add:z:0,lstm_cell_353/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_353/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_353/splitSplit&lstm_cell_353/split/split_dim:output:0lstm_cell_353/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_353/SigmoidSigmoidlstm_cell_353/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_353/Sigmoid_1Sigmoidlstm_cell_353/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_353/mulMullstm_cell_353/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_353/ReluRelulstm_cell_353/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_353/mul_1Mullstm_cell_353/Sigmoid:y:0 lstm_cell_353/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_353/add_1AddV2lstm_cell_353/mul:z:0lstm_cell_353/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_353/Sigmoid_2Sigmoidlstm_cell_353/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_353/Relu_1Relulstm_cell_353/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_353/mul_2Mullstm_cell_353/Sigmoid_2:y:0"lstm_cell_353/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_353_matmul_readvariableop_resource.lstm_cell_353_matmul_1_readvariableop_resource-lstm_cell_353_biasadd_readvariableop_resource*
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
while_body_2140087*
condR
while_cond_2140086*K
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
NoOpNoOp%^lstm_cell_353/BiasAdd/ReadVariableOp$^lstm_cell_353/MatMul/ReadVariableOp&^lstm_cell_353/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_353/BiasAdd/ReadVariableOp$lstm_cell_353/BiasAdd/ReadVariableOp2J
#lstm_cell_353/MatMul/ReadVariableOp#lstm_cell_353/MatMul/ReadVariableOp2N
%lstm_cell_353/MatMul_1/ReadVariableOp%lstm_cell_353/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_2137094
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_352_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_352_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_352_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_352_matmul_readvariableop_resource:	d?G
4while_lstm_cell_352_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_352_biasadd_readvariableop_resource:	???*while/lstm_cell_352/BiasAdd/ReadVariableOp?)while/lstm_cell_352/MatMul/ReadVariableOp?+while/lstm_cell_352/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_352/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_352_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_352/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_352/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_352/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_352_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_352/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_352/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_352/addAddV2$while/lstm_cell_352/MatMul:product:0&while/lstm_cell_352/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_352/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_352_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_352/BiasAddBiasAddwhile/lstm_cell_352/add:z:02while/lstm_cell_352/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_352/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_352/splitSplit,while/lstm_cell_352/split/split_dim:output:0$while/lstm_cell_352/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_352/SigmoidSigmoid"while/lstm_cell_352/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_352/Sigmoid_1Sigmoid"while/lstm_cell_352/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_352/mulMul!while/lstm_cell_352/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_352/ReluRelu"while/lstm_cell_352/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_352/mul_1Mulwhile/lstm_cell_352/Sigmoid:y:0&while/lstm_cell_352/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_352/add_1AddV2while/lstm_cell_352/mul:z:0while/lstm_cell_352/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_352/Sigmoid_2Sigmoid"while/lstm_cell_352/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_352/Relu_1Reluwhile/lstm_cell_352/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_352/mul_2Mul!while/lstm_cell_352/Sigmoid_2:y:0(while/lstm_cell_352/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_352/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_352/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_352/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_352/BiasAdd/ReadVariableOp*^while/lstm_cell_352/MatMul/ReadVariableOp,^while/lstm_cell_352/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_352_biasadd_readvariableop_resource5while_lstm_cell_352_biasadd_readvariableop_resource_0"n
4while_lstm_cell_352_matmul_1_readvariableop_resource6while_lstm_cell_352_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_352_matmul_readvariableop_resource4while_lstm_cell_352_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_352/BiasAdd/ReadVariableOp*while/lstm_cell_352/BiasAdd/ReadVariableOp2V
)while/lstm_cell_352/MatMul/ReadVariableOp)while/lstm_cell_352/MatMul/ReadVariableOp2Z
+while/lstm_cell_352/MatMul_1/ReadVariableOp+while/lstm_cell_352/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2135379
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_351_2135403_0:	?0
while_lstm_cell_351_2135405_0:	d?,
while_lstm_cell_351_2135407_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_351_2135403:	?.
while_lstm_cell_351_2135405:	d?*
while_lstm_cell_351_2135407:	???+while/lstm_cell_351/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_351/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_351_2135403_0while_lstm_cell_351_2135405_0while_lstm_cell_351_2135407_0*
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
J__inference_lstm_cell_351_layer_call_and_return_conditional_losses_2135365?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_351/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_351/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_351/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_351/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_351_2135403while_lstm_cell_351_2135403_0"<
while_lstm_cell_351_2135405while_lstm_cell_351_2135405_0"<
while_lstm_cell_351_2135407while_lstm_cell_351_2135407_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_351/StatefulPartitionedCall+while/lstm_cell_351/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_128_layer_call_and_return_conditional_losses_2136797

inputs>
,lstm_cell_353_matmul_readvariableop_resource:2(@
.lstm_cell_353_matmul_1_readvariableop_resource:
(;
-lstm_cell_353_biasadd_readvariableop_resource:(
identity??$lstm_cell_353/BiasAdd/ReadVariableOp?#lstm_cell_353/MatMul/ReadVariableOp?%lstm_cell_353/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_353/MatMul/ReadVariableOpReadVariableOp,lstm_cell_353_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_353/MatMulMatMulstrided_slice_2:output:0+lstm_cell_353/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_353/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_353_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_353/MatMul_1MatMulzeros:output:0-lstm_cell_353/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_353/addAddV2lstm_cell_353/MatMul:product:0 lstm_cell_353/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_353/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_353_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_353/BiasAddBiasAddlstm_cell_353/add:z:0,lstm_cell_353/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_353/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_353/splitSplit&lstm_cell_353/split/split_dim:output:0lstm_cell_353/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_353/SigmoidSigmoidlstm_cell_353/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_353/Sigmoid_1Sigmoidlstm_cell_353/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_353/mulMullstm_cell_353/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_353/ReluRelulstm_cell_353/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_353/mul_1Mullstm_cell_353/Sigmoid:y:0 lstm_cell_353/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_353/add_1AddV2lstm_cell_353/mul:z:0lstm_cell_353/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_353/Sigmoid_2Sigmoidlstm_cell_353/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_353/Relu_1Relulstm_cell_353/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_353/mul_2Mullstm_cell_353/Sigmoid_2:y:0"lstm_cell_353/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_353_matmul_readvariableop_resource.lstm_cell_353_matmul_1_readvariableop_resource-lstm_cell_353_biasadd_readvariableop_resource*
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
while_body_2136713*
condR
while_cond_2136712*K
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
NoOpNoOp%^lstm_cell_353/BiasAdd/ReadVariableOp$^lstm_cell_353/MatMul/ReadVariableOp&^lstm_cell_353/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_353/BiasAdd/ReadVariableOp$lstm_cell_353/BiasAdd/ReadVariableOp2J
#lstm_cell_353/MatMul/ReadVariableOp#lstm_cell_353/MatMul/ReadVariableOp2N
%lstm_cell_353/MatMul_1/ReadVariableOp%lstm_cell_353/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
??
?
J__inference_sequential_42_layer_call_and_return_conditional_losses_2138039

inputsH
5lstm_126_lstm_cell_351_matmul_readvariableop_resource:	?J
7lstm_126_lstm_cell_351_matmul_1_readvariableop_resource:	d?E
6lstm_126_lstm_cell_351_biasadd_readvariableop_resource:	?H
5lstm_127_lstm_cell_352_matmul_readvariableop_resource:	d?J
7lstm_127_lstm_cell_352_matmul_1_readvariableop_resource:	2?E
6lstm_127_lstm_cell_352_biasadd_readvariableop_resource:	?G
5lstm_128_lstm_cell_353_matmul_readvariableop_resource:2(I
7lstm_128_lstm_cell_353_matmul_1_readvariableop_resource:
(D
6lstm_128_lstm_cell_353_biasadd_readvariableop_resource:(9
'dense_42_matmul_readvariableop_resource:
6
(dense_42_biasadd_readvariableop_resource:
identity??dense_42/BiasAdd/ReadVariableOp?dense_42/MatMul/ReadVariableOp?-lstm_126/lstm_cell_351/BiasAdd/ReadVariableOp?,lstm_126/lstm_cell_351/MatMul/ReadVariableOp?.lstm_126/lstm_cell_351/MatMul_1/ReadVariableOp?lstm_126/while?-lstm_127/lstm_cell_352/BiasAdd/ReadVariableOp?,lstm_127/lstm_cell_352/MatMul/ReadVariableOp?.lstm_127/lstm_cell_352/MatMul_1/ReadVariableOp?lstm_127/while?-lstm_128/lstm_cell_353/BiasAdd/ReadVariableOp?,lstm_128/lstm_cell_353/MatMul/ReadVariableOp?.lstm_128/lstm_cell_353/MatMul_1/ReadVariableOp?lstm_128/whileD
lstm_126/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_126/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_126/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_126/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_126/strided_sliceStridedSlicelstm_126/Shape:output:0%lstm_126/strided_slice/stack:output:0'lstm_126/strided_slice/stack_1:output:0'lstm_126/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_126/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_126/zeros/packedPacklstm_126/strided_slice:output:0 lstm_126/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_126/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_126/zerosFilllstm_126/zeros/packed:output:0lstm_126/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_126/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_126/zeros_1/packedPacklstm_126/strided_slice:output:0"lstm_126/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_126/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_126/zeros_1Fill lstm_126/zeros_1/packed:output:0lstm_126/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_126/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_126/transpose	Transposeinputs lstm_126/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_126/Shape_1Shapelstm_126/transpose:y:0*
T0*
_output_shapes
:h
lstm_126/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_126/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_126/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_126/strided_slice_1StridedSlicelstm_126/Shape_1:output:0'lstm_126/strided_slice_1/stack:output:0)lstm_126/strided_slice_1/stack_1:output:0)lstm_126/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_126/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_126/TensorArrayV2TensorListReserve-lstm_126/TensorArrayV2/element_shape:output:0!lstm_126/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_126/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_126/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_126/transpose:y:0Glstm_126/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_126/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_126/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_126/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_126/strided_slice_2StridedSlicelstm_126/transpose:y:0'lstm_126/strided_slice_2/stack:output:0)lstm_126/strided_slice_2/stack_1:output:0)lstm_126/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_126/lstm_cell_351/MatMul/ReadVariableOpReadVariableOp5lstm_126_lstm_cell_351_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_126/lstm_cell_351/MatMulMatMul!lstm_126/strided_slice_2:output:04lstm_126/lstm_cell_351/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_126/lstm_cell_351/MatMul_1/ReadVariableOpReadVariableOp7lstm_126_lstm_cell_351_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_126/lstm_cell_351/MatMul_1MatMullstm_126/zeros:output:06lstm_126/lstm_cell_351/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_126/lstm_cell_351/addAddV2'lstm_126/lstm_cell_351/MatMul:product:0)lstm_126/lstm_cell_351/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_126/lstm_cell_351/BiasAdd/ReadVariableOpReadVariableOp6lstm_126_lstm_cell_351_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_126/lstm_cell_351/BiasAddBiasAddlstm_126/lstm_cell_351/add:z:05lstm_126/lstm_cell_351/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_126/lstm_cell_351/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_126/lstm_cell_351/splitSplit/lstm_126/lstm_cell_351/split/split_dim:output:0'lstm_126/lstm_cell_351/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_126/lstm_cell_351/SigmoidSigmoid%lstm_126/lstm_cell_351/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_126/lstm_cell_351/Sigmoid_1Sigmoid%lstm_126/lstm_cell_351/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_126/lstm_cell_351/mulMul$lstm_126/lstm_cell_351/Sigmoid_1:y:0lstm_126/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_126/lstm_cell_351/ReluRelu%lstm_126/lstm_cell_351/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_126/lstm_cell_351/mul_1Mul"lstm_126/lstm_cell_351/Sigmoid:y:0)lstm_126/lstm_cell_351/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_126/lstm_cell_351/add_1AddV2lstm_126/lstm_cell_351/mul:z:0 lstm_126/lstm_cell_351/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_126/lstm_cell_351/Sigmoid_2Sigmoid%lstm_126/lstm_cell_351/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_126/lstm_cell_351/Relu_1Relu lstm_126/lstm_cell_351/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_126/lstm_cell_351/mul_2Mul$lstm_126/lstm_cell_351/Sigmoid_2:y:0+lstm_126/lstm_cell_351/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_126/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_126/TensorArrayV2_1TensorListReserve/lstm_126/TensorArrayV2_1/element_shape:output:0!lstm_126/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_126/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_126/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_126/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_126/whileWhile$lstm_126/while/loop_counter:output:0*lstm_126/while/maximum_iterations:output:0lstm_126/time:output:0!lstm_126/TensorArrayV2_1:handle:0lstm_126/zeros:output:0lstm_126/zeros_1:output:0!lstm_126/strided_slice_1:output:0@lstm_126/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_126_lstm_cell_351_matmul_readvariableop_resource7lstm_126_lstm_cell_351_matmul_1_readvariableop_resource6lstm_126_lstm_cell_351_biasadd_readvariableop_resource*
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
lstm_126_while_body_2137671*'
condR
lstm_126_while_cond_2137670*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_126/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_126/TensorArrayV2Stack/TensorListStackTensorListStacklstm_126/while:output:3Blstm_126/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_126/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_126/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_126/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_126/strided_slice_3StridedSlice4lstm_126/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_126/strided_slice_3/stack:output:0)lstm_126/strided_slice_3/stack_1:output:0)lstm_126/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_126/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_126/transpose_1	Transpose4lstm_126/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_126/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_126/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_127/ShapeShapelstm_126/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_127/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_127/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_127/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_127/strided_sliceStridedSlicelstm_127/Shape:output:0%lstm_127/strided_slice/stack:output:0'lstm_127/strided_slice/stack_1:output:0'lstm_127/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_127/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_127/zeros/packedPacklstm_127/strided_slice:output:0 lstm_127/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_127/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_127/zerosFilllstm_127/zeros/packed:output:0lstm_127/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_127/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_127/zeros_1/packedPacklstm_127/strided_slice:output:0"lstm_127/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_127/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_127/zeros_1Fill lstm_127/zeros_1/packed:output:0lstm_127/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_127/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_127/transpose	Transposelstm_126/transpose_1:y:0 lstm_127/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_127/Shape_1Shapelstm_127/transpose:y:0*
T0*
_output_shapes
:h
lstm_127/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_127/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_127/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_127/strided_slice_1StridedSlicelstm_127/Shape_1:output:0'lstm_127/strided_slice_1/stack:output:0)lstm_127/strided_slice_1/stack_1:output:0)lstm_127/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_127/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_127/TensorArrayV2TensorListReserve-lstm_127/TensorArrayV2/element_shape:output:0!lstm_127/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_127/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_127/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_127/transpose:y:0Glstm_127/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_127/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_127/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_127/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_127/strided_slice_2StridedSlicelstm_127/transpose:y:0'lstm_127/strided_slice_2/stack:output:0)lstm_127/strided_slice_2/stack_1:output:0)lstm_127/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_127/lstm_cell_352/MatMul/ReadVariableOpReadVariableOp5lstm_127_lstm_cell_352_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_127/lstm_cell_352/MatMulMatMul!lstm_127/strided_slice_2:output:04lstm_127/lstm_cell_352/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_127/lstm_cell_352/MatMul_1/ReadVariableOpReadVariableOp7lstm_127_lstm_cell_352_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_127/lstm_cell_352/MatMul_1MatMullstm_127/zeros:output:06lstm_127/lstm_cell_352/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_127/lstm_cell_352/addAddV2'lstm_127/lstm_cell_352/MatMul:product:0)lstm_127/lstm_cell_352/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_127/lstm_cell_352/BiasAdd/ReadVariableOpReadVariableOp6lstm_127_lstm_cell_352_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_127/lstm_cell_352/BiasAddBiasAddlstm_127/lstm_cell_352/add:z:05lstm_127/lstm_cell_352/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_127/lstm_cell_352/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_127/lstm_cell_352/splitSplit/lstm_127/lstm_cell_352/split/split_dim:output:0'lstm_127/lstm_cell_352/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_127/lstm_cell_352/SigmoidSigmoid%lstm_127/lstm_cell_352/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_127/lstm_cell_352/Sigmoid_1Sigmoid%lstm_127/lstm_cell_352/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_127/lstm_cell_352/mulMul$lstm_127/lstm_cell_352/Sigmoid_1:y:0lstm_127/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_127/lstm_cell_352/ReluRelu%lstm_127/lstm_cell_352/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_127/lstm_cell_352/mul_1Mul"lstm_127/lstm_cell_352/Sigmoid:y:0)lstm_127/lstm_cell_352/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_127/lstm_cell_352/add_1AddV2lstm_127/lstm_cell_352/mul:z:0 lstm_127/lstm_cell_352/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_127/lstm_cell_352/Sigmoid_2Sigmoid%lstm_127/lstm_cell_352/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_127/lstm_cell_352/Relu_1Relu lstm_127/lstm_cell_352/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_127/lstm_cell_352/mul_2Mul$lstm_127/lstm_cell_352/Sigmoid_2:y:0+lstm_127/lstm_cell_352/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_127/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_127/TensorArrayV2_1TensorListReserve/lstm_127/TensorArrayV2_1/element_shape:output:0!lstm_127/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_127/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_127/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_127/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_127/whileWhile$lstm_127/while/loop_counter:output:0*lstm_127/while/maximum_iterations:output:0lstm_127/time:output:0!lstm_127/TensorArrayV2_1:handle:0lstm_127/zeros:output:0lstm_127/zeros_1:output:0!lstm_127/strided_slice_1:output:0@lstm_127/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_127_lstm_cell_352_matmul_readvariableop_resource7lstm_127_lstm_cell_352_matmul_1_readvariableop_resource6lstm_127_lstm_cell_352_biasadd_readvariableop_resource*
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
lstm_127_while_body_2137810*'
condR
lstm_127_while_cond_2137809*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_127/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_127/TensorArrayV2Stack/TensorListStackTensorListStacklstm_127/while:output:3Blstm_127/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_127/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_127/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_127/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_127/strided_slice_3StridedSlice4lstm_127/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_127/strided_slice_3/stack:output:0)lstm_127/strided_slice_3/stack_1:output:0)lstm_127/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_127/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_127/transpose_1	Transpose4lstm_127/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_127/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_127/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_128/ShapeShapelstm_127/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_128/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_128/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_128/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_128/strided_sliceStridedSlicelstm_128/Shape:output:0%lstm_128/strided_slice/stack:output:0'lstm_128/strided_slice/stack_1:output:0'lstm_128/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_128/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_128/zeros/packedPacklstm_128/strided_slice:output:0 lstm_128/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_128/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_128/zerosFilllstm_128/zeros/packed:output:0lstm_128/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_128/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_128/zeros_1/packedPacklstm_128/strided_slice:output:0"lstm_128/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_128/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_128/zeros_1Fill lstm_128/zeros_1/packed:output:0lstm_128/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_128/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_128/transpose	Transposelstm_127/transpose_1:y:0 lstm_128/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_128/Shape_1Shapelstm_128/transpose:y:0*
T0*
_output_shapes
:h
lstm_128/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_128/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_128/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_128/strided_slice_1StridedSlicelstm_128/Shape_1:output:0'lstm_128/strided_slice_1/stack:output:0)lstm_128/strided_slice_1/stack_1:output:0)lstm_128/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_128/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_128/TensorArrayV2TensorListReserve-lstm_128/TensorArrayV2/element_shape:output:0!lstm_128/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_128/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_128/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_128/transpose:y:0Glstm_128/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_128/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_128/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_128/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_128/strided_slice_2StridedSlicelstm_128/transpose:y:0'lstm_128/strided_slice_2/stack:output:0)lstm_128/strided_slice_2/stack_1:output:0)lstm_128/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_128/lstm_cell_353/MatMul/ReadVariableOpReadVariableOp5lstm_128_lstm_cell_353_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_128/lstm_cell_353/MatMulMatMul!lstm_128/strided_slice_2:output:04lstm_128/lstm_cell_353/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_128/lstm_cell_353/MatMul_1/ReadVariableOpReadVariableOp7lstm_128_lstm_cell_353_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_128/lstm_cell_353/MatMul_1MatMullstm_128/zeros:output:06lstm_128/lstm_cell_353/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_128/lstm_cell_353/addAddV2'lstm_128/lstm_cell_353/MatMul:product:0)lstm_128/lstm_cell_353/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_128/lstm_cell_353/BiasAdd/ReadVariableOpReadVariableOp6lstm_128_lstm_cell_353_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_128/lstm_cell_353/BiasAddBiasAddlstm_128/lstm_cell_353/add:z:05lstm_128/lstm_cell_353/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_128/lstm_cell_353/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_128/lstm_cell_353/splitSplit/lstm_128/lstm_cell_353/split/split_dim:output:0'lstm_128/lstm_cell_353/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_128/lstm_cell_353/SigmoidSigmoid%lstm_128/lstm_cell_353/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_128/lstm_cell_353/Sigmoid_1Sigmoid%lstm_128/lstm_cell_353/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_128/lstm_cell_353/mulMul$lstm_128/lstm_cell_353/Sigmoid_1:y:0lstm_128/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_128/lstm_cell_353/ReluRelu%lstm_128/lstm_cell_353/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_128/lstm_cell_353/mul_1Mul"lstm_128/lstm_cell_353/Sigmoid:y:0)lstm_128/lstm_cell_353/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_128/lstm_cell_353/add_1AddV2lstm_128/lstm_cell_353/mul:z:0 lstm_128/lstm_cell_353/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_128/lstm_cell_353/Sigmoid_2Sigmoid%lstm_128/lstm_cell_353/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_128/lstm_cell_353/Relu_1Relu lstm_128/lstm_cell_353/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_128/lstm_cell_353/mul_2Mul$lstm_128/lstm_cell_353/Sigmoid_2:y:0+lstm_128/lstm_cell_353/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_128/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_128/TensorArrayV2_1TensorListReserve/lstm_128/TensorArrayV2_1/element_shape:output:0!lstm_128/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_128/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_128/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_128/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_128/whileWhile$lstm_128/while/loop_counter:output:0*lstm_128/while/maximum_iterations:output:0lstm_128/time:output:0!lstm_128/TensorArrayV2_1:handle:0lstm_128/zeros:output:0lstm_128/zeros_1:output:0!lstm_128/strided_slice_1:output:0@lstm_128/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_128_lstm_cell_353_matmul_readvariableop_resource7lstm_128_lstm_cell_353_matmul_1_readvariableop_resource6lstm_128_lstm_cell_353_biasadd_readvariableop_resource*
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
lstm_128_while_body_2137949*'
condR
lstm_128_while_cond_2137948*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_128/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_128/TensorArrayV2Stack/TensorListStackTensorListStacklstm_128/while:output:3Blstm_128/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_128/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_128/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_128/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_128/strided_slice_3StridedSlice4lstm_128/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_128/strided_slice_3/stack:output:0)lstm_128/strided_slice_3/stack_1:output:0)lstm_128/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_128/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_128/transpose_1	Transpose4lstm_128/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_128/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_128/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_42/MatMul/ReadVariableOpReadVariableOp'dense_42_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_42/MatMulMatMul!lstm_128/strided_slice_3:output:0&dense_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_42/BiasAdd/ReadVariableOpReadVariableOp(dense_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_42/BiasAddBiasAdddense_42/MatMul:product:0'dense_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_42/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_42/BiasAdd/ReadVariableOp^dense_42/MatMul/ReadVariableOp.^lstm_126/lstm_cell_351/BiasAdd/ReadVariableOp-^lstm_126/lstm_cell_351/MatMul/ReadVariableOp/^lstm_126/lstm_cell_351/MatMul_1/ReadVariableOp^lstm_126/while.^lstm_127/lstm_cell_352/BiasAdd/ReadVariableOp-^lstm_127/lstm_cell_352/MatMul/ReadVariableOp/^lstm_127/lstm_cell_352/MatMul_1/ReadVariableOp^lstm_127/while.^lstm_128/lstm_cell_353/BiasAdd/ReadVariableOp-^lstm_128/lstm_cell_353/MatMul/ReadVariableOp/^lstm_128/lstm_cell_353/MatMul_1/ReadVariableOp^lstm_128/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_42/BiasAdd/ReadVariableOpdense_42/BiasAdd/ReadVariableOp2@
dense_42/MatMul/ReadVariableOpdense_42/MatMul/ReadVariableOp2^
-lstm_126/lstm_cell_351/BiasAdd/ReadVariableOp-lstm_126/lstm_cell_351/BiasAdd/ReadVariableOp2\
,lstm_126/lstm_cell_351/MatMul/ReadVariableOp,lstm_126/lstm_cell_351/MatMul/ReadVariableOp2`
.lstm_126/lstm_cell_351/MatMul_1/ReadVariableOp.lstm_126/lstm_cell_351/MatMul_1/ReadVariableOp2 
lstm_126/whilelstm_126/while2^
-lstm_127/lstm_cell_352/BiasAdd/ReadVariableOp-lstm_127/lstm_cell_352/BiasAdd/ReadVariableOp2\
,lstm_127/lstm_cell_352/MatMul/ReadVariableOp,lstm_127/lstm_cell_352/MatMul/ReadVariableOp2`
.lstm_127/lstm_cell_352/MatMul_1/ReadVariableOp.lstm_127/lstm_cell_352/MatMul_1/ReadVariableOp2 
lstm_127/whilelstm_127/while2^
-lstm_128/lstm_cell_353/BiasAdd/ReadVariableOp-lstm_128/lstm_cell_353/BiasAdd/ReadVariableOp2\
,lstm_128/lstm_cell_353/MatMul/ReadVariableOp,lstm_128/lstm_cell_353/MatMul/ReadVariableOp2`
.lstm_128/lstm_cell_353/MatMul_1/ReadVariableOp.lstm_128/lstm_cell_353/MatMul_1/ReadVariableOp2 
lstm_128/whilelstm_128/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2136713
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_353_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_353_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_353_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_353_matmul_readvariableop_resource:2(F
4while_lstm_cell_353_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_353_biasadd_readvariableop_resource:(??*while/lstm_cell_353/BiasAdd/ReadVariableOp?)while/lstm_cell_353/MatMul/ReadVariableOp?+while/lstm_cell_353/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_353/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_353_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_353/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_353/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_353/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_353_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_353/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_353/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_353/addAddV2$while/lstm_cell_353/MatMul:product:0&while/lstm_cell_353/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_353/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_353_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_353/BiasAddBiasAddwhile/lstm_cell_353/add:z:02while/lstm_cell_353/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_353/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_353/splitSplit,while/lstm_cell_353/split/split_dim:output:0$while/lstm_cell_353/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_353/SigmoidSigmoid"while/lstm_cell_353/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_353/Sigmoid_1Sigmoid"while/lstm_cell_353/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_353/mulMul!while/lstm_cell_353/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_353/ReluRelu"while/lstm_cell_353/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_353/mul_1Mulwhile/lstm_cell_353/Sigmoid:y:0&while/lstm_cell_353/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_353/add_1AddV2while/lstm_cell_353/mul:z:0while/lstm_cell_353/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_353/Sigmoid_2Sigmoid"while/lstm_cell_353/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_353/Relu_1Reluwhile/lstm_cell_353/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_353/mul_2Mul!while/lstm_cell_353/Sigmoid_2:y:0(while/lstm_cell_353/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_353/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_353/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_353/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_353/BiasAdd/ReadVariableOp*^while/lstm_cell_353/MatMul/ReadVariableOp,^while/lstm_cell_353/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_353_biasadd_readvariableop_resource5while_lstm_cell_353_biasadd_readvariableop_resource_0"n
4while_lstm_cell_353_matmul_1_readvariableop_resource6while_lstm_cell_353_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_353_matmul_readvariableop_resource4while_lstm_cell_353_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_353/BiasAdd/ReadVariableOp*while/lstm_cell_353/BiasAdd/ReadVariableOp2V
)while/lstm_cell_353/MatMul/ReadVariableOp)while/lstm_cell_353/MatMul/ReadVariableOp2Z
+while/lstm_cell_353/MatMul_1/ReadVariableOp+while/lstm_cell_353/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2136269
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2136269___redundant_placeholder05
1while_while_cond_2136269___redundant_placeholder15
1while_while_cond_2136269___redundant_placeholder25
1while_while_cond_2136269___redundant_placeholder3
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
?S
?
)sequential_42_lstm_126_while_body_2134930J
Fsequential_42_lstm_126_while_sequential_42_lstm_126_while_loop_counterP
Lsequential_42_lstm_126_while_sequential_42_lstm_126_while_maximum_iterations,
(sequential_42_lstm_126_while_placeholder.
*sequential_42_lstm_126_while_placeholder_1.
*sequential_42_lstm_126_while_placeholder_2.
*sequential_42_lstm_126_while_placeholder_3I
Esequential_42_lstm_126_while_sequential_42_lstm_126_strided_slice_1_0?
?sequential_42_lstm_126_while_tensorarrayv2read_tensorlistgetitem_sequential_42_lstm_126_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_42_lstm_126_while_lstm_cell_351_matmul_readvariableop_resource_0:	?`
Msequential_42_lstm_126_while_lstm_cell_351_matmul_1_readvariableop_resource_0:	d?[
Lsequential_42_lstm_126_while_lstm_cell_351_biasadd_readvariableop_resource_0:	?)
%sequential_42_lstm_126_while_identity+
'sequential_42_lstm_126_while_identity_1+
'sequential_42_lstm_126_while_identity_2+
'sequential_42_lstm_126_while_identity_3+
'sequential_42_lstm_126_while_identity_4+
'sequential_42_lstm_126_while_identity_5G
Csequential_42_lstm_126_while_sequential_42_lstm_126_strided_slice_1?
sequential_42_lstm_126_while_tensorarrayv2read_tensorlistgetitem_sequential_42_lstm_126_tensorarrayunstack_tensorlistfromtensor\
Isequential_42_lstm_126_while_lstm_cell_351_matmul_readvariableop_resource:	?^
Ksequential_42_lstm_126_while_lstm_cell_351_matmul_1_readvariableop_resource:	d?Y
Jsequential_42_lstm_126_while_lstm_cell_351_biasadd_readvariableop_resource:	???Asequential_42/lstm_126/while/lstm_cell_351/BiasAdd/ReadVariableOp?@sequential_42/lstm_126/while/lstm_cell_351/MatMul/ReadVariableOp?Bsequential_42/lstm_126/while/lstm_cell_351/MatMul_1/ReadVariableOp?
Nsequential_42/lstm_126/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_42/lstm_126/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_42_lstm_126_while_tensorarrayv2read_tensorlistgetitem_sequential_42_lstm_126_tensorarrayunstack_tensorlistfromtensor_0(sequential_42_lstm_126_while_placeholderWsequential_42/lstm_126/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_42/lstm_126/while/lstm_cell_351/MatMul/ReadVariableOpReadVariableOpKsequential_42_lstm_126_while_lstm_cell_351_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_42/lstm_126/while/lstm_cell_351/MatMulMatMulGsequential_42/lstm_126/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_42/lstm_126/while/lstm_cell_351/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_42/lstm_126/while/lstm_cell_351/MatMul_1/ReadVariableOpReadVariableOpMsequential_42_lstm_126_while_lstm_cell_351_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_42/lstm_126/while/lstm_cell_351/MatMul_1MatMul*sequential_42_lstm_126_while_placeholder_2Jsequential_42/lstm_126/while/lstm_cell_351/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_42/lstm_126/while/lstm_cell_351/addAddV2;sequential_42/lstm_126/while/lstm_cell_351/MatMul:product:0=sequential_42/lstm_126/while/lstm_cell_351/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_42/lstm_126/while/lstm_cell_351/BiasAdd/ReadVariableOpReadVariableOpLsequential_42_lstm_126_while_lstm_cell_351_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_42/lstm_126/while/lstm_cell_351/BiasAddBiasAdd2sequential_42/lstm_126/while/lstm_cell_351/add:z:0Isequential_42/lstm_126/while/lstm_cell_351/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_42/lstm_126/while/lstm_cell_351/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_42/lstm_126/while/lstm_cell_351/splitSplitCsequential_42/lstm_126/while/lstm_cell_351/split/split_dim:output:0;sequential_42/lstm_126/while/lstm_cell_351/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_42/lstm_126/while/lstm_cell_351/SigmoidSigmoid9sequential_42/lstm_126/while/lstm_cell_351/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_42/lstm_126/while/lstm_cell_351/Sigmoid_1Sigmoid9sequential_42/lstm_126/while/lstm_cell_351/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_42/lstm_126/while/lstm_cell_351/mulMul8sequential_42/lstm_126/while/lstm_cell_351/Sigmoid_1:y:0*sequential_42_lstm_126_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_42/lstm_126/while/lstm_cell_351/ReluRelu9sequential_42/lstm_126/while/lstm_cell_351/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_42/lstm_126/while/lstm_cell_351/mul_1Mul6sequential_42/lstm_126/while/lstm_cell_351/Sigmoid:y:0=sequential_42/lstm_126/while/lstm_cell_351/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_42/lstm_126/while/lstm_cell_351/add_1AddV22sequential_42/lstm_126/while/lstm_cell_351/mul:z:04sequential_42/lstm_126/while/lstm_cell_351/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_42/lstm_126/while/lstm_cell_351/Sigmoid_2Sigmoid9sequential_42/lstm_126/while/lstm_cell_351/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_42/lstm_126/while/lstm_cell_351/Relu_1Relu4sequential_42/lstm_126/while/lstm_cell_351/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_42/lstm_126/while/lstm_cell_351/mul_2Mul8sequential_42/lstm_126/while/lstm_cell_351/Sigmoid_2:y:0?sequential_42/lstm_126/while/lstm_cell_351/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_42/lstm_126/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_42_lstm_126_while_placeholder_1(sequential_42_lstm_126_while_placeholder4sequential_42/lstm_126/while/lstm_cell_351/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_42/lstm_126/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_42/lstm_126/while/addAddV2(sequential_42_lstm_126_while_placeholder+sequential_42/lstm_126/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_42/lstm_126/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_42/lstm_126/while/add_1AddV2Fsequential_42_lstm_126_while_sequential_42_lstm_126_while_loop_counter-sequential_42/lstm_126/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_42/lstm_126/while/IdentityIdentity&sequential_42/lstm_126/while/add_1:z:0"^sequential_42/lstm_126/while/NoOp*
T0*
_output_shapes
: ?
'sequential_42/lstm_126/while/Identity_1IdentityLsequential_42_lstm_126_while_sequential_42_lstm_126_while_maximum_iterations"^sequential_42/lstm_126/while/NoOp*
T0*
_output_shapes
: ?
'sequential_42/lstm_126/while/Identity_2Identity$sequential_42/lstm_126/while/add:z:0"^sequential_42/lstm_126/while/NoOp*
T0*
_output_shapes
: ?
'sequential_42/lstm_126/while/Identity_3IdentityQsequential_42/lstm_126/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_42/lstm_126/while/NoOp*
T0*
_output_shapes
: ?
'sequential_42/lstm_126/while/Identity_4Identity4sequential_42/lstm_126/while/lstm_cell_351/mul_2:z:0"^sequential_42/lstm_126/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_42/lstm_126/while/Identity_5Identity4sequential_42/lstm_126/while/lstm_cell_351/add_1:z:0"^sequential_42/lstm_126/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_42/lstm_126/while/NoOpNoOpB^sequential_42/lstm_126/while/lstm_cell_351/BiasAdd/ReadVariableOpA^sequential_42/lstm_126/while/lstm_cell_351/MatMul/ReadVariableOpC^sequential_42/lstm_126/while/lstm_cell_351/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_42_lstm_126_while_identity.sequential_42/lstm_126/while/Identity:output:0"[
'sequential_42_lstm_126_while_identity_10sequential_42/lstm_126/while/Identity_1:output:0"[
'sequential_42_lstm_126_while_identity_20sequential_42/lstm_126/while/Identity_2:output:0"[
'sequential_42_lstm_126_while_identity_30sequential_42/lstm_126/while/Identity_3:output:0"[
'sequential_42_lstm_126_while_identity_40sequential_42/lstm_126/while/Identity_4:output:0"[
'sequential_42_lstm_126_while_identity_50sequential_42/lstm_126/while/Identity_5:output:0"?
Jsequential_42_lstm_126_while_lstm_cell_351_biasadd_readvariableop_resourceLsequential_42_lstm_126_while_lstm_cell_351_biasadd_readvariableop_resource_0"?
Ksequential_42_lstm_126_while_lstm_cell_351_matmul_1_readvariableop_resourceMsequential_42_lstm_126_while_lstm_cell_351_matmul_1_readvariableop_resource_0"?
Isequential_42_lstm_126_while_lstm_cell_351_matmul_readvariableop_resourceKsequential_42_lstm_126_while_lstm_cell_351_matmul_readvariableop_resource_0"?
Csequential_42_lstm_126_while_sequential_42_lstm_126_strided_slice_1Esequential_42_lstm_126_while_sequential_42_lstm_126_strided_slice_1_0"?
sequential_42_lstm_126_while_tensorarrayv2read_tensorlistgetitem_sequential_42_lstm_126_tensorarrayunstack_tensorlistfromtensor?sequential_42_lstm_126_while_tensorarrayv2read_tensorlistgetitem_sequential_42_lstm_126_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_42/lstm_126/while/lstm_cell_351/BiasAdd/ReadVariableOpAsequential_42/lstm_126/while/lstm_cell_351/BiasAdd/ReadVariableOp2?
@sequential_42/lstm_126/while/lstm_cell_351/MatMul/ReadVariableOp@sequential_42/lstm_126/while/lstm_cell_351/MatMul/ReadVariableOp2?
Bsequential_42/lstm_126/while/lstm_cell_351/MatMul_1/ReadVariableOpBsequential_42/lstm_126/while/lstm_cell_351/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_353_layer_call_and_return_conditional_losses_2140595

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
J__inference_lstm_cell_353_layer_call_and_return_conditional_losses_2136211

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
while_body_2139185
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_352_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_352_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_352_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_352_matmul_readvariableop_resource:	d?G
4while_lstm_cell_352_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_352_biasadd_readvariableop_resource:	???*while/lstm_cell_352/BiasAdd/ReadVariableOp?)while/lstm_cell_352/MatMul/ReadVariableOp?+while/lstm_cell_352/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_352/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_352_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_352/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_352/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_352/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_352_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_352/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_352/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_352/addAddV2$while/lstm_cell_352/MatMul:product:0&while/lstm_cell_352/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_352/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_352_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_352/BiasAddBiasAddwhile/lstm_cell_352/add:z:02while/lstm_cell_352/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_352/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_352/splitSplit,while/lstm_cell_352/split/split_dim:output:0$while/lstm_cell_352/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_352/SigmoidSigmoid"while/lstm_cell_352/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_352/Sigmoid_1Sigmoid"while/lstm_cell_352/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_352/mulMul!while/lstm_cell_352/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_352/ReluRelu"while/lstm_cell_352/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_352/mul_1Mulwhile/lstm_cell_352/Sigmoid:y:0&while/lstm_cell_352/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_352/add_1AddV2while/lstm_cell_352/mul:z:0while/lstm_cell_352/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_352/Sigmoid_2Sigmoid"while/lstm_cell_352/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_352/Relu_1Reluwhile/lstm_cell_352/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_352/mul_2Mul!while/lstm_cell_352/Sigmoid_2:y:0(while/lstm_cell_352/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_352/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_352/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_352/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_352/BiasAdd/ReadVariableOp*^while/lstm_cell_352/MatMul/ReadVariableOp,^while/lstm_cell_352/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_352_biasadd_readvariableop_resource5while_lstm_cell_352_biasadd_readvariableop_resource_0"n
4while_lstm_cell_352_matmul_1_readvariableop_resource6while_lstm_cell_352_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_352_matmul_readvariableop_resource4while_lstm_cell_352_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_352/BiasAdd/ReadVariableOp*while/lstm_cell_352/BiasAdd/ReadVariableOp2V
)while/lstm_cell_352/MatMul/ReadVariableOp)while/lstm_cell_352/MatMul/ReadVariableOp2Z
+while/lstm_cell_352/MatMul_1/ReadVariableOp+while/lstm_cell_352/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2136928
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2136928___redundant_placeholder05
1while_while_cond_2136928___redundant_placeholder15
1while_while_cond_2136928___redundant_placeholder25
1while_while_cond_2136928___redundant_placeholder3
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
lstm_126_while_cond_2137670.
*lstm_126_while_lstm_126_while_loop_counter4
0lstm_126_while_lstm_126_while_maximum_iterations
lstm_126_while_placeholder 
lstm_126_while_placeholder_1 
lstm_126_while_placeholder_2 
lstm_126_while_placeholder_30
,lstm_126_while_less_lstm_126_strided_slice_1G
Clstm_126_while_lstm_126_while_cond_2137670___redundant_placeholder0G
Clstm_126_while_lstm_126_while_cond_2137670___redundant_placeholder1G
Clstm_126_while_lstm_126_while_cond_2137670___redundant_placeholder2G
Clstm_126_while_lstm_126_while_cond_2137670___redundant_placeholder3
lstm_126_while_identity
?
lstm_126/while/LessLesslstm_126_while_placeholder,lstm_126_while_less_lstm_126_strided_slice_1*
T0*
_output_shapes
: ]
lstm_126/while/IdentityIdentitylstm_126/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_126_while_identity lstm_126/while/Identity:output:0*(
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
/__inference_lstm_cell_352_layer_call_fn_2140448

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
J__inference_lstm_cell_352_layer_call_and_return_conditional_losses_2135715o
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
while_body_2138712
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_351_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_351_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_351_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_351_matmul_readvariableop_resource:	?G
4while_lstm_cell_351_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_351_biasadd_readvariableop_resource:	???*while/lstm_cell_351/BiasAdd/ReadVariableOp?)while/lstm_cell_351/MatMul/ReadVariableOp?+while/lstm_cell_351/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_351/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_351_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_351/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_351/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_351/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_351_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_351/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_351/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_351/addAddV2$while/lstm_cell_351/MatMul:product:0&while/lstm_cell_351/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_351/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_351_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_351/BiasAddBiasAddwhile/lstm_cell_351/add:z:02while/lstm_cell_351/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_351/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_351/splitSplit,while/lstm_cell_351/split/split_dim:output:0$while/lstm_cell_351/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_351/SigmoidSigmoid"while/lstm_cell_351/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_351/Sigmoid_1Sigmoid"while/lstm_cell_351/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_351/mulMul!while/lstm_cell_351/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_351/ReluRelu"while/lstm_cell_351/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_351/mul_1Mulwhile/lstm_cell_351/Sigmoid:y:0&while/lstm_cell_351/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_351/add_1AddV2while/lstm_cell_351/mul:z:0while/lstm_cell_351/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_351/Sigmoid_2Sigmoid"while/lstm_cell_351/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_351/Relu_1Reluwhile/lstm_cell_351/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_351/mul_2Mul!while/lstm_cell_351/Sigmoid_2:y:0(while/lstm_cell_351/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_351/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_351/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_351/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_351/BiasAdd/ReadVariableOp*^while/lstm_cell_351/MatMul/ReadVariableOp,^while/lstm_cell_351/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_351_biasadd_readvariableop_resource5while_lstm_cell_351_biasadd_readvariableop_resource_0"n
4while_lstm_cell_351_matmul_1_readvariableop_resource6while_lstm_cell_351_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_351_matmul_readvariableop_resource4while_lstm_cell_351_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_351/BiasAdd/ReadVariableOp*while/lstm_cell_351/BiasAdd/ReadVariableOp2V
)while/lstm_cell_351/MatMul/ReadVariableOp)while/lstm_cell_351/MatMul/ReadVariableOp2Z
+while/lstm_cell_351/MatMul_1/ReadVariableOp+while/lstm_cell_351/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2139470
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2139470___redundant_placeholder05
1while_while_cond_2139470___redundant_placeholder15
1while_while_cond_2139470___redundant_placeholder25
1while_while_cond_2139470___redundant_placeholder3
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
*__inference_lstm_126_layer_call_fn_2138477
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
E__inference_lstm_126_layer_call_and_return_conditional_losses_2135448|
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
E__inference_lstm_126_layer_call_and_return_conditional_losses_2135448

inputs(
lstm_cell_351_2135366:	?(
lstm_cell_351_2135368:	d?$
lstm_cell_351_2135370:	?
identity??%lstm_cell_351/StatefulPartitionedCall?while;
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
%lstm_cell_351/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_351_2135366lstm_cell_351_2135368lstm_cell_351_2135370*
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
J__inference_lstm_cell_351_layer_call_and_return_conditional_losses_2135365n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_351_2135366lstm_cell_351_2135368lstm_cell_351_2135370*
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
while_body_2135379*
condR
while_cond_2135378*K
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
NoOpNoOp&^lstm_cell_351/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_351/StatefulPartitionedCall%lstm_cell_351/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_2137258
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2137258___redundant_placeholder05
1while_while_cond_2137258___redundant_placeholder15
1while_while_cond_2137258___redundant_placeholder25
1while_while_cond_2137258___redundant_placeholder3
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

?
lstm_127_while_cond_2137809.
*lstm_127_while_lstm_127_while_loop_counter4
0lstm_127_while_lstm_127_while_maximum_iterations
lstm_127_while_placeholder 
lstm_127_while_placeholder_1 
lstm_127_while_placeholder_2 
lstm_127_while_placeholder_30
,lstm_127_while_less_lstm_127_strided_slice_1G
Clstm_127_while_lstm_127_while_cond_2137809___redundant_placeholder0G
Clstm_127_while_lstm_127_while_cond_2137809___redundant_placeholder1G
Clstm_127_while_lstm_127_while_cond_2137809___redundant_placeholder2G
Clstm_127_while_lstm_127_while_cond_2137809___redundant_placeholder3
lstm_127_while_identity
?
lstm_127/while/LessLesslstm_127_while_placeholder,lstm_127_while_less_lstm_127_strided_slice_1*
T0*
_output_shapes
: ]
lstm_127/while/IdentityIdentitylstm_127/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_127_while_identity lstm_127/while/Identity:output:0*(
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
while_cond_2139943
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2139943___redundant_placeholder05
1while_while_cond_2139943___redundant_placeholder15
1while_while_cond_2139943___redundant_placeholder25
1while_while_cond_2139943___redundant_placeholder3
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
while_body_2135920
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_352_2135944_0:	d?0
while_lstm_cell_352_2135946_0:	2?,
while_lstm_cell_352_2135948_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_352_2135944:	d?.
while_lstm_cell_352_2135946:	2?*
while_lstm_cell_352_2135948:	???+while/lstm_cell_352/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_352/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_352_2135944_0while_lstm_cell_352_2135946_0while_lstm_cell_352_2135948_0*
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
J__inference_lstm_cell_352_layer_call_and_return_conditional_losses_2135861?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_352/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_352/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_352/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_352/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_352_2135944while_lstm_cell_352_2135944_0"<
while_lstm_cell_352_2135946while_lstm_cell_352_2135946_0"<
while_lstm_cell_352_2135948while_lstm_cell_352_2135948_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_352/StatefulPartitionedCall+while/lstm_cell_352/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2140229
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2140229___redundant_placeholder05
1while_while_cond_2140229___redundant_placeholder15
1while_while_cond_2140229___redundant_placeholder25
1while_while_cond_2140229___redundant_placeholder3
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
while_cond_2136562
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2136562___redundant_placeholder05
1while_while_cond_2136562___redundant_placeholder15
1while_while_cond_2136562___redundant_placeholder25
1while_while_cond_2136562___redundant_placeholder3
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
/__inference_sequential_42_layer_call_fn_2137585

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
J__inference_sequential_42_layer_call_and_return_conditional_losses_2136822o
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
?
while_cond_2135728
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2135728___redundant_placeholder05
1while_while_cond_2135728___redundant_placeholder15
1while_while_cond_2135728___redundant_placeholder25
1while_while_cond_2135728___redundant_placeholder3
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
/__inference_sequential_42_layer_call_fn_2136847
lstm_126_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_126_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_42_layer_call_and_return_conditional_losses_2136822o
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
_user_specified_namelstm_126_input
?8
?
while_body_2139471
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_352_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_352_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_352_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_352_matmul_readvariableop_resource:	d?G
4while_lstm_cell_352_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_352_biasadd_readvariableop_resource:	???*while/lstm_cell_352/BiasAdd/ReadVariableOp?)while/lstm_cell_352/MatMul/ReadVariableOp?+while/lstm_cell_352/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_352/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_352_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_352/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_352/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_352/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_352_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_352/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_352/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_352/addAddV2$while/lstm_cell_352/MatMul:product:0&while/lstm_cell_352/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_352/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_352_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_352/BiasAddBiasAddwhile/lstm_cell_352/add:z:02while/lstm_cell_352/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_352/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_352/splitSplit,while/lstm_cell_352/split/split_dim:output:0$while/lstm_cell_352/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_352/SigmoidSigmoid"while/lstm_cell_352/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_352/Sigmoid_1Sigmoid"while/lstm_cell_352/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_352/mulMul!while/lstm_cell_352/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_352/ReluRelu"while/lstm_cell_352/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_352/mul_1Mulwhile/lstm_cell_352/Sigmoid:y:0&while/lstm_cell_352/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_352/add_1AddV2while/lstm_cell_352/mul:z:0while/lstm_cell_352/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_352/Sigmoid_2Sigmoid"while/lstm_cell_352/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_352/Relu_1Reluwhile/lstm_cell_352/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_352/mul_2Mul!while/lstm_cell_352/Sigmoid_2:y:0(while/lstm_cell_352/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_352/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_352/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_352/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_352/BiasAdd/ReadVariableOp*^while/lstm_cell_352/MatMul/ReadVariableOp,^while/lstm_cell_352/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_352_biasadd_readvariableop_resource5while_lstm_cell_352_biasadd_readvariableop_resource_0"n
4while_lstm_cell_352_matmul_1_readvariableop_resource6while_lstm_cell_352_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_352_matmul_readvariableop_resource4while_lstm_cell_352_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_352/BiasAdd/ReadVariableOp*while/lstm_cell_352/BiasAdd/ReadVariableOp2V
)while/lstm_cell_352/MatMul/ReadVariableOp)while/lstm_cell_352/MatMul/ReadVariableOp2Z
+while/lstm_cell_352/MatMul_1/ReadVariableOp+while/lstm_cell_352/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_126_while_cond_2138097.
*lstm_126_while_lstm_126_while_loop_counter4
0lstm_126_while_lstm_126_while_maximum_iterations
lstm_126_while_placeholder 
lstm_126_while_placeholder_1 
lstm_126_while_placeholder_2 
lstm_126_while_placeholder_30
,lstm_126_while_less_lstm_126_strided_slice_1G
Clstm_126_while_lstm_126_while_cond_2138097___redundant_placeholder0G
Clstm_126_while_lstm_126_while_cond_2138097___redundant_placeholder1G
Clstm_126_while_lstm_126_while_cond_2138097___redundant_placeholder2G
Clstm_126_while_lstm_126_while_cond_2138097___redundant_placeholder3
lstm_126_while_identity
?
lstm_126/while/LessLesslstm_126_while_placeholder,lstm_126_while_less_lstm_126_strided_slice_1*
T0*
_output_shapes
: ]
lstm_126/while/IdentityIdentitylstm_126/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_126_while_identity lstm_126/while/Identity:output:0*(
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
J__inference_lstm_cell_353_layer_call_and_return_conditional_losses_2140627

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
?
)sequential_42_lstm_127_while_cond_2135068J
Fsequential_42_lstm_127_while_sequential_42_lstm_127_while_loop_counterP
Lsequential_42_lstm_127_while_sequential_42_lstm_127_while_maximum_iterations,
(sequential_42_lstm_127_while_placeholder.
*sequential_42_lstm_127_while_placeholder_1.
*sequential_42_lstm_127_while_placeholder_2.
*sequential_42_lstm_127_while_placeholder_3L
Hsequential_42_lstm_127_while_less_sequential_42_lstm_127_strided_slice_1c
_sequential_42_lstm_127_while_sequential_42_lstm_127_while_cond_2135068___redundant_placeholder0c
_sequential_42_lstm_127_while_sequential_42_lstm_127_while_cond_2135068___redundant_placeholder1c
_sequential_42_lstm_127_while_sequential_42_lstm_127_while_cond_2135068___redundant_placeholder2c
_sequential_42_lstm_127_while_sequential_42_lstm_127_while_cond_2135068___redundant_placeholder3)
%sequential_42_lstm_127_while_identity
?
!sequential_42/lstm_127/while/LessLess(sequential_42_lstm_127_while_placeholderHsequential_42_lstm_127_while_less_sequential_42_lstm_127_strided_slice_1*
T0*
_output_shapes
: y
%sequential_42/lstm_127/while/IdentityIdentity%sequential_42/lstm_127/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_42_lstm_127_while_identity.sequential_42/lstm_127/while/Identity:output:0*(
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
E__inference_lstm_126_layer_call_and_return_conditional_losses_2138653
inputs_0?
,lstm_cell_351_matmul_readvariableop_resource:	?A
.lstm_cell_351_matmul_1_readvariableop_resource:	d?<
-lstm_cell_351_biasadd_readvariableop_resource:	?
identity??$lstm_cell_351/BiasAdd/ReadVariableOp?#lstm_cell_351/MatMul/ReadVariableOp?%lstm_cell_351/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_351/MatMul/ReadVariableOpReadVariableOp,lstm_cell_351_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_351/MatMulMatMulstrided_slice_2:output:0+lstm_cell_351/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_351/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_351_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_351/MatMul_1MatMulzeros:output:0-lstm_cell_351/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_351/addAddV2lstm_cell_351/MatMul:product:0 lstm_cell_351/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_351/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_351_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_351/BiasAddBiasAddlstm_cell_351/add:z:0,lstm_cell_351/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_351/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_351/splitSplit&lstm_cell_351/split/split_dim:output:0lstm_cell_351/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_351/SigmoidSigmoidlstm_cell_351/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_351/Sigmoid_1Sigmoidlstm_cell_351/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_351/mulMullstm_cell_351/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_351/ReluRelulstm_cell_351/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_351/mul_1Mullstm_cell_351/Sigmoid:y:0 lstm_cell_351/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_351/add_1AddV2lstm_cell_351/mul:z:0lstm_cell_351/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_351/Sigmoid_2Sigmoidlstm_cell_351/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_351/Relu_1Relulstm_cell_351/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_351/mul_2Mullstm_cell_351/Sigmoid_2:y:0"lstm_cell_351/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_351_matmul_readvariableop_resource.lstm_cell_351_matmul_1_readvariableop_resource-lstm_cell_351_biasadd_readvariableop_resource*
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
while_body_2138569*
condR
while_cond_2138568*K
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
NoOpNoOp%^lstm_cell_351/BiasAdd/ReadVariableOp$^lstm_cell_351/MatMul/ReadVariableOp&^lstm_cell_351/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_351/BiasAdd/ReadVariableOp$lstm_cell_351/BiasAdd/ReadVariableOp2J
#lstm_cell_351/MatMul/ReadVariableOp#lstm_cell_351/MatMul/ReadVariableOp2N
%lstm_cell_351/MatMul_1/ReadVariableOp%lstm_cell_351/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_351_layer_call_and_return_conditional_losses_2135365

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
while_cond_2137093
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2137093___redundant_placeholder05
1while_while_cond_2137093___redundant_placeholder15
1while_while_cond_2137093___redundant_placeholder25
1while_while_cond_2137093___redundant_placeholder3
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
*__inference_lstm_126_layer_call_fn_2138499

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
E__inference_lstm_126_layer_call_and_return_conditional_losses_2136497s
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
?J
?
E__inference_lstm_126_layer_call_and_return_conditional_losses_2138939

inputs?
,lstm_cell_351_matmul_readvariableop_resource:	?A
.lstm_cell_351_matmul_1_readvariableop_resource:	d?<
-lstm_cell_351_biasadd_readvariableop_resource:	?
identity??$lstm_cell_351/BiasAdd/ReadVariableOp?#lstm_cell_351/MatMul/ReadVariableOp?%lstm_cell_351/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_351/MatMul/ReadVariableOpReadVariableOp,lstm_cell_351_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_351/MatMulMatMulstrided_slice_2:output:0+lstm_cell_351/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_351/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_351_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_351/MatMul_1MatMulzeros:output:0-lstm_cell_351/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_351/addAddV2lstm_cell_351/MatMul:product:0 lstm_cell_351/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_351/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_351_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_351/BiasAddBiasAddlstm_cell_351/add:z:0,lstm_cell_351/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_351/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_351/splitSplit&lstm_cell_351/split/split_dim:output:0lstm_cell_351/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_351/SigmoidSigmoidlstm_cell_351/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_351/Sigmoid_1Sigmoidlstm_cell_351/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_351/mulMullstm_cell_351/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_351/ReluRelulstm_cell_351/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_351/mul_1Mullstm_cell_351/Sigmoid:y:0 lstm_cell_351/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_351/add_1AddV2lstm_cell_351/mul:z:0lstm_cell_351/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_351/Sigmoid_2Sigmoidlstm_cell_351/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_351/Relu_1Relulstm_cell_351/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_351/mul_2Mullstm_cell_351/Sigmoid_2:y:0"lstm_cell_351/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_351_matmul_readvariableop_resource.lstm_cell_351_matmul_1_readvariableop_resource-lstm_cell_351_biasadd_readvariableop_resource*
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
while_body_2138855*
condR
while_cond_2138854*K
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
NoOpNoOp%^lstm_cell_351/BiasAdd/ReadVariableOp$^lstm_cell_351/MatMul/ReadVariableOp&^lstm_cell_351/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_351/BiasAdd/ReadVariableOp$lstm_cell_351/BiasAdd/ReadVariableOp2J
#lstm_cell_351/MatMul/ReadVariableOp#lstm_cell_351/MatMul/ReadVariableOp2N
%lstm_cell_351/MatMul_1/ReadVariableOp%lstm_cell_351/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2135919
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2135919___redundant_placeholder05
1while_while_cond_2135919___redundant_placeholder15
1while_while_cond_2135919___redundant_placeholder25
1while_while_cond_2135919___redundant_placeholder3
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
J__inference_lstm_cell_351_layer_call_and_return_conditional_losses_2140399

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
?J
?
E__inference_lstm_127_layer_call_and_return_conditional_losses_2139698

inputs?
,lstm_cell_352_matmul_readvariableop_resource:	d?A
.lstm_cell_352_matmul_1_readvariableop_resource:	2?<
-lstm_cell_352_biasadd_readvariableop_resource:	?
identity??$lstm_cell_352/BiasAdd/ReadVariableOp?#lstm_cell_352/MatMul/ReadVariableOp?%lstm_cell_352/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_352/MatMul/ReadVariableOpReadVariableOp,lstm_cell_352_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_352/MatMulMatMulstrided_slice_2:output:0+lstm_cell_352/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_352/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_352_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_352/MatMul_1MatMulzeros:output:0-lstm_cell_352/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_352/addAddV2lstm_cell_352/MatMul:product:0 lstm_cell_352/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_352/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_352_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_352/BiasAddBiasAddlstm_cell_352/add:z:0,lstm_cell_352/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_352/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_352/splitSplit&lstm_cell_352/split/split_dim:output:0lstm_cell_352/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_352/SigmoidSigmoidlstm_cell_352/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_352/Sigmoid_1Sigmoidlstm_cell_352/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_352/mulMullstm_cell_352/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_352/ReluRelulstm_cell_352/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_352/mul_1Mullstm_cell_352/Sigmoid:y:0 lstm_cell_352/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_352/add_1AddV2lstm_cell_352/mul:z:0lstm_cell_352/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_352/Sigmoid_2Sigmoidlstm_cell_352/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_352/Relu_1Relulstm_cell_352/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_352/mul_2Mullstm_cell_352/Sigmoid_2:y:0"lstm_cell_352/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_352_matmul_readvariableop_resource.lstm_cell_352_matmul_1_readvariableop_resource-lstm_cell_352_biasadd_readvariableop_resource*
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
while_body_2139614*
condR
while_cond_2139613*K
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
NoOpNoOp%^lstm_cell_352/BiasAdd/ReadVariableOp$^lstm_cell_352/MatMul/ReadVariableOp&^lstm_cell_352/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_352/BiasAdd/ReadVariableOp$lstm_cell_352/BiasAdd/ReadVariableOp2J
#lstm_cell_352/MatMul/ReadVariableOp#lstm_cell_352/MatMul/ReadVariableOp2N
%lstm_cell_352/MatMul_1/ReadVariableOp%lstm_cell_352/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_2135298
lstm_126_inputV
Csequential_42_lstm_126_lstm_cell_351_matmul_readvariableop_resource:	?X
Esequential_42_lstm_126_lstm_cell_351_matmul_1_readvariableop_resource:	d?S
Dsequential_42_lstm_126_lstm_cell_351_biasadd_readvariableop_resource:	?V
Csequential_42_lstm_127_lstm_cell_352_matmul_readvariableop_resource:	d?X
Esequential_42_lstm_127_lstm_cell_352_matmul_1_readvariableop_resource:	2?S
Dsequential_42_lstm_127_lstm_cell_352_biasadd_readvariableop_resource:	?U
Csequential_42_lstm_128_lstm_cell_353_matmul_readvariableop_resource:2(W
Esequential_42_lstm_128_lstm_cell_353_matmul_1_readvariableop_resource:
(R
Dsequential_42_lstm_128_lstm_cell_353_biasadd_readvariableop_resource:(G
5sequential_42_dense_42_matmul_readvariableop_resource:
D
6sequential_42_dense_42_biasadd_readvariableop_resource:
identity??-sequential_42/dense_42/BiasAdd/ReadVariableOp?,sequential_42/dense_42/MatMul/ReadVariableOp?;sequential_42/lstm_126/lstm_cell_351/BiasAdd/ReadVariableOp?:sequential_42/lstm_126/lstm_cell_351/MatMul/ReadVariableOp?<sequential_42/lstm_126/lstm_cell_351/MatMul_1/ReadVariableOp?sequential_42/lstm_126/while?;sequential_42/lstm_127/lstm_cell_352/BiasAdd/ReadVariableOp?:sequential_42/lstm_127/lstm_cell_352/MatMul/ReadVariableOp?<sequential_42/lstm_127/lstm_cell_352/MatMul_1/ReadVariableOp?sequential_42/lstm_127/while?;sequential_42/lstm_128/lstm_cell_353/BiasAdd/ReadVariableOp?:sequential_42/lstm_128/lstm_cell_353/MatMul/ReadVariableOp?<sequential_42/lstm_128/lstm_cell_353/MatMul_1/ReadVariableOp?sequential_42/lstm_128/whileZ
sequential_42/lstm_126/ShapeShapelstm_126_input*
T0*
_output_shapes
:t
*sequential_42/lstm_126/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_42/lstm_126/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_42/lstm_126/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_42/lstm_126/strided_sliceStridedSlice%sequential_42/lstm_126/Shape:output:03sequential_42/lstm_126/strided_slice/stack:output:05sequential_42/lstm_126/strided_slice/stack_1:output:05sequential_42/lstm_126/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_42/lstm_126/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_42/lstm_126/zeros/packedPack-sequential_42/lstm_126/strided_slice:output:0.sequential_42/lstm_126/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_42/lstm_126/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_42/lstm_126/zerosFill,sequential_42/lstm_126/zeros/packed:output:0+sequential_42/lstm_126/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_42/lstm_126/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_42/lstm_126/zeros_1/packedPack-sequential_42/lstm_126/strided_slice:output:00sequential_42/lstm_126/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_42/lstm_126/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_42/lstm_126/zeros_1Fill.sequential_42/lstm_126/zeros_1/packed:output:0-sequential_42/lstm_126/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_42/lstm_126/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_42/lstm_126/transpose	Transposelstm_126_input.sequential_42/lstm_126/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_42/lstm_126/Shape_1Shape$sequential_42/lstm_126/transpose:y:0*
T0*
_output_shapes
:v
,sequential_42/lstm_126/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_42/lstm_126/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_42/lstm_126/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_42/lstm_126/strided_slice_1StridedSlice'sequential_42/lstm_126/Shape_1:output:05sequential_42/lstm_126/strided_slice_1/stack:output:07sequential_42/lstm_126/strided_slice_1/stack_1:output:07sequential_42/lstm_126/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_42/lstm_126/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_42/lstm_126/TensorArrayV2TensorListReserve;sequential_42/lstm_126/TensorArrayV2/element_shape:output:0/sequential_42/lstm_126/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_42/lstm_126/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_42/lstm_126/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_42/lstm_126/transpose:y:0Usequential_42/lstm_126/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_42/lstm_126/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_42/lstm_126/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_42/lstm_126/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_42/lstm_126/strided_slice_2StridedSlice$sequential_42/lstm_126/transpose:y:05sequential_42/lstm_126/strided_slice_2/stack:output:07sequential_42/lstm_126/strided_slice_2/stack_1:output:07sequential_42/lstm_126/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_42/lstm_126/lstm_cell_351/MatMul/ReadVariableOpReadVariableOpCsequential_42_lstm_126_lstm_cell_351_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_42/lstm_126/lstm_cell_351/MatMulMatMul/sequential_42/lstm_126/strided_slice_2:output:0Bsequential_42/lstm_126/lstm_cell_351/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_42/lstm_126/lstm_cell_351/MatMul_1/ReadVariableOpReadVariableOpEsequential_42_lstm_126_lstm_cell_351_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_42/lstm_126/lstm_cell_351/MatMul_1MatMul%sequential_42/lstm_126/zeros:output:0Dsequential_42/lstm_126/lstm_cell_351/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_42/lstm_126/lstm_cell_351/addAddV25sequential_42/lstm_126/lstm_cell_351/MatMul:product:07sequential_42/lstm_126/lstm_cell_351/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_42/lstm_126/lstm_cell_351/BiasAdd/ReadVariableOpReadVariableOpDsequential_42_lstm_126_lstm_cell_351_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_42/lstm_126/lstm_cell_351/BiasAddBiasAdd,sequential_42/lstm_126/lstm_cell_351/add:z:0Csequential_42/lstm_126/lstm_cell_351/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_42/lstm_126/lstm_cell_351/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_42/lstm_126/lstm_cell_351/splitSplit=sequential_42/lstm_126/lstm_cell_351/split/split_dim:output:05sequential_42/lstm_126/lstm_cell_351/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_42/lstm_126/lstm_cell_351/SigmoidSigmoid3sequential_42/lstm_126/lstm_cell_351/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_42/lstm_126/lstm_cell_351/Sigmoid_1Sigmoid3sequential_42/lstm_126/lstm_cell_351/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_42/lstm_126/lstm_cell_351/mulMul2sequential_42/lstm_126/lstm_cell_351/Sigmoid_1:y:0'sequential_42/lstm_126/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_42/lstm_126/lstm_cell_351/ReluRelu3sequential_42/lstm_126/lstm_cell_351/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_42/lstm_126/lstm_cell_351/mul_1Mul0sequential_42/lstm_126/lstm_cell_351/Sigmoid:y:07sequential_42/lstm_126/lstm_cell_351/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_42/lstm_126/lstm_cell_351/add_1AddV2,sequential_42/lstm_126/lstm_cell_351/mul:z:0.sequential_42/lstm_126/lstm_cell_351/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_42/lstm_126/lstm_cell_351/Sigmoid_2Sigmoid3sequential_42/lstm_126/lstm_cell_351/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_42/lstm_126/lstm_cell_351/Relu_1Relu.sequential_42/lstm_126/lstm_cell_351/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_42/lstm_126/lstm_cell_351/mul_2Mul2sequential_42/lstm_126/lstm_cell_351/Sigmoid_2:y:09sequential_42/lstm_126/lstm_cell_351/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_42/lstm_126/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_42/lstm_126/TensorArrayV2_1TensorListReserve=sequential_42/lstm_126/TensorArrayV2_1/element_shape:output:0/sequential_42/lstm_126/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_42/lstm_126/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_42/lstm_126/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_42/lstm_126/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_42/lstm_126/whileWhile2sequential_42/lstm_126/while/loop_counter:output:08sequential_42/lstm_126/while/maximum_iterations:output:0$sequential_42/lstm_126/time:output:0/sequential_42/lstm_126/TensorArrayV2_1:handle:0%sequential_42/lstm_126/zeros:output:0'sequential_42/lstm_126/zeros_1:output:0/sequential_42/lstm_126/strided_slice_1:output:0Nsequential_42/lstm_126/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_42_lstm_126_lstm_cell_351_matmul_readvariableop_resourceEsequential_42_lstm_126_lstm_cell_351_matmul_1_readvariableop_resourceDsequential_42_lstm_126_lstm_cell_351_biasadd_readvariableop_resource*
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
)sequential_42_lstm_126_while_body_2134930*5
cond-R+
)sequential_42_lstm_126_while_cond_2134929*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_42/lstm_126/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_42/lstm_126/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_42/lstm_126/while:output:3Psequential_42/lstm_126/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_42/lstm_126/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_42/lstm_126/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_42/lstm_126/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_42/lstm_126/strided_slice_3StridedSliceBsequential_42/lstm_126/TensorArrayV2Stack/TensorListStack:tensor:05sequential_42/lstm_126/strided_slice_3/stack:output:07sequential_42/lstm_126/strided_slice_3/stack_1:output:07sequential_42/lstm_126/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_42/lstm_126/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_42/lstm_126/transpose_1	TransposeBsequential_42/lstm_126/TensorArrayV2Stack/TensorListStack:tensor:00sequential_42/lstm_126/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_42/lstm_126/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_42/lstm_127/ShapeShape&sequential_42/lstm_126/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_42/lstm_127/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_42/lstm_127/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_42/lstm_127/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_42/lstm_127/strided_sliceStridedSlice%sequential_42/lstm_127/Shape:output:03sequential_42/lstm_127/strided_slice/stack:output:05sequential_42/lstm_127/strided_slice/stack_1:output:05sequential_42/lstm_127/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_42/lstm_127/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_42/lstm_127/zeros/packedPack-sequential_42/lstm_127/strided_slice:output:0.sequential_42/lstm_127/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_42/lstm_127/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_42/lstm_127/zerosFill,sequential_42/lstm_127/zeros/packed:output:0+sequential_42/lstm_127/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_42/lstm_127/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_42/lstm_127/zeros_1/packedPack-sequential_42/lstm_127/strided_slice:output:00sequential_42/lstm_127/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_42/lstm_127/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_42/lstm_127/zeros_1Fill.sequential_42/lstm_127/zeros_1/packed:output:0-sequential_42/lstm_127/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_42/lstm_127/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_42/lstm_127/transpose	Transpose&sequential_42/lstm_126/transpose_1:y:0.sequential_42/lstm_127/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_42/lstm_127/Shape_1Shape$sequential_42/lstm_127/transpose:y:0*
T0*
_output_shapes
:v
,sequential_42/lstm_127/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_42/lstm_127/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_42/lstm_127/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_42/lstm_127/strided_slice_1StridedSlice'sequential_42/lstm_127/Shape_1:output:05sequential_42/lstm_127/strided_slice_1/stack:output:07sequential_42/lstm_127/strided_slice_1/stack_1:output:07sequential_42/lstm_127/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_42/lstm_127/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_42/lstm_127/TensorArrayV2TensorListReserve;sequential_42/lstm_127/TensorArrayV2/element_shape:output:0/sequential_42/lstm_127/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_42/lstm_127/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_42/lstm_127/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_42/lstm_127/transpose:y:0Usequential_42/lstm_127/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_42/lstm_127/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_42/lstm_127/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_42/lstm_127/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_42/lstm_127/strided_slice_2StridedSlice$sequential_42/lstm_127/transpose:y:05sequential_42/lstm_127/strided_slice_2/stack:output:07sequential_42/lstm_127/strided_slice_2/stack_1:output:07sequential_42/lstm_127/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_42/lstm_127/lstm_cell_352/MatMul/ReadVariableOpReadVariableOpCsequential_42_lstm_127_lstm_cell_352_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_42/lstm_127/lstm_cell_352/MatMulMatMul/sequential_42/lstm_127/strided_slice_2:output:0Bsequential_42/lstm_127/lstm_cell_352/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_42/lstm_127/lstm_cell_352/MatMul_1/ReadVariableOpReadVariableOpEsequential_42_lstm_127_lstm_cell_352_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_42/lstm_127/lstm_cell_352/MatMul_1MatMul%sequential_42/lstm_127/zeros:output:0Dsequential_42/lstm_127/lstm_cell_352/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_42/lstm_127/lstm_cell_352/addAddV25sequential_42/lstm_127/lstm_cell_352/MatMul:product:07sequential_42/lstm_127/lstm_cell_352/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_42/lstm_127/lstm_cell_352/BiasAdd/ReadVariableOpReadVariableOpDsequential_42_lstm_127_lstm_cell_352_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_42/lstm_127/lstm_cell_352/BiasAddBiasAdd,sequential_42/lstm_127/lstm_cell_352/add:z:0Csequential_42/lstm_127/lstm_cell_352/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_42/lstm_127/lstm_cell_352/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_42/lstm_127/lstm_cell_352/splitSplit=sequential_42/lstm_127/lstm_cell_352/split/split_dim:output:05sequential_42/lstm_127/lstm_cell_352/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_42/lstm_127/lstm_cell_352/SigmoidSigmoid3sequential_42/lstm_127/lstm_cell_352/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_42/lstm_127/lstm_cell_352/Sigmoid_1Sigmoid3sequential_42/lstm_127/lstm_cell_352/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_42/lstm_127/lstm_cell_352/mulMul2sequential_42/lstm_127/lstm_cell_352/Sigmoid_1:y:0'sequential_42/lstm_127/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_42/lstm_127/lstm_cell_352/ReluRelu3sequential_42/lstm_127/lstm_cell_352/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_42/lstm_127/lstm_cell_352/mul_1Mul0sequential_42/lstm_127/lstm_cell_352/Sigmoid:y:07sequential_42/lstm_127/lstm_cell_352/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_42/lstm_127/lstm_cell_352/add_1AddV2,sequential_42/lstm_127/lstm_cell_352/mul:z:0.sequential_42/lstm_127/lstm_cell_352/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_42/lstm_127/lstm_cell_352/Sigmoid_2Sigmoid3sequential_42/lstm_127/lstm_cell_352/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_42/lstm_127/lstm_cell_352/Relu_1Relu.sequential_42/lstm_127/lstm_cell_352/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_42/lstm_127/lstm_cell_352/mul_2Mul2sequential_42/lstm_127/lstm_cell_352/Sigmoid_2:y:09sequential_42/lstm_127/lstm_cell_352/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_42/lstm_127/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_42/lstm_127/TensorArrayV2_1TensorListReserve=sequential_42/lstm_127/TensorArrayV2_1/element_shape:output:0/sequential_42/lstm_127/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_42/lstm_127/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_42/lstm_127/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_42/lstm_127/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_42/lstm_127/whileWhile2sequential_42/lstm_127/while/loop_counter:output:08sequential_42/lstm_127/while/maximum_iterations:output:0$sequential_42/lstm_127/time:output:0/sequential_42/lstm_127/TensorArrayV2_1:handle:0%sequential_42/lstm_127/zeros:output:0'sequential_42/lstm_127/zeros_1:output:0/sequential_42/lstm_127/strided_slice_1:output:0Nsequential_42/lstm_127/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_42_lstm_127_lstm_cell_352_matmul_readvariableop_resourceEsequential_42_lstm_127_lstm_cell_352_matmul_1_readvariableop_resourceDsequential_42_lstm_127_lstm_cell_352_biasadd_readvariableop_resource*
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
)sequential_42_lstm_127_while_body_2135069*5
cond-R+
)sequential_42_lstm_127_while_cond_2135068*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_42/lstm_127/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_42/lstm_127/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_42/lstm_127/while:output:3Psequential_42/lstm_127/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_42/lstm_127/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_42/lstm_127/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_42/lstm_127/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_42/lstm_127/strided_slice_3StridedSliceBsequential_42/lstm_127/TensorArrayV2Stack/TensorListStack:tensor:05sequential_42/lstm_127/strided_slice_3/stack:output:07sequential_42/lstm_127/strided_slice_3/stack_1:output:07sequential_42/lstm_127/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_42/lstm_127/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_42/lstm_127/transpose_1	TransposeBsequential_42/lstm_127/TensorArrayV2Stack/TensorListStack:tensor:00sequential_42/lstm_127/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_42/lstm_127/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_42/lstm_128/ShapeShape&sequential_42/lstm_127/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_42/lstm_128/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_42/lstm_128/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_42/lstm_128/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_42/lstm_128/strided_sliceStridedSlice%sequential_42/lstm_128/Shape:output:03sequential_42/lstm_128/strided_slice/stack:output:05sequential_42/lstm_128/strided_slice/stack_1:output:05sequential_42/lstm_128/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_42/lstm_128/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_42/lstm_128/zeros/packedPack-sequential_42/lstm_128/strided_slice:output:0.sequential_42/lstm_128/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_42/lstm_128/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_42/lstm_128/zerosFill,sequential_42/lstm_128/zeros/packed:output:0+sequential_42/lstm_128/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_42/lstm_128/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_42/lstm_128/zeros_1/packedPack-sequential_42/lstm_128/strided_slice:output:00sequential_42/lstm_128/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_42/lstm_128/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_42/lstm_128/zeros_1Fill.sequential_42/lstm_128/zeros_1/packed:output:0-sequential_42/lstm_128/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_42/lstm_128/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_42/lstm_128/transpose	Transpose&sequential_42/lstm_127/transpose_1:y:0.sequential_42/lstm_128/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_42/lstm_128/Shape_1Shape$sequential_42/lstm_128/transpose:y:0*
T0*
_output_shapes
:v
,sequential_42/lstm_128/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_42/lstm_128/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_42/lstm_128/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_42/lstm_128/strided_slice_1StridedSlice'sequential_42/lstm_128/Shape_1:output:05sequential_42/lstm_128/strided_slice_1/stack:output:07sequential_42/lstm_128/strided_slice_1/stack_1:output:07sequential_42/lstm_128/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_42/lstm_128/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_42/lstm_128/TensorArrayV2TensorListReserve;sequential_42/lstm_128/TensorArrayV2/element_shape:output:0/sequential_42/lstm_128/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_42/lstm_128/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_42/lstm_128/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_42/lstm_128/transpose:y:0Usequential_42/lstm_128/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_42/lstm_128/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_42/lstm_128/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_42/lstm_128/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_42/lstm_128/strided_slice_2StridedSlice$sequential_42/lstm_128/transpose:y:05sequential_42/lstm_128/strided_slice_2/stack:output:07sequential_42/lstm_128/strided_slice_2/stack_1:output:07sequential_42/lstm_128/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_42/lstm_128/lstm_cell_353/MatMul/ReadVariableOpReadVariableOpCsequential_42_lstm_128_lstm_cell_353_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_42/lstm_128/lstm_cell_353/MatMulMatMul/sequential_42/lstm_128/strided_slice_2:output:0Bsequential_42/lstm_128/lstm_cell_353/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_42/lstm_128/lstm_cell_353/MatMul_1/ReadVariableOpReadVariableOpEsequential_42_lstm_128_lstm_cell_353_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_42/lstm_128/lstm_cell_353/MatMul_1MatMul%sequential_42/lstm_128/zeros:output:0Dsequential_42/lstm_128/lstm_cell_353/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_42/lstm_128/lstm_cell_353/addAddV25sequential_42/lstm_128/lstm_cell_353/MatMul:product:07sequential_42/lstm_128/lstm_cell_353/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_42/lstm_128/lstm_cell_353/BiasAdd/ReadVariableOpReadVariableOpDsequential_42_lstm_128_lstm_cell_353_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_42/lstm_128/lstm_cell_353/BiasAddBiasAdd,sequential_42/lstm_128/lstm_cell_353/add:z:0Csequential_42/lstm_128/lstm_cell_353/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_42/lstm_128/lstm_cell_353/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_42/lstm_128/lstm_cell_353/splitSplit=sequential_42/lstm_128/lstm_cell_353/split/split_dim:output:05sequential_42/lstm_128/lstm_cell_353/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_42/lstm_128/lstm_cell_353/SigmoidSigmoid3sequential_42/lstm_128/lstm_cell_353/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_42/lstm_128/lstm_cell_353/Sigmoid_1Sigmoid3sequential_42/lstm_128/lstm_cell_353/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_42/lstm_128/lstm_cell_353/mulMul2sequential_42/lstm_128/lstm_cell_353/Sigmoid_1:y:0'sequential_42/lstm_128/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_42/lstm_128/lstm_cell_353/ReluRelu3sequential_42/lstm_128/lstm_cell_353/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_42/lstm_128/lstm_cell_353/mul_1Mul0sequential_42/lstm_128/lstm_cell_353/Sigmoid:y:07sequential_42/lstm_128/lstm_cell_353/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_42/lstm_128/lstm_cell_353/add_1AddV2,sequential_42/lstm_128/lstm_cell_353/mul:z:0.sequential_42/lstm_128/lstm_cell_353/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_42/lstm_128/lstm_cell_353/Sigmoid_2Sigmoid3sequential_42/lstm_128/lstm_cell_353/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_42/lstm_128/lstm_cell_353/Relu_1Relu.sequential_42/lstm_128/lstm_cell_353/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_42/lstm_128/lstm_cell_353/mul_2Mul2sequential_42/lstm_128/lstm_cell_353/Sigmoid_2:y:09sequential_42/lstm_128/lstm_cell_353/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_42/lstm_128/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_42/lstm_128/TensorArrayV2_1TensorListReserve=sequential_42/lstm_128/TensorArrayV2_1/element_shape:output:0/sequential_42/lstm_128/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_42/lstm_128/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_42/lstm_128/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_42/lstm_128/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_42/lstm_128/whileWhile2sequential_42/lstm_128/while/loop_counter:output:08sequential_42/lstm_128/while/maximum_iterations:output:0$sequential_42/lstm_128/time:output:0/sequential_42/lstm_128/TensorArrayV2_1:handle:0%sequential_42/lstm_128/zeros:output:0'sequential_42/lstm_128/zeros_1:output:0/sequential_42/lstm_128/strided_slice_1:output:0Nsequential_42/lstm_128/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_42_lstm_128_lstm_cell_353_matmul_readvariableop_resourceEsequential_42_lstm_128_lstm_cell_353_matmul_1_readvariableop_resourceDsequential_42_lstm_128_lstm_cell_353_biasadd_readvariableop_resource*
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
)sequential_42_lstm_128_while_body_2135208*5
cond-R+
)sequential_42_lstm_128_while_cond_2135207*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_42/lstm_128/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_42/lstm_128/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_42/lstm_128/while:output:3Psequential_42/lstm_128/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_42/lstm_128/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_42/lstm_128/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_42/lstm_128/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_42/lstm_128/strided_slice_3StridedSliceBsequential_42/lstm_128/TensorArrayV2Stack/TensorListStack:tensor:05sequential_42/lstm_128/strided_slice_3/stack:output:07sequential_42/lstm_128/strided_slice_3/stack_1:output:07sequential_42/lstm_128/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_42/lstm_128/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_42/lstm_128/transpose_1	TransposeBsequential_42/lstm_128/TensorArrayV2Stack/TensorListStack:tensor:00sequential_42/lstm_128/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_42/lstm_128/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_42/dense_42/MatMul/ReadVariableOpReadVariableOp5sequential_42_dense_42_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_42/dense_42/MatMulMatMul/sequential_42/lstm_128/strided_slice_3:output:04sequential_42/dense_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_42/dense_42/BiasAdd/ReadVariableOpReadVariableOp6sequential_42_dense_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_42/dense_42/BiasAddBiasAdd'sequential_42/dense_42/MatMul:product:05sequential_42/dense_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_42/dense_42/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_42/dense_42/BiasAdd/ReadVariableOp-^sequential_42/dense_42/MatMul/ReadVariableOp<^sequential_42/lstm_126/lstm_cell_351/BiasAdd/ReadVariableOp;^sequential_42/lstm_126/lstm_cell_351/MatMul/ReadVariableOp=^sequential_42/lstm_126/lstm_cell_351/MatMul_1/ReadVariableOp^sequential_42/lstm_126/while<^sequential_42/lstm_127/lstm_cell_352/BiasAdd/ReadVariableOp;^sequential_42/lstm_127/lstm_cell_352/MatMul/ReadVariableOp=^sequential_42/lstm_127/lstm_cell_352/MatMul_1/ReadVariableOp^sequential_42/lstm_127/while<^sequential_42/lstm_128/lstm_cell_353/BiasAdd/ReadVariableOp;^sequential_42/lstm_128/lstm_cell_353/MatMul/ReadVariableOp=^sequential_42/lstm_128/lstm_cell_353/MatMul_1/ReadVariableOp^sequential_42/lstm_128/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_42/dense_42/BiasAdd/ReadVariableOp-sequential_42/dense_42/BiasAdd/ReadVariableOp2\
,sequential_42/dense_42/MatMul/ReadVariableOp,sequential_42/dense_42/MatMul/ReadVariableOp2z
;sequential_42/lstm_126/lstm_cell_351/BiasAdd/ReadVariableOp;sequential_42/lstm_126/lstm_cell_351/BiasAdd/ReadVariableOp2x
:sequential_42/lstm_126/lstm_cell_351/MatMul/ReadVariableOp:sequential_42/lstm_126/lstm_cell_351/MatMul/ReadVariableOp2|
<sequential_42/lstm_126/lstm_cell_351/MatMul_1/ReadVariableOp<sequential_42/lstm_126/lstm_cell_351/MatMul_1/ReadVariableOp2<
sequential_42/lstm_126/whilesequential_42/lstm_126/while2z
;sequential_42/lstm_127/lstm_cell_352/BiasAdd/ReadVariableOp;sequential_42/lstm_127/lstm_cell_352/BiasAdd/ReadVariableOp2x
:sequential_42/lstm_127/lstm_cell_352/MatMul/ReadVariableOp:sequential_42/lstm_127/lstm_cell_352/MatMul/ReadVariableOp2|
<sequential_42/lstm_127/lstm_cell_352/MatMul_1/ReadVariableOp<sequential_42/lstm_127/lstm_cell_352/MatMul_1/ReadVariableOp2<
sequential_42/lstm_127/whilesequential_42/lstm_127/while2z
;sequential_42/lstm_128/lstm_cell_353/BiasAdd/ReadVariableOp;sequential_42/lstm_128/lstm_cell_353/BiasAdd/ReadVariableOp2x
:sequential_42/lstm_128/lstm_cell_353/MatMul/ReadVariableOp:sequential_42/lstm_128/lstm_cell_353/MatMul/ReadVariableOp2|
<sequential_42/lstm_128/lstm_cell_353/MatMul_1/ReadVariableOp<sequential_42/lstm_128/lstm_cell_353/MatMul_1/ReadVariableOp2<
sequential_42/lstm_128/whilesequential_42/lstm_128/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_126_input
?K
?
E__inference_lstm_127_layer_call_and_return_conditional_losses_2139269
inputs_0?
,lstm_cell_352_matmul_readvariableop_resource:	d?A
.lstm_cell_352_matmul_1_readvariableop_resource:	2?<
-lstm_cell_352_biasadd_readvariableop_resource:	?
identity??$lstm_cell_352/BiasAdd/ReadVariableOp?#lstm_cell_352/MatMul/ReadVariableOp?%lstm_cell_352/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_352/MatMul/ReadVariableOpReadVariableOp,lstm_cell_352_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_352/MatMulMatMulstrided_slice_2:output:0+lstm_cell_352/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_352/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_352_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_352/MatMul_1MatMulzeros:output:0-lstm_cell_352/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_352/addAddV2lstm_cell_352/MatMul:product:0 lstm_cell_352/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_352/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_352_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_352/BiasAddBiasAddlstm_cell_352/add:z:0,lstm_cell_352/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_352/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_352/splitSplit&lstm_cell_352/split/split_dim:output:0lstm_cell_352/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_352/SigmoidSigmoidlstm_cell_352/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_352/Sigmoid_1Sigmoidlstm_cell_352/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_352/mulMullstm_cell_352/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_352/ReluRelulstm_cell_352/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_352/mul_1Mullstm_cell_352/Sigmoid:y:0 lstm_cell_352/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_352/add_1AddV2lstm_cell_352/mul:z:0lstm_cell_352/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_352/Sigmoid_2Sigmoidlstm_cell_352/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_352/Relu_1Relulstm_cell_352/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_352/mul_2Mullstm_cell_352/Sigmoid_2:y:0"lstm_cell_352/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_352_matmul_readvariableop_resource.lstm_cell_352_matmul_1_readvariableop_resource-lstm_cell_352_biasadd_readvariableop_resource*
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
while_body_2139185*
condR
while_cond_2139184*K
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
NoOpNoOp%^lstm_cell_352/BiasAdd/ReadVariableOp$^lstm_cell_352/MatMul/ReadVariableOp&^lstm_cell_352/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_352/BiasAdd/ReadVariableOp$lstm_cell_352/BiasAdd/ReadVariableOp2J
#lstm_cell_352/MatMul/ReadVariableOp#lstm_cell_352/MatMul/ReadVariableOp2N
%lstm_cell_352/MatMul_1/ReadVariableOp%lstm_cell_352/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_2140086
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2140086___redundant_placeholder05
1while_while_cond_2140086___redundant_placeholder15
1while_while_cond_2140086___redundant_placeholder25
1while_while_cond_2140086___redundant_placeholder3
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
??
?
#__inference__traced_restore_2140900
file_prefix2
 assignvariableop_dense_42_kernel:
.
 assignvariableop_1_dense_42_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_126_lstm_cell_126_kernel:	?M
:assignvariableop_8_lstm_126_lstm_cell_126_recurrent_kernel:	d?=
.assignvariableop_9_lstm_126_lstm_cell_126_bias:	?D
1assignvariableop_10_lstm_127_lstm_cell_127_kernel:	d?N
;assignvariableop_11_lstm_127_lstm_cell_127_recurrent_kernel:	2?>
/assignvariableop_12_lstm_127_lstm_cell_127_bias:	?C
1assignvariableop_13_lstm_128_lstm_cell_128_kernel:2(M
;assignvariableop_14_lstm_128_lstm_cell_128_recurrent_kernel:
(=
/assignvariableop_15_lstm_128_lstm_cell_128_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_42_kernel_m:
6
(assignvariableop_19_adam_dense_42_bias_m:K
8assignvariableop_20_adam_lstm_126_lstm_cell_126_kernel_m:	?U
Bassignvariableop_21_adam_lstm_126_lstm_cell_126_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_126_lstm_cell_126_bias_m:	?K
8assignvariableop_23_adam_lstm_127_lstm_cell_127_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_127_lstm_cell_127_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_127_lstm_cell_127_bias_m:	?J
8assignvariableop_26_adam_lstm_128_lstm_cell_128_kernel_m:2(T
Bassignvariableop_27_adam_lstm_128_lstm_cell_128_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_128_lstm_cell_128_bias_m:(<
*assignvariableop_29_adam_dense_42_kernel_v:
6
(assignvariableop_30_adam_dense_42_bias_v:K
8assignvariableop_31_adam_lstm_126_lstm_cell_126_kernel_v:	?U
Bassignvariableop_32_adam_lstm_126_lstm_cell_126_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_126_lstm_cell_126_bias_v:	?K
8assignvariableop_34_adam_lstm_127_lstm_cell_127_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_127_lstm_cell_127_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_127_lstm_cell_127_bias_v:	?J
8assignvariableop_37_adam_lstm_128_lstm_cell_128_kernel_v:2(T
Bassignvariableop_38_adam_lstm_128_lstm_cell_128_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_128_lstm_cell_128_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_42_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_42_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_126_lstm_cell_126_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_126_lstm_cell_126_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_126_lstm_cell_126_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_127_lstm_cell_127_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_127_lstm_cell_127_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_127_lstm_cell_127_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_128_lstm_cell_128_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_128_lstm_cell_128_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_128_lstm_cell_128_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_42_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_42_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_126_lstm_cell_126_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_126_lstm_cell_126_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_126_lstm_cell_126_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_127_lstm_cell_127_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_127_lstm_cell_127_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_127_lstm_cell_127_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_128_lstm_cell_128_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_128_lstm_cell_128_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_128_lstm_cell_128_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_42_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_42_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_126_lstm_cell_126_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_126_lstm_cell_126_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_126_lstm_cell_126_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_127_lstm_cell_127_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_127_lstm_cell_127_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_127_lstm_cell_127_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_128_lstm_cell_128_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_128_lstm_cell_128_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_128_lstm_cell_128_bias_vIdentity_39:output:0"/device:CPU:0*
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
?#
?
while_body_2135570
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_351_2135594_0:	?0
while_lstm_cell_351_2135596_0:	d?,
while_lstm_cell_351_2135598_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_351_2135594:	?.
while_lstm_cell_351_2135596:	d?*
while_lstm_cell_351_2135598:	???+while/lstm_cell_351/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_351/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_351_2135594_0while_lstm_cell_351_2135596_0while_lstm_cell_351_2135598_0*
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
J__inference_lstm_cell_351_layer_call_and_return_conditional_losses_2135511?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_351/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_351/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_351/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_351/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_351_2135594while_lstm_cell_351_2135594_0"<
while_lstm_cell_351_2135596while_lstm_cell_351_2135596_0"<
while_lstm_cell_351_2135598while_lstm_cell_351_2135598_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_351/StatefulPartitionedCall+while/lstm_cell_351/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_127_while_body_2138237.
*lstm_127_while_lstm_127_while_loop_counter4
0lstm_127_while_lstm_127_while_maximum_iterations
lstm_127_while_placeholder 
lstm_127_while_placeholder_1 
lstm_127_while_placeholder_2 
lstm_127_while_placeholder_3-
)lstm_127_while_lstm_127_strided_slice_1_0i
elstm_127_while_tensorarrayv2read_tensorlistgetitem_lstm_127_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_127_while_lstm_cell_352_matmul_readvariableop_resource_0:	d?R
?lstm_127_while_lstm_cell_352_matmul_1_readvariableop_resource_0:	2?M
>lstm_127_while_lstm_cell_352_biasadd_readvariableop_resource_0:	?
lstm_127_while_identity
lstm_127_while_identity_1
lstm_127_while_identity_2
lstm_127_while_identity_3
lstm_127_while_identity_4
lstm_127_while_identity_5+
'lstm_127_while_lstm_127_strided_slice_1g
clstm_127_while_tensorarrayv2read_tensorlistgetitem_lstm_127_tensorarrayunstack_tensorlistfromtensorN
;lstm_127_while_lstm_cell_352_matmul_readvariableop_resource:	d?P
=lstm_127_while_lstm_cell_352_matmul_1_readvariableop_resource:	2?K
<lstm_127_while_lstm_cell_352_biasadd_readvariableop_resource:	???3lstm_127/while/lstm_cell_352/BiasAdd/ReadVariableOp?2lstm_127/while/lstm_cell_352/MatMul/ReadVariableOp?4lstm_127/while/lstm_cell_352/MatMul_1/ReadVariableOp?
@lstm_127/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_127/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_127_while_tensorarrayv2read_tensorlistgetitem_lstm_127_tensorarrayunstack_tensorlistfromtensor_0lstm_127_while_placeholderIlstm_127/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_127/while/lstm_cell_352/MatMul/ReadVariableOpReadVariableOp=lstm_127_while_lstm_cell_352_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_127/while/lstm_cell_352/MatMulMatMul9lstm_127/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_127/while/lstm_cell_352/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_127/while/lstm_cell_352/MatMul_1/ReadVariableOpReadVariableOp?lstm_127_while_lstm_cell_352_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_127/while/lstm_cell_352/MatMul_1MatMullstm_127_while_placeholder_2<lstm_127/while/lstm_cell_352/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_127/while/lstm_cell_352/addAddV2-lstm_127/while/lstm_cell_352/MatMul:product:0/lstm_127/while/lstm_cell_352/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_127/while/lstm_cell_352/BiasAdd/ReadVariableOpReadVariableOp>lstm_127_while_lstm_cell_352_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_127/while/lstm_cell_352/BiasAddBiasAdd$lstm_127/while/lstm_cell_352/add:z:0;lstm_127/while/lstm_cell_352/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_127/while/lstm_cell_352/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_127/while/lstm_cell_352/splitSplit5lstm_127/while/lstm_cell_352/split/split_dim:output:0-lstm_127/while/lstm_cell_352/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_127/while/lstm_cell_352/SigmoidSigmoid+lstm_127/while/lstm_cell_352/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_127/while/lstm_cell_352/Sigmoid_1Sigmoid+lstm_127/while/lstm_cell_352/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_127/while/lstm_cell_352/mulMul*lstm_127/while/lstm_cell_352/Sigmoid_1:y:0lstm_127_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_127/while/lstm_cell_352/ReluRelu+lstm_127/while/lstm_cell_352/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_127/while/lstm_cell_352/mul_1Mul(lstm_127/while/lstm_cell_352/Sigmoid:y:0/lstm_127/while/lstm_cell_352/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_127/while/lstm_cell_352/add_1AddV2$lstm_127/while/lstm_cell_352/mul:z:0&lstm_127/while/lstm_cell_352/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_127/while/lstm_cell_352/Sigmoid_2Sigmoid+lstm_127/while/lstm_cell_352/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_127/while/lstm_cell_352/Relu_1Relu&lstm_127/while/lstm_cell_352/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_127/while/lstm_cell_352/mul_2Mul*lstm_127/while/lstm_cell_352/Sigmoid_2:y:01lstm_127/while/lstm_cell_352/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_127/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_127_while_placeholder_1lstm_127_while_placeholder&lstm_127/while/lstm_cell_352/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_127/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_127/while/addAddV2lstm_127_while_placeholderlstm_127/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_127/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_127/while/add_1AddV2*lstm_127_while_lstm_127_while_loop_counterlstm_127/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_127/while/IdentityIdentitylstm_127/while/add_1:z:0^lstm_127/while/NoOp*
T0*
_output_shapes
: ?
lstm_127/while/Identity_1Identity0lstm_127_while_lstm_127_while_maximum_iterations^lstm_127/while/NoOp*
T0*
_output_shapes
: t
lstm_127/while/Identity_2Identitylstm_127/while/add:z:0^lstm_127/while/NoOp*
T0*
_output_shapes
: ?
lstm_127/while/Identity_3IdentityClstm_127/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_127/while/NoOp*
T0*
_output_shapes
: ?
lstm_127/while/Identity_4Identity&lstm_127/while/lstm_cell_352/mul_2:z:0^lstm_127/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_127/while/Identity_5Identity&lstm_127/while/lstm_cell_352/add_1:z:0^lstm_127/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_127/while/NoOpNoOp4^lstm_127/while/lstm_cell_352/BiasAdd/ReadVariableOp3^lstm_127/while/lstm_cell_352/MatMul/ReadVariableOp5^lstm_127/while/lstm_cell_352/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_127_while_identity lstm_127/while/Identity:output:0"?
lstm_127_while_identity_1"lstm_127/while/Identity_1:output:0"?
lstm_127_while_identity_2"lstm_127/while/Identity_2:output:0"?
lstm_127_while_identity_3"lstm_127/while/Identity_3:output:0"?
lstm_127_while_identity_4"lstm_127/while/Identity_4:output:0"?
lstm_127_while_identity_5"lstm_127/while/Identity_5:output:0"T
'lstm_127_while_lstm_127_strided_slice_1)lstm_127_while_lstm_127_strided_slice_1_0"~
<lstm_127_while_lstm_cell_352_biasadd_readvariableop_resource>lstm_127_while_lstm_cell_352_biasadd_readvariableop_resource_0"?
=lstm_127_while_lstm_cell_352_matmul_1_readvariableop_resource?lstm_127_while_lstm_cell_352_matmul_1_readvariableop_resource_0"|
;lstm_127_while_lstm_cell_352_matmul_readvariableop_resource=lstm_127_while_lstm_cell_352_matmul_readvariableop_resource_0"?
clstm_127_while_tensorarrayv2read_tensorlistgetitem_lstm_127_tensorarrayunstack_tensorlistfromtensorelstm_127_while_tensorarrayv2read_tensorlistgetitem_lstm_127_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_127/while/lstm_cell_352/BiasAdd/ReadVariableOp3lstm_127/while/lstm_cell_352/BiasAdd/ReadVariableOp2h
2lstm_127/while/lstm_cell_352/MatMul/ReadVariableOp2lstm_127/while/lstm_cell_352/MatMul/ReadVariableOp2l
4lstm_127/while/lstm_cell_352/MatMul_1/ReadVariableOp4lstm_127/while/lstm_cell_352/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_127_layer_call_and_return_conditional_losses_2137178

inputs?
,lstm_cell_352_matmul_readvariableop_resource:	d?A
.lstm_cell_352_matmul_1_readvariableop_resource:	2?<
-lstm_cell_352_biasadd_readvariableop_resource:	?
identity??$lstm_cell_352/BiasAdd/ReadVariableOp?#lstm_cell_352/MatMul/ReadVariableOp?%lstm_cell_352/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_352/MatMul/ReadVariableOpReadVariableOp,lstm_cell_352_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_352/MatMulMatMulstrided_slice_2:output:0+lstm_cell_352/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_352/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_352_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_352/MatMul_1MatMulzeros:output:0-lstm_cell_352/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_352/addAddV2lstm_cell_352/MatMul:product:0 lstm_cell_352/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_352/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_352_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_352/BiasAddBiasAddlstm_cell_352/add:z:0,lstm_cell_352/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_352/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_352/splitSplit&lstm_cell_352/split/split_dim:output:0lstm_cell_352/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_352/SigmoidSigmoidlstm_cell_352/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_352/Sigmoid_1Sigmoidlstm_cell_352/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_352/mulMullstm_cell_352/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_352/ReluRelulstm_cell_352/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_352/mul_1Mullstm_cell_352/Sigmoid:y:0 lstm_cell_352/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_352/add_1AddV2lstm_cell_352/mul:z:0lstm_cell_352/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_352/Sigmoid_2Sigmoidlstm_cell_352/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_352/Relu_1Relulstm_cell_352/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_352/mul_2Mullstm_cell_352/Sigmoid_2:y:0"lstm_cell_352/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_352_matmul_readvariableop_resource.lstm_cell_352_matmul_1_readvariableop_resource-lstm_cell_352_biasadd_readvariableop_resource*
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
while_body_2137094*
condR
while_cond_2137093*K
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
NoOpNoOp%^lstm_cell_352/BiasAdd/ReadVariableOp$^lstm_cell_352/MatMul/ReadVariableOp&^lstm_cell_352/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_352/BiasAdd/ReadVariableOp$lstm_cell_352/BiasAdd/ReadVariableOp2J
#lstm_cell_352/MatMul/ReadVariableOp#lstm_cell_352/MatMul/ReadVariableOp2N
%lstm_cell_352/MatMul_1/ReadVariableOp%lstm_cell_352/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_2139944
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_353_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_353_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_353_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_353_matmul_readvariableop_resource:2(F
4while_lstm_cell_353_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_353_biasadd_readvariableop_resource:(??*while/lstm_cell_353/BiasAdd/ReadVariableOp?)while/lstm_cell_353/MatMul/ReadVariableOp?+while/lstm_cell_353/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_353/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_353_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_353/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_353/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_353/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_353_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_353/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_353/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_353/addAddV2$while/lstm_cell_353/MatMul:product:0&while/lstm_cell_353/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_353/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_353_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_353/BiasAddBiasAddwhile/lstm_cell_353/add:z:02while/lstm_cell_353/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_353/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_353/splitSplit,while/lstm_cell_353/split/split_dim:output:0$while/lstm_cell_353/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_353/SigmoidSigmoid"while/lstm_cell_353/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_353/Sigmoid_1Sigmoid"while/lstm_cell_353/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_353/mulMul!while/lstm_cell_353/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_353/ReluRelu"while/lstm_cell_353/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_353/mul_1Mulwhile/lstm_cell_353/Sigmoid:y:0&while/lstm_cell_353/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_353/add_1AddV2while/lstm_cell_353/mul:z:0while/lstm_cell_353/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_353/Sigmoid_2Sigmoid"while/lstm_cell_353/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_353/Relu_1Reluwhile/lstm_cell_353/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_353/mul_2Mul!while/lstm_cell_353/Sigmoid_2:y:0(while/lstm_cell_353/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_353/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_353/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_353/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_353/BiasAdd/ReadVariableOp*^while/lstm_cell_353/MatMul/ReadVariableOp,^while/lstm_cell_353/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_353_biasadd_readvariableop_resource5while_lstm_cell_353_biasadd_readvariableop_resource_0"n
4while_lstm_cell_353_matmul_1_readvariableop_resource6while_lstm_cell_353_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_353_matmul_readvariableop_resource4while_lstm_cell_353_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_353/BiasAdd/ReadVariableOp*while/lstm_cell_353/BiasAdd/ReadVariableOp2V
)while/lstm_cell_353/MatMul/ReadVariableOp)while/lstm_cell_353/MatMul/ReadVariableOp2Z
+while/lstm_cell_353/MatMul_1/ReadVariableOp+while/lstm_cell_353/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2138854
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2138854___redundant_placeholder05
1while_while_cond_2138854___redundant_placeholder15
1while_while_cond_2138854___redundant_placeholder25
1while_while_cond_2138854___redundant_placeholder3
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
E__inference_lstm_127_layer_call_and_return_conditional_losses_2139555

inputs?
,lstm_cell_352_matmul_readvariableop_resource:	d?A
.lstm_cell_352_matmul_1_readvariableop_resource:	2?<
-lstm_cell_352_biasadd_readvariableop_resource:	?
identity??$lstm_cell_352/BiasAdd/ReadVariableOp?#lstm_cell_352/MatMul/ReadVariableOp?%lstm_cell_352/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_352/MatMul/ReadVariableOpReadVariableOp,lstm_cell_352_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_352/MatMulMatMulstrided_slice_2:output:0+lstm_cell_352/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_352/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_352_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_352/MatMul_1MatMulzeros:output:0-lstm_cell_352/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_352/addAddV2lstm_cell_352/MatMul:product:0 lstm_cell_352/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_352/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_352_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_352/BiasAddBiasAddlstm_cell_352/add:z:0,lstm_cell_352/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_352/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_352/splitSplit&lstm_cell_352/split/split_dim:output:0lstm_cell_352/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_352/SigmoidSigmoidlstm_cell_352/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_352/Sigmoid_1Sigmoidlstm_cell_352/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_352/mulMullstm_cell_352/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_352/ReluRelulstm_cell_352/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_352/mul_1Mullstm_cell_352/Sigmoid:y:0 lstm_cell_352/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_352/add_1AddV2lstm_cell_352/mul:z:0lstm_cell_352/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_352/Sigmoid_2Sigmoidlstm_cell_352/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_352/Relu_1Relulstm_cell_352/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_352/mul_2Mullstm_cell_352/Sigmoid_2:y:0"lstm_cell_352/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_352_matmul_readvariableop_resource.lstm_cell_352_matmul_1_readvariableop_resource-lstm_cell_352_biasadd_readvariableop_resource*
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
while_body_2139471*
condR
while_cond_2139470*K
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
NoOpNoOp%^lstm_cell_352/BiasAdd/ReadVariableOp$^lstm_cell_352/MatMul/ReadVariableOp&^lstm_cell_352/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_352/BiasAdd/ReadVariableOp$lstm_cell_352/BiasAdd/ReadVariableOp2J
#lstm_cell_352/MatMul/ReadVariableOp#lstm_cell_352/MatMul/ReadVariableOp2N
%lstm_cell_352/MatMul_1/ReadVariableOp%lstm_cell_352/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
)sequential_42_lstm_126_while_cond_2134929J
Fsequential_42_lstm_126_while_sequential_42_lstm_126_while_loop_counterP
Lsequential_42_lstm_126_while_sequential_42_lstm_126_while_maximum_iterations,
(sequential_42_lstm_126_while_placeholder.
*sequential_42_lstm_126_while_placeholder_1.
*sequential_42_lstm_126_while_placeholder_2.
*sequential_42_lstm_126_while_placeholder_3L
Hsequential_42_lstm_126_while_less_sequential_42_lstm_126_strided_slice_1c
_sequential_42_lstm_126_while_sequential_42_lstm_126_while_cond_2134929___redundant_placeholder0c
_sequential_42_lstm_126_while_sequential_42_lstm_126_while_cond_2134929___redundant_placeholder1c
_sequential_42_lstm_126_while_sequential_42_lstm_126_while_cond_2134929___redundant_placeholder2c
_sequential_42_lstm_126_while_sequential_42_lstm_126_while_cond_2134929___redundant_placeholder3)
%sequential_42_lstm_126_while_identity
?
!sequential_42/lstm_126/while/LessLess(sequential_42_lstm_126_while_placeholderHsequential_42_lstm_126_while_less_sequential_42_lstm_126_strided_slice_1*
T0*
_output_shapes
: y
%sequential_42/lstm_126/while/IdentityIdentity%sequential_42/lstm_126/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_42_lstm_126_while_identity.sequential_42/lstm_126/while/Identity:output:0*(
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
J__inference_sequential_42_layer_call_and_return_conditional_losses_2136822

inputs#
lstm_126_2136498:	?#
lstm_126_2136500:	d?
lstm_126_2136502:	?#
lstm_127_2136648:	d?#
lstm_127_2136650:	2?
lstm_127_2136652:	?"
lstm_128_2136798:2("
lstm_128_2136800:
(
lstm_128_2136802:("
dense_42_2136816:

dense_42_2136818:
identity?? dense_42/StatefulPartitionedCall? lstm_126/StatefulPartitionedCall? lstm_127/StatefulPartitionedCall? lstm_128/StatefulPartitionedCall?
 lstm_126/StatefulPartitionedCallStatefulPartitionedCallinputslstm_126_2136498lstm_126_2136500lstm_126_2136502*
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
E__inference_lstm_126_layer_call_and_return_conditional_losses_2136497?
 lstm_127/StatefulPartitionedCallStatefulPartitionedCall)lstm_126/StatefulPartitionedCall:output:0lstm_127_2136648lstm_127_2136650lstm_127_2136652*
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
E__inference_lstm_127_layer_call_and_return_conditional_losses_2136647?
 lstm_128/StatefulPartitionedCallStatefulPartitionedCall)lstm_127/StatefulPartitionedCall:output:0lstm_128_2136798lstm_128_2136800lstm_128_2136802*
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
E__inference_lstm_128_layer_call_and_return_conditional_losses_2136797?
 dense_42/StatefulPartitionedCallStatefulPartitionedCall)lstm_128/StatefulPartitionedCall:output:0dense_42_2136816dense_42_2136818*
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
E__inference_dense_42_layer_call_and_return_conditional_losses_2136815x
IdentityIdentity)dense_42/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_42/StatefulPartitionedCall!^lstm_126/StatefulPartitionedCall!^lstm_127/StatefulPartitionedCall!^lstm_128/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 lstm_126/StatefulPartitionedCall lstm_126/StatefulPartitionedCall2D
 lstm_127/StatefulPartitionedCall lstm_127/StatefulPartitionedCall2D
 lstm_128/StatefulPartitionedCall lstm_128/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_127_layer_call_fn_2139126

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
E__inference_lstm_127_layer_call_and_return_conditional_losses_2137178s
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
?K
?
E__inference_lstm_128_layer_call_and_return_conditional_losses_2139885
inputs_0>
,lstm_cell_353_matmul_readvariableop_resource:2(@
.lstm_cell_353_matmul_1_readvariableop_resource:
(;
-lstm_cell_353_biasadd_readvariableop_resource:(
identity??$lstm_cell_353/BiasAdd/ReadVariableOp?#lstm_cell_353/MatMul/ReadVariableOp?%lstm_cell_353/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_353/MatMul/ReadVariableOpReadVariableOp,lstm_cell_353_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_353/MatMulMatMulstrided_slice_2:output:0+lstm_cell_353/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_353/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_353_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_353/MatMul_1MatMulzeros:output:0-lstm_cell_353/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_353/addAddV2lstm_cell_353/MatMul:product:0 lstm_cell_353/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_353/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_353_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_353/BiasAddBiasAddlstm_cell_353/add:z:0,lstm_cell_353/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_353/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_353/splitSplit&lstm_cell_353/split/split_dim:output:0lstm_cell_353/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_353/SigmoidSigmoidlstm_cell_353/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_353/Sigmoid_1Sigmoidlstm_cell_353/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_353/mulMullstm_cell_353/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_353/ReluRelulstm_cell_353/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_353/mul_1Mullstm_cell_353/Sigmoid:y:0 lstm_cell_353/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_353/add_1AddV2lstm_cell_353/mul:z:0lstm_cell_353/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_353/Sigmoid_2Sigmoidlstm_cell_353/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_353/Relu_1Relulstm_cell_353/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_353/mul_2Mullstm_cell_353/Sigmoid_2:y:0"lstm_cell_353/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_353_matmul_readvariableop_resource.lstm_cell_353_matmul_1_readvariableop_resource-lstm_cell_353_biasadd_readvariableop_resource*
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
while_body_2139801*
condR
while_cond_2139800*K
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
NoOpNoOp%^lstm_cell_353/BiasAdd/ReadVariableOp$^lstm_cell_353/MatMul/ReadVariableOp&^lstm_cell_353/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_353/BiasAdd/ReadVariableOp$lstm_cell_353/BiasAdd/ReadVariableOp2J
#lstm_cell_353/MatMul/ReadVariableOp#lstm_cell_353/MatMul/ReadVariableOp2N
%lstm_cell_353/MatMul_1/ReadVariableOp%lstm_cell_353/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_sequential_42_layer_call_and_return_conditional_losses_2137493
lstm_126_input#
lstm_126_2137466:	?#
lstm_126_2137468:	d?
lstm_126_2137470:	?#
lstm_127_2137473:	d?#
lstm_127_2137475:	2?
lstm_127_2137477:	?"
lstm_128_2137480:2("
lstm_128_2137482:
(
lstm_128_2137484:("
dense_42_2137487:

dense_42_2137489:
identity?? dense_42/StatefulPartitionedCall? lstm_126/StatefulPartitionedCall? lstm_127/StatefulPartitionedCall? lstm_128/StatefulPartitionedCall?
 lstm_126/StatefulPartitionedCallStatefulPartitionedCalllstm_126_inputlstm_126_2137466lstm_126_2137468lstm_126_2137470*
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
E__inference_lstm_126_layer_call_and_return_conditional_losses_2136497?
 lstm_127/StatefulPartitionedCallStatefulPartitionedCall)lstm_126/StatefulPartitionedCall:output:0lstm_127_2137473lstm_127_2137475lstm_127_2137477*
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
E__inference_lstm_127_layer_call_and_return_conditional_losses_2136647?
 lstm_128/StatefulPartitionedCallStatefulPartitionedCall)lstm_127/StatefulPartitionedCall:output:0lstm_128_2137480lstm_128_2137482lstm_128_2137484*
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
E__inference_lstm_128_layer_call_and_return_conditional_losses_2136797?
 dense_42/StatefulPartitionedCallStatefulPartitionedCall)lstm_128/StatefulPartitionedCall:output:0dense_42_2137487dense_42_2137489*
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
E__inference_dense_42_layer_call_and_return_conditional_losses_2136815x
IdentityIdentity)dense_42/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_42/StatefulPartitionedCall!^lstm_126/StatefulPartitionedCall!^lstm_127/StatefulPartitionedCall!^lstm_128/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 lstm_126/StatefulPartitionedCall lstm_126/StatefulPartitionedCall2D
 lstm_127/StatefulPartitionedCall lstm_127/StatefulPartitionedCall2D
 lstm_128/StatefulPartitionedCall lstm_128/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_126_input
?
?
while_cond_2139184
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2139184___redundant_placeholder05
1while_while_cond_2139184___redundant_placeholder15
1while_while_cond_2139184___redundant_placeholder25
1while_while_cond_2139184___redundant_placeholder3
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
E__inference_lstm_128_layer_call_and_return_conditional_losses_2136148

inputs'
lstm_cell_353_2136066:2('
lstm_cell_353_2136068:
(#
lstm_cell_353_2136070:(
identity??%lstm_cell_353/StatefulPartitionedCall?while;
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
%lstm_cell_353/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_353_2136066lstm_cell_353_2136068lstm_cell_353_2136070*
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
J__inference_lstm_cell_353_layer_call_and_return_conditional_losses_2136065n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_353_2136066lstm_cell_353_2136068lstm_cell_353_2136070*
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
while_body_2136079*
condR
while_cond_2136078*K
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
NoOpNoOp&^lstm_cell_353/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_353/StatefulPartitionedCall%lstm_cell_353/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_2136712
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2136712___redundant_placeholder05
1while_while_cond_2136712___redundant_placeholder15
1while_while_cond_2136712___redundant_placeholder25
1while_while_cond_2136712___redundant_placeholder3
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
?
?
J__inference_sequential_42_layer_call_and_return_conditional_losses_2137523
lstm_126_input#
lstm_126_2137496:	?#
lstm_126_2137498:	d?
lstm_126_2137500:	?#
lstm_127_2137503:	d?#
lstm_127_2137505:	2?
lstm_127_2137507:	?"
lstm_128_2137510:2("
lstm_128_2137512:
(
lstm_128_2137514:("
dense_42_2137517:

dense_42_2137519:
identity?? dense_42/StatefulPartitionedCall? lstm_126/StatefulPartitionedCall? lstm_127/StatefulPartitionedCall? lstm_128/StatefulPartitionedCall?
 lstm_126/StatefulPartitionedCallStatefulPartitionedCalllstm_126_inputlstm_126_2137496lstm_126_2137498lstm_126_2137500*
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
E__inference_lstm_126_layer_call_and_return_conditional_losses_2137343?
 lstm_127/StatefulPartitionedCallStatefulPartitionedCall)lstm_126/StatefulPartitionedCall:output:0lstm_127_2137503lstm_127_2137505lstm_127_2137507*
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
E__inference_lstm_127_layer_call_and_return_conditional_losses_2137178?
 lstm_128/StatefulPartitionedCallStatefulPartitionedCall)lstm_127/StatefulPartitionedCall:output:0lstm_128_2137510lstm_128_2137512lstm_128_2137514*
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
E__inference_lstm_128_layer_call_and_return_conditional_losses_2137013?
 dense_42/StatefulPartitionedCallStatefulPartitionedCall)lstm_128/StatefulPartitionedCall:output:0dense_42_2137517dense_42_2137519*
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
E__inference_dense_42_layer_call_and_return_conditional_losses_2136815x
IdentityIdentity)dense_42/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_42/StatefulPartitionedCall!^lstm_126/StatefulPartitionedCall!^lstm_127/StatefulPartitionedCall!^lstm_128/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 lstm_126/StatefulPartitionedCall lstm_126/StatefulPartitionedCall2D
 lstm_127/StatefulPartitionedCall lstm_127/StatefulPartitionedCall2D
 lstm_128/StatefulPartitionedCall lstm_128/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_126_input
?
?
while_cond_2139800
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2139800___redundant_placeholder05
1while_while_cond_2139800___redundant_placeholder15
1while_while_cond_2139800___redundant_placeholder25
1while_while_cond_2139800___redundant_placeholder3
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
while_body_2139801
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_353_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_353_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_353_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_353_matmul_readvariableop_resource:2(F
4while_lstm_cell_353_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_353_biasadd_readvariableop_resource:(??*while/lstm_cell_353/BiasAdd/ReadVariableOp?)while/lstm_cell_353/MatMul/ReadVariableOp?+while/lstm_cell_353/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_353/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_353_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_353/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_353/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_353/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_353_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_353/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_353/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_353/addAddV2$while/lstm_cell_353/MatMul:product:0&while/lstm_cell_353/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_353/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_353_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_353/BiasAddBiasAddwhile/lstm_cell_353/add:z:02while/lstm_cell_353/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_353/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_353/splitSplit,while/lstm_cell_353/split/split_dim:output:0$while/lstm_cell_353/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_353/SigmoidSigmoid"while/lstm_cell_353/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_353/Sigmoid_1Sigmoid"while/lstm_cell_353/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_353/mulMul!while/lstm_cell_353/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_353/ReluRelu"while/lstm_cell_353/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_353/mul_1Mulwhile/lstm_cell_353/Sigmoid:y:0&while/lstm_cell_353/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_353/add_1AddV2while/lstm_cell_353/mul:z:0while/lstm_cell_353/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_353/Sigmoid_2Sigmoid"while/lstm_cell_353/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_353/Relu_1Reluwhile/lstm_cell_353/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_353/mul_2Mul!while/lstm_cell_353/Sigmoid_2:y:0(while/lstm_cell_353/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_353/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_353/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_353/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_353/BiasAdd/ReadVariableOp*^while/lstm_cell_353/MatMul/ReadVariableOp,^while/lstm_cell_353/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_353_biasadd_readvariableop_resource5while_lstm_cell_353_biasadd_readvariableop_resource_0"n
4while_lstm_cell_353_matmul_1_readvariableop_resource6while_lstm_cell_353_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_353_matmul_readvariableop_resource4while_lstm_cell_353_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_353/BiasAdd/ReadVariableOp*while/lstm_cell_353/BiasAdd/ReadVariableOp2V
)while/lstm_cell_353/MatMul/ReadVariableOp)while/lstm_cell_353/MatMul/ReadVariableOp2Z
+while/lstm_cell_353/MatMul_1/ReadVariableOp+while/lstm_cell_353/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_352_layer_call_and_return_conditional_losses_2135715

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

?
/__inference_sequential_42_layer_call_fn_2137612

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
J__inference_sequential_42_layer_call_and_return_conditional_losses_2137411o
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

?
/__inference_sequential_42_layer_call_fn_2137463
lstm_126_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_126_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_42_layer_call_and_return_conditional_losses_2137411o
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
_user_specified_namelstm_126_input
?S
?
)sequential_42_lstm_127_while_body_2135069J
Fsequential_42_lstm_127_while_sequential_42_lstm_127_while_loop_counterP
Lsequential_42_lstm_127_while_sequential_42_lstm_127_while_maximum_iterations,
(sequential_42_lstm_127_while_placeholder.
*sequential_42_lstm_127_while_placeholder_1.
*sequential_42_lstm_127_while_placeholder_2.
*sequential_42_lstm_127_while_placeholder_3I
Esequential_42_lstm_127_while_sequential_42_lstm_127_strided_slice_1_0?
?sequential_42_lstm_127_while_tensorarrayv2read_tensorlistgetitem_sequential_42_lstm_127_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_42_lstm_127_while_lstm_cell_352_matmul_readvariableop_resource_0:	d?`
Msequential_42_lstm_127_while_lstm_cell_352_matmul_1_readvariableop_resource_0:	2?[
Lsequential_42_lstm_127_while_lstm_cell_352_biasadd_readvariableop_resource_0:	?)
%sequential_42_lstm_127_while_identity+
'sequential_42_lstm_127_while_identity_1+
'sequential_42_lstm_127_while_identity_2+
'sequential_42_lstm_127_while_identity_3+
'sequential_42_lstm_127_while_identity_4+
'sequential_42_lstm_127_while_identity_5G
Csequential_42_lstm_127_while_sequential_42_lstm_127_strided_slice_1?
sequential_42_lstm_127_while_tensorarrayv2read_tensorlistgetitem_sequential_42_lstm_127_tensorarrayunstack_tensorlistfromtensor\
Isequential_42_lstm_127_while_lstm_cell_352_matmul_readvariableop_resource:	d?^
Ksequential_42_lstm_127_while_lstm_cell_352_matmul_1_readvariableop_resource:	2?Y
Jsequential_42_lstm_127_while_lstm_cell_352_biasadd_readvariableop_resource:	???Asequential_42/lstm_127/while/lstm_cell_352/BiasAdd/ReadVariableOp?@sequential_42/lstm_127/while/lstm_cell_352/MatMul/ReadVariableOp?Bsequential_42/lstm_127/while/lstm_cell_352/MatMul_1/ReadVariableOp?
Nsequential_42/lstm_127/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_42/lstm_127/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_42_lstm_127_while_tensorarrayv2read_tensorlistgetitem_sequential_42_lstm_127_tensorarrayunstack_tensorlistfromtensor_0(sequential_42_lstm_127_while_placeholderWsequential_42/lstm_127/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_42/lstm_127/while/lstm_cell_352/MatMul/ReadVariableOpReadVariableOpKsequential_42_lstm_127_while_lstm_cell_352_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_42/lstm_127/while/lstm_cell_352/MatMulMatMulGsequential_42/lstm_127/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_42/lstm_127/while/lstm_cell_352/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_42/lstm_127/while/lstm_cell_352/MatMul_1/ReadVariableOpReadVariableOpMsequential_42_lstm_127_while_lstm_cell_352_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_42/lstm_127/while/lstm_cell_352/MatMul_1MatMul*sequential_42_lstm_127_while_placeholder_2Jsequential_42/lstm_127/while/lstm_cell_352/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_42/lstm_127/while/lstm_cell_352/addAddV2;sequential_42/lstm_127/while/lstm_cell_352/MatMul:product:0=sequential_42/lstm_127/while/lstm_cell_352/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_42/lstm_127/while/lstm_cell_352/BiasAdd/ReadVariableOpReadVariableOpLsequential_42_lstm_127_while_lstm_cell_352_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_42/lstm_127/while/lstm_cell_352/BiasAddBiasAdd2sequential_42/lstm_127/while/lstm_cell_352/add:z:0Isequential_42/lstm_127/while/lstm_cell_352/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_42/lstm_127/while/lstm_cell_352/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_42/lstm_127/while/lstm_cell_352/splitSplitCsequential_42/lstm_127/while/lstm_cell_352/split/split_dim:output:0;sequential_42/lstm_127/while/lstm_cell_352/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_42/lstm_127/while/lstm_cell_352/SigmoidSigmoid9sequential_42/lstm_127/while/lstm_cell_352/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_42/lstm_127/while/lstm_cell_352/Sigmoid_1Sigmoid9sequential_42/lstm_127/while/lstm_cell_352/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_42/lstm_127/while/lstm_cell_352/mulMul8sequential_42/lstm_127/while/lstm_cell_352/Sigmoid_1:y:0*sequential_42_lstm_127_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_42/lstm_127/while/lstm_cell_352/ReluRelu9sequential_42/lstm_127/while/lstm_cell_352/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_42/lstm_127/while/lstm_cell_352/mul_1Mul6sequential_42/lstm_127/while/lstm_cell_352/Sigmoid:y:0=sequential_42/lstm_127/while/lstm_cell_352/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_42/lstm_127/while/lstm_cell_352/add_1AddV22sequential_42/lstm_127/while/lstm_cell_352/mul:z:04sequential_42/lstm_127/while/lstm_cell_352/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_42/lstm_127/while/lstm_cell_352/Sigmoid_2Sigmoid9sequential_42/lstm_127/while/lstm_cell_352/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_42/lstm_127/while/lstm_cell_352/Relu_1Relu4sequential_42/lstm_127/while/lstm_cell_352/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_42/lstm_127/while/lstm_cell_352/mul_2Mul8sequential_42/lstm_127/while/lstm_cell_352/Sigmoid_2:y:0?sequential_42/lstm_127/while/lstm_cell_352/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_42/lstm_127/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_42_lstm_127_while_placeholder_1(sequential_42_lstm_127_while_placeholder4sequential_42/lstm_127/while/lstm_cell_352/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_42/lstm_127/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_42/lstm_127/while/addAddV2(sequential_42_lstm_127_while_placeholder+sequential_42/lstm_127/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_42/lstm_127/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_42/lstm_127/while/add_1AddV2Fsequential_42_lstm_127_while_sequential_42_lstm_127_while_loop_counter-sequential_42/lstm_127/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_42/lstm_127/while/IdentityIdentity&sequential_42/lstm_127/while/add_1:z:0"^sequential_42/lstm_127/while/NoOp*
T0*
_output_shapes
: ?
'sequential_42/lstm_127/while/Identity_1IdentityLsequential_42_lstm_127_while_sequential_42_lstm_127_while_maximum_iterations"^sequential_42/lstm_127/while/NoOp*
T0*
_output_shapes
: ?
'sequential_42/lstm_127/while/Identity_2Identity$sequential_42/lstm_127/while/add:z:0"^sequential_42/lstm_127/while/NoOp*
T0*
_output_shapes
: ?
'sequential_42/lstm_127/while/Identity_3IdentityQsequential_42/lstm_127/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_42/lstm_127/while/NoOp*
T0*
_output_shapes
: ?
'sequential_42/lstm_127/while/Identity_4Identity4sequential_42/lstm_127/while/lstm_cell_352/mul_2:z:0"^sequential_42/lstm_127/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_42/lstm_127/while/Identity_5Identity4sequential_42/lstm_127/while/lstm_cell_352/add_1:z:0"^sequential_42/lstm_127/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_42/lstm_127/while/NoOpNoOpB^sequential_42/lstm_127/while/lstm_cell_352/BiasAdd/ReadVariableOpA^sequential_42/lstm_127/while/lstm_cell_352/MatMul/ReadVariableOpC^sequential_42/lstm_127/while/lstm_cell_352/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_42_lstm_127_while_identity.sequential_42/lstm_127/while/Identity:output:0"[
'sequential_42_lstm_127_while_identity_10sequential_42/lstm_127/while/Identity_1:output:0"[
'sequential_42_lstm_127_while_identity_20sequential_42/lstm_127/while/Identity_2:output:0"[
'sequential_42_lstm_127_while_identity_30sequential_42/lstm_127/while/Identity_3:output:0"[
'sequential_42_lstm_127_while_identity_40sequential_42/lstm_127/while/Identity_4:output:0"[
'sequential_42_lstm_127_while_identity_50sequential_42/lstm_127/while/Identity_5:output:0"?
Jsequential_42_lstm_127_while_lstm_cell_352_biasadd_readvariableop_resourceLsequential_42_lstm_127_while_lstm_cell_352_biasadd_readvariableop_resource_0"?
Ksequential_42_lstm_127_while_lstm_cell_352_matmul_1_readvariableop_resourceMsequential_42_lstm_127_while_lstm_cell_352_matmul_1_readvariableop_resource_0"?
Isequential_42_lstm_127_while_lstm_cell_352_matmul_readvariableop_resourceKsequential_42_lstm_127_while_lstm_cell_352_matmul_readvariableop_resource_0"?
Csequential_42_lstm_127_while_sequential_42_lstm_127_strided_slice_1Esequential_42_lstm_127_while_sequential_42_lstm_127_strided_slice_1_0"?
sequential_42_lstm_127_while_tensorarrayv2read_tensorlistgetitem_sequential_42_lstm_127_tensorarrayunstack_tensorlistfromtensor?sequential_42_lstm_127_while_tensorarrayv2read_tensorlistgetitem_sequential_42_lstm_127_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_42/lstm_127/while/lstm_cell_352/BiasAdd/ReadVariableOpAsequential_42/lstm_127/while/lstm_cell_352/BiasAdd/ReadVariableOp2?
@sequential_42/lstm_127/while/lstm_cell_352/MatMul/ReadVariableOp@sequential_42/lstm_127/while/lstm_cell_352/MatMul/ReadVariableOp2?
Bsequential_42/lstm_127/while/lstm_cell_352/MatMul_1/ReadVariableOpBsequential_42/lstm_127/while/lstm_cell_352/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2138855
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_351_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_351_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_351_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_351_matmul_readvariableop_resource:	?G
4while_lstm_cell_351_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_351_biasadd_readvariableop_resource:	???*while/lstm_cell_351/BiasAdd/ReadVariableOp?)while/lstm_cell_351/MatMul/ReadVariableOp?+while/lstm_cell_351/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_351/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_351_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_351/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_351/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_351/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_351_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_351/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_351/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_351/addAddV2$while/lstm_cell_351/MatMul:product:0&while/lstm_cell_351/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_351/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_351_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_351/BiasAddBiasAddwhile/lstm_cell_351/add:z:02while/lstm_cell_351/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_351/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_351/splitSplit,while/lstm_cell_351/split/split_dim:output:0$while/lstm_cell_351/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_351/SigmoidSigmoid"while/lstm_cell_351/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_351/Sigmoid_1Sigmoid"while/lstm_cell_351/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_351/mulMul!while/lstm_cell_351/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_351/ReluRelu"while/lstm_cell_351/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_351/mul_1Mulwhile/lstm_cell_351/Sigmoid:y:0&while/lstm_cell_351/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_351/add_1AddV2while/lstm_cell_351/mul:z:0while/lstm_cell_351/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_351/Sigmoid_2Sigmoid"while/lstm_cell_351/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_351/Relu_1Reluwhile/lstm_cell_351/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_351/mul_2Mul!while/lstm_cell_351/Sigmoid_2:y:0(while/lstm_cell_351/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_351/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_351/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_351/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_351/BiasAdd/ReadVariableOp*^while/lstm_cell_351/MatMul/ReadVariableOp,^while/lstm_cell_351/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_351_biasadd_readvariableop_resource5while_lstm_cell_351_biasadd_readvariableop_resource_0"n
4while_lstm_cell_351_matmul_1_readvariableop_resource6while_lstm_cell_351_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_351_matmul_readvariableop_resource4while_lstm_cell_351_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_351/BiasAdd/ReadVariableOp*while/lstm_cell_351/BiasAdd/ReadVariableOp2V
)while/lstm_cell_351/MatMul/ReadVariableOp)while/lstm_cell_351/MatMul/ReadVariableOp2Z
+while/lstm_cell_351/MatMul_1/ReadVariableOp+while/lstm_cell_351/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_128_layer_call_fn_2139742

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
E__inference_lstm_128_layer_call_and_return_conditional_losses_2137013o
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
E__inference_lstm_126_layer_call_and_return_conditional_losses_2137343

inputs?
,lstm_cell_351_matmul_readvariableop_resource:	?A
.lstm_cell_351_matmul_1_readvariableop_resource:	d?<
-lstm_cell_351_biasadd_readvariableop_resource:	?
identity??$lstm_cell_351/BiasAdd/ReadVariableOp?#lstm_cell_351/MatMul/ReadVariableOp?%lstm_cell_351/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_351/MatMul/ReadVariableOpReadVariableOp,lstm_cell_351_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_351/MatMulMatMulstrided_slice_2:output:0+lstm_cell_351/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_351/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_351_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_351/MatMul_1MatMulzeros:output:0-lstm_cell_351/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_351/addAddV2lstm_cell_351/MatMul:product:0 lstm_cell_351/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_351/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_351_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_351/BiasAddBiasAddlstm_cell_351/add:z:0,lstm_cell_351/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_351/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_351/splitSplit&lstm_cell_351/split/split_dim:output:0lstm_cell_351/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_351/SigmoidSigmoidlstm_cell_351/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_351/Sigmoid_1Sigmoidlstm_cell_351/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_351/mulMullstm_cell_351/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_351/ReluRelulstm_cell_351/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_351/mul_1Mullstm_cell_351/Sigmoid:y:0 lstm_cell_351/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_351/add_1AddV2lstm_cell_351/mul:z:0lstm_cell_351/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_351/Sigmoid_2Sigmoidlstm_cell_351/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_351/Relu_1Relulstm_cell_351/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_351/mul_2Mullstm_cell_351/Sigmoid_2:y:0"lstm_cell_351/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_351_matmul_readvariableop_resource.lstm_cell_351_matmul_1_readvariableop_resource-lstm_cell_351_biasadd_readvariableop_resource*
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
while_body_2137259*
condR
while_cond_2137258*K
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
NoOpNoOp%^lstm_cell_351/BiasAdd/ReadVariableOp$^lstm_cell_351/MatMul/ReadVariableOp&^lstm_cell_351/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_351/BiasAdd/ReadVariableOp$lstm_cell_351/BiasAdd/ReadVariableOp2J
#lstm_cell_351/MatMul/ReadVariableOp#lstm_cell_351/MatMul/ReadVariableOp2N
%lstm_cell_351/MatMul_1/ReadVariableOp%lstm_cell_351/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_2137558
lstm_126_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_126_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2135298o
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
_user_specified_namelstm_126_input
?
?
J__inference_lstm_cell_352_layer_call_and_return_conditional_losses_2140529

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
)sequential_42_lstm_128_while_cond_2135207J
Fsequential_42_lstm_128_while_sequential_42_lstm_128_while_loop_counterP
Lsequential_42_lstm_128_while_sequential_42_lstm_128_while_maximum_iterations,
(sequential_42_lstm_128_while_placeholder.
*sequential_42_lstm_128_while_placeholder_1.
*sequential_42_lstm_128_while_placeholder_2.
*sequential_42_lstm_128_while_placeholder_3L
Hsequential_42_lstm_128_while_less_sequential_42_lstm_128_strided_slice_1c
_sequential_42_lstm_128_while_sequential_42_lstm_128_while_cond_2135207___redundant_placeholder0c
_sequential_42_lstm_128_while_sequential_42_lstm_128_while_cond_2135207___redundant_placeholder1c
_sequential_42_lstm_128_while_sequential_42_lstm_128_while_cond_2135207___redundant_placeholder2c
_sequential_42_lstm_128_while_sequential_42_lstm_128_while_cond_2135207___redundant_placeholder3)
%sequential_42_lstm_128_while_identity
?
!sequential_42/lstm_128/while/LessLess(sequential_42_lstm_128_while_placeholderHsequential_42_lstm_128_while_less_sequential_42_lstm_128_strided_slice_1*
T0*
_output_shapes
: y
%sequential_42/lstm_128/while/IdentityIdentity%sequential_42/lstm_128/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_42_lstm_128_while_identity.sequential_42/lstm_128/while/Identity:output:0*(
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
J__inference_lstm_cell_351_layer_call_and_return_conditional_losses_2135511

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
while_body_2140087
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_353_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_353_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_353_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_353_matmul_readvariableop_resource:2(F
4while_lstm_cell_353_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_353_biasadd_readvariableop_resource:(??*while/lstm_cell_353/BiasAdd/ReadVariableOp?)while/lstm_cell_353/MatMul/ReadVariableOp?+while/lstm_cell_353/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_353/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_353_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_353/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_353/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_353/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_353_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_353/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_353/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_353/addAddV2$while/lstm_cell_353/MatMul:product:0&while/lstm_cell_353/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_353/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_353_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_353/BiasAddBiasAddwhile/lstm_cell_353/add:z:02while/lstm_cell_353/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_353/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_353/splitSplit,while/lstm_cell_353/split/split_dim:output:0$while/lstm_cell_353/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_353/SigmoidSigmoid"while/lstm_cell_353/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_353/Sigmoid_1Sigmoid"while/lstm_cell_353/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_353/mulMul!while/lstm_cell_353/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_353/ReluRelu"while/lstm_cell_353/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_353/mul_1Mulwhile/lstm_cell_353/Sigmoid:y:0&while/lstm_cell_353/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_353/add_1AddV2while/lstm_cell_353/mul:z:0while/lstm_cell_353/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_353/Sigmoid_2Sigmoid"while/lstm_cell_353/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_353/Relu_1Reluwhile/lstm_cell_353/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_353/mul_2Mul!while/lstm_cell_353/Sigmoid_2:y:0(while/lstm_cell_353/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_353/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_353/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_353/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_353/BiasAdd/ReadVariableOp*^while/lstm_cell_353/MatMul/ReadVariableOp,^while/lstm_cell_353/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_353_biasadd_readvariableop_resource5while_lstm_cell_353_biasadd_readvariableop_resource_0"n
4while_lstm_cell_353_matmul_1_readvariableop_resource6while_lstm_cell_353_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_353_matmul_readvariableop_resource4while_lstm_cell_353_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_353/BiasAdd/ReadVariableOp*while/lstm_cell_353/BiasAdd/ReadVariableOp2V
)while/lstm_cell_353/MatMul/ReadVariableOp)while/lstm_cell_353/MatMul/ReadVariableOp2Z
+while/lstm_cell_353/MatMul_1/ReadVariableOp+while/lstm_cell_353/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_126_layer_call_and_return_conditional_losses_2139082

inputs?
,lstm_cell_351_matmul_readvariableop_resource:	?A
.lstm_cell_351_matmul_1_readvariableop_resource:	d?<
-lstm_cell_351_biasadd_readvariableop_resource:	?
identity??$lstm_cell_351/BiasAdd/ReadVariableOp?#lstm_cell_351/MatMul/ReadVariableOp?%lstm_cell_351/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_351/MatMul/ReadVariableOpReadVariableOp,lstm_cell_351_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_351/MatMulMatMulstrided_slice_2:output:0+lstm_cell_351/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_351/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_351_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_351/MatMul_1MatMulzeros:output:0-lstm_cell_351/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_351/addAddV2lstm_cell_351/MatMul:product:0 lstm_cell_351/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_351/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_351_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_351/BiasAddBiasAddlstm_cell_351/add:z:0,lstm_cell_351/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_351/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_351/splitSplit&lstm_cell_351/split/split_dim:output:0lstm_cell_351/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_351/SigmoidSigmoidlstm_cell_351/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_351/Sigmoid_1Sigmoidlstm_cell_351/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_351/mulMullstm_cell_351/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_351/ReluRelulstm_cell_351/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_351/mul_1Mullstm_cell_351/Sigmoid:y:0 lstm_cell_351/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_351/add_1AddV2lstm_cell_351/mul:z:0lstm_cell_351/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_351/Sigmoid_2Sigmoidlstm_cell_351/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_351/Relu_1Relulstm_cell_351/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_351/mul_2Mullstm_cell_351/Sigmoid_2:y:0"lstm_cell_351/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_351_matmul_readvariableop_resource.lstm_cell_351_matmul_1_readvariableop_resource-lstm_cell_351_biasadd_readvariableop_resource*
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
while_body_2138998*
condR
while_cond_2138997*K
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
NoOpNoOp%^lstm_cell_351/BiasAdd/ReadVariableOp$^lstm_cell_351/MatMul/ReadVariableOp&^lstm_cell_351/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_351/BiasAdd/ReadVariableOp$lstm_cell_351/BiasAdd/ReadVariableOp2J
#lstm_cell_351/MatMul/ReadVariableOp#lstm_cell_351/MatMul/ReadVariableOp2N
%lstm_cell_351/MatMul_1/ReadVariableOp%lstm_cell_351/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_126_input;
 serving_default_lstm_126_input:0?????????<
dense_420
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
2dense_42/kernel
:2dense_42/bias
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
0:.	?2lstm_126/lstm_cell_126/kernel
::8	d?2'lstm_126/lstm_cell_126/recurrent_kernel
*:(?2lstm_126/lstm_cell_126/bias
0:.	d?2lstm_127/lstm_cell_127/kernel
::8	2?2'lstm_127/lstm_cell_127/recurrent_kernel
*:(?2lstm_127/lstm_cell_127/bias
/:-2(2lstm_128/lstm_cell_128/kernel
9:7
(2'lstm_128/lstm_cell_128/recurrent_kernel
):'(2lstm_128/lstm_cell_128/bias
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
2Adam/dense_42/kernel/m
 :2Adam/dense_42/bias/m
5:3	?2$Adam/lstm_126/lstm_cell_126/kernel/m
?:=	d?2.Adam/lstm_126/lstm_cell_126/recurrent_kernel/m
/:-?2"Adam/lstm_126/lstm_cell_126/bias/m
5:3	d?2$Adam/lstm_127/lstm_cell_127/kernel/m
?:=	2?2.Adam/lstm_127/lstm_cell_127/recurrent_kernel/m
/:-?2"Adam/lstm_127/lstm_cell_127/bias/m
4:22(2$Adam/lstm_128/lstm_cell_128/kernel/m
>:<
(2.Adam/lstm_128/lstm_cell_128/recurrent_kernel/m
.:,(2"Adam/lstm_128/lstm_cell_128/bias/m
&:$
2Adam/dense_42/kernel/v
 :2Adam/dense_42/bias/v
5:3	?2$Adam/lstm_126/lstm_cell_126/kernel/v
?:=	d?2.Adam/lstm_126/lstm_cell_126/recurrent_kernel/v
/:-?2"Adam/lstm_126/lstm_cell_126/bias/v
5:3	d?2$Adam/lstm_127/lstm_cell_127/kernel/v
?:=	2?2.Adam/lstm_127/lstm_cell_127/recurrent_kernel/v
/:-?2"Adam/lstm_127/lstm_cell_127/bias/v
4:22(2$Adam/lstm_128/lstm_cell_128/kernel/v
>:<
(2.Adam/lstm_128/lstm_cell_128/recurrent_kernel/v
.:,(2"Adam/lstm_128/lstm_cell_128/bias/v
?2?
/__inference_sequential_42_layer_call_fn_2136847
/__inference_sequential_42_layer_call_fn_2137585
/__inference_sequential_42_layer_call_fn_2137612
/__inference_sequential_42_layer_call_fn_2137463?
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
J__inference_sequential_42_layer_call_and_return_conditional_losses_2138039
J__inference_sequential_42_layer_call_and_return_conditional_losses_2138466
J__inference_sequential_42_layer_call_and_return_conditional_losses_2137493
J__inference_sequential_42_layer_call_and_return_conditional_losses_2137523?
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
"__inference__wrapped_model_2135298lstm_126_input"?
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
*__inference_lstm_126_layer_call_fn_2138477
*__inference_lstm_126_layer_call_fn_2138488
*__inference_lstm_126_layer_call_fn_2138499
*__inference_lstm_126_layer_call_fn_2138510?
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
E__inference_lstm_126_layer_call_and_return_conditional_losses_2138653
E__inference_lstm_126_layer_call_and_return_conditional_losses_2138796
E__inference_lstm_126_layer_call_and_return_conditional_losses_2138939
E__inference_lstm_126_layer_call_and_return_conditional_losses_2139082?
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
*__inference_lstm_127_layer_call_fn_2139093
*__inference_lstm_127_layer_call_fn_2139104
*__inference_lstm_127_layer_call_fn_2139115
*__inference_lstm_127_layer_call_fn_2139126?
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
E__inference_lstm_127_layer_call_and_return_conditional_losses_2139269
E__inference_lstm_127_layer_call_and_return_conditional_losses_2139412
E__inference_lstm_127_layer_call_and_return_conditional_losses_2139555
E__inference_lstm_127_layer_call_and_return_conditional_losses_2139698?
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
*__inference_lstm_128_layer_call_fn_2139709
*__inference_lstm_128_layer_call_fn_2139720
*__inference_lstm_128_layer_call_fn_2139731
*__inference_lstm_128_layer_call_fn_2139742?
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
E__inference_lstm_128_layer_call_and_return_conditional_losses_2139885
E__inference_lstm_128_layer_call_and_return_conditional_losses_2140028
E__inference_lstm_128_layer_call_and_return_conditional_losses_2140171
E__inference_lstm_128_layer_call_and_return_conditional_losses_2140314?
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
*__inference_dense_42_layer_call_fn_2140323?
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
E__inference_dense_42_layer_call_and_return_conditional_losses_2140333?
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
%__inference_signature_wrapper_2137558lstm_126_input"?
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
/__inference_lstm_cell_351_layer_call_fn_2140350
/__inference_lstm_cell_351_layer_call_fn_2140367?
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
J__inference_lstm_cell_351_layer_call_and_return_conditional_losses_2140399
J__inference_lstm_cell_351_layer_call_and_return_conditional_losses_2140431?
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
/__inference_lstm_cell_352_layer_call_fn_2140448
/__inference_lstm_cell_352_layer_call_fn_2140465?
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
J__inference_lstm_cell_352_layer_call_and_return_conditional_losses_2140497
J__inference_lstm_cell_352_layer_call_and_return_conditional_losses_2140529?
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
/__inference_lstm_cell_353_layer_call_fn_2140546
/__inference_lstm_cell_353_layer_call_fn_2140563?
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
J__inference_lstm_cell_353_layer_call_and_return_conditional_losses_2140595
J__inference_lstm_cell_353_layer_call_and_return_conditional_losses_2140627?
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
"__inference__wrapped_model_2135298-./012345!";?8
1?.
,?)
lstm_126_input?????????
? "3?0
.
dense_42"?
dense_42??????????
E__inference_dense_42_layer_call_and_return_conditional_losses_2140333\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_42_layer_call_fn_2140323O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_126_layer_call_and_return_conditional_losses_2138653?-./O?L
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
E__inference_lstm_126_layer_call_and_return_conditional_losses_2138796?-./O?L
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
E__inference_lstm_126_layer_call_and_return_conditional_losses_2138939q-./??<
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
E__inference_lstm_126_layer_call_and_return_conditional_losses_2139082q-./??<
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
*__inference_lstm_126_layer_call_fn_2138477}-./O?L
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
*__inference_lstm_126_layer_call_fn_2138488}-./O?L
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
*__inference_lstm_126_layer_call_fn_2138499d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_126_layer_call_fn_2138510d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_127_layer_call_and_return_conditional_losses_2139269?012O?L
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
E__inference_lstm_127_layer_call_and_return_conditional_losses_2139412?012O?L
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
E__inference_lstm_127_layer_call_and_return_conditional_losses_2139555q012??<
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
E__inference_lstm_127_layer_call_and_return_conditional_losses_2139698q012??<
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
*__inference_lstm_127_layer_call_fn_2139093}012O?L
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
*__inference_lstm_127_layer_call_fn_2139104}012O?L
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
*__inference_lstm_127_layer_call_fn_2139115d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_127_layer_call_fn_2139126d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_128_layer_call_and_return_conditional_losses_2139885}345O?L
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
E__inference_lstm_128_layer_call_and_return_conditional_losses_2140028}345O?L
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
E__inference_lstm_128_layer_call_and_return_conditional_losses_2140171m345??<
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
E__inference_lstm_128_layer_call_and_return_conditional_losses_2140314m345??<
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
*__inference_lstm_128_layer_call_fn_2139709p345O?L
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
*__inference_lstm_128_layer_call_fn_2139720p345O?L
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
*__inference_lstm_128_layer_call_fn_2139731`345??<
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
*__inference_lstm_128_layer_call_fn_2139742`345??<
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
J__inference_lstm_cell_351_layer_call_and_return_conditional_losses_2140399?-./??}
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
J__inference_lstm_cell_351_layer_call_and_return_conditional_losses_2140431?-./??}
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
/__inference_lstm_cell_351_layer_call_fn_2140350?-./??}
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
/__inference_lstm_cell_351_layer_call_fn_2140367?-./??}
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
J__inference_lstm_cell_352_layer_call_and_return_conditional_losses_2140497?012??}
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
J__inference_lstm_cell_352_layer_call_and_return_conditional_losses_2140529?012??}
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
/__inference_lstm_cell_352_layer_call_fn_2140448?012??}
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
/__inference_lstm_cell_352_layer_call_fn_2140465?012??}
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
J__inference_lstm_cell_353_layer_call_and_return_conditional_losses_2140595?345??}
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
J__inference_lstm_cell_353_layer_call_and_return_conditional_losses_2140627?345??}
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
/__inference_lstm_cell_353_layer_call_fn_2140546?345??}
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
/__inference_lstm_cell_353_layer_call_fn_2140563?345??}
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
J__inference_sequential_42_layer_call_and_return_conditional_losses_2137493y-./012345!"C?@
9?6
,?)
lstm_126_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_42_layer_call_and_return_conditional_losses_2137523y-./012345!"C?@
9?6
,?)
lstm_126_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_42_layer_call_and_return_conditional_losses_2138039q-./012345!";?8
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
J__inference_sequential_42_layer_call_and_return_conditional_losses_2138466q-./012345!";?8
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
/__inference_sequential_42_layer_call_fn_2136847l-./012345!"C?@
9?6
,?)
lstm_126_input?????????
p 

 
? "???????????
/__inference_sequential_42_layer_call_fn_2137463l-./012345!"C?@
9?6
,?)
lstm_126_input?????????
p

 
? "???????????
/__inference_sequential_42_layer_call_fn_2137585d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_42_layer_call_fn_2137612d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2137558?-./012345!"M?J
? 
C?@
>
lstm_126_input,?)
lstm_126_input?????????"3?0
.
dense_42"?
dense_42?????????