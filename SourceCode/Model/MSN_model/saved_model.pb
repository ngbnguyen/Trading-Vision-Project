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
dense_53/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_53/kernel
s
#dense_53/kernel/Read/ReadVariableOpReadVariableOpdense_53/kernel*
_output_shapes

:
*
dtype0
r
dense_53/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_53/bias
k
!dense_53/bias/Read/ReadVariableOpReadVariableOpdense_53/bias*
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
lstm_159/lstm_cell_159/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_159/lstm_cell_159/kernel
?
1lstm_159/lstm_cell_159/kernel/Read/ReadVariableOpReadVariableOplstm_159/lstm_cell_159/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_159/lstm_cell_159/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_159/lstm_cell_159/recurrent_kernel
?
;lstm_159/lstm_cell_159/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_159/lstm_cell_159/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_159/lstm_cell_159/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_159/lstm_cell_159/bias
?
/lstm_159/lstm_cell_159/bias/Read/ReadVariableOpReadVariableOplstm_159/lstm_cell_159/bias*
_output_shapes	
:?*
dtype0
?
lstm_160/lstm_cell_160/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_160/lstm_cell_160/kernel
?
1lstm_160/lstm_cell_160/kernel/Read/ReadVariableOpReadVariableOplstm_160/lstm_cell_160/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_160/lstm_cell_160/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_160/lstm_cell_160/recurrent_kernel
?
;lstm_160/lstm_cell_160/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_160/lstm_cell_160/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_160/lstm_cell_160/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_160/lstm_cell_160/bias
?
/lstm_160/lstm_cell_160/bias/Read/ReadVariableOpReadVariableOplstm_160/lstm_cell_160/bias*
_output_shapes	
:?*
dtype0
?
lstm_161/lstm_cell_161/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_161/lstm_cell_161/kernel
?
1lstm_161/lstm_cell_161/kernel/Read/ReadVariableOpReadVariableOplstm_161/lstm_cell_161/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_161/lstm_cell_161/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_161/lstm_cell_161/recurrent_kernel
?
;lstm_161/lstm_cell_161/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_161/lstm_cell_161/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_161/lstm_cell_161/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_161/lstm_cell_161/bias
?
/lstm_161/lstm_cell_161/bias/Read/ReadVariableOpReadVariableOplstm_161/lstm_cell_161/bias*
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
Adam/dense_53/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_53/kernel/m
?
*Adam/dense_53/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_53/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_53/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_53/bias/m
y
(Adam/dense_53/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_53/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_159/lstm_cell_159/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_159/lstm_cell_159/kernel/m
?
8Adam/lstm_159/lstm_cell_159/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_159/lstm_cell_159/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_159/lstm_cell_159/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_159/lstm_cell_159/recurrent_kernel/m
?
BAdam/lstm_159/lstm_cell_159/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_159/lstm_cell_159/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_159/lstm_cell_159/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_159/lstm_cell_159/bias/m
?
6Adam/lstm_159/lstm_cell_159/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_159/lstm_cell_159/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_160/lstm_cell_160/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_160/lstm_cell_160/kernel/m
?
8Adam/lstm_160/lstm_cell_160/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_160/lstm_cell_160/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_160/lstm_cell_160/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_160/lstm_cell_160/recurrent_kernel/m
?
BAdam/lstm_160/lstm_cell_160/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_160/lstm_cell_160/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_160/lstm_cell_160/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_160/lstm_cell_160/bias/m
?
6Adam/lstm_160/lstm_cell_160/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_160/lstm_cell_160/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_161/lstm_cell_161/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_161/lstm_cell_161/kernel/m
?
8Adam/lstm_161/lstm_cell_161/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_161/lstm_cell_161/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_161/lstm_cell_161/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_161/lstm_cell_161/recurrent_kernel/m
?
BAdam/lstm_161/lstm_cell_161/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_161/lstm_cell_161/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_161/lstm_cell_161/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_161/lstm_cell_161/bias/m
?
6Adam/lstm_161/lstm_cell_161/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_161/lstm_cell_161/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_53/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_53/kernel/v
?
*Adam/dense_53/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_53/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_53/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_53/bias/v
y
(Adam/dense_53/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_53/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_159/lstm_cell_159/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_159/lstm_cell_159/kernel/v
?
8Adam/lstm_159/lstm_cell_159/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_159/lstm_cell_159/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_159/lstm_cell_159/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_159/lstm_cell_159/recurrent_kernel/v
?
BAdam/lstm_159/lstm_cell_159/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_159/lstm_cell_159/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_159/lstm_cell_159/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_159/lstm_cell_159/bias/v
?
6Adam/lstm_159/lstm_cell_159/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_159/lstm_cell_159/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_160/lstm_cell_160/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_160/lstm_cell_160/kernel/v
?
8Adam/lstm_160/lstm_cell_160/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_160/lstm_cell_160/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_160/lstm_cell_160/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_160/lstm_cell_160/recurrent_kernel/v
?
BAdam/lstm_160/lstm_cell_160/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_160/lstm_cell_160/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_160/lstm_cell_160/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_160/lstm_cell_160/bias/v
?
6Adam/lstm_160/lstm_cell_160/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_160/lstm_cell_160/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_161/lstm_cell_161/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_161/lstm_cell_161/kernel/v
?
8Adam/lstm_161/lstm_cell_161/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_161/lstm_cell_161/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_161/lstm_cell_161/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_161/lstm_cell_161/recurrent_kernel/v
?
BAdam/lstm_161/lstm_cell_161/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_161/lstm_cell_161/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_161/lstm_cell_161/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_161/lstm_cell_161/bias/v
?
6Adam/lstm_161/lstm_cell_161/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_161/lstm_cell_161/bias/v*
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
VARIABLE_VALUEdense_53/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_53/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_159/lstm_cell_159/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_159/lstm_cell_159/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_159/lstm_cell_159/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_160/lstm_cell_160/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_160/lstm_cell_160/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_160/lstm_cell_160/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_161/lstm_cell_161/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_161/lstm_cell_161/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_161/lstm_cell_161/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_53/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_53/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_159/lstm_cell_159/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_159/lstm_cell_159/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_159/lstm_cell_159/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_160/lstm_cell_160/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_160/lstm_cell_160/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_160/lstm_cell_160/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_161/lstm_cell_161/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_161/lstm_cell_161/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_161/lstm_cell_161/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_53/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_53/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_159/lstm_cell_159/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_159/lstm_cell_159/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_159/lstm_cell_159/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_160/lstm_cell_160/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_160/lstm_cell_160/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_160/lstm_cell_160/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_161/lstm_cell_161/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_161/lstm_cell_161/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_161/lstm_cell_161/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_159_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_159_inputlstm_159/lstm_cell_159/kernel'lstm_159/lstm_cell_159/recurrent_kernellstm_159/lstm_cell_159/biaslstm_160/lstm_cell_160/kernel'lstm_160/lstm_cell_160/recurrent_kernellstm_160/lstm_cell_160/biaslstm_161/lstm_cell_161/kernel'lstm_161/lstm_cell_161/recurrent_kernellstm_161/lstm_cell_161/biasdense_53/kerneldense_53/bias*
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
%__inference_signature_wrapper_1285296
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_53/kernel/Read/ReadVariableOp!dense_53/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_159/lstm_cell_159/kernel/Read/ReadVariableOp;lstm_159/lstm_cell_159/recurrent_kernel/Read/ReadVariableOp/lstm_159/lstm_cell_159/bias/Read/ReadVariableOp1lstm_160/lstm_cell_160/kernel/Read/ReadVariableOp;lstm_160/lstm_cell_160/recurrent_kernel/Read/ReadVariableOp/lstm_160/lstm_cell_160/bias/Read/ReadVariableOp1lstm_161/lstm_cell_161/kernel/Read/ReadVariableOp;lstm_161/lstm_cell_161/recurrent_kernel/Read/ReadVariableOp/lstm_161/lstm_cell_161/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_53/kernel/m/Read/ReadVariableOp(Adam/dense_53/bias/m/Read/ReadVariableOp8Adam/lstm_159/lstm_cell_159/kernel/m/Read/ReadVariableOpBAdam/lstm_159/lstm_cell_159/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_159/lstm_cell_159/bias/m/Read/ReadVariableOp8Adam/lstm_160/lstm_cell_160/kernel/m/Read/ReadVariableOpBAdam/lstm_160/lstm_cell_160/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_160/lstm_cell_160/bias/m/Read/ReadVariableOp8Adam/lstm_161/lstm_cell_161/kernel/m/Read/ReadVariableOpBAdam/lstm_161/lstm_cell_161/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_161/lstm_cell_161/bias/m/Read/ReadVariableOp*Adam/dense_53/kernel/v/Read/ReadVariableOp(Adam/dense_53/bias/v/Read/ReadVariableOp8Adam/lstm_159/lstm_cell_159/kernel/v/Read/ReadVariableOpBAdam/lstm_159/lstm_cell_159/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_159/lstm_cell_159/bias/v/Read/ReadVariableOp8Adam/lstm_160/lstm_cell_160/kernel/v/Read/ReadVariableOpBAdam/lstm_160/lstm_cell_160/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_160/lstm_cell_160/bias/v/Read/ReadVariableOp8Adam/lstm_161/lstm_cell_161/kernel/v/Read/ReadVariableOpBAdam/lstm_161/lstm_cell_161/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_161/lstm_cell_161/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1288508
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_53/kerneldense_53/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_159/lstm_cell_159/kernel'lstm_159/lstm_cell_159/recurrent_kernellstm_159/lstm_cell_159/biaslstm_160/lstm_cell_160/kernel'lstm_160/lstm_cell_160/recurrent_kernellstm_160/lstm_cell_160/biaslstm_161/lstm_cell_161/kernel'lstm_161/lstm_cell_161/recurrent_kernellstm_161/lstm_cell_161/biastotalcountAdam/dense_53/kernel/mAdam/dense_53/bias/m$Adam/lstm_159/lstm_cell_159/kernel/m.Adam/lstm_159/lstm_cell_159/recurrent_kernel/m"Adam/lstm_159/lstm_cell_159/bias/m$Adam/lstm_160/lstm_cell_160/kernel/m.Adam/lstm_160/lstm_cell_160/recurrent_kernel/m"Adam/lstm_160/lstm_cell_160/bias/m$Adam/lstm_161/lstm_cell_161/kernel/m.Adam/lstm_161/lstm_cell_161/recurrent_kernel/m"Adam/lstm_161/lstm_cell_161/bias/mAdam/dense_53/kernel/vAdam/dense_53/bias/v$Adam/lstm_159/lstm_cell_159/kernel/v.Adam/lstm_159/lstm_cell_159/recurrent_kernel/v"Adam/lstm_159/lstm_cell_159/bias/v$Adam/lstm_160/lstm_cell_160/kernel/v.Adam/lstm_160/lstm_cell_160/recurrent_kernel/v"Adam/lstm_160/lstm_cell_160/bias/v$Adam/lstm_161/lstm_cell_161/kernel/v.Adam/lstm_161/lstm_cell_161/recurrent_kernel/v"Adam/lstm_161/lstm_cell_161/bias/v*4
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
#__inference__traced_restore_1288638??+
?#
?
while_body_1283308
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_210_1283332_0:	?0
while_lstm_cell_210_1283334_0:	d?,
while_lstm_cell_210_1283336_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_210_1283332:	?.
while_lstm_cell_210_1283334:	d?*
while_lstm_cell_210_1283336:	???+while/lstm_cell_210/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_210/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_210_1283332_0while_lstm_cell_210_1283334_0while_lstm_cell_210_1283336_0*
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
J__inference_lstm_cell_210_layer_call_and_return_conditional_losses_1283249?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_210/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_210/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_210/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_210/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_210_1283332while_lstm_cell_210_1283332_0"<
while_lstm_cell_210_1283334while_lstm_cell_210_1283334_0"<
while_lstm_cell_210_1283336while_lstm_cell_210_1283336_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_210/StatefulPartitionedCall+while/lstm_cell_210/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_161_while_body_1285687.
*lstm_161_while_lstm_161_while_loop_counter4
0lstm_161_while_lstm_161_while_maximum_iterations
lstm_161_while_placeholder 
lstm_161_while_placeholder_1 
lstm_161_while_placeholder_2 
lstm_161_while_placeholder_3-
)lstm_161_while_lstm_161_strided_slice_1_0i
elstm_161_while_tensorarrayv2read_tensorlistgetitem_lstm_161_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_161_while_lstm_cell_212_matmul_readvariableop_resource_0:2(Q
?lstm_161_while_lstm_cell_212_matmul_1_readvariableop_resource_0:
(L
>lstm_161_while_lstm_cell_212_biasadd_readvariableop_resource_0:(
lstm_161_while_identity
lstm_161_while_identity_1
lstm_161_while_identity_2
lstm_161_while_identity_3
lstm_161_while_identity_4
lstm_161_while_identity_5+
'lstm_161_while_lstm_161_strided_slice_1g
clstm_161_while_tensorarrayv2read_tensorlistgetitem_lstm_161_tensorarrayunstack_tensorlistfromtensorM
;lstm_161_while_lstm_cell_212_matmul_readvariableop_resource:2(O
=lstm_161_while_lstm_cell_212_matmul_1_readvariableop_resource:
(J
<lstm_161_while_lstm_cell_212_biasadd_readvariableop_resource:(??3lstm_161/while/lstm_cell_212/BiasAdd/ReadVariableOp?2lstm_161/while/lstm_cell_212/MatMul/ReadVariableOp?4lstm_161/while/lstm_cell_212/MatMul_1/ReadVariableOp?
@lstm_161/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_161/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_161_while_tensorarrayv2read_tensorlistgetitem_lstm_161_tensorarrayunstack_tensorlistfromtensor_0lstm_161_while_placeholderIlstm_161/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_161/while/lstm_cell_212/MatMul/ReadVariableOpReadVariableOp=lstm_161_while_lstm_cell_212_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_161/while/lstm_cell_212/MatMulMatMul9lstm_161/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_161/while/lstm_cell_212/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_161/while/lstm_cell_212/MatMul_1/ReadVariableOpReadVariableOp?lstm_161_while_lstm_cell_212_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_161/while/lstm_cell_212/MatMul_1MatMullstm_161_while_placeholder_2<lstm_161/while/lstm_cell_212/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_161/while/lstm_cell_212/addAddV2-lstm_161/while/lstm_cell_212/MatMul:product:0/lstm_161/while/lstm_cell_212/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_161/while/lstm_cell_212/BiasAdd/ReadVariableOpReadVariableOp>lstm_161_while_lstm_cell_212_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_161/while/lstm_cell_212/BiasAddBiasAdd$lstm_161/while/lstm_cell_212/add:z:0;lstm_161/while/lstm_cell_212/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_161/while/lstm_cell_212/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_161/while/lstm_cell_212/splitSplit5lstm_161/while/lstm_cell_212/split/split_dim:output:0-lstm_161/while/lstm_cell_212/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_161/while/lstm_cell_212/SigmoidSigmoid+lstm_161/while/lstm_cell_212/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_161/while/lstm_cell_212/Sigmoid_1Sigmoid+lstm_161/while/lstm_cell_212/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_161/while/lstm_cell_212/mulMul*lstm_161/while/lstm_cell_212/Sigmoid_1:y:0lstm_161_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_161/while/lstm_cell_212/ReluRelu+lstm_161/while/lstm_cell_212/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_161/while/lstm_cell_212/mul_1Mul(lstm_161/while/lstm_cell_212/Sigmoid:y:0/lstm_161/while/lstm_cell_212/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_161/while/lstm_cell_212/add_1AddV2$lstm_161/while/lstm_cell_212/mul:z:0&lstm_161/while/lstm_cell_212/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_161/while/lstm_cell_212/Sigmoid_2Sigmoid+lstm_161/while/lstm_cell_212/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_161/while/lstm_cell_212/Relu_1Relu&lstm_161/while/lstm_cell_212/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_161/while/lstm_cell_212/mul_2Mul*lstm_161/while/lstm_cell_212/Sigmoid_2:y:01lstm_161/while/lstm_cell_212/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_161/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_161_while_placeholder_1lstm_161_while_placeholder&lstm_161/while/lstm_cell_212/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_161/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_161/while/addAddV2lstm_161_while_placeholderlstm_161/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_161/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_161/while/add_1AddV2*lstm_161_while_lstm_161_while_loop_counterlstm_161/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_161/while/IdentityIdentitylstm_161/while/add_1:z:0^lstm_161/while/NoOp*
T0*
_output_shapes
: ?
lstm_161/while/Identity_1Identity0lstm_161_while_lstm_161_while_maximum_iterations^lstm_161/while/NoOp*
T0*
_output_shapes
: t
lstm_161/while/Identity_2Identitylstm_161/while/add:z:0^lstm_161/while/NoOp*
T0*
_output_shapes
: ?
lstm_161/while/Identity_3IdentityClstm_161/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_161/while/NoOp*
T0*
_output_shapes
: ?
lstm_161/while/Identity_4Identity&lstm_161/while/lstm_cell_212/mul_2:z:0^lstm_161/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_161/while/Identity_5Identity&lstm_161/while/lstm_cell_212/add_1:z:0^lstm_161/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_161/while/NoOpNoOp4^lstm_161/while/lstm_cell_212/BiasAdd/ReadVariableOp3^lstm_161/while/lstm_cell_212/MatMul/ReadVariableOp5^lstm_161/while/lstm_cell_212/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_161_while_identity lstm_161/while/Identity:output:0"?
lstm_161_while_identity_1"lstm_161/while/Identity_1:output:0"?
lstm_161_while_identity_2"lstm_161/while/Identity_2:output:0"?
lstm_161_while_identity_3"lstm_161/while/Identity_3:output:0"?
lstm_161_while_identity_4"lstm_161/while/Identity_4:output:0"?
lstm_161_while_identity_5"lstm_161/while/Identity_5:output:0"T
'lstm_161_while_lstm_161_strided_slice_1)lstm_161_while_lstm_161_strided_slice_1_0"~
<lstm_161_while_lstm_cell_212_biasadd_readvariableop_resource>lstm_161_while_lstm_cell_212_biasadd_readvariableop_resource_0"?
=lstm_161_while_lstm_cell_212_matmul_1_readvariableop_resource?lstm_161_while_lstm_cell_212_matmul_1_readvariableop_resource_0"|
;lstm_161_while_lstm_cell_212_matmul_readvariableop_resource=lstm_161_while_lstm_cell_212_matmul_readvariableop_resource_0"?
clstm_161_while_tensorarrayv2read_tensorlistgetitem_lstm_161_tensorarrayunstack_tensorlistfromtensorelstm_161_while_tensorarrayv2read_tensorlistgetitem_lstm_161_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_161/while/lstm_cell_212/BiasAdd/ReadVariableOp3lstm_161/while/lstm_cell_212/BiasAdd/ReadVariableOp2h
2lstm_161/while/lstm_cell_212/MatMul/ReadVariableOp2lstm_161/while/lstm_cell_212/MatMul/ReadVariableOp2l
4lstm_161/while/lstm_cell_212/MatMul_1/ReadVariableOp4lstm_161/while/lstm_cell_212/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_160_layer_call_and_return_conditional_losses_1287150
inputs_0?
,lstm_cell_211_matmul_readvariableop_resource:	d?A
.lstm_cell_211_matmul_1_readvariableop_resource:	2?<
-lstm_cell_211_biasadd_readvariableop_resource:	?
identity??$lstm_cell_211/BiasAdd/ReadVariableOp?#lstm_cell_211/MatMul/ReadVariableOp?%lstm_cell_211/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_211/MatMul/ReadVariableOpReadVariableOp,lstm_cell_211_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_211/MatMulMatMulstrided_slice_2:output:0+lstm_cell_211/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_211/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_211_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_211/MatMul_1MatMulzeros:output:0-lstm_cell_211/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_211/addAddV2lstm_cell_211/MatMul:product:0 lstm_cell_211/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_211/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_211_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_211/BiasAddBiasAddlstm_cell_211/add:z:0,lstm_cell_211/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_211/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_211/splitSplit&lstm_cell_211/split/split_dim:output:0lstm_cell_211/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_211/SigmoidSigmoidlstm_cell_211/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_211/Sigmoid_1Sigmoidlstm_cell_211/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_211/mulMullstm_cell_211/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_211/ReluRelulstm_cell_211/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_211/mul_1Mullstm_cell_211/Sigmoid:y:0 lstm_cell_211/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_211/add_1AddV2lstm_cell_211/mul:z:0lstm_cell_211/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_211/Sigmoid_2Sigmoidlstm_cell_211/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_211/Relu_1Relulstm_cell_211/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_211/mul_2Mullstm_cell_211/Sigmoid_2:y:0"lstm_cell_211/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_211_matmul_readvariableop_resource.lstm_cell_211_matmul_1_readvariableop_resource-lstm_cell_211_biasadd_readvariableop_resource*
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
while_body_1287066*
condR
while_cond_1287065*K
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
NoOpNoOp%^lstm_cell_211/BiasAdd/ReadVariableOp$^lstm_cell_211/MatMul/ReadVariableOp&^lstm_cell_211/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_211/BiasAdd/ReadVariableOp$lstm_cell_211/BiasAdd/ReadVariableOp2J
#lstm_cell_211/MatMul/ReadVariableOp#lstm_cell_211/MatMul/ReadVariableOp2N
%lstm_cell_211/MatMul_1/ReadVariableOp%lstm_cell_211/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_1284831
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1284831___redundant_placeholder05
1while_while_cond_1284831___redundant_placeholder15
1while_while_cond_1284831___redundant_placeholder25
1while_while_cond_1284831___redundant_placeholder3
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
lstm_161_while_cond_1285686.
*lstm_161_while_lstm_161_while_loop_counter4
0lstm_161_while_lstm_161_while_maximum_iterations
lstm_161_while_placeholder 
lstm_161_while_placeholder_1 
lstm_161_while_placeholder_2 
lstm_161_while_placeholder_30
,lstm_161_while_less_lstm_161_strided_slice_1G
Clstm_161_while_lstm_161_while_cond_1285686___redundant_placeholder0G
Clstm_161_while_lstm_161_while_cond_1285686___redundant_placeholder1G
Clstm_161_while_lstm_161_while_cond_1285686___redundant_placeholder2G
Clstm_161_while_lstm_161_while_cond_1285686___redundant_placeholder3
lstm_161_while_identity
?
lstm_161/while/LessLesslstm_161_while_placeholder,lstm_161_while_less_lstm_161_strided_slice_1*
T0*
_output_shapes
: ]
lstm_161/while/IdentityIdentitylstm_161/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_161_while_identity lstm_161/while/Identity:output:0*(
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
while_cond_1283116
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1283116___redundant_placeholder05
1while_while_cond_1283116___redundant_placeholder15
1while_while_cond_1283116___redundant_placeholder25
1while_while_cond_1283116___redundant_placeholder3
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
lstm_161_while_cond_1286113.
*lstm_161_while_lstm_161_while_loop_counter4
0lstm_161_while_lstm_161_while_maximum_iterations
lstm_161_while_placeholder 
lstm_161_while_placeholder_1 
lstm_161_while_placeholder_2 
lstm_161_while_placeholder_30
,lstm_161_while_less_lstm_161_strided_slice_1G
Clstm_161_while_lstm_161_while_cond_1286113___redundant_placeholder0G
Clstm_161_while_lstm_161_while_cond_1286113___redundant_placeholder1G
Clstm_161_while_lstm_161_while_cond_1286113___redundant_placeholder2G
Clstm_161_while_lstm_161_while_cond_1286113___redundant_placeholder3
lstm_161_while_identity
?
lstm_161/while/LessLesslstm_161_while_placeholder,lstm_161_while_less_lstm_161_strided_slice_1*
T0*
_output_shapes
: ]
lstm_161/while/IdentityIdentitylstm_161/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_161_while_identity lstm_161/while/Identity:output:0*(
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
)sequential_53_lstm_160_while_body_1282807J
Fsequential_53_lstm_160_while_sequential_53_lstm_160_while_loop_counterP
Lsequential_53_lstm_160_while_sequential_53_lstm_160_while_maximum_iterations,
(sequential_53_lstm_160_while_placeholder.
*sequential_53_lstm_160_while_placeholder_1.
*sequential_53_lstm_160_while_placeholder_2.
*sequential_53_lstm_160_while_placeholder_3I
Esequential_53_lstm_160_while_sequential_53_lstm_160_strided_slice_1_0?
?sequential_53_lstm_160_while_tensorarrayv2read_tensorlistgetitem_sequential_53_lstm_160_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_53_lstm_160_while_lstm_cell_211_matmul_readvariableop_resource_0:	d?`
Msequential_53_lstm_160_while_lstm_cell_211_matmul_1_readvariableop_resource_0:	2?[
Lsequential_53_lstm_160_while_lstm_cell_211_biasadd_readvariableop_resource_0:	?)
%sequential_53_lstm_160_while_identity+
'sequential_53_lstm_160_while_identity_1+
'sequential_53_lstm_160_while_identity_2+
'sequential_53_lstm_160_while_identity_3+
'sequential_53_lstm_160_while_identity_4+
'sequential_53_lstm_160_while_identity_5G
Csequential_53_lstm_160_while_sequential_53_lstm_160_strided_slice_1?
sequential_53_lstm_160_while_tensorarrayv2read_tensorlistgetitem_sequential_53_lstm_160_tensorarrayunstack_tensorlistfromtensor\
Isequential_53_lstm_160_while_lstm_cell_211_matmul_readvariableop_resource:	d?^
Ksequential_53_lstm_160_while_lstm_cell_211_matmul_1_readvariableop_resource:	2?Y
Jsequential_53_lstm_160_while_lstm_cell_211_biasadd_readvariableop_resource:	???Asequential_53/lstm_160/while/lstm_cell_211/BiasAdd/ReadVariableOp?@sequential_53/lstm_160/while/lstm_cell_211/MatMul/ReadVariableOp?Bsequential_53/lstm_160/while/lstm_cell_211/MatMul_1/ReadVariableOp?
Nsequential_53/lstm_160/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_53/lstm_160/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_53_lstm_160_while_tensorarrayv2read_tensorlistgetitem_sequential_53_lstm_160_tensorarrayunstack_tensorlistfromtensor_0(sequential_53_lstm_160_while_placeholderWsequential_53/lstm_160/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_53/lstm_160/while/lstm_cell_211/MatMul/ReadVariableOpReadVariableOpKsequential_53_lstm_160_while_lstm_cell_211_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_53/lstm_160/while/lstm_cell_211/MatMulMatMulGsequential_53/lstm_160/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_53/lstm_160/while/lstm_cell_211/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_53/lstm_160/while/lstm_cell_211/MatMul_1/ReadVariableOpReadVariableOpMsequential_53_lstm_160_while_lstm_cell_211_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_53/lstm_160/while/lstm_cell_211/MatMul_1MatMul*sequential_53_lstm_160_while_placeholder_2Jsequential_53/lstm_160/while/lstm_cell_211/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_53/lstm_160/while/lstm_cell_211/addAddV2;sequential_53/lstm_160/while/lstm_cell_211/MatMul:product:0=sequential_53/lstm_160/while/lstm_cell_211/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_53/lstm_160/while/lstm_cell_211/BiasAdd/ReadVariableOpReadVariableOpLsequential_53_lstm_160_while_lstm_cell_211_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_53/lstm_160/while/lstm_cell_211/BiasAddBiasAdd2sequential_53/lstm_160/while/lstm_cell_211/add:z:0Isequential_53/lstm_160/while/lstm_cell_211/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_53/lstm_160/while/lstm_cell_211/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_53/lstm_160/while/lstm_cell_211/splitSplitCsequential_53/lstm_160/while/lstm_cell_211/split/split_dim:output:0;sequential_53/lstm_160/while/lstm_cell_211/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_53/lstm_160/while/lstm_cell_211/SigmoidSigmoid9sequential_53/lstm_160/while/lstm_cell_211/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_53/lstm_160/while/lstm_cell_211/Sigmoid_1Sigmoid9sequential_53/lstm_160/while/lstm_cell_211/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_53/lstm_160/while/lstm_cell_211/mulMul8sequential_53/lstm_160/while/lstm_cell_211/Sigmoid_1:y:0*sequential_53_lstm_160_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_53/lstm_160/while/lstm_cell_211/ReluRelu9sequential_53/lstm_160/while/lstm_cell_211/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_53/lstm_160/while/lstm_cell_211/mul_1Mul6sequential_53/lstm_160/while/lstm_cell_211/Sigmoid:y:0=sequential_53/lstm_160/while/lstm_cell_211/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_53/lstm_160/while/lstm_cell_211/add_1AddV22sequential_53/lstm_160/while/lstm_cell_211/mul:z:04sequential_53/lstm_160/while/lstm_cell_211/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_53/lstm_160/while/lstm_cell_211/Sigmoid_2Sigmoid9sequential_53/lstm_160/while/lstm_cell_211/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_53/lstm_160/while/lstm_cell_211/Relu_1Relu4sequential_53/lstm_160/while/lstm_cell_211/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_53/lstm_160/while/lstm_cell_211/mul_2Mul8sequential_53/lstm_160/while/lstm_cell_211/Sigmoid_2:y:0?sequential_53/lstm_160/while/lstm_cell_211/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_53/lstm_160/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_53_lstm_160_while_placeholder_1(sequential_53_lstm_160_while_placeholder4sequential_53/lstm_160/while/lstm_cell_211/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_53/lstm_160/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_53/lstm_160/while/addAddV2(sequential_53_lstm_160_while_placeholder+sequential_53/lstm_160/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_53/lstm_160/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_53/lstm_160/while/add_1AddV2Fsequential_53_lstm_160_while_sequential_53_lstm_160_while_loop_counter-sequential_53/lstm_160/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_53/lstm_160/while/IdentityIdentity&sequential_53/lstm_160/while/add_1:z:0"^sequential_53/lstm_160/while/NoOp*
T0*
_output_shapes
: ?
'sequential_53/lstm_160/while/Identity_1IdentityLsequential_53_lstm_160_while_sequential_53_lstm_160_while_maximum_iterations"^sequential_53/lstm_160/while/NoOp*
T0*
_output_shapes
: ?
'sequential_53/lstm_160/while/Identity_2Identity$sequential_53/lstm_160/while/add:z:0"^sequential_53/lstm_160/while/NoOp*
T0*
_output_shapes
: ?
'sequential_53/lstm_160/while/Identity_3IdentityQsequential_53/lstm_160/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_53/lstm_160/while/NoOp*
T0*
_output_shapes
: ?
'sequential_53/lstm_160/while/Identity_4Identity4sequential_53/lstm_160/while/lstm_cell_211/mul_2:z:0"^sequential_53/lstm_160/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_53/lstm_160/while/Identity_5Identity4sequential_53/lstm_160/while/lstm_cell_211/add_1:z:0"^sequential_53/lstm_160/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_53/lstm_160/while/NoOpNoOpB^sequential_53/lstm_160/while/lstm_cell_211/BiasAdd/ReadVariableOpA^sequential_53/lstm_160/while/lstm_cell_211/MatMul/ReadVariableOpC^sequential_53/lstm_160/while/lstm_cell_211/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_53_lstm_160_while_identity.sequential_53/lstm_160/while/Identity:output:0"[
'sequential_53_lstm_160_while_identity_10sequential_53/lstm_160/while/Identity_1:output:0"[
'sequential_53_lstm_160_while_identity_20sequential_53/lstm_160/while/Identity_2:output:0"[
'sequential_53_lstm_160_while_identity_30sequential_53/lstm_160/while/Identity_3:output:0"[
'sequential_53_lstm_160_while_identity_40sequential_53/lstm_160/while/Identity_4:output:0"[
'sequential_53_lstm_160_while_identity_50sequential_53/lstm_160/while/Identity_5:output:0"?
Jsequential_53_lstm_160_while_lstm_cell_211_biasadd_readvariableop_resourceLsequential_53_lstm_160_while_lstm_cell_211_biasadd_readvariableop_resource_0"?
Ksequential_53_lstm_160_while_lstm_cell_211_matmul_1_readvariableop_resourceMsequential_53_lstm_160_while_lstm_cell_211_matmul_1_readvariableop_resource_0"?
Isequential_53_lstm_160_while_lstm_cell_211_matmul_readvariableop_resourceKsequential_53_lstm_160_while_lstm_cell_211_matmul_readvariableop_resource_0"?
Csequential_53_lstm_160_while_sequential_53_lstm_160_strided_slice_1Esequential_53_lstm_160_while_sequential_53_lstm_160_strided_slice_1_0"?
sequential_53_lstm_160_while_tensorarrayv2read_tensorlistgetitem_sequential_53_lstm_160_tensorarrayunstack_tensorlistfromtensor?sequential_53_lstm_160_while_tensorarrayv2read_tensorlistgetitem_sequential_53_lstm_160_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_53/lstm_160/while/lstm_cell_211/BiasAdd/ReadVariableOpAsequential_53/lstm_160/while/lstm_cell_211/BiasAdd/ReadVariableOp2?
@sequential_53/lstm_160/while/lstm_cell_211/MatMul/ReadVariableOp@sequential_53/lstm_160/while/lstm_cell_211/MatMul/ReadVariableOp2?
Bsequential_53/lstm_160/while/lstm_cell_211/MatMul_1/ReadVariableOpBsequential_53/lstm_160/while/lstm_cell_211/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_159_while_body_1285836.
*lstm_159_while_lstm_159_while_loop_counter4
0lstm_159_while_lstm_159_while_maximum_iterations
lstm_159_while_placeholder 
lstm_159_while_placeholder_1 
lstm_159_while_placeholder_2 
lstm_159_while_placeholder_3-
)lstm_159_while_lstm_159_strided_slice_1_0i
elstm_159_while_tensorarrayv2read_tensorlistgetitem_lstm_159_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_159_while_lstm_cell_210_matmul_readvariableop_resource_0:	?R
?lstm_159_while_lstm_cell_210_matmul_1_readvariableop_resource_0:	d?M
>lstm_159_while_lstm_cell_210_biasadd_readvariableop_resource_0:	?
lstm_159_while_identity
lstm_159_while_identity_1
lstm_159_while_identity_2
lstm_159_while_identity_3
lstm_159_while_identity_4
lstm_159_while_identity_5+
'lstm_159_while_lstm_159_strided_slice_1g
clstm_159_while_tensorarrayv2read_tensorlistgetitem_lstm_159_tensorarrayunstack_tensorlistfromtensorN
;lstm_159_while_lstm_cell_210_matmul_readvariableop_resource:	?P
=lstm_159_while_lstm_cell_210_matmul_1_readvariableop_resource:	d?K
<lstm_159_while_lstm_cell_210_biasadd_readvariableop_resource:	???3lstm_159/while/lstm_cell_210/BiasAdd/ReadVariableOp?2lstm_159/while/lstm_cell_210/MatMul/ReadVariableOp?4lstm_159/while/lstm_cell_210/MatMul_1/ReadVariableOp?
@lstm_159/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_159/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_159_while_tensorarrayv2read_tensorlistgetitem_lstm_159_tensorarrayunstack_tensorlistfromtensor_0lstm_159_while_placeholderIlstm_159/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_159/while/lstm_cell_210/MatMul/ReadVariableOpReadVariableOp=lstm_159_while_lstm_cell_210_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_159/while/lstm_cell_210/MatMulMatMul9lstm_159/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_159/while/lstm_cell_210/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_159/while/lstm_cell_210/MatMul_1/ReadVariableOpReadVariableOp?lstm_159_while_lstm_cell_210_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_159/while/lstm_cell_210/MatMul_1MatMullstm_159_while_placeholder_2<lstm_159/while/lstm_cell_210/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_159/while/lstm_cell_210/addAddV2-lstm_159/while/lstm_cell_210/MatMul:product:0/lstm_159/while/lstm_cell_210/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_159/while/lstm_cell_210/BiasAdd/ReadVariableOpReadVariableOp>lstm_159_while_lstm_cell_210_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_159/while/lstm_cell_210/BiasAddBiasAdd$lstm_159/while/lstm_cell_210/add:z:0;lstm_159/while/lstm_cell_210/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_159/while/lstm_cell_210/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_159/while/lstm_cell_210/splitSplit5lstm_159/while/lstm_cell_210/split/split_dim:output:0-lstm_159/while/lstm_cell_210/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_159/while/lstm_cell_210/SigmoidSigmoid+lstm_159/while/lstm_cell_210/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_159/while/lstm_cell_210/Sigmoid_1Sigmoid+lstm_159/while/lstm_cell_210/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_159/while/lstm_cell_210/mulMul*lstm_159/while/lstm_cell_210/Sigmoid_1:y:0lstm_159_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_159/while/lstm_cell_210/ReluRelu+lstm_159/while/lstm_cell_210/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_159/while/lstm_cell_210/mul_1Mul(lstm_159/while/lstm_cell_210/Sigmoid:y:0/lstm_159/while/lstm_cell_210/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_159/while/lstm_cell_210/add_1AddV2$lstm_159/while/lstm_cell_210/mul:z:0&lstm_159/while/lstm_cell_210/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_159/while/lstm_cell_210/Sigmoid_2Sigmoid+lstm_159/while/lstm_cell_210/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_159/while/lstm_cell_210/Relu_1Relu&lstm_159/while/lstm_cell_210/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_159/while/lstm_cell_210/mul_2Mul*lstm_159/while/lstm_cell_210/Sigmoid_2:y:01lstm_159/while/lstm_cell_210/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_159/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_159_while_placeholder_1lstm_159_while_placeholder&lstm_159/while/lstm_cell_210/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_159/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_159/while/addAddV2lstm_159_while_placeholderlstm_159/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_159/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_159/while/add_1AddV2*lstm_159_while_lstm_159_while_loop_counterlstm_159/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_159/while/IdentityIdentitylstm_159/while/add_1:z:0^lstm_159/while/NoOp*
T0*
_output_shapes
: ?
lstm_159/while/Identity_1Identity0lstm_159_while_lstm_159_while_maximum_iterations^lstm_159/while/NoOp*
T0*
_output_shapes
: t
lstm_159/while/Identity_2Identitylstm_159/while/add:z:0^lstm_159/while/NoOp*
T0*
_output_shapes
: ?
lstm_159/while/Identity_3IdentityClstm_159/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_159/while/NoOp*
T0*
_output_shapes
: ?
lstm_159/while/Identity_4Identity&lstm_159/while/lstm_cell_210/mul_2:z:0^lstm_159/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_159/while/Identity_5Identity&lstm_159/while/lstm_cell_210/add_1:z:0^lstm_159/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_159/while/NoOpNoOp4^lstm_159/while/lstm_cell_210/BiasAdd/ReadVariableOp3^lstm_159/while/lstm_cell_210/MatMul/ReadVariableOp5^lstm_159/while/lstm_cell_210/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_159_while_identity lstm_159/while/Identity:output:0"?
lstm_159_while_identity_1"lstm_159/while/Identity_1:output:0"?
lstm_159_while_identity_2"lstm_159/while/Identity_2:output:0"?
lstm_159_while_identity_3"lstm_159/while/Identity_3:output:0"?
lstm_159_while_identity_4"lstm_159/while/Identity_4:output:0"?
lstm_159_while_identity_5"lstm_159/while/Identity_5:output:0"T
'lstm_159_while_lstm_159_strided_slice_1)lstm_159_while_lstm_159_strided_slice_1_0"~
<lstm_159_while_lstm_cell_210_biasadd_readvariableop_resource>lstm_159_while_lstm_cell_210_biasadd_readvariableop_resource_0"?
=lstm_159_while_lstm_cell_210_matmul_1_readvariableop_resource?lstm_159_while_lstm_cell_210_matmul_1_readvariableop_resource_0"|
;lstm_159_while_lstm_cell_210_matmul_readvariableop_resource=lstm_159_while_lstm_cell_210_matmul_readvariableop_resource_0"?
clstm_159_while_tensorarrayv2read_tensorlistgetitem_lstm_159_tensorarrayunstack_tensorlistfromtensorelstm_159_while_tensorarrayv2read_tensorlistgetitem_lstm_159_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_159/while/lstm_cell_210/BiasAdd/ReadVariableOp3lstm_159/while/lstm_cell_210/BiasAdd/ReadVariableOp2h
2lstm_159/while/lstm_cell_210/MatMul/ReadVariableOp2lstm_159/while/lstm_cell_210/MatMul/ReadVariableOp2l
4lstm_159/while/lstm_cell_210/MatMul_1/ReadVariableOp4lstm_159/while/lstm_cell_210/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_159_layer_call_and_return_conditional_losses_1283186

inputs(
lstm_cell_210_1283104:	?(
lstm_cell_210_1283106:	d?$
lstm_cell_210_1283108:	?
identity??%lstm_cell_210/StatefulPartitionedCall?while;
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
%lstm_cell_210/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_210_1283104lstm_cell_210_1283106lstm_cell_210_1283108*
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
J__inference_lstm_cell_210_layer_call_and_return_conditional_losses_1283103n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_210_1283104lstm_cell_210_1283106lstm_cell_210_1283108*
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
while_body_1283117*
condR
while_cond_1283116*K
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
NoOpNoOp&^lstm_cell_210/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_210/StatefulPartitionedCall%lstm_cell_210/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_1283816
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1283816___redundant_placeholder05
1while_while_cond_1283816___redundant_placeholder15
1while_while_cond_1283816___redundant_placeholder25
1while_while_cond_1283816___redundant_placeholder3
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
E__inference_lstm_161_layer_call_and_return_conditional_losses_1287766
inputs_0>
,lstm_cell_212_matmul_readvariableop_resource:2(@
.lstm_cell_212_matmul_1_readvariableop_resource:
(;
-lstm_cell_212_biasadd_readvariableop_resource:(
identity??$lstm_cell_212/BiasAdd/ReadVariableOp?#lstm_cell_212/MatMul/ReadVariableOp?%lstm_cell_212/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_212/MatMul/ReadVariableOpReadVariableOp,lstm_cell_212_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_212/MatMulMatMulstrided_slice_2:output:0+lstm_cell_212/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_212/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_212_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_212/MatMul_1MatMulzeros:output:0-lstm_cell_212/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_212/addAddV2lstm_cell_212/MatMul:product:0 lstm_cell_212/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_212/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_212_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_212/BiasAddBiasAddlstm_cell_212/add:z:0,lstm_cell_212/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_212/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_212/splitSplit&lstm_cell_212/split/split_dim:output:0lstm_cell_212/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_212/SigmoidSigmoidlstm_cell_212/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_212/Sigmoid_1Sigmoidlstm_cell_212/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_212/mulMullstm_cell_212/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_212/ReluRelulstm_cell_212/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_212/mul_1Mullstm_cell_212/Sigmoid:y:0 lstm_cell_212/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_212/add_1AddV2lstm_cell_212/mul:z:0lstm_cell_212/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_212/Sigmoid_2Sigmoidlstm_cell_212/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_212/Relu_1Relulstm_cell_212/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_212/mul_2Mullstm_cell_212/Sigmoid_2:y:0"lstm_cell_212/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_212_matmul_readvariableop_resource.lstm_cell_212_matmul_1_readvariableop_resource-lstm_cell_212_biasadd_readvariableop_resource*
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
while_body_1287682*
condR
while_cond_1287681*K
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
NoOpNoOp%^lstm_cell_212/BiasAdd/ReadVariableOp$^lstm_cell_212/MatMul/ReadVariableOp&^lstm_cell_212/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_212/BiasAdd/ReadVariableOp$lstm_cell_212/BiasAdd/ReadVariableOp2J
#lstm_cell_212/MatMul/ReadVariableOp#lstm_cell_212/MatMul/ReadVariableOp2N
%lstm_cell_212/MatMul_1/ReadVariableOp%lstm_cell_212/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_1284996
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1284996___redundant_placeholder05
1while_while_cond_1284996___redundant_placeholder15
1while_while_cond_1284996___redundant_placeholder25
1while_while_cond_1284996___redundant_placeholder3
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
/__inference_lstm_cell_210_layer_call_fn_1288088

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
J__inference_lstm_cell_210_layer_call_and_return_conditional_losses_1283103o
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
?
?
while_cond_1284150
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1284150___redundant_placeholder05
1while_while_cond_1284150___redundant_placeholder15
1while_while_cond_1284150___redundant_placeholder25
1while_while_cond_1284150___redundant_placeholder3
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
??
?
"__inference__wrapped_model_1283036
lstm_159_inputV
Csequential_53_lstm_159_lstm_cell_210_matmul_readvariableop_resource:	?X
Esequential_53_lstm_159_lstm_cell_210_matmul_1_readvariableop_resource:	d?S
Dsequential_53_lstm_159_lstm_cell_210_biasadd_readvariableop_resource:	?V
Csequential_53_lstm_160_lstm_cell_211_matmul_readvariableop_resource:	d?X
Esequential_53_lstm_160_lstm_cell_211_matmul_1_readvariableop_resource:	2?S
Dsequential_53_lstm_160_lstm_cell_211_biasadd_readvariableop_resource:	?U
Csequential_53_lstm_161_lstm_cell_212_matmul_readvariableop_resource:2(W
Esequential_53_lstm_161_lstm_cell_212_matmul_1_readvariableop_resource:
(R
Dsequential_53_lstm_161_lstm_cell_212_biasadd_readvariableop_resource:(G
5sequential_53_dense_53_matmul_readvariableop_resource:
D
6sequential_53_dense_53_biasadd_readvariableop_resource:
identity??-sequential_53/dense_53/BiasAdd/ReadVariableOp?,sequential_53/dense_53/MatMul/ReadVariableOp?;sequential_53/lstm_159/lstm_cell_210/BiasAdd/ReadVariableOp?:sequential_53/lstm_159/lstm_cell_210/MatMul/ReadVariableOp?<sequential_53/lstm_159/lstm_cell_210/MatMul_1/ReadVariableOp?sequential_53/lstm_159/while?;sequential_53/lstm_160/lstm_cell_211/BiasAdd/ReadVariableOp?:sequential_53/lstm_160/lstm_cell_211/MatMul/ReadVariableOp?<sequential_53/lstm_160/lstm_cell_211/MatMul_1/ReadVariableOp?sequential_53/lstm_160/while?;sequential_53/lstm_161/lstm_cell_212/BiasAdd/ReadVariableOp?:sequential_53/lstm_161/lstm_cell_212/MatMul/ReadVariableOp?<sequential_53/lstm_161/lstm_cell_212/MatMul_1/ReadVariableOp?sequential_53/lstm_161/whileZ
sequential_53/lstm_159/ShapeShapelstm_159_input*
T0*
_output_shapes
:t
*sequential_53/lstm_159/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_53/lstm_159/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_53/lstm_159/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_53/lstm_159/strided_sliceStridedSlice%sequential_53/lstm_159/Shape:output:03sequential_53/lstm_159/strided_slice/stack:output:05sequential_53/lstm_159/strided_slice/stack_1:output:05sequential_53/lstm_159/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_53/lstm_159/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_53/lstm_159/zeros/packedPack-sequential_53/lstm_159/strided_slice:output:0.sequential_53/lstm_159/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_53/lstm_159/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_53/lstm_159/zerosFill,sequential_53/lstm_159/zeros/packed:output:0+sequential_53/lstm_159/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_53/lstm_159/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_53/lstm_159/zeros_1/packedPack-sequential_53/lstm_159/strided_slice:output:00sequential_53/lstm_159/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_53/lstm_159/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_53/lstm_159/zeros_1Fill.sequential_53/lstm_159/zeros_1/packed:output:0-sequential_53/lstm_159/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_53/lstm_159/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_53/lstm_159/transpose	Transposelstm_159_input.sequential_53/lstm_159/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_53/lstm_159/Shape_1Shape$sequential_53/lstm_159/transpose:y:0*
T0*
_output_shapes
:v
,sequential_53/lstm_159/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_53/lstm_159/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_53/lstm_159/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_53/lstm_159/strided_slice_1StridedSlice'sequential_53/lstm_159/Shape_1:output:05sequential_53/lstm_159/strided_slice_1/stack:output:07sequential_53/lstm_159/strided_slice_1/stack_1:output:07sequential_53/lstm_159/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_53/lstm_159/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_53/lstm_159/TensorArrayV2TensorListReserve;sequential_53/lstm_159/TensorArrayV2/element_shape:output:0/sequential_53/lstm_159/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_53/lstm_159/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_53/lstm_159/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_53/lstm_159/transpose:y:0Usequential_53/lstm_159/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_53/lstm_159/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_53/lstm_159/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_53/lstm_159/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_53/lstm_159/strided_slice_2StridedSlice$sequential_53/lstm_159/transpose:y:05sequential_53/lstm_159/strided_slice_2/stack:output:07sequential_53/lstm_159/strided_slice_2/stack_1:output:07sequential_53/lstm_159/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_53/lstm_159/lstm_cell_210/MatMul/ReadVariableOpReadVariableOpCsequential_53_lstm_159_lstm_cell_210_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_53/lstm_159/lstm_cell_210/MatMulMatMul/sequential_53/lstm_159/strided_slice_2:output:0Bsequential_53/lstm_159/lstm_cell_210/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_53/lstm_159/lstm_cell_210/MatMul_1/ReadVariableOpReadVariableOpEsequential_53_lstm_159_lstm_cell_210_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_53/lstm_159/lstm_cell_210/MatMul_1MatMul%sequential_53/lstm_159/zeros:output:0Dsequential_53/lstm_159/lstm_cell_210/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_53/lstm_159/lstm_cell_210/addAddV25sequential_53/lstm_159/lstm_cell_210/MatMul:product:07sequential_53/lstm_159/lstm_cell_210/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_53/lstm_159/lstm_cell_210/BiasAdd/ReadVariableOpReadVariableOpDsequential_53_lstm_159_lstm_cell_210_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_53/lstm_159/lstm_cell_210/BiasAddBiasAdd,sequential_53/lstm_159/lstm_cell_210/add:z:0Csequential_53/lstm_159/lstm_cell_210/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_53/lstm_159/lstm_cell_210/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_53/lstm_159/lstm_cell_210/splitSplit=sequential_53/lstm_159/lstm_cell_210/split/split_dim:output:05sequential_53/lstm_159/lstm_cell_210/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_53/lstm_159/lstm_cell_210/SigmoidSigmoid3sequential_53/lstm_159/lstm_cell_210/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_53/lstm_159/lstm_cell_210/Sigmoid_1Sigmoid3sequential_53/lstm_159/lstm_cell_210/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_53/lstm_159/lstm_cell_210/mulMul2sequential_53/lstm_159/lstm_cell_210/Sigmoid_1:y:0'sequential_53/lstm_159/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_53/lstm_159/lstm_cell_210/ReluRelu3sequential_53/lstm_159/lstm_cell_210/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_53/lstm_159/lstm_cell_210/mul_1Mul0sequential_53/lstm_159/lstm_cell_210/Sigmoid:y:07sequential_53/lstm_159/lstm_cell_210/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_53/lstm_159/lstm_cell_210/add_1AddV2,sequential_53/lstm_159/lstm_cell_210/mul:z:0.sequential_53/lstm_159/lstm_cell_210/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_53/lstm_159/lstm_cell_210/Sigmoid_2Sigmoid3sequential_53/lstm_159/lstm_cell_210/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_53/lstm_159/lstm_cell_210/Relu_1Relu.sequential_53/lstm_159/lstm_cell_210/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_53/lstm_159/lstm_cell_210/mul_2Mul2sequential_53/lstm_159/lstm_cell_210/Sigmoid_2:y:09sequential_53/lstm_159/lstm_cell_210/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_53/lstm_159/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_53/lstm_159/TensorArrayV2_1TensorListReserve=sequential_53/lstm_159/TensorArrayV2_1/element_shape:output:0/sequential_53/lstm_159/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_53/lstm_159/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_53/lstm_159/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_53/lstm_159/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_53/lstm_159/whileWhile2sequential_53/lstm_159/while/loop_counter:output:08sequential_53/lstm_159/while/maximum_iterations:output:0$sequential_53/lstm_159/time:output:0/sequential_53/lstm_159/TensorArrayV2_1:handle:0%sequential_53/lstm_159/zeros:output:0'sequential_53/lstm_159/zeros_1:output:0/sequential_53/lstm_159/strided_slice_1:output:0Nsequential_53/lstm_159/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_53_lstm_159_lstm_cell_210_matmul_readvariableop_resourceEsequential_53_lstm_159_lstm_cell_210_matmul_1_readvariableop_resourceDsequential_53_lstm_159_lstm_cell_210_biasadd_readvariableop_resource*
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
)sequential_53_lstm_159_while_body_1282668*5
cond-R+
)sequential_53_lstm_159_while_cond_1282667*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_53/lstm_159/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_53/lstm_159/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_53/lstm_159/while:output:3Psequential_53/lstm_159/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_53/lstm_159/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_53/lstm_159/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_53/lstm_159/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_53/lstm_159/strided_slice_3StridedSliceBsequential_53/lstm_159/TensorArrayV2Stack/TensorListStack:tensor:05sequential_53/lstm_159/strided_slice_3/stack:output:07sequential_53/lstm_159/strided_slice_3/stack_1:output:07sequential_53/lstm_159/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_53/lstm_159/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_53/lstm_159/transpose_1	TransposeBsequential_53/lstm_159/TensorArrayV2Stack/TensorListStack:tensor:00sequential_53/lstm_159/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_53/lstm_159/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_53/lstm_160/ShapeShape&sequential_53/lstm_159/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_53/lstm_160/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_53/lstm_160/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_53/lstm_160/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_53/lstm_160/strided_sliceStridedSlice%sequential_53/lstm_160/Shape:output:03sequential_53/lstm_160/strided_slice/stack:output:05sequential_53/lstm_160/strided_slice/stack_1:output:05sequential_53/lstm_160/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_53/lstm_160/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_53/lstm_160/zeros/packedPack-sequential_53/lstm_160/strided_slice:output:0.sequential_53/lstm_160/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_53/lstm_160/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_53/lstm_160/zerosFill,sequential_53/lstm_160/zeros/packed:output:0+sequential_53/lstm_160/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_53/lstm_160/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_53/lstm_160/zeros_1/packedPack-sequential_53/lstm_160/strided_slice:output:00sequential_53/lstm_160/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_53/lstm_160/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_53/lstm_160/zeros_1Fill.sequential_53/lstm_160/zeros_1/packed:output:0-sequential_53/lstm_160/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_53/lstm_160/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_53/lstm_160/transpose	Transpose&sequential_53/lstm_159/transpose_1:y:0.sequential_53/lstm_160/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_53/lstm_160/Shape_1Shape$sequential_53/lstm_160/transpose:y:0*
T0*
_output_shapes
:v
,sequential_53/lstm_160/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_53/lstm_160/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_53/lstm_160/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_53/lstm_160/strided_slice_1StridedSlice'sequential_53/lstm_160/Shape_1:output:05sequential_53/lstm_160/strided_slice_1/stack:output:07sequential_53/lstm_160/strided_slice_1/stack_1:output:07sequential_53/lstm_160/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_53/lstm_160/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_53/lstm_160/TensorArrayV2TensorListReserve;sequential_53/lstm_160/TensorArrayV2/element_shape:output:0/sequential_53/lstm_160/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_53/lstm_160/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_53/lstm_160/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_53/lstm_160/transpose:y:0Usequential_53/lstm_160/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_53/lstm_160/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_53/lstm_160/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_53/lstm_160/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_53/lstm_160/strided_slice_2StridedSlice$sequential_53/lstm_160/transpose:y:05sequential_53/lstm_160/strided_slice_2/stack:output:07sequential_53/lstm_160/strided_slice_2/stack_1:output:07sequential_53/lstm_160/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_53/lstm_160/lstm_cell_211/MatMul/ReadVariableOpReadVariableOpCsequential_53_lstm_160_lstm_cell_211_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_53/lstm_160/lstm_cell_211/MatMulMatMul/sequential_53/lstm_160/strided_slice_2:output:0Bsequential_53/lstm_160/lstm_cell_211/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_53/lstm_160/lstm_cell_211/MatMul_1/ReadVariableOpReadVariableOpEsequential_53_lstm_160_lstm_cell_211_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_53/lstm_160/lstm_cell_211/MatMul_1MatMul%sequential_53/lstm_160/zeros:output:0Dsequential_53/lstm_160/lstm_cell_211/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_53/lstm_160/lstm_cell_211/addAddV25sequential_53/lstm_160/lstm_cell_211/MatMul:product:07sequential_53/lstm_160/lstm_cell_211/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_53/lstm_160/lstm_cell_211/BiasAdd/ReadVariableOpReadVariableOpDsequential_53_lstm_160_lstm_cell_211_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_53/lstm_160/lstm_cell_211/BiasAddBiasAdd,sequential_53/lstm_160/lstm_cell_211/add:z:0Csequential_53/lstm_160/lstm_cell_211/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_53/lstm_160/lstm_cell_211/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_53/lstm_160/lstm_cell_211/splitSplit=sequential_53/lstm_160/lstm_cell_211/split/split_dim:output:05sequential_53/lstm_160/lstm_cell_211/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_53/lstm_160/lstm_cell_211/SigmoidSigmoid3sequential_53/lstm_160/lstm_cell_211/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_53/lstm_160/lstm_cell_211/Sigmoid_1Sigmoid3sequential_53/lstm_160/lstm_cell_211/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_53/lstm_160/lstm_cell_211/mulMul2sequential_53/lstm_160/lstm_cell_211/Sigmoid_1:y:0'sequential_53/lstm_160/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_53/lstm_160/lstm_cell_211/ReluRelu3sequential_53/lstm_160/lstm_cell_211/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_53/lstm_160/lstm_cell_211/mul_1Mul0sequential_53/lstm_160/lstm_cell_211/Sigmoid:y:07sequential_53/lstm_160/lstm_cell_211/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_53/lstm_160/lstm_cell_211/add_1AddV2,sequential_53/lstm_160/lstm_cell_211/mul:z:0.sequential_53/lstm_160/lstm_cell_211/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_53/lstm_160/lstm_cell_211/Sigmoid_2Sigmoid3sequential_53/lstm_160/lstm_cell_211/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_53/lstm_160/lstm_cell_211/Relu_1Relu.sequential_53/lstm_160/lstm_cell_211/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_53/lstm_160/lstm_cell_211/mul_2Mul2sequential_53/lstm_160/lstm_cell_211/Sigmoid_2:y:09sequential_53/lstm_160/lstm_cell_211/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_53/lstm_160/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_53/lstm_160/TensorArrayV2_1TensorListReserve=sequential_53/lstm_160/TensorArrayV2_1/element_shape:output:0/sequential_53/lstm_160/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_53/lstm_160/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_53/lstm_160/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_53/lstm_160/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_53/lstm_160/whileWhile2sequential_53/lstm_160/while/loop_counter:output:08sequential_53/lstm_160/while/maximum_iterations:output:0$sequential_53/lstm_160/time:output:0/sequential_53/lstm_160/TensorArrayV2_1:handle:0%sequential_53/lstm_160/zeros:output:0'sequential_53/lstm_160/zeros_1:output:0/sequential_53/lstm_160/strided_slice_1:output:0Nsequential_53/lstm_160/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_53_lstm_160_lstm_cell_211_matmul_readvariableop_resourceEsequential_53_lstm_160_lstm_cell_211_matmul_1_readvariableop_resourceDsequential_53_lstm_160_lstm_cell_211_biasadd_readvariableop_resource*
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
)sequential_53_lstm_160_while_body_1282807*5
cond-R+
)sequential_53_lstm_160_while_cond_1282806*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_53/lstm_160/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_53/lstm_160/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_53/lstm_160/while:output:3Psequential_53/lstm_160/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_53/lstm_160/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_53/lstm_160/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_53/lstm_160/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_53/lstm_160/strided_slice_3StridedSliceBsequential_53/lstm_160/TensorArrayV2Stack/TensorListStack:tensor:05sequential_53/lstm_160/strided_slice_3/stack:output:07sequential_53/lstm_160/strided_slice_3/stack_1:output:07sequential_53/lstm_160/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_53/lstm_160/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_53/lstm_160/transpose_1	TransposeBsequential_53/lstm_160/TensorArrayV2Stack/TensorListStack:tensor:00sequential_53/lstm_160/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_53/lstm_160/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_53/lstm_161/ShapeShape&sequential_53/lstm_160/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_53/lstm_161/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_53/lstm_161/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_53/lstm_161/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_53/lstm_161/strided_sliceStridedSlice%sequential_53/lstm_161/Shape:output:03sequential_53/lstm_161/strided_slice/stack:output:05sequential_53/lstm_161/strided_slice/stack_1:output:05sequential_53/lstm_161/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_53/lstm_161/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_53/lstm_161/zeros/packedPack-sequential_53/lstm_161/strided_slice:output:0.sequential_53/lstm_161/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_53/lstm_161/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_53/lstm_161/zerosFill,sequential_53/lstm_161/zeros/packed:output:0+sequential_53/lstm_161/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_53/lstm_161/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_53/lstm_161/zeros_1/packedPack-sequential_53/lstm_161/strided_slice:output:00sequential_53/lstm_161/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_53/lstm_161/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_53/lstm_161/zeros_1Fill.sequential_53/lstm_161/zeros_1/packed:output:0-sequential_53/lstm_161/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_53/lstm_161/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_53/lstm_161/transpose	Transpose&sequential_53/lstm_160/transpose_1:y:0.sequential_53/lstm_161/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_53/lstm_161/Shape_1Shape$sequential_53/lstm_161/transpose:y:0*
T0*
_output_shapes
:v
,sequential_53/lstm_161/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_53/lstm_161/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_53/lstm_161/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_53/lstm_161/strided_slice_1StridedSlice'sequential_53/lstm_161/Shape_1:output:05sequential_53/lstm_161/strided_slice_1/stack:output:07sequential_53/lstm_161/strided_slice_1/stack_1:output:07sequential_53/lstm_161/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_53/lstm_161/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_53/lstm_161/TensorArrayV2TensorListReserve;sequential_53/lstm_161/TensorArrayV2/element_shape:output:0/sequential_53/lstm_161/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_53/lstm_161/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_53/lstm_161/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_53/lstm_161/transpose:y:0Usequential_53/lstm_161/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_53/lstm_161/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_53/lstm_161/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_53/lstm_161/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_53/lstm_161/strided_slice_2StridedSlice$sequential_53/lstm_161/transpose:y:05sequential_53/lstm_161/strided_slice_2/stack:output:07sequential_53/lstm_161/strided_slice_2/stack_1:output:07sequential_53/lstm_161/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_53/lstm_161/lstm_cell_212/MatMul/ReadVariableOpReadVariableOpCsequential_53_lstm_161_lstm_cell_212_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_53/lstm_161/lstm_cell_212/MatMulMatMul/sequential_53/lstm_161/strided_slice_2:output:0Bsequential_53/lstm_161/lstm_cell_212/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_53/lstm_161/lstm_cell_212/MatMul_1/ReadVariableOpReadVariableOpEsequential_53_lstm_161_lstm_cell_212_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_53/lstm_161/lstm_cell_212/MatMul_1MatMul%sequential_53/lstm_161/zeros:output:0Dsequential_53/lstm_161/lstm_cell_212/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_53/lstm_161/lstm_cell_212/addAddV25sequential_53/lstm_161/lstm_cell_212/MatMul:product:07sequential_53/lstm_161/lstm_cell_212/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_53/lstm_161/lstm_cell_212/BiasAdd/ReadVariableOpReadVariableOpDsequential_53_lstm_161_lstm_cell_212_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_53/lstm_161/lstm_cell_212/BiasAddBiasAdd,sequential_53/lstm_161/lstm_cell_212/add:z:0Csequential_53/lstm_161/lstm_cell_212/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_53/lstm_161/lstm_cell_212/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_53/lstm_161/lstm_cell_212/splitSplit=sequential_53/lstm_161/lstm_cell_212/split/split_dim:output:05sequential_53/lstm_161/lstm_cell_212/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_53/lstm_161/lstm_cell_212/SigmoidSigmoid3sequential_53/lstm_161/lstm_cell_212/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_53/lstm_161/lstm_cell_212/Sigmoid_1Sigmoid3sequential_53/lstm_161/lstm_cell_212/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_53/lstm_161/lstm_cell_212/mulMul2sequential_53/lstm_161/lstm_cell_212/Sigmoid_1:y:0'sequential_53/lstm_161/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_53/lstm_161/lstm_cell_212/ReluRelu3sequential_53/lstm_161/lstm_cell_212/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_53/lstm_161/lstm_cell_212/mul_1Mul0sequential_53/lstm_161/lstm_cell_212/Sigmoid:y:07sequential_53/lstm_161/lstm_cell_212/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_53/lstm_161/lstm_cell_212/add_1AddV2,sequential_53/lstm_161/lstm_cell_212/mul:z:0.sequential_53/lstm_161/lstm_cell_212/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_53/lstm_161/lstm_cell_212/Sigmoid_2Sigmoid3sequential_53/lstm_161/lstm_cell_212/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_53/lstm_161/lstm_cell_212/Relu_1Relu.sequential_53/lstm_161/lstm_cell_212/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_53/lstm_161/lstm_cell_212/mul_2Mul2sequential_53/lstm_161/lstm_cell_212/Sigmoid_2:y:09sequential_53/lstm_161/lstm_cell_212/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_53/lstm_161/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_53/lstm_161/TensorArrayV2_1TensorListReserve=sequential_53/lstm_161/TensorArrayV2_1/element_shape:output:0/sequential_53/lstm_161/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_53/lstm_161/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_53/lstm_161/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_53/lstm_161/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_53/lstm_161/whileWhile2sequential_53/lstm_161/while/loop_counter:output:08sequential_53/lstm_161/while/maximum_iterations:output:0$sequential_53/lstm_161/time:output:0/sequential_53/lstm_161/TensorArrayV2_1:handle:0%sequential_53/lstm_161/zeros:output:0'sequential_53/lstm_161/zeros_1:output:0/sequential_53/lstm_161/strided_slice_1:output:0Nsequential_53/lstm_161/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_53_lstm_161_lstm_cell_212_matmul_readvariableop_resourceEsequential_53_lstm_161_lstm_cell_212_matmul_1_readvariableop_resourceDsequential_53_lstm_161_lstm_cell_212_biasadd_readvariableop_resource*
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
)sequential_53_lstm_161_while_body_1282946*5
cond-R+
)sequential_53_lstm_161_while_cond_1282945*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_53/lstm_161/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_53/lstm_161/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_53/lstm_161/while:output:3Psequential_53/lstm_161/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_53/lstm_161/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_53/lstm_161/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_53/lstm_161/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_53/lstm_161/strided_slice_3StridedSliceBsequential_53/lstm_161/TensorArrayV2Stack/TensorListStack:tensor:05sequential_53/lstm_161/strided_slice_3/stack:output:07sequential_53/lstm_161/strided_slice_3/stack_1:output:07sequential_53/lstm_161/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_53/lstm_161/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_53/lstm_161/transpose_1	TransposeBsequential_53/lstm_161/TensorArrayV2Stack/TensorListStack:tensor:00sequential_53/lstm_161/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_53/lstm_161/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_53/dense_53/MatMul/ReadVariableOpReadVariableOp5sequential_53_dense_53_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_53/dense_53/MatMulMatMul/sequential_53/lstm_161/strided_slice_3:output:04sequential_53/dense_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_53/dense_53/BiasAdd/ReadVariableOpReadVariableOp6sequential_53_dense_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_53/dense_53/BiasAddBiasAdd'sequential_53/dense_53/MatMul:product:05sequential_53/dense_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_53/dense_53/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_53/dense_53/BiasAdd/ReadVariableOp-^sequential_53/dense_53/MatMul/ReadVariableOp<^sequential_53/lstm_159/lstm_cell_210/BiasAdd/ReadVariableOp;^sequential_53/lstm_159/lstm_cell_210/MatMul/ReadVariableOp=^sequential_53/lstm_159/lstm_cell_210/MatMul_1/ReadVariableOp^sequential_53/lstm_159/while<^sequential_53/lstm_160/lstm_cell_211/BiasAdd/ReadVariableOp;^sequential_53/lstm_160/lstm_cell_211/MatMul/ReadVariableOp=^sequential_53/lstm_160/lstm_cell_211/MatMul_1/ReadVariableOp^sequential_53/lstm_160/while<^sequential_53/lstm_161/lstm_cell_212/BiasAdd/ReadVariableOp;^sequential_53/lstm_161/lstm_cell_212/MatMul/ReadVariableOp=^sequential_53/lstm_161/lstm_cell_212/MatMul_1/ReadVariableOp^sequential_53/lstm_161/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_53/dense_53/BiasAdd/ReadVariableOp-sequential_53/dense_53/BiasAdd/ReadVariableOp2\
,sequential_53/dense_53/MatMul/ReadVariableOp,sequential_53/dense_53/MatMul/ReadVariableOp2z
;sequential_53/lstm_159/lstm_cell_210/BiasAdd/ReadVariableOp;sequential_53/lstm_159/lstm_cell_210/BiasAdd/ReadVariableOp2x
:sequential_53/lstm_159/lstm_cell_210/MatMul/ReadVariableOp:sequential_53/lstm_159/lstm_cell_210/MatMul/ReadVariableOp2|
<sequential_53/lstm_159/lstm_cell_210/MatMul_1/ReadVariableOp<sequential_53/lstm_159/lstm_cell_210/MatMul_1/ReadVariableOp2<
sequential_53/lstm_159/whilesequential_53/lstm_159/while2z
;sequential_53/lstm_160/lstm_cell_211/BiasAdd/ReadVariableOp;sequential_53/lstm_160/lstm_cell_211/BiasAdd/ReadVariableOp2x
:sequential_53/lstm_160/lstm_cell_211/MatMul/ReadVariableOp:sequential_53/lstm_160/lstm_cell_211/MatMul/ReadVariableOp2|
<sequential_53/lstm_160/lstm_cell_211/MatMul_1/ReadVariableOp<sequential_53/lstm_160/lstm_cell_211/MatMul_1/ReadVariableOp2<
sequential_53/lstm_160/whilesequential_53/lstm_160/while2z
;sequential_53/lstm_161/lstm_cell_212/BiasAdd/ReadVariableOp;sequential_53/lstm_161/lstm_cell_212/BiasAdd/ReadVariableOp2x
:sequential_53/lstm_161/lstm_cell_212/MatMul/ReadVariableOp:sequential_53/lstm_161/lstm_cell_212/MatMul/ReadVariableOp2|
<sequential_53/lstm_161/lstm_cell_212/MatMul_1/ReadVariableOp<sequential_53/lstm_161/lstm_cell_212/MatMul_1/ReadVariableOp2<
sequential_53/lstm_161/whilesequential_53/lstm_161/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_159_input
?
?
J__inference_sequential_53_layer_call_and_return_conditional_losses_1285149

inputs#
lstm_159_1285122:	?#
lstm_159_1285124:	d?
lstm_159_1285126:	?#
lstm_160_1285129:	d?#
lstm_160_1285131:	2?
lstm_160_1285133:	?"
lstm_161_1285136:2("
lstm_161_1285138:
(
lstm_161_1285140:("
dense_53_1285143:

dense_53_1285145:
identity?? dense_53/StatefulPartitionedCall? lstm_159/StatefulPartitionedCall? lstm_160/StatefulPartitionedCall? lstm_161/StatefulPartitionedCall?
 lstm_159/StatefulPartitionedCallStatefulPartitionedCallinputslstm_159_1285122lstm_159_1285124lstm_159_1285126*
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
E__inference_lstm_159_layer_call_and_return_conditional_losses_1285081?
 lstm_160/StatefulPartitionedCallStatefulPartitionedCall)lstm_159/StatefulPartitionedCall:output:0lstm_160_1285129lstm_160_1285131lstm_160_1285133*
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
E__inference_lstm_160_layer_call_and_return_conditional_losses_1284916?
 lstm_161/StatefulPartitionedCallStatefulPartitionedCall)lstm_160/StatefulPartitionedCall:output:0lstm_161_1285136lstm_161_1285138lstm_161_1285140*
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
E__inference_lstm_161_layer_call_and_return_conditional_losses_1284751?
 dense_53/StatefulPartitionedCallStatefulPartitionedCall)lstm_161/StatefulPartitionedCall:output:0dense_53_1285143dense_53_1285145*
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
E__inference_dense_53_layer_call_and_return_conditional_losses_1284553x
IdentityIdentity)dense_53/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_53/StatefulPartitionedCall!^lstm_159/StatefulPartitionedCall!^lstm_160/StatefulPartitionedCall!^lstm_161/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall2D
 lstm_159/StatefulPartitionedCall lstm_159/StatefulPartitionedCall2D
 lstm_160/StatefulPartitionedCall lstm_160/StatefulPartitionedCall2D
 lstm_161/StatefulPartitionedCall lstm_161/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1287681
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1287681___redundant_placeholder05
1while_while_cond_1287681___redundant_placeholder15
1while_while_cond_1287681___redundant_placeholder25
1while_while_cond_1287681___redundant_placeholder3
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
E__inference_lstm_161_layer_call_and_return_conditional_losses_1284751

inputs>
,lstm_cell_212_matmul_readvariableop_resource:2(@
.lstm_cell_212_matmul_1_readvariableop_resource:
(;
-lstm_cell_212_biasadd_readvariableop_resource:(
identity??$lstm_cell_212/BiasAdd/ReadVariableOp?#lstm_cell_212/MatMul/ReadVariableOp?%lstm_cell_212/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_212/MatMul/ReadVariableOpReadVariableOp,lstm_cell_212_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_212/MatMulMatMulstrided_slice_2:output:0+lstm_cell_212/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_212/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_212_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_212/MatMul_1MatMulzeros:output:0-lstm_cell_212/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_212/addAddV2lstm_cell_212/MatMul:product:0 lstm_cell_212/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_212/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_212_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_212/BiasAddBiasAddlstm_cell_212/add:z:0,lstm_cell_212/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_212/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_212/splitSplit&lstm_cell_212/split/split_dim:output:0lstm_cell_212/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_212/SigmoidSigmoidlstm_cell_212/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_212/Sigmoid_1Sigmoidlstm_cell_212/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_212/mulMullstm_cell_212/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_212/ReluRelulstm_cell_212/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_212/mul_1Mullstm_cell_212/Sigmoid:y:0 lstm_cell_212/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_212/add_1AddV2lstm_cell_212/mul:z:0lstm_cell_212/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_212/Sigmoid_2Sigmoidlstm_cell_212/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_212/Relu_1Relulstm_cell_212/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_212/mul_2Mullstm_cell_212/Sigmoid_2:y:0"lstm_cell_212/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_212_matmul_readvariableop_resource.lstm_cell_212_matmul_1_readvariableop_resource-lstm_cell_212_biasadd_readvariableop_resource*
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
while_body_1284667*
condR
while_cond_1284666*K
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
NoOpNoOp%^lstm_cell_212/BiasAdd/ReadVariableOp$^lstm_cell_212/MatMul/ReadVariableOp&^lstm_cell_212/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_212/BiasAdd/ReadVariableOp$lstm_cell_212/BiasAdd/ReadVariableOp2J
#lstm_cell_212/MatMul/ReadVariableOp#lstm_cell_212/MatMul/ReadVariableOp2N
%lstm_cell_212/MatMul_1/ReadVariableOp%lstm_cell_212/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_1287539
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_212_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_212_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_212_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_212_matmul_readvariableop_resource:2(F
4while_lstm_cell_212_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_212_biasadd_readvariableop_resource:(??*while/lstm_cell_212/BiasAdd/ReadVariableOp?)while/lstm_cell_212/MatMul/ReadVariableOp?+while/lstm_cell_212/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_212/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_212_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_212/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_212/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_212/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_212_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_212/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_212/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_212/addAddV2$while/lstm_cell_212/MatMul:product:0&while/lstm_cell_212/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_212/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_212_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_212/BiasAddBiasAddwhile/lstm_cell_212/add:z:02while/lstm_cell_212/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_212/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_212/splitSplit,while/lstm_cell_212/split/split_dim:output:0$while/lstm_cell_212/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_212/SigmoidSigmoid"while/lstm_cell_212/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_212/Sigmoid_1Sigmoid"while/lstm_cell_212/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_212/mulMul!while/lstm_cell_212/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_212/ReluRelu"while/lstm_cell_212/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_212/mul_1Mulwhile/lstm_cell_212/Sigmoid:y:0&while/lstm_cell_212/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_212/add_1AddV2while/lstm_cell_212/mul:z:0while/lstm_cell_212/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_212/Sigmoid_2Sigmoid"while/lstm_cell_212/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_212/Relu_1Reluwhile/lstm_cell_212/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_212/mul_2Mul!while/lstm_cell_212/Sigmoid_2:y:0(while/lstm_cell_212/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_212/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_212/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_212/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_212/BiasAdd/ReadVariableOp*^while/lstm_cell_212/MatMul/ReadVariableOp,^while/lstm_cell_212/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_212_biasadd_readvariableop_resource5while_lstm_cell_212_biasadd_readvariableop_resource_0"n
4while_lstm_cell_212_matmul_1_readvariableop_resource6while_lstm_cell_212_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_212_matmul_readvariableop_resource4while_lstm_cell_212_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_212/BiasAdd/ReadVariableOp*while/lstm_cell_212/BiasAdd/ReadVariableOp2V
)while/lstm_cell_212/MatMul/ReadVariableOp)while/lstm_cell_212/MatMul/ReadVariableOp2Z
+while/lstm_cell_212/MatMul_1/ReadVariableOp+while/lstm_cell_212/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_159_while_cond_1285408.
*lstm_159_while_lstm_159_while_loop_counter4
0lstm_159_while_lstm_159_while_maximum_iterations
lstm_159_while_placeholder 
lstm_159_while_placeholder_1 
lstm_159_while_placeholder_2 
lstm_159_while_placeholder_30
,lstm_159_while_less_lstm_159_strided_slice_1G
Clstm_159_while_lstm_159_while_cond_1285408___redundant_placeholder0G
Clstm_159_while_lstm_159_while_cond_1285408___redundant_placeholder1G
Clstm_159_while_lstm_159_while_cond_1285408___redundant_placeholder2G
Clstm_159_while_lstm_159_while_cond_1285408___redundant_placeholder3
lstm_159_while_identity
?
lstm_159/while/LessLesslstm_159_while_placeholder,lstm_159_while_less_lstm_159_strided_slice_1*
T0*
_output_shapes
: ]
lstm_159/while/IdentityIdentitylstm_159/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_159_while_identity lstm_159/while/Identity:output:0*(
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
J__inference_lstm_cell_211_layer_call_and_return_conditional_losses_1283453

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
?#
?
while_body_1283117
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_210_1283141_0:	?0
while_lstm_cell_210_1283143_0:	d?,
while_lstm_cell_210_1283145_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_210_1283141:	?.
while_lstm_cell_210_1283143:	d?*
while_lstm_cell_210_1283145:	???+while/lstm_cell_210/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_210/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_210_1283141_0while_lstm_cell_210_1283143_0while_lstm_cell_210_1283145_0*
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
J__inference_lstm_cell_210_layer_call_and_return_conditional_losses_1283103?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_210/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_210/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_210/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_210/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_210_1283141while_lstm_cell_210_1283141_0"<
while_lstm_cell_210_1283143while_lstm_cell_210_1283143_0"<
while_lstm_cell_210_1283145while_lstm_cell_210_1283145_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_210/StatefulPartitionedCall+while/lstm_cell_210/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?#
?
while_body_1283658
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_211_1283682_0:	d?0
while_lstm_cell_211_1283684_0:	2?,
while_lstm_cell_211_1283686_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_211_1283682:	d?.
while_lstm_cell_211_1283684:	2?*
while_lstm_cell_211_1283686:	???+while/lstm_cell_211/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_211/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_211_1283682_0while_lstm_cell_211_1283684_0while_lstm_cell_211_1283686_0*
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
J__inference_lstm_cell_211_layer_call_and_return_conditional_losses_1283599?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_211/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_211/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_211/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_211/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_211_1283682while_lstm_cell_211_1283682_0"<
while_lstm_cell_211_1283684while_lstm_cell_211_1283684_0"<
while_lstm_cell_211_1283686while_lstm_cell_211_1283686_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_211/StatefulPartitionedCall+while/lstm_cell_211/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_212_layer_call_and_return_conditional_losses_1283949

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

?
lstm_160_while_cond_1285974.
*lstm_160_while_lstm_160_while_loop_counter4
0lstm_160_while_lstm_160_while_maximum_iterations
lstm_160_while_placeholder 
lstm_160_while_placeholder_1 
lstm_160_while_placeholder_2 
lstm_160_while_placeholder_30
,lstm_160_while_less_lstm_160_strided_slice_1G
Clstm_160_while_lstm_160_while_cond_1285974___redundant_placeholder0G
Clstm_160_while_lstm_160_while_cond_1285974___redundant_placeholder1G
Clstm_160_while_lstm_160_while_cond_1285974___redundant_placeholder2G
Clstm_160_while_lstm_160_while_cond_1285974___redundant_placeholder3
lstm_160_while_identity
?
lstm_160/while/LessLesslstm_160_while_placeholder,lstm_160_while_less_lstm_160_strided_slice_1*
T0*
_output_shapes
: ]
lstm_160/while/IdentityIdentitylstm_160/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_160_while_identity lstm_160/while/Identity:output:0*(
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
/__inference_sequential_53_layer_call_fn_1285323

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
J__inference_sequential_53_layer_call_and_return_conditional_losses_1284560o
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
while_body_1287825
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_212_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_212_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_212_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_212_matmul_readvariableop_resource:2(F
4while_lstm_cell_212_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_212_biasadd_readvariableop_resource:(??*while/lstm_cell_212/BiasAdd/ReadVariableOp?)while/lstm_cell_212/MatMul/ReadVariableOp?+while/lstm_cell_212/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_212/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_212_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_212/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_212/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_212/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_212_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_212/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_212/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_212/addAddV2$while/lstm_cell_212/MatMul:product:0&while/lstm_cell_212/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_212/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_212_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_212/BiasAddBiasAddwhile/lstm_cell_212/add:z:02while/lstm_cell_212/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_212/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_212/splitSplit,while/lstm_cell_212/split/split_dim:output:0$while/lstm_cell_212/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_212/SigmoidSigmoid"while/lstm_cell_212/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_212/Sigmoid_1Sigmoid"while/lstm_cell_212/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_212/mulMul!while/lstm_cell_212/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_212/ReluRelu"while/lstm_cell_212/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_212/mul_1Mulwhile/lstm_cell_212/Sigmoid:y:0&while/lstm_cell_212/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_212/add_1AddV2while/lstm_cell_212/mul:z:0while/lstm_cell_212/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_212/Sigmoid_2Sigmoid"while/lstm_cell_212/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_212/Relu_1Reluwhile/lstm_cell_212/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_212/mul_2Mul!while/lstm_cell_212/Sigmoid_2:y:0(while/lstm_cell_212/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_212/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_212/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_212/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_212/BiasAdd/ReadVariableOp*^while/lstm_cell_212/MatMul/ReadVariableOp,^while/lstm_cell_212/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_212_biasadd_readvariableop_resource5while_lstm_cell_212_biasadd_readvariableop_resource_0"n
4while_lstm_cell_212_matmul_1_readvariableop_resource6while_lstm_cell_212_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_212_matmul_readvariableop_resource4while_lstm_cell_212_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_212/BiasAdd/ReadVariableOp*while/lstm_cell_212/BiasAdd/ReadVariableOp2V
)while/lstm_cell_212/MatMul/ReadVariableOp)while/lstm_cell_212/MatMul/ReadVariableOp2Z
+while/lstm_cell_212/MatMul_1/ReadVariableOp+while/lstm_cell_212/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_160_layer_call_and_return_conditional_losses_1284916

inputs?
,lstm_cell_211_matmul_readvariableop_resource:	d?A
.lstm_cell_211_matmul_1_readvariableop_resource:	2?<
-lstm_cell_211_biasadd_readvariableop_resource:	?
identity??$lstm_cell_211/BiasAdd/ReadVariableOp?#lstm_cell_211/MatMul/ReadVariableOp?%lstm_cell_211/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_211/MatMul/ReadVariableOpReadVariableOp,lstm_cell_211_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_211/MatMulMatMulstrided_slice_2:output:0+lstm_cell_211/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_211/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_211_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_211/MatMul_1MatMulzeros:output:0-lstm_cell_211/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_211/addAddV2lstm_cell_211/MatMul:product:0 lstm_cell_211/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_211/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_211_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_211/BiasAddBiasAddlstm_cell_211/add:z:0,lstm_cell_211/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_211/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_211/splitSplit&lstm_cell_211/split/split_dim:output:0lstm_cell_211/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_211/SigmoidSigmoidlstm_cell_211/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_211/Sigmoid_1Sigmoidlstm_cell_211/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_211/mulMullstm_cell_211/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_211/ReluRelulstm_cell_211/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_211/mul_1Mullstm_cell_211/Sigmoid:y:0 lstm_cell_211/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_211/add_1AddV2lstm_cell_211/mul:z:0lstm_cell_211/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_211/Sigmoid_2Sigmoidlstm_cell_211/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_211/Relu_1Relulstm_cell_211/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_211/mul_2Mullstm_cell_211/Sigmoid_2:y:0"lstm_cell_211/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_211_matmul_readvariableop_resource.lstm_cell_211_matmul_1_readvariableop_resource-lstm_cell_211_biasadd_readvariableop_resource*
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
while_body_1284832*
condR
while_cond_1284831*K
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
NoOpNoOp%^lstm_cell_211/BiasAdd/ReadVariableOp$^lstm_cell_211/MatMul/ReadVariableOp&^lstm_cell_211/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_211/BiasAdd/ReadVariableOp$lstm_cell_211/BiasAdd/ReadVariableOp2J
#lstm_cell_211/MatMul/ReadVariableOp#lstm_cell_211/MatMul/ReadVariableOp2N
%lstm_cell_211/MatMul_1/ReadVariableOp%lstm_cell_211/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_dense_53_layer_call_fn_1288061

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
E__inference_dense_53_layer_call_and_return_conditional_losses_1284553o
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
while_cond_1287351
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1287351___redundant_placeholder05
1while_while_cond_1287351___redundant_placeholder15
1while_while_cond_1287351___redundant_placeholder25
1while_while_cond_1287351___redundant_placeholder3
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
while_cond_1284666
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1284666___redundant_placeholder05
1while_while_cond_1284666___redundant_placeholder15
1while_while_cond_1284666___redundant_placeholder25
1while_while_cond_1284666___redundant_placeholder3
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
E__inference_lstm_159_layer_call_and_return_conditional_losses_1285081

inputs?
,lstm_cell_210_matmul_readvariableop_resource:	?A
.lstm_cell_210_matmul_1_readvariableop_resource:	d?<
-lstm_cell_210_biasadd_readvariableop_resource:	?
identity??$lstm_cell_210/BiasAdd/ReadVariableOp?#lstm_cell_210/MatMul/ReadVariableOp?%lstm_cell_210/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_210/MatMul/ReadVariableOpReadVariableOp,lstm_cell_210_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_210/MatMulMatMulstrided_slice_2:output:0+lstm_cell_210/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_210/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_210_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_210/MatMul_1MatMulzeros:output:0-lstm_cell_210/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_210/addAddV2lstm_cell_210/MatMul:product:0 lstm_cell_210/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_210/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_210_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_210/BiasAddBiasAddlstm_cell_210/add:z:0,lstm_cell_210/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_210/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_210/splitSplit&lstm_cell_210/split/split_dim:output:0lstm_cell_210/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_210/SigmoidSigmoidlstm_cell_210/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_210/Sigmoid_1Sigmoidlstm_cell_210/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_210/mulMullstm_cell_210/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_210/ReluRelulstm_cell_210/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_210/mul_1Mullstm_cell_210/Sigmoid:y:0 lstm_cell_210/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_210/add_1AddV2lstm_cell_210/mul:z:0lstm_cell_210/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_210/Sigmoid_2Sigmoidlstm_cell_210/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_210/Relu_1Relulstm_cell_210/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_210/mul_2Mullstm_cell_210/Sigmoid_2:y:0"lstm_cell_210/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_210_matmul_readvariableop_resource.lstm_cell_210_matmul_1_readvariableop_resource-lstm_cell_210_biasadd_readvariableop_resource*
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
while_body_1284997*
condR
while_cond_1284996*K
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
NoOpNoOp%^lstm_cell_210/BiasAdd/ReadVariableOp$^lstm_cell_210/MatMul/ReadVariableOp&^lstm_cell_210/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_210/BiasAdd/ReadVariableOp$lstm_cell_210/BiasAdd/ReadVariableOp2J
#lstm_cell_210/MatMul/ReadVariableOp#lstm_cell_210/MatMul/ReadVariableOp2N
%lstm_cell_210/MatMul_1/ReadVariableOp%lstm_cell_210/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_210_layer_call_and_return_conditional_losses_1288169

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
?
E__inference_dense_53_layer_call_and_return_conditional_losses_1288071

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
?J
?
E__inference_lstm_159_layer_call_and_return_conditional_losses_1286677

inputs?
,lstm_cell_210_matmul_readvariableop_resource:	?A
.lstm_cell_210_matmul_1_readvariableop_resource:	d?<
-lstm_cell_210_biasadd_readvariableop_resource:	?
identity??$lstm_cell_210/BiasAdd/ReadVariableOp?#lstm_cell_210/MatMul/ReadVariableOp?%lstm_cell_210/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_210/MatMul/ReadVariableOpReadVariableOp,lstm_cell_210_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_210/MatMulMatMulstrided_slice_2:output:0+lstm_cell_210/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_210/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_210_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_210/MatMul_1MatMulzeros:output:0-lstm_cell_210/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_210/addAddV2lstm_cell_210/MatMul:product:0 lstm_cell_210/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_210/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_210_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_210/BiasAddBiasAddlstm_cell_210/add:z:0,lstm_cell_210/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_210/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_210/splitSplit&lstm_cell_210/split/split_dim:output:0lstm_cell_210/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_210/SigmoidSigmoidlstm_cell_210/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_210/Sigmoid_1Sigmoidlstm_cell_210/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_210/mulMullstm_cell_210/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_210/ReluRelulstm_cell_210/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_210/mul_1Mullstm_cell_210/Sigmoid:y:0 lstm_cell_210/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_210/add_1AddV2lstm_cell_210/mul:z:0lstm_cell_210/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_210/Sigmoid_2Sigmoidlstm_cell_210/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_210/Relu_1Relulstm_cell_210/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_210/mul_2Mullstm_cell_210/Sigmoid_2:y:0"lstm_cell_210/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_210_matmul_readvariableop_resource.lstm_cell_210_matmul_1_readvariableop_resource-lstm_cell_210_biasadd_readvariableop_resource*
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
while_body_1286593*
condR
while_cond_1286592*K
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
NoOpNoOp%^lstm_cell_210/BiasAdd/ReadVariableOp$^lstm_cell_210/MatMul/ReadVariableOp&^lstm_cell_210/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_210/BiasAdd/ReadVariableOp$lstm_cell_210/BiasAdd/ReadVariableOp2J
#lstm_cell_210/MatMul/ReadVariableOp#lstm_cell_210/MatMul/ReadVariableOp2N
%lstm_cell_210/MatMul_1/ReadVariableOp%lstm_cell_210/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
J__inference_sequential_53_layer_call_and_return_conditional_losses_1285777

inputsH
5lstm_159_lstm_cell_210_matmul_readvariableop_resource:	?J
7lstm_159_lstm_cell_210_matmul_1_readvariableop_resource:	d?E
6lstm_159_lstm_cell_210_biasadd_readvariableop_resource:	?H
5lstm_160_lstm_cell_211_matmul_readvariableop_resource:	d?J
7lstm_160_lstm_cell_211_matmul_1_readvariableop_resource:	2?E
6lstm_160_lstm_cell_211_biasadd_readvariableop_resource:	?G
5lstm_161_lstm_cell_212_matmul_readvariableop_resource:2(I
7lstm_161_lstm_cell_212_matmul_1_readvariableop_resource:
(D
6lstm_161_lstm_cell_212_biasadd_readvariableop_resource:(9
'dense_53_matmul_readvariableop_resource:
6
(dense_53_biasadd_readvariableop_resource:
identity??dense_53/BiasAdd/ReadVariableOp?dense_53/MatMul/ReadVariableOp?-lstm_159/lstm_cell_210/BiasAdd/ReadVariableOp?,lstm_159/lstm_cell_210/MatMul/ReadVariableOp?.lstm_159/lstm_cell_210/MatMul_1/ReadVariableOp?lstm_159/while?-lstm_160/lstm_cell_211/BiasAdd/ReadVariableOp?,lstm_160/lstm_cell_211/MatMul/ReadVariableOp?.lstm_160/lstm_cell_211/MatMul_1/ReadVariableOp?lstm_160/while?-lstm_161/lstm_cell_212/BiasAdd/ReadVariableOp?,lstm_161/lstm_cell_212/MatMul/ReadVariableOp?.lstm_161/lstm_cell_212/MatMul_1/ReadVariableOp?lstm_161/whileD
lstm_159/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_159/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_159/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_159/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_159/strided_sliceStridedSlicelstm_159/Shape:output:0%lstm_159/strided_slice/stack:output:0'lstm_159/strided_slice/stack_1:output:0'lstm_159/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_159/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_159/zeros/packedPacklstm_159/strided_slice:output:0 lstm_159/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_159/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_159/zerosFilllstm_159/zeros/packed:output:0lstm_159/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_159/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_159/zeros_1/packedPacklstm_159/strided_slice:output:0"lstm_159/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_159/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_159/zeros_1Fill lstm_159/zeros_1/packed:output:0lstm_159/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_159/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_159/transpose	Transposeinputs lstm_159/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_159/Shape_1Shapelstm_159/transpose:y:0*
T0*
_output_shapes
:h
lstm_159/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_159/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_159/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_159/strided_slice_1StridedSlicelstm_159/Shape_1:output:0'lstm_159/strided_slice_1/stack:output:0)lstm_159/strided_slice_1/stack_1:output:0)lstm_159/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_159/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_159/TensorArrayV2TensorListReserve-lstm_159/TensorArrayV2/element_shape:output:0!lstm_159/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_159/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_159/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_159/transpose:y:0Glstm_159/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_159/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_159/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_159/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_159/strided_slice_2StridedSlicelstm_159/transpose:y:0'lstm_159/strided_slice_2/stack:output:0)lstm_159/strided_slice_2/stack_1:output:0)lstm_159/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_159/lstm_cell_210/MatMul/ReadVariableOpReadVariableOp5lstm_159_lstm_cell_210_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_159/lstm_cell_210/MatMulMatMul!lstm_159/strided_slice_2:output:04lstm_159/lstm_cell_210/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_159/lstm_cell_210/MatMul_1/ReadVariableOpReadVariableOp7lstm_159_lstm_cell_210_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_159/lstm_cell_210/MatMul_1MatMullstm_159/zeros:output:06lstm_159/lstm_cell_210/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_159/lstm_cell_210/addAddV2'lstm_159/lstm_cell_210/MatMul:product:0)lstm_159/lstm_cell_210/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_159/lstm_cell_210/BiasAdd/ReadVariableOpReadVariableOp6lstm_159_lstm_cell_210_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_159/lstm_cell_210/BiasAddBiasAddlstm_159/lstm_cell_210/add:z:05lstm_159/lstm_cell_210/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_159/lstm_cell_210/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_159/lstm_cell_210/splitSplit/lstm_159/lstm_cell_210/split/split_dim:output:0'lstm_159/lstm_cell_210/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_159/lstm_cell_210/SigmoidSigmoid%lstm_159/lstm_cell_210/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_159/lstm_cell_210/Sigmoid_1Sigmoid%lstm_159/lstm_cell_210/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_159/lstm_cell_210/mulMul$lstm_159/lstm_cell_210/Sigmoid_1:y:0lstm_159/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_159/lstm_cell_210/ReluRelu%lstm_159/lstm_cell_210/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_159/lstm_cell_210/mul_1Mul"lstm_159/lstm_cell_210/Sigmoid:y:0)lstm_159/lstm_cell_210/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_159/lstm_cell_210/add_1AddV2lstm_159/lstm_cell_210/mul:z:0 lstm_159/lstm_cell_210/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_159/lstm_cell_210/Sigmoid_2Sigmoid%lstm_159/lstm_cell_210/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_159/lstm_cell_210/Relu_1Relu lstm_159/lstm_cell_210/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_159/lstm_cell_210/mul_2Mul$lstm_159/lstm_cell_210/Sigmoid_2:y:0+lstm_159/lstm_cell_210/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_159/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_159/TensorArrayV2_1TensorListReserve/lstm_159/TensorArrayV2_1/element_shape:output:0!lstm_159/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_159/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_159/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_159/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_159/whileWhile$lstm_159/while/loop_counter:output:0*lstm_159/while/maximum_iterations:output:0lstm_159/time:output:0!lstm_159/TensorArrayV2_1:handle:0lstm_159/zeros:output:0lstm_159/zeros_1:output:0!lstm_159/strided_slice_1:output:0@lstm_159/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_159_lstm_cell_210_matmul_readvariableop_resource7lstm_159_lstm_cell_210_matmul_1_readvariableop_resource6lstm_159_lstm_cell_210_biasadd_readvariableop_resource*
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
lstm_159_while_body_1285409*'
condR
lstm_159_while_cond_1285408*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_159/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_159/TensorArrayV2Stack/TensorListStackTensorListStacklstm_159/while:output:3Blstm_159/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_159/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_159/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_159/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_159/strided_slice_3StridedSlice4lstm_159/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_159/strided_slice_3/stack:output:0)lstm_159/strided_slice_3/stack_1:output:0)lstm_159/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_159/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_159/transpose_1	Transpose4lstm_159/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_159/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_159/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_160/ShapeShapelstm_159/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_160/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_160/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_160/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_160/strided_sliceStridedSlicelstm_160/Shape:output:0%lstm_160/strided_slice/stack:output:0'lstm_160/strided_slice/stack_1:output:0'lstm_160/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_160/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_160/zeros/packedPacklstm_160/strided_slice:output:0 lstm_160/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_160/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_160/zerosFilllstm_160/zeros/packed:output:0lstm_160/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_160/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_160/zeros_1/packedPacklstm_160/strided_slice:output:0"lstm_160/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_160/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_160/zeros_1Fill lstm_160/zeros_1/packed:output:0lstm_160/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_160/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_160/transpose	Transposelstm_159/transpose_1:y:0 lstm_160/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_160/Shape_1Shapelstm_160/transpose:y:0*
T0*
_output_shapes
:h
lstm_160/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_160/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_160/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_160/strided_slice_1StridedSlicelstm_160/Shape_1:output:0'lstm_160/strided_slice_1/stack:output:0)lstm_160/strided_slice_1/stack_1:output:0)lstm_160/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_160/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_160/TensorArrayV2TensorListReserve-lstm_160/TensorArrayV2/element_shape:output:0!lstm_160/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_160/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_160/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_160/transpose:y:0Glstm_160/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_160/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_160/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_160/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_160/strided_slice_2StridedSlicelstm_160/transpose:y:0'lstm_160/strided_slice_2/stack:output:0)lstm_160/strided_slice_2/stack_1:output:0)lstm_160/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_160/lstm_cell_211/MatMul/ReadVariableOpReadVariableOp5lstm_160_lstm_cell_211_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_160/lstm_cell_211/MatMulMatMul!lstm_160/strided_slice_2:output:04lstm_160/lstm_cell_211/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_160/lstm_cell_211/MatMul_1/ReadVariableOpReadVariableOp7lstm_160_lstm_cell_211_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_160/lstm_cell_211/MatMul_1MatMullstm_160/zeros:output:06lstm_160/lstm_cell_211/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_160/lstm_cell_211/addAddV2'lstm_160/lstm_cell_211/MatMul:product:0)lstm_160/lstm_cell_211/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_160/lstm_cell_211/BiasAdd/ReadVariableOpReadVariableOp6lstm_160_lstm_cell_211_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_160/lstm_cell_211/BiasAddBiasAddlstm_160/lstm_cell_211/add:z:05lstm_160/lstm_cell_211/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_160/lstm_cell_211/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_160/lstm_cell_211/splitSplit/lstm_160/lstm_cell_211/split/split_dim:output:0'lstm_160/lstm_cell_211/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_160/lstm_cell_211/SigmoidSigmoid%lstm_160/lstm_cell_211/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_160/lstm_cell_211/Sigmoid_1Sigmoid%lstm_160/lstm_cell_211/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_160/lstm_cell_211/mulMul$lstm_160/lstm_cell_211/Sigmoid_1:y:0lstm_160/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_160/lstm_cell_211/ReluRelu%lstm_160/lstm_cell_211/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_160/lstm_cell_211/mul_1Mul"lstm_160/lstm_cell_211/Sigmoid:y:0)lstm_160/lstm_cell_211/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_160/lstm_cell_211/add_1AddV2lstm_160/lstm_cell_211/mul:z:0 lstm_160/lstm_cell_211/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_160/lstm_cell_211/Sigmoid_2Sigmoid%lstm_160/lstm_cell_211/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_160/lstm_cell_211/Relu_1Relu lstm_160/lstm_cell_211/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_160/lstm_cell_211/mul_2Mul$lstm_160/lstm_cell_211/Sigmoid_2:y:0+lstm_160/lstm_cell_211/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_160/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_160/TensorArrayV2_1TensorListReserve/lstm_160/TensorArrayV2_1/element_shape:output:0!lstm_160/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_160/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_160/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_160/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_160/whileWhile$lstm_160/while/loop_counter:output:0*lstm_160/while/maximum_iterations:output:0lstm_160/time:output:0!lstm_160/TensorArrayV2_1:handle:0lstm_160/zeros:output:0lstm_160/zeros_1:output:0!lstm_160/strided_slice_1:output:0@lstm_160/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_160_lstm_cell_211_matmul_readvariableop_resource7lstm_160_lstm_cell_211_matmul_1_readvariableop_resource6lstm_160_lstm_cell_211_biasadd_readvariableop_resource*
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
lstm_160_while_body_1285548*'
condR
lstm_160_while_cond_1285547*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_160/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_160/TensorArrayV2Stack/TensorListStackTensorListStacklstm_160/while:output:3Blstm_160/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_160/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_160/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_160/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_160/strided_slice_3StridedSlice4lstm_160/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_160/strided_slice_3/stack:output:0)lstm_160/strided_slice_3/stack_1:output:0)lstm_160/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_160/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_160/transpose_1	Transpose4lstm_160/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_160/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_160/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_161/ShapeShapelstm_160/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_161/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_161/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_161/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_161/strided_sliceStridedSlicelstm_161/Shape:output:0%lstm_161/strided_slice/stack:output:0'lstm_161/strided_slice/stack_1:output:0'lstm_161/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_161/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_161/zeros/packedPacklstm_161/strided_slice:output:0 lstm_161/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_161/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_161/zerosFilllstm_161/zeros/packed:output:0lstm_161/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_161/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_161/zeros_1/packedPacklstm_161/strided_slice:output:0"lstm_161/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_161/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_161/zeros_1Fill lstm_161/zeros_1/packed:output:0lstm_161/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_161/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_161/transpose	Transposelstm_160/transpose_1:y:0 lstm_161/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_161/Shape_1Shapelstm_161/transpose:y:0*
T0*
_output_shapes
:h
lstm_161/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_161/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_161/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_161/strided_slice_1StridedSlicelstm_161/Shape_1:output:0'lstm_161/strided_slice_1/stack:output:0)lstm_161/strided_slice_1/stack_1:output:0)lstm_161/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_161/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_161/TensorArrayV2TensorListReserve-lstm_161/TensorArrayV2/element_shape:output:0!lstm_161/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_161/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_161/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_161/transpose:y:0Glstm_161/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_161/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_161/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_161/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_161/strided_slice_2StridedSlicelstm_161/transpose:y:0'lstm_161/strided_slice_2/stack:output:0)lstm_161/strided_slice_2/stack_1:output:0)lstm_161/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_161/lstm_cell_212/MatMul/ReadVariableOpReadVariableOp5lstm_161_lstm_cell_212_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_161/lstm_cell_212/MatMulMatMul!lstm_161/strided_slice_2:output:04lstm_161/lstm_cell_212/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_161/lstm_cell_212/MatMul_1/ReadVariableOpReadVariableOp7lstm_161_lstm_cell_212_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_161/lstm_cell_212/MatMul_1MatMullstm_161/zeros:output:06lstm_161/lstm_cell_212/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_161/lstm_cell_212/addAddV2'lstm_161/lstm_cell_212/MatMul:product:0)lstm_161/lstm_cell_212/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_161/lstm_cell_212/BiasAdd/ReadVariableOpReadVariableOp6lstm_161_lstm_cell_212_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_161/lstm_cell_212/BiasAddBiasAddlstm_161/lstm_cell_212/add:z:05lstm_161/lstm_cell_212/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_161/lstm_cell_212/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_161/lstm_cell_212/splitSplit/lstm_161/lstm_cell_212/split/split_dim:output:0'lstm_161/lstm_cell_212/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_161/lstm_cell_212/SigmoidSigmoid%lstm_161/lstm_cell_212/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_161/lstm_cell_212/Sigmoid_1Sigmoid%lstm_161/lstm_cell_212/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_161/lstm_cell_212/mulMul$lstm_161/lstm_cell_212/Sigmoid_1:y:0lstm_161/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_161/lstm_cell_212/ReluRelu%lstm_161/lstm_cell_212/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_161/lstm_cell_212/mul_1Mul"lstm_161/lstm_cell_212/Sigmoid:y:0)lstm_161/lstm_cell_212/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_161/lstm_cell_212/add_1AddV2lstm_161/lstm_cell_212/mul:z:0 lstm_161/lstm_cell_212/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_161/lstm_cell_212/Sigmoid_2Sigmoid%lstm_161/lstm_cell_212/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_161/lstm_cell_212/Relu_1Relu lstm_161/lstm_cell_212/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_161/lstm_cell_212/mul_2Mul$lstm_161/lstm_cell_212/Sigmoid_2:y:0+lstm_161/lstm_cell_212/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_161/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_161/TensorArrayV2_1TensorListReserve/lstm_161/TensorArrayV2_1/element_shape:output:0!lstm_161/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_161/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_161/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_161/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_161/whileWhile$lstm_161/while/loop_counter:output:0*lstm_161/while/maximum_iterations:output:0lstm_161/time:output:0!lstm_161/TensorArrayV2_1:handle:0lstm_161/zeros:output:0lstm_161/zeros_1:output:0!lstm_161/strided_slice_1:output:0@lstm_161/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_161_lstm_cell_212_matmul_readvariableop_resource7lstm_161_lstm_cell_212_matmul_1_readvariableop_resource6lstm_161_lstm_cell_212_biasadd_readvariableop_resource*
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
lstm_161_while_body_1285687*'
condR
lstm_161_while_cond_1285686*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_161/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_161/TensorArrayV2Stack/TensorListStackTensorListStacklstm_161/while:output:3Blstm_161/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_161/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_161/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_161/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_161/strided_slice_3StridedSlice4lstm_161/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_161/strided_slice_3/stack:output:0)lstm_161/strided_slice_3/stack_1:output:0)lstm_161/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_161/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_161/transpose_1	Transpose4lstm_161/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_161/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_161/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_53/MatMul/ReadVariableOpReadVariableOp'dense_53_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_53/MatMulMatMul!lstm_161/strided_slice_3:output:0&dense_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_53/BiasAdd/ReadVariableOpReadVariableOp(dense_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_53/BiasAddBiasAdddense_53/MatMul:product:0'dense_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_53/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_53/BiasAdd/ReadVariableOp^dense_53/MatMul/ReadVariableOp.^lstm_159/lstm_cell_210/BiasAdd/ReadVariableOp-^lstm_159/lstm_cell_210/MatMul/ReadVariableOp/^lstm_159/lstm_cell_210/MatMul_1/ReadVariableOp^lstm_159/while.^lstm_160/lstm_cell_211/BiasAdd/ReadVariableOp-^lstm_160/lstm_cell_211/MatMul/ReadVariableOp/^lstm_160/lstm_cell_211/MatMul_1/ReadVariableOp^lstm_160/while.^lstm_161/lstm_cell_212/BiasAdd/ReadVariableOp-^lstm_161/lstm_cell_212/MatMul/ReadVariableOp/^lstm_161/lstm_cell_212/MatMul_1/ReadVariableOp^lstm_161/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_53/BiasAdd/ReadVariableOpdense_53/BiasAdd/ReadVariableOp2@
dense_53/MatMul/ReadVariableOpdense_53/MatMul/ReadVariableOp2^
-lstm_159/lstm_cell_210/BiasAdd/ReadVariableOp-lstm_159/lstm_cell_210/BiasAdd/ReadVariableOp2\
,lstm_159/lstm_cell_210/MatMul/ReadVariableOp,lstm_159/lstm_cell_210/MatMul/ReadVariableOp2`
.lstm_159/lstm_cell_210/MatMul_1/ReadVariableOp.lstm_159/lstm_cell_210/MatMul_1/ReadVariableOp2 
lstm_159/whilelstm_159/while2^
-lstm_160/lstm_cell_211/BiasAdd/ReadVariableOp-lstm_160/lstm_cell_211/BiasAdd/ReadVariableOp2\
,lstm_160/lstm_cell_211/MatMul/ReadVariableOp,lstm_160/lstm_cell_211/MatMul/ReadVariableOp2`
.lstm_160/lstm_cell_211/MatMul_1/ReadVariableOp.lstm_160/lstm_cell_211/MatMul_1/ReadVariableOp2 
lstm_160/whilelstm_160/while2^
-lstm_161/lstm_cell_212/BiasAdd/ReadVariableOp-lstm_161/lstm_cell_212/BiasAdd/ReadVariableOp2\
,lstm_161/lstm_cell_212/MatMul/ReadVariableOp,lstm_161/lstm_cell_212/MatMul/ReadVariableOp2`
.lstm_161/lstm_cell_212/MatMul_1/ReadVariableOp.lstm_161/lstm_cell_212/MatMul_1/ReadVariableOp2 
lstm_161/whilelstm_161/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1286306
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1286306___redundant_placeholder05
1while_while_cond_1286306___redundant_placeholder15
1while_while_cond_1286306___redundant_placeholder25
1while_while_cond_1286306___redundant_placeholder3
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
while_cond_1287065
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1287065___redundant_placeholder05
1while_while_cond_1287065___redundant_placeholder15
1while_while_cond_1287065___redundant_placeholder25
1while_while_cond_1287065___redundant_placeholder3
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
/__inference_lstm_cell_212_layer_call_fn_1288301

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
J__inference_lstm_cell_212_layer_call_and_return_conditional_losses_1283949o
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
?K
?
E__inference_lstm_160_layer_call_and_return_conditional_losses_1287007
inputs_0?
,lstm_cell_211_matmul_readvariableop_resource:	d?A
.lstm_cell_211_matmul_1_readvariableop_resource:	2?<
-lstm_cell_211_biasadd_readvariableop_resource:	?
identity??$lstm_cell_211/BiasAdd/ReadVariableOp?#lstm_cell_211/MatMul/ReadVariableOp?%lstm_cell_211/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_211/MatMul/ReadVariableOpReadVariableOp,lstm_cell_211_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_211/MatMulMatMulstrided_slice_2:output:0+lstm_cell_211/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_211/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_211_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_211/MatMul_1MatMulzeros:output:0-lstm_cell_211/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_211/addAddV2lstm_cell_211/MatMul:product:0 lstm_cell_211/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_211/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_211_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_211/BiasAddBiasAddlstm_cell_211/add:z:0,lstm_cell_211/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_211/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_211/splitSplit&lstm_cell_211/split/split_dim:output:0lstm_cell_211/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_211/SigmoidSigmoidlstm_cell_211/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_211/Sigmoid_1Sigmoidlstm_cell_211/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_211/mulMullstm_cell_211/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_211/ReluRelulstm_cell_211/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_211/mul_1Mullstm_cell_211/Sigmoid:y:0 lstm_cell_211/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_211/add_1AddV2lstm_cell_211/mul:z:0lstm_cell_211/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_211/Sigmoid_2Sigmoidlstm_cell_211/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_211/Relu_1Relulstm_cell_211/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_211/mul_2Mullstm_cell_211/Sigmoid_2:y:0"lstm_cell_211/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_211_matmul_readvariableop_resource.lstm_cell_211_matmul_1_readvariableop_resource-lstm_cell_211_biasadd_readvariableop_resource*
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
while_body_1286923*
condR
while_cond_1286922*K
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
NoOpNoOp%^lstm_cell_211/BiasAdd/ReadVariableOp$^lstm_cell_211/MatMul/ReadVariableOp&^lstm_cell_211/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_211/BiasAdd/ReadVariableOp$lstm_cell_211/BiasAdd/ReadVariableOp2J
#lstm_cell_211/MatMul/ReadVariableOp#lstm_cell_211/MatMul/ReadVariableOp2N
%lstm_cell_211/MatMul_1/ReadVariableOp%lstm_cell_211/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_159_layer_call_and_return_conditional_losses_1286534
inputs_0?
,lstm_cell_210_matmul_readvariableop_resource:	?A
.lstm_cell_210_matmul_1_readvariableop_resource:	d?<
-lstm_cell_210_biasadd_readvariableop_resource:	?
identity??$lstm_cell_210/BiasAdd/ReadVariableOp?#lstm_cell_210/MatMul/ReadVariableOp?%lstm_cell_210/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_210/MatMul/ReadVariableOpReadVariableOp,lstm_cell_210_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_210/MatMulMatMulstrided_slice_2:output:0+lstm_cell_210/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_210/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_210_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_210/MatMul_1MatMulzeros:output:0-lstm_cell_210/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_210/addAddV2lstm_cell_210/MatMul:product:0 lstm_cell_210/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_210/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_210_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_210/BiasAddBiasAddlstm_cell_210/add:z:0,lstm_cell_210/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_210/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_210/splitSplit&lstm_cell_210/split/split_dim:output:0lstm_cell_210/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_210/SigmoidSigmoidlstm_cell_210/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_210/Sigmoid_1Sigmoidlstm_cell_210/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_210/mulMullstm_cell_210/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_210/ReluRelulstm_cell_210/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_210/mul_1Mullstm_cell_210/Sigmoid:y:0 lstm_cell_210/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_210/add_1AddV2lstm_cell_210/mul:z:0lstm_cell_210/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_210/Sigmoid_2Sigmoidlstm_cell_210/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_210/Relu_1Relulstm_cell_210/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_210/mul_2Mullstm_cell_210/Sigmoid_2:y:0"lstm_cell_210/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_210_matmul_readvariableop_resource.lstm_cell_210_matmul_1_readvariableop_resource-lstm_cell_210_biasadd_readvariableop_resource*
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
while_body_1286450*
condR
while_cond_1286449*K
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
NoOpNoOp%^lstm_cell_210/BiasAdd/ReadVariableOp$^lstm_cell_210/MatMul/ReadVariableOp&^lstm_cell_210/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_210/BiasAdd/ReadVariableOp$lstm_cell_210/BiasAdd/ReadVariableOp2J
#lstm_cell_210/MatMul/ReadVariableOp#lstm_cell_210/MatMul/ReadVariableOp2N
%lstm_cell_210/MatMul_1/ReadVariableOp%lstm_cell_210/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_1284832
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_211_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_211_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_211_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_211_matmul_readvariableop_resource:	d?G
4while_lstm_cell_211_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_211_biasadd_readvariableop_resource:	???*while/lstm_cell_211/BiasAdd/ReadVariableOp?)while/lstm_cell_211/MatMul/ReadVariableOp?+while/lstm_cell_211/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_211/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_211_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_211/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_211/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_211/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_211_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_211/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_211/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_211/addAddV2$while/lstm_cell_211/MatMul:product:0&while/lstm_cell_211/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_211/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_211_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_211/BiasAddBiasAddwhile/lstm_cell_211/add:z:02while/lstm_cell_211/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_211/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_211/splitSplit,while/lstm_cell_211/split/split_dim:output:0$while/lstm_cell_211/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_211/SigmoidSigmoid"while/lstm_cell_211/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_211/Sigmoid_1Sigmoid"while/lstm_cell_211/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_211/mulMul!while/lstm_cell_211/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_211/ReluRelu"while/lstm_cell_211/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_211/mul_1Mulwhile/lstm_cell_211/Sigmoid:y:0&while/lstm_cell_211/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_211/add_1AddV2while/lstm_cell_211/mul:z:0while/lstm_cell_211/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_211/Sigmoid_2Sigmoid"while/lstm_cell_211/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_211/Relu_1Reluwhile/lstm_cell_211/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_211/mul_2Mul!while/lstm_cell_211/Sigmoid_2:y:0(while/lstm_cell_211/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_211/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_211/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_211/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_211/BiasAdd/ReadVariableOp*^while/lstm_cell_211/MatMul/ReadVariableOp,^while/lstm_cell_211/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_211_biasadd_readvariableop_resource5while_lstm_cell_211_biasadd_readvariableop_resource_0"n
4while_lstm_cell_211_matmul_1_readvariableop_resource6while_lstm_cell_211_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_211_matmul_readvariableop_resource4while_lstm_cell_211_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_211/BiasAdd/ReadVariableOp*while/lstm_cell_211/BiasAdd/ReadVariableOp2V
)while/lstm_cell_211/MatMul/ReadVariableOp)while/lstm_cell_211/MatMul/ReadVariableOp2Z
+while/lstm_cell_211/MatMul_1/ReadVariableOp+while/lstm_cell_211/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_160_layer_call_fn_1286842
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
E__inference_lstm_160_layer_call_and_return_conditional_losses_1283727|
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

?
%__inference_signature_wrapper_1285296
lstm_159_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_159_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1283036o
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
_user_specified_namelstm_159_input
?
?
J__inference_lstm_cell_210_layer_call_and_return_conditional_losses_1283249

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
?
/__inference_lstm_cell_210_layer_call_fn_1288105

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
J__inference_lstm_cell_210_layer_call_and_return_conditional_losses_1283249o
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
?K
?
E__inference_lstm_159_layer_call_and_return_conditional_losses_1286391
inputs_0?
,lstm_cell_210_matmul_readvariableop_resource:	?A
.lstm_cell_210_matmul_1_readvariableop_resource:	d?<
-lstm_cell_210_biasadd_readvariableop_resource:	?
identity??$lstm_cell_210/BiasAdd/ReadVariableOp?#lstm_cell_210/MatMul/ReadVariableOp?%lstm_cell_210/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_210/MatMul/ReadVariableOpReadVariableOp,lstm_cell_210_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_210/MatMulMatMulstrided_slice_2:output:0+lstm_cell_210/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_210/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_210_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_210/MatMul_1MatMulzeros:output:0-lstm_cell_210/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_210/addAddV2lstm_cell_210/MatMul:product:0 lstm_cell_210/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_210/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_210_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_210/BiasAddBiasAddlstm_cell_210/add:z:0,lstm_cell_210/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_210/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_210/splitSplit&lstm_cell_210/split/split_dim:output:0lstm_cell_210/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_210/SigmoidSigmoidlstm_cell_210/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_210/Sigmoid_1Sigmoidlstm_cell_210/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_210/mulMullstm_cell_210/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_210/ReluRelulstm_cell_210/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_210/mul_1Mullstm_cell_210/Sigmoid:y:0 lstm_cell_210/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_210/add_1AddV2lstm_cell_210/mul:z:0lstm_cell_210/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_210/Sigmoid_2Sigmoidlstm_cell_210/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_210/Relu_1Relulstm_cell_210/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_210/mul_2Mullstm_cell_210/Sigmoid_2:y:0"lstm_cell_210/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_210_matmul_readvariableop_resource.lstm_cell_210_matmul_1_readvariableop_resource-lstm_cell_210_biasadd_readvariableop_resource*
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
while_body_1286307*
condR
while_cond_1286306*K
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
NoOpNoOp%^lstm_cell_210/BiasAdd/ReadVariableOp$^lstm_cell_210/MatMul/ReadVariableOp&^lstm_cell_210/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_210/BiasAdd/ReadVariableOp$lstm_cell_210/BiasAdd/ReadVariableOp2J
#lstm_cell_210/MatMul/ReadVariableOp#lstm_cell_210/MatMul/ReadVariableOp2N
%lstm_cell_210/MatMul_1/ReadVariableOp%lstm_cell_210/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?W
?
 __inference__traced_save_1288508
file_prefix.
*savev2_dense_53_kernel_read_readvariableop,
(savev2_dense_53_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_159_lstm_cell_159_kernel_read_readvariableopF
Bsavev2_lstm_159_lstm_cell_159_recurrent_kernel_read_readvariableop:
6savev2_lstm_159_lstm_cell_159_bias_read_readvariableop<
8savev2_lstm_160_lstm_cell_160_kernel_read_readvariableopF
Bsavev2_lstm_160_lstm_cell_160_recurrent_kernel_read_readvariableop:
6savev2_lstm_160_lstm_cell_160_bias_read_readvariableop<
8savev2_lstm_161_lstm_cell_161_kernel_read_readvariableopF
Bsavev2_lstm_161_lstm_cell_161_recurrent_kernel_read_readvariableop:
6savev2_lstm_161_lstm_cell_161_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_53_kernel_m_read_readvariableop3
/savev2_adam_dense_53_bias_m_read_readvariableopC
?savev2_adam_lstm_159_lstm_cell_159_kernel_m_read_readvariableopM
Isavev2_adam_lstm_159_lstm_cell_159_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_159_lstm_cell_159_bias_m_read_readvariableopC
?savev2_adam_lstm_160_lstm_cell_160_kernel_m_read_readvariableopM
Isavev2_adam_lstm_160_lstm_cell_160_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_160_lstm_cell_160_bias_m_read_readvariableopC
?savev2_adam_lstm_161_lstm_cell_161_kernel_m_read_readvariableopM
Isavev2_adam_lstm_161_lstm_cell_161_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_161_lstm_cell_161_bias_m_read_readvariableop5
1savev2_adam_dense_53_kernel_v_read_readvariableop3
/savev2_adam_dense_53_bias_v_read_readvariableopC
?savev2_adam_lstm_159_lstm_cell_159_kernel_v_read_readvariableopM
Isavev2_adam_lstm_159_lstm_cell_159_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_159_lstm_cell_159_bias_v_read_readvariableopC
?savev2_adam_lstm_160_lstm_cell_160_kernel_v_read_readvariableopM
Isavev2_adam_lstm_160_lstm_cell_160_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_160_lstm_cell_160_bias_v_read_readvariableopC
?savev2_adam_lstm_161_lstm_cell_161_kernel_v_read_readvariableopM
Isavev2_adam_lstm_161_lstm_cell_161_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_161_lstm_cell_161_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_53_kernel_read_readvariableop(savev2_dense_53_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_159_lstm_cell_159_kernel_read_readvariableopBsavev2_lstm_159_lstm_cell_159_recurrent_kernel_read_readvariableop6savev2_lstm_159_lstm_cell_159_bias_read_readvariableop8savev2_lstm_160_lstm_cell_160_kernel_read_readvariableopBsavev2_lstm_160_lstm_cell_160_recurrent_kernel_read_readvariableop6savev2_lstm_160_lstm_cell_160_bias_read_readvariableop8savev2_lstm_161_lstm_cell_161_kernel_read_readvariableopBsavev2_lstm_161_lstm_cell_161_recurrent_kernel_read_readvariableop6savev2_lstm_161_lstm_cell_161_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_53_kernel_m_read_readvariableop/savev2_adam_dense_53_bias_m_read_readvariableop?savev2_adam_lstm_159_lstm_cell_159_kernel_m_read_readvariableopIsavev2_adam_lstm_159_lstm_cell_159_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_159_lstm_cell_159_bias_m_read_readvariableop?savev2_adam_lstm_160_lstm_cell_160_kernel_m_read_readvariableopIsavev2_adam_lstm_160_lstm_cell_160_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_160_lstm_cell_160_bias_m_read_readvariableop?savev2_adam_lstm_161_lstm_cell_161_kernel_m_read_readvariableopIsavev2_adam_lstm_161_lstm_cell_161_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_161_lstm_cell_161_bias_m_read_readvariableop1savev2_adam_dense_53_kernel_v_read_readvariableop/savev2_adam_dense_53_bias_v_read_readvariableop?savev2_adam_lstm_159_lstm_cell_159_kernel_v_read_readvariableopIsavev2_adam_lstm_159_lstm_cell_159_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_159_lstm_cell_159_bias_v_read_readvariableop?savev2_adam_lstm_160_lstm_cell_160_kernel_v_read_readvariableopIsavev2_adam_lstm_160_lstm_cell_160_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_160_lstm_cell_160_bias_v_read_readvariableop?savev2_adam_lstm_161_lstm_cell_161_kernel_v_read_readvariableopIsavev2_adam_lstm_161_lstm_cell_161_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_161_lstm_cell_161_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?J
?
E__inference_lstm_161_layer_call_and_return_conditional_losses_1287909

inputs>
,lstm_cell_212_matmul_readvariableop_resource:2(@
.lstm_cell_212_matmul_1_readvariableop_resource:
(;
-lstm_cell_212_biasadd_readvariableop_resource:(
identity??$lstm_cell_212/BiasAdd/ReadVariableOp?#lstm_cell_212/MatMul/ReadVariableOp?%lstm_cell_212/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_212/MatMul/ReadVariableOpReadVariableOp,lstm_cell_212_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_212/MatMulMatMulstrided_slice_2:output:0+lstm_cell_212/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_212/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_212_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_212/MatMul_1MatMulzeros:output:0-lstm_cell_212/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_212/addAddV2lstm_cell_212/MatMul:product:0 lstm_cell_212/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_212/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_212_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_212/BiasAddBiasAddlstm_cell_212/add:z:0,lstm_cell_212/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_212/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_212/splitSplit&lstm_cell_212/split/split_dim:output:0lstm_cell_212/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_212/SigmoidSigmoidlstm_cell_212/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_212/Sigmoid_1Sigmoidlstm_cell_212/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_212/mulMullstm_cell_212/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_212/ReluRelulstm_cell_212/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_212/mul_1Mullstm_cell_212/Sigmoid:y:0 lstm_cell_212/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_212/add_1AddV2lstm_cell_212/mul:z:0lstm_cell_212/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_212/Sigmoid_2Sigmoidlstm_cell_212/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_212/Relu_1Relulstm_cell_212/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_212/mul_2Mullstm_cell_212/Sigmoid_2:y:0"lstm_cell_212/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_212_matmul_readvariableop_resource.lstm_cell_212_matmul_1_readvariableop_resource-lstm_cell_212_biasadd_readvariableop_resource*
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
while_body_1287825*
condR
while_cond_1287824*K
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
NoOpNoOp%^lstm_cell_212/BiasAdd/ReadVariableOp$^lstm_cell_212/MatMul/ReadVariableOp&^lstm_cell_212/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_212/BiasAdd/ReadVariableOp$lstm_cell_212/BiasAdd/ReadVariableOp2J
#lstm_cell_212/MatMul/ReadVariableOp#lstm_cell_212/MatMul/ReadVariableOp2N
%lstm_cell_212/MatMul_1/ReadVariableOp%lstm_cell_212/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_161_layer_call_and_return_conditional_losses_1284535

inputs>
,lstm_cell_212_matmul_readvariableop_resource:2(@
.lstm_cell_212_matmul_1_readvariableop_resource:
(;
-lstm_cell_212_biasadd_readvariableop_resource:(
identity??$lstm_cell_212/BiasAdd/ReadVariableOp?#lstm_cell_212/MatMul/ReadVariableOp?%lstm_cell_212/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_212/MatMul/ReadVariableOpReadVariableOp,lstm_cell_212_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_212/MatMulMatMulstrided_slice_2:output:0+lstm_cell_212/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_212/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_212_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_212/MatMul_1MatMulzeros:output:0-lstm_cell_212/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_212/addAddV2lstm_cell_212/MatMul:product:0 lstm_cell_212/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_212/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_212_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_212/BiasAddBiasAddlstm_cell_212/add:z:0,lstm_cell_212/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_212/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_212/splitSplit&lstm_cell_212/split/split_dim:output:0lstm_cell_212/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_212/SigmoidSigmoidlstm_cell_212/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_212/Sigmoid_1Sigmoidlstm_cell_212/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_212/mulMullstm_cell_212/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_212/ReluRelulstm_cell_212/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_212/mul_1Mullstm_cell_212/Sigmoid:y:0 lstm_cell_212/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_212/add_1AddV2lstm_cell_212/mul:z:0lstm_cell_212/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_212/Sigmoid_2Sigmoidlstm_cell_212/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_212/Relu_1Relulstm_cell_212/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_212/mul_2Mullstm_cell_212/Sigmoid_2:y:0"lstm_cell_212/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_212_matmul_readvariableop_resource.lstm_cell_212_matmul_1_readvariableop_resource-lstm_cell_212_biasadd_readvariableop_resource*
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
while_body_1284451*
condR
while_cond_1284450*K
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
NoOpNoOp%^lstm_cell_212/BiasAdd/ReadVariableOp$^lstm_cell_212/MatMul/ReadVariableOp&^lstm_cell_212/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_212/BiasAdd/ReadVariableOp$lstm_cell_212/BiasAdd/ReadVariableOp2J
#lstm_cell_212/MatMul/ReadVariableOp#lstm_cell_212/MatMul/ReadVariableOp2N
%lstm_cell_212/MatMul_1/ReadVariableOp%lstm_cell_212/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_160_layer_call_fn_1286853

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
E__inference_lstm_160_layer_call_and_return_conditional_losses_1284385s
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
while_cond_1286922
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1286922___redundant_placeholder05
1while_while_cond_1286922___redundant_placeholder15
1while_while_cond_1286922___redundant_placeholder25
1while_while_cond_1286922___redundant_placeholder3
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
*__inference_lstm_161_layer_call_fn_1287447
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
E__inference_lstm_161_layer_call_and_return_conditional_losses_1283886o
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
?#
?
while_body_1284008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_212_1284032_0:2(/
while_lstm_cell_212_1284034_0:
(+
while_lstm_cell_212_1284036_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_212_1284032:2(-
while_lstm_cell_212_1284034:
()
while_lstm_cell_212_1284036:(??+while/lstm_cell_212/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_212/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_212_1284032_0while_lstm_cell_212_1284034_0while_lstm_cell_212_1284036_0*
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
J__inference_lstm_cell_212_layer_call_and_return_conditional_losses_1283949?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_212/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_212/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_212/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_212/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_212_1284032while_lstm_cell_212_1284032_0"<
while_lstm_cell_212_1284034while_lstm_cell_212_1284034_0"<
while_lstm_cell_212_1284036while_lstm_cell_212_1284036_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_212/StatefulPartitionedCall+while/lstm_cell_212/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_dense_53_layer_call_and_return_conditional_losses_1284553

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
E__inference_lstm_161_layer_call_and_return_conditional_losses_1284077

inputs'
lstm_cell_212_1283995:2('
lstm_cell_212_1283997:
(#
lstm_cell_212_1283999:(
identity??%lstm_cell_212/StatefulPartitionedCall?while;
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
%lstm_cell_212/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_212_1283995lstm_cell_212_1283997lstm_cell_212_1283999*
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
J__inference_lstm_cell_212_layer_call_and_return_conditional_losses_1283949n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_212_1283995lstm_cell_212_1283997lstm_cell_212_1283999*
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
while_body_1284008*
condR
while_cond_1284007*K
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
NoOpNoOp&^lstm_cell_212/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_212/StatefulPartitionedCall%lstm_cell_212/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?C
?

lstm_160_while_body_1285975.
*lstm_160_while_lstm_160_while_loop_counter4
0lstm_160_while_lstm_160_while_maximum_iterations
lstm_160_while_placeholder 
lstm_160_while_placeholder_1 
lstm_160_while_placeholder_2 
lstm_160_while_placeholder_3-
)lstm_160_while_lstm_160_strided_slice_1_0i
elstm_160_while_tensorarrayv2read_tensorlistgetitem_lstm_160_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_160_while_lstm_cell_211_matmul_readvariableop_resource_0:	d?R
?lstm_160_while_lstm_cell_211_matmul_1_readvariableop_resource_0:	2?M
>lstm_160_while_lstm_cell_211_biasadd_readvariableop_resource_0:	?
lstm_160_while_identity
lstm_160_while_identity_1
lstm_160_while_identity_2
lstm_160_while_identity_3
lstm_160_while_identity_4
lstm_160_while_identity_5+
'lstm_160_while_lstm_160_strided_slice_1g
clstm_160_while_tensorarrayv2read_tensorlistgetitem_lstm_160_tensorarrayunstack_tensorlistfromtensorN
;lstm_160_while_lstm_cell_211_matmul_readvariableop_resource:	d?P
=lstm_160_while_lstm_cell_211_matmul_1_readvariableop_resource:	2?K
<lstm_160_while_lstm_cell_211_biasadd_readvariableop_resource:	???3lstm_160/while/lstm_cell_211/BiasAdd/ReadVariableOp?2lstm_160/while/lstm_cell_211/MatMul/ReadVariableOp?4lstm_160/while/lstm_cell_211/MatMul_1/ReadVariableOp?
@lstm_160/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_160/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_160_while_tensorarrayv2read_tensorlistgetitem_lstm_160_tensorarrayunstack_tensorlistfromtensor_0lstm_160_while_placeholderIlstm_160/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_160/while/lstm_cell_211/MatMul/ReadVariableOpReadVariableOp=lstm_160_while_lstm_cell_211_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_160/while/lstm_cell_211/MatMulMatMul9lstm_160/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_160/while/lstm_cell_211/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_160/while/lstm_cell_211/MatMul_1/ReadVariableOpReadVariableOp?lstm_160_while_lstm_cell_211_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_160/while/lstm_cell_211/MatMul_1MatMullstm_160_while_placeholder_2<lstm_160/while/lstm_cell_211/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_160/while/lstm_cell_211/addAddV2-lstm_160/while/lstm_cell_211/MatMul:product:0/lstm_160/while/lstm_cell_211/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_160/while/lstm_cell_211/BiasAdd/ReadVariableOpReadVariableOp>lstm_160_while_lstm_cell_211_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_160/while/lstm_cell_211/BiasAddBiasAdd$lstm_160/while/lstm_cell_211/add:z:0;lstm_160/while/lstm_cell_211/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_160/while/lstm_cell_211/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_160/while/lstm_cell_211/splitSplit5lstm_160/while/lstm_cell_211/split/split_dim:output:0-lstm_160/while/lstm_cell_211/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_160/while/lstm_cell_211/SigmoidSigmoid+lstm_160/while/lstm_cell_211/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_160/while/lstm_cell_211/Sigmoid_1Sigmoid+lstm_160/while/lstm_cell_211/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_160/while/lstm_cell_211/mulMul*lstm_160/while/lstm_cell_211/Sigmoid_1:y:0lstm_160_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_160/while/lstm_cell_211/ReluRelu+lstm_160/while/lstm_cell_211/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_160/while/lstm_cell_211/mul_1Mul(lstm_160/while/lstm_cell_211/Sigmoid:y:0/lstm_160/while/lstm_cell_211/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_160/while/lstm_cell_211/add_1AddV2$lstm_160/while/lstm_cell_211/mul:z:0&lstm_160/while/lstm_cell_211/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_160/while/lstm_cell_211/Sigmoid_2Sigmoid+lstm_160/while/lstm_cell_211/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_160/while/lstm_cell_211/Relu_1Relu&lstm_160/while/lstm_cell_211/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_160/while/lstm_cell_211/mul_2Mul*lstm_160/while/lstm_cell_211/Sigmoid_2:y:01lstm_160/while/lstm_cell_211/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_160/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_160_while_placeholder_1lstm_160_while_placeholder&lstm_160/while/lstm_cell_211/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_160/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_160/while/addAddV2lstm_160_while_placeholderlstm_160/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_160/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_160/while/add_1AddV2*lstm_160_while_lstm_160_while_loop_counterlstm_160/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_160/while/IdentityIdentitylstm_160/while/add_1:z:0^lstm_160/while/NoOp*
T0*
_output_shapes
: ?
lstm_160/while/Identity_1Identity0lstm_160_while_lstm_160_while_maximum_iterations^lstm_160/while/NoOp*
T0*
_output_shapes
: t
lstm_160/while/Identity_2Identitylstm_160/while/add:z:0^lstm_160/while/NoOp*
T0*
_output_shapes
: ?
lstm_160/while/Identity_3IdentityClstm_160/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_160/while/NoOp*
T0*
_output_shapes
: ?
lstm_160/while/Identity_4Identity&lstm_160/while/lstm_cell_211/mul_2:z:0^lstm_160/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_160/while/Identity_5Identity&lstm_160/while/lstm_cell_211/add_1:z:0^lstm_160/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_160/while/NoOpNoOp4^lstm_160/while/lstm_cell_211/BiasAdd/ReadVariableOp3^lstm_160/while/lstm_cell_211/MatMul/ReadVariableOp5^lstm_160/while/lstm_cell_211/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_160_while_identity lstm_160/while/Identity:output:0"?
lstm_160_while_identity_1"lstm_160/while/Identity_1:output:0"?
lstm_160_while_identity_2"lstm_160/while/Identity_2:output:0"?
lstm_160_while_identity_3"lstm_160/while/Identity_3:output:0"?
lstm_160_while_identity_4"lstm_160/while/Identity_4:output:0"?
lstm_160_while_identity_5"lstm_160/while/Identity_5:output:0"T
'lstm_160_while_lstm_160_strided_slice_1)lstm_160_while_lstm_160_strided_slice_1_0"~
<lstm_160_while_lstm_cell_211_biasadd_readvariableop_resource>lstm_160_while_lstm_cell_211_biasadd_readvariableop_resource_0"?
=lstm_160_while_lstm_cell_211_matmul_1_readvariableop_resource?lstm_160_while_lstm_cell_211_matmul_1_readvariableop_resource_0"|
;lstm_160_while_lstm_cell_211_matmul_readvariableop_resource=lstm_160_while_lstm_cell_211_matmul_readvariableop_resource_0"?
clstm_160_while_tensorarrayv2read_tensorlistgetitem_lstm_160_tensorarrayunstack_tensorlistfromtensorelstm_160_while_tensorarrayv2read_tensorlistgetitem_lstm_160_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_160/while/lstm_cell_211/BiasAdd/ReadVariableOp3lstm_160/while/lstm_cell_211/BiasAdd/ReadVariableOp2h
2lstm_160/while/lstm_cell_211/MatMul/ReadVariableOp2lstm_160/while/lstm_cell_211/MatMul/ReadVariableOp2l
4lstm_160/while/lstm_cell_211/MatMul_1/ReadVariableOp4lstm_160/while/lstm_cell_211/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_211_layer_call_and_return_conditional_losses_1288267

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
while_cond_1286735
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1286735___redundant_placeholder05
1while_while_cond_1286735___redundant_placeholder15
1while_while_cond_1286735___redundant_placeholder25
1while_while_cond_1286735___redundant_placeholder3
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
*__inference_lstm_160_layer_call_fn_1286864

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
E__inference_lstm_160_layer_call_and_return_conditional_losses_1284916s
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
/__inference_lstm_cell_212_layer_call_fn_1288284

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
J__inference_lstm_cell_212_layer_call_and_return_conditional_losses_1283803o
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
?8
?
while_body_1286923
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_211_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_211_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_211_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_211_matmul_readvariableop_resource:	d?G
4while_lstm_cell_211_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_211_biasadd_readvariableop_resource:	???*while/lstm_cell_211/BiasAdd/ReadVariableOp?)while/lstm_cell_211/MatMul/ReadVariableOp?+while/lstm_cell_211/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_211/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_211_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_211/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_211/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_211/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_211_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_211/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_211/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_211/addAddV2$while/lstm_cell_211/MatMul:product:0&while/lstm_cell_211/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_211/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_211_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_211/BiasAddBiasAddwhile/lstm_cell_211/add:z:02while/lstm_cell_211/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_211/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_211/splitSplit,while/lstm_cell_211/split/split_dim:output:0$while/lstm_cell_211/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_211/SigmoidSigmoid"while/lstm_cell_211/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_211/Sigmoid_1Sigmoid"while/lstm_cell_211/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_211/mulMul!while/lstm_cell_211/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_211/ReluRelu"while/lstm_cell_211/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_211/mul_1Mulwhile/lstm_cell_211/Sigmoid:y:0&while/lstm_cell_211/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_211/add_1AddV2while/lstm_cell_211/mul:z:0while/lstm_cell_211/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_211/Sigmoid_2Sigmoid"while/lstm_cell_211/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_211/Relu_1Reluwhile/lstm_cell_211/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_211/mul_2Mul!while/lstm_cell_211/Sigmoid_2:y:0(while/lstm_cell_211/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_211/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_211/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_211/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_211/BiasAdd/ReadVariableOp*^while/lstm_cell_211/MatMul/ReadVariableOp,^while/lstm_cell_211/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_211_biasadd_readvariableop_resource5while_lstm_cell_211_biasadd_readvariableop_resource_0"n
4while_lstm_cell_211_matmul_1_readvariableop_resource6while_lstm_cell_211_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_211_matmul_readvariableop_resource4while_lstm_cell_211_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_211/BiasAdd/ReadVariableOp*while/lstm_cell_211/BiasAdd/ReadVariableOp2V
)while/lstm_cell_211/MatMul/ReadVariableOp)while/lstm_cell_211/MatMul/ReadVariableOp2Z
+while/lstm_cell_211/MatMul_1/ReadVariableOp+while/lstm_cell_211/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1286307
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_210_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_210_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_210_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_210_matmul_readvariableop_resource:	?G
4while_lstm_cell_210_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_210_biasadd_readvariableop_resource:	???*while/lstm_cell_210/BiasAdd/ReadVariableOp?)while/lstm_cell_210/MatMul/ReadVariableOp?+while/lstm_cell_210/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_210/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_210_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_210/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_210/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_210/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_210_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_210/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_210/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_210/addAddV2$while/lstm_cell_210/MatMul:product:0&while/lstm_cell_210/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_210/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_210_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_210/BiasAddBiasAddwhile/lstm_cell_210/add:z:02while/lstm_cell_210/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_210/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_210/splitSplit,while/lstm_cell_210/split/split_dim:output:0$while/lstm_cell_210/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_210/SigmoidSigmoid"while/lstm_cell_210/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_210/Sigmoid_1Sigmoid"while/lstm_cell_210/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_210/mulMul!while/lstm_cell_210/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_210/ReluRelu"while/lstm_cell_210/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_210/mul_1Mulwhile/lstm_cell_210/Sigmoid:y:0&while/lstm_cell_210/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_210/add_1AddV2while/lstm_cell_210/mul:z:0while/lstm_cell_210/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_210/Sigmoid_2Sigmoid"while/lstm_cell_210/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_210/Relu_1Reluwhile/lstm_cell_210/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_210/mul_2Mul!while/lstm_cell_210/Sigmoid_2:y:0(while/lstm_cell_210/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_210/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_210/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_210/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_210/BiasAdd/ReadVariableOp*^while/lstm_cell_210/MatMul/ReadVariableOp,^while/lstm_cell_210/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_210_biasadd_readvariableop_resource5while_lstm_cell_210_biasadd_readvariableop_resource_0"n
4while_lstm_cell_210_matmul_1_readvariableop_resource6while_lstm_cell_210_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_210_matmul_readvariableop_resource4while_lstm_cell_210_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_210/BiasAdd/ReadVariableOp*while/lstm_cell_210/BiasAdd/ReadVariableOp2V
)while/lstm_cell_210/MatMul/ReadVariableOp)while/lstm_cell_210/MatMul/ReadVariableOp2Z
+while/lstm_cell_210/MatMul_1/ReadVariableOp+while/lstm_cell_210/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1283657
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1283657___redundant_placeholder05
1while_while_cond_1283657___redundant_placeholder15
1while_while_cond_1283657___redundant_placeholder25
1while_while_cond_1283657___redundant_placeholder3
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
J__inference_sequential_53_layer_call_and_return_conditional_losses_1286204

inputsH
5lstm_159_lstm_cell_210_matmul_readvariableop_resource:	?J
7lstm_159_lstm_cell_210_matmul_1_readvariableop_resource:	d?E
6lstm_159_lstm_cell_210_biasadd_readvariableop_resource:	?H
5lstm_160_lstm_cell_211_matmul_readvariableop_resource:	d?J
7lstm_160_lstm_cell_211_matmul_1_readvariableop_resource:	2?E
6lstm_160_lstm_cell_211_biasadd_readvariableop_resource:	?G
5lstm_161_lstm_cell_212_matmul_readvariableop_resource:2(I
7lstm_161_lstm_cell_212_matmul_1_readvariableop_resource:
(D
6lstm_161_lstm_cell_212_biasadd_readvariableop_resource:(9
'dense_53_matmul_readvariableop_resource:
6
(dense_53_biasadd_readvariableop_resource:
identity??dense_53/BiasAdd/ReadVariableOp?dense_53/MatMul/ReadVariableOp?-lstm_159/lstm_cell_210/BiasAdd/ReadVariableOp?,lstm_159/lstm_cell_210/MatMul/ReadVariableOp?.lstm_159/lstm_cell_210/MatMul_1/ReadVariableOp?lstm_159/while?-lstm_160/lstm_cell_211/BiasAdd/ReadVariableOp?,lstm_160/lstm_cell_211/MatMul/ReadVariableOp?.lstm_160/lstm_cell_211/MatMul_1/ReadVariableOp?lstm_160/while?-lstm_161/lstm_cell_212/BiasAdd/ReadVariableOp?,lstm_161/lstm_cell_212/MatMul/ReadVariableOp?.lstm_161/lstm_cell_212/MatMul_1/ReadVariableOp?lstm_161/whileD
lstm_159/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_159/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_159/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_159/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_159/strided_sliceStridedSlicelstm_159/Shape:output:0%lstm_159/strided_slice/stack:output:0'lstm_159/strided_slice/stack_1:output:0'lstm_159/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_159/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_159/zeros/packedPacklstm_159/strided_slice:output:0 lstm_159/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_159/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_159/zerosFilllstm_159/zeros/packed:output:0lstm_159/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_159/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_159/zeros_1/packedPacklstm_159/strided_slice:output:0"lstm_159/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_159/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_159/zeros_1Fill lstm_159/zeros_1/packed:output:0lstm_159/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_159/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_159/transpose	Transposeinputs lstm_159/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_159/Shape_1Shapelstm_159/transpose:y:0*
T0*
_output_shapes
:h
lstm_159/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_159/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_159/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_159/strided_slice_1StridedSlicelstm_159/Shape_1:output:0'lstm_159/strided_slice_1/stack:output:0)lstm_159/strided_slice_1/stack_1:output:0)lstm_159/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_159/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_159/TensorArrayV2TensorListReserve-lstm_159/TensorArrayV2/element_shape:output:0!lstm_159/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_159/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_159/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_159/transpose:y:0Glstm_159/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_159/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_159/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_159/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_159/strided_slice_2StridedSlicelstm_159/transpose:y:0'lstm_159/strided_slice_2/stack:output:0)lstm_159/strided_slice_2/stack_1:output:0)lstm_159/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_159/lstm_cell_210/MatMul/ReadVariableOpReadVariableOp5lstm_159_lstm_cell_210_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_159/lstm_cell_210/MatMulMatMul!lstm_159/strided_slice_2:output:04lstm_159/lstm_cell_210/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_159/lstm_cell_210/MatMul_1/ReadVariableOpReadVariableOp7lstm_159_lstm_cell_210_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_159/lstm_cell_210/MatMul_1MatMullstm_159/zeros:output:06lstm_159/lstm_cell_210/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_159/lstm_cell_210/addAddV2'lstm_159/lstm_cell_210/MatMul:product:0)lstm_159/lstm_cell_210/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_159/lstm_cell_210/BiasAdd/ReadVariableOpReadVariableOp6lstm_159_lstm_cell_210_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_159/lstm_cell_210/BiasAddBiasAddlstm_159/lstm_cell_210/add:z:05lstm_159/lstm_cell_210/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_159/lstm_cell_210/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_159/lstm_cell_210/splitSplit/lstm_159/lstm_cell_210/split/split_dim:output:0'lstm_159/lstm_cell_210/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_159/lstm_cell_210/SigmoidSigmoid%lstm_159/lstm_cell_210/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_159/lstm_cell_210/Sigmoid_1Sigmoid%lstm_159/lstm_cell_210/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_159/lstm_cell_210/mulMul$lstm_159/lstm_cell_210/Sigmoid_1:y:0lstm_159/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_159/lstm_cell_210/ReluRelu%lstm_159/lstm_cell_210/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_159/lstm_cell_210/mul_1Mul"lstm_159/lstm_cell_210/Sigmoid:y:0)lstm_159/lstm_cell_210/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_159/lstm_cell_210/add_1AddV2lstm_159/lstm_cell_210/mul:z:0 lstm_159/lstm_cell_210/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_159/lstm_cell_210/Sigmoid_2Sigmoid%lstm_159/lstm_cell_210/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_159/lstm_cell_210/Relu_1Relu lstm_159/lstm_cell_210/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_159/lstm_cell_210/mul_2Mul$lstm_159/lstm_cell_210/Sigmoid_2:y:0+lstm_159/lstm_cell_210/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_159/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_159/TensorArrayV2_1TensorListReserve/lstm_159/TensorArrayV2_1/element_shape:output:0!lstm_159/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_159/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_159/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_159/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_159/whileWhile$lstm_159/while/loop_counter:output:0*lstm_159/while/maximum_iterations:output:0lstm_159/time:output:0!lstm_159/TensorArrayV2_1:handle:0lstm_159/zeros:output:0lstm_159/zeros_1:output:0!lstm_159/strided_slice_1:output:0@lstm_159/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_159_lstm_cell_210_matmul_readvariableop_resource7lstm_159_lstm_cell_210_matmul_1_readvariableop_resource6lstm_159_lstm_cell_210_biasadd_readvariableop_resource*
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
lstm_159_while_body_1285836*'
condR
lstm_159_while_cond_1285835*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_159/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_159/TensorArrayV2Stack/TensorListStackTensorListStacklstm_159/while:output:3Blstm_159/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_159/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_159/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_159/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_159/strided_slice_3StridedSlice4lstm_159/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_159/strided_slice_3/stack:output:0)lstm_159/strided_slice_3/stack_1:output:0)lstm_159/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_159/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_159/transpose_1	Transpose4lstm_159/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_159/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_159/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_160/ShapeShapelstm_159/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_160/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_160/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_160/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_160/strided_sliceStridedSlicelstm_160/Shape:output:0%lstm_160/strided_slice/stack:output:0'lstm_160/strided_slice/stack_1:output:0'lstm_160/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_160/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_160/zeros/packedPacklstm_160/strided_slice:output:0 lstm_160/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_160/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_160/zerosFilllstm_160/zeros/packed:output:0lstm_160/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_160/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_160/zeros_1/packedPacklstm_160/strided_slice:output:0"lstm_160/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_160/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_160/zeros_1Fill lstm_160/zeros_1/packed:output:0lstm_160/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_160/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_160/transpose	Transposelstm_159/transpose_1:y:0 lstm_160/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_160/Shape_1Shapelstm_160/transpose:y:0*
T0*
_output_shapes
:h
lstm_160/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_160/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_160/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_160/strided_slice_1StridedSlicelstm_160/Shape_1:output:0'lstm_160/strided_slice_1/stack:output:0)lstm_160/strided_slice_1/stack_1:output:0)lstm_160/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_160/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_160/TensorArrayV2TensorListReserve-lstm_160/TensorArrayV2/element_shape:output:0!lstm_160/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_160/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_160/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_160/transpose:y:0Glstm_160/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_160/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_160/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_160/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_160/strided_slice_2StridedSlicelstm_160/transpose:y:0'lstm_160/strided_slice_2/stack:output:0)lstm_160/strided_slice_2/stack_1:output:0)lstm_160/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_160/lstm_cell_211/MatMul/ReadVariableOpReadVariableOp5lstm_160_lstm_cell_211_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_160/lstm_cell_211/MatMulMatMul!lstm_160/strided_slice_2:output:04lstm_160/lstm_cell_211/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_160/lstm_cell_211/MatMul_1/ReadVariableOpReadVariableOp7lstm_160_lstm_cell_211_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_160/lstm_cell_211/MatMul_1MatMullstm_160/zeros:output:06lstm_160/lstm_cell_211/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_160/lstm_cell_211/addAddV2'lstm_160/lstm_cell_211/MatMul:product:0)lstm_160/lstm_cell_211/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_160/lstm_cell_211/BiasAdd/ReadVariableOpReadVariableOp6lstm_160_lstm_cell_211_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_160/lstm_cell_211/BiasAddBiasAddlstm_160/lstm_cell_211/add:z:05lstm_160/lstm_cell_211/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_160/lstm_cell_211/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_160/lstm_cell_211/splitSplit/lstm_160/lstm_cell_211/split/split_dim:output:0'lstm_160/lstm_cell_211/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_160/lstm_cell_211/SigmoidSigmoid%lstm_160/lstm_cell_211/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_160/lstm_cell_211/Sigmoid_1Sigmoid%lstm_160/lstm_cell_211/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_160/lstm_cell_211/mulMul$lstm_160/lstm_cell_211/Sigmoid_1:y:0lstm_160/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_160/lstm_cell_211/ReluRelu%lstm_160/lstm_cell_211/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_160/lstm_cell_211/mul_1Mul"lstm_160/lstm_cell_211/Sigmoid:y:0)lstm_160/lstm_cell_211/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_160/lstm_cell_211/add_1AddV2lstm_160/lstm_cell_211/mul:z:0 lstm_160/lstm_cell_211/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_160/lstm_cell_211/Sigmoid_2Sigmoid%lstm_160/lstm_cell_211/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_160/lstm_cell_211/Relu_1Relu lstm_160/lstm_cell_211/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_160/lstm_cell_211/mul_2Mul$lstm_160/lstm_cell_211/Sigmoid_2:y:0+lstm_160/lstm_cell_211/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_160/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_160/TensorArrayV2_1TensorListReserve/lstm_160/TensorArrayV2_1/element_shape:output:0!lstm_160/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_160/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_160/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_160/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_160/whileWhile$lstm_160/while/loop_counter:output:0*lstm_160/while/maximum_iterations:output:0lstm_160/time:output:0!lstm_160/TensorArrayV2_1:handle:0lstm_160/zeros:output:0lstm_160/zeros_1:output:0!lstm_160/strided_slice_1:output:0@lstm_160/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_160_lstm_cell_211_matmul_readvariableop_resource7lstm_160_lstm_cell_211_matmul_1_readvariableop_resource6lstm_160_lstm_cell_211_biasadd_readvariableop_resource*
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
lstm_160_while_body_1285975*'
condR
lstm_160_while_cond_1285974*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_160/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_160/TensorArrayV2Stack/TensorListStackTensorListStacklstm_160/while:output:3Blstm_160/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_160/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_160/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_160/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_160/strided_slice_3StridedSlice4lstm_160/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_160/strided_slice_3/stack:output:0)lstm_160/strided_slice_3/stack_1:output:0)lstm_160/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_160/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_160/transpose_1	Transpose4lstm_160/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_160/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_160/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_161/ShapeShapelstm_160/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_161/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_161/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_161/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_161/strided_sliceStridedSlicelstm_161/Shape:output:0%lstm_161/strided_slice/stack:output:0'lstm_161/strided_slice/stack_1:output:0'lstm_161/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_161/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_161/zeros/packedPacklstm_161/strided_slice:output:0 lstm_161/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_161/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_161/zerosFilllstm_161/zeros/packed:output:0lstm_161/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_161/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_161/zeros_1/packedPacklstm_161/strided_slice:output:0"lstm_161/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_161/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_161/zeros_1Fill lstm_161/zeros_1/packed:output:0lstm_161/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_161/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_161/transpose	Transposelstm_160/transpose_1:y:0 lstm_161/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_161/Shape_1Shapelstm_161/transpose:y:0*
T0*
_output_shapes
:h
lstm_161/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_161/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_161/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_161/strided_slice_1StridedSlicelstm_161/Shape_1:output:0'lstm_161/strided_slice_1/stack:output:0)lstm_161/strided_slice_1/stack_1:output:0)lstm_161/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_161/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_161/TensorArrayV2TensorListReserve-lstm_161/TensorArrayV2/element_shape:output:0!lstm_161/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_161/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_161/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_161/transpose:y:0Glstm_161/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_161/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_161/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_161/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_161/strided_slice_2StridedSlicelstm_161/transpose:y:0'lstm_161/strided_slice_2/stack:output:0)lstm_161/strided_slice_2/stack_1:output:0)lstm_161/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_161/lstm_cell_212/MatMul/ReadVariableOpReadVariableOp5lstm_161_lstm_cell_212_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_161/lstm_cell_212/MatMulMatMul!lstm_161/strided_slice_2:output:04lstm_161/lstm_cell_212/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_161/lstm_cell_212/MatMul_1/ReadVariableOpReadVariableOp7lstm_161_lstm_cell_212_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_161/lstm_cell_212/MatMul_1MatMullstm_161/zeros:output:06lstm_161/lstm_cell_212/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_161/lstm_cell_212/addAddV2'lstm_161/lstm_cell_212/MatMul:product:0)lstm_161/lstm_cell_212/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_161/lstm_cell_212/BiasAdd/ReadVariableOpReadVariableOp6lstm_161_lstm_cell_212_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_161/lstm_cell_212/BiasAddBiasAddlstm_161/lstm_cell_212/add:z:05lstm_161/lstm_cell_212/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_161/lstm_cell_212/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_161/lstm_cell_212/splitSplit/lstm_161/lstm_cell_212/split/split_dim:output:0'lstm_161/lstm_cell_212/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_161/lstm_cell_212/SigmoidSigmoid%lstm_161/lstm_cell_212/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_161/lstm_cell_212/Sigmoid_1Sigmoid%lstm_161/lstm_cell_212/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_161/lstm_cell_212/mulMul$lstm_161/lstm_cell_212/Sigmoid_1:y:0lstm_161/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_161/lstm_cell_212/ReluRelu%lstm_161/lstm_cell_212/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_161/lstm_cell_212/mul_1Mul"lstm_161/lstm_cell_212/Sigmoid:y:0)lstm_161/lstm_cell_212/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_161/lstm_cell_212/add_1AddV2lstm_161/lstm_cell_212/mul:z:0 lstm_161/lstm_cell_212/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_161/lstm_cell_212/Sigmoid_2Sigmoid%lstm_161/lstm_cell_212/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_161/lstm_cell_212/Relu_1Relu lstm_161/lstm_cell_212/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_161/lstm_cell_212/mul_2Mul$lstm_161/lstm_cell_212/Sigmoid_2:y:0+lstm_161/lstm_cell_212/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_161/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_161/TensorArrayV2_1TensorListReserve/lstm_161/TensorArrayV2_1/element_shape:output:0!lstm_161/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_161/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_161/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_161/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_161/whileWhile$lstm_161/while/loop_counter:output:0*lstm_161/while/maximum_iterations:output:0lstm_161/time:output:0!lstm_161/TensorArrayV2_1:handle:0lstm_161/zeros:output:0lstm_161/zeros_1:output:0!lstm_161/strided_slice_1:output:0@lstm_161/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_161_lstm_cell_212_matmul_readvariableop_resource7lstm_161_lstm_cell_212_matmul_1_readvariableop_resource6lstm_161_lstm_cell_212_biasadd_readvariableop_resource*
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
lstm_161_while_body_1286114*'
condR
lstm_161_while_cond_1286113*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_161/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_161/TensorArrayV2Stack/TensorListStackTensorListStacklstm_161/while:output:3Blstm_161/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_161/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_161/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_161/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_161/strided_slice_3StridedSlice4lstm_161/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_161/strided_slice_3/stack:output:0)lstm_161/strided_slice_3/stack_1:output:0)lstm_161/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_161/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_161/transpose_1	Transpose4lstm_161/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_161/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_161/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_53/MatMul/ReadVariableOpReadVariableOp'dense_53_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_53/MatMulMatMul!lstm_161/strided_slice_3:output:0&dense_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_53/BiasAdd/ReadVariableOpReadVariableOp(dense_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_53/BiasAddBiasAdddense_53/MatMul:product:0'dense_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_53/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_53/BiasAdd/ReadVariableOp^dense_53/MatMul/ReadVariableOp.^lstm_159/lstm_cell_210/BiasAdd/ReadVariableOp-^lstm_159/lstm_cell_210/MatMul/ReadVariableOp/^lstm_159/lstm_cell_210/MatMul_1/ReadVariableOp^lstm_159/while.^lstm_160/lstm_cell_211/BiasAdd/ReadVariableOp-^lstm_160/lstm_cell_211/MatMul/ReadVariableOp/^lstm_160/lstm_cell_211/MatMul_1/ReadVariableOp^lstm_160/while.^lstm_161/lstm_cell_212/BiasAdd/ReadVariableOp-^lstm_161/lstm_cell_212/MatMul/ReadVariableOp/^lstm_161/lstm_cell_212/MatMul_1/ReadVariableOp^lstm_161/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_53/BiasAdd/ReadVariableOpdense_53/BiasAdd/ReadVariableOp2@
dense_53/MatMul/ReadVariableOpdense_53/MatMul/ReadVariableOp2^
-lstm_159/lstm_cell_210/BiasAdd/ReadVariableOp-lstm_159/lstm_cell_210/BiasAdd/ReadVariableOp2\
,lstm_159/lstm_cell_210/MatMul/ReadVariableOp,lstm_159/lstm_cell_210/MatMul/ReadVariableOp2`
.lstm_159/lstm_cell_210/MatMul_1/ReadVariableOp.lstm_159/lstm_cell_210/MatMul_1/ReadVariableOp2 
lstm_159/whilelstm_159/while2^
-lstm_160/lstm_cell_211/BiasAdd/ReadVariableOp-lstm_160/lstm_cell_211/BiasAdd/ReadVariableOp2\
,lstm_160/lstm_cell_211/MatMul/ReadVariableOp,lstm_160/lstm_cell_211/MatMul/ReadVariableOp2`
.lstm_160/lstm_cell_211/MatMul_1/ReadVariableOp.lstm_160/lstm_cell_211/MatMul_1/ReadVariableOp2 
lstm_160/whilelstm_160/while2^
-lstm_161/lstm_cell_212/BiasAdd/ReadVariableOp-lstm_161/lstm_cell_212/BiasAdd/ReadVariableOp2\
,lstm_161/lstm_cell_212/MatMul/ReadVariableOp,lstm_161/lstm_cell_212/MatMul/ReadVariableOp2`
.lstm_161/lstm_cell_212/MatMul_1/ReadVariableOp.lstm_161/lstm_cell_212/MatMul_1/ReadVariableOp2 
lstm_161/whilelstm_161/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_211_layer_call_and_return_conditional_losses_1283599

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
while_body_1287968
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_212_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_212_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_212_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_212_matmul_readvariableop_resource:2(F
4while_lstm_cell_212_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_212_biasadd_readvariableop_resource:(??*while/lstm_cell_212/BiasAdd/ReadVariableOp?)while/lstm_cell_212/MatMul/ReadVariableOp?+while/lstm_cell_212/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_212/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_212_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_212/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_212/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_212/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_212_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_212/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_212/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_212/addAddV2$while/lstm_cell_212/MatMul:product:0&while/lstm_cell_212/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_212/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_212_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_212/BiasAddBiasAddwhile/lstm_cell_212/add:z:02while/lstm_cell_212/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_212/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_212/splitSplit,while/lstm_cell_212/split/split_dim:output:0$while/lstm_cell_212/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_212/SigmoidSigmoid"while/lstm_cell_212/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_212/Sigmoid_1Sigmoid"while/lstm_cell_212/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_212/mulMul!while/lstm_cell_212/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_212/ReluRelu"while/lstm_cell_212/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_212/mul_1Mulwhile/lstm_cell_212/Sigmoid:y:0&while/lstm_cell_212/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_212/add_1AddV2while/lstm_cell_212/mul:z:0while/lstm_cell_212/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_212/Sigmoid_2Sigmoid"while/lstm_cell_212/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_212/Relu_1Reluwhile/lstm_cell_212/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_212/mul_2Mul!while/lstm_cell_212/Sigmoid_2:y:0(while/lstm_cell_212/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_212/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_212/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_212/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_212/BiasAdd/ReadVariableOp*^while/lstm_cell_212/MatMul/ReadVariableOp,^while/lstm_cell_212/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_212_biasadd_readvariableop_resource5while_lstm_cell_212_biasadd_readvariableop_resource_0"n
4while_lstm_cell_212_matmul_1_readvariableop_resource6while_lstm_cell_212_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_212_matmul_readvariableop_resource4while_lstm_cell_212_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_212/BiasAdd/ReadVariableOp*while/lstm_cell_212/BiasAdd/ReadVariableOp2V
)while/lstm_cell_212/MatMul/ReadVariableOp)while/lstm_cell_212/MatMul/ReadVariableOp2Z
+while/lstm_cell_212/MatMul_1/ReadVariableOp+while/lstm_cell_212/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1284301
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_211_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_211_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_211_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_211_matmul_readvariableop_resource:	d?G
4while_lstm_cell_211_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_211_biasadd_readvariableop_resource:	???*while/lstm_cell_211/BiasAdd/ReadVariableOp?)while/lstm_cell_211/MatMul/ReadVariableOp?+while/lstm_cell_211/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_211/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_211_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_211/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_211/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_211/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_211_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_211/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_211/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_211/addAddV2$while/lstm_cell_211/MatMul:product:0&while/lstm_cell_211/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_211/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_211_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_211/BiasAddBiasAddwhile/lstm_cell_211/add:z:02while/lstm_cell_211/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_211/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_211/splitSplit,while/lstm_cell_211/split/split_dim:output:0$while/lstm_cell_211/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_211/SigmoidSigmoid"while/lstm_cell_211/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_211/Sigmoid_1Sigmoid"while/lstm_cell_211/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_211/mulMul!while/lstm_cell_211/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_211/ReluRelu"while/lstm_cell_211/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_211/mul_1Mulwhile/lstm_cell_211/Sigmoid:y:0&while/lstm_cell_211/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_211/add_1AddV2while/lstm_cell_211/mul:z:0while/lstm_cell_211/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_211/Sigmoid_2Sigmoid"while/lstm_cell_211/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_211/Relu_1Reluwhile/lstm_cell_211/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_211/mul_2Mul!while/lstm_cell_211/Sigmoid_2:y:0(while/lstm_cell_211/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_211/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_211/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_211/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_211/BiasAdd/ReadVariableOp*^while/lstm_cell_211/MatMul/ReadVariableOp,^while/lstm_cell_211/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_211_biasadd_readvariableop_resource5while_lstm_cell_211_biasadd_readvariableop_resource_0"n
4while_lstm_cell_211_matmul_1_readvariableop_resource6while_lstm_cell_211_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_211_matmul_readvariableop_resource4while_lstm_cell_211_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_211/BiasAdd/ReadVariableOp*while/lstm_cell_211/BiasAdd/ReadVariableOp2V
)while/lstm_cell_211/MatMul/ReadVariableOp)while/lstm_cell_211/MatMul/ReadVariableOp2Z
+while/lstm_cell_211/MatMul_1/ReadVariableOp+while/lstm_cell_211/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1286593
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_210_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_210_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_210_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_210_matmul_readvariableop_resource:	?G
4while_lstm_cell_210_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_210_biasadd_readvariableop_resource:	???*while/lstm_cell_210/BiasAdd/ReadVariableOp?)while/lstm_cell_210/MatMul/ReadVariableOp?+while/lstm_cell_210/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_210/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_210_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_210/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_210/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_210/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_210_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_210/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_210/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_210/addAddV2$while/lstm_cell_210/MatMul:product:0&while/lstm_cell_210/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_210/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_210_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_210/BiasAddBiasAddwhile/lstm_cell_210/add:z:02while/lstm_cell_210/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_210/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_210/splitSplit,while/lstm_cell_210/split/split_dim:output:0$while/lstm_cell_210/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_210/SigmoidSigmoid"while/lstm_cell_210/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_210/Sigmoid_1Sigmoid"while/lstm_cell_210/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_210/mulMul!while/lstm_cell_210/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_210/ReluRelu"while/lstm_cell_210/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_210/mul_1Mulwhile/lstm_cell_210/Sigmoid:y:0&while/lstm_cell_210/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_210/add_1AddV2while/lstm_cell_210/mul:z:0while/lstm_cell_210/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_210/Sigmoid_2Sigmoid"while/lstm_cell_210/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_210/Relu_1Reluwhile/lstm_cell_210/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_210/mul_2Mul!while/lstm_cell_210/Sigmoid_2:y:0(while/lstm_cell_210/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_210/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_210/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_210/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_210/BiasAdd/ReadVariableOp*^while/lstm_cell_210/MatMul/ReadVariableOp,^while/lstm_cell_210/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_210_biasadd_readvariableop_resource5while_lstm_cell_210_biasadd_readvariableop_resource_0"n
4while_lstm_cell_210_matmul_1_readvariableop_resource6while_lstm_cell_210_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_210_matmul_readvariableop_resource4while_lstm_cell_210_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_210/BiasAdd/ReadVariableOp*while/lstm_cell_210/BiasAdd/ReadVariableOp2V
)while/lstm_cell_210/MatMul/ReadVariableOp)while/lstm_cell_210/MatMul/ReadVariableOp2Z
+while/lstm_cell_210/MatMul_1/ReadVariableOp+while/lstm_cell_210/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_211_layer_call_fn_1288203

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
J__inference_lstm_cell_211_layer_call_and_return_conditional_losses_1283599o
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
while_cond_1284450
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1284450___redundant_placeholder05
1while_while_cond_1284450___redundant_placeholder15
1while_while_cond_1284450___redundant_placeholder25
1while_while_cond_1284450___redundant_placeholder3
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
?
*__inference_lstm_161_layer_call_fn_1287458
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
E__inference_lstm_161_layer_call_and_return_conditional_losses_1284077o
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
while_cond_1284007
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1284007___redundant_placeholder05
1while_while_cond_1284007___redundant_placeholder15
1while_while_cond_1284007___redundant_placeholder25
1while_while_cond_1284007___redundant_placeholder3
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
E__inference_lstm_161_layer_call_and_return_conditional_losses_1288052

inputs>
,lstm_cell_212_matmul_readvariableop_resource:2(@
.lstm_cell_212_matmul_1_readvariableop_resource:
(;
-lstm_cell_212_biasadd_readvariableop_resource:(
identity??$lstm_cell_212/BiasAdd/ReadVariableOp?#lstm_cell_212/MatMul/ReadVariableOp?%lstm_cell_212/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_212/MatMul/ReadVariableOpReadVariableOp,lstm_cell_212_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_212/MatMulMatMulstrided_slice_2:output:0+lstm_cell_212/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_212/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_212_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_212/MatMul_1MatMulzeros:output:0-lstm_cell_212/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_212/addAddV2lstm_cell_212/MatMul:product:0 lstm_cell_212/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_212/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_212_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_212/BiasAddBiasAddlstm_cell_212/add:z:0,lstm_cell_212/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_212/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_212/splitSplit&lstm_cell_212/split/split_dim:output:0lstm_cell_212/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_212/SigmoidSigmoidlstm_cell_212/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_212/Sigmoid_1Sigmoidlstm_cell_212/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_212/mulMullstm_cell_212/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_212/ReluRelulstm_cell_212/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_212/mul_1Mullstm_cell_212/Sigmoid:y:0 lstm_cell_212/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_212/add_1AddV2lstm_cell_212/mul:z:0lstm_cell_212/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_212/Sigmoid_2Sigmoidlstm_cell_212/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_212/Relu_1Relulstm_cell_212/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_212/mul_2Mullstm_cell_212/Sigmoid_2:y:0"lstm_cell_212/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_212_matmul_readvariableop_resource.lstm_cell_212_matmul_1_readvariableop_resource-lstm_cell_212_biasadd_readvariableop_resource*
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
while_body_1287968*
condR
while_cond_1287967*K
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
NoOpNoOp%^lstm_cell_212/BiasAdd/ReadVariableOp$^lstm_cell_212/MatMul/ReadVariableOp&^lstm_cell_212/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_212/BiasAdd/ReadVariableOp$lstm_cell_212/BiasAdd/ReadVariableOp2J
#lstm_cell_212/MatMul/ReadVariableOp#lstm_cell_212/MatMul/ReadVariableOp2N
%lstm_cell_212/MatMul_1/ReadVariableOp%lstm_cell_212/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_159_layer_call_fn_1286237

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
E__inference_lstm_159_layer_call_and_return_conditional_losses_1284235s
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
while_cond_1287208
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1287208___redundant_placeholder05
1while_while_cond_1287208___redundant_placeholder15
1while_while_cond_1287208___redundant_placeholder25
1while_while_cond_1287208___redundant_placeholder3
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
?#
?
while_body_1283817
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_212_1283841_0:2(/
while_lstm_cell_212_1283843_0:
(+
while_lstm_cell_212_1283845_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_212_1283841:2(-
while_lstm_cell_212_1283843:
()
while_lstm_cell_212_1283845:(??+while/lstm_cell_212/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_212/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_212_1283841_0while_lstm_cell_212_1283843_0while_lstm_cell_212_1283845_0*
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
J__inference_lstm_cell_212_layer_call_and_return_conditional_losses_1283803?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_212/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_212/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_212/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_212/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_212_1283841while_lstm_cell_212_1283841_0"<
while_lstm_cell_212_1283843while_lstm_cell_212_1283843_0"<
while_lstm_cell_212_1283845while_lstm_cell_212_1283845_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_212/StatefulPartitionedCall+while/lstm_cell_212/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_161_layer_call_and_return_conditional_losses_1287623
inputs_0>
,lstm_cell_212_matmul_readvariableop_resource:2(@
.lstm_cell_212_matmul_1_readvariableop_resource:
(;
-lstm_cell_212_biasadd_readvariableop_resource:(
identity??$lstm_cell_212/BiasAdd/ReadVariableOp?#lstm_cell_212/MatMul/ReadVariableOp?%lstm_cell_212/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_212/MatMul/ReadVariableOpReadVariableOp,lstm_cell_212_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_212/MatMulMatMulstrided_slice_2:output:0+lstm_cell_212/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_212/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_212_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_212/MatMul_1MatMulzeros:output:0-lstm_cell_212/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_212/addAddV2lstm_cell_212/MatMul:product:0 lstm_cell_212/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_212/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_212_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_212/BiasAddBiasAddlstm_cell_212/add:z:0,lstm_cell_212/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_212/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_212/splitSplit&lstm_cell_212/split/split_dim:output:0lstm_cell_212/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_212/SigmoidSigmoidlstm_cell_212/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_212/Sigmoid_1Sigmoidlstm_cell_212/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_212/mulMullstm_cell_212/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_212/ReluRelulstm_cell_212/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_212/mul_1Mullstm_cell_212/Sigmoid:y:0 lstm_cell_212/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_212/add_1AddV2lstm_cell_212/mul:z:0lstm_cell_212/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_212/Sigmoid_2Sigmoidlstm_cell_212/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_212/Relu_1Relulstm_cell_212/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_212/mul_2Mullstm_cell_212/Sigmoid_2:y:0"lstm_cell_212/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_212_matmul_readvariableop_resource.lstm_cell_212_matmul_1_readvariableop_resource-lstm_cell_212_biasadd_readvariableop_resource*
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
while_body_1287539*
condR
while_cond_1287538*K
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
NoOpNoOp%^lstm_cell_212/BiasAdd/ReadVariableOp$^lstm_cell_212/MatMul/ReadVariableOp&^lstm_cell_212/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_212/BiasAdd/ReadVariableOp$lstm_cell_212/BiasAdd/ReadVariableOp2J
#lstm_cell_212/MatMul/ReadVariableOp#lstm_cell_212/MatMul/ReadVariableOp2N
%lstm_cell_212/MatMul_1/ReadVariableOp%lstm_cell_212/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_1287352
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_211_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_211_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_211_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_211_matmul_readvariableop_resource:	d?G
4while_lstm_cell_211_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_211_biasadd_readvariableop_resource:	???*while/lstm_cell_211/BiasAdd/ReadVariableOp?)while/lstm_cell_211/MatMul/ReadVariableOp?+while/lstm_cell_211/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_211/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_211_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_211/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_211/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_211/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_211_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_211/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_211/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_211/addAddV2$while/lstm_cell_211/MatMul:product:0&while/lstm_cell_211/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_211/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_211_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_211/BiasAddBiasAddwhile/lstm_cell_211/add:z:02while/lstm_cell_211/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_211/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_211/splitSplit,while/lstm_cell_211/split/split_dim:output:0$while/lstm_cell_211/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_211/SigmoidSigmoid"while/lstm_cell_211/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_211/Sigmoid_1Sigmoid"while/lstm_cell_211/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_211/mulMul!while/lstm_cell_211/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_211/ReluRelu"while/lstm_cell_211/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_211/mul_1Mulwhile/lstm_cell_211/Sigmoid:y:0&while/lstm_cell_211/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_211/add_1AddV2while/lstm_cell_211/mul:z:0while/lstm_cell_211/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_211/Sigmoid_2Sigmoid"while/lstm_cell_211/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_211/Relu_1Reluwhile/lstm_cell_211/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_211/mul_2Mul!while/lstm_cell_211/Sigmoid_2:y:0(while/lstm_cell_211/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_211/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_211/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_211/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_211/BiasAdd/ReadVariableOp*^while/lstm_cell_211/MatMul/ReadVariableOp,^while/lstm_cell_211/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_211_biasadd_readvariableop_resource5while_lstm_cell_211_biasadd_readvariableop_resource_0"n
4while_lstm_cell_211_matmul_1_readvariableop_resource6while_lstm_cell_211_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_211_matmul_readvariableop_resource4while_lstm_cell_211_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_211/BiasAdd/ReadVariableOp*while/lstm_cell_211/BiasAdd/ReadVariableOp2V
)while/lstm_cell_211/MatMul/ReadVariableOp)while/lstm_cell_211/MatMul/ReadVariableOp2Z
+while/lstm_cell_211/MatMul_1/ReadVariableOp+while/lstm_cell_211/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1283466
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1283466___redundant_placeholder05
1while_while_cond_1283466___redundant_placeholder15
1while_while_cond_1283466___redundant_placeholder25
1while_while_cond_1283466___redundant_placeholder3
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
?S
?
)sequential_53_lstm_161_while_body_1282946J
Fsequential_53_lstm_161_while_sequential_53_lstm_161_while_loop_counterP
Lsequential_53_lstm_161_while_sequential_53_lstm_161_while_maximum_iterations,
(sequential_53_lstm_161_while_placeholder.
*sequential_53_lstm_161_while_placeholder_1.
*sequential_53_lstm_161_while_placeholder_2.
*sequential_53_lstm_161_while_placeholder_3I
Esequential_53_lstm_161_while_sequential_53_lstm_161_strided_slice_1_0?
?sequential_53_lstm_161_while_tensorarrayv2read_tensorlistgetitem_sequential_53_lstm_161_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_53_lstm_161_while_lstm_cell_212_matmul_readvariableop_resource_0:2(_
Msequential_53_lstm_161_while_lstm_cell_212_matmul_1_readvariableop_resource_0:
(Z
Lsequential_53_lstm_161_while_lstm_cell_212_biasadd_readvariableop_resource_0:()
%sequential_53_lstm_161_while_identity+
'sequential_53_lstm_161_while_identity_1+
'sequential_53_lstm_161_while_identity_2+
'sequential_53_lstm_161_while_identity_3+
'sequential_53_lstm_161_while_identity_4+
'sequential_53_lstm_161_while_identity_5G
Csequential_53_lstm_161_while_sequential_53_lstm_161_strided_slice_1?
sequential_53_lstm_161_while_tensorarrayv2read_tensorlistgetitem_sequential_53_lstm_161_tensorarrayunstack_tensorlistfromtensor[
Isequential_53_lstm_161_while_lstm_cell_212_matmul_readvariableop_resource:2(]
Ksequential_53_lstm_161_while_lstm_cell_212_matmul_1_readvariableop_resource:
(X
Jsequential_53_lstm_161_while_lstm_cell_212_biasadd_readvariableop_resource:(??Asequential_53/lstm_161/while/lstm_cell_212/BiasAdd/ReadVariableOp?@sequential_53/lstm_161/while/lstm_cell_212/MatMul/ReadVariableOp?Bsequential_53/lstm_161/while/lstm_cell_212/MatMul_1/ReadVariableOp?
Nsequential_53/lstm_161/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_53/lstm_161/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_53_lstm_161_while_tensorarrayv2read_tensorlistgetitem_sequential_53_lstm_161_tensorarrayunstack_tensorlistfromtensor_0(sequential_53_lstm_161_while_placeholderWsequential_53/lstm_161/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_53/lstm_161/while/lstm_cell_212/MatMul/ReadVariableOpReadVariableOpKsequential_53_lstm_161_while_lstm_cell_212_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_53/lstm_161/while/lstm_cell_212/MatMulMatMulGsequential_53/lstm_161/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_53/lstm_161/while/lstm_cell_212/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_53/lstm_161/while/lstm_cell_212/MatMul_1/ReadVariableOpReadVariableOpMsequential_53_lstm_161_while_lstm_cell_212_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_53/lstm_161/while/lstm_cell_212/MatMul_1MatMul*sequential_53_lstm_161_while_placeholder_2Jsequential_53/lstm_161/while/lstm_cell_212/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_53/lstm_161/while/lstm_cell_212/addAddV2;sequential_53/lstm_161/while/lstm_cell_212/MatMul:product:0=sequential_53/lstm_161/while/lstm_cell_212/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_53/lstm_161/while/lstm_cell_212/BiasAdd/ReadVariableOpReadVariableOpLsequential_53_lstm_161_while_lstm_cell_212_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_53/lstm_161/while/lstm_cell_212/BiasAddBiasAdd2sequential_53/lstm_161/while/lstm_cell_212/add:z:0Isequential_53/lstm_161/while/lstm_cell_212/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_53/lstm_161/while/lstm_cell_212/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_53/lstm_161/while/lstm_cell_212/splitSplitCsequential_53/lstm_161/while/lstm_cell_212/split/split_dim:output:0;sequential_53/lstm_161/while/lstm_cell_212/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_53/lstm_161/while/lstm_cell_212/SigmoidSigmoid9sequential_53/lstm_161/while/lstm_cell_212/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_53/lstm_161/while/lstm_cell_212/Sigmoid_1Sigmoid9sequential_53/lstm_161/while/lstm_cell_212/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_53/lstm_161/while/lstm_cell_212/mulMul8sequential_53/lstm_161/while/lstm_cell_212/Sigmoid_1:y:0*sequential_53_lstm_161_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_53/lstm_161/while/lstm_cell_212/ReluRelu9sequential_53/lstm_161/while/lstm_cell_212/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_53/lstm_161/while/lstm_cell_212/mul_1Mul6sequential_53/lstm_161/while/lstm_cell_212/Sigmoid:y:0=sequential_53/lstm_161/while/lstm_cell_212/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_53/lstm_161/while/lstm_cell_212/add_1AddV22sequential_53/lstm_161/while/lstm_cell_212/mul:z:04sequential_53/lstm_161/while/lstm_cell_212/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_53/lstm_161/while/lstm_cell_212/Sigmoid_2Sigmoid9sequential_53/lstm_161/while/lstm_cell_212/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_53/lstm_161/while/lstm_cell_212/Relu_1Relu4sequential_53/lstm_161/while/lstm_cell_212/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_53/lstm_161/while/lstm_cell_212/mul_2Mul8sequential_53/lstm_161/while/lstm_cell_212/Sigmoid_2:y:0?sequential_53/lstm_161/while/lstm_cell_212/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_53/lstm_161/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_53_lstm_161_while_placeholder_1(sequential_53_lstm_161_while_placeholder4sequential_53/lstm_161/while/lstm_cell_212/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_53/lstm_161/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_53/lstm_161/while/addAddV2(sequential_53_lstm_161_while_placeholder+sequential_53/lstm_161/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_53/lstm_161/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_53/lstm_161/while/add_1AddV2Fsequential_53_lstm_161_while_sequential_53_lstm_161_while_loop_counter-sequential_53/lstm_161/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_53/lstm_161/while/IdentityIdentity&sequential_53/lstm_161/while/add_1:z:0"^sequential_53/lstm_161/while/NoOp*
T0*
_output_shapes
: ?
'sequential_53/lstm_161/while/Identity_1IdentityLsequential_53_lstm_161_while_sequential_53_lstm_161_while_maximum_iterations"^sequential_53/lstm_161/while/NoOp*
T0*
_output_shapes
: ?
'sequential_53/lstm_161/while/Identity_2Identity$sequential_53/lstm_161/while/add:z:0"^sequential_53/lstm_161/while/NoOp*
T0*
_output_shapes
: ?
'sequential_53/lstm_161/while/Identity_3IdentityQsequential_53/lstm_161/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_53/lstm_161/while/NoOp*
T0*
_output_shapes
: ?
'sequential_53/lstm_161/while/Identity_4Identity4sequential_53/lstm_161/while/lstm_cell_212/mul_2:z:0"^sequential_53/lstm_161/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_53/lstm_161/while/Identity_5Identity4sequential_53/lstm_161/while/lstm_cell_212/add_1:z:0"^sequential_53/lstm_161/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_53/lstm_161/while/NoOpNoOpB^sequential_53/lstm_161/while/lstm_cell_212/BiasAdd/ReadVariableOpA^sequential_53/lstm_161/while/lstm_cell_212/MatMul/ReadVariableOpC^sequential_53/lstm_161/while/lstm_cell_212/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_53_lstm_161_while_identity.sequential_53/lstm_161/while/Identity:output:0"[
'sequential_53_lstm_161_while_identity_10sequential_53/lstm_161/while/Identity_1:output:0"[
'sequential_53_lstm_161_while_identity_20sequential_53/lstm_161/while/Identity_2:output:0"[
'sequential_53_lstm_161_while_identity_30sequential_53/lstm_161/while/Identity_3:output:0"[
'sequential_53_lstm_161_while_identity_40sequential_53/lstm_161/while/Identity_4:output:0"[
'sequential_53_lstm_161_while_identity_50sequential_53/lstm_161/while/Identity_5:output:0"?
Jsequential_53_lstm_161_while_lstm_cell_212_biasadd_readvariableop_resourceLsequential_53_lstm_161_while_lstm_cell_212_biasadd_readvariableop_resource_0"?
Ksequential_53_lstm_161_while_lstm_cell_212_matmul_1_readvariableop_resourceMsequential_53_lstm_161_while_lstm_cell_212_matmul_1_readvariableop_resource_0"?
Isequential_53_lstm_161_while_lstm_cell_212_matmul_readvariableop_resourceKsequential_53_lstm_161_while_lstm_cell_212_matmul_readvariableop_resource_0"?
Csequential_53_lstm_161_while_sequential_53_lstm_161_strided_slice_1Esequential_53_lstm_161_while_sequential_53_lstm_161_strided_slice_1_0"?
sequential_53_lstm_161_while_tensorarrayv2read_tensorlistgetitem_sequential_53_lstm_161_tensorarrayunstack_tensorlistfromtensor?sequential_53_lstm_161_while_tensorarrayv2read_tensorlistgetitem_sequential_53_lstm_161_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_53/lstm_161/while/lstm_cell_212/BiasAdd/ReadVariableOpAsequential_53/lstm_161/while/lstm_cell_212/BiasAdd/ReadVariableOp2?
@sequential_53/lstm_161/while/lstm_cell_212/MatMul/ReadVariableOp@sequential_53/lstm_161/while/lstm_cell_212/MatMul/ReadVariableOp2?
Bsequential_53/lstm_161/while/lstm_cell_212/MatMul_1/ReadVariableOpBsequential_53/lstm_161/while/lstm_cell_212/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1286449
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1286449___redundant_placeholder05
1while_while_cond_1286449___redundant_placeholder15
1while_while_cond_1286449___redundant_placeholder25
1while_while_cond_1286449___redundant_placeholder3
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
??
?
#__inference__traced_restore_1288638
file_prefix2
 assignvariableop_dense_53_kernel:
.
 assignvariableop_1_dense_53_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_159_lstm_cell_159_kernel:	?M
:assignvariableop_8_lstm_159_lstm_cell_159_recurrent_kernel:	d?=
.assignvariableop_9_lstm_159_lstm_cell_159_bias:	?D
1assignvariableop_10_lstm_160_lstm_cell_160_kernel:	d?N
;assignvariableop_11_lstm_160_lstm_cell_160_recurrent_kernel:	2?>
/assignvariableop_12_lstm_160_lstm_cell_160_bias:	?C
1assignvariableop_13_lstm_161_lstm_cell_161_kernel:2(M
;assignvariableop_14_lstm_161_lstm_cell_161_recurrent_kernel:
(=
/assignvariableop_15_lstm_161_lstm_cell_161_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_53_kernel_m:
6
(assignvariableop_19_adam_dense_53_bias_m:K
8assignvariableop_20_adam_lstm_159_lstm_cell_159_kernel_m:	?U
Bassignvariableop_21_adam_lstm_159_lstm_cell_159_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_159_lstm_cell_159_bias_m:	?K
8assignvariableop_23_adam_lstm_160_lstm_cell_160_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_160_lstm_cell_160_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_160_lstm_cell_160_bias_m:	?J
8assignvariableop_26_adam_lstm_161_lstm_cell_161_kernel_m:2(T
Bassignvariableop_27_adam_lstm_161_lstm_cell_161_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_161_lstm_cell_161_bias_m:(<
*assignvariableop_29_adam_dense_53_kernel_v:
6
(assignvariableop_30_adam_dense_53_bias_v:K
8assignvariableop_31_adam_lstm_159_lstm_cell_159_kernel_v:	?U
Bassignvariableop_32_adam_lstm_159_lstm_cell_159_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_159_lstm_cell_159_bias_v:	?K
8assignvariableop_34_adam_lstm_160_lstm_cell_160_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_160_lstm_cell_160_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_160_lstm_cell_160_bias_v:	?J
8assignvariableop_37_adam_lstm_161_lstm_cell_161_kernel_v:2(T
Bassignvariableop_38_adam_lstm_161_lstm_cell_161_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_161_lstm_cell_161_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_53_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_53_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_159_lstm_cell_159_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_159_lstm_cell_159_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_159_lstm_cell_159_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_160_lstm_cell_160_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_160_lstm_cell_160_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_160_lstm_cell_160_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_161_lstm_cell_161_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_161_lstm_cell_161_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_161_lstm_cell_161_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_53_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_53_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_159_lstm_cell_159_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_159_lstm_cell_159_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_159_lstm_cell_159_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_160_lstm_cell_160_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_160_lstm_cell_160_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_160_lstm_cell_160_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_161_lstm_cell_161_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_161_lstm_cell_161_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_161_lstm_cell_161_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_53_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_53_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_159_lstm_cell_159_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_159_lstm_cell_159_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_159_lstm_cell_159_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_160_lstm_cell_160_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_160_lstm_cell_160_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_160_lstm_cell_160_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_161_lstm_cell_161_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_161_lstm_cell_161_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_161_lstm_cell_161_bias_vIdentity_39:output:0"/device:CPU:0*
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
?S
?
)sequential_53_lstm_159_while_body_1282668J
Fsequential_53_lstm_159_while_sequential_53_lstm_159_while_loop_counterP
Lsequential_53_lstm_159_while_sequential_53_lstm_159_while_maximum_iterations,
(sequential_53_lstm_159_while_placeholder.
*sequential_53_lstm_159_while_placeholder_1.
*sequential_53_lstm_159_while_placeholder_2.
*sequential_53_lstm_159_while_placeholder_3I
Esequential_53_lstm_159_while_sequential_53_lstm_159_strided_slice_1_0?
?sequential_53_lstm_159_while_tensorarrayv2read_tensorlistgetitem_sequential_53_lstm_159_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_53_lstm_159_while_lstm_cell_210_matmul_readvariableop_resource_0:	?`
Msequential_53_lstm_159_while_lstm_cell_210_matmul_1_readvariableop_resource_0:	d?[
Lsequential_53_lstm_159_while_lstm_cell_210_biasadd_readvariableop_resource_0:	?)
%sequential_53_lstm_159_while_identity+
'sequential_53_lstm_159_while_identity_1+
'sequential_53_lstm_159_while_identity_2+
'sequential_53_lstm_159_while_identity_3+
'sequential_53_lstm_159_while_identity_4+
'sequential_53_lstm_159_while_identity_5G
Csequential_53_lstm_159_while_sequential_53_lstm_159_strided_slice_1?
sequential_53_lstm_159_while_tensorarrayv2read_tensorlistgetitem_sequential_53_lstm_159_tensorarrayunstack_tensorlistfromtensor\
Isequential_53_lstm_159_while_lstm_cell_210_matmul_readvariableop_resource:	?^
Ksequential_53_lstm_159_while_lstm_cell_210_matmul_1_readvariableop_resource:	d?Y
Jsequential_53_lstm_159_while_lstm_cell_210_biasadd_readvariableop_resource:	???Asequential_53/lstm_159/while/lstm_cell_210/BiasAdd/ReadVariableOp?@sequential_53/lstm_159/while/lstm_cell_210/MatMul/ReadVariableOp?Bsequential_53/lstm_159/while/lstm_cell_210/MatMul_1/ReadVariableOp?
Nsequential_53/lstm_159/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_53/lstm_159/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_53_lstm_159_while_tensorarrayv2read_tensorlistgetitem_sequential_53_lstm_159_tensorarrayunstack_tensorlistfromtensor_0(sequential_53_lstm_159_while_placeholderWsequential_53/lstm_159/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_53/lstm_159/while/lstm_cell_210/MatMul/ReadVariableOpReadVariableOpKsequential_53_lstm_159_while_lstm_cell_210_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_53/lstm_159/while/lstm_cell_210/MatMulMatMulGsequential_53/lstm_159/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_53/lstm_159/while/lstm_cell_210/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_53/lstm_159/while/lstm_cell_210/MatMul_1/ReadVariableOpReadVariableOpMsequential_53_lstm_159_while_lstm_cell_210_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_53/lstm_159/while/lstm_cell_210/MatMul_1MatMul*sequential_53_lstm_159_while_placeholder_2Jsequential_53/lstm_159/while/lstm_cell_210/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_53/lstm_159/while/lstm_cell_210/addAddV2;sequential_53/lstm_159/while/lstm_cell_210/MatMul:product:0=sequential_53/lstm_159/while/lstm_cell_210/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_53/lstm_159/while/lstm_cell_210/BiasAdd/ReadVariableOpReadVariableOpLsequential_53_lstm_159_while_lstm_cell_210_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_53/lstm_159/while/lstm_cell_210/BiasAddBiasAdd2sequential_53/lstm_159/while/lstm_cell_210/add:z:0Isequential_53/lstm_159/while/lstm_cell_210/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_53/lstm_159/while/lstm_cell_210/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_53/lstm_159/while/lstm_cell_210/splitSplitCsequential_53/lstm_159/while/lstm_cell_210/split/split_dim:output:0;sequential_53/lstm_159/while/lstm_cell_210/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_53/lstm_159/while/lstm_cell_210/SigmoidSigmoid9sequential_53/lstm_159/while/lstm_cell_210/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_53/lstm_159/while/lstm_cell_210/Sigmoid_1Sigmoid9sequential_53/lstm_159/while/lstm_cell_210/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_53/lstm_159/while/lstm_cell_210/mulMul8sequential_53/lstm_159/while/lstm_cell_210/Sigmoid_1:y:0*sequential_53_lstm_159_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_53/lstm_159/while/lstm_cell_210/ReluRelu9sequential_53/lstm_159/while/lstm_cell_210/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_53/lstm_159/while/lstm_cell_210/mul_1Mul6sequential_53/lstm_159/while/lstm_cell_210/Sigmoid:y:0=sequential_53/lstm_159/while/lstm_cell_210/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_53/lstm_159/while/lstm_cell_210/add_1AddV22sequential_53/lstm_159/while/lstm_cell_210/mul:z:04sequential_53/lstm_159/while/lstm_cell_210/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_53/lstm_159/while/lstm_cell_210/Sigmoid_2Sigmoid9sequential_53/lstm_159/while/lstm_cell_210/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_53/lstm_159/while/lstm_cell_210/Relu_1Relu4sequential_53/lstm_159/while/lstm_cell_210/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_53/lstm_159/while/lstm_cell_210/mul_2Mul8sequential_53/lstm_159/while/lstm_cell_210/Sigmoid_2:y:0?sequential_53/lstm_159/while/lstm_cell_210/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_53/lstm_159/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_53_lstm_159_while_placeholder_1(sequential_53_lstm_159_while_placeholder4sequential_53/lstm_159/while/lstm_cell_210/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_53/lstm_159/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_53/lstm_159/while/addAddV2(sequential_53_lstm_159_while_placeholder+sequential_53/lstm_159/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_53/lstm_159/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_53/lstm_159/while/add_1AddV2Fsequential_53_lstm_159_while_sequential_53_lstm_159_while_loop_counter-sequential_53/lstm_159/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_53/lstm_159/while/IdentityIdentity&sequential_53/lstm_159/while/add_1:z:0"^sequential_53/lstm_159/while/NoOp*
T0*
_output_shapes
: ?
'sequential_53/lstm_159/while/Identity_1IdentityLsequential_53_lstm_159_while_sequential_53_lstm_159_while_maximum_iterations"^sequential_53/lstm_159/while/NoOp*
T0*
_output_shapes
: ?
'sequential_53/lstm_159/while/Identity_2Identity$sequential_53/lstm_159/while/add:z:0"^sequential_53/lstm_159/while/NoOp*
T0*
_output_shapes
: ?
'sequential_53/lstm_159/while/Identity_3IdentityQsequential_53/lstm_159/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_53/lstm_159/while/NoOp*
T0*
_output_shapes
: ?
'sequential_53/lstm_159/while/Identity_4Identity4sequential_53/lstm_159/while/lstm_cell_210/mul_2:z:0"^sequential_53/lstm_159/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_53/lstm_159/while/Identity_5Identity4sequential_53/lstm_159/while/lstm_cell_210/add_1:z:0"^sequential_53/lstm_159/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_53/lstm_159/while/NoOpNoOpB^sequential_53/lstm_159/while/lstm_cell_210/BiasAdd/ReadVariableOpA^sequential_53/lstm_159/while/lstm_cell_210/MatMul/ReadVariableOpC^sequential_53/lstm_159/while/lstm_cell_210/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_53_lstm_159_while_identity.sequential_53/lstm_159/while/Identity:output:0"[
'sequential_53_lstm_159_while_identity_10sequential_53/lstm_159/while/Identity_1:output:0"[
'sequential_53_lstm_159_while_identity_20sequential_53/lstm_159/while/Identity_2:output:0"[
'sequential_53_lstm_159_while_identity_30sequential_53/lstm_159/while/Identity_3:output:0"[
'sequential_53_lstm_159_while_identity_40sequential_53/lstm_159/while/Identity_4:output:0"[
'sequential_53_lstm_159_while_identity_50sequential_53/lstm_159/while/Identity_5:output:0"?
Jsequential_53_lstm_159_while_lstm_cell_210_biasadd_readvariableop_resourceLsequential_53_lstm_159_while_lstm_cell_210_biasadd_readvariableop_resource_0"?
Ksequential_53_lstm_159_while_lstm_cell_210_matmul_1_readvariableop_resourceMsequential_53_lstm_159_while_lstm_cell_210_matmul_1_readvariableop_resource_0"?
Isequential_53_lstm_159_while_lstm_cell_210_matmul_readvariableop_resourceKsequential_53_lstm_159_while_lstm_cell_210_matmul_readvariableop_resource_0"?
Csequential_53_lstm_159_while_sequential_53_lstm_159_strided_slice_1Esequential_53_lstm_159_while_sequential_53_lstm_159_strided_slice_1_0"?
sequential_53_lstm_159_while_tensorarrayv2read_tensorlistgetitem_sequential_53_lstm_159_tensorarrayunstack_tensorlistfromtensor?sequential_53_lstm_159_while_tensorarrayv2read_tensorlistgetitem_sequential_53_lstm_159_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_53/lstm_159/while/lstm_cell_210/BiasAdd/ReadVariableOpAsequential_53/lstm_159/while/lstm_cell_210/BiasAdd/ReadVariableOp2?
@sequential_53/lstm_159/while/lstm_cell_210/MatMul/ReadVariableOp@sequential_53/lstm_159/while/lstm_cell_210/MatMul/ReadVariableOp2?
Bsequential_53/lstm_159/while/lstm_cell_210/MatMul_1/ReadVariableOpBsequential_53/lstm_159/while/lstm_cell_210/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_160_while_body_1285548.
*lstm_160_while_lstm_160_while_loop_counter4
0lstm_160_while_lstm_160_while_maximum_iterations
lstm_160_while_placeholder 
lstm_160_while_placeholder_1 
lstm_160_while_placeholder_2 
lstm_160_while_placeholder_3-
)lstm_160_while_lstm_160_strided_slice_1_0i
elstm_160_while_tensorarrayv2read_tensorlistgetitem_lstm_160_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_160_while_lstm_cell_211_matmul_readvariableop_resource_0:	d?R
?lstm_160_while_lstm_cell_211_matmul_1_readvariableop_resource_0:	2?M
>lstm_160_while_lstm_cell_211_biasadd_readvariableop_resource_0:	?
lstm_160_while_identity
lstm_160_while_identity_1
lstm_160_while_identity_2
lstm_160_while_identity_3
lstm_160_while_identity_4
lstm_160_while_identity_5+
'lstm_160_while_lstm_160_strided_slice_1g
clstm_160_while_tensorarrayv2read_tensorlistgetitem_lstm_160_tensorarrayunstack_tensorlistfromtensorN
;lstm_160_while_lstm_cell_211_matmul_readvariableop_resource:	d?P
=lstm_160_while_lstm_cell_211_matmul_1_readvariableop_resource:	2?K
<lstm_160_while_lstm_cell_211_biasadd_readvariableop_resource:	???3lstm_160/while/lstm_cell_211/BiasAdd/ReadVariableOp?2lstm_160/while/lstm_cell_211/MatMul/ReadVariableOp?4lstm_160/while/lstm_cell_211/MatMul_1/ReadVariableOp?
@lstm_160/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_160/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_160_while_tensorarrayv2read_tensorlistgetitem_lstm_160_tensorarrayunstack_tensorlistfromtensor_0lstm_160_while_placeholderIlstm_160/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_160/while/lstm_cell_211/MatMul/ReadVariableOpReadVariableOp=lstm_160_while_lstm_cell_211_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_160/while/lstm_cell_211/MatMulMatMul9lstm_160/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_160/while/lstm_cell_211/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_160/while/lstm_cell_211/MatMul_1/ReadVariableOpReadVariableOp?lstm_160_while_lstm_cell_211_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_160/while/lstm_cell_211/MatMul_1MatMullstm_160_while_placeholder_2<lstm_160/while/lstm_cell_211/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_160/while/lstm_cell_211/addAddV2-lstm_160/while/lstm_cell_211/MatMul:product:0/lstm_160/while/lstm_cell_211/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_160/while/lstm_cell_211/BiasAdd/ReadVariableOpReadVariableOp>lstm_160_while_lstm_cell_211_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_160/while/lstm_cell_211/BiasAddBiasAdd$lstm_160/while/lstm_cell_211/add:z:0;lstm_160/while/lstm_cell_211/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_160/while/lstm_cell_211/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_160/while/lstm_cell_211/splitSplit5lstm_160/while/lstm_cell_211/split/split_dim:output:0-lstm_160/while/lstm_cell_211/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_160/while/lstm_cell_211/SigmoidSigmoid+lstm_160/while/lstm_cell_211/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_160/while/lstm_cell_211/Sigmoid_1Sigmoid+lstm_160/while/lstm_cell_211/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_160/while/lstm_cell_211/mulMul*lstm_160/while/lstm_cell_211/Sigmoid_1:y:0lstm_160_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_160/while/lstm_cell_211/ReluRelu+lstm_160/while/lstm_cell_211/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_160/while/lstm_cell_211/mul_1Mul(lstm_160/while/lstm_cell_211/Sigmoid:y:0/lstm_160/while/lstm_cell_211/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_160/while/lstm_cell_211/add_1AddV2$lstm_160/while/lstm_cell_211/mul:z:0&lstm_160/while/lstm_cell_211/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_160/while/lstm_cell_211/Sigmoid_2Sigmoid+lstm_160/while/lstm_cell_211/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_160/while/lstm_cell_211/Relu_1Relu&lstm_160/while/lstm_cell_211/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_160/while/lstm_cell_211/mul_2Mul*lstm_160/while/lstm_cell_211/Sigmoid_2:y:01lstm_160/while/lstm_cell_211/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_160/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_160_while_placeholder_1lstm_160_while_placeholder&lstm_160/while/lstm_cell_211/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_160/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_160/while/addAddV2lstm_160_while_placeholderlstm_160/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_160/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_160/while/add_1AddV2*lstm_160_while_lstm_160_while_loop_counterlstm_160/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_160/while/IdentityIdentitylstm_160/while/add_1:z:0^lstm_160/while/NoOp*
T0*
_output_shapes
: ?
lstm_160/while/Identity_1Identity0lstm_160_while_lstm_160_while_maximum_iterations^lstm_160/while/NoOp*
T0*
_output_shapes
: t
lstm_160/while/Identity_2Identitylstm_160/while/add:z:0^lstm_160/while/NoOp*
T0*
_output_shapes
: ?
lstm_160/while/Identity_3IdentityClstm_160/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_160/while/NoOp*
T0*
_output_shapes
: ?
lstm_160/while/Identity_4Identity&lstm_160/while/lstm_cell_211/mul_2:z:0^lstm_160/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_160/while/Identity_5Identity&lstm_160/while/lstm_cell_211/add_1:z:0^lstm_160/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_160/while/NoOpNoOp4^lstm_160/while/lstm_cell_211/BiasAdd/ReadVariableOp3^lstm_160/while/lstm_cell_211/MatMul/ReadVariableOp5^lstm_160/while/lstm_cell_211/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_160_while_identity lstm_160/while/Identity:output:0"?
lstm_160_while_identity_1"lstm_160/while/Identity_1:output:0"?
lstm_160_while_identity_2"lstm_160/while/Identity_2:output:0"?
lstm_160_while_identity_3"lstm_160/while/Identity_3:output:0"?
lstm_160_while_identity_4"lstm_160/while/Identity_4:output:0"?
lstm_160_while_identity_5"lstm_160/while/Identity_5:output:0"T
'lstm_160_while_lstm_160_strided_slice_1)lstm_160_while_lstm_160_strided_slice_1_0"~
<lstm_160_while_lstm_cell_211_biasadd_readvariableop_resource>lstm_160_while_lstm_cell_211_biasadd_readvariableop_resource_0"?
=lstm_160_while_lstm_cell_211_matmul_1_readvariableop_resource?lstm_160_while_lstm_cell_211_matmul_1_readvariableop_resource_0"|
;lstm_160_while_lstm_cell_211_matmul_readvariableop_resource=lstm_160_while_lstm_cell_211_matmul_readvariableop_resource_0"?
clstm_160_while_tensorarrayv2read_tensorlistgetitem_lstm_160_tensorarrayunstack_tensorlistfromtensorelstm_160_while_tensorarrayv2read_tensorlistgetitem_lstm_160_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_160/while/lstm_cell_211/BiasAdd/ReadVariableOp3lstm_160/while/lstm_cell_211/BiasAdd/ReadVariableOp2h
2lstm_160/while/lstm_cell_211/MatMul/ReadVariableOp2lstm_160/while/lstm_cell_211/MatMul/ReadVariableOp2l
4lstm_160/while/lstm_cell_211/MatMul_1/ReadVariableOp4lstm_160/while/lstm_cell_211/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_53_layer_call_and_return_conditional_losses_1285261
lstm_159_input#
lstm_159_1285234:	?#
lstm_159_1285236:	d?
lstm_159_1285238:	?#
lstm_160_1285241:	d?#
lstm_160_1285243:	2?
lstm_160_1285245:	?"
lstm_161_1285248:2("
lstm_161_1285250:
(
lstm_161_1285252:("
dense_53_1285255:

dense_53_1285257:
identity?? dense_53/StatefulPartitionedCall? lstm_159/StatefulPartitionedCall? lstm_160/StatefulPartitionedCall? lstm_161/StatefulPartitionedCall?
 lstm_159/StatefulPartitionedCallStatefulPartitionedCalllstm_159_inputlstm_159_1285234lstm_159_1285236lstm_159_1285238*
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
E__inference_lstm_159_layer_call_and_return_conditional_losses_1285081?
 lstm_160/StatefulPartitionedCallStatefulPartitionedCall)lstm_159/StatefulPartitionedCall:output:0lstm_160_1285241lstm_160_1285243lstm_160_1285245*
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
E__inference_lstm_160_layer_call_and_return_conditional_losses_1284916?
 lstm_161/StatefulPartitionedCallStatefulPartitionedCall)lstm_160/StatefulPartitionedCall:output:0lstm_161_1285248lstm_161_1285250lstm_161_1285252*
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
E__inference_lstm_161_layer_call_and_return_conditional_losses_1284751?
 dense_53/StatefulPartitionedCallStatefulPartitionedCall)lstm_161/StatefulPartitionedCall:output:0dense_53_1285255dense_53_1285257*
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
E__inference_dense_53_layer_call_and_return_conditional_losses_1284553x
IdentityIdentity)dense_53/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_53/StatefulPartitionedCall!^lstm_159/StatefulPartitionedCall!^lstm_160/StatefulPartitionedCall!^lstm_161/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall2D
 lstm_159/StatefulPartitionedCall lstm_159/StatefulPartitionedCall2D
 lstm_160/StatefulPartitionedCall lstm_160/StatefulPartitionedCall2D
 lstm_161/StatefulPartitionedCall lstm_161/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_159_input
?J
?
E__inference_lstm_160_layer_call_and_return_conditional_losses_1284385

inputs?
,lstm_cell_211_matmul_readvariableop_resource:	d?A
.lstm_cell_211_matmul_1_readvariableop_resource:	2?<
-lstm_cell_211_biasadd_readvariableop_resource:	?
identity??$lstm_cell_211/BiasAdd/ReadVariableOp?#lstm_cell_211/MatMul/ReadVariableOp?%lstm_cell_211/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_211/MatMul/ReadVariableOpReadVariableOp,lstm_cell_211_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_211/MatMulMatMulstrided_slice_2:output:0+lstm_cell_211/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_211/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_211_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_211/MatMul_1MatMulzeros:output:0-lstm_cell_211/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_211/addAddV2lstm_cell_211/MatMul:product:0 lstm_cell_211/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_211/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_211_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_211/BiasAddBiasAddlstm_cell_211/add:z:0,lstm_cell_211/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_211/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_211/splitSplit&lstm_cell_211/split/split_dim:output:0lstm_cell_211/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_211/SigmoidSigmoidlstm_cell_211/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_211/Sigmoid_1Sigmoidlstm_cell_211/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_211/mulMullstm_cell_211/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_211/ReluRelulstm_cell_211/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_211/mul_1Mullstm_cell_211/Sigmoid:y:0 lstm_cell_211/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_211/add_1AddV2lstm_cell_211/mul:z:0lstm_cell_211/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_211/Sigmoid_2Sigmoidlstm_cell_211/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_211/Relu_1Relulstm_cell_211/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_211/mul_2Mullstm_cell_211/Sigmoid_2:y:0"lstm_cell_211/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_211_matmul_readvariableop_resource.lstm_cell_211_matmul_1_readvariableop_resource-lstm_cell_211_biasadd_readvariableop_resource*
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
while_body_1284301*
condR
while_cond_1284300*K
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
NoOpNoOp%^lstm_cell_211/BiasAdd/ReadVariableOp$^lstm_cell_211/MatMul/ReadVariableOp&^lstm_cell_211/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_211/BiasAdd/ReadVariableOp$lstm_cell_211/BiasAdd/ReadVariableOp2J
#lstm_cell_211/MatMul/ReadVariableOp#lstm_cell_211/MatMul/ReadVariableOp2N
%lstm_cell_211/MatMul_1/ReadVariableOp%lstm_cell_211/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_1284300
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1284300___redundant_placeholder05
1while_while_cond_1284300___redundant_placeholder15
1while_while_cond_1284300___redundant_placeholder25
1while_while_cond_1284300___redundant_placeholder3
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
E__inference_lstm_160_layer_call_and_return_conditional_losses_1287436

inputs?
,lstm_cell_211_matmul_readvariableop_resource:	d?A
.lstm_cell_211_matmul_1_readvariableop_resource:	2?<
-lstm_cell_211_biasadd_readvariableop_resource:	?
identity??$lstm_cell_211/BiasAdd/ReadVariableOp?#lstm_cell_211/MatMul/ReadVariableOp?%lstm_cell_211/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_211/MatMul/ReadVariableOpReadVariableOp,lstm_cell_211_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_211/MatMulMatMulstrided_slice_2:output:0+lstm_cell_211/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_211/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_211_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_211/MatMul_1MatMulzeros:output:0-lstm_cell_211/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_211/addAddV2lstm_cell_211/MatMul:product:0 lstm_cell_211/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_211/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_211_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_211/BiasAddBiasAddlstm_cell_211/add:z:0,lstm_cell_211/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_211/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_211/splitSplit&lstm_cell_211/split/split_dim:output:0lstm_cell_211/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_211/SigmoidSigmoidlstm_cell_211/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_211/Sigmoid_1Sigmoidlstm_cell_211/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_211/mulMullstm_cell_211/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_211/ReluRelulstm_cell_211/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_211/mul_1Mullstm_cell_211/Sigmoid:y:0 lstm_cell_211/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_211/add_1AddV2lstm_cell_211/mul:z:0lstm_cell_211/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_211/Sigmoid_2Sigmoidlstm_cell_211/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_211/Relu_1Relulstm_cell_211/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_211/mul_2Mullstm_cell_211/Sigmoid_2:y:0"lstm_cell_211/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_211_matmul_readvariableop_resource.lstm_cell_211_matmul_1_readvariableop_resource-lstm_cell_211_biasadd_readvariableop_resource*
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
while_body_1287352*
condR
while_cond_1287351*K
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
NoOpNoOp%^lstm_cell_211/BiasAdd/ReadVariableOp$^lstm_cell_211/MatMul/ReadVariableOp&^lstm_cell_211/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_211/BiasAdd/ReadVariableOp$lstm_cell_211/BiasAdd/ReadVariableOp2J
#lstm_cell_211/MatMul/ReadVariableOp#lstm_cell_211/MatMul/ReadVariableOp2N
%lstm_cell_211/MatMul_1/ReadVariableOp%lstm_cell_211/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_160_layer_call_and_return_conditional_losses_1283536

inputs(
lstm_cell_211_1283454:	d?(
lstm_cell_211_1283456:	2?$
lstm_cell_211_1283458:	?
identity??%lstm_cell_211/StatefulPartitionedCall?while;
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
%lstm_cell_211/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_211_1283454lstm_cell_211_1283456lstm_cell_211_1283458*
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
J__inference_lstm_cell_211_layer_call_and_return_conditional_losses_1283453n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_211_1283454lstm_cell_211_1283456lstm_cell_211_1283458*
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
while_body_1283467*
condR
while_cond_1283466*K
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
NoOpNoOp&^lstm_cell_211/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_211/StatefulPartitionedCall%lstm_cell_211/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_1287824
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1287824___redundant_placeholder05
1while_while_cond_1287824___redundant_placeholder15
1while_while_cond_1287824___redundant_placeholder25
1while_while_cond_1287824___redundant_placeholder3
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
while_cond_1287967
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1287967___redundant_placeholder05
1while_while_cond_1287967___redundant_placeholder15
1while_while_cond_1287967___redundant_placeholder25
1while_while_cond_1287967___redundant_placeholder3
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
?
)sequential_53_lstm_160_while_cond_1282806J
Fsequential_53_lstm_160_while_sequential_53_lstm_160_while_loop_counterP
Lsequential_53_lstm_160_while_sequential_53_lstm_160_while_maximum_iterations,
(sequential_53_lstm_160_while_placeholder.
*sequential_53_lstm_160_while_placeholder_1.
*sequential_53_lstm_160_while_placeholder_2.
*sequential_53_lstm_160_while_placeholder_3L
Hsequential_53_lstm_160_while_less_sequential_53_lstm_160_strided_slice_1c
_sequential_53_lstm_160_while_sequential_53_lstm_160_while_cond_1282806___redundant_placeholder0c
_sequential_53_lstm_160_while_sequential_53_lstm_160_while_cond_1282806___redundant_placeholder1c
_sequential_53_lstm_160_while_sequential_53_lstm_160_while_cond_1282806___redundant_placeholder2c
_sequential_53_lstm_160_while_sequential_53_lstm_160_while_cond_1282806___redundant_placeholder3)
%sequential_53_lstm_160_while_identity
?
!sequential_53/lstm_160/while/LessLess(sequential_53_lstm_160_while_placeholderHsequential_53_lstm_160_while_less_sequential_53_lstm_160_strided_slice_1*
T0*
_output_shapes
: y
%sequential_53/lstm_160/while/IdentityIdentity%sequential_53/lstm_160/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_53_lstm_160_while_identity.sequential_53/lstm_160/while/Identity:output:0*(
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
?#
?
while_body_1283467
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_211_1283491_0:	d?0
while_lstm_cell_211_1283493_0:	2?,
while_lstm_cell_211_1283495_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_211_1283491:	d?.
while_lstm_cell_211_1283493:	2?*
while_lstm_cell_211_1283495:	???+while/lstm_cell_211/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_211/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_211_1283491_0while_lstm_cell_211_1283493_0while_lstm_cell_211_1283495_0*
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
J__inference_lstm_cell_211_layer_call_and_return_conditional_losses_1283453?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_211/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_211/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_211/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_211/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_211_1283491while_lstm_cell_211_1283491_0"<
while_lstm_cell_211_1283493while_lstm_cell_211_1283493_0"<
while_lstm_cell_211_1283495while_lstm_cell_211_1283495_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_211/StatefulPartitionedCall+while/lstm_cell_211/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_159_layer_call_and_return_conditional_losses_1283377

inputs(
lstm_cell_210_1283295:	?(
lstm_cell_210_1283297:	d?$
lstm_cell_210_1283299:	?
identity??%lstm_cell_210/StatefulPartitionedCall?while;
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
%lstm_cell_210/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_210_1283295lstm_cell_210_1283297lstm_cell_210_1283299*
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
J__inference_lstm_cell_210_layer_call_and_return_conditional_losses_1283249n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_210_1283295lstm_cell_210_1283297lstm_cell_210_1283299*
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
while_body_1283308*
condR
while_cond_1283307*K
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
NoOpNoOp&^lstm_cell_210/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_210/StatefulPartitionedCall%lstm_cell_210/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_212_layer_call_and_return_conditional_losses_1288333

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
)sequential_53_lstm_161_while_cond_1282945J
Fsequential_53_lstm_161_while_sequential_53_lstm_161_while_loop_counterP
Lsequential_53_lstm_161_while_sequential_53_lstm_161_while_maximum_iterations,
(sequential_53_lstm_161_while_placeholder.
*sequential_53_lstm_161_while_placeholder_1.
*sequential_53_lstm_161_while_placeholder_2.
*sequential_53_lstm_161_while_placeholder_3L
Hsequential_53_lstm_161_while_less_sequential_53_lstm_161_strided_slice_1c
_sequential_53_lstm_161_while_sequential_53_lstm_161_while_cond_1282945___redundant_placeholder0c
_sequential_53_lstm_161_while_sequential_53_lstm_161_while_cond_1282945___redundant_placeholder1c
_sequential_53_lstm_161_while_sequential_53_lstm_161_while_cond_1282945___redundant_placeholder2c
_sequential_53_lstm_161_while_sequential_53_lstm_161_while_cond_1282945___redundant_placeholder3)
%sequential_53_lstm_161_while_identity
?
!sequential_53/lstm_161/while/LessLess(sequential_53_lstm_161_while_placeholderHsequential_53_lstm_161_while_less_sequential_53_lstm_161_strided_slice_1*
T0*
_output_shapes
: y
%sequential_53/lstm_161/while/IdentityIdentity%sequential_53/lstm_161/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_53_lstm_161_while_identity.sequential_53/lstm_161/while/Identity:output:0*(
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
J__inference_lstm_cell_212_layer_call_and_return_conditional_losses_1288365

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
?8
?
while_body_1284451
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_212_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_212_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_212_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_212_matmul_readvariableop_resource:2(F
4while_lstm_cell_212_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_212_biasadd_readvariableop_resource:(??*while/lstm_cell_212/BiasAdd/ReadVariableOp?)while/lstm_cell_212/MatMul/ReadVariableOp?+while/lstm_cell_212/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_212/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_212_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_212/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_212/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_212/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_212_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_212/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_212/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_212/addAddV2$while/lstm_cell_212/MatMul:product:0&while/lstm_cell_212/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_212/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_212_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_212/BiasAddBiasAddwhile/lstm_cell_212/add:z:02while/lstm_cell_212/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_212/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_212/splitSplit,while/lstm_cell_212/split/split_dim:output:0$while/lstm_cell_212/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_212/SigmoidSigmoid"while/lstm_cell_212/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_212/Sigmoid_1Sigmoid"while/lstm_cell_212/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_212/mulMul!while/lstm_cell_212/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_212/ReluRelu"while/lstm_cell_212/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_212/mul_1Mulwhile/lstm_cell_212/Sigmoid:y:0&while/lstm_cell_212/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_212/add_1AddV2while/lstm_cell_212/mul:z:0while/lstm_cell_212/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_212/Sigmoid_2Sigmoid"while/lstm_cell_212/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_212/Relu_1Reluwhile/lstm_cell_212/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_212/mul_2Mul!while/lstm_cell_212/Sigmoid_2:y:0(while/lstm_cell_212/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_212/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_212/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_212/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_212/BiasAdd/ReadVariableOp*^while/lstm_cell_212/MatMul/ReadVariableOp,^while/lstm_cell_212/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_212_biasadd_readvariableop_resource5while_lstm_cell_212_biasadd_readvariableop_resource_0"n
4while_lstm_cell_212_matmul_1_readvariableop_resource6while_lstm_cell_212_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_212_matmul_readvariableop_resource4while_lstm_cell_212_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_212/BiasAdd/ReadVariableOp*while/lstm_cell_212/BiasAdd/ReadVariableOp2V
)while/lstm_cell_212/MatMul/ReadVariableOp)while/lstm_cell_212/MatMul/ReadVariableOp2Z
+while/lstm_cell_212/MatMul_1/ReadVariableOp+while/lstm_cell_212/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_159_while_cond_1285835.
*lstm_159_while_lstm_159_while_loop_counter4
0lstm_159_while_lstm_159_while_maximum_iterations
lstm_159_while_placeholder 
lstm_159_while_placeholder_1 
lstm_159_while_placeholder_2 
lstm_159_while_placeholder_30
,lstm_159_while_less_lstm_159_strided_slice_1G
Clstm_159_while_lstm_159_while_cond_1285835___redundant_placeholder0G
Clstm_159_while_lstm_159_while_cond_1285835___redundant_placeholder1G
Clstm_159_while_lstm_159_while_cond_1285835___redundant_placeholder2G
Clstm_159_while_lstm_159_while_cond_1285835___redundant_placeholder3
lstm_159_while_identity
?
lstm_159/while/LessLesslstm_159_while_placeholder,lstm_159_while_less_lstm_159_strided_slice_1*
T0*
_output_shapes
: ]
lstm_159/while/IdentityIdentitylstm_159/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_159_while_identity lstm_159/while/Identity:output:0*(
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
while_body_1287682
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_212_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_212_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_212_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_212_matmul_readvariableop_resource:2(F
4while_lstm_cell_212_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_212_biasadd_readvariableop_resource:(??*while/lstm_cell_212/BiasAdd/ReadVariableOp?)while/lstm_cell_212/MatMul/ReadVariableOp?+while/lstm_cell_212/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_212/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_212_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_212/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_212/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_212/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_212_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_212/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_212/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_212/addAddV2$while/lstm_cell_212/MatMul:product:0&while/lstm_cell_212/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_212/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_212_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_212/BiasAddBiasAddwhile/lstm_cell_212/add:z:02while/lstm_cell_212/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_212/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_212/splitSplit,while/lstm_cell_212/split/split_dim:output:0$while/lstm_cell_212/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_212/SigmoidSigmoid"while/lstm_cell_212/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_212/Sigmoid_1Sigmoid"while/lstm_cell_212/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_212/mulMul!while/lstm_cell_212/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_212/ReluRelu"while/lstm_cell_212/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_212/mul_1Mulwhile/lstm_cell_212/Sigmoid:y:0&while/lstm_cell_212/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_212/add_1AddV2while/lstm_cell_212/mul:z:0while/lstm_cell_212/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_212/Sigmoid_2Sigmoid"while/lstm_cell_212/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_212/Relu_1Reluwhile/lstm_cell_212/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_212/mul_2Mul!while/lstm_cell_212/Sigmoid_2:y:0(while/lstm_cell_212/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_212/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_212/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_212/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_212/BiasAdd/ReadVariableOp*^while/lstm_cell_212/MatMul/ReadVariableOp,^while/lstm_cell_212/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_212_biasadd_readvariableop_resource5while_lstm_cell_212_biasadd_readvariableop_resource_0"n
4while_lstm_cell_212_matmul_1_readvariableop_resource6while_lstm_cell_212_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_212_matmul_readvariableop_resource4while_lstm_cell_212_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_212/BiasAdd/ReadVariableOp*while/lstm_cell_212/BiasAdd/ReadVariableOp2V
)while/lstm_cell_212/MatMul/ReadVariableOp)while/lstm_cell_212/MatMul/ReadVariableOp2Z
+while/lstm_cell_212/MatMul_1/ReadVariableOp+while/lstm_cell_212/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1284997
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_210_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_210_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_210_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_210_matmul_readvariableop_resource:	?G
4while_lstm_cell_210_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_210_biasadd_readvariableop_resource:	???*while/lstm_cell_210/BiasAdd/ReadVariableOp?)while/lstm_cell_210/MatMul/ReadVariableOp?+while/lstm_cell_210/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_210/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_210_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_210/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_210/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_210/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_210_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_210/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_210/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_210/addAddV2$while/lstm_cell_210/MatMul:product:0&while/lstm_cell_210/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_210/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_210_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_210/BiasAddBiasAddwhile/lstm_cell_210/add:z:02while/lstm_cell_210/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_210/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_210/splitSplit,while/lstm_cell_210/split/split_dim:output:0$while/lstm_cell_210/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_210/SigmoidSigmoid"while/lstm_cell_210/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_210/Sigmoid_1Sigmoid"while/lstm_cell_210/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_210/mulMul!while/lstm_cell_210/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_210/ReluRelu"while/lstm_cell_210/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_210/mul_1Mulwhile/lstm_cell_210/Sigmoid:y:0&while/lstm_cell_210/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_210/add_1AddV2while/lstm_cell_210/mul:z:0while/lstm_cell_210/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_210/Sigmoid_2Sigmoid"while/lstm_cell_210/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_210/Relu_1Reluwhile/lstm_cell_210/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_210/mul_2Mul!while/lstm_cell_210/Sigmoid_2:y:0(while/lstm_cell_210/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_210/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_210/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_210/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_210/BiasAdd/ReadVariableOp*^while/lstm_cell_210/MatMul/ReadVariableOp,^while/lstm_cell_210/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_210_biasadd_readvariableop_resource5while_lstm_cell_210_biasadd_readvariableop_resource_0"n
4while_lstm_cell_210_matmul_1_readvariableop_resource6while_lstm_cell_210_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_210_matmul_readvariableop_resource4while_lstm_cell_210_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_210/BiasAdd/ReadVariableOp*while/lstm_cell_210/BiasAdd/ReadVariableOp2V
)while/lstm_cell_210/MatMul/ReadVariableOp)while/lstm_cell_210/MatMul/ReadVariableOp2Z
+while/lstm_cell_210/MatMul_1/ReadVariableOp+while/lstm_cell_210/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1287538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1287538___redundant_placeholder05
1while_while_cond_1287538___redundant_placeholder15
1while_while_cond_1287538___redundant_placeholder25
1while_while_cond_1287538___redundant_placeholder3
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
while_cond_1286592
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1286592___redundant_placeholder05
1while_while_cond_1286592___redundant_placeholder15
1while_while_cond_1286592___redundant_placeholder25
1while_while_cond_1286592___redundant_placeholder3
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
E__inference_lstm_159_layer_call_and_return_conditional_losses_1284235

inputs?
,lstm_cell_210_matmul_readvariableop_resource:	?A
.lstm_cell_210_matmul_1_readvariableop_resource:	d?<
-lstm_cell_210_biasadd_readvariableop_resource:	?
identity??$lstm_cell_210/BiasAdd/ReadVariableOp?#lstm_cell_210/MatMul/ReadVariableOp?%lstm_cell_210/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_210/MatMul/ReadVariableOpReadVariableOp,lstm_cell_210_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_210/MatMulMatMulstrided_slice_2:output:0+lstm_cell_210/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_210/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_210_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_210/MatMul_1MatMulzeros:output:0-lstm_cell_210/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_210/addAddV2lstm_cell_210/MatMul:product:0 lstm_cell_210/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_210/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_210_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_210/BiasAddBiasAddlstm_cell_210/add:z:0,lstm_cell_210/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_210/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_210/splitSplit&lstm_cell_210/split/split_dim:output:0lstm_cell_210/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_210/SigmoidSigmoidlstm_cell_210/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_210/Sigmoid_1Sigmoidlstm_cell_210/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_210/mulMullstm_cell_210/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_210/ReluRelulstm_cell_210/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_210/mul_1Mullstm_cell_210/Sigmoid:y:0 lstm_cell_210/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_210/add_1AddV2lstm_cell_210/mul:z:0lstm_cell_210/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_210/Sigmoid_2Sigmoidlstm_cell_210/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_210/Relu_1Relulstm_cell_210/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_210/mul_2Mullstm_cell_210/Sigmoid_2:y:0"lstm_cell_210/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_210_matmul_readvariableop_resource.lstm_cell_210_matmul_1_readvariableop_resource-lstm_cell_210_biasadd_readvariableop_resource*
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
while_body_1284151*
condR
while_cond_1284150*K
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
NoOpNoOp%^lstm_cell_210/BiasAdd/ReadVariableOp$^lstm_cell_210/MatMul/ReadVariableOp&^lstm_cell_210/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_210/BiasAdd/ReadVariableOp$lstm_cell_210/BiasAdd/ReadVariableOp2J
#lstm_cell_210/MatMul/ReadVariableOp#lstm_cell_210/MatMul/ReadVariableOp2N
%lstm_cell_210/MatMul_1/ReadVariableOp%lstm_cell_210/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)sequential_53_lstm_159_while_cond_1282667J
Fsequential_53_lstm_159_while_sequential_53_lstm_159_while_loop_counterP
Lsequential_53_lstm_159_while_sequential_53_lstm_159_while_maximum_iterations,
(sequential_53_lstm_159_while_placeholder.
*sequential_53_lstm_159_while_placeholder_1.
*sequential_53_lstm_159_while_placeholder_2.
*sequential_53_lstm_159_while_placeholder_3L
Hsequential_53_lstm_159_while_less_sequential_53_lstm_159_strided_slice_1c
_sequential_53_lstm_159_while_sequential_53_lstm_159_while_cond_1282667___redundant_placeholder0c
_sequential_53_lstm_159_while_sequential_53_lstm_159_while_cond_1282667___redundant_placeholder1c
_sequential_53_lstm_159_while_sequential_53_lstm_159_while_cond_1282667___redundant_placeholder2c
_sequential_53_lstm_159_while_sequential_53_lstm_159_while_cond_1282667___redundant_placeholder3)
%sequential_53_lstm_159_while_identity
?
!sequential_53/lstm_159/while/LessLess(sequential_53_lstm_159_while_placeholderHsequential_53_lstm_159_while_less_sequential_53_lstm_159_strided_slice_1*
T0*
_output_shapes
: y
%sequential_53/lstm_159/while/IdentityIdentity%sequential_53/lstm_159/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_53_lstm_159_while_identity.sequential_53/lstm_159/while/Identity:output:0*(
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
J__inference_lstm_cell_211_layer_call_and_return_conditional_losses_1288235

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
J__inference_sequential_53_layer_call_and_return_conditional_losses_1285231
lstm_159_input#
lstm_159_1285204:	?#
lstm_159_1285206:	d?
lstm_159_1285208:	?#
lstm_160_1285211:	d?#
lstm_160_1285213:	2?
lstm_160_1285215:	?"
lstm_161_1285218:2("
lstm_161_1285220:
(
lstm_161_1285222:("
dense_53_1285225:

dense_53_1285227:
identity?? dense_53/StatefulPartitionedCall? lstm_159/StatefulPartitionedCall? lstm_160/StatefulPartitionedCall? lstm_161/StatefulPartitionedCall?
 lstm_159/StatefulPartitionedCallStatefulPartitionedCalllstm_159_inputlstm_159_1285204lstm_159_1285206lstm_159_1285208*
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
E__inference_lstm_159_layer_call_and_return_conditional_losses_1284235?
 lstm_160/StatefulPartitionedCallStatefulPartitionedCall)lstm_159/StatefulPartitionedCall:output:0lstm_160_1285211lstm_160_1285213lstm_160_1285215*
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
E__inference_lstm_160_layer_call_and_return_conditional_losses_1284385?
 lstm_161/StatefulPartitionedCallStatefulPartitionedCall)lstm_160/StatefulPartitionedCall:output:0lstm_161_1285218lstm_161_1285220lstm_161_1285222*
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
E__inference_lstm_161_layer_call_and_return_conditional_losses_1284535?
 dense_53/StatefulPartitionedCallStatefulPartitionedCall)lstm_161/StatefulPartitionedCall:output:0dense_53_1285225dense_53_1285227*
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
E__inference_dense_53_layer_call_and_return_conditional_losses_1284553x
IdentityIdentity)dense_53/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_53/StatefulPartitionedCall!^lstm_159/StatefulPartitionedCall!^lstm_160/StatefulPartitionedCall!^lstm_161/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall2D
 lstm_159/StatefulPartitionedCall lstm_159/StatefulPartitionedCall2D
 lstm_160/StatefulPartitionedCall lstm_160/StatefulPartitionedCall2D
 lstm_161/StatefulPartitionedCall lstm_161/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_159_input
?

?
/__inference_sequential_53_layer_call_fn_1285350

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
J__inference_sequential_53_layer_call_and_return_conditional_losses_1285149o
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

?
lstm_160_while_cond_1285547.
*lstm_160_while_lstm_160_while_loop_counter4
0lstm_160_while_lstm_160_while_maximum_iterations
lstm_160_while_placeholder 
lstm_160_while_placeholder_1 
lstm_160_while_placeholder_2 
lstm_160_while_placeholder_30
,lstm_160_while_less_lstm_160_strided_slice_1G
Clstm_160_while_lstm_160_while_cond_1285547___redundant_placeholder0G
Clstm_160_while_lstm_160_while_cond_1285547___redundant_placeholder1G
Clstm_160_while_lstm_160_while_cond_1285547___redundant_placeholder2G
Clstm_160_while_lstm_160_while_cond_1285547___redundant_placeholder3
lstm_160_while_identity
?
lstm_160/while/LessLesslstm_160_while_placeholder,lstm_160_while_less_lstm_160_strided_slice_1*
T0*
_output_shapes
: ]
lstm_160/while/IdentityIdentitylstm_160/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_160_while_identity lstm_160/while/Identity:output:0*(
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
J__inference_lstm_cell_210_layer_call_and_return_conditional_losses_1283103

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
?C
?

lstm_161_while_body_1286114.
*lstm_161_while_lstm_161_while_loop_counter4
0lstm_161_while_lstm_161_while_maximum_iterations
lstm_161_while_placeholder 
lstm_161_while_placeholder_1 
lstm_161_while_placeholder_2 
lstm_161_while_placeholder_3-
)lstm_161_while_lstm_161_strided_slice_1_0i
elstm_161_while_tensorarrayv2read_tensorlistgetitem_lstm_161_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_161_while_lstm_cell_212_matmul_readvariableop_resource_0:2(Q
?lstm_161_while_lstm_cell_212_matmul_1_readvariableop_resource_0:
(L
>lstm_161_while_lstm_cell_212_biasadd_readvariableop_resource_0:(
lstm_161_while_identity
lstm_161_while_identity_1
lstm_161_while_identity_2
lstm_161_while_identity_3
lstm_161_while_identity_4
lstm_161_while_identity_5+
'lstm_161_while_lstm_161_strided_slice_1g
clstm_161_while_tensorarrayv2read_tensorlistgetitem_lstm_161_tensorarrayunstack_tensorlistfromtensorM
;lstm_161_while_lstm_cell_212_matmul_readvariableop_resource:2(O
=lstm_161_while_lstm_cell_212_matmul_1_readvariableop_resource:
(J
<lstm_161_while_lstm_cell_212_biasadd_readvariableop_resource:(??3lstm_161/while/lstm_cell_212/BiasAdd/ReadVariableOp?2lstm_161/while/lstm_cell_212/MatMul/ReadVariableOp?4lstm_161/while/lstm_cell_212/MatMul_1/ReadVariableOp?
@lstm_161/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_161/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_161_while_tensorarrayv2read_tensorlistgetitem_lstm_161_tensorarrayunstack_tensorlistfromtensor_0lstm_161_while_placeholderIlstm_161/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_161/while/lstm_cell_212/MatMul/ReadVariableOpReadVariableOp=lstm_161_while_lstm_cell_212_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_161/while/lstm_cell_212/MatMulMatMul9lstm_161/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_161/while/lstm_cell_212/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_161/while/lstm_cell_212/MatMul_1/ReadVariableOpReadVariableOp?lstm_161_while_lstm_cell_212_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_161/while/lstm_cell_212/MatMul_1MatMullstm_161_while_placeholder_2<lstm_161/while/lstm_cell_212/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_161/while/lstm_cell_212/addAddV2-lstm_161/while/lstm_cell_212/MatMul:product:0/lstm_161/while/lstm_cell_212/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_161/while/lstm_cell_212/BiasAdd/ReadVariableOpReadVariableOp>lstm_161_while_lstm_cell_212_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_161/while/lstm_cell_212/BiasAddBiasAdd$lstm_161/while/lstm_cell_212/add:z:0;lstm_161/while/lstm_cell_212/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_161/while/lstm_cell_212/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_161/while/lstm_cell_212/splitSplit5lstm_161/while/lstm_cell_212/split/split_dim:output:0-lstm_161/while/lstm_cell_212/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_161/while/lstm_cell_212/SigmoidSigmoid+lstm_161/while/lstm_cell_212/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_161/while/lstm_cell_212/Sigmoid_1Sigmoid+lstm_161/while/lstm_cell_212/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_161/while/lstm_cell_212/mulMul*lstm_161/while/lstm_cell_212/Sigmoid_1:y:0lstm_161_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_161/while/lstm_cell_212/ReluRelu+lstm_161/while/lstm_cell_212/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_161/while/lstm_cell_212/mul_1Mul(lstm_161/while/lstm_cell_212/Sigmoid:y:0/lstm_161/while/lstm_cell_212/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_161/while/lstm_cell_212/add_1AddV2$lstm_161/while/lstm_cell_212/mul:z:0&lstm_161/while/lstm_cell_212/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_161/while/lstm_cell_212/Sigmoid_2Sigmoid+lstm_161/while/lstm_cell_212/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_161/while/lstm_cell_212/Relu_1Relu&lstm_161/while/lstm_cell_212/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_161/while/lstm_cell_212/mul_2Mul*lstm_161/while/lstm_cell_212/Sigmoid_2:y:01lstm_161/while/lstm_cell_212/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_161/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_161_while_placeholder_1lstm_161_while_placeholder&lstm_161/while/lstm_cell_212/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_161/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_161/while/addAddV2lstm_161_while_placeholderlstm_161/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_161/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_161/while/add_1AddV2*lstm_161_while_lstm_161_while_loop_counterlstm_161/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_161/while/IdentityIdentitylstm_161/while/add_1:z:0^lstm_161/while/NoOp*
T0*
_output_shapes
: ?
lstm_161/while/Identity_1Identity0lstm_161_while_lstm_161_while_maximum_iterations^lstm_161/while/NoOp*
T0*
_output_shapes
: t
lstm_161/while/Identity_2Identitylstm_161/while/add:z:0^lstm_161/while/NoOp*
T0*
_output_shapes
: ?
lstm_161/while/Identity_3IdentityClstm_161/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_161/while/NoOp*
T0*
_output_shapes
: ?
lstm_161/while/Identity_4Identity&lstm_161/while/lstm_cell_212/mul_2:z:0^lstm_161/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_161/while/Identity_5Identity&lstm_161/while/lstm_cell_212/add_1:z:0^lstm_161/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_161/while/NoOpNoOp4^lstm_161/while/lstm_cell_212/BiasAdd/ReadVariableOp3^lstm_161/while/lstm_cell_212/MatMul/ReadVariableOp5^lstm_161/while/lstm_cell_212/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_161_while_identity lstm_161/while/Identity:output:0"?
lstm_161_while_identity_1"lstm_161/while/Identity_1:output:0"?
lstm_161_while_identity_2"lstm_161/while/Identity_2:output:0"?
lstm_161_while_identity_3"lstm_161/while/Identity_3:output:0"?
lstm_161_while_identity_4"lstm_161/while/Identity_4:output:0"?
lstm_161_while_identity_5"lstm_161/while/Identity_5:output:0"T
'lstm_161_while_lstm_161_strided_slice_1)lstm_161_while_lstm_161_strided_slice_1_0"~
<lstm_161_while_lstm_cell_212_biasadd_readvariableop_resource>lstm_161_while_lstm_cell_212_biasadd_readvariableop_resource_0"?
=lstm_161_while_lstm_cell_212_matmul_1_readvariableop_resource?lstm_161_while_lstm_cell_212_matmul_1_readvariableop_resource_0"|
;lstm_161_while_lstm_cell_212_matmul_readvariableop_resource=lstm_161_while_lstm_cell_212_matmul_readvariableop_resource_0"?
clstm_161_while_tensorarrayv2read_tensorlistgetitem_lstm_161_tensorarrayunstack_tensorlistfromtensorelstm_161_while_tensorarrayv2read_tensorlistgetitem_lstm_161_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_161/while/lstm_cell_212/BiasAdd/ReadVariableOp3lstm_161/while/lstm_cell_212/BiasAdd/ReadVariableOp2h
2lstm_161/while/lstm_cell_212/MatMul/ReadVariableOp2lstm_161/while/lstm_cell_212/MatMul/ReadVariableOp2l
4lstm_161/while/lstm_cell_212/MatMul_1/ReadVariableOp4lstm_161/while/lstm_cell_212/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_211_layer_call_fn_1288186

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
J__inference_lstm_cell_211_layer_call_and_return_conditional_losses_1283453o
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
while_body_1286450
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_210_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_210_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_210_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_210_matmul_readvariableop_resource:	?G
4while_lstm_cell_210_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_210_biasadd_readvariableop_resource:	???*while/lstm_cell_210/BiasAdd/ReadVariableOp?)while/lstm_cell_210/MatMul/ReadVariableOp?+while/lstm_cell_210/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_210/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_210_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_210/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_210/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_210/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_210_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_210/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_210/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_210/addAddV2$while/lstm_cell_210/MatMul:product:0&while/lstm_cell_210/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_210/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_210_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_210/BiasAddBiasAddwhile/lstm_cell_210/add:z:02while/lstm_cell_210/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_210/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_210/splitSplit,while/lstm_cell_210/split/split_dim:output:0$while/lstm_cell_210/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_210/SigmoidSigmoid"while/lstm_cell_210/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_210/Sigmoid_1Sigmoid"while/lstm_cell_210/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_210/mulMul!while/lstm_cell_210/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_210/ReluRelu"while/lstm_cell_210/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_210/mul_1Mulwhile/lstm_cell_210/Sigmoid:y:0&while/lstm_cell_210/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_210/add_1AddV2while/lstm_cell_210/mul:z:0while/lstm_cell_210/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_210/Sigmoid_2Sigmoid"while/lstm_cell_210/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_210/Relu_1Reluwhile/lstm_cell_210/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_210/mul_2Mul!while/lstm_cell_210/Sigmoid_2:y:0(while/lstm_cell_210/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_210/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_210/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_210/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_210/BiasAdd/ReadVariableOp*^while/lstm_cell_210/MatMul/ReadVariableOp,^while/lstm_cell_210/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_210_biasadd_readvariableop_resource5while_lstm_cell_210_biasadd_readvariableop_resource_0"n
4while_lstm_cell_210_matmul_1_readvariableop_resource6while_lstm_cell_210_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_210_matmul_readvariableop_resource4while_lstm_cell_210_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_210/BiasAdd/ReadVariableOp*while/lstm_cell_210/BiasAdd/ReadVariableOp2V
)while/lstm_cell_210/MatMul/ReadVariableOp)while/lstm_cell_210/MatMul/ReadVariableOp2Z
+while/lstm_cell_210/MatMul_1/ReadVariableOp+while/lstm_cell_210/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1283307
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1283307___redundant_placeholder05
1while_while_cond_1283307___redundant_placeholder15
1while_while_cond_1283307___redundant_placeholder25
1while_while_cond_1283307___redundant_placeholder3
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
E__inference_lstm_159_layer_call_and_return_conditional_losses_1286820

inputs?
,lstm_cell_210_matmul_readvariableop_resource:	?A
.lstm_cell_210_matmul_1_readvariableop_resource:	d?<
-lstm_cell_210_biasadd_readvariableop_resource:	?
identity??$lstm_cell_210/BiasAdd/ReadVariableOp?#lstm_cell_210/MatMul/ReadVariableOp?%lstm_cell_210/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_210/MatMul/ReadVariableOpReadVariableOp,lstm_cell_210_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_210/MatMulMatMulstrided_slice_2:output:0+lstm_cell_210/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_210/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_210_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_210/MatMul_1MatMulzeros:output:0-lstm_cell_210/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_210/addAddV2lstm_cell_210/MatMul:product:0 lstm_cell_210/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_210/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_210_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_210/BiasAddBiasAddlstm_cell_210/add:z:0,lstm_cell_210/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_210/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_210/splitSplit&lstm_cell_210/split/split_dim:output:0lstm_cell_210/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_210/SigmoidSigmoidlstm_cell_210/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_210/Sigmoid_1Sigmoidlstm_cell_210/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_210/mulMullstm_cell_210/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_210/ReluRelulstm_cell_210/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_210/mul_1Mullstm_cell_210/Sigmoid:y:0 lstm_cell_210/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_210/add_1AddV2lstm_cell_210/mul:z:0lstm_cell_210/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_210/Sigmoid_2Sigmoidlstm_cell_210/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_210/Relu_1Relulstm_cell_210/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_210/mul_2Mullstm_cell_210/Sigmoid_2:y:0"lstm_cell_210/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_210_matmul_readvariableop_resource.lstm_cell_210_matmul_1_readvariableop_resource-lstm_cell_210_biasadd_readvariableop_resource*
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
while_body_1286736*
condR
while_cond_1286735*K
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
NoOpNoOp%^lstm_cell_210/BiasAdd/ReadVariableOp$^lstm_cell_210/MatMul/ReadVariableOp&^lstm_cell_210/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_210/BiasAdd/ReadVariableOp$lstm_cell_210/BiasAdd/ReadVariableOp2J
#lstm_cell_210/MatMul/ReadVariableOp#lstm_cell_210/MatMul/ReadVariableOp2N
%lstm_cell_210/MatMul_1/ReadVariableOp%lstm_cell_210/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_53_layer_call_and_return_conditional_losses_1284560

inputs#
lstm_159_1284236:	?#
lstm_159_1284238:	d?
lstm_159_1284240:	?#
lstm_160_1284386:	d?#
lstm_160_1284388:	2?
lstm_160_1284390:	?"
lstm_161_1284536:2("
lstm_161_1284538:
(
lstm_161_1284540:("
dense_53_1284554:

dense_53_1284556:
identity?? dense_53/StatefulPartitionedCall? lstm_159/StatefulPartitionedCall? lstm_160/StatefulPartitionedCall? lstm_161/StatefulPartitionedCall?
 lstm_159/StatefulPartitionedCallStatefulPartitionedCallinputslstm_159_1284236lstm_159_1284238lstm_159_1284240*
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
E__inference_lstm_159_layer_call_and_return_conditional_losses_1284235?
 lstm_160/StatefulPartitionedCallStatefulPartitionedCall)lstm_159/StatefulPartitionedCall:output:0lstm_160_1284386lstm_160_1284388lstm_160_1284390*
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
E__inference_lstm_160_layer_call_and_return_conditional_losses_1284385?
 lstm_161/StatefulPartitionedCallStatefulPartitionedCall)lstm_160/StatefulPartitionedCall:output:0lstm_161_1284536lstm_161_1284538lstm_161_1284540*
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
E__inference_lstm_161_layer_call_and_return_conditional_losses_1284535?
 dense_53/StatefulPartitionedCallStatefulPartitionedCall)lstm_161/StatefulPartitionedCall:output:0dense_53_1284554dense_53_1284556*
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
E__inference_dense_53_layer_call_and_return_conditional_losses_1284553x
IdentityIdentity)dense_53/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_53/StatefulPartitionedCall!^lstm_159/StatefulPartitionedCall!^lstm_160/StatefulPartitionedCall!^lstm_161/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall2D
 lstm_159/StatefulPartitionedCall lstm_159/StatefulPartitionedCall2D
 lstm_160/StatefulPartitionedCall lstm_160/StatefulPartitionedCall2D
 lstm_161/StatefulPartitionedCall lstm_161/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_161_layer_call_fn_1287469

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
E__inference_lstm_161_layer_call_and_return_conditional_losses_1284535o
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
/__inference_sequential_53_layer_call_fn_1284585
lstm_159_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_159_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_53_layer_call_and_return_conditional_losses_1284560o
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
_user_specified_namelstm_159_input
?8
?
while_body_1287066
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_211_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_211_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_211_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_211_matmul_readvariableop_resource:	d?G
4while_lstm_cell_211_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_211_biasadd_readvariableop_resource:	???*while/lstm_cell_211/BiasAdd/ReadVariableOp?)while/lstm_cell_211/MatMul/ReadVariableOp?+while/lstm_cell_211/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_211/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_211_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_211/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_211/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_211/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_211_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_211/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_211/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_211/addAddV2$while/lstm_cell_211/MatMul:product:0&while/lstm_cell_211/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_211/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_211_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_211/BiasAddBiasAddwhile/lstm_cell_211/add:z:02while/lstm_cell_211/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_211/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_211/splitSplit,while/lstm_cell_211/split/split_dim:output:0$while/lstm_cell_211/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_211/SigmoidSigmoid"while/lstm_cell_211/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_211/Sigmoid_1Sigmoid"while/lstm_cell_211/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_211/mulMul!while/lstm_cell_211/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_211/ReluRelu"while/lstm_cell_211/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_211/mul_1Mulwhile/lstm_cell_211/Sigmoid:y:0&while/lstm_cell_211/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_211/add_1AddV2while/lstm_cell_211/mul:z:0while/lstm_cell_211/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_211/Sigmoid_2Sigmoid"while/lstm_cell_211/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_211/Relu_1Reluwhile/lstm_cell_211/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_211/mul_2Mul!while/lstm_cell_211/Sigmoid_2:y:0(while/lstm_cell_211/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_211/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_211/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_211/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_211/BiasAdd/ReadVariableOp*^while/lstm_cell_211/MatMul/ReadVariableOp,^while/lstm_cell_211/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_211_biasadd_readvariableop_resource5while_lstm_cell_211_biasadd_readvariableop_resource_0"n
4while_lstm_cell_211_matmul_1_readvariableop_resource6while_lstm_cell_211_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_211_matmul_readvariableop_resource4while_lstm_cell_211_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_211/BiasAdd/ReadVariableOp*while/lstm_cell_211/BiasAdd/ReadVariableOp2V
)while/lstm_cell_211/MatMul/ReadVariableOp)while/lstm_cell_211/MatMul/ReadVariableOp2Z
+while/lstm_cell_211/MatMul_1/ReadVariableOp+while/lstm_cell_211/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_161_layer_call_fn_1287480

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
E__inference_lstm_161_layer_call_and_return_conditional_losses_1284751o
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
while_body_1287209
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_211_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_211_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_211_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_211_matmul_readvariableop_resource:	d?G
4while_lstm_cell_211_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_211_biasadd_readvariableop_resource:	???*while/lstm_cell_211/BiasAdd/ReadVariableOp?)while/lstm_cell_211/MatMul/ReadVariableOp?+while/lstm_cell_211/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_211/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_211_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_211/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_211/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_211/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_211_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_211/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_211/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_211/addAddV2$while/lstm_cell_211/MatMul:product:0&while/lstm_cell_211/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_211/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_211_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_211/BiasAddBiasAddwhile/lstm_cell_211/add:z:02while/lstm_cell_211/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_211/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_211/splitSplit,while/lstm_cell_211/split/split_dim:output:0$while/lstm_cell_211/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_211/SigmoidSigmoid"while/lstm_cell_211/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_211/Sigmoid_1Sigmoid"while/lstm_cell_211/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_211/mulMul!while/lstm_cell_211/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_211/ReluRelu"while/lstm_cell_211/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_211/mul_1Mulwhile/lstm_cell_211/Sigmoid:y:0&while/lstm_cell_211/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_211/add_1AddV2while/lstm_cell_211/mul:z:0while/lstm_cell_211/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_211/Sigmoid_2Sigmoid"while/lstm_cell_211/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_211/Relu_1Reluwhile/lstm_cell_211/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_211/mul_2Mul!while/lstm_cell_211/Sigmoid_2:y:0(while/lstm_cell_211/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_211/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_211/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_211/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_211/BiasAdd/ReadVariableOp*^while/lstm_cell_211/MatMul/ReadVariableOp,^while/lstm_cell_211/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_211_biasadd_readvariableop_resource5while_lstm_cell_211_biasadd_readvariableop_resource_0"n
4while_lstm_cell_211_matmul_1_readvariableop_resource6while_lstm_cell_211_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_211_matmul_readvariableop_resource4while_lstm_cell_211_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_211/BiasAdd/ReadVariableOp*while/lstm_cell_211/BiasAdd/ReadVariableOp2V
)while/lstm_cell_211/MatMul/ReadVariableOp)while/lstm_cell_211/MatMul/ReadVariableOp2Z
+while/lstm_cell_211/MatMul_1/ReadVariableOp+while/lstm_cell_211/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_212_layer_call_and_return_conditional_losses_1283803

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
while_body_1284667
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_212_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_212_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_212_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_212_matmul_readvariableop_resource:2(F
4while_lstm_cell_212_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_212_biasadd_readvariableop_resource:(??*while/lstm_cell_212/BiasAdd/ReadVariableOp?)while/lstm_cell_212/MatMul/ReadVariableOp?+while/lstm_cell_212/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_212/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_212_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_212/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_212/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_212/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_212_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_212/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_212/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_212/addAddV2$while/lstm_cell_212/MatMul:product:0&while/lstm_cell_212/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_212/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_212_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_212/BiasAddBiasAddwhile/lstm_cell_212/add:z:02while/lstm_cell_212/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_212/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_212/splitSplit,while/lstm_cell_212/split/split_dim:output:0$while/lstm_cell_212/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_212/SigmoidSigmoid"while/lstm_cell_212/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_212/Sigmoid_1Sigmoid"while/lstm_cell_212/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_212/mulMul!while/lstm_cell_212/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_212/ReluRelu"while/lstm_cell_212/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_212/mul_1Mulwhile/lstm_cell_212/Sigmoid:y:0&while/lstm_cell_212/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_212/add_1AddV2while/lstm_cell_212/mul:z:0while/lstm_cell_212/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_212/Sigmoid_2Sigmoid"while/lstm_cell_212/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_212/Relu_1Reluwhile/lstm_cell_212/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_212/mul_2Mul!while/lstm_cell_212/Sigmoid_2:y:0(while/lstm_cell_212/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_212/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_212/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_212/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_212/BiasAdd/ReadVariableOp*^while/lstm_cell_212/MatMul/ReadVariableOp,^while/lstm_cell_212/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_212_biasadd_readvariableop_resource5while_lstm_cell_212_biasadd_readvariableop_resource_0"n
4while_lstm_cell_212_matmul_1_readvariableop_resource6while_lstm_cell_212_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_212_matmul_readvariableop_resource4while_lstm_cell_212_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_212/BiasAdd/ReadVariableOp*while/lstm_cell_212/BiasAdd/ReadVariableOp2V
)while/lstm_cell_212/MatMul/ReadVariableOp)while/lstm_cell_212/MatMul/ReadVariableOp2Z
+while/lstm_cell_212/MatMul_1/ReadVariableOp+while/lstm_cell_212/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_159_layer_call_fn_1286248

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
E__inference_lstm_159_layer_call_and_return_conditional_losses_1285081s
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
E__inference_lstm_160_layer_call_and_return_conditional_losses_1287293

inputs?
,lstm_cell_211_matmul_readvariableop_resource:	d?A
.lstm_cell_211_matmul_1_readvariableop_resource:	2?<
-lstm_cell_211_biasadd_readvariableop_resource:	?
identity??$lstm_cell_211/BiasAdd/ReadVariableOp?#lstm_cell_211/MatMul/ReadVariableOp?%lstm_cell_211/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_211/MatMul/ReadVariableOpReadVariableOp,lstm_cell_211_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_211/MatMulMatMulstrided_slice_2:output:0+lstm_cell_211/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_211/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_211_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_211/MatMul_1MatMulzeros:output:0-lstm_cell_211/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_211/addAddV2lstm_cell_211/MatMul:product:0 lstm_cell_211/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_211/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_211_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_211/BiasAddBiasAddlstm_cell_211/add:z:0,lstm_cell_211/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_211/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_211/splitSplit&lstm_cell_211/split/split_dim:output:0lstm_cell_211/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_211/SigmoidSigmoidlstm_cell_211/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_211/Sigmoid_1Sigmoidlstm_cell_211/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_211/mulMullstm_cell_211/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_211/ReluRelulstm_cell_211/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_211/mul_1Mullstm_cell_211/Sigmoid:y:0 lstm_cell_211/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_211/add_1AddV2lstm_cell_211/mul:z:0lstm_cell_211/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_211/Sigmoid_2Sigmoidlstm_cell_211/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_211/Relu_1Relulstm_cell_211/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_211/mul_2Mullstm_cell_211/Sigmoid_2:y:0"lstm_cell_211/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_211_matmul_readvariableop_resource.lstm_cell_211_matmul_1_readvariableop_resource-lstm_cell_211_biasadd_readvariableop_resource*
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
while_body_1287209*
condR
while_cond_1287208*K
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
NoOpNoOp%^lstm_cell_211/BiasAdd/ReadVariableOp$^lstm_cell_211/MatMul/ReadVariableOp&^lstm_cell_211/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_211/BiasAdd/ReadVariableOp$lstm_cell_211/BiasAdd/ReadVariableOp2J
#lstm_cell_211/MatMul/ReadVariableOp#lstm_cell_211/MatMul/ReadVariableOp2N
%lstm_cell_211/MatMul_1/ReadVariableOp%lstm_cell_211/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
/__inference_sequential_53_layer_call_fn_1285201
lstm_159_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_159_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_53_layer_call_and_return_conditional_losses_1285149o
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
_user_specified_namelstm_159_input
?
?
J__inference_lstm_cell_210_layer_call_and_return_conditional_losses_1288137

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
?
while_body_1284151
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_210_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_210_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_210_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_210_matmul_readvariableop_resource:	?G
4while_lstm_cell_210_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_210_biasadd_readvariableop_resource:	???*while/lstm_cell_210/BiasAdd/ReadVariableOp?)while/lstm_cell_210/MatMul/ReadVariableOp?+while/lstm_cell_210/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_210/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_210_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_210/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_210/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_210/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_210_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_210/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_210/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_210/addAddV2$while/lstm_cell_210/MatMul:product:0&while/lstm_cell_210/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_210/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_210_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_210/BiasAddBiasAddwhile/lstm_cell_210/add:z:02while/lstm_cell_210/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_210/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_210/splitSplit,while/lstm_cell_210/split/split_dim:output:0$while/lstm_cell_210/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_210/SigmoidSigmoid"while/lstm_cell_210/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_210/Sigmoid_1Sigmoid"while/lstm_cell_210/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_210/mulMul!while/lstm_cell_210/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_210/ReluRelu"while/lstm_cell_210/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_210/mul_1Mulwhile/lstm_cell_210/Sigmoid:y:0&while/lstm_cell_210/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_210/add_1AddV2while/lstm_cell_210/mul:z:0while/lstm_cell_210/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_210/Sigmoid_2Sigmoid"while/lstm_cell_210/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_210/Relu_1Reluwhile/lstm_cell_210/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_210/mul_2Mul!while/lstm_cell_210/Sigmoid_2:y:0(while/lstm_cell_210/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_210/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_210/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_210/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_210/BiasAdd/ReadVariableOp*^while/lstm_cell_210/MatMul/ReadVariableOp,^while/lstm_cell_210/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_210_biasadd_readvariableop_resource5while_lstm_cell_210_biasadd_readvariableop_resource_0"n
4while_lstm_cell_210_matmul_1_readvariableop_resource6while_lstm_cell_210_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_210_matmul_readvariableop_resource4while_lstm_cell_210_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_210/BiasAdd/ReadVariableOp*while/lstm_cell_210/BiasAdd/ReadVariableOp2V
)while/lstm_cell_210/MatMul/ReadVariableOp)while/lstm_cell_210/MatMul/ReadVariableOp2Z
+while/lstm_cell_210/MatMul_1/ReadVariableOp+while/lstm_cell_210/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_159_layer_call_fn_1286215
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
E__inference_lstm_159_layer_call_and_return_conditional_losses_1283186|
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
while_body_1286736
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_210_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_210_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_210_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_210_matmul_readvariableop_resource:	?G
4while_lstm_cell_210_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_210_biasadd_readvariableop_resource:	???*while/lstm_cell_210/BiasAdd/ReadVariableOp?)while/lstm_cell_210/MatMul/ReadVariableOp?+while/lstm_cell_210/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_210/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_210_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_210/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_210/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_210/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_210_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_210/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_210/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_210/addAddV2$while/lstm_cell_210/MatMul:product:0&while/lstm_cell_210/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_210/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_210_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_210/BiasAddBiasAddwhile/lstm_cell_210/add:z:02while/lstm_cell_210/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_210/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_210/splitSplit,while/lstm_cell_210/split/split_dim:output:0$while/lstm_cell_210/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_210/SigmoidSigmoid"while/lstm_cell_210/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_210/Sigmoid_1Sigmoid"while/lstm_cell_210/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_210/mulMul!while/lstm_cell_210/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_210/ReluRelu"while/lstm_cell_210/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_210/mul_1Mulwhile/lstm_cell_210/Sigmoid:y:0&while/lstm_cell_210/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_210/add_1AddV2while/lstm_cell_210/mul:z:0while/lstm_cell_210/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_210/Sigmoid_2Sigmoid"while/lstm_cell_210/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_210/Relu_1Reluwhile/lstm_cell_210/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_210/mul_2Mul!while/lstm_cell_210/Sigmoid_2:y:0(while/lstm_cell_210/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_210/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_210/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_210/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_210/BiasAdd/ReadVariableOp*^while/lstm_cell_210/MatMul/ReadVariableOp,^while/lstm_cell_210/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_210_biasadd_readvariableop_resource5while_lstm_cell_210_biasadd_readvariableop_resource_0"n
4while_lstm_cell_210_matmul_1_readvariableop_resource6while_lstm_cell_210_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_210_matmul_readvariableop_resource4while_lstm_cell_210_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_210/BiasAdd/ReadVariableOp*while/lstm_cell_210/BiasAdd/ReadVariableOp2V
)while/lstm_cell_210/MatMul/ReadVariableOp)while/lstm_cell_210/MatMul/ReadVariableOp2Z
+while/lstm_cell_210/MatMul_1/ReadVariableOp+while/lstm_cell_210/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_161_layer_call_and_return_conditional_losses_1283886

inputs'
lstm_cell_212_1283804:2('
lstm_cell_212_1283806:
(#
lstm_cell_212_1283808:(
identity??%lstm_cell_212/StatefulPartitionedCall?while;
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
%lstm_cell_212/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_212_1283804lstm_cell_212_1283806lstm_cell_212_1283808*
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
J__inference_lstm_cell_212_layer_call_and_return_conditional_losses_1283803n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_212_1283804lstm_cell_212_1283806lstm_cell_212_1283808*
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
while_body_1283817*
condR
while_cond_1283816*K
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
NoOpNoOp&^lstm_cell_212/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_212/StatefulPartitionedCall%lstm_cell_212/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_160_layer_call_and_return_conditional_losses_1283727

inputs(
lstm_cell_211_1283645:	d?(
lstm_cell_211_1283647:	2?$
lstm_cell_211_1283649:	?
identity??%lstm_cell_211/StatefulPartitionedCall?while;
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
%lstm_cell_211/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_211_1283645lstm_cell_211_1283647lstm_cell_211_1283649*
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
J__inference_lstm_cell_211_layer_call_and_return_conditional_losses_1283599n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_211_1283645lstm_cell_211_1283647lstm_cell_211_1283649*
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
while_body_1283658*
condR
while_cond_1283657*K
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
NoOpNoOp&^lstm_cell_211/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_211/StatefulPartitionedCall%lstm_cell_211/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_159_layer_call_fn_1286226
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
E__inference_lstm_159_layer_call_and_return_conditional_losses_1283377|
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
*__inference_lstm_160_layer_call_fn_1286831
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
E__inference_lstm_160_layer_call_and_return_conditional_losses_1283536|
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

lstm_159_while_body_1285409.
*lstm_159_while_lstm_159_while_loop_counter4
0lstm_159_while_lstm_159_while_maximum_iterations
lstm_159_while_placeholder 
lstm_159_while_placeholder_1 
lstm_159_while_placeholder_2 
lstm_159_while_placeholder_3-
)lstm_159_while_lstm_159_strided_slice_1_0i
elstm_159_while_tensorarrayv2read_tensorlistgetitem_lstm_159_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_159_while_lstm_cell_210_matmul_readvariableop_resource_0:	?R
?lstm_159_while_lstm_cell_210_matmul_1_readvariableop_resource_0:	d?M
>lstm_159_while_lstm_cell_210_biasadd_readvariableop_resource_0:	?
lstm_159_while_identity
lstm_159_while_identity_1
lstm_159_while_identity_2
lstm_159_while_identity_3
lstm_159_while_identity_4
lstm_159_while_identity_5+
'lstm_159_while_lstm_159_strided_slice_1g
clstm_159_while_tensorarrayv2read_tensorlistgetitem_lstm_159_tensorarrayunstack_tensorlistfromtensorN
;lstm_159_while_lstm_cell_210_matmul_readvariableop_resource:	?P
=lstm_159_while_lstm_cell_210_matmul_1_readvariableop_resource:	d?K
<lstm_159_while_lstm_cell_210_biasadd_readvariableop_resource:	???3lstm_159/while/lstm_cell_210/BiasAdd/ReadVariableOp?2lstm_159/while/lstm_cell_210/MatMul/ReadVariableOp?4lstm_159/while/lstm_cell_210/MatMul_1/ReadVariableOp?
@lstm_159/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_159/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_159_while_tensorarrayv2read_tensorlistgetitem_lstm_159_tensorarrayunstack_tensorlistfromtensor_0lstm_159_while_placeholderIlstm_159/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_159/while/lstm_cell_210/MatMul/ReadVariableOpReadVariableOp=lstm_159_while_lstm_cell_210_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_159/while/lstm_cell_210/MatMulMatMul9lstm_159/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_159/while/lstm_cell_210/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_159/while/lstm_cell_210/MatMul_1/ReadVariableOpReadVariableOp?lstm_159_while_lstm_cell_210_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_159/while/lstm_cell_210/MatMul_1MatMullstm_159_while_placeholder_2<lstm_159/while/lstm_cell_210/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_159/while/lstm_cell_210/addAddV2-lstm_159/while/lstm_cell_210/MatMul:product:0/lstm_159/while/lstm_cell_210/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_159/while/lstm_cell_210/BiasAdd/ReadVariableOpReadVariableOp>lstm_159_while_lstm_cell_210_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_159/while/lstm_cell_210/BiasAddBiasAdd$lstm_159/while/lstm_cell_210/add:z:0;lstm_159/while/lstm_cell_210/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_159/while/lstm_cell_210/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_159/while/lstm_cell_210/splitSplit5lstm_159/while/lstm_cell_210/split/split_dim:output:0-lstm_159/while/lstm_cell_210/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_159/while/lstm_cell_210/SigmoidSigmoid+lstm_159/while/lstm_cell_210/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_159/while/lstm_cell_210/Sigmoid_1Sigmoid+lstm_159/while/lstm_cell_210/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_159/while/lstm_cell_210/mulMul*lstm_159/while/lstm_cell_210/Sigmoid_1:y:0lstm_159_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_159/while/lstm_cell_210/ReluRelu+lstm_159/while/lstm_cell_210/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_159/while/lstm_cell_210/mul_1Mul(lstm_159/while/lstm_cell_210/Sigmoid:y:0/lstm_159/while/lstm_cell_210/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_159/while/lstm_cell_210/add_1AddV2$lstm_159/while/lstm_cell_210/mul:z:0&lstm_159/while/lstm_cell_210/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_159/while/lstm_cell_210/Sigmoid_2Sigmoid+lstm_159/while/lstm_cell_210/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_159/while/lstm_cell_210/Relu_1Relu&lstm_159/while/lstm_cell_210/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_159/while/lstm_cell_210/mul_2Mul*lstm_159/while/lstm_cell_210/Sigmoid_2:y:01lstm_159/while/lstm_cell_210/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_159/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_159_while_placeholder_1lstm_159_while_placeholder&lstm_159/while/lstm_cell_210/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_159/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_159/while/addAddV2lstm_159_while_placeholderlstm_159/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_159/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_159/while/add_1AddV2*lstm_159_while_lstm_159_while_loop_counterlstm_159/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_159/while/IdentityIdentitylstm_159/while/add_1:z:0^lstm_159/while/NoOp*
T0*
_output_shapes
: ?
lstm_159/while/Identity_1Identity0lstm_159_while_lstm_159_while_maximum_iterations^lstm_159/while/NoOp*
T0*
_output_shapes
: t
lstm_159/while/Identity_2Identitylstm_159/while/add:z:0^lstm_159/while/NoOp*
T0*
_output_shapes
: ?
lstm_159/while/Identity_3IdentityClstm_159/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_159/while/NoOp*
T0*
_output_shapes
: ?
lstm_159/while/Identity_4Identity&lstm_159/while/lstm_cell_210/mul_2:z:0^lstm_159/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_159/while/Identity_5Identity&lstm_159/while/lstm_cell_210/add_1:z:0^lstm_159/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_159/while/NoOpNoOp4^lstm_159/while/lstm_cell_210/BiasAdd/ReadVariableOp3^lstm_159/while/lstm_cell_210/MatMul/ReadVariableOp5^lstm_159/while/lstm_cell_210/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_159_while_identity lstm_159/while/Identity:output:0"?
lstm_159_while_identity_1"lstm_159/while/Identity_1:output:0"?
lstm_159_while_identity_2"lstm_159/while/Identity_2:output:0"?
lstm_159_while_identity_3"lstm_159/while/Identity_3:output:0"?
lstm_159_while_identity_4"lstm_159/while/Identity_4:output:0"?
lstm_159_while_identity_5"lstm_159/while/Identity_5:output:0"T
'lstm_159_while_lstm_159_strided_slice_1)lstm_159_while_lstm_159_strided_slice_1_0"~
<lstm_159_while_lstm_cell_210_biasadd_readvariableop_resource>lstm_159_while_lstm_cell_210_biasadd_readvariableop_resource_0"?
=lstm_159_while_lstm_cell_210_matmul_1_readvariableop_resource?lstm_159_while_lstm_cell_210_matmul_1_readvariableop_resource_0"|
;lstm_159_while_lstm_cell_210_matmul_readvariableop_resource=lstm_159_while_lstm_cell_210_matmul_readvariableop_resource_0"?
clstm_159_while_tensorarrayv2read_tensorlistgetitem_lstm_159_tensorarrayunstack_tensorlistfromtensorelstm_159_while_tensorarrayv2read_tensorlistgetitem_lstm_159_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_159/while/lstm_cell_210/BiasAdd/ReadVariableOp3lstm_159/while/lstm_cell_210/BiasAdd/ReadVariableOp2h
2lstm_159/while/lstm_cell_210/MatMul/ReadVariableOp2lstm_159/while/lstm_cell_210/MatMul/ReadVariableOp2l
4lstm_159/while/lstm_cell_210/MatMul_1/ReadVariableOp4lstm_159/while/lstm_cell_210/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_159_input;
 serving_default_lstm_159_input:0?????????<
dense_530
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
2dense_53/kernel
:2dense_53/bias
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
0:.	?2lstm_159/lstm_cell_159/kernel
::8	d?2'lstm_159/lstm_cell_159/recurrent_kernel
*:(?2lstm_159/lstm_cell_159/bias
0:.	d?2lstm_160/lstm_cell_160/kernel
::8	2?2'lstm_160/lstm_cell_160/recurrent_kernel
*:(?2lstm_160/lstm_cell_160/bias
/:-2(2lstm_161/lstm_cell_161/kernel
9:7
(2'lstm_161/lstm_cell_161/recurrent_kernel
):'(2lstm_161/lstm_cell_161/bias
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
2Adam/dense_53/kernel/m
 :2Adam/dense_53/bias/m
5:3	?2$Adam/lstm_159/lstm_cell_159/kernel/m
?:=	d?2.Adam/lstm_159/lstm_cell_159/recurrent_kernel/m
/:-?2"Adam/lstm_159/lstm_cell_159/bias/m
5:3	d?2$Adam/lstm_160/lstm_cell_160/kernel/m
?:=	2?2.Adam/lstm_160/lstm_cell_160/recurrent_kernel/m
/:-?2"Adam/lstm_160/lstm_cell_160/bias/m
4:22(2$Adam/lstm_161/lstm_cell_161/kernel/m
>:<
(2.Adam/lstm_161/lstm_cell_161/recurrent_kernel/m
.:,(2"Adam/lstm_161/lstm_cell_161/bias/m
&:$
2Adam/dense_53/kernel/v
 :2Adam/dense_53/bias/v
5:3	?2$Adam/lstm_159/lstm_cell_159/kernel/v
?:=	d?2.Adam/lstm_159/lstm_cell_159/recurrent_kernel/v
/:-?2"Adam/lstm_159/lstm_cell_159/bias/v
5:3	d?2$Adam/lstm_160/lstm_cell_160/kernel/v
?:=	2?2.Adam/lstm_160/lstm_cell_160/recurrent_kernel/v
/:-?2"Adam/lstm_160/lstm_cell_160/bias/v
4:22(2$Adam/lstm_161/lstm_cell_161/kernel/v
>:<
(2.Adam/lstm_161/lstm_cell_161/recurrent_kernel/v
.:,(2"Adam/lstm_161/lstm_cell_161/bias/v
?2?
/__inference_sequential_53_layer_call_fn_1284585
/__inference_sequential_53_layer_call_fn_1285323
/__inference_sequential_53_layer_call_fn_1285350
/__inference_sequential_53_layer_call_fn_1285201?
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
J__inference_sequential_53_layer_call_and_return_conditional_losses_1285777
J__inference_sequential_53_layer_call_and_return_conditional_losses_1286204
J__inference_sequential_53_layer_call_and_return_conditional_losses_1285231
J__inference_sequential_53_layer_call_and_return_conditional_losses_1285261?
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
"__inference__wrapped_model_1283036lstm_159_input"?
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
*__inference_lstm_159_layer_call_fn_1286215
*__inference_lstm_159_layer_call_fn_1286226
*__inference_lstm_159_layer_call_fn_1286237
*__inference_lstm_159_layer_call_fn_1286248?
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
E__inference_lstm_159_layer_call_and_return_conditional_losses_1286391
E__inference_lstm_159_layer_call_and_return_conditional_losses_1286534
E__inference_lstm_159_layer_call_and_return_conditional_losses_1286677
E__inference_lstm_159_layer_call_and_return_conditional_losses_1286820?
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
*__inference_lstm_160_layer_call_fn_1286831
*__inference_lstm_160_layer_call_fn_1286842
*__inference_lstm_160_layer_call_fn_1286853
*__inference_lstm_160_layer_call_fn_1286864?
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
E__inference_lstm_160_layer_call_and_return_conditional_losses_1287007
E__inference_lstm_160_layer_call_and_return_conditional_losses_1287150
E__inference_lstm_160_layer_call_and_return_conditional_losses_1287293
E__inference_lstm_160_layer_call_and_return_conditional_losses_1287436?
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
*__inference_lstm_161_layer_call_fn_1287447
*__inference_lstm_161_layer_call_fn_1287458
*__inference_lstm_161_layer_call_fn_1287469
*__inference_lstm_161_layer_call_fn_1287480?
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
E__inference_lstm_161_layer_call_and_return_conditional_losses_1287623
E__inference_lstm_161_layer_call_and_return_conditional_losses_1287766
E__inference_lstm_161_layer_call_and_return_conditional_losses_1287909
E__inference_lstm_161_layer_call_and_return_conditional_losses_1288052?
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
*__inference_dense_53_layer_call_fn_1288061?
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
E__inference_dense_53_layer_call_and_return_conditional_losses_1288071?
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
%__inference_signature_wrapper_1285296lstm_159_input"?
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
/__inference_lstm_cell_210_layer_call_fn_1288088
/__inference_lstm_cell_210_layer_call_fn_1288105?
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
J__inference_lstm_cell_210_layer_call_and_return_conditional_losses_1288137
J__inference_lstm_cell_210_layer_call_and_return_conditional_losses_1288169?
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
/__inference_lstm_cell_211_layer_call_fn_1288186
/__inference_lstm_cell_211_layer_call_fn_1288203?
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
J__inference_lstm_cell_211_layer_call_and_return_conditional_losses_1288235
J__inference_lstm_cell_211_layer_call_and_return_conditional_losses_1288267?
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
/__inference_lstm_cell_212_layer_call_fn_1288284
/__inference_lstm_cell_212_layer_call_fn_1288301?
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
J__inference_lstm_cell_212_layer_call_and_return_conditional_losses_1288333
J__inference_lstm_cell_212_layer_call_and_return_conditional_losses_1288365?
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
"__inference__wrapped_model_1283036-./012345!";?8
1?.
,?)
lstm_159_input?????????
? "3?0
.
dense_53"?
dense_53??????????
E__inference_dense_53_layer_call_and_return_conditional_losses_1288071\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_53_layer_call_fn_1288061O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_159_layer_call_and_return_conditional_losses_1286391?-./O?L
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
E__inference_lstm_159_layer_call_and_return_conditional_losses_1286534?-./O?L
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
E__inference_lstm_159_layer_call_and_return_conditional_losses_1286677q-./??<
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
E__inference_lstm_159_layer_call_and_return_conditional_losses_1286820q-./??<
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
*__inference_lstm_159_layer_call_fn_1286215}-./O?L
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
*__inference_lstm_159_layer_call_fn_1286226}-./O?L
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
*__inference_lstm_159_layer_call_fn_1286237d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_159_layer_call_fn_1286248d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_160_layer_call_and_return_conditional_losses_1287007?012O?L
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
E__inference_lstm_160_layer_call_and_return_conditional_losses_1287150?012O?L
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
E__inference_lstm_160_layer_call_and_return_conditional_losses_1287293q012??<
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
E__inference_lstm_160_layer_call_and_return_conditional_losses_1287436q012??<
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
*__inference_lstm_160_layer_call_fn_1286831}012O?L
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
*__inference_lstm_160_layer_call_fn_1286842}012O?L
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
*__inference_lstm_160_layer_call_fn_1286853d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_160_layer_call_fn_1286864d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_161_layer_call_and_return_conditional_losses_1287623}345O?L
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
E__inference_lstm_161_layer_call_and_return_conditional_losses_1287766}345O?L
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
E__inference_lstm_161_layer_call_and_return_conditional_losses_1287909m345??<
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
E__inference_lstm_161_layer_call_and_return_conditional_losses_1288052m345??<
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
*__inference_lstm_161_layer_call_fn_1287447p345O?L
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
*__inference_lstm_161_layer_call_fn_1287458p345O?L
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
*__inference_lstm_161_layer_call_fn_1287469`345??<
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
*__inference_lstm_161_layer_call_fn_1287480`345??<
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
J__inference_lstm_cell_210_layer_call_and_return_conditional_losses_1288137?-./??}
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
J__inference_lstm_cell_210_layer_call_and_return_conditional_losses_1288169?-./??}
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
/__inference_lstm_cell_210_layer_call_fn_1288088?-./??}
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
/__inference_lstm_cell_210_layer_call_fn_1288105?-./??}
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
J__inference_lstm_cell_211_layer_call_and_return_conditional_losses_1288235?012??}
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
J__inference_lstm_cell_211_layer_call_and_return_conditional_losses_1288267?012??}
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
/__inference_lstm_cell_211_layer_call_fn_1288186?012??}
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
/__inference_lstm_cell_211_layer_call_fn_1288203?012??}
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
J__inference_lstm_cell_212_layer_call_and_return_conditional_losses_1288333?345??}
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
J__inference_lstm_cell_212_layer_call_and_return_conditional_losses_1288365?345??}
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
/__inference_lstm_cell_212_layer_call_fn_1288284?345??}
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
/__inference_lstm_cell_212_layer_call_fn_1288301?345??}
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
J__inference_sequential_53_layer_call_and_return_conditional_losses_1285231y-./012345!"C?@
9?6
,?)
lstm_159_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_53_layer_call_and_return_conditional_losses_1285261y-./012345!"C?@
9?6
,?)
lstm_159_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_53_layer_call_and_return_conditional_losses_1285777q-./012345!";?8
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
J__inference_sequential_53_layer_call_and_return_conditional_losses_1286204q-./012345!";?8
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
/__inference_sequential_53_layer_call_fn_1284585l-./012345!"C?@
9?6
,?)
lstm_159_input?????????
p 

 
? "???????????
/__inference_sequential_53_layer_call_fn_1285201l-./012345!"C?@
9?6
,?)
lstm_159_input?????????
p

 
? "???????????
/__inference_sequential_53_layer_call_fn_1285323d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_53_layer_call_fn_1285350d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1285296?-./012345!"M?J
? 
C?@
>
lstm_159_input,?)
lstm_159_input?????????"3?0
.
dense_53"?
dense_53?????????