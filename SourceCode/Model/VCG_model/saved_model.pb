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
dense_86/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_86/kernel
s
#dense_86/kernel/Read/ReadVariableOpReadVariableOpdense_86/kernel*
_output_shapes

:
*
dtype0
r
dense_86/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_86/bias
k
!dense_86/bias/Read/ReadVariableOpReadVariableOpdense_86/bias*
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
lstm_258/lstm_cell_258/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_258/lstm_cell_258/kernel
?
1lstm_258/lstm_cell_258/kernel/Read/ReadVariableOpReadVariableOplstm_258/lstm_cell_258/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_258/lstm_cell_258/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_258/lstm_cell_258/recurrent_kernel
?
;lstm_258/lstm_cell_258/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_258/lstm_cell_258/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_258/lstm_cell_258/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_258/lstm_cell_258/bias
?
/lstm_258/lstm_cell_258/bias/Read/ReadVariableOpReadVariableOplstm_258/lstm_cell_258/bias*
_output_shapes	
:?*
dtype0
?
lstm_259/lstm_cell_259/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_259/lstm_cell_259/kernel
?
1lstm_259/lstm_cell_259/kernel/Read/ReadVariableOpReadVariableOplstm_259/lstm_cell_259/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_259/lstm_cell_259/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_259/lstm_cell_259/recurrent_kernel
?
;lstm_259/lstm_cell_259/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_259/lstm_cell_259/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_259/lstm_cell_259/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_259/lstm_cell_259/bias
?
/lstm_259/lstm_cell_259/bias/Read/ReadVariableOpReadVariableOplstm_259/lstm_cell_259/bias*
_output_shapes	
:?*
dtype0
?
lstm_260/lstm_cell_260/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_260/lstm_cell_260/kernel
?
1lstm_260/lstm_cell_260/kernel/Read/ReadVariableOpReadVariableOplstm_260/lstm_cell_260/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_260/lstm_cell_260/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_260/lstm_cell_260/recurrent_kernel
?
;lstm_260/lstm_cell_260/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_260/lstm_cell_260/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_260/lstm_cell_260/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_260/lstm_cell_260/bias
?
/lstm_260/lstm_cell_260/bias/Read/ReadVariableOpReadVariableOplstm_260/lstm_cell_260/bias*
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
Adam/dense_86/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_86/kernel/m
?
*Adam/dense_86/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_86/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_86/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_86/bias/m
y
(Adam/dense_86/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_86/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_258/lstm_cell_258/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_258/lstm_cell_258/kernel/m
?
8Adam/lstm_258/lstm_cell_258/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_258/lstm_cell_258/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_258/lstm_cell_258/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_258/lstm_cell_258/recurrent_kernel/m
?
BAdam/lstm_258/lstm_cell_258/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_258/lstm_cell_258/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_258/lstm_cell_258/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_258/lstm_cell_258/bias/m
?
6Adam/lstm_258/lstm_cell_258/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_258/lstm_cell_258/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_259/lstm_cell_259/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_259/lstm_cell_259/kernel/m
?
8Adam/lstm_259/lstm_cell_259/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_259/lstm_cell_259/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_259/lstm_cell_259/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_259/lstm_cell_259/recurrent_kernel/m
?
BAdam/lstm_259/lstm_cell_259/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_259/lstm_cell_259/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_259/lstm_cell_259/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_259/lstm_cell_259/bias/m
?
6Adam/lstm_259/lstm_cell_259/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_259/lstm_cell_259/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_260/lstm_cell_260/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_260/lstm_cell_260/kernel/m
?
8Adam/lstm_260/lstm_cell_260/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_260/lstm_cell_260/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_260/lstm_cell_260/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_260/lstm_cell_260/recurrent_kernel/m
?
BAdam/lstm_260/lstm_cell_260/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_260/lstm_cell_260/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_260/lstm_cell_260/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_260/lstm_cell_260/bias/m
?
6Adam/lstm_260/lstm_cell_260/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_260/lstm_cell_260/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_86/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_86/kernel/v
?
*Adam/dense_86/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_86/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_86/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_86/bias/v
y
(Adam/dense_86/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_86/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_258/lstm_cell_258/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_258/lstm_cell_258/kernel/v
?
8Adam/lstm_258/lstm_cell_258/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_258/lstm_cell_258/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_258/lstm_cell_258/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_258/lstm_cell_258/recurrent_kernel/v
?
BAdam/lstm_258/lstm_cell_258/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_258/lstm_cell_258/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_258/lstm_cell_258/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_258/lstm_cell_258/bias/v
?
6Adam/lstm_258/lstm_cell_258/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_258/lstm_cell_258/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_259/lstm_cell_259/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_259/lstm_cell_259/kernel/v
?
8Adam/lstm_259/lstm_cell_259/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_259/lstm_cell_259/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_259/lstm_cell_259/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_259/lstm_cell_259/recurrent_kernel/v
?
BAdam/lstm_259/lstm_cell_259/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_259/lstm_cell_259/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_259/lstm_cell_259/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_259/lstm_cell_259/bias/v
?
6Adam/lstm_259/lstm_cell_259/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_259/lstm_cell_259/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_260/lstm_cell_260/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_260/lstm_cell_260/kernel/v
?
8Adam/lstm_260/lstm_cell_260/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_260/lstm_cell_260/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_260/lstm_cell_260/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_260/lstm_cell_260/recurrent_kernel/v
?
BAdam/lstm_260/lstm_cell_260/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_260/lstm_cell_260/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_260/lstm_cell_260/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_260/lstm_cell_260/bias/v
?
6Adam/lstm_260/lstm_cell_260/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_260/lstm_cell_260/bias/v*
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
VARIABLE_VALUEdense_86/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_86/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_258/lstm_cell_258/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_258/lstm_cell_258/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_258/lstm_cell_258/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_259/lstm_cell_259/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_259/lstm_cell_259/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_259/lstm_cell_259/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_260/lstm_cell_260/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_260/lstm_cell_260/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_260/lstm_cell_260/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_86/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_86/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_258/lstm_cell_258/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_258/lstm_cell_258/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_258/lstm_cell_258/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_259/lstm_cell_259/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_259/lstm_cell_259/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_259/lstm_cell_259/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_260/lstm_cell_260/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_260/lstm_cell_260/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_260/lstm_cell_260/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_86/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_86/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_258/lstm_cell_258/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_258/lstm_cell_258/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_258/lstm_cell_258/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_259/lstm_cell_259/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_259/lstm_cell_259/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_259/lstm_cell_259/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_260/lstm_cell_260/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_260/lstm_cell_260/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_260/lstm_cell_260/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_258_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_258_inputlstm_258/lstm_cell_258/kernel'lstm_258/lstm_cell_258/recurrent_kernellstm_258/lstm_cell_258/biaslstm_259/lstm_cell_259/kernel'lstm_259/lstm_cell_259/recurrent_kernellstm_259/lstm_cell_259/biaslstm_260/lstm_cell_260/kernel'lstm_260/lstm_cell_260/recurrent_kernellstm_260/lstm_cell_260/biasdense_86/kerneldense_86/bias*
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
%__inference_signature_wrapper_3153211
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_86/kernel/Read/ReadVariableOp!dense_86/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_258/lstm_cell_258/kernel/Read/ReadVariableOp;lstm_258/lstm_cell_258/recurrent_kernel/Read/ReadVariableOp/lstm_258/lstm_cell_258/bias/Read/ReadVariableOp1lstm_259/lstm_cell_259/kernel/Read/ReadVariableOp;lstm_259/lstm_cell_259/recurrent_kernel/Read/ReadVariableOp/lstm_259/lstm_cell_259/bias/Read/ReadVariableOp1lstm_260/lstm_cell_260/kernel/Read/ReadVariableOp;lstm_260/lstm_cell_260/recurrent_kernel/Read/ReadVariableOp/lstm_260/lstm_cell_260/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_86/kernel/m/Read/ReadVariableOp(Adam/dense_86/bias/m/Read/ReadVariableOp8Adam/lstm_258/lstm_cell_258/kernel/m/Read/ReadVariableOpBAdam/lstm_258/lstm_cell_258/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_258/lstm_cell_258/bias/m/Read/ReadVariableOp8Adam/lstm_259/lstm_cell_259/kernel/m/Read/ReadVariableOpBAdam/lstm_259/lstm_cell_259/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_259/lstm_cell_259/bias/m/Read/ReadVariableOp8Adam/lstm_260/lstm_cell_260/kernel/m/Read/ReadVariableOpBAdam/lstm_260/lstm_cell_260/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_260/lstm_cell_260/bias/m/Read/ReadVariableOp*Adam/dense_86/kernel/v/Read/ReadVariableOp(Adam/dense_86/bias/v/Read/ReadVariableOp8Adam/lstm_258/lstm_cell_258/kernel/v/Read/ReadVariableOpBAdam/lstm_258/lstm_cell_258/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_258/lstm_cell_258/bias/v/Read/ReadVariableOp8Adam/lstm_259/lstm_cell_259/kernel/v/Read/ReadVariableOpBAdam/lstm_259/lstm_cell_259/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_259/lstm_cell_259/bias/v/Read/ReadVariableOp8Adam/lstm_260/lstm_cell_260/kernel/v/Read/ReadVariableOpBAdam/lstm_260/lstm_cell_260/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_260/lstm_cell_260/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3156423
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_86/kerneldense_86/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_258/lstm_cell_258/kernel'lstm_258/lstm_cell_258/recurrent_kernellstm_258/lstm_cell_258/biaslstm_259/lstm_cell_259/kernel'lstm_259/lstm_cell_259/recurrent_kernellstm_259/lstm_cell_259/biaslstm_260/lstm_cell_260/kernel'lstm_260/lstm_cell_260/recurrent_kernellstm_260/lstm_cell_260/biastotalcountAdam/dense_86/kernel/mAdam/dense_86/bias/m$Adam/lstm_258/lstm_cell_258/kernel/m.Adam/lstm_258/lstm_cell_258/recurrent_kernel/m"Adam/lstm_258/lstm_cell_258/bias/m$Adam/lstm_259/lstm_cell_259/kernel/m.Adam/lstm_259/lstm_cell_259/recurrent_kernel/m"Adam/lstm_259/lstm_cell_259/bias/m$Adam/lstm_260/lstm_cell_260/kernel/m.Adam/lstm_260/lstm_cell_260/recurrent_kernel/m"Adam/lstm_260/lstm_cell_260/bias/mAdam/dense_86/kernel/vAdam/dense_86/bias/v$Adam/lstm_258/lstm_cell_258/kernel/v.Adam/lstm_258/lstm_cell_258/recurrent_kernel/v"Adam/lstm_258/lstm_cell_258/bias/v$Adam/lstm_259/lstm_cell_259/kernel/v.Adam/lstm_259/lstm_cell_259/recurrent_kernel/v"Adam/lstm_259/lstm_cell_259/bias/v$Adam/lstm_260/lstm_cell_260/kernel/v.Adam/lstm_260/lstm_cell_260/recurrent_kernel/v"Adam/lstm_260/lstm_cell_260/bias/v*4
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
#__inference__traced_restore_3156553??+
?S
?
)sequential_86_lstm_258_while_body_3150583J
Fsequential_86_lstm_258_while_sequential_86_lstm_258_while_loop_counterP
Lsequential_86_lstm_258_while_sequential_86_lstm_258_while_maximum_iterations,
(sequential_86_lstm_258_while_placeholder.
*sequential_86_lstm_258_while_placeholder_1.
*sequential_86_lstm_258_while_placeholder_2.
*sequential_86_lstm_258_while_placeholder_3I
Esequential_86_lstm_258_while_sequential_86_lstm_258_strided_slice_1_0?
?sequential_86_lstm_258_while_tensorarrayv2read_tensorlistgetitem_sequential_86_lstm_258_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_86_lstm_258_while_lstm_cell_519_matmul_readvariableop_resource_0:	?`
Msequential_86_lstm_258_while_lstm_cell_519_matmul_1_readvariableop_resource_0:	d?[
Lsequential_86_lstm_258_while_lstm_cell_519_biasadd_readvariableop_resource_0:	?)
%sequential_86_lstm_258_while_identity+
'sequential_86_lstm_258_while_identity_1+
'sequential_86_lstm_258_while_identity_2+
'sequential_86_lstm_258_while_identity_3+
'sequential_86_lstm_258_while_identity_4+
'sequential_86_lstm_258_while_identity_5G
Csequential_86_lstm_258_while_sequential_86_lstm_258_strided_slice_1?
sequential_86_lstm_258_while_tensorarrayv2read_tensorlistgetitem_sequential_86_lstm_258_tensorarrayunstack_tensorlistfromtensor\
Isequential_86_lstm_258_while_lstm_cell_519_matmul_readvariableop_resource:	?^
Ksequential_86_lstm_258_while_lstm_cell_519_matmul_1_readvariableop_resource:	d?Y
Jsequential_86_lstm_258_while_lstm_cell_519_biasadd_readvariableop_resource:	???Asequential_86/lstm_258/while/lstm_cell_519/BiasAdd/ReadVariableOp?@sequential_86/lstm_258/while/lstm_cell_519/MatMul/ReadVariableOp?Bsequential_86/lstm_258/while/lstm_cell_519/MatMul_1/ReadVariableOp?
Nsequential_86/lstm_258/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_86/lstm_258/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_86_lstm_258_while_tensorarrayv2read_tensorlistgetitem_sequential_86_lstm_258_tensorarrayunstack_tensorlistfromtensor_0(sequential_86_lstm_258_while_placeholderWsequential_86/lstm_258/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_86/lstm_258/while/lstm_cell_519/MatMul/ReadVariableOpReadVariableOpKsequential_86_lstm_258_while_lstm_cell_519_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_86/lstm_258/while/lstm_cell_519/MatMulMatMulGsequential_86/lstm_258/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_86/lstm_258/while/lstm_cell_519/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_86/lstm_258/while/lstm_cell_519/MatMul_1/ReadVariableOpReadVariableOpMsequential_86_lstm_258_while_lstm_cell_519_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_86/lstm_258/while/lstm_cell_519/MatMul_1MatMul*sequential_86_lstm_258_while_placeholder_2Jsequential_86/lstm_258/while/lstm_cell_519/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_86/lstm_258/while/lstm_cell_519/addAddV2;sequential_86/lstm_258/while/lstm_cell_519/MatMul:product:0=sequential_86/lstm_258/while/lstm_cell_519/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_86/lstm_258/while/lstm_cell_519/BiasAdd/ReadVariableOpReadVariableOpLsequential_86_lstm_258_while_lstm_cell_519_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_86/lstm_258/while/lstm_cell_519/BiasAddBiasAdd2sequential_86/lstm_258/while/lstm_cell_519/add:z:0Isequential_86/lstm_258/while/lstm_cell_519/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_86/lstm_258/while/lstm_cell_519/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_86/lstm_258/while/lstm_cell_519/splitSplitCsequential_86/lstm_258/while/lstm_cell_519/split/split_dim:output:0;sequential_86/lstm_258/while/lstm_cell_519/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_86/lstm_258/while/lstm_cell_519/SigmoidSigmoid9sequential_86/lstm_258/while/lstm_cell_519/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_86/lstm_258/while/lstm_cell_519/Sigmoid_1Sigmoid9sequential_86/lstm_258/while/lstm_cell_519/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_86/lstm_258/while/lstm_cell_519/mulMul8sequential_86/lstm_258/while/lstm_cell_519/Sigmoid_1:y:0*sequential_86_lstm_258_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_86/lstm_258/while/lstm_cell_519/ReluRelu9sequential_86/lstm_258/while/lstm_cell_519/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_86/lstm_258/while/lstm_cell_519/mul_1Mul6sequential_86/lstm_258/while/lstm_cell_519/Sigmoid:y:0=sequential_86/lstm_258/while/lstm_cell_519/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_86/lstm_258/while/lstm_cell_519/add_1AddV22sequential_86/lstm_258/while/lstm_cell_519/mul:z:04sequential_86/lstm_258/while/lstm_cell_519/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_86/lstm_258/while/lstm_cell_519/Sigmoid_2Sigmoid9sequential_86/lstm_258/while/lstm_cell_519/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_86/lstm_258/while/lstm_cell_519/Relu_1Relu4sequential_86/lstm_258/while/lstm_cell_519/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_86/lstm_258/while/lstm_cell_519/mul_2Mul8sequential_86/lstm_258/while/lstm_cell_519/Sigmoid_2:y:0?sequential_86/lstm_258/while/lstm_cell_519/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_86/lstm_258/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_86_lstm_258_while_placeholder_1(sequential_86_lstm_258_while_placeholder4sequential_86/lstm_258/while/lstm_cell_519/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_86/lstm_258/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_86/lstm_258/while/addAddV2(sequential_86_lstm_258_while_placeholder+sequential_86/lstm_258/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_86/lstm_258/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_86/lstm_258/while/add_1AddV2Fsequential_86_lstm_258_while_sequential_86_lstm_258_while_loop_counter-sequential_86/lstm_258/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_86/lstm_258/while/IdentityIdentity&sequential_86/lstm_258/while/add_1:z:0"^sequential_86/lstm_258/while/NoOp*
T0*
_output_shapes
: ?
'sequential_86/lstm_258/while/Identity_1IdentityLsequential_86_lstm_258_while_sequential_86_lstm_258_while_maximum_iterations"^sequential_86/lstm_258/while/NoOp*
T0*
_output_shapes
: ?
'sequential_86/lstm_258/while/Identity_2Identity$sequential_86/lstm_258/while/add:z:0"^sequential_86/lstm_258/while/NoOp*
T0*
_output_shapes
: ?
'sequential_86/lstm_258/while/Identity_3IdentityQsequential_86/lstm_258/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_86/lstm_258/while/NoOp*
T0*
_output_shapes
: ?
'sequential_86/lstm_258/while/Identity_4Identity4sequential_86/lstm_258/while/lstm_cell_519/mul_2:z:0"^sequential_86/lstm_258/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_86/lstm_258/while/Identity_5Identity4sequential_86/lstm_258/while/lstm_cell_519/add_1:z:0"^sequential_86/lstm_258/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_86/lstm_258/while/NoOpNoOpB^sequential_86/lstm_258/while/lstm_cell_519/BiasAdd/ReadVariableOpA^sequential_86/lstm_258/while/lstm_cell_519/MatMul/ReadVariableOpC^sequential_86/lstm_258/while/lstm_cell_519/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_86_lstm_258_while_identity.sequential_86/lstm_258/while/Identity:output:0"[
'sequential_86_lstm_258_while_identity_10sequential_86/lstm_258/while/Identity_1:output:0"[
'sequential_86_lstm_258_while_identity_20sequential_86/lstm_258/while/Identity_2:output:0"[
'sequential_86_lstm_258_while_identity_30sequential_86/lstm_258/while/Identity_3:output:0"[
'sequential_86_lstm_258_while_identity_40sequential_86/lstm_258/while/Identity_4:output:0"[
'sequential_86_lstm_258_while_identity_50sequential_86/lstm_258/while/Identity_5:output:0"?
Jsequential_86_lstm_258_while_lstm_cell_519_biasadd_readvariableop_resourceLsequential_86_lstm_258_while_lstm_cell_519_biasadd_readvariableop_resource_0"?
Ksequential_86_lstm_258_while_lstm_cell_519_matmul_1_readvariableop_resourceMsequential_86_lstm_258_while_lstm_cell_519_matmul_1_readvariableop_resource_0"?
Isequential_86_lstm_258_while_lstm_cell_519_matmul_readvariableop_resourceKsequential_86_lstm_258_while_lstm_cell_519_matmul_readvariableop_resource_0"?
Csequential_86_lstm_258_while_sequential_86_lstm_258_strided_slice_1Esequential_86_lstm_258_while_sequential_86_lstm_258_strided_slice_1_0"?
sequential_86_lstm_258_while_tensorarrayv2read_tensorlistgetitem_sequential_86_lstm_258_tensorarrayunstack_tensorlistfromtensor?sequential_86_lstm_258_while_tensorarrayv2read_tensorlistgetitem_sequential_86_lstm_258_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_86/lstm_258/while/lstm_cell_519/BiasAdd/ReadVariableOpAsequential_86/lstm_258/while/lstm_cell_519/BiasAdd/ReadVariableOp2?
@sequential_86/lstm_258/while/lstm_cell_519/MatMul/ReadVariableOp@sequential_86/lstm_258/while/lstm_cell_519/MatMul/ReadVariableOp2?
Bsequential_86/lstm_258/while/lstm_cell_519/MatMul_1/ReadVariableOpBsequential_86/lstm_258/while/lstm_cell_519/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_258_layer_call_and_return_conditional_losses_3154592

inputs?
,lstm_cell_519_matmul_readvariableop_resource:	?A
.lstm_cell_519_matmul_1_readvariableop_resource:	d?<
-lstm_cell_519_biasadd_readvariableop_resource:	?
identity??$lstm_cell_519/BiasAdd/ReadVariableOp?#lstm_cell_519/MatMul/ReadVariableOp?%lstm_cell_519/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_519/MatMul/ReadVariableOpReadVariableOp,lstm_cell_519_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_519/MatMulMatMulstrided_slice_2:output:0+lstm_cell_519/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_519/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_519_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_519/MatMul_1MatMulzeros:output:0-lstm_cell_519/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_519/addAddV2lstm_cell_519/MatMul:product:0 lstm_cell_519/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_519/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_519_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_519/BiasAddBiasAddlstm_cell_519/add:z:0,lstm_cell_519/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_519/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_519/splitSplit&lstm_cell_519/split/split_dim:output:0lstm_cell_519/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_519/SigmoidSigmoidlstm_cell_519/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_519/Sigmoid_1Sigmoidlstm_cell_519/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_519/mulMullstm_cell_519/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_519/ReluRelulstm_cell_519/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_519/mul_1Mullstm_cell_519/Sigmoid:y:0 lstm_cell_519/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_519/add_1AddV2lstm_cell_519/mul:z:0lstm_cell_519/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_519/Sigmoid_2Sigmoidlstm_cell_519/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_519/Relu_1Relulstm_cell_519/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_519/mul_2Mullstm_cell_519/Sigmoid_2:y:0"lstm_cell_519/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_519_matmul_readvariableop_resource.lstm_cell_519_matmul_1_readvariableop_resource-lstm_cell_519_biasadd_readvariableop_resource*
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
while_body_3154508*
condR
while_cond_3154507*K
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
NoOpNoOp%^lstm_cell_519/BiasAdd/ReadVariableOp$^lstm_cell_519/MatMul/ReadVariableOp&^lstm_cell_519/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_519/BiasAdd/ReadVariableOp$lstm_cell_519/BiasAdd/ReadVariableOp2J
#lstm_cell_519/MatMul/ReadVariableOp#lstm_cell_519/MatMul/ReadVariableOp2N
%lstm_cell_519/MatMul_1/ReadVariableOp%lstm_cell_519/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_521_layer_call_and_return_conditional_losses_3151864

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
E__inference_lstm_260_layer_call_and_return_conditional_losses_3155824

inputs>
,lstm_cell_521_matmul_readvariableop_resource:2(@
.lstm_cell_521_matmul_1_readvariableop_resource:
(;
-lstm_cell_521_biasadd_readvariableop_resource:(
identity??$lstm_cell_521/BiasAdd/ReadVariableOp?#lstm_cell_521/MatMul/ReadVariableOp?%lstm_cell_521/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_521/MatMul/ReadVariableOpReadVariableOp,lstm_cell_521_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_521/MatMulMatMulstrided_slice_2:output:0+lstm_cell_521/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_521/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_521_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_521/MatMul_1MatMulzeros:output:0-lstm_cell_521/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_521/addAddV2lstm_cell_521/MatMul:product:0 lstm_cell_521/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_521/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_521_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_521/BiasAddBiasAddlstm_cell_521/add:z:0,lstm_cell_521/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_521/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_521/splitSplit&lstm_cell_521/split/split_dim:output:0lstm_cell_521/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_521/SigmoidSigmoidlstm_cell_521/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_521/Sigmoid_1Sigmoidlstm_cell_521/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_521/mulMullstm_cell_521/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_521/ReluRelulstm_cell_521/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_521/mul_1Mullstm_cell_521/Sigmoid:y:0 lstm_cell_521/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_521/add_1AddV2lstm_cell_521/mul:z:0lstm_cell_521/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_521/Sigmoid_2Sigmoidlstm_cell_521/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_521/Relu_1Relulstm_cell_521/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_521/mul_2Mullstm_cell_521/Sigmoid_2:y:0"lstm_cell_521/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_521_matmul_readvariableop_resource.lstm_cell_521_matmul_1_readvariableop_resource-lstm_cell_521_biasadd_readvariableop_resource*
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
while_body_3155740*
condR
while_cond_3155739*K
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
NoOpNoOp%^lstm_cell_521/BiasAdd/ReadVariableOp$^lstm_cell_521/MatMul/ReadVariableOp&^lstm_cell_521/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_521/BiasAdd/ReadVariableOp$lstm_cell_521/BiasAdd/ReadVariableOp2J
#lstm_cell_521/MatMul/ReadVariableOp#lstm_cell_521/MatMul/ReadVariableOp2N
%lstm_cell_521/MatMul_1/ReadVariableOp%lstm_cell_521/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_259_layer_call_and_return_conditional_losses_3152831

inputs?
,lstm_cell_520_matmul_readvariableop_resource:	d?A
.lstm_cell_520_matmul_1_readvariableop_resource:	2?<
-lstm_cell_520_biasadd_readvariableop_resource:	?
identity??$lstm_cell_520/BiasAdd/ReadVariableOp?#lstm_cell_520/MatMul/ReadVariableOp?%lstm_cell_520/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_520/MatMul/ReadVariableOpReadVariableOp,lstm_cell_520_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_520/MatMulMatMulstrided_slice_2:output:0+lstm_cell_520/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_520/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_520_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_520/MatMul_1MatMulzeros:output:0-lstm_cell_520/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_520/addAddV2lstm_cell_520/MatMul:product:0 lstm_cell_520/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_520/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_520_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_520/BiasAddBiasAddlstm_cell_520/add:z:0,lstm_cell_520/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_520/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_520/splitSplit&lstm_cell_520/split/split_dim:output:0lstm_cell_520/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_520/SigmoidSigmoidlstm_cell_520/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_520/Sigmoid_1Sigmoidlstm_cell_520/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_520/mulMullstm_cell_520/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_520/ReluRelulstm_cell_520/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_520/mul_1Mullstm_cell_520/Sigmoid:y:0 lstm_cell_520/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_520/add_1AddV2lstm_cell_520/mul:z:0lstm_cell_520/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_520/Sigmoid_2Sigmoidlstm_cell_520/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_520/Relu_1Relulstm_cell_520/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_520/mul_2Mullstm_cell_520/Sigmoid_2:y:0"lstm_cell_520/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_520_matmul_readvariableop_resource.lstm_cell_520_matmul_1_readvariableop_resource-lstm_cell_520_biasadd_readvariableop_resource*
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
while_body_3152747*
condR
while_cond_3152746*K
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
NoOpNoOp%^lstm_cell_520/BiasAdd/ReadVariableOp$^lstm_cell_520/MatMul/ReadVariableOp&^lstm_cell_520/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_520/BiasAdd/ReadVariableOp$lstm_cell_520/BiasAdd/ReadVariableOp2J
#lstm_cell_520/MatMul/ReadVariableOp#lstm_cell_520/MatMul/ReadVariableOp2N
%lstm_cell_520/MatMul_1/ReadVariableOp%lstm_cell_520/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_3155267
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_520_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_520_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_520_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_520_matmul_readvariableop_resource:	d?G
4while_lstm_cell_520_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_520_biasadd_readvariableop_resource:	???*while/lstm_cell_520/BiasAdd/ReadVariableOp?)while/lstm_cell_520/MatMul/ReadVariableOp?+while/lstm_cell_520/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_520/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_520_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_520/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_520/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_520/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_520_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_520/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_520/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_520/addAddV2$while/lstm_cell_520/MatMul:product:0&while/lstm_cell_520/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_520/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_520_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_520/BiasAddBiasAddwhile/lstm_cell_520/add:z:02while/lstm_cell_520/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_520/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_520/splitSplit,while/lstm_cell_520/split/split_dim:output:0$while/lstm_cell_520/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_520/SigmoidSigmoid"while/lstm_cell_520/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_520/Sigmoid_1Sigmoid"while/lstm_cell_520/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_520/mulMul!while/lstm_cell_520/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_520/ReluRelu"while/lstm_cell_520/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_520/mul_1Mulwhile/lstm_cell_520/Sigmoid:y:0&while/lstm_cell_520/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_520/add_1AddV2while/lstm_cell_520/mul:z:0while/lstm_cell_520/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_520/Sigmoid_2Sigmoid"while/lstm_cell_520/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_520/Relu_1Reluwhile/lstm_cell_520/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_520/mul_2Mul!while/lstm_cell_520/Sigmoid_2:y:0(while/lstm_cell_520/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_520/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_520/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_520/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_520/BiasAdd/ReadVariableOp*^while/lstm_cell_520/MatMul/ReadVariableOp,^while/lstm_cell_520/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_520_biasadd_readvariableop_resource5while_lstm_cell_520_biasadd_readvariableop_resource_0"n
4while_lstm_cell_520_matmul_1_readvariableop_resource6while_lstm_cell_520_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_520_matmul_readvariableop_resource4while_lstm_cell_520_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_520/BiasAdd/ReadVariableOp*while/lstm_cell_520/BiasAdd/ReadVariableOp2V
)while/lstm_cell_520/MatMul/ReadVariableOp)while/lstm_cell_520/MatMul/ReadVariableOp2Z
+while/lstm_cell_520/MatMul_1/ReadVariableOp+while/lstm_cell_520/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3151382
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_520_3151406_0:	d?0
while_lstm_cell_520_3151408_0:	2?,
while_lstm_cell_520_3151410_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_520_3151406:	d?.
while_lstm_cell_520_3151408:	2?*
while_lstm_cell_520_3151410:	???+while/lstm_cell_520/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_520/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_520_3151406_0while_lstm_cell_520_3151408_0while_lstm_cell_520_3151410_0*
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
J__inference_lstm_cell_520_layer_call_and_return_conditional_losses_3151368?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_520/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_520/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_520/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_520/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_520_3151406while_lstm_cell_520_3151406_0"<
while_lstm_cell_520_3151408while_lstm_cell_520_3151408_0"<
while_lstm_cell_520_3151410while_lstm_cell_520_3151410_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_520/StatefulPartitionedCall+while/lstm_cell_520/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3152746
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3152746___redundant_placeholder05
1while_while_cond_3152746___redundant_placeholder15
1while_while_cond_3152746___redundant_placeholder25
1while_while_cond_3152746___redundant_placeholder3
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
while_body_3152066
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_519_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_519_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_519_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_519_matmul_readvariableop_resource:	?G
4while_lstm_cell_519_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_519_biasadd_readvariableop_resource:	???*while/lstm_cell_519/BiasAdd/ReadVariableOp?)while/lstm_cell_519/MatMul/ReadVariableOp?+while/lstm_cell_519/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_519/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_519_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_519/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_519/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_519/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_519_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_519/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_519/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_519/addAddV2$while/lstm_cell_519/MatMul:product:0&while/lstm_cell_519/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_519/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_519_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_519/BiasAddBiasAddwhile/lstm_cell_519/add:z:02while/lstm_cell_519/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_519/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_519/splitSplit,while/lstm_cell_519/split/split_dim:output:0$while/lstm_cell_519/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_519/SigmoidSigmoid"while/lstm_cell_519/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_519/Sigmoid_1Sigmoid"while/lstm_cell_519/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_519/mulMul!while/lstm_cell_519/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_519/ReluRelu"while/lstm_cell_519/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_519/mul_1Mulwhile/lstm_cell_519/Sigmoid:y:0&while/lstm_cell_519/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_519/add_1AddV2while/lstm_cell_519/mul:z:0while/lstm_cell_519/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_519/Sigmoid_2Sigmoid"while/lstm_cell_519/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_519/Relu_1Reluwhile/lstm_cell_519/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_519/mul_2Mul!while/lstm_cell_519/Sigmoid_2:y:0(while/lstm_cell_519/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_519/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_519/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_519/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_519/BiasAdd/ReadVariableOp*^while/lstm_cell_519/MatMul/ReadVariableOp,^while/lstm_cell_519/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_519_biasadd_readvariableop_resource5while_lstm_cell_519_biasadd_readvariableop_resource_0"n
4while_lstm_cell_519_matmul_1_readvariableop_resource6while_lstm_cell_519_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_519_matmul_readvariableop_resource4while_lstm_cell_519_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_519/BiasAdd/ReadVariableOp*while/lstm_cell_519/BiasAdd/ReadVariableOp2V
)while/lstm_cell_519/MatMul/ReadVariableOp)while/lstm_cell_519/MatMul/ReadVariableOp2Z
+while/lstm_cell_519/MatMul_1/ReadVariableOp+while/lstm_cell_519/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3154981
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_520_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_520_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_520_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_520_matmul_readvariableop_resource:	d?G
4while_lstm_cell_520_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_520_biasadd_readvariableop_resource:	???*while/lstm_cell_520/BiasAdd/ReadVariableOp?)while/lstm_cell_520/MatMul/ReadVariableOp?+while/lstm_cell_520/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_520/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_520_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_520/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_520/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_520/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_520_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_520/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_520/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_520/addAddV2$while/lstm_cell_520/MatMul:product:0&while/lstm_cell_520/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_520/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_520_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_520/BiasAddBiasAddwhile/lstm_cell_520/add:z:02while/lstm_cell_520/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_520/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_520/splitSplit,while/lstm_cell_520/split/split_dim:output:0$while/lstm_cell_520/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_520/SigmoidSigmoid"while/lstm_cell_520/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_520/Sigmoid_1Sigmoid"while/lstm_cell_520/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_520/mulMul!while/lstm_cell_520/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_520/ReluRelu"while/lstm_cell_520/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_520/mul_1Mulwhile/lstm_cell_520/Sigmoid:y:0&while/lstm_cell_520/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_520/add_1AddV2while/lstm_cell_520/mul:z:0while/lstm_cell_520/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_520/Sigmoid_2Sigmoid"while/lstm_cell_520/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_520/Relu_1Reluwhile/lstm_cell_520/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_520/mul_2Mul!while/lstm_cell_520/Sigmoid_2:y:0(while/lstm_cell_520/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_520/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_520/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_520/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_520/BiasAdd/ReadVariableOp*^while/lstm_cell_520/MatMul/ReadVariableOp,^while/lstm_cell_520/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_520_biasadd_readvariableop_resource5while_lstm_cell_520_biasadd_readvariableop_resource_0"n
4while_lstm_cell_520_matmul_1_readvariableop_resource6while_lstm_cell_520_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_520_matmul_readvariableop_resource4while_lstm_cell_520_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_520/BiasAdd/ReadVariableOp*while/lstm_cell_520/BiasAdd/ReadVariableOp2V
)while/lstm_cell_520/MatMul/ReadVariableOp)while/lstm_cell_520/MatMul/ReadVariableOp2Z
+while/lstm_cell_520/MatMul_1/ReadVariableOp+while/lstm_cell_520/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

?
%__inference_signature_wrapper_3153211
lstm_258_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_258_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3150951o
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
_user_specified_namelstm_258_input
?
?
J__inference_lstm_cell_520_layer_call_and_return_conditional_losses_3156182

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
lstm_259_while_cond_3153889.
*lstm_259_while_lstm_259_while_loop_counter4
0lstm_259_while_lstm_259_while_maximum_iterations
lstm_259_while_placeholder 
lstm_259_while_placeholder_1 
lstm_259_while_placeholder_2 
lstm_259_while_placeholder_30
,lstm_259_while_less_lstm_259_strided_slice_1G
Clstm_259_while_lstm_259_while_cond_3153889___redundant_placeholder0G
Clstm_259_while_lstm_259_while_cond_3153889___redundant_placeholder1G
Clstm_259_while_lstm_259_while_cond_3153889___redundant_placeholder2G
Clstm_259_while_lstm_259_while_cond_3153889___redundant_placeholder3
lstm_259_while_identity
?
lstm_259/while/LessLesslstm_259_while_placeholder,lstm_259_while_less_lstm_259_strided_slice_1*
T0*
_output_shapes
: ]
lstm_259/while/IdentityIdentitylstm_259/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_259_while_identity lstm_259/while/Identity:output:0*(
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

lstm_258_while_body_3153324.
*lstm_258_while_lstm_258_while_loop_counter4
0lstm_258_while_lstm_258_while_maximum_iterations
lstm_258_while_placeholder 
lstm_258_while_placeholder_1 
lstm_258_while_placeholder_2 
lstm_258_while_placeholder_3-
)lstm_258_while_lstm_258_strided_slice_1_0i
elstm_258_while_tensorarrayv2read_tensorlistgetitem_lstm_258_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_258_while_lstm_cell_519_matmul_readvariableop_resource_0:	?R
?lstm_258_while_lstm_cell_519_matmul_1_readvariableop_resource_0:	d?M
>lstm_258_while_lstm_cell_519_biasadd_readvariableop_resource_0:	?
lstm_258_while_identity
lstm_258_while_identity_1
lstm_258_while_identity_2
lstm_258_while_identity_3
lstm_258_while_identity_4
lstm_258_while_identity_5+
'lstm_258_while_lstm_258_strided_slice_1g
clstm_258_while_tensorarrayv2read_tensorlistgetitem_lstm_258_tensorarrayunstack_tensorlistfromtensorN
;lstm_258_while_lstm_cell_519_matmul_readvariableop_resource:	?P
=lstm_258_while_lstm_cell_519_matmul_1_readvariableop_resource:	d?K
<lstm_258_while_lstm_cell_519_biasadd_readvariableop_resource:	???3lstm_258/while/lstm_cell_519/BiasAdd/ReadVariableOp?2lstm_258/while/lstm_cell_519/MatMul/ReadVariableOp?4lstm_258/while/lstm_cell_519/MatMul_1/ReadVariableOp?
@lstm_258/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_258/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_258_while_tensorarrayv2read_tensorlistgetitem_lstm_258_tensorarrayunstack_tensorlistfromtensor_0lstm_258_while_placeholderIlstm_258/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_258/while/lstm_cell_519/MatMul/ReadVariableOpReadVariableOp=lstm_258_while_lstm_cell_519_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_258/while/lstm_cell_519/MatMulMatMul9lstm_258/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_258/while/lstm_cell_519/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_258/while/lstm_cell_519/MatMul_1/ReadVariableOpReadVariableOp?lstm_258_while_lstm_cell_519_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_258/while/lstm_cell_519/MatMul_1MatMullstm_258_while_placeholder_2<lstm_258/while/lstm_cell_519/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_258/while/lstm_cell_519/addAddV2-lstm_258/while/lstm_cell_519/MatMul:product:0/lstm_258/while/lstm_cell_519/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_258/while/lstm_cell_519/BiasAdd/ReadVariableOpReadVariableOp>lstm_258_while_lstm_cell_519_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_258/while/lstm_cell_519/BiasAddBiasAdd$lstm_258/while/lstm_cell_519/add:z:0;lstm_258/while/lstm_cell_519/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_258/while/lstm_cell_519/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_258/while/lstm_cell_519/splitSplit5lstm_258/while/lstm_cell_519/split/split_dim:output:0-lstm_258/while/lstm_cell_519/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_258/while/lstm_cell_519/SigmoidSigmoid+lstm_258/while/lstm_cell_519/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_258/while/lstm_cell_519/Sigmoid_1Sigmoid+lstm_258/while/lstm_cell_519/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_258/while/lstm_cell_519/mulMul*lstm_258/while/lstm_cell_519/Sigmoid_1:y:0lstm_258_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_258/while/lstm_cell_519/ReluRelu+lstm_258/while/lstm_cell_519/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_258/while/lstm_cell_519/mul_1Mul(lstm_258/while/lstm_cell_519/Sigmoid:y:0/lstm_258/while/lstm_cell_519/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_258/while/lstm_cell_519/add_1AddV2$lstm_258/while/lstm_cell_519/mul:z:0&lstm_258/while/lstm_cell_519/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_258/while/lstm_cell_519/Sigmoid_2Sigmoid+lstm_258/while/lstm_cell_519/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_258/while/lstm_cell_519/Relu_1Relu&lstm_258/while/lstm_cell_519/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_258/while/lstm_cell_519/mul_2Mul*lstm_258/while/lstm_cell_519/Sigmoid_2:y:01lstm_258/while/lstm_cell_519/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_258/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_258_while_placeholder_1lstm_258_while_placeholder&lstm_258/while/lstm_cell_519/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_258/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_258/while/addAddV2lstm_258_while_placeholderlstm_258/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_258/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_258/while/add_1AddV2*lstm_258_while_lstm_258_while_loop_counterlstm_258/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_258/while/IdentityIdentitylstm_258/while/add_1:z:0^lstm_258/while/NoOp*
T0*
_output_shapes
: ?
lstm_258/while/Identity_1Identity0lstm_258_while_lstm_258_while_maximum_iterations^lstm_258/while/NoOp*
T0*
_output_shapes
: t
lstm_258/while/Identity_2Identitylstm_258/while/add:z:0^lstm_258/while/NoOp*
T0*
_output_shapes
: ?
lstm_258/while/Identity_3IdentityClstm_258/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_258/while/NoOp*
T0*
_output_shapes
: ?
lstm_258/while/Identity_4Identity&lstm_258/while/lstm_cell_519/mul_2:z:0^lstm_258/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_258/while/Identity_5Identity&lstm_258/while/lstm_cell_519/add_1:z:0^lstm_258/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_258/while/NoOpNoOp4^lstm_258/while/lstm_cell_519/BiasAdd/ReadVariableOp3^lstm_258/while/lstm_cell_519/MatMul/ReadVariableOp5^lstm_258/while/lstm_cell_519/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_258_while_identity lstm_258/while/Identity:output:0"?
lstm_258_while_identity_1"lstm_258/while/Identity_1:output:0"?
lstm_258_while_identity_2"lstm_258/while/Identity_2:output:0"?
lstm_258_while_identity_3"lstm_258/while/Identity_3:output:0"?
lstm_258_while_identity_4"lstm_258/while/Identity_4:output:0"?
lstm_258_while_identity_5"lstm_258/while/Identity_5:output:0"T
'lstm_258_while_lstm_258_strided_slice_1)lstm_258_while_lstm_258_strided_slice_1_0"~
<lstm_258_while_lstm_cell_519_biasadd_readvariableop_resource>lstm_258_while_lstm_cell_519_biasadd_readvariableop_resource_0"?
=lstm_258_while_lstm_cell_519_matmul_1_readvariableop_resource?lstm_258_while_lstm_cell_519_matmul_1_readvariableop_resource_0"|
;lstm_258_while_lstm_cell_519_matmul_readvariableop_resource=lstm_258_while_lstm_cell_519_matmul_readvariableop_resource_0"?
clstm_258_while_tensorarrayv2read_tensorlistgetitem_lstm_258_tensorarrayunstack_tensorlistfromtensorelstm_258_while_tensorarrayv2read_tensorlistgetitem_lstm_258_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_258/while/lstm_cell_519/BiasAdd/ReadVariableOp3lstm_258/while/lstm_cell_519/BiasAdd/ReadVariableOp2h
2lstm_258/while/lstm_cell_519/MatMul/ReadVariableOp2lstm_258/while/lstm_cell_519/MatMul/ReadVariableOp2l
4lstm_258/while/lstm_cell_519/MatMul_1/ReadVariableOp4lstm_258/while/lstm_cell_519/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3152365
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3152365___redundant_placeholder05
1while_while_cond_3152365___redundant_placeholder15
1while_while_cond_3152365___redundant_placeholder25
1while_while_cond_3152365___redundant_placeholder3
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
E__inference_dense_86_layer_call_and_return_conditional_losses_3152468

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
?
while_body_3154838
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_520_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_520_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_520_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_520_matmul_readvariableop_resource:	d?G
4while_lstm_cell_520_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_520_biasadd_readvariableop_resource:	???*while/lstm_cell_520/BiasAdd/ReadVariableOp?)while/lstm_cell_520/MatMul/ReadVariableOp?+while/lstm_cell_520/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_520/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_520_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_520/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_520/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_520/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_520_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_520/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_520/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_520/addAddV2$while/lstm_cell_520/MatMul:product:0&while/lstm_cell_520/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_520/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_520_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_520/BiasAddBiasAddwhile/lstm_cell_520/add:z:02while/lstm_cell_520/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_520/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_520/splitSplit,while/lstm_cell_520/split/split_dim:output:0$while/lstm_cell_520/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_520/SigmoidSigmoid"while/lstm_cell_520/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_520/Sigmoid_1Sigmoid"while/lstm_cell_520/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_520/mulMul!while/lstm_cell_520/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_520/ReluRelu"while/lstm_cell_520/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_520/mul_1Mulwhile/lstm_cell_520/Sigmoid:y:0&while/lstm_cell_520/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_520/add_1AddV2while/lstm_cell_520/mul:z:0while/lstm_cell_520/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_520/Sigmoid_2Sigmoid"while/lstm_cell_520/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_520/Relu_1Reluwhile/lstm_cell_520/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_520/mul_2Mul!while/lstm_cell_520/Sigmoid_2:y:0(while/lstm_cell_520/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_520/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_520/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_520/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_520/BiasAdd/ReadVariableOp*^while/lstm_cell_520/MatMul/ReadVariableOp,^while/lstm_cell_520/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_520_biasadd_readvariableop_resource5while_lstm_cell_520_biasadd_readvariableop_resource_0"n
4while_lstm_cell_520_matmul_1_readvariableop_resource6while_lstm_cell_520_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_520_matmul_readvariableop_resource4while_lstm_cell_520_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_520/BiasAdd/ReadVariableOp*while/lstm_cell_520/BiasAdd/ReadVariableOp2V
)while/lstm_cell_520/MatMul/ReadVariableOp)while/lstm_cell_520/MatMul/ReadVariableOp2Z
+while/lstm_cell_520/MatMul_1/ReadVariableOp+while/lstm_cell_520/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3151731
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3151731___redundant_placeholder05
1while_while_cond_3151731___redundant_placeholder15
1while_while_cond_3151731___redundant_placeholder25
1while_while_cond_3151731___redundant_placeholder3
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
?
?
J__inference_lstm_cell_519_layer_call_and_return_conditional_losses_3151018

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
?#
?
while_body_3151223
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_519_3151247_0:	?0
while_lstm_cell_519_3151249_0:	d?,
while_lstm_cell_519_3151251_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_519_3151247:	?.
while_lstm_cell_519_3151249:	d?*
while_lstm_cell_519_3151251:	???+while/lstm_cell_519/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_519/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_519_3151247_0while_lstm_cell_519_3151249_0while_lstm_cell_519_3151251_0*
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
J__inference_lstm_cell_519_layer_call_and_return_conditional_losses_3151164?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_519/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_519/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_519/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_519/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_519_3151247while_lstm_cell_519_3151247_0"<
while_lstm_cell_519_3151249while_lstm_cell_519_3151249_0"<
while_lstm_cell_519_3151251while_lstm_cell_519_3151251_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_519/StatefulPartitionedCall+while/lstm_cell_519/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_86_layer_call_and_return_conditional_losses_3153064

inputs#
lstm_258_3153037:	?#
lstm_258_3153039:	d?
lstm_258_3153041:	?#
lstm_259_3153044:	d?#
lstm_259_3153046:	2?
lstm_259_3153048:	?"
lstm_260_3153051:2("
lstm_260_3153053:
(
lstm_260_3153055:("
dense_86_3153058:

dense_86_3153060:
identity?? dense_86/StatefulPartitionedCall? lstm_258/StatefulPartitionedCall? lstm_259/StatefulPartitionedCall? lstm_260/StatefulPartitionedCall?
 lstm_258/StatefulPartitionedCallStatefulPartitionedCallinputslstm_258_3153037lstm_258_3153039lstm_258_3153041*
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
E__inference_lstm_258_layer_call_and_return_conditional_losses_3152996?
 lstm_259/StatefulPartitionedCallStatefulPartitionedCall)lstm_258/StatefulPartitionedCall:output:0lstm_259_3153044lstm_259_3153046lstm_259_3153048*
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
E__inference_lstm_259_layer_call_and_return_conditional_losses_3152831?
 lstm_260/StatefulPartitionedCallStatefulPartitionedCall)lstm_259/StatefulPartitionedCall:output:0lstm_260_3153051lstm_260_3153053lstm_260_3153055*
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
E__inference_lstm_260_layer_call_and_return_conditional_losses_3152666?
 dense_86/StatefulPartitionedCallStatefulPartitionedCall)lstm_260/StatefulPartitionedCall:output:0dense_86_3153058dense_86_3153060*
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
E__inference_dense_86_layer_call_and_return_conditional_losses_3152468x
IdentityIdentity)dense_86/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_86/StatefulPartitionedCall!^lstm_258/StatefulPartitionedCall!^lstm_259/StatefulPartitionedCall!^lstm_260/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_86/StatefulPartitionedCall dense_86/StatefulPartitionedCall2D
 lstm_258/StatefulPartitionedCall lstm_258/StatefulPartitionedCall2D
 lstm_259/StatefulPartitionedCall lstm_259/StatefulPartitionedCall2D
 lstm_260/StatefulPartitionedCall lstm_260/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_259_layer_call_and_return_conditional_losses_3152300

inputs?
,lstm_cell_520_matmul_readvariableop_resource:	d?A
.lstm_cell_520_matmul_1_readvariableop_resource:	2?<
-lstm_cell_520_biasadd_readvariableop_resource:	?
identity??$lstm_cell_520/BiasAdd/ReadVariableOp?#lstm_cell_520/MatMul/ReadVariableOp?%lstm_cell_520/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_520/MatMul/ReadVariableOpReadVariableOp,lstm_cell_520_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_520/MatMulMatMulstrided_slice_2:output:0+lstm_cell_520/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_520/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_520_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_520/MatMul_1MatMulzeros:output:0-lstm_cell_520/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_520/addAddV2lstm_cell_520/MatMul:product:0 lstm_cell_520/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_520/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_520_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_520/BiasAddBiasAddlstm_cell_520/add:z:0,lstm_cell_520/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_520/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_520/splitSplit&lstm_cell_520/split/split_dim:output:0lstm_cell_520/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_520/SigmoidSigmoidlstm_cell_520/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_520/Sigmoid_1Sigmoidlstm_cell_520/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_520/mulMullstm_cell_520/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_520/ReluRelulstm_cell_520/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_520/mul_1Mullstm_cell_520/Sigmoid:y:0 lstm_cell_520/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_520/add_1AddV2lstm_cell_520/mul:z:0lstm_cell_520/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_520/Sigmoid_2Sigmoidlstm_cell_520/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_520/Relu_1Relulstm_cell_520/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_520/mul_2Mullstm_cell_520/Sigmoid_2:y:0"lstm_cell_520/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_520_matmul_readvariableop_resource.lstm_cell_520_matmul_1_readvariableop_resource-lstm_cell_520_biasadd_readvariableop_resource*
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
while_body_3152216*
condR
while_cond_3152215*K
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
NoOpNoOp%^lstm_cell_520/BiasAdd/ReadVariableOp$^lstm_cell_520/MatMul/ReadVariableOp&^lstm_cell_520/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_520/BiasAdd/ReadVariableOp$lstm_cell_520/BiasAdd/ReadVariableOp2J
#lstm_cell_520/MatMul/ReadVariableOp#lstm_cell_520/MatMul/ReadVariableOp2N
%lstm_cell_520/MatMul_1/ReadVariableOp%lstm_cell_520/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_258_layer_call_fn_3154130
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
E__inference_lstm_258_layer_call_and_return_conditional_losses_3151101|
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
while_body_3152582
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_521_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_521_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_521_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_521_matmul_readvariableop_resource:2(F
4while_lstm_cell_521_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_521_biasadd_readvariableop_resource:(??*while/lstm_cell_521/BiasAdd/ReadVariableOp?)while/lstm_cell_521/MatMul/ReadVariableOp?+while/lstm_cell_521/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_521/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_521_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_521/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_521/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_521/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_521_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_521/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_521/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_521/addAddV2$while/lstm_cell_521/MatMul:product:0&while/lstm_cell_521/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_521/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_521_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_521/BiasAddBiasAddwhile/lstm_cell_521/add:z:02while/lstm_cell_521/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_521/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_521/splitSplit,while/lstm_cell_521/split/split_dim:output:0$while/lstm_cell_521/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_521/SigmoidSigmoid"while/lstm_cell_521/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_521/Sigmoid_1Sigmoid"while/lstm_cell_521/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_521/mulMul!while/lstm_cell_521/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_521/ReluRelu"while/lstm_cell_521/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_521/mul_1Mulwhile/lstm_cell_521/Sigmoid:y:0&while/lstm_cell_521/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_521/add_1AddV2while/lstm_cell_521/mul:z:0while/lstm_cell_521/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_521/Sigmoid_2Sigmoid"while/lstm_cell_521/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_521/Relu_1Reluwhile/lstm_cell_521/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_521/mul_2Mul!while/lstm_cell_521/Sigmoid_2:y:0(while/lstm_cell_521/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_521/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_521/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_521/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_521/BiasAdd/ReadVariableOp*^while/lstm_cell_521/MatMul/ReadVariableOp,^while/lstm_cell_521/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_521_biasadd_readvariableop_resource5while_lstm_cell_521_biasadd_readvariableop_resource_0"n
4while_lstm_cell_521_matmul_1_readvariableop_resource6while_lstm_cell_521_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_521_matmul_readvariableop_resource4while_lstm_cell_521_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_521/BiasAdd/ReadVariableOp*while/lstm_cell_521/BiasAdd/ReadVariableOp2V
)while/lstm_cell_521/MatMul/ReadVariableOp)while/lstm_cell_521/MatMul/ReadVariableOp2Z
+while/lstm_cell_521/MatMul_1/ReadVariableOp+while/lstm_cell_521/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3152747
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_520_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_520_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_520_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_520_matmul_readvariableop_resource:	d?G
4while_lstm_cell_520_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_520_biasadd_readvariableop_resource:	???*while/lstm_cell_520/BiasAdd/ReadVariableOp?)while/lstm_cell_520/MatMul/ReadVariableOp?+while/lstm_cell_520/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_520/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_520_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_520/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_520/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_520/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_520_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_520/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_520/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_520/addAddV2$while/lstm_cell_520/MatMul:product:0&while/lstm_cell_520/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_520/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_520_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_520/BiasAddBiasAddwhile/lstm_cell_520/add:z:02while/lstm_cell_520/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_520/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_520/splitSplit,while/lstm_cell_520/split/split_dim:output:0$while/lstm_cell_520/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_520/SigmoidSigmoid"while/lstm_cell_520/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_520/Sigmoid_1Sigmoid"while/lstm_cell_520/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_520/mulMul!while/lstm_cell_520/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_520/ReluRelu"while/lstm_cell_520/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_520/mul_1Mulwhile/lstm_cell_520/Sigmoid:y:0&while/lstm_cell_520/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_520/add_1AddV2while/lstm_cell_520/mul:z:0while/lstm_cell_520/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_520/Sigmoid_2Sigmoid"while/lstm_cell_520/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_520/Relu_1Reluwhile/lstm_cell_520/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_520/mul_2Mul!while/lstm_cell_520/Sigmoid_2:y:0(while/lstm_cell_520/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_520/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_520/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_520/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_520/BiasAdd/ReadVariableOp*^while/lstm_cell_520/MatMul/ReadVariableOp,^while/lstm_cell_520/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_520_biasadd_readvariableop_resource5while_lstm_cell_520_biasadd_readvariableop_resource_0"n
4while_lstm_cell_520_matmul_1_readvariableop_resource6while_lstm_cell_520_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_520_matmul_readvariableop_resource4while_lstm_cell_520_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_520/BiasAdd/ReadVariableOp*while/lstm_cell_520/BiasAdd/ReadVariableOp2V
)while/lstm_cell_520/MatMul/ReadVariableOp)while/lstm_cell_520/MatMul/ReadVariableOp2Z
+while/lstm_cell_520/MatMul_1/ReadVariableOp+while/lstm_cell_520/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

?
/__inference_sequential_86_layer_call_fn_3152500
lstm_258_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_258_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_86_layer_call_and_return_conditional_losses_3152475o
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
_user_specified_namelstm_258_input
?J
?
E__inference_lstm_259_layer_call_and_return_conditional_losses_3155208

inputs?
,lstm_cell_520_matmul_readvariableop_resource:	d?A
.lstm_cell_520_matmul_1_readvariableop_resource:	2?<
-lstm_cell_520_biasadd_readvariableop_resource:	?
identity??$lstm_cell_520/BiasAdd/ReadVariableOp?#lstm_cell_520/MatMul/ReadVariableOp?%lstm_cell_520/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_520/MatMul/ReadVariableOpReadVariableOp,lstm_cell_520_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_520/MatMulMatMulstrided_slice_2:output:0+lstm_cell_520/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_520/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_520_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_520/MatMul_1MatMulzeros:output:0-lstm_cell_520/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_520/addAddV2lstm_cell_520/MatMul:product:0 lstm_cell_520/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_520/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_520_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_520/BiasAddBiasAddlstm_cell_520/add:z:0,lstm_cell_520/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_520/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_520/splitSplit&lstm_cell_520/split/split_dim:output:0lstm_cell_520/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_520/SigmoidSigmoidlstm_cell_520/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_520/Sigmoid_1Sigmoidlstm_cell_520/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_520/mulMullstm_cell_520/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_520/ReluRelulstm_cell_520/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_520/mul_1Mullstm_cell_520/Sigmoid:y:0 lstm_cell_520/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_520/add_1AddV2lstm_cell_520/mul:z:0lstm_cell_520/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_520/Sigmoid_2Sigmoidlstm_cell_520/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_520/Relu_1Relulstm_cell_520/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_520/mul_2Mullstm_cell_520/Sigmoid_2:y:0"lstm_cell_520/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_520_matmul_readvariableop_resource.lstm_cell_520_matmul_1_readvariableop_resource-lstm_cell_520_biasadd_readvariableop_resource*
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
while_body_3155124*
condR
while_cond_3155123*K
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
NoOpNoOp%^lstm_cell_520/BiasAdd/ReadVariableOp$^lstm_cell_520/MatMul/ReadVariableOp&^lstm_cell_520/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_520/BiasAdd/ReadVariableOp$lstm_cell_520/BiasAdd/ReadVariableOp2J
#lstm_cell_520/MatMul/ReadVariableOp#lstm_cell_520/MatMul/ReadVariableOp2N
%lstm_cell_520/MatMul_1/ReadVariableOp%lstm_cell_520/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_259_layer_call_and_return_conditional_losses_3151642

inputs(
lstm_cell_520_3151560:	d?(
lstm_cell_520_3151562:	2?$
lstm_cell_520_3151564:	?
identity??%lstm_cell_520/StatefulPartitionedCall?while;
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
%lstm_cell_520/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_520_3151560lstm_cell_520_3151562lstm_cell_520_3151564*
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
J__inference_lstm_cell_520_layer_call_and_return_conditional_losses_3151514n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_520_3151560lstm_cell_520_3151562lstm_cell_520_3151564*
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
while_body_3151573*
condR
while_cond_3151572*K
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
NoOpNoOp&^lstm_cell_520/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_520/StatefulPartitionedCall%lstm_cell_520/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_519_layer_call_and_return_conditional_losses_3156084

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
while_body_3155883
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_521_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_521_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_521_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_521_matmul_readvariableop_resource:2(F
4while_lstm_cell_521_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_521_biasadd_readvariableop_resource:(??*while/lstm_cell_521/BiasAdd/ReadVariableOp?)while/lstm_cell_521/MatMul/ReadVariableOp?+while/lstm_cell_521/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_521/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_521_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_521/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_521/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_521/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_521_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_521/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_521/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_521/addAddV2$while/lstm_cell_521/MatMul:product:0&while/lstm_cell_521/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_521/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_521_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_521/BiasAddBiasAddwhile/lstm_cell_521/add:z:02while/lstm_cell_521/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_521/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_521/splitSplit,while/lstm_cell_521/split/split_dim:output:0$while/lstm_cell_521/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_521/SigmoidSigmoid"while/lstm_cell_521/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_521/Sigmoid_1Sigmoid"while/lstm_cell_521/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_521/mulMul!while/lstm_cell_521/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_521/ReluRelu"while/lstm_cell_521/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_521/mul_1Mulwhile/lstm_cell_521/Sigmoid:y:0&while/lstm_cell_521/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_521/add_1AddV2while/lstm_cell_521/mul:z:0while/lstm_cell_521/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_521/Sigmoid_2Sigmoid"while/lstm_cell_521/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_521/Relu_1Reluwhile/lstm_cell_521/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_521/mul_2Mul!while/lstm_cell_521/Sigmoid_2:y:0(while/lstm_cell_521/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_521/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_521/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_521/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_521/BiasAdd/ReadVariableOp*^while/lstm_cell_521/MatMul/ReadVariableOp,^while/lstm_cell_521/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_521_biasadd_readvariableop_resource5while_lstm_cell_521_biasadd_readvariableop_resource_0"n
4while_lstm_cell_521_matmul_1_readvariableop_resource6while_lstm_cell_521_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_521_matmul_readvariableop_resource4while_lstm_cell_521_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_521/BiasAdd/ReadVariableOp*while/lstm_cell_521/BiasAdd/ReadVariableOp2V
)while/lstm_cell_521/MatMul/ReadVariableOp)while/lstm_cell_521/MatMul/ReadVariableOp2Z
+while/lstm_cell_521/MatMul_1/ReadVariableOp+while/lstm_cell_521/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_260_while_cond_3153601.
*lstm_260_while_lstm_260_while_loop_counter4
0lstm_260_while_lstm_260_while_maximum_iterations
lstm_260_while_placeholder 
lstm_260_while_placeholder_1 
lstm_260_while_placeholder_2 
lstm_260_while_placeholder_30
,lstm_260_while_less_lstm_260_strided_slice_1G
Clstm_260_while_lstm_260_while_cond_3153601___redundant_placeholder0G
Clstm_260_while_lstm_260_while_cond_3153601___redundant_placeholder1G
Clstm_260_while_lstm_260_while_cond_3153601___redundant_placeholder2G
Clstm_260_while_lstm_260_while_cond_3153601___redundant_placeholder3
lstm_260_while_identity
?
lstm_260/while/LessLesslstm_260_while_placeholder,lstm_260_while_less_lstm_260_strided_slice_1*
T0*
_output_shapes
: ]
lstm_260/while/IdentityIdentitylstm_260/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_260_while_identity lstm_260/while/Identity:output:0*(
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
J__inference_lstm_cell_520_layer_call_and_return_conditional_losses_3156150

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
while_cond_3154980
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3154980___redundant_placeholder05
1while_while_cond_3154980___redundant_placeholder15
1while_while_cond_3154980___redundant_placeholder25
1while_while_cond_3154980___redundant_placeholder3
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

lstm_258_while_body_3153751.
*lstm_258_while_lstm_258_while_loop_counter4
0lstm_258_while_lstm_258_while_maximum_iterations
lstm_258_while_placeholder 
lstm_258_while_placeholder_1 
lstm_258_while_placeholder_2 
lstm_258_while_placeholder_3-
)lstm_258_while_lstm_258_strided_slice_1_0i
elstm_258_while_tensorarrayv2read_tensorlistgetitem_lstm_258_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_258_while_lstm_cell_519_matmul_readvariableop_resource_0:	?R
?lstm_258_while_lstm_cell_519_matmul_1_readvariableop_resource_0:	d?M
>lstm_258_while_lstm_cell_519_biasadd_readvariableop_resource_0:	?
lstm_258_while_identity
lstm_258_while_identity_1
lstm_258_while_identity_2
lstm_258_while_identity_3
lstm_258_while_identity_4
lstm_258_while_identity_5+
'lstm_258_while_lstm_258_strided_slice_1g
clstm_258_while_tensorarrayv2read_tensorlistgetitem_lstm_258_tensorarrayunstack_tensorlistfromtensorN
;lstm_258_while_lstm_cell_519_matmul_readvariableop_resource:	?P
=lstm_258_while_lstm_cell_519_matmul_1_readvariableop_resource:	d?K
<lstm_258_while_lstm_cell_519_biasadd_readvariableop_resource:	???3lstm_258/while/lstm_cell_519/BiasAdd/ReadVariableOp?2lstm_258/while/lstm_cell_519/MatMul/ReadVariableOp?4lstm_258/while/lstm_cell_519/MatMul_1/ReadVariableOp?
@lstm_258/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_258/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_258_while_tensorarrayv2read_tensorlistgetitem_lstm_258_tensorarrayunstack_tensorlistfromtensor_0lstm_258_while_placeholderIlstm_258/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_258/while/lstm_cell_519/MatMul/ReadVariableOpReadVariableOp=lstm_258_while_lstm_cell_519_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_258/while/lstm_cell_519/MatMulMatMul9lstm_258/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_258/while/lstm_cell_519/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_258/while/lstm_cell_519/MatMul_1/ReadVariableOpReadVariableOp?lstm_258_while_lstm_cell_519_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_258/while/lstm_cell_519/MatMul_1MatMullstm_258_while_placeholder_2<lstm_258/while/lstm_cell_519/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_258/while/lstm_cell_519/addAddV2-lstm_258/while/lstm_cell_519/MatMul:product:0/lstm_258/while/lstm_cell_519/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_258/while/lstm_cell_519/BiasAdd/ReadVariableOpReadVariableOp>lstm_258_while_lstm_cell_519_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_258/while/lstm_cell_519/BiasAddBiasAdd$lstm_258/while/lstm_cell_519/add:z:0;lstm_258/while/lstm_cell_519/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_258/while/lstm_cell_519/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_258/while/lstm_cell_519/splitSplit5lstm_258/while/lstm_cell_519/split/split_dim:output:0-lstm_258/while/lstm_cell_519/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_258/while/lstm_cell_519/SigmoidSigmoid+lstm_258/while/lstm_cell_519/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_258/while/lstm_cell_519/Sigmoid_1Sigmoid+lstm_258/while/lstm_cell_519/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_258/while/lstm_cell_519/mulMul*lstm_258/while/lstm_cell_519/Sigmoid_1:y:0lstm_258_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_258/while/lstm_cell_519/ReluRelu+lstm_258/while/lstm_cell_519/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_258/while/lstm_cell_519/mul_1Mul(lstm_258/while/lstm_cell_519/Sigmoid:y:0/lstm_258/while/lstm_cell_519/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_258/while/lstm_cell_519/add_1AddV2$lstm_258/while/lstm_cell_519/mul:z:0&lstm_258/while/lstm_cell_519/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_258/while/lstm_cell_519/Sigmoid_2Sigmoid+lstm_258/while/lstm_cell_519/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_258/while/lstm_cell_519/Relu_1Relu&lstm_258/while/lstm_cell_519/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_258/while/lstm_cell_519/mul_2Mul*lstm_258/while/lstm_cell_519/Sigmoid_2:y:01lstm_258/while/lstm_cell_519/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_258/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_258_while_placeholder_1lstm_258_while_placeholder&lstm_258/while/lstm_cell_519/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_258/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_258/while/addAddV2lstm_258_while_placeholderlstm_258/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_258/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_258/while/add_1AddV2*lstm_258_while_lstm_258_while_loop_counterlstm_258/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_258/while/IdentityIdentitylstm_258/while/add_1:z:0^lstm_258/while/NoOp*
T0*
_output_shapes
: ?
lstm_258/while/Identity_1Identity0lstm_258_while_lstm_258_while_maximum_iterations^lstm_258/while/NoOp*
T0*
_output_shapes
: t
lstm_258/while/Identity_2Identitylstm_258/while/add:z:0^lstm_258/while/NoOp*
T0*
_output_shapes
: ?
lstm_258/while/Identity_3IdentityClstm_258/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_258/while/NoOp*
T0*
_output_shapes
: ?
lstm_258/while/Identity_4Identity&lstm_258/while/lstm_cell_519/mul_2:z:0^lstm_258/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_258/while/Identity_5Identity&lstm_258/while/lstm_cell_519/add_1:z:0^lstm_258/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_258/while/NoOpNoOp4^lstm_258/while/lstm_cell_519/BiasAdd/ReadVariableOp3^lstm_258/while/lstm_cell_519/MatMul/ReadVariableOp5^lstm_258/while/lstm_cell_519/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_258_while_identity lstm_258/while/Identity:output:0"?
lstm_258_while_identity_1"lstm_258/while/Identity_1:output:0"?
lstm_258_while_identity_2"lstm_258/while/Identity_2:output:0"?
lstm_258_while_identity_3"lstm_258/while/Identity_3:output:0"?
lstm_258_while_identity_4"lstm_258/while/Identity_4:output:0"?
lstm_258_while_identity_5"lstm_258/while/Identity_5:output:0"T
'lstm_258_while_lstm_258_strided_slice_1)lstm_258_while_lstm_258_strided_slice_1_0"~
<lstm_258_while_lstm_cell_519_biasadd_readvariableop_resource>lstm_258_while_lstm_cell_519_biasadd_readvariableop_resource_0"?
=lstm_258_while_lstm_cell_519_matmul_1_readvariableop_resource?lstm_258_while_lstm_cell_519_matmul_1_readvariableop_resource_0"|
;lstm_258_while_lstm_cell_519_matmul_readvariableop_resource=lstm_258_while_lstm_cell_519_matmul_readvariableop_resource_0"?
clstm_258_while_tensorarrayv2read_tensorlistgetitem_lstm_258_tensorarrayunstack_tensorlistfromtensorelstm_258_while_tensorarrayv2read_tensorlistgetitem_lstm_258_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_258/while/lstm_cell_519/BiasAdd/ReadVariableOp3lstm_258/while/lstm_cell_519/BiasAdd/ReadVariableOp2h
2lstm_258/while/lstm_cell_519/MatMul/ReadVariableOp2lstm_258/while/lstm_cell_519/MatMul/ReadVariableOp2l
4lstm_258/while/lstm_cell_519/MatMul_1/ReadVariableOp4lstm_258/while/lstm_cell_519/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_260_layer_call_fn_3155373
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
E__inference_lstm_260_layer_call_and_return_conditional_losses_3151992o
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
??
?
#__inference__traced_restore_3156553
file_prefix2
 assignvariableop_dense_86_kernel:
.
 assignvariableop_1_dense_86_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_258_lstm_cell_258_kernel:	?M
:assignvariableop_8_lstm_258_lstm_cell_258_recurrent_kernel:	d?=
.assignvariableop_9_lstm_258_lstm_cell_258_bias:	?D
1assignvariableop_10_lstm_259_lstm_cell_259_kernel:	d?N
;assignvariableop_11_lstm_259_lstm_cell_259_recurrent_kernel:	2?>
/assignvariableop_12_lstm_259_lstm_cell_259_bias:	?C
1assignvariableop_13_lstm_260_lstm_cell_260_kernel:2(M
;assignvariableop_14_lstm_260_lstm_cell_260_recurrent_kernel:
(=
/assignvariableop_15_lstm_260_lstm_cell_260_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_86_kernel_m:
6
(assignvariableop_19_adam_dense_86_bias_m:K
8assignvariableop_20_adam_lstm_258_lstm_cell_258_kernel_m:	?U
Bassignvariableop_21_adam_lstm_258_lstm_cell_258_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_258_lstm_cell_258_bias_m:	?K
8assignvariableop_23_adam_lstm_259_lstm_cell_259_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_259_lstm_cell_259_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_259_lstm_cell_259_bias_m:	?J
8assignvariableop_26_adam_lstm_260_lstm_cell_260_kernel_m:2(T
Bassignvariableop_27_adam_lstm_260_lstm_cell_260_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_260_lstm_cell_260_bias_m:(<
*assignvariableop_29_adam_dense_86_kernel_v:
6
(assignvariableop_30_adam_dense_86_bias_v:K
8assignvariableop_31_adam_lstm_258_lstm_cell_258_kernel_v:	?U
Bassignvariableop_32_adam_lstm_258_lstm_cell_258_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_258_lstm_cell_258_bias_v:	?K
8assignvariableop_34_adam_lstm_259_lstm_cell_259_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_259_lstm_cell_259_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_259_lstm_cell_259_bias_v:	?J
8assignvariableop_37_adam_lstm_260_lstm_cell_260_kernel_v:2(T
Bassignvariableop_38_adam_lstm_260_lstm_cell_260_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_260_lstm_cell_260_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_86_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_86_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_258_lstm_cell_258_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_258_lstm_cell_258_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_258_lstm_cell_258_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_259_lstm_cell_259_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_259_lstm_cell_259_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_259_lstm_cell_259_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_260_lstm_cell_260_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_260_lstm_cell_260_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_260_lstm_cell_260_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_86_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_86_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_258_lstm_cell_258_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_258_lstm_cell_258_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_258_lstm_cell_258_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_259_lstm_cell_259_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_259_lstm_cell_259_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_259_lstm_cell_259_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_260_lstm_cell_260_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_260_lstm_cell_260_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_260_lstm_cell_260_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_86_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_86_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_258_lstm_cell_258_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_258_lstm_cell_258_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_258_lstm_cell_258_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_259_lstm_cell_259_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_259_lstm_cell_259_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_259_lstm_cell_259_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_260_lstm_cell_260_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_260_lstm_cell_260_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_260_lstm_cell_260_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
?
)sequential_86_lstm_259_while_cond_3150721J
Fsequential_86_lstm_259_while_sequential_86_lstm_259_while_loop_counterP
Lsequential_86_lstm_259_while_sequential_86_lstm_259_while_maximum_iterations,
(sequential_86_lstm_259_while_placeholder.
*sequential_86_lstm_259_while_placeholder_1.
*sequential_86_lstm_259_while_placeholder_2.
*sequential_86_lstm_259_while_placeholder_3L
Hsequential_86_lstm_259_while_less_sequential_86_lstm_259_strided_slice_1c
_sequential_86_lstm_259_while_sequential_86_lstm_259_while_cond_3150721___redundant_placeholder0c
_sequential_86_lstm_259_while_sequential_86_lstm_259_while_cond_3150721___redundant_placeholder1c
_sequential_86_lstm_259_while_sequential_86_lstm_259_while_cond_3150721___redundant_placeholder2c
_sequential_86_lstm_259_while_sequential_86_lstm_259_while_cond_3150721___redundant_placeholder3)
%sequential_86_lstm_259_while_identity
?
!sequential_86/lstm_259/while/LessLess(sequential_86_lstm_259_while_placeholderHsequential_86_lstm_259_while_less_sequential_86_lstm_259_strided_slice_1*
T0*
_output_shapes
: y
%sequential_86/lstm_259/while/IdentityIdentity%sequential_86/lstm_259/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_86_lstm_259_while_identity.sequential_86/lstm_259/while/Identity:output:0*(
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
*__inference_lstm_260_layer_call_fn_3155384

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
E__inference_lstm_260_layer_call_and_return_conditional_losses_3152450o
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
??
?
"__inference__wrapped_model_3150951
lstm_258_inputV
Csequential_86_lstm_258_lstm_cell_519_matmul_readvariableop_resource:	?X
Esequential_86_lstm_258_lstm_cell_519_matmul_1_readvariableop_resource:	d?S
Dsequential_86_lstm_258_lstm_cell_519_biasadd_readvariableop_resource:	?V
Csequential_86_lstm_259_lstm_cell_520_matmul_readvariableop_resource:	d?X
Esequential_86_lstm_259_lstm_cell_520_matmul_1_readvariableop_resource:	2?S
Dsequential_86_lstm_259_lstm_cell_520_biasadd_readvariableop_resource:	?U
Csequential_86_lstm_260_lstm_cell_521_matmul_readvariableop_resource:2(W
Esequential_86_lstm_260_lstm_cell_521_matmul_1_readvariableop_resource:
(R
Dsequential_86_lstm_260_lstm_cell_521_biasadd_readvariableop_resource:(G
5sequential_86_dense_86_matmul_readvariableop_resource:
D
6sequential_86_dense_86_biasadd_readvariableop_resource:
identity??-sequential_86/dense_86/BiasAdd/ReadVariableOp?,sequential_86/dense_86/MatMul/ReadVariableOp?;sequential_86/lstm_258/lstm_cell_519/BiasAdd/ReadVariableOp?:sequential_86/lstm_258/lstm_cell_519/MatMul/ReadVariableOp?<sequential_86/lstm_258/lstm_cell_519/MatMul_1/ReadVariableOp?sequential_86/lstm_258/while?;sequential_86/lstm_259/lstm_cell_520/BiasAdd/ReadVariableOp?:sequential_86/lstm_259/lstm_cell_520/MatMul/ReadVariableOp?<sequential_86/lstm_259/lstm_cell_520/MatMul_1/ReadVariableOp?sequential_86/lstm_259/while?;sequential_86/lstm_260/lstm_cell_521/BiasAdd/ReadVariableOp?:sequential_86/lstm_260/lstm_cell_521/MatMul/ReadVariableOp?<sequential_86/lstm_260/lstm_cell_521/MatMul_1/ReadVariableOp?sequential_86/lstm_260/whileZ
sequential_86/lstm_258/ShapeShapelstm_258_input*
T0*
_output_shapes
:t
*sequential_86/lstm_258/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_86/lstm_258/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_86/lstm_258/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_86/lstm_258/strided_sliceStridedSlice%sequential_86/lstm_258/Shape:output:03sequential_86/lstm_258/strided_slice/stack:output:05sequential_86/lstm_258/strided_slice/stack_1:output:05sequential_86/lstm_258/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_86/lstm_258/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_86/lstm_258/zeros/packedPack-sequential_86/lstm_258/strided_slice:output:0.sequential_86/lstm_258/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_86/lstm_258/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_86/lstm_258/zerosFill,sequential_86/lstm_258/zeros/packed:output:0+sequential_86/lstm_258/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_86/lstm_258/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_86/lstm_258/zeros_1/packedPack-sequential_86/lstm_258/strided_slice:output:00sequential_86/lstm_258/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_86/lstm_258/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_86/lstm_258/zeros_1Fill.sequential_86/lstm_258/zeros_1/packed:output:0-sequential_86/lstm_258/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_86/lstm_258/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_86/lstm_258/transpose	Transposelstm_258_input.sequential_86/lstm_258/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_86/lstm_258/Shape_1Shape$sequential_86/lstm_258/transpose:y:0*
T0*
_output_shapes
:v
,sequential_86/lstm_258/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_86/lstm_258/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_86/lstm_258/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_86/lstm_258/strided_slice_1StridedSlice'sequential_86/lstm_258/Shape_1:output:05sequential_86/lstm_258/strided_slice_1/stack:output:07sequential_86/lstm_258/strided_slice_1/stack_1:output:07sequential_86/lstm_258/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_86/lstm_258/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_86/lstm_258/TensorArrayV2TensorListReserve;sequential_86/lstm_258/TensorArrayV2/element_shape:output:0/sequential_86/lstm_258/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_86/lstm_258/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_86/lstm_258/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_86/lstm_258/transpose:y:0Usequential_86/lstm_258/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_86/lstm_258/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_86/lstm_258/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_86/lstm_258/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_86/lstm_258/strided_slice_2StridedSlice$sequential_86/lstm_258/transpose:y:05sequential_86/lstm_258/strided_slice_2/stack:output:07sequential_86/lstm_258/strided_slice_2/stack_1:output:07sequential_86/lstm_258/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_86/lstm_258/lstm_cell_519/MatMul/ReadVariableOpReadVariableOpCsequential_86_lstm_258_lstm_cell_519_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_86/lstm_258/lstm_cell_519/MatMulMatMul/sequential_86/lstm_258/strided_slice_2:output:0Bsequential_86/lstm_258/lstm_cell_519/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_86/lstm_258/lstm_cell_519/MatMul_1/ReadVariableOpReadVariableOpEsequential_86_lstm_258_lstm_cell_519_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_86/lstm_258/lstm_cell_519/MatMul_1MatMul%sequential_86/lstm_258/zeros:output:0Dsequential_86/lstm_258/lstm_cell_519/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_86/lstm_258/lstm_cell_519/addAddV25sequential_86/lstm_258/lstm_cell_519/MatMul:product:07sequential_86/lstm_258/lstm_cell_519/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_86/lstm_258/lstm_cell_519/BiasAdd/ReadVariableOpReadVariableOpDsequential_86_lstm_258_lstm_cell_519_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_86/lstm_258/lstm_cell_519/BiasAddBiasAdd,sequential_86/lstm_258/lstm_cell_519/add:z:0Csequential_86/lstm_258/lstm_cell_519/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_86/lstm_258/lstm_cell_519/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_86/lstm_258/lstm_cell_519/splitSplit=sequential_86/lstm_258/lstm_cell_519/split/split_dim:output:05sequential_86/lstm_258/lstm_cell_519/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_86/lstm_258/lstm_cell_519/SigmoidSigmoid3sequential_86/lstm_258/lstm_cell_519/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_86/lstm_258/lstm_cell_519/Sigmoid_1Sigmoid3sequential_86/lstm_258/lstm_cell_519/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_86/lstm_258/lstm_cell_519/mulMul2sequential_86/lstm_258/lstm_cell_519/Sigmoid_1:y:0'sequential_86/lstm_258/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_86/lstm_258/lstm_cell_519/ReluRelu3sequential_86/lstm_258/lstm_cell_519/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_86/lstm_258/lstm_cell_519/mul_1Mul0sequential_86/lstm_258/lstm_cell_519/Sigmoid:y:07sequential_86/lstm_258/lstm_cell_519/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_86/lstm_258/lstm_cell_519/add_1AddV2,sequential_86/lstm_258/lstm_cell_519/mul:z:0.sequential_86/lstm_258/lstm_cell_519/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_86/lstm_258/lstm_cell_519/Sigmoid_2Sigmoid3sequential_86/lstm_258/lstm_cell_519/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_86/lstm_258/lstm_cell_519/Relu_1Relu.sequential_86/lstm_258/lstm_cell_519/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_86/lstm_258/lstm_cell_519/mul_2Mul2sequential_86/lstm_258/lstm_cell_519/Sigmoid_2:y:09sequential_86/lstm_258/lstm_cell_519/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_86/lstm_258/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_86/lstm_258/TensorArrayV2_1TensorListReserve=sequential_86/lstm_258/TensorArrayV2_1/element_shape:output:0/sequential_86/lstm_258/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_86/lstm_258/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_86/lstm_258/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_86/lstm_258/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_86/lstm_258/whileWhile2sequential_86/lstm_258/while/loop_counter:output:08sequential_86/lstm_258/while/maximum_iterations:output:0$sequential_86/lstm_258/time:output:0/sequential_86/lstm_258/TensorArrayV2_1:handle:0%sequential_86/lstm_258/zeros:output:0'sequential_86/lstm_258/zeros_1:output:0/sequential_86/lstm_258/strided_slice_1:output:0Nsequential_86/lstm_258/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_86_lstm_258_lstm_cell_519_matmul_readvariableop_resourceEsequential_86_lstm_258_lstm_cell_519_matmul_1_readvariableop_resourceDsequential_86_lstm_258_lstm_cell_519_biasadd_readvariableop_resource*
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
)sequential_86_lstm_258_while_body_3150583*5
cond-R+
)sequential_86_lstm_258_while_cond_3150582*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_86/lstm_258/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_86/lstm_258/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_86/lstm_258/while:output:3Psequential_86/lstm_258/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_86/lstm_258/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_86/lstm_258/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_86/lstm_258/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_86/lstm_258/strided_slice_3StridedSliceBsequential_86/lstm_258/TensorArrayV2Stack/TensorListStack:tensor:05sequential_86/lstm_258/strided_slice_3/stack:output:07sequential_86/lstm_258/strided_slice_3/stack_1:output:07sequential_86/lstm_258/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_86/lstm_258/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_86/lstm_258/transpose_1	TransposeBsequential_86/lstm_258/TensorArrayV2Stack/TensorListStack:tensor:00sequential_86/lstm_258/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_86/lstm_258/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_86/lstm_259/ShapeShape&sequential_86/lstm_258/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_86/lstm_259/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_86/lstm_259/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_86/lstm_259/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_86/lstm_259/strided_sliceStridedSlice%sequential_86/lstm_259/Shape:output:03sequential_86/lstm_259/strided_slice/stack:output:05sequential_86/lstm_259/strided_slice/stack_1:output:05sequential_86/lstm_259/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_86/lstm_259/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_86/lstm_259/zeros/packedPack-sequential_86/lstm_259/strided_slice:output:0.sequential_86/lstm_259/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_86/lstm_259/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_86/lstm_259/zerosFill,sequential_86/lstm_259/zeros/packed:output:0+sequential_86/lstm_259/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_86/lstm_259/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_86/lstm_259/zeros_1/packedPack-sequential_86/lstm_259/strided_slice:output:00sequential_86/lstm_259/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_86/lstm_259/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_86/lstm_259/zeros_1Fill.sequential_86/lstm_259/zeros_1/packed:output:0-sequential_86/lstm_259/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_86/lstm_259/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_86/lstm_259/transpose	Transpose&sequential_86/lstm_258/transpose_1:y:0.sequential_86/lstm_259/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_86/lstm_259/Shape_1Shape$sequential_86/lstm_259/transpose:y:0*
T0*
_output_shapes
:v
,sequential_86/lstm_259/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_86/lstm_259/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_86/lstm_259/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_86/lstm_259/strided_slice_1StridedSlice'sequential_86/lstm_259/Shape_1:output:05sequential_86/lstm_259/strided_slice_1/stack:output:07sequential_86/lstm_259/strided_slice_1/stack_1:output:07sequential_86/lstm_259/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_86/lstm_259/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_86/lstm_259/TensorArrayV2TensorListReserve;sequential_86/lstm_259/TensorArrayV2/element_shape:output:0/sequential_86/lstm_259/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_86/lstm_259/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_86/lstm_259/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_86/lstm_259/transpose:y:0Usequential_86/lstm_259/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_86/lstm_259/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_86/lstm_259/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_86/lstm_259/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_86/lstm_259/strided_slice_2StridedSlice$sequential_86/lstm_259/transpose:y:05sequential_86/lstm_259/strided_slice_2/stack:output:07sequential_86/lstm_259/strided_slice_2/stack_1:output:07sequential_86/lstm_259/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_86/lstm_259/lstm_cell_520/MatMul/ReadVariableOpReadVariableOpCsequential_86_lstm_259_lstm_cell_520_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_86/lstm_259/lstm_cell_520/MatMulMatMul/sequential_86/lstm_259/strided_slice_2:output:0Bsequential_86/lstm_259/lstm_cell_520/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_86/lstm_259/lstm_cell_520/MatMul_1/ReadVariableOpReadVariableOpEsequential_86_lstm_259_lstm_cell_520_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_86/lstm_259/lstm_cell_520/MatMul_1MatMul%sequential_86/lstm_259/zeros:output:0Dsequential_86/lstm_259/lstm_cell_520/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_86/lstm_259/lstm_cell_520/addAddV25sequential_86/lstm_259/lstm_cell_520/MatMul:product:07sequential_86/lstm_259/lstm_cell_520/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_86/lstm_259/lstm_cell_520/BiasAdd/ReadVariableOpReadVariableOpDsequential_86_lstm_259_lstm_cell_520_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_86/lstm_259/lstm_cell_520/BiasAddBiasAdd,sequential_86/lstm_259/lstm_cell_520/add:z:0Csequential_86/lstm_259/lstm_cell_520/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_86/lstm_259/lstm_cell_520/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_86/lstm_259/lstm_cell_520/splitSplit=sequential_86/lstm_259/lstm_cell_520/split/split_dim:output:05sequential_86/lstm_259/lstm_cell_520/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_86/lstm_259/lstm_cell_520/SigmoidSigmoid3sequential_86/lstm_259/lstm_cell_520/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_86/lstm_259/lstm_cell_520/Sigmoid_1Sigmoid3sequential_86/lstm_259/lstm_cell_520/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_86/lstm_259/lstm_cell_520/mulMul2sequential_86/lstm_259/lstm_cell_520/Sigmoid_1:y:0'sequential_86/lstm_259/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_86/lstm_259/lstm_cell_520/ReluRelu3sequential_86/lstm_259/lstm_cell_520/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_86/lstm_259/lstm_cell_520/mul_1Mul0sequential_86/lstm_259/lstm_cell_520/Sigmoid:y:07sequential_86/lstm_259/lstm_cell_520/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_86/lstm_259/lstm_cell_520/add_1AddV2,sequential_86/lstm_259/lstm_cell_520/mul:z:0.sequential_86/lstm_259/lstm_cell_520/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_86/lstm_259/lstm_cell_520/Sigmoid_2Sigmoid3sequential_86/lstm_259/lstm_cell_520/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_86/lstm_259/lstm_cell_520/Relu_1Relu.sequential_86/lstm_259/lstm_cell_520/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_86/lstm_259/lstm_cell_520/mul_2Mul2sequential_86/lstm_259/lstm_cell_520/Sigmoid_2:y:09sequential_86/lstm_259/lstm_cell_520/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_86/lstm_259/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_86/lstm_259/TensorArrayV2_1TensorListReserve=sequential_86/lstm_259/TensorArrayV2_1/element_shape:output:0/sequential_86/lstm_259/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_86/lstm_259/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_86/lstm_259/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_86/lstm_259/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_86/lstm_259/whileWhile2sequential_86/lstm_259/while/loop_counter:output:08sequential_86/lstm_259/while/maximum_iterations:output:0$sequential_86/lstm_259/time:output:0/sequential_86/lstm_259/TensorArrayV2_1:handle:0%sequential_86/lstm_259/zeros:output:0'sequential_86/lstm_259/zeros_1:output:0/sequential_86/lstm_259/strided_slice_1:output:0Nsequential_86/lstm_259/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_86_lstm_259_lstm_cell_520_matmul_readvariableop_resourceEsequential_86_lstm_259_lstm_cell_520_matmul_1_readvariableop_resourceDsequential_86_lstm_259_lstm_cell_520_biasadd_readvariableop_resource*
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
)sequential_86_lstm_259_while_body_3150722*5
cond-R+
)sequential_86_lstm_259_while_cond_3150721*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_86/lstm_259/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_86/lstm_259/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_86/lstm_259/while:output:3Psequential_86/lstm_259/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_86/lstm_259/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_86/lstm_259/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_86/lstm_259/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_86/lstm_259/strided_slice_3StridedSliceBsequential_86/lstm_259/TensorArrayV2Stack/TensorListStack:tensor:05sequential_86/lstm_259/strided_slice_3/stack:output:07sequential_86/lstm_259/strided_slice_3/stack_1:output:07sequential_86/lstm_259/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_86/lstm_259/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_86/lstm_259/transpose_1	TransposeBsequential_86/lstm_259/TensorArrayV2Stack/TensorListStack:tensor:00sequential_86/lstm_259/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_86/lstm_259/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_86/lstm_260/ShapeShape&sequential_86/lstm_259/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_86/lstm_260/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_86/lstm_260/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_86/lstm_260/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_86/lstm_260/strided_sliceStridedSlice%sequential_86/lstm_260/Shape:output:03sequential_86/lstm_260/strided_slice/stack:output:05sequential_86/lstm_260/strided_slice/stack_1:output:05sequential_86/lstm_260/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_86/lstm_260/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_86/lstm_260/zeros/packedPack-sequential_86/lstm_260/strided_slice:output:0.sequential_86/lstm_260/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_86/lstm_260/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_86/lstm_260/zerosFill,sequential_86/lstm_260/zeros/packed:output:0+sequential_86/lstm_260/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_86/lstm_260/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_86/lstm_260/zeros_1/packedPack-sequential_86/lstm_260/strided_slice:output:00sequential_86/lstm_260/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_86/lstm_260/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_86/lstm_260/zeros_1Fill.sequential_86/lstm_260/zeros_1/packed:output:0-sequential_86/lstm_260/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_86/lstm_260/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_86/lstm_260/transpose	Transpose&sequential_86/lstm_259/transpose_1:y:0.sequential_86/lstm_260/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_86/lstm_260/Shape_1Shape$sequential_86/lstm_260/transpose:y:0*
T0*
_output_shapes
:v
,sequential_86/lstm_260/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_86/lstm_260/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_86/lstm_260/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_86/lstm_260/strided_slice_1StridedSlice'sequential_86/lstm_260/Shape_1:output:05sequential_86/lstm_260/strided_slice_1/stack:output:07sequential_86/lstm_260/strided_slice_1/stack_1:output:07sequential_86/lstm_260/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_86/lstm_260/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_86/lstm_260/TensorArrayV2TensorListReserve;sequential_86/lstm_260/TensorArrayV2/element_shape:output:0/sequential_86/lstm_260/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_86/lstm_260/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_86/lstm_260/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_86/lstm_260/transpose:y:0Usequential_86/lstm_260/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_86/lstm_260/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_86/lstm_260/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_86/lstm_260/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_86/lstm_260/strided_slice_2StridedSlice$sequential_86/lstm_260/transpose:y:05sequential_86/lstm_260/strided_slice_2/stack:output:07sequential_86/lstm_260/strided_slice_2/stack_1:output:07sequential_86/lstm_260/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_86/lstm_260/lstm_cell_521/MatMul/ReadVariableOpReadVariableOpCsequential_86_lstm_260_lstm_cell_521_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_86/lstm_260/lstm_cell_521/MatMulMatMul/sequential_86/lstm_260/strided_slice_2:output:0Bsequential_86/lstm_260/lstm_cell_521/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_86/lstm_260/lstm_cell_521/MatMul_1/ReadVariableOpReadVariableOpEsequential_86_lstm_260_lstm_cell_521_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_86/lstm_260/lstm_cell_521/MatMul_1MatMul%sequential_86/lstm_260/zeros:output:0Dsequential_86/lstm_260/lstm_cell_521/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_86/lstm_260/lstm_cell_521/addAddV25sequential_86/lstm_260/lstm_cell_521/MatMul:product:07sequential_86/lstm_260/lstm_cell_521/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_86/lstm_260/lstm_cell_521/BiasAdd/ReadVariableOpReadVariableOpDsequential_86_lstm_260_lstm_cell_521_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_86/lstm_260/lstm_cell_521/BiasAddBiasAdd,sequential_86/lstm_260/lstm_cell_521/add:z:0Csequential_86/lstm_260/lstm_cell_521/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_86/lstm_260/lstm_cell_521/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_86/lstm_260/lstm_cell_521/splitSplit=sequential_86/lstm_260/lstm_cell_521/split/split_dim:output:05sequential_86/lstm_260/lstm_cell_521/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_86/lstm_260/lstm_cell_521/SigmoidSigmoid3sequential_86/lstm_260/lstm_cell_521/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_86/lstm_260/lstm_cell_521/Sigmoid_1Sigmoid3sequential_86/lstm_260/lstm_cell_521/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_86/lstm_260/lstm_cell_521/mulMul2sequential_86/lstm_260/lstm_cell_521/Sigmoid_1:y:0'sequential_86/lstm_260/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_86/lstm_260/lstm_cell_521/ReluRelu3sequential_86/lstm_260/lstm_cell_521/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_86/lstm_260/lstm_cell_521/mul_1Mul0sequential_86/lstm_260/lstm_cell_521/Sigmoid:y:07sequential_86/lstm_260/lstm_cell_521/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_86/lstm_260/lstm_cell_521/add_1AddV2,sequential_86/lstm_260/lstm_cell_521/mul:z:0.sequential_86/lstm_260/lstm_cell_521/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_86/lstm_260/lstm_cell_521/Sigmoid_2Sigmoid3sequential_86/lstm_260/lstm_cell_521/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_86/lstm_260/lstm_cell_521/Relu_1Relu.sequential_86/lstm_260/lstm_cell_521/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_86/lstm_260/lstm_cell_521/mul_2Mul2sequential_86/lstm_260/lstm_cell_521/Sigmoid_2:y:09sequential_86/lstm_260/lstm_cell_521/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_86/lstm_260/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_86/lstm_260/TensorArrayV2_1TensorListReserve=sequential_86/lstm_260/TensorArrayV2_1/element_shape:output:0/sequential_86/lstm_260/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_86/lstm_260/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_86/lstm_260/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_86/lstm_260/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_86/lstm_260/whileWhile2sequential_86/lstm_260/while/loop_counter:output:08sequential_86/lstm_260/while/maximum_iterations:output:0$sequential_86/lstm_260/time:output:0/sequential_86/lstm_260/TensorArrayV2_1:handle:0%sequential_86/lstm_260/zeros:output:0'sequential_86/lstm_260/zeros_1:output:0/sequential_86/lstm_260/strided_slice_1:output:0Nsequential_86/lstm_260/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_86_lstm_260_lstm_cell_521_matmul_readvariableop_resourceEsequential_86_lstm_260_lstm_cell_521_matmul_1_readvariableop_resourceDsequential_86_lstm_260_lstm_cell_521_biasadd_readvariableop_resource*
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
)sequential_86_lstm_260_while_body_3150861*5
cond-R+
)sequential_86_lstm_260_while_cond_3150860*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_86/lstm_260/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_86/lstm_260/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_86/lstm_260/while:output:3Psequential_86/lstm_260/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_86/lstm_260/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_86/lstm_260/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_86/lstm_260/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_86/lstm_260/strided_slice_3StridedSliceBsequential_86/lstm_260/TensorArrayV2Stack/TensorListStack:tensor:05sequential_86/lstm_260/strided_slice_3/stack:output:07sequential_86/lstm_260/strided_slice_3/stack_1:output:07sequential_86/lstm_260/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_86/lstm_260/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_86/lstm_260/transpose_1	TransposeBsequential_86/lstm_260/TensorArrayV2Stack/TensorListStack:tensor:00sequential_86/lstm_260/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_86/lstm_260/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_86/dense_86/MatMul/ReadVariableOpReadVariableOp5sequential_86_dense_86_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_86/dense_86/MatMulMatMul/sequential_86/lstm_260/strided_slice_3:output:04sequential_86/dense_86/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_86/dense_86/BiasAdd/ReadVariableOpReadVariableOp6sequential_86_dense_86_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_86/dense_86/BiasAddBiasAdd'sequential_86/dense_86/MatMul:product:05sequential_86/dense_86/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_86/dense_86/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_86/dense_86/BiasAdd/ReadVariableOp-^sequential_86/dense_86/MatMul/ReadVariableOp<^sequential_86/lstm_258/lstm_cell_519/BiasAdd/ReadVariableOp;^sequential_86/lstm_258/lstm_cell_519/MatMul/ReadVariableOp=^sequential_86/lstm_258/lstm_cell_519/MatMul_1/ReadVariableOp^sequential_86/lstm_258/while<^sequential_86/lstm_259/lstm_cell_520/BiasAdd/ReadVariableOp;^sequential_86/lstm_259/lstm_cell_520/MatMul/ReadVariableOp=^sequential_86/lstm_259/lstm_cell_520/MatMul_1/ReadVariableOp^sequential_86/lstm_259/while<^sequential_86/lstm_260/lstm_cell_521/BiasAdd/ReadVariableOp;^sequential_86/lstm_260/lstm_cell_521/MatMul/ReadVariableOp=^sequential_86/lstm_260/lstm_cell_521/MatMul_1/ReadVariableOp^sequential_86/lstm_260/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_86/dense_86/BiasAdd/ReadVariableOp-sequential_86/dense_86/BiasAdd/ReadVariableOp2\
,sequential_86/dense_86/MatMul/ReadVariableOp,sequential_86/dense_86/MatMul/ReadVariableOp2z
;sequential_86/lstm_258/lstm_cell_519/BiasAdd/ReadVariableOp;sequential_86/lstm_258/lstm_cell_519/BiasAdd/ReadVariableOp2x
:sequential_86/lstm_258/lstm_cell_519/MatMul/ReadVariableOp:sequential_86/lstm_258/lstm_cell_519/MatMul/ReadVariableOp2|
<sequential_86/lstm_258/lstm_cell_519/MatMul_1/ReadVariableOp<sequential_86/lstm_258/lstm_cell_519/MatMul_1/ReadVariableOp2<
sequential_86/lstm_258/whilesequential_86/lstm_258/while2z
;sequential_86/lstm_259/lstm_cell_520/BiasAdd/ReadVariableOp;sequential_86/lstm_259/lstm_cell_520/BiasAdd/ReadVariableOp2x
:sequential_86/lstm_259/lstm_cell_520/MatMul/ReadVariableOp:sequential_86/lstm_259/lstm_cell_520/MatMul/ReadVariableOp2|
<sequential_86/lstm_259/lstm_cell_520/MatMul_1/ReadVariableOp<sequential_86/lstm_259/lstm_cell_520/MatMul_1/ReadVariableOp2<
sequential_86/lstm_259/whilesequential_86/lstm_259/while2z
;sequential_86/lstm_260/lstm_cell_521/BiasAdd/ReadVariableOp;sequential_86/lstm_260/lstm_cell_521/BiasAdd/ReadVariableOp2x
:sequential_86/lstm_260/lstm_cell_521/MatMul/ReadVariableOp:sequential_86/lstm_260/lstm_cell_521/MatMul/ReadVariableOp2|
<sequential_86/lstm_260/lstm_cell_521/MatMul_1/ReadVariableOp<sequential_86/lstm_260/lstm_cell_521/MatMul_1/ReadVariableOp2<
sequential_86/lstm_260/whilesequential_86/lstm_260/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_258_input
?S
?
)sequential_86_lstm_259_while_body_3150722J
Fsequential_86_lstm_259_while_sequential_86_lstm_259_while_loop_counterP
Lsequential_86_lstm_259_while_sequential_86_lstm_259_while_maximum_iterations,
(sequential_86_lstm_259_while_placeholder.
*sequential_86_lstm_259_while_placeholder_1.
*sequential_86_lstm_259_while_placeholder_2.
*sequential_86_lstm_259_while_placeholder_3I
Esequential_86_lstm_259_while_sequential_86_lstm_259_strided_slice_1_0?
?sequential_86_lstm_259_while_tensorarrayv2read_tensorlistgetitem_sequential_86_lstm_259_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_86_lstm_259_while_lstm_cell_520_matmul_readvariableop_resource_0:	d?`
Msequential_86_lstm_259_while_lstm_cell_520_matmul_1_readvariableop_resource_0:	2?[
Lsequential_86_lstm_259_while_lstm_cell_520_biasadd_readvariableop_resource_0:	?)
%sequential_86_lstm_259_while_identity+
'sequential_86_lstm_259_while_identity_1+
'sequential_86_lstm_259_while_identity_2+
'sequential_86_lstm_259_while_identity_3+
'sequential_86_lstm_259_while_identity_4+
'sequential_86_lstm_259_while_identity_5G
Csequential_86_lstm_259_while_sequential_86_lstm_259_strided_slice_1?
sequential_86_lstm_259_while_tensorarrayv2read_tensorlistgetitem_sequential_86_lstm_259_tensorarrayunstack_tensorlistfromtensor\
Isequential_86_lstm_259_while_lstm_cell_520_matmul_readvariableop_resource:	d?^
Ksequential_86_lstm_259_while_lstm_cell_520_matmul_1_readvariableop_resource:	2?Y
Jsequential_86_lstm_259_while_lstm_cell_520_biasadd_readvariableop_resource:	???Asequential_86/lstm_259/while/lstm_cell_520/BiasAdd/ReadVariableOp?@sequential_86/lstm_259/while/lstm_cell_520/MatMul/ReadVariableOp?Bsequential_86/lstm_259/while/lstm_cell_520/MatMul_1/ReadVariableOp?
Nsequential_86/lstm_259/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_86/lstm_259/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_86_lstm_259_while_tensorarrayv2read_tensorlistgetitem_sequential_86_lstm_259_tensorarrayunstack_tensorlistfromtensor_0(sequential_86_lstm_259_while_placeholderWsequential_86/lstm_259/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_86/lstm_259/while/lstm_cell_520/MatMul/ReadVariableOpReadVariableOpKsequential_86_lstm_259_while_lstm_cell_520_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_86/lstm_259/while/lstm_cell_520/MatMulMatMulGsequential_86/lstm_259/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_86/lstm_259/while/lstm_cell_520/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_86/lstm_259/while/lstm_cell_520/MatMul_1/ReadVariableOpReadVariableOpMsequential_86_lstm_259_while_lstm_cell_520_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_86/lstm_259/while/lstm_cell_520/MatMul_1MatMul*sequential_86_lstm_259_while_placeholder_2Jsequential_86/lstm_259/while/lstm_cell_520/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_86/lstm_259/while/lstm_cell_520/addAddV2;sequential_86/lstm_259/while/lstm_cell_520/MatMul:product:0=sequential_86/lstm_259/while/lstm_cell_520/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_86/lstm_259/while/lstm_cell_520/BiasAdd/ReadVariableOpReadVariableOpLsequential_86_lstm_259_while_lstm_cell_520_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_86/lstm_259/while/lstm_cell_520/BiasAddBiasAdd2sequential_86/lstm_259/while/lstm_cell_520/add:z:0Isequential_86/lstm_259/while/lstm_cell_520/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_86/lstm_259/while/lstm_cell_520/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_86/lstm_259/while/lstm_cell_520/splitSplitCsequential_86/lstm_259/while/lstm_cell_520/split/split_dim:output:0;sequential_86/lstm_259/while/lstm_cell_520/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_86/lstm_259/while/lstm_cell_520/SigmoidSigmoid9sequential_86/lstm_259/while/lstm_cell_520/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_86/lstm_259/while/lstm_cell_520/Sigmoid_1Sigmoid9sequential_86/lstm_259/while/lstm_cell_520/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_86/lstm_259/while/lstm_cell_520/mulMul8sequential_86/lstm_259/while/lstm_cell_520/Sigmoid_1:y:0*sequential_86_lstm_259_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_86/lstm_259/while/lstm_cell_520/ReluRelu9sequential_86/lstm_259/while/lstm_cell_520/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_86/lstm_259/while/lstm_cell_520/mul_1Mul6sequential_86/lstm_259/while/lstm_cell_520/Sigmoid:y:0=sequential_86/lstm_259/while/lstm_cell_520/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_86/lstm_259/while/lstm_cell_520/add_1AddV22sequential_86/lstm_259/while/lstm_cell_520/mul:z:04sequential_86/lstm_259/while/lstm_cell_520/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_86/lstm_259/while/lstm_cell_520/Sigmoid_2Sigmoid9sequential_86/lstm_259/while/lstm_cell_520/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_86/lstm_259/while/lstm_cell_520/Relu_1Relu4sequential_86/lstm_259/while/lstm_cell_520/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_86/lstm_259/while/lstm_cell_520/mul_2Mul8sequential_86/lstm_259/while/lstm_cell_520/Sigmoid_2:y:0?sequential_86/lstm_259/while/lstm_cell_520/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_86/lstm_259/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_86_lstm_259_while_placeholder_1(sequential_86_lstm_259_while_placeholder4sequential_86/lstm_259/while/lstm_cell_520/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_86/lstm_259/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_86/lstm_259/while/addAddV2(sequential_86_lstm_259_while_placeholder+sequential_86/lstm_259/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_86/lstm_259/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_86/lstm_259/while/add_1AddV2Fsequential_86_lstm_259_while_sequential_86_lstm_259_while_loop_counter-sequential_86/lstm_259/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_86/lstm_259/while/IdentityIdentity&sequential_86/lstm_259/while/add_1:z:0"^sequential_86/lstm_259/while/NoOp*
T0*
_output_shapes
: ?
'sequential_86/lstm_259/while/Identity_1IdentityLsequential_86_lstm_259_while_sequential_86_lstm_259_while_maximum_iterations"^sequential_86/lstm_259/while/NoOp*
T0*
_output_shapes
: ?
'sequential_86/lstm_259/while/Identity_2Identity$sequential_86/lstm_259/while/add:z:0"^sequential_86/lstm_259/while/NoOp*
T0*
_output_shapes
: ?
'sequential_86/lstm_259/while/Identity_3IdentityQsequential_86/lstm_259/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_86/lstm_259/while/NoOp*
T0*
_output_shapes
: ?
'sequential_86/lstm_259/while/Identity_4Identity4sequential_86/lstm_259/while/lstm_cell_520/mul_2:z:0"^sequential_86/lstm_259/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_86/lstm_259/while/Identity_5Identity4sequential_86/lstm_259/while/lstm_cell_520/add_1:z:0"^sequential_86/lstm_259/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_86/lstm_259/while/NoOpNoOpB^sequential_86/lstm_259/while/lstm_cell_520/BiasAdd/ReadVariableOpA^sequential_86/lstm_259/while/lstm_cell_520/MatMul/ReadVariableOpC^sequential_86/lstm_259/while/lstm_cell_520/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_86_lstm_259_while_identity.sequential_86/lstm_259/while/Identity:output:0"[
'sequential_86_lstm_259_while_identity_10sequential_86/lstm_259/while/Identity_1:output:0"[
'sequential_86_lstm_259_while_identity_20sequential_86/lstm_259/while/Identity_2:output:0"[
'sequential_86_lstm_259_while_identity_30sequential_86/lstm_259/while/Identity_3:output:0"[
'sequential_86_lstm_259_while_identity_40sequential_86/lstm_259/while/Identity_4:output:0"[
'sequential_86_lstm_259_while_identity_50sequential_86/lstm_259/while/Identity_5:output:0"?
Jsequential_86_lstm_259_while_lstm_cell_520_biasadd_readvariableop_resourceLsequential_86_lstm_259_while_lstm_cell_520_biasadd_readvariableop_resource_0"?
Ksequential_86_lstm_259_while_lstm_cell_520_matmul_1_readvariableop_resourceMsequential_86_lstm_259_while_lstm_cell_520_matmul_1_readvariableop_resource_0"?
Isequential_86_lstm_259_while_lstm_cell_520_matmul_readvariableop_resourceKsequential_86_lstm_259_while_lstm_cell_520_matmul_readvariableop_resource_0"?
Csequential_86_lstm_259_while_sequential_86_lstm_259_strided_slice_1Esequential_86_lstm_259_while_sequential_86_lstm_259_strided_slice_1_0"?
sequential_86_lstm_259_while_tensorarrayv2read_tensorlistgetitem_sequential_86_lstm_259_tensorarrayunstack_tensorlistfromtensor?sequential_86_lstm_259_while_tensorarrayv2read_tensorlistgetitem_sequential_86_lstm_259_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_86/lstm_259/while/lstm_cell_520/BiasAdd/ReadVariableOpAsequential_86/lstm_259/while/lstm_cell_520/BiasAdd/ReadVariableOp2?
@sequential_86/lstm_259/while/lstm_cell_520/MatMul/ReadVariableOp@sequential_86/lstm_259/while/lstm_cell_520/MatMul/ReadVariableOp2?
Bsequential_86/lstm_259/while/lstm_cell_520/MatMul_1/ReadVariableOpBsequential_86/lstm_259/while/lstm_cell_520/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?K
?
E__inference_lstm_260_layer_call_and_return_conditional_losses_3155538
inputs_0>
,lstm_cell_521_matmul_readvariableop_resource:2(@
.lstm_cell_521_matmul_1_readvariableop_resource:
(;
-lstm_cell_521_biasadd_readvariableop_resource:(
identity??$lstm_cell_521/BiasAdd/ReadVariableOp?#lstm_cell_521/MatMul/ReadVariableOp?%lstm_cell_521/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_521/MatMul/ReadVariableOpReadVariableOp,lstm_cell_521_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_521/MatMulMatMulstrided_slice_2:output:0+lstm_cell_521/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_521/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_521_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_521/MatMul_1MatMulzeros:output:0-lstm_cell_521/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_521/addAddV2lstm_cell_521/MatMul:product:0 lstm_cell_521/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_521/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_521_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_521/BiasAddBiasAddlstm_cell_521/add:z:0,lstm_cell_521/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_521/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_521/splitSplit&lstm_cell_521/split/split_dim:output:0lstm_cell_521/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_521/SigmoidSigmoidlstm_cell_521/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_521/Sigmoid_1Sigmoidlstm_cell_521/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_521/mulMullstm_cell_521/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_521/ReluRelulstm_cell_521/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_521/mul_1Mullstm_cell_521/Sigmoid:y:0 lstm_cell_521/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_521/add_1AddV2lstm_cell_521/mul:z:0lstm_cell_521/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_521/Sigmoid_2Sigmoidlstm_cell_521/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_521/Relu_1Relulstm_cell_521/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_521/mul_2Mullstm_cell_521/Sigmoid_2:y:0"lstm_cell_521/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_521_matmul_readvariableop_resource.lstm_cell_521_matmul_1_readvariableop_resource-lstm_cell_521_biasadd_readvariableop_resource*
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
while_body_3155454*
condR
while_cond_3155453*K
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
NoOpNoOp%^lstm_cell_521/BiasAdd/ReadVariableOp$^lstm_cell_521/MatMul/ReadVariableOp&^lstm_cell_521/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_521/BiasAdd/ReadVariableOp$lstm_cell_521/BiasAdd/ReadVariableOp2J
#lstm_cell_521/MatMul/ReadVariableOp#lstm_cell_521/MatMul/ReadVariableOp2N
%lstm_cell_521/MatMul_1/ReadVariableOp%lstm_cell_521/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_519_layer_call_fn_3156003

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
J__inference_lstm_cell_519_layer_call_and_return_conditional_losses_3151018o
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
?
*__inference_lstm_259_layer_call_fn_3154757
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
E__inference_lstm_259_layer_call_and_return_conditional_losses_3151642|
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
?
/__inference_lstm_cell_520_layer_call_fn_3156118

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
J__inference_lstm_cell_520_layer_call_and_return_conditional_losses_3151514o
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
while_cond_3154364
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3154364___redundant_placeholder05
1while_while_cond_3154364___redundant_placeholder15
1while_while_cond_3154364___redundant_placeholder25
1while_while_cond_3154364___redundant_placeholder3
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
while_cond_3152215
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3152215___redundant_placeholder05
1while_while_cond_3152215___redundant_placeholder15
1while_while_cond_3152215___redundant_placeholder25
1while_while_cond_3152215___redundant_placeholder3
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

lstm_259_while_body_3153890.
*lstm_259_while_lstm_259_while_loop_counter4
0lstm_259_while_lstm_259_while_maximum_iterations
lstm_259_while_placeholder 
lstm_259_while_placeholder_1 
lstm_259_while_placeholder_2 
lstm_259_while_placeholder_3-
)lstm_259_while_lstm_259_strided_slice_1_0i
elstm_259_while_tensorarrayv2read_tensorlistgetitem_lstm_259_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_259_while_lstm_cell_520_matmul_readvariableop_resource_0:	d?R
?lstm_259_while_lstm_cell_520_matmul_1_readvariableop_resource_0:	2?M
>lstm_259_while_lstm_cell_520_biasadd_readvariableop_resource_0:	?
lstm_259_while_identity
lstm_259_while_identity_1
lstm_259_while_identity_2
lstm_259_while_identity_3
lstm_259_while_identity_4
lstm_259_while_identity_5+
'lstm_259_while_lstm_259_strided_slice_1g
clstm_259_while_tensorarrayv2read_tensorlistgetitem_lstm_259_tensorarrayunstack_tensorlistfromtensorN
;lstm_259_while_lstm_cell_520_matmul_readvariableop_resource:	d?P
=lstm_259_while_lstm_cell_520_matmul_1_readvariableop_resource:	2?K
<lstm_259_while_lstm_cell_520_biasadd_readvariableop_resource:	???3lstm_259/while/lstm_cell_520/BiasAdd/ReadVariableOp?2lstm_259/while/lstm_cell_520/MatMul/ReadVariableOp?4lstm_259/while/lstm_cell_520/MatMul_1/ReadVariableOp?
@lstm_259/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_259/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_259_while_tensorarrayv2read_tensorlistgetitem_lstm_259_tensorarrayunstack_tensorlistfromtensor_0lstm_259_while_placeholderIlstm_259/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_259/while/lstm_cell_520/MatMul/ReadVariableOpReadVariableOp=lstm_259_while_lstm_cell_520_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_259/while/lstm_cell_520/MatMulMatMul9lstm_259/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_259/while/lstm_cell_520/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_259/while/lstm_cell_520/MatMul_1/ReadVariableOpReadVariableOp?lstm_259_while_lstm_cell_520_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_259/while/lstm_cell_520/MatMul_1MatMullstm_259_while_placeholder_2<lstm_259/while/lstm_cell_520/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_259/while/lstm_cell_520/addAddV2-lstm_259/while/lstm_cell_520/MatMul:product:0/lstm_259/while/lstm_cell_520/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_259/while/lstm_cell_520/BiasAdd/ReadVariableOpReadVariableOp>lstm_259_while_lstm_cell_520_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_259/while/lstm_cell_520/BiasAddBiasAdd$lstm_259/while/lstm_cell_520/add:z:0;lstm_259/while/lstm_cell_520/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_259/while/lstm_cell_520/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_259/while/lstm_cell_520/splitSplit5lstm_259/while/lstm_cell_520/split/split_dim:output:0-lstm_259/while/lstm_cell_520/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_259/while/lstm_cell_520/SigmoidSigmoid+lstm_259/while/lstm_cell_520/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_259/while/lstm_cell_520/Sigmoid_1Sigmoid+lstm_259/while/lstm_cell_520/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_259/while/lstm_cell_520/mulMul*lstm_259/while/lstm_cell_520/Sigmoid_1:y:0lstm_259_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_259/while/lstm_cell_520/ReluRelu+lstm_259/while/lstm_cell_520/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_259/while/lstm_cell_520/mul_1Mul(lstm_259/while/lstm_cell_520/Sigmoid:y:0/lstm_259/while/lstm_cell_520/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_259/while/lstm_cell_520/add_1AddV2$lstm_259/while/lstm_cell_520/mul:z:0&lstm_259/while/lstm_cell_520/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_259/while/lstm_cell_520/Sigmoid_2Sigmoid+lstm_259/while/lstm_cell_520/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_259/while/lstm_cell_520/Relu_1Relu&lstm_259/while/lstm_cell_520/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_259/while/lstm_cell_520/mul_2Mul*lstm_259/while/lstm_cell_520/Sigmoid_2:y:01lstm_259/while/lstm_cell_520/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_259/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_259_while_placeholder_1lstm_259_while_placeholder&lstm_259/while/lstm_cell_520/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_259/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_259/while/addAddV2lstm_259_while_placeholderlstm_259/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_259/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_259/while/add_1AddV2*lstm_259_while_lstm_259_while_loop_counterlstm_259/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_259/while/IdentityIdentitylstm_259/while/add_1:z:0^lstm_259/while/NoOp*
T0*
_output_shapes
: ?
lstm_259/while/Identity_1Identity0lstm_259_while_lstm_259_while_maximum_iterations^lstm_259/while/NoOp*
T0*
_output_shapes
: t
lstm_259/while/Identity_2Identitylstm_259/while/add:z:0^lstm_259/while/NoOp*
T0*
_output_shapes
: ?
lstm_259/while/Identity_3IdentityClstm_259/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_259/while/NoOp*
T0*
_output_shapes
: ?
lstm_259/while/Identity_4Identity&lstm_259/while/lstm_cell_520/mul_2:z:0^lstm_259/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_259/while/Identity_5Identity&lstm_259/while/lstm_cell_520/add_1:z:0^lstm_259/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_259/while/NoOpNoOp4^lstm_259/while/lstm_cell_520/BiasAdd/ReadVariableOp3^lstm_259/while/lstm_cell_520/MatMul/ReadVariableOp5^lstm_259/while/lstm_cell_520/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_259_while_identity lstm_259/while/Identity:output:0"?
lstm_259_while_identity_1"lstm_259/while/Identity_1:output:0"?
lstm_259_while_identity_2"lstm_259/while/Identity_2:output:0"?
lstm_259_while_identity_3"lstm_259/while/Identity_3:output:0"?
lstm_259_while_identity_4"lstm_259/while/Identity_4:output:0"?
lstm_259_while_identity_5"lstm_259/while/Identity_5:output:0"T
'lstm_259_while_lstm_259_strided_slice_1)lstm_259_while_lstm_259_strided_slice_1_0"~
<lstm_259_while_lstm_cell_520_biasadd_readvariableop_resource>lstm_259_while_lstm_cell_520_biasadd_readvariableop_resource_0"?
=lstm_259_while_lstm_cell_520_matmul_1_readvariableop_resource?lstm_259_while_lstm_cell_520_matmul_1_readvariableop_resource_0"|
;lstm_259_while_lstm_cell_520_matmul_readvariableop_resource=lstm_259_while_lstm_cell_520_matmul_readvariableop_resource_0"?
clstm_259_while_tensorarrayv2read_tensorlistgetitem_lstm_259_tensorarrayunstack_tensorlistfromtensorelstm_259_while_tensorarrayv2read_tensorlistgetitem_lstm_259_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_259/while/lstm_cell_520/BiasAdd/ReadVariableOp3lstm_259/while/lstm_cell_520/BiasAdd/ReadVariableOp2h
2lstm_259/while/lstm_cell_520/MatMul/ReadVariableOp2lstm_259/while/lstm_cell_520/MatMul/ReadVariableOp2l
4lstm_259/while/lstm_cell_520/MatMul_1/ReadVariableOp4lstm_259/while/lstm_cell_520/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3155266
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3155266___redundant_placeholder05
1while_while_cond_3155266___redundant_placeholder15
1while_while_cond_3155266___redundant_placeholder25
1while_while_cond_3155266___redundant_placeholder3
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
while_cond_3154507
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3154507___redundant_placeholder05
1while_while_cond_3154507___redundant_placeholder15
1while_while_cond_3154507___redundant_placeholder25
1while_while_cond_3154507___redundant_placeholder3
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
J__inference_lstm_cell_520_layer_call_and_return_conditional_losses_3151514

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
while_cond_3151572
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3151572___redundant_placeholder05
1while_while_cond_3151572___redundant_placeholder15
1while_while_cond_3151572___redundant_placeholder25
1while_while_cond_3151572___redundant_placeholder3
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
while_body_3152912
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_519_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_519_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_519_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_519_matmul_readvariableop_resource:	?G
4while_lstm_cell_519_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_519_biasadd_readvariableop_resource:	???*while/lstm_cell_519/BiasAdd/ReadVariableOp?)while/lstm_cell_519/MatMul/ReadVariableOp?+while/lstm_cell_519/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_519/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_519_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_519/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_519/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_519/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_519_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_519/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_519/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_519/addAddV2$while/lstm_cell_519/MatMul:product:0&while/lstm_cell_519/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_519/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_519_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_519/BiasAddBiasAddwhile/lstm_cell_519/add:z:02while/lstm_cell_519/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_519/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_519/splitSplit,while/lstm_cell_519/split/split_dim:output:0$while/lstm_cell_519/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_519/SigmoidSigmoid"while/lstm_cell_519/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_519/Sigmoid_1Sigmoid"while/lstm_cell_519/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_519/mulMul!while/lstm_cell_519/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_519/ReluRelu"while/lstm_cell_519/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_519/mul_1Mulwhile/lstm_cell_519/Sigmoid:y:0&while/lstm_cell_519/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_519/add_1AddV2while/lstm_cell_519/mul:z:0while/lstm_cell_519/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_519/Sigmoid_2Sigmoid"while/lstm_cell_519/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_519/Relu_1Reluwhile/lstm_cell_519/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_519/mul_2Mul!while/lstm_cell_519/Sigmoid_2:y:0(while/lstm_cell_519/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_519/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_519/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_519/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_519/BiasAdd/ReadVariableOp*^while/lstm_cell_519/MatMul/ReadVariableOp,^while/lstm_cell_519/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_519_biasadd_readvariableop_resource5while_lstm_cell_519_biasadd_readvariableop_resource_0"n
4while_lstm_cell_519_matmul_1_readvariableop_resource6while_lstm_cell_519_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_519_matmul_readvariableop_resource4while_lstm_cell_519_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_519/BiasAdd/ReadVariableOp*while/lstm_cell_519/BiasAdd/ReadVariableOp2V
)while/lstm_cell_519/MatMul/ReadVariableOp)while/lstm_cell_519/MatMul/ReadVariableOp2Z
+while/lstm_cell_519/MatMul_1/ReadVariableOp+while/lstm_cell_519/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_521_layer_call_and_return_conditional_losses_3151718

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
?
while_cond_3154221
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3154221___redundant_placeholder05
1while_while_cond_3154221___redundant_placeholder15
1while_while_cond_3154221___redundant_placeholder25
1while_while_cond_3154221___redundant_placeholder3
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
?C
?

lstm_260_while_body_3153602.
*lstm_260_while_lstm_260_while_loop_counter4
0lstm_260_while_lstm_260_while_maximum_iterations
lstm_260_while_placeholder 
lstm_260_while_placeholder_1 
lstm_260_while_placeholder_2 
lstm_260_while_placeholder_3-
)lstm_260_while_lstm_260_strided_slice_1_0i
elstm_260_while_tensorarrayv2read_tensorlistgetitem_lstm_260_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_260_while_lstm_cell_521_matmul_readvariableop_resource_0:2(Q
?lstm_260_while_lstm_cell_521_matmul_1_readvariableop_resource_0:
(L
>lstm_260_while_lstm_cell_521_biasadd_readvariableop_resource_0:(
lstm_260_while_identity
lstm_260_while_identity_1
lstm_260_while_identity_2
lstm_260_while_identity_3
lstm_260_while_identity_4
lstm_260_while_identity_5+
'lstm_260_while_lstm_260_strided_slice_1g
clstm_260_while_tensorarrayv2read_tensorlistgetitem_lstm_260_tensorarrayunstack_tensorlistfromtensorM
;lstm_260_while_lstm_cell_521_matmul_readvariableop_resource:2(O
=lstm_260_while_lstm_cell_521_matmul_1_readvariableop_resource:
(J
<lstm_260_while_lstm_cell_521_biasadd_readvariableop_resource:(??3lstm_260/while/lstm_cell_521/BiasAdd/ReadVariableOp?2lstm_260/while/lstm_cell_521/MatMul/ReadVariableOp?4lstm_260/while/lstm_cell_521/MatMul_1/ReadVariableOp?
@lstm_260/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_260/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_260_while_tensorarrayv2read_tensorlistgetitem_lstm_260_tensorarrayunstack_tensorlistfromtensor_0lstm_260_while_placeholderIlstm_260/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_260/while/lstm_cell_521/MatMul/ReadVariableOpReadVariableOp=lstm_260_while_lstm_cell_521_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_260/while/lstm_cell_521/MatMulMatMul9lstm_260/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_260/while/lstm_cell_521/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_260/while/lstm_cell_521/MatMul_1/ReadVariableOpReadVariableOp?lstm_260_while_lstm_cell_521_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_260/while/lstm_cell_521/MatMul_1MatMullstm_260_while_placeholder_2<lstm_260/while/lstm_cell_521/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_260/while/lstm_cell_521/addAddV2-lstm_260/while/lstm_cell_521/MatMul:product:0/lstm_260/while/lstm_cell_521/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_260/while/lstm_cell_521/BiasAdd/ReadVariableOpReadVariableOp>lstm_260_while_lstm_cell_521_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_260/while/lstm_cell_521/BiasAddBiasAdd$lstm_260/while/lstm_cell_521/add:z:0;lstm_260/while/lstm_cell_521/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_260/while/lstm_cell_521/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_260/while/lstm_cell_521/splitSplit5lstm_260/while/lstm_cell_521/split/split_dim:output:0-lstm_260/while/lstm_cell_521/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_260/while/lstm_cell_521/SigmoidSigmoid+lstm_260/while/lstm_cell_521/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_260/while/lstm_cell_521/Sigmoid_1Sigmoid+lstm_260/while/lstm_cell_521/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_260/while/lstm_cell_521/mulMul*lstm_260/while/lstm_cell_521/Sigmoid_1:y:0lstm_260_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_260/while/lstm_cell_521/ReluRelu+lstm_260/while/lstm_cell_521/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_260/while/lstm_cell_521/mul_1Mul(lstm_260/while/lstm_cell_521/Sigmoid:y:0/lstm_260/while/lstm_cell_521/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_260/while/lstm_cell_521/add_1AddV2$lstm_260/while/lstm_cell_521/mul:z:0&lstm_260/while/lstm_cell_521/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_260/while/lstm_cell_521/Sigmoid_2Sigmoid+lstm_260/while/lstm_cell_521/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_260/while/lstm_cell_521/Relu_1Relu&lstm_260/while/lstm_cell_521/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_260/while/lstm_cell_521/mul_2Mul*lstm_260/while/lstm_cell_521/Sigmoid_2:y:01lstm_260/while/lstm_cell_521/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_260/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_260_while_placeholder_1lstm_260_while_placeholder&lstm_260/while/lstm_cell_521/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_260/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_260/while/addAddV2lstm_260_while_placeholderlstm_260/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_260/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_260/while/add_1AddV2*lstm_260_while_lstm_260_while_loop_counterlstm_260/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_260/while/IdentityIdentitylstm_260/while/add_1:z:0^lstm_260/while/NoOp*
T0*
_output_shapes
: ?
lstm_260/while/Identity_1Identity0lstm_260_while_lstm_260_while_maximum_iterations^lstm_260/while/NoOp*
T0*
_output_shapes
: t
lstm_260/while/Identity_2Identitylstm_260/while/add:z:0^lstm_260/while/NoOp*
T0*
_output_shapes
: ?
lstm_260/while/Identity_3IdentityClstm_260/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_260/while/NoOp*
T0*
_output_shapes
: ?
lstm_260/while/Identity_4Identity&lstm_260/while/lstm_cell_521/mul_2:z:0^lstm_260/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_260/while/Identity_5Identity&lstm_260/while/lstm_cell_521/add_1:z:0^lstm_260/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_260/while/NoOpNoOp4^lstm_260/while/lstm_cell_521/BiasAdd/ReadVariableOp3^lstm_260/while/lstm_cell_521/MatMul/ReadVariableOp5^lstm_260/while/lstm_cell_521/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_260_while_identity lstm_260/while/Identity:output:0"?
lstm_260_while_identity_1"lstm_260/while/Identity_1:output:0"?
lstm_260_while_identity_2"lstm_260/while/Identity_2:output:0"?
lstm_260_while_identity_3"lstm_260/while/Identity_3:output:0"?
lstm_260_while_identity_4"lstm_260/while/Identity_4:output:0"?
lstm_260_while_identity_5"lstm_260/while/Identity_5:output:0"T
'lstm_260_while_lstm_260_strided_slice_1)lstm_260_while_lstm_260_strided_slice_1_0"~
<lstm_260_while_lstm_cell_521_biasadd_readvariableop_resource>lstm_260_while_lstm_cell_521_biasadd_readvariableop_resource_0"?
=lstm_260_while_lstm_cell_521_matmul_1_readvariableop_resource?lstm_260_while_lstm_cell_521_matmul_1_readvariableop_resource_0"|
;lstm_260_while_lstm_cell_521_matmul_readvariableop_resource=lstm_260_while_lstm_cell_521_matmul_readvariableop_resource_0"?
clstm_260_while_tensorarrayv2read_tensorlistgetitem_lstm_260_tensorarrayunstack_tensorlistfromtensorelstm_260_while_tensorarrayv2read_tensorlistgetitem_lstm_260_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_260/while/lstm_cell_521/BiasAdd/ReadVariableOp3lstm_260/while/lstm_cell_521/BiasAdd/ReadVariableOp2h
2lstm_260/while/lstm_cell_521/MatMul/ReadVariableOp2lstm_260/while/lstm_cell_521/MatMul/ReadVariableOp2l
4lstm_260/while/lstm_cell_521/MatMul_1/ReadVariableOp4lstm_260/while/lstm_cell_521/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_258_layer_call_fn_3154163

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
E__inference_lstm_258_layer_call_and_return_conditional_losses_3152996s
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
E__inference_lstm_258_layer_call_and_return_conditional_losses_3152996

inputs?
,lstm_cell_519_matmul_readvariableop_resource:	?A
.lstm_cell_519_matmul_1_readvariableop_resource:	d?<
-lstm_cell_519_biasadd_readvariableop_resource:	?
identity??$lstm_cell_519/BiasAdd/ReadVariableOp?#lstm_cell_519/MatMul/ReadVariableOp?%lstm_cell_519/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_519/MatMul/ReadVariableOpReadVariableOp,lstm_cell_519_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_519/MatMulMatMulstrided_slice_2:output:0+lstm_cell_519/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_519/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_519_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_519/MatMul_1MatMulzeros:output:0-lstm_cell_519/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_519/addAddV2lstm_cell_519/MatMul:product:0 lstm_cell_519/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_519/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_519_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_519/BiasAddBiasAddlstm_cell_519/add:z:0,lstm_cell_519/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_519/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_519/splitSplit&lstm_cell_519/split/split_dim:output:0lstm_cell_519/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_519/SigmoidSigmoidlstm_cell_519/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_519/Sigmoid_1Sigmoidlstm_cell_519/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_519/mulMullstm_cell_519/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_519/ReluRelulstm_cell_519/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_519/mul_1Mullstm_cell_519/Sigmoid:y:0 lstm_cell_519/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_519/add_1AddV2lstm_cell_519/mul:z:0lstm_cell_519/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_519/Sigmoid_2Sigmoidlstm_cell_519/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_519/Relu_1Relulstm_cell_519/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_519/mul_2Mullstm_cell_519/Sigmoid_2:y:0"lstm_cell_519/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_519_matmul_readvariableop_resource.lstm_cell_519_matmul_1_readvariableop_resource-lstm_cell_519_biasadd_readvariableop_resource*
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
while_body_3152912*
condR
while_cond_3152911*K
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
NoOpNoOp%^lstm_cell_519/BiasAdd/ReadVariableOp$^lstm_cell_519/MatMul/ReadVariableOp&^lstm_cell_519/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_519/BiasAdd/ReadVariableOp$lstm_cell_519/BiasAdd/ReadVariableOp2J
#lstm_cell_519/MatMul/ReadVariableOp#lstm_cell_519/MatMul/ReadVariableOp2N
%lstm_cell_519/MatMul_1/ReadVariableOp%lstm_cell_519/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3154651
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_519_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_519_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_519_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_519_matmul_readvariableop_resource:	?G
4while_lstm_cell_519_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_519_biasadd_readvariableop_resource:	???*while/lstm_cell_519/BiasAdd/ReadVariableOp?)while/lstm_cell_519/MatMul/ReadVariableOp?+while/lstm_cell_519/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_519/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_519_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_519/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_519/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_519/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_519_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_519/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_519/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_519/addAddV2$while/lstm_cell_519/MatMul:product:0&while/lstm_cell_519/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_519/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_519_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_519/BiasAddBiasAddwhile/lstm_cell_519/add:z:02while/lstm_cell_519/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_519/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_519/splitSplit,while/lstm_cell_519/split/split_dim:output:0$while/lstm_cell_519/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_519/SigmoidSigmoid"while/lstm_cell_519/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_519/Sigmoid_1Sigmoid"while/lstm_cell_519/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_519/mulMul!while/lstm_cell_519/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_519/ReluRelu"while/lstm_cell_519/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_519/mul_1Mulwhile/lstm_cell_519/Sigmoid:y:0&while/lstm_cell_519/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_519/add_1AddV2while/lstm_cell_519/mul:z:0while/lstm_cell_519/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_519/Sigmoid_2Sigmoid"while/lstm_cell_519/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_519/Relu_1Reluwhile/lstm_cell_519/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_519/mul_2Mul!while/lstm_cell_519/Sigmoid_2:y:0(while/lstm_cell_519/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_519/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_519/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_519/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_519/BiasAdd/ReadVariableOp*^while/lstm_cell_519/MatMul/ReadVariableOp,^while/lstm_cell_519/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_519_biasadd_readvariableop_resource5while_lstm_cell_519_biasadd_readvariableop_resource_0"n
4while_lstm_cell_519_matmul_1_readvariableop_resource6while_lstm_cell_519_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_519_matmul_readvariableop_resource4while_lstm_cell_519_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_519/BiasAdd/ReadVariableOp*while/lstm_cell_519/BiasAdd/ReadVariableOp2V
)while/lstm_cell_519/MatMul/ReadVariableOp)while/lstm_cell_519/MatMul/ReadVariableOp2Z
+while/lstm_cell_519/MatMul_1/ReadVariableOp+while/lstm_cell_519/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_258_layer_call_and_return_conditional_losses_3154735

inputs?
,lstm_cell_519_matmul_readvariableop_resource:	?A
.lstm_cell_519_matmul_1_readvariableop_resource:	d?<
-lstm_cell_519_biasadd_readvariableop_resource:	?
identity??$lstm_cell_519/BiasAdd/ReadVariableOp?#lstm_cell_519/MatMul/ReadVariableOp?%lstm_cell_519/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_519/MatMul/ReadVariableOpReadVariableOp,lstm_cell_519_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_519/MatMulMatMulstrided_slice_2:output:0+lstm_cell_519/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_519/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_519_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_519/MatMul_1MatMulzeros:output:0-lstm_cell_519/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_519/addAddV2lstm_cell_519/MatMul:product:0 lstm_cell_519/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_519/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_519_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_519/BiasAddBiasAddlstm_cell_519/add:z:0,lstm_cell_519/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_519/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_519/splitSplit&lstm_cell_519/split/split_dim:output:0lstm_cell_519/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_519/SigmoidSigmoidlstm_cell_519/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_519/Sigmoid_1Sigmoidlstm_cell_519/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_519/mulMullstm_cell_519/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_519/ReluRelulstm_cell_519/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_519/mul_1Mullstm_cell_519/Sigmoid:y:0 lstm_cell_519/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_519/add_1AddV2lstm_cell_519/mul:z:0lstm_cell_519/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_519/Sigmoid_2Sigmoidlstm_cell_519/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_519/Relu_1Relulstm_cell_519/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_519/mul_2Mullstm_cell_519/Sigmoid_2:y:0"lstm_cell_519/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_519_matmul_readvariableop_resource.lstm_cell_519_matmul_1_readvariableop_resource-lstm_cell_519_biasadd_readvariableop_resource*
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
while_body_3154651*
condR
while_cond_3154650*K
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
NoOpNoOp%^lstm_cell_519/BiasAdd/ReadVariableOp$^lstm_cell_519/MatMul/ReadVariableOp&^lstm_cell_519/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_519/BiasAdd/ReadVariableOp$lstm_cell_519/BiasAdd/ReadVariableOp2J
#lstm_cell_519/MatMul/ReadVariableOp#lstm_cell_519/MatMul/ReadVariableOp2N
%lstm_cell_519/MatMul_1/ReadVariableOp%lstm_cell_519/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
/__inference_sequential_86_layer_call_fn_3153265

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
J__inference_sequential_86_layer_call_and_return_conditional_losses_3153064o
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
while_cond_3154650
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3154650___redundant_placeholder05
1while_while_cond_3154650___redundant_placeholder15
1while_while_cond_3154650___redundant_placeholder25
1while_while_cond_3154650___redundant_placeholder3
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
J__inference_lstm_cell_519_layer_call_and_return_conditional_losses_3151164

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
while_cond_3151381
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3151381___redundant_placeholder05
1while_while_cond_3151381___redundant_placeholder15
1while_while_cond_3151381___redundant_placeholder25
1while_while_cond_3151381___redundant_placeholder3
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
while_body_3154365
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_519_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_519_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_519_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_519_matmul_readvariableop_resource:	?G
4while_lstm_cell_519_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_519_biasadd_readvariableop_resource:	???*while/lstm_cell_519/BiasAdd/ReadVariableOp?)while/lstm_cell_519/MatMul/ReadVariableOp?+while/lstm_cell_519/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_519/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_519_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_519/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_519/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_519/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_519_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_519/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_519/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_519/addAddV2$while/lstm_cell_519/MatMul:product:0&while/lstm_cell_519/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_519/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_519_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_519/BiasAddBiasAddwhile/lstm_cell_519/add:z:02while/lstm_cell_519/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_519/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_519/splitSplit,while/lstm_cell_519/split/split_dim:output:0$while/lstm_cell_519/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_519/SigmoidSigmoid"while/lstm_cell_519/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_519/Sigmoid_1Sigmoid"while/lstm_cell_519/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_519/mulMul!while/lstm_cell_519/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_519/ReluRelu"while/lstm_cell_519/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_519/mul_1Mulwhile/lstm_cell_519/Sigmoid:y:0&while/lstm_cell_519/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_519/add_1AddV2while/lstm_cell_519/mul:z:0while/lstm_cell_519/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_519/Sigmoid_2Sigmoid"while/lstm_cell_519/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_519/Relu_1Reluwhile/lstm_cell_519/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_519/mul_2Mul!while/lstm_cell_519/Sigmoid_2:y:0(while/lstm_cell_519/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_519/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_519/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_519/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_519/BiasAdd/ReadVariableOp*^while/lstm_cell_519/MatMul/ReadVariableOp,^while/lstm_cell_519/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_519_biasadd_readvariableop_resource5while_lstm_cell_519_biasadd_readvariableop_resource_0"n
4while_lstm_cell_519_matmul_1_readvariableop_resource6while_lstm_cell_519_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_519_matmul_readvariableop_resource4while_lstm_cell_519_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_519/BiasAdd/ReadVariableOp*while/lstm_cell_519/BiasAdd/ReadVariableOp2V
)while/lstm_cell_519/MatMul/ReadVariableOp)while/lstm_cell_519/MatMul/ReadVariableOp2Z
+while/lstm_cell_519/MatMul_1/ReadVariableOp+while/lstm_cell_519/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?K
?
E__inference_lstm_258_layer_call_and_return_conditional_losses_3154306
inputs_0?
,lstm_cell_519_matmul_readvariableop_resource:	?A
.lstm_cell_519_matmul_1_readvariableop_resource:	d?<
-lstm_cell_519_biasadd_readvariableop_resource:	?
identity??$lstm_cell_519/BiasAdd/ReadVariableOp?#lstm_cell_519/MatMul/ReadVariableOp?%lstm_cell_519/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_519/MatMul/ReadVariableOpReadVariableOp,lstm_cell_519_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_519/MatMulMatMulstrided_slice_2:output:0+lstm_cell_519/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_519/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_519_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_519/MatMul_1MatMulzeros:output:0-lstm_cell_519/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_519/addAddV2lstm_cell_519/MatMul:product:0 lstm_cell_519/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_519/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_519_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_519/BiasAddBiasAddlstm_cell_519/add:z:0,lstm_cell_519/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_519/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_519/splitSplit&lstm_cell_519/split/split_dim:output:0lstm_cell_519/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_519/SigmoidSigmoidlstm_cell_519/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_519/Sigmoid_1Sigmoidlstm_cell_519/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_519/mulMullstm_cell_519/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_519/ReluRelulstm_cell_519/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_519/mul_1Mullstm_cell_519/Sigmoid:y:0 lstm_cell_519/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_519/add_1AddV2lstm_cell_519/mul:z:0lstm_cell_519/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_519/Sigmoid_2Sigmoidlstm_cell_519/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_519/Relu_1Relulstm_cell_519/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_519/mul_2Mullstm_cell_519/Sigmoid_2:y:0"lstm_cell_519/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_519_matmul_readvariableop_resource.lstm_cell_519_matmul_1_readvariableop_resource-lstm_cell_519_biasadd_readvariableop_resource*
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
while_body_3154222*
condR
while_cond_3154221*K
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
NoOpNoOp%^lstm_cell_519/BiasAdd/ReadVariableOp$^lstm_cell_519/MatMul/ReadVariableOp&^lstm_cell_519/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_519/BiasAdd/ReadVariableOp$lstm_cell_519/BiasAdd/ReadVariableOp2J
#lstm_cell_519/MatMul/ReadVariableOp#lstm_cell_519/MatMul/ReadVariableOp2N
%lstm_cell_519/MatMul_1/ReadVariableOp%lstm_cell_519/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_3151031
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3151031___redundant_placeholder05
1while_while_cond_3151031___redundant_placeholder15
1while_while_cond_3151031___redundant_placeholder25
1while_while_cond_3151031___redundant_placeholder3
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
?K
?
E__inference_lstm_260_layer_call_and_return_conditional_losses_3155681
inputs_0>
,lstm_cell_521_matmul_readvariableop_resource:2(@
.lstm_cell_521_matmul_1_readvariableop_resource:
(;
-lstm_cell_521_biasadd_readvariableop_resource:(
identity??$lstm_cell_521/BiasAdd/ReadVariableOp?#lstm_cell_521/MatMul/ReadVariableOp?%lstm_cell_521/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_521/MatMul/ReadVariableOpReadVariableOp,lstm_cell_521_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_521/MatMulMatMulstrided_slice_2:output:0+lstm_cell_521/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_521/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_521_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_521/MatMul_1MatMulzeros:output:0-lstm_cell_521/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_521/addAddV2lstm_cell_521/MatMul:product:0 lstm_cell_521/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_521/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_521_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_521/BiasAddBiasAddlstm_cell_521/add:z:0,lstm_cell_521/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_521/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_521/splitSplit&lstm_cell_521/split/split_dim:output:0lstm_cell_521/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_521/SigmoidSigmoidlstm_cell_521/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_521/Sigmoid_1Sigmoidlstm_cell_521/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_521/mulMullstm_cell_521/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_521/ReluRelulstm_cell_521/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_521/mul_1Mullstm_cell_521/Sigmoid:y:0 lstm_cell_521/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_521/add_1AddV2lstm_cell_521/mul:z:0lstm_cell_521/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_521/Sigmoid_2Sigmoidlstm_cell_521/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_521/Relu_1Relulstm_cell_521/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_521/mul_2Mullstm_cell_521/Sigmoid_2:y:0"lstm_cell_521/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_521_matmul_readvariableop_resource.lstm_cell_521_matmul_1_readvariableop_resource-lstm_cell_521_biasadd_readvariableop_resource*
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
while_body_3155597*
condR
while_cond_3155596*K
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
NoOpNoOp%^lstm_cell_521/BiasAdd/ReadVariableOp$^lstm_cell_521/MatMul/ReadVariableOp&^lstm_cell_521/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_521/BiasAdd/ReadVariableOp$lstm_cell_521/BiasAdd/ReadVariableOp2J
#lstm_cell_521/MatMul/ReadVariableOp#lstm_cell_521/MatMul/ReadVariableOp2N
%lstm_cell_521/MatMul_1/ReadVariableOp%lstm_cell_521/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_3152065
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3152065___redundant_placeholder05
1while_while_cond_3152065___redundant_placeholder15
1while_while_cond_3152065___redundant_placeholder25
1while_while_cond_3152065___redundant_placeholder3
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
J__inference_sequential_86_layer_call_and_return_conditional_losses_3154119

inputsH
5lstm_258_lstm_cell_519_matmul_readvariableop_resource:	?J
7lstm_258_lstm_cell_519_matmul_1_readvariableop_resource:	d?E
6lstm_258_lstm_cell_519_biasadd_readvariableop_resource:	?H
5lstm_259_lstm_cell_520_matmul_readvariableop_resource:	d?J
7lstm_259_lstm_cell_520_matmul_1_readvariableop_resource:	2?E
6lstm_259_lstm_cell_520_biasadd_readvariableop_resource:	?G
5lstm_260_lstm_cell_521_matmul_readvariableop_resource:2(I
7lstm_260_lstm_cell_521_matmul_1_readvariableop_resource:
(D
6lstm_260_lstm_cell_521_biasadd_readvariableop_resource:(9
'dense_86_matmul_readvariableop_resource:
6
(dense_86_biasadd_readvariableop_resource:
identity??dense_86/BiasAdd/ReadVariableOp?dense_86/MatMul/ReadVariableOp?-lstm_258/lstm_cell_519/BiasAdd/ReadVariableOp?,lstm_258/lstm_cell_519/MatMul/ReadVariableOp?.lstm_258/lstm_cell_519/MatMul_1/ReadVariableOp?lstm_258/while?-lstm_259/lstm_cell_520/BiasAdd/ReadVariableOp?,lstm_259/lstm_cell_520/MatMul/ReadVariableOp?.lstm_259/lstm_cell_520/MatMul_1/ReadVariableOp?lstm_259/while?-lstm_260/lstm_cell_521/BiasAdd/ReadVariableOp?,lstm_260/lstm_cell_521/MatMul/ReadVariableOp?.lstm_260/lstm_cell_521/MatMul_1/ReadVariableOp?lstm_260/whileD
lstm_258/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_258/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_258/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_258/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_258/strided_sliceStridedSlicelstm_258/Shape:output:0%lstm_258/strided_slice/stack:output:0'lstm_258/strided_slice/stack_1:output:0'lstm_258/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_258/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_258/zeros/packedPacklstm_258/strided_slice:output:0 lstm_258/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_258/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_258/zerosFilllstm_258/zeros/packed:output:0lstm_258/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_258/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_258/zeros_1/packedPacklstm_258/strided_slice:output:0"lstm_258/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_258/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_258/zeros_1Fill lstm_258/zeros_1/packed:output:0lstm_258/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_258/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_258/transpose	Transposeinputs lstm_258/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_258/Shape_1Shapelstm_258/transpose:y:0*
T0*
_output_shapes
:h
lstm_258/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_258/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_258/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_258/strided_slice_1StridedSlicelstm_258/Shape_1:output:0'lstm_258/strided_slice_1/stack:output:0)lstm_258/strided_slice_1/stack_1:output:0)lstm_258/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_258/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_258/TensorArrayV2TensorListReserve-lstm_258/TensorArrayV2/element_shape:output:0!lstm_258/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_258/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_258/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_258/transpose:y:0Glstm_258/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_258/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_258/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_258/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_258/strided_slice_2StridedSlicelstm_258/transpose:y:0'lstm_258/strided_slice_2/stack:output:0)lstm_258/strided_slice_2/stack_1:output:0)lstm_258/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_258/lstm_cell_519/MatMul/ReadVariableOpReadVariableOp5lstm_258_lstm_cell_519_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_258/lstm_cell_519/MatMulMatMul!lstm_258/strided_slice_2:output:04lstm_258/lstm_cell_519/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_258/lstm_cell_519/MatMul_1/ReadVariableOpReadVariableOp7lstm_258_lstm_cell_519_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_258/lstm_cell_519/MatMul_1MatMullstm_258/zeros:output:06lstm_258/lstm_cell_519/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_258/lstm_cell_519/addAddV2'lstm_258/lstm_cell_519/MatMul:product:0)lstm_258/lstm_cell_519/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_258/lstm_cell_519/BiasAdd/ReadVariableOpReadVariableOp6lstm_258_lstm_cell_519_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_258/lstm_cell_519/BiasAddBiasAddlstm_258/lstm_cell_519/add:z:05lstm_258/lstm_cell_519/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_258/lstm_cell_519/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_258/lstm_cell_519/splitSplit/lstm_258/lstm_cell_519/split/split_dim:output:0'lstm_258/lstm_cell_519/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_258/lstm_cell_519/SigmoidSigmoid%lstm_258/lstm_cell_519/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_258/lstm_cell_519/Sigmoid_1Sigmoid%lstm_258/lstm_cell_519/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_258/lstm_cell_519/mulMul$lstm_258/lstm_cell_519/Sigmoid_1:y:0lstm_258/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_258/lstm_cell_519/ReluRelu%lstm_258/lstm_cell_519/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_258/lstm_cell_519/mul_1Mul"lstm_258/lstm_cell_519/Sigmoid:y:0)lstm_258/lstm_cell_519/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_258/lstm_cell_519/add_1AddV2lstm_258/lstm_cell_519/mul:z:0 lstm_258/lstm_cell_519/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_258/lstm_cell_519/Sigmoid_2Sigmoid%lstm_258/lstm_cell_519/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_258/lstm_cell_519/Relu_1Relu lstm_258/lstm_cell_519/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_258/lstm_cell_519/mul_2Mul$lstm_258/lstm_cell_519/Sigmoid_2:y:0+lstm_258/lstm_cell_519/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_258/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_258/TensorArrayV2_1TensorListReserve/lstm_258/TensorArrayV2_1/element_shape:output:0!lstm_258/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_258/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_258/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_258/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_258/whileWhile$lstm_258/while/loop_counter:output:0*lstm_258/while/maximum_iterations:output:0lstm_258/time:output:0!lstm_258/TensorArrayV2_1:handle:0lstm_258/zeros:output:0lstm_258/zeros_1:output:0!lstm_258/strided_slice_1:output:0@lstm_258/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_258_lstm_cell_519_matmul_readvariableop_resource7lstm_258_lstm_cell_519_matmul_1_readvariableop_resource6lstm_258_lstm_cell_519_biasadd_readvariableop_resource*
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
lstm_258_while_body_3153751*'
condR
lstm_258_while_cond_3153750*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_258/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_258/TensorArrayV2Stack/TensorListStackTensorListStacklstm_258/while:output:3Blstm_258/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_258/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_258/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_258/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_258/strided_slice_3StridedSlice4lstm_258/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_258/strided_slice_3/stack:output:0)lstm_258/strided_slice_3/stack_1:output:0)lstm_258/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_258/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_258/transpose_1	Transpose4lstm_258/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_258/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_258/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_259/ShapeShapelstm_258/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_259/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_259/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_259/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_259/strided_sliceStridedSlicelstm_259/Shape:output:0%lstm_259/strided_slice/stack:output:0'lstm_259/strided_slice/stack_1:output:0'lstm_259/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_259/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_259/zeros/packedPacklstm_259/strided_slice:output:0 lstm_259/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_259/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_259/zerosFilllstm_259/zeros/packed:output:0lstm_259/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_259/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_259/zeros_1/packedPacklstm_259/strided_slice:output:0"lstm_259/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_259/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_259/zeros_1Fill lstm_259/zeros_1/packed:output:0lstm_259/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_259/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_259/transpose	Transposelstm_258/transpose_1:y:0 lstm_259/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_259/Shape_1Shapelstm_259/transpose:y:0*
T0*
_output_shapes
:h
lstm_259/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_259/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_259/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_259/strided_slice_1StridedSlicelstm_259/Shape_1:output:0'lstm_259/strided_slice_1/stack:output:0)lstm_259/strided_slice_1/stack_1:output:0)lstm_259/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_259/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_259/TensorArrayV2TensorListReserve-lstm_259/TensorArrayV2/element_shape:output:0!lstm_259/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_259/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_259/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_259/transpose:y:0Glstm_259/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_259/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_259/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_259/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_259/strided_slice_2StridedSlicelstm_259/transpose:y:0'lstm_259/strided_slice_2/stack:output:0)lstm_259/strided_slice_2/stack_1:output:0)lstm_259/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_259/lstm_cell_520/MatMul/ReadVariableOpReadVariableOp5lstm_259_lstm_cell_520_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_259/lstm_cell_520/MatMulMatMul!lstm_259/strided_slice_2:output:04lstm_259/lstm_cell_520/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_259/lstm_cell_520/MatMul_1/ReadVariableOpReadVariableOp7lstm_259_lstm_cell_520_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_259/lstm_cell_520/MatMul_1MatMullstm_259/zeros:output:06lstm_259/lstm_cell_520/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_259/lstm_cell_520/addAddV2'lstm_259/lstm_cell_520/MatMul:product:0)lstm_259/lstm_cell_520/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_259/lstm_cell_520/BiasAdd/ReadVariableOpReadVariableOp6lstm_259_lstm_cell_520_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_259/lstm_cell_520/BiasAddBiasAddlstm_259/lstm_cell_520/add:z:05lstm_259/lstm_cell_520/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_259/lstm_cell_520/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_259/lstm_cell_520/splitSplit/lstm_259/lstm_cell_520/split/split_dim:output:0'lstm_259/lstm_cell_520/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_259/lstm_cell_520/SigmoidSigmoid%lstm_259/lstm_cell_520/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_259/lstm_cell_520/Sigmoid_1Sigmoid%lstm_259/lstm_cell_520/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_259/lstm_cell_520/mulMul$lstm_259/lstm_cell_520/Sigmoid_1:y:0lstm_259/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_259/lstm_cell_520/ReluRelu%lstm_259/lstm_cell_520/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_259/lstm_cell_520/mul_1Mul"lstm_259/lstm_cell_520/Sigmoid:y:0)lstm_259/lstm_cell_520/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_259/lstm_cell_520/add_1AddV2lstm_259/lstm_cell_520/mul:z:0 lstm_259/lstm_cell_520/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_259/lstm_cell_520/Sigmoid_2Sigmoid%lstm_259/lstm_cell_520/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_259/lstm_cell_520/Relu_1Relu lstm_259/lstm_cell_520/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_259/lstm_cell_520/mul_2Mul$lstm_259/lstm_cell_520/Sigmoid_2:y:0+lstm_259/lstm_cell_520/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_259/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_259/TensorArrayV2_1TensorListReserve/lstm_259/TensorArrayV2_1/element_shape:output:0!lstm_259/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_259/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_259/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_259/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_259/whileWhile$lstm_259/while/loop_counter:output:0*lstm_259/while/maximum_iterations:output:0lstm_259/time:output:0!lstm_259/TensorArrayV2_1:handle:0lstm_259/zeros:output:0lstm_259/zeros_1:output:0!lstm_259/strided_slice_1:output:0@lstm_259/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_259_lstm_cell_520_matmul_readvariableop_resource7lstm_259_lstm_cell_520_matmul_1_readvariableop_resource6lstm_259_lstm_cell_520_biasadd_readvariableop_resource*
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
lstm_259_while_body_3153890*'
condR
lstm_259_while_cond_3153889*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_259/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_259/TensorArrayV2Stack/TensorListStackTensorListStacklstm_259/while:output:3Blstm_259/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_259/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_259/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_259/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_259/strided_slice_3StridedSlice4lstm_259/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_259/strided_slice_3/stack:output:0)lstm_259/strided_slice_3/stack_1:output:0)lstm_259/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_259/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_259/transpose_1	Transpose4lstm_259/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_259/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_259/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_260/ShapeShapelstm_259/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_260/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_260/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_260/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_260/strided_sliceStridedSlicelstm_260/Shape:output:0%lstm_260/strided_slice/stack:output:0'lstm_260/strided_slice/stack_1:output:0'lstm_260/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_260/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_260/zeros/packedPacklstm_260/strided_slice:output:0 lstm_260/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_260/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_260/zerosFilllstm_260/zeros/packed:output:0lstm_260/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_260/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_260/zeros_1/packedPacklstm_260/strided_slice:output:0"lstm_260/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_260/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_260/zeros_1Fill lstm_260/zeros_1/packed:output:0lstm_260/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_260/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_260/transpose	Transposelstm_259/transpose_1:y:0 lstm_260/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_260/Shape_1Shapelstm_260/transpose:y:0*
T0*
_output_shapes
:h
lstm_260/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_260/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_260/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_260/strided_slice_1StridedSlicelstm_260/Shape_1:output:0'lstm_260/strided_slice_1/stack:output:0)lstm_260/strided_slice_1/stack_1:output:0)lstm_260/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_260/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_260/TensorArrayV2TensorListReserve-lstm_260/TensorArrayV2/element_shape:output:0!lstm_260/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_260/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_260/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_260/transpose:y:0Glstm_260/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_260/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_260/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_260/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_260/strided_slice_2StridedSlicelstm_260/transpose:y:0'lstm_260/strided_slice_2/stack:output:0)lstm_260/strided_slice_2/stack_1:output:0)lstm_260/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_260/lstm_cell_521/MatMul/ReadVariableOpReadVariableOp5lstm_260_lstm_cell_521_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_260/lstm_cell_521/MatMulMatMul!lstm_260/strided_slice_2:output:04lstm_260/lstm_cell_521/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_260/lstm_cell_521/MatMul_1/ReadVariableOpReadVariableOp7lstm_260_lstm_cell_521_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_260/lstm_cell_521/MatMul_1MatMullstm_260/zeros:output:06lstm_260/lstm_cell_521/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_260/lstm_cell_521/addAddV2'lstm_260/lstm_cell_521/MatMul:product:0)lstm_260/lstm_cell_521/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_260/lstm_cell_521/BiasAdd/ReadVariableOpReadVariableOp6lstm_260_lstm_cell_521_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_260/lstm_cell_521/BiasAddBiasAddlstm_260/lstm_cell_521/add:z:05lstm_260/lstm_cell_521/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_260/lstm_cell_521/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_260/lstm_cell_521/splitSplit/lstm_260/lstm_cell_521/split/split_dim:output:0'lstm_260/lstm_cell_521/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_260/lstm_cell_521/SigmoidSigmoid%lstm_260/lstm_cell_521/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_260/lstm_cell_521/Sigmoid_1Sigmoid%lstm_260/lstm_cell_521/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_260/lstm_cell_521/mulMul$lstm_260/lstm_cell_521/Sigmoid_1:y:0lstm_260/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_260/lstm_cell_521/ReluRelu%lstm_260/lstm_cell_521/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_260/lstm_cell_521/mul_1Mul"lstm_260/lstm_cell_521/Sigmoid:y:0)lstm_260/lstm_cell_521/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_260/lstm_cell_521/add_1AddV2lstm_260/lstm_cell_521/mul:z:0 lstm_260/lstm_cell_521/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_260/lstm_cell_521/Sigmoid_2Sigmoid%lstm_260/lstm_cell_521/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_260/lstm_cell_521/Relu_1Relu lstm_260/lstm_cell_521/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_260/lstm_cell_521/mul_2Mul$lstm_260/lstm_cell_521/Sigmoid_2:y:0+lstm_260/lstm_cell_521/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_260/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_260/TensorArrayV2_1TensorListReserve/lstm_260/TensorArrayV2_1/element_shape:output:0!lstm_260/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_260/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_260/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_260/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_260/whileWhile$lstm_260/while/loop_counter:output:0*lstm_260/while/maximum_iterations:output:0lstm_260/time:output:0!lstm_260/TensorArrayV2_1:handle:0lstm_260/zeros:output:0lstm_260/zeros_1:output:0!lstm_260/strided_slice_1:output:0@lstm_260/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_260_lstm_cell_521_matmul_readvariableop_resource7lstm_260_lstm_cell_521_matmul_1_readvariableop_resource6lstm_260_lstm_cell_521_biasadd_readvariableop_resource*
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
lstm_260_while_body_3154029*'
condR
lstm_260_while_cond_3154028*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_260/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_260/TensorArrayV2Stack/TensorListStackTensorListStacklstm_260/while:output:3Blstm_260/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_260/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_260/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_260/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_260/strided_slice_3StridedSlice4lstm_260/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_260/strided_slice_3/stack:output:0)lstm_260/strided_slice_3/stack_1:output:0)lstm_260/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_260/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_260/transpose_1	Transpose4lstm_260/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_260/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_260/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_86/MatMul/ReadVariableOpReadVariableOp'dense_86_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_86/MatMulMatMul!lstm_260/strided_slice_3:output:0&dense_86/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_86/BiasAdd/ReadVariableOpReadVariableOp(dense_86_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_86/BiasAddBiasAdddense_86/MatMul:product:0'dense_86/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_86/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_86/BiasAdd/ReadVariableOp^dense_86/MatMul/ReadVariableOp.^lstm_258/lstm_cell_519/BiasAdd/ReadVariableOp-^lstm_258/lstm_cell_519/MatMul/ReadVariableOp/^lstm_258/lstm_cell_519/MatMul_1/ReadVariableOp^lstm_258/while.^lstm_259/lstm_cell_520/BiasAdd/ReadVariableOp-^lstm_259/lstm_cell_520/MatMul/ReadVariableOp/^lstm_259/lstm_cell_520/MatMul_1/ReadVariableOp^lstm_259/while.^lstm_260/lstm_cell_521/BiasAdd/ReadVariableOp-^lstm_260/lstm_cell_521/MatMul/ReadVariableOp/^lstm_260/lstm_cell_521/MatMul_1/ReadVariableOp^lstm_260/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_86/BiasAdd/ReadVariableOpdense_86/BiasAdd/ReadVariableOp2@
dense_86/MatMul/ReadVariableOpdense_86/MatMul/ReadVariableOp2^
-lstm_258/lstm_cell_519/BiasAdd/ReadVariableOp-lstm_258/lstm_cell_519/BiasAdd/ReadVariableOp2\
,lstm_258/lstm_cell_519/MatMul/ReadVariableOp,lstm_258/lstm_cell_519/MatMul/ReadVariableOp2`
.lstm_258/lstm_cell_519/MatMul_1/ReadVariableOp.lstm_258/lstm_cell_519/MatMul_1/ReadVariableOp2 
lstm_258/whilelstm_258/while2^
-lstm_259/lstm_cell_520/BiasAdd/ReadVariableOp-lstm_259/lstm_cell_520/BiasAdd/ReadVariableOp2\
,lstm_259/lstm_cell_520/MatMul/ReadVariableOp,lstm_259/lstm_cell_520/MatMul/ReadVariableOp2`
.lstm_259/lstm_cell_520/MatMul_1/ReadVariableOp.lstm_259/lstm_cell_520/MatMul_1/ReadVariableOp2 
lstm_259/whilelstm_259/while2^
-lstm_260/lstm_cell_521/BiasAdd/ReadVariableOp-lstm_260/lstm_cell_521/BiasAdd/ReadVariableOp2\
,lstm_260/lstm_cell_521/MatMul/ReadVariableOp,lstm_260/lstm_cell_521/MatMul/ReadVariableOp2`
.lstm_260/lstm_cell_521/MatMul_1/ReadVariableOp.lstm_260/lstm_cell_521/MatMul_1/ReadVariableOp2 
lstm_260/whilelstm_260/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_258_layer_call_and_return_conditional_losses_3151101

inputs(
lstm_cell_519_3151019:	?(
lstm_cell_519_3151021:	d?$
lstm_cell_519_3151023:	?
identity??%lstm_cell_519/StatefulPartitionedCall?while;
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
%lstm_cell_519/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_519_3151019lstm_cell_519_3151021lstm_cell_519_3151023*
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
J__inference_lstm_cell_519_layer_call_and_return_conditional_losses_3151018n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_519_3151019lstm_cell_519_3151021lstm_cell_519_3151023*
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
while_body_3151032*
condR
while_cond_3151031*K
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
NoOpNoOp&^lstm_cell_519/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_519/StatefulPartitionedCall%lstm_cell_519/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_3154222
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_519_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_519_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_519_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_519_matmul_readvariableop_resource:	?G
4while_lstm_cell_519_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_519_biasadd_readvariableop_resource:	???*while/lstm_cell_519/BiasAdd/ReadVariableOp?)while/lstm_cell_519/MatMul/ReadVariableOp?+while/lstm_cell_519/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_519/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_519_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_519/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_519/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_519/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_519_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_519/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_519/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_519/addAddV2$while/lstm_cell_519/MatMul:product:0&while/lstm_cell_519/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_519/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_519_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_519/BiasAddBiasAddwhile/lstm_cell_519/add:z:02while/lstm_cell_519/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_519/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_519/splitSplit,while/lstm_cell_519/split/split_dim:output:0$while/lstm_cell_519/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_519/SigmoidSigmoid"while/lstm_cell_519/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_519/Sigmoid_1Sigmoid"while/lstm_cell_519/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_519/mulMul!while/lstm_cell_519/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_519/ReluRelu"while/lstm_cell_519/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_519/mul_1Mulwhile/lstm_cell_519/Sigmoid:y:0&while/lstm_cell_519/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_519/add_1AddV2while/lstm_cell_519/mul:z:0while/lstm_cell_519/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_519/Sigmoid_2Sigmoid"while/lstm_cell_519/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_519/Relu_1Reluwhile/lstm_cell_519/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_519/mul_2Mul!while/lstm_cell_519/Sigmoid_2:y:0(while/lstm_cell_519/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_519/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_519/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_519/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_519/BiasAdd/ReadVariableOp*^while/lstm_cell_519/MatMul/ReadVariableOp,^while/lstm_cell_519/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_519_biasadd_readvariableop_resource5while_lstm_cell_519_biasadd_readvariableop_resource_0"n
4while_lstm_cell_519_matmul_1_readvariableop_resource6while_lstm_cell_519_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_519_matmul_readvariableop_resource4while_lstm_cell_519_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_519/BiasAdd/ReadVariableOp*while/lstm_cell_519/BiasAdd/ReadVariableOp2V
)while/lstm_cell_519/MatMul/ReadVariableOp)while/lstm_cell_519/MatMul/ReadVariableOp2Z
+while/lstm_cell_519/MatMul_1/ReadVariableOp+while/lstm_cell_519/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_259_layer_call_fn_3154779

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
E__inference_lstm_259_layer_call_and_return_conditional_losses_3152831s
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
??
?
J__inference_sequential_86_layer_call_and_return_conditional_losses_3153692

inputsH
5lstm_258_lstm_cell_519_matmul_readvariableop_resource:	?J
7lstm_258_lstm_cell_519_matmul_1_readvariableop_resource:	d?E
6lstm_258_lstm_cell_519_biasadd_readvariableop_resource:	?H
5lstm_259_lstm_cell_520_matmul_readvariableop_resource:	d?J
7lstm_259_lstm_cell_520_matmul_1_readvariableop_resource:	2?E
6lstm_259_lstm_cell_520_biasadd_readvariableop_resource:	?G
5lstm_260_lstm_cell_521_matmul_readvariableop_resource:2(I
7lstm_260_lstm_cell_521_matmul_1_readvariableop_resource:
(D
6lstm_260_lstm_cell_521_biasadd_readvariableop_resource:(9
'dense_86_matmul_readvariableop_resource:
6
(dense_86_biasadd_readvariableop_resource:
identity??dense_86/BiasAdd/ReadVariableOp?dense_86/MatMul/ReadVariableOp?-lstm_258/lstm_cell_519/BiasAdd/ReadVariableOp?,lstm_258/lstm_cell_519/MatMul/ReadVariableOp?.lstm_258/lstm_cell_519/MatMul_1/ReadVariableOp?lstm_258/while?-lstm_259/lstm_cell_520/BiasAdd/ReadVariableOp?,lstm_259/lstm_cell_520/MatMul/ReadVariableOp?.lstm_259/lstm_cell_520/MatMul_1/ReadVariableOp?lstm_259/while?-lstm_260/lstm_cell_521/BiasAdd/ReadVariableOp?,lstm_260/lstm_cell_521/MatMul/ReadVariableOp?.lstm_260/lstm_cell_521/MatMul_1/ReadVariableOp?lstm_260/whileD
lstm_258/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_258/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_258/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_258/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_258/strided_sliceStridedSlicelstm_258/Shape:output:0%lstm_258/strided_slice/stack:output:0'lstm_258/strided_slice/stack_1:output:0'lstm_258/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_258/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_258/zeros/packedPacklstm_258/strided_slice:output:0 lstm_258/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_258/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_258/zerosFilllstm_258/zeros/packed:output:0lstm_258/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_258/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_258/zeros_1/packedPacklstm_258/strided_slice:output:0"lstm_258/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_258/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_258/zeros_1Fill lstm_258/zeros_1/packed:output:0lstm_258/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_258/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_258/transpose	Transposeinputs lstm_258/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_258/Shape_1Shapelstm_258/transpose:y:0*
T0*
_output_shapes
:h
lstm_258/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_258/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_258/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_258/strided_slice_1StridedSlicelstm_258/Shape_1:output:0'lstm_258/strided_slice_1/stack:output:0)lstm_258/strided_slice_1/stack_1:output:0)lstm_258/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_258/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_258/TensorArrayV2TensorListReserve-lstm_258/TensorArrayV2/element_shape:output:0!lstm_258/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_258/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_258/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_258/transpose:y:0Glstm_258/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_258/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_258/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_258/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_258/strided_slice_2StridedSlicelstm_258/transpose:y:0'lstm_258/strided_slice_2/stack:output:0)lstm_258/strided_slice_2/stack_1:output:0)lstm_258/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_258/lstm_cell_519/MatMul/ReadVariableOpReadVariableOp5lstm_258_lstm_cell_519_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_258/lstm_cell_519/MatMulMatMul!lstm_258/strided_slice_2:output:04lstm_258/lstm_cell_519/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_258/lstm_cell_519/MatMul_1/ReadVariableOpReadVariableOp7lstm_258_lstm_cell_519_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_258/lstm_cell_519/MatMul_1MatMullstm_258/zeros:output:06lstm_258/lstm_cell_519/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_258/lstm_cell_519/addAddV2'lstm_258/lstm_cell_519/MatMul:product:0)lstm_258/lstm_cell_519/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_258/lstm_cell_519/BiasAdd/ReadVariableOpReadVariableOp6lstm_258_lstm_cell_519_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_258/lstm_cell_519/BiasAddBiasAddlstm_258/lstm_cell_519/add:z:05lstm_258/lstm_cell_519/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_258/lstm_cell_519/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_258/lstm_cell_519/splitSplit/lstm_258/lstm_cell_519/split/split_dim:output:0'lstm_258/lstm_cell_519/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_258/lstm_cell_519/SigmoidSigmoid%lstm_258/lstm_cell_519/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_258/lstm_cell_519/Sigmoid_1Sigmoid%lstm_258/lstm_cell_519/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_258/lstm_cell_519/mulMul$lstm_258/lstm_cell_519/Sigmoid_1:y:0lstm_258/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_258/lstm_cell_519/ReluRelu%lstm_258/lstm_cell_519/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_258/lstm_cell_519/mul_1Mul"lstm_258/lstm_cell_519/Sigmoid:y:0)lstm_258/lstm_cell_519/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_258/lstm_cell_519/add_1AddV2lstm_258/lstm_cell_519/mul:z:0 lstm_258/lstm_cell_519/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_258/lstm_cell_519/Sigmoid_2Sigmoid%lstm_258/lstm_cell_519/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_258/lstm_cell_519/Relu_1Relu lstm_258/lstm_cell_519/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_258/lstm_cell_519/mul_2Mul$lstm_258/lstm_cell_519/Sigmoid_2:y:0+lstm_258/lstm_cell_519/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_258/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_258/TensorArrayV2_1TensorListReserve/lstm_258/TensorArrayV2_1/element_shape:output:0!lstm_258/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_258/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_258/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_258/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_258/whileWhile$lstm_258/while/loop_counter:output:0*lstm_258/while/maximum_iterations:output:0lstm_258/time:output:0!lstm_258/TensorArrayV2_1:handle:0lstm_258/zeros:output:0lstm_258/zeros_1:output:0!lstm_258/strided_slice_1:output:0@lstm_258/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_258_lstm_cell_519_matmul_readvariableop_resource7lstm_258_lstm_cell_519_matmul_1_readvariableop_resource6lstm_258_lstm_cell_519_biasadd_readvariableop_resource*
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
lstm_258_while_body_3153324*'
condR
lstm_258_while_cond_3153323*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_258/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_258/TensorArrayV2Stack/TensorListStackTensorListStacklstm_258/while:output:3Blstm_258/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_258/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_258/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_258/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_258/strided_slice_3StridedSlice4lstm_258/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_258/strided_slice_3/stack:output:0)lstm_258/strided_slice_3/stack_1:output:0)lstm_258/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_258/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_258/transpose_1	Transpose4lstm_258/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_258/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_258/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_259/ShapeShapelstm_258/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_259/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_259/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_259/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_259/strided_sliceStridedSlicelstm_259/Shape:output:0%lstm_259/strided_slice/stack:output:0'lstm_259/strided_slice/stack_1:output:0'lstm_259/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_259/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_259/zeros/packedPacklstm_259/strided_slice:output:0 lstm_259/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_259/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_259/zerosFilllstm_259/zeros/packed:output:0lstm_259/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_259/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_259/zeros_1/packedPacklstm_259/strided_slice:output:0"lstm_259/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_259/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_259/zeros_1Fill lstm_259/zeros_1/packed:output:0lstm_259/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_259/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_259/transpose	Transposelstm_258/transpose_1:y:0 lstm_259/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_259/Shape_1Shapelstm_259/transpose:y:0*
T0*
_output_shapes
:h
lstm_259/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_259/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_259/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_259/strided_slice_1StridedSlicelstm_259/Shape_1:output:0'lstm_259/strided_slice_1/stack:output:0)lstm_259/strided_slice_1/stack_1:output:0)lstm_259/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_259/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_259/TensorArrayV2TensorListReserve-lstm_259/TensorArrayV2/element_shape:output:0!lstm_259/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_259/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_259/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_259/transpose:y:0Glstm_259/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_259/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_259/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_259/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_259/strided_slice_2StridedSlicelstm_259/transpose:y:0'lstm_259/strided_slice_2/stack:output:0)lstm_259/strided_slice_2/stack_1:output:0)lstm_259/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_259/lstm_cell_520/MatMul/ReadVariableOpReadVariableOp5lstm_259_lstm_cell_520_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_259/lstm_cell_520/MatMulMatMul!lstm_259/strided_slice_2:output:04lstm_259/lstm_cell_520/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_259/lstm_cell_520/MatMul_1/ReadVariableOpReadVariableOp7lstm_259_lstm_cell_520_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_259/lstm_cell_520/MatMul_1MatMullstm_259/zeros:output:06lstm_259/lstm_cell_520/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_259/lstm_cell_520/addAddV2'lstm_259/lstm_cell_520/MatMul:product:0)lstm_259/lstm_cell_520/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_259/lstm_cell_520/BiasAdd/ReadVariableOpReadVariableOp6lstm_259_lstm_cell_520_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_259/lstm_cell_520/BiasAddBiasAddlstm_259/lstm_cell_520/add:z:05lstm_259/lstm_cell_520/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_259/lstm_cell_520/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_259/lstm_cell_520/splitSplit/lstm_259/lstm_cell_520/split/split_dim:output:0'lstm_259/lstm_cell_520/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_259/lstm_cell_520/SigmoidSigmoid%lstm_259/lstm_cell_520/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_259/lstm_cell_520/Sigmoid_1Sigmoid%lstm_259/lstm_cell_520/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_259/lstm_cell_520/mulMul$lstm_259/lstm_cell_520/Sigmoid_1:y:0lstm_259/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_259/lstm_cell_520/ReluRelu%lstm_259/lstm_cell_520/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_259/lstm_cell_520/mul_1Mul"lstm_259/lstm_cell_520/Sigmoid:y:0)lstm_259/lstm_cell_520/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_259/lstm_cell_520/add_1AddV2lstm_259/lstm_cell_520/mul:z:0 lstm_259/lstm_cell_520/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_259/lstm_cell_520/Sigmoid_2Sigmoid%lstm_259/lstm_cell_520/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_259/lstm_cell_520/Relu_1Relu lstm_259/lstm_cell_520/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_259/lstm_cell_520/mul_2Mul$lstm_259/lstm_cell_520/Sigmoid_2:y:0+lstm_259/lstm_cell_520/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_259/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_259/TensorArrayV2_1TensorListReserve/lstm_259/TensorArrayV2_1/element_shape:output:0!lstm_259/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_259/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_259/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_259/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_259/whileWhile$lstm_259/while/loop_counter:output:0*lstm_259/while/maximum_iterations:output:0lstm_259/time:output:0!lstm_259/TensorArrayV2_1:handle:0lstm_259/zeros:output:0lstm_259/zeros_1:output:0!lstm_259/strided_slice_1:output:0@lstm_259/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_259_lstm_cell_520_matmul_readvariableop_resource7lstm_259_lstm_cell_520_matmul_1_readvariableop_resource6lstm_259_lstm_cell_520_biasadd_readvariableop_resource*
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
lstm_259_while_body_3153463*'
condR
lstm_259_while_cond_3153462*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_259/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_259/TensorArrayV2Stack/TensorListStackTensorListStacklstm_259/while:output:3Blstm_259/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_259/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_259/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_259/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_259/strided_slice_3StridedSlice4lstm_259/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_259/strided_slice_3/stack:output:0)lstm_259/strided_slice_3/stack_1:output:0)lstm_259/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_259/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_259/transpose_1	Transpose4lstm_259/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_259/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_259/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_260/ShapeShapelstm_259/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_260/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_260/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_260/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_260/strided_sliceStridedSlicelstm_260/Shape:output:0%lstm_260/strided_slice/stack:output:0'lstm_260/strided_slice/stack_1:output:0'lstm_260/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_260/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_260/zeros/packedPacklstm_260/strided_slice:output:0 lstm_260/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_260/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_260/zerosFilllstm_260/zeros/packed:output:0lstm_260/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_260/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_260/zeros_1/packedPacklstm_260/strided_slice:output:0"lstm_260/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_260/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_260/zeros_1Fill lstm_260/zeros_1/packed:output:0lstm_260/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_260/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_260/transpose	Transposelstm_259/transpose_1:y:0 lstm_260/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_260/Shape_1Shapelstm_260/transpose:y:0*
T0*
_output_shapes
:h
lstm_260/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_260/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_260/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_260/strided_slice_1StridedSlicelstm_260/Shape_1:output:0'lstm_260/strided_slice_1/stack:output:0)lstm_260/strided_slice_1/stack_1:output:0)lstm_260/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_260/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_260/TensorArrayV2TensorListReserve-lstm_260/TensorArrayV2/element_shape:output:0!lstm_260/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_260/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_260/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_260/transpose:y:0Glstm_260/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_260/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_260/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_260/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_260/strided_slice_2StridedSlicelstm_260/transpose:y:0'lstm_260/strided_slice_2/stack:output:0)lstm_260/strided_slice_2/stack_1:output:0)lstm_260/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_260/lstm_cell_521/MatMul/ReadVariableOpReadVariableOp5lstm_260_lstm_cell_521_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_260/lstm_cell_521/MatMulMatMul!lstm_260/strided_slice_2:output:04lstm_260/lstm_cell_521/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_260/lstm_cell_521/MatMul_1/ReadVariableOpReadVariableOp7lstm_260_lstm_cell_521_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_260/lstm_cell_521/MatMul_1MatMullstm_260/zeros:output:06lstm_260/lstm_cell_521/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_260/lstm_cell_521/addAddV2'lstm_260/lstm_cell_521/MatMul:product:0)lstm_260/lstm_cell_521/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_260/lstm_cell_521/BiasAdd/ReadVariableOpReadVariableOp6lstm_260_lstm_cell_521_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_260/lstm_cell_521/BiasAddBiasAddlstm_260/lstm_cell_521/add:z:05lstm_260/lstm_cell_521/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_260/lstm_cell_521/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_260/lstm_cell_521/splitSplit/lstm_260/lstm_cell_521/split/split_dim:output:0'lstm_260/lstm_cell_521/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_260/lstm_cell_521/SigmoidSigmoid%lstm_260/lstm_cell_521/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_260/lstm_cell_521/Sigmoid_1Sigmoid%lstm_260/lstm_cell_521/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_260/lstm_cell_521/mulMul$lstm_260/lstm_cell_521/Sigmoid_1:y:0lstm_260/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_260/lstm_cell_521/ReluRelu%lstm_260/lstm_cell_521/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_260/lstm_cell_521/mul_1Mul"lstm_260/lstm_cell_521/Sigmoid:y:0)lstm_260/lstm_cell_521/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_260/lstm_cell_521/add_1AddV2lstm_260/lstm_cell_521/mul:z:0 lstm_260/lstm_cell_521/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_260/lstm_cell_521/Sigmoid_2Sigmoid%lstm_260/lstm_cell_521/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_260/lstm_cell_521/Relu_1Relu lstm_260/lstm_cell_521/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_260/lstm_cell_521/mul_2Mul$lstm_260/lstm_cell_521/Sigmoid_2:y:0+lstm_260/lstm_cell_521/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_260/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_260/TensorArrayV2_1TensorListReserve/lstm_260/TensorArrayV2_1/element_shape:output:0!lstm_260/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_260/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_260/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_260/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_260/whileWhile$lstm_260/while/loop_counter:output:0*lstm_260/while/maximum_iterations:output:0lstm_260/time:output:0!lstm_260/TensorArrayV2_1:handle:0lstm_260/zeros:output:0lstm_260/zeros_1:output:0!lstm_260/strided_slice_1:output:0@lstm_260/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_260_lstm_cell_521_matmul_readvariableop_resource7lstm_260_lstm_cell_521_matmul_1_readvariableop_resource6lstm_260_lstm_cell_521_biasadd_readvariableop_resource*
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
lstm_260_while_body_3153602*'
condR
lstm_260_while_cond_3153601*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_260/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_260/TensorArrayV2Stack/TensorListStackTensorListStacklstm_260/while:output:3Blstm_260/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_260/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_260/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_260/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_260/strided_slice_3StridedSlice4lstm_260/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_260/strided_slice_3/stack:output:0)lstm_260/strided_slice_3/stack_1:output:0)lstm_260/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_260/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_260/transpose_1	Transpose4lstm_260/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_260/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_260/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_86/MatMul/ReadVariableOpReadVariableOp'dense_86_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_86/MatMulMatMul!lstm_260/strided_slice_3:output:0&dense_86/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_86/BiasAdd/ReadVariableOpReadVariableOp(dense_86_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_86/BiasAddBiasAdddense_86/MatMul:product:0'dense_86/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_86/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_86/BiasAdd/ReadVariableOp^dense_86/MatMul/ReadVariableOp.^lstm_258/lstm_cell_519/BiasAdd/ReadVariableOp-^lstm_258/lstm_cell_519/MatMul/ReadVariableOp/^lstm_258/lstm_cell_519/MatMul_1/ReadVariableOp^lstm_258/while.^lstm_259/lstm_cell_520/BiasAdd/ReadVariableOp-^lstm_259/lstm_cell_520/MatMul/ReadVariableOp/^lstm_259/lstm_cell_520/MatMul_1/ReadVariableOp^lstm_259/while.^lstm_260/lstm_cell_521/BiasAdd/ReadVariableOp-^lstm_260/lstm_cell_521/MatMul/ReadVariableOp/^lstm_260/lstm_cell_521/MatMul_1/ReadVariableOp^lstm_260/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_86/BiasAdd/ReadVariableOpdense_86/BiasAdd/ReadVariableOp2@
dense_86/MatMul/ReadVariableOpdense_86/MatMul/ReadVariableOp2^
-lstm_258/lstm_cell_519/BiasAdd/ReadVariableOp-lstm_258/lstm_cell_519/BiasAdd/ReadVariableOp2\
,lstm_258/lstm_cell_519/MatMul/ReadVariableOp,lstm_258/lstm_cell_519/MatMul/ReadVariableOp2`
.lstm_258/lstm_cell_519/MatMul_1/ReadVariableOp.lstm_258/lstm_cell_519/MatMul_1/ReadVariableOp2 
lstm_258/whilelstm_258/while2^
-lstm_259/lstm_cell_520/BiasAdd/ReadVariableOp-lstm_259/lstm_cell_520/BiasAdd/ReadVariableOp2\
,lstm_259/lstm_cell_520/MatMul/ReadVariableOp,lstm_259/lstm_cell_520/MatMul/ReadVariableOp2`
.lstm_259/lstm_cell_520/MatMul_1/ReadVariableOp.lstm_259/lstm_cell_520/MatMul_1/ReadVariableOp2 
lstm_259/whilelstm_259/while2^
-lstm_260/lstm_cell_521/BiasAdd/ReadVariableOp-lstm_260/lstm_cell_521/BiasAdd/ReadVariableOp2\
,lstm_260/lstm_cell_521/MatMul/ReadVariableOp,lstm_260/lstm_cell_521/MatMul/ReadVariableOp2`
.lstm_260/lstm_cell_521/MatMul_1/ReadVariableOp.lstm_260/lstm_cell_521/MatMul_1/ReadVariableOp2 
lstm_260/whilelstm_260/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_258_layer_call_and_return_conditional_losses_3151292

inputs(
lstm_cell_519_3151210:	?(
lstm_cell_519_3151212:	d?$
lstm_cell_519_3151214:	?
identity??%lstm_cell_519/StatefulPartitionedCall?while;
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
%lstm_cell_519/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_519_3151210lstm_cell_519_3151212lstm_cell_519_3151214*
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
J__inference_lstm_cell_519_layer_call_and_return_conditional_losses_3151164n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_519_3151210lstm_cell_519_3151212lstm_cell_519_3151214*
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
while_body_3151223*
condR
while_cond_3151222*K
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
NoOpNoOp&^lstm_cell_519/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_519/StatefulPartitionedCall%lstm_cell_519/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_258_layer_call_and_return_conditional_losses_3152150

inputs?
,lstm_cell_519_matmul_readvariableop_resource:	?A
.lstm_cell_519_matmul_1_readvariableop_resource:	d?<
-lstm_cell_519_biasadd_readvariableop_resource:	?
identity??$lstm_cell_519/BiasAdd/ReadVariableOp?#lstm_cell_519/MatMul/ReadVariableOp?%lstm_cell_519/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_519/MatMul/ReadVariableOpReadVariableOp,lstm_cell_519_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_519/MatMulMatMulstrided_slice_2:output:0+lstm_cell_519/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_519/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_519_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_519/MatMul_1MatMulzeros:output:0-lstm_cell_519/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_519/addAddV2lstm_cell_519/MatMul:product:0 lstm_cell_519/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_519/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_519_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_519/BiasAddBiasAddlstm_cell_519/add:z:0,lstm_cell_519/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_519/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_519/splitSplit&lstm_cell_519/split/split_dim:output:0lstm_cell_519/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_519/SigmoidSigmoidlstm_cell_519/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_519/Sigmoid_1Sigmoidlstm_cell_519/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_519/mulMullstm_cell_519/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_519/ReluRelulstm_cell_519/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_519/mul_1Mullstm_cell_519/Sigmoid:y:0 lstm_cell_519/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_519/add_1AddV2lstm_cell_519/mul:z:0lstm_cell_519/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_519/Sigmoid_2Sigmoidlstm_cell_519/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_519/Relu_1Relulstm_cell_519/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_519/mul_2Mullstm_cell_519/Sigmoid_2:y:0"lstm_cell_519/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_519_matmul_readvariableop_resource.lstm_cell_519_matmul_1_readvariableop_resource-lstm_cell_519_biasadd_readvariableop_resource*
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
while_body_3152066*
condR
while_cond_3152065*K
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
NoOpNoOp%^lstm_cell_519/BiasAdd/ReadVariableOp$^lstm_cell_519/MatMul/ReadVariableOp&^lstm_cell_519/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_519/BiasAdd/ReadVariableOp$lstm_cell_519/BiasAdd/ReadVariableOp2J
#lstm_cell_519/MatMul/ReadVariableOp#lstm_cell_519/MatMul/ReadVariableOp2N
%lstm_cell_519/MatMul_1/ReadVariableOp%lstm_cell_519/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?S
?
)sequential_86_lstm_260_while_body_3150861J
Fsequential_86_lstm_260_while_sequential_86_lstm_260_while_loop_counterP
Lsequential_86_lstm_260_while_sequential_86_lstm_260_while_maximum_iterations,
(sequential_86_lstm_260_while_placeholder.
*sequential_86_lstm_260_while_placeholder_1.
*sequential_86_lstm_260_while_placeholder_2.
*sequential_86_lstm_260_while_placeholder_3I
Esequential_86_lstm_260_while_sequential_86_lstm_260_strided_slice_1_0?
?sequential_86_lstm_260_while_tensorarrayv2read_tensorlistgetitem_sequential_86_lstm_260_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_86_lstm_260_while_lstm_cell_521_matmul_readvariableop_resource_0:2(_
Msequential_86_lstm_260_while_lstm_cell_521_matmul_1_readvariableop_resource_0:
(Z
Lsequential_86_lstm_260_while_lstm_cell_521_biasadd_readvariableop_resource_0:()
%sequential_86_lstm_260_while_identity+
'sequential_86_lstm_260_while_identity_1+
'sequential_86_lstm_260_while_identity_2+
'sequential_86_lstm_260_while_identity_3+
'sequential_86_lstm_260_while_identity_4+
'sequential_86_lstm_260_while_identity_5G
Csequential_86_lstm_260_while_sequential_86_lstm_260_strided_slice_1?
sequential_86_lstm_260_while_tensorarrayv2read_tensorlistgetitem_sequential_86_lstm_260_tensorarrayunstack_tensorlistfromtensor[
Isequential_86_lstm_260_while_lstm_cell_521_matmul_readvariableop_resource:2(]
Ksequential_86_lstm_260_while_lstm_cell_521_matmul_1_readvariableop_resource:
(X
Jsequential_86_lstm_260_while_lstm_cell_521_biasadd_readvariableop_resource:(??Asequential_86/lstm_260/while/lstm_cell_521/BiasAdd/ReadVariableOp?@sequential_86/lstm_260/while/lstm_cell_521/MatMul/ReadVariableOp?Bsequential_86/lstm_260/while/lstm_cell_521/MatMul_1/ReadVariableOp?
Nsequential_86/lstm_260/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_86/lstm_260/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_86_lstm_260_while_tensorarrayv2read_tensorlistgetitem_sequential_86_lstm_260_tensorarrayunstack_tensorlistfromtensor_0(sequential_86_lstm_260_while_placeholderWsequential_86/lstm_260/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_86/lstm_260/while/lstm_cell_521/MatMul/ReadVariableOpReadVariableOpKsequential_86_lstm_260_while_lstm_cell_521_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_86/lstm_260/while/lstm_cell_521/MatMulMatMulGsequential_86/lstm_260/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_86/lstm_260/while/lstm_cell_521/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_86/lstm_260/while/lstm_cell_521/MatMul_1/ReadVariableOpReadVariableOpMsequential_86_lstm_260_while_lstm_cell_521_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_86/lstm_260/while/lstm_cell_521/MatMul_1MatMul*sequential_86_lstm_260_while_placeholder_2Jsequential_86/lstm_260/while/lstm_cell_521/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_86/lstm_260/while/lstm_cell_521/addAddV2;sequential_86/lstm_260/while/lstm_cell_521/MatMul:product:0=sequential_86/lstm_260/while/lstm_cell_521/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_86/lstm_260/while/lstm_cell_521/BiasAdd/ReadVariableOpReadVariableOpLsequential_86_lstm_260_while_lstm_cell_521_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_86/lstm_260/while/lstm_cell_521/BiasAddBiasAdd2sequential_86/lstm_260/while/lstm_cell_521/add:z:0Isequential_86/lstm_260/while/lstm_cell_521/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_86/lstm_260/while/lstm_cell_521/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_86/lstm_260/while/lstm_cell_521/splitSplitCsequential_86/lstm_260/while/lstm_cell_521/split/split_dim:output:0;sequential_86/lstm_260/while/lstm_cell_521/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_86/lstm_260/while/lstm_cell_521/SigmoidSigmoid9sequential_86/lstm_260/while/lstm_cell_521/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_86/lstm_260/while/lstm_cell_521/Sigmoid_1Sigmoid9sequential_86/lstm_260/while/lstm_cell_521/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_86/lstm_260/while/lstm_cell_521/mulMul8sequential_86/lstm_260/while/lstm_cell_521/Sigmoid_1:y:0*sequential_86_lstm_260_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_86/lstm_260/while/lstm_cell_521/ReluRelu9sequential_86/lstm_260/while/lstm_cell_521/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_86/lstm_260/while/lstm_cell_521/mul_1Mul6sequential_86/lstm_260/while/lstm_cell_521/Sigmoid:y:0=sequential_86/lstm_260/while/lstm_cell_521/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_86/lstm_260/while/lstm_cell_521/add_1AddV22sequential_86/lstm_260/while/lstm_cell_521/mul:z:04sequential_86/lstm_260/while/lstm_cell_521/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_86/lstm_260/while/lstm_cell_521/Sigmoid_2Sigmoid9sequential_86/lstm_260/while/lstm_cell_521/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_86/lstm_260/while/lstm_cell_521/Relu_1Relu4sequential_86/lstm_260/while/lstm_cell_521/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_86/lstm_260/while/lstm_cell_521/mul_2Mul8sequential_86/lstm_260/while/lstm_cell_521/Sigmoid_2:y:0?sequential_86/lstm_260/while/lstm_cell_521/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_86/lstm_260/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_86_lstm_260_while_placeholder_1(sequential_86_lstm_260_while_placeholder4sequential_86/lstm_260/while/lstm_cell_521/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_86/lstm_260/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_86/lstm_260/while/addAddV2(sequential_86_lstm_260_while_placeholder+sequential_86/lstm_260/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_86/lstm_260/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_86/lstm_260/while/add_1AddV2Fsequential_86_lstm_260_while_sequential_86_lstm_260_while_loop_counter-sequential_86/lstm_260/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_86/lstm_260/while/IdentityIdentity&sequential_86/lstm_260/while/add_1:z:0"^sequential_86/lstm_260/while/NoOp*
T0*
_output_shapes
: ?
'sequential_86/lstm_260/while/Identity_1IdentityLsequential_86_lstm_260_while_sequential_86_lstm_260_while_maximum_iterations"^sequential_86/lstm_260/while/NoOp*
T0*
_output_shapes
: ?
'sequential_86/lstm_260/while/Identity_2Identity$sequential_86/lstm_260/while/add:z:0"^sequential_86/lstm_260/while/NoOp*
T0*
_output_shapes
: ?
'sequential_86/lstm_260/while/Identity_3IdentityQsequential_86/lstm_260/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_86/lstm_260/while/NoOp*
T0*
_output_shapes
: ?
'sequential_86/lstm_260/while/Identity_4Identity4sequential_86/lstm_260/while/lstm_cell_521/mul_2:z:0"^sequential_86/lstm_260/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_86/lstm_260/while/Identity_5Identity4sequential_86/lstm_260/while/lstm_cell_521/add_1:z:0"^sequential_86/lstm_260/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_86/lstm_260/while/NoOpNoOpB^sequential_86/lstm_260/while/lstm_cell_521/BiasAdd/ReadVariableOpA^sequential_86/lstm_260/while/lstm_cell_521/MatMul/ReadVariableOpC^sequential_86/lstm_260/while/lstm_cell_521/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_86_lstm_260_while_identity.sequential_86/lstm_260/while/Identity:output:0"[
'sequential_86_lstm_260_while_identity_10sequential_86/lstm_260/while/Identity_1:output:0"[
'sequential_86_lstm_260_while_identity_20sequential_86/lstm_260/while/Identity_2:output:0"[
'sequential_86_lstm_260_while_identity_30sequential_86/lstm_260/while/Identity_3:output:0"[
'sequential_86_lstm_260_while_identity_40sequential_86/lstm_260/while/Identity_4:output:0"[
'sequential_86_lstm_260_while_identity_50sequential_86/lstm_260/while/Identity_5:output:0"?
Jsequential_86_lstm_260_while_lstm_cell_521_biasadd_readvariableop_resourceLsequential_86_lstm_260_while_lstm_cell_521_biasadd_readvariableop_resource_0"?
Ksequential_86_lstm_260_while_lstm_cell_521_matmul_1_readvariableop_resourceMsequential_86_lstm_260_while_lstm_cell_521_matmul_1_readvariableop_resource_0"?
Isequential_86_lstm_260_while_lstm_cell_521_matmul_readvariableop_resourceKsequential_86_lstm_260_while_lstm_cell_521_matmul_readvariableop_resource_0"?
Csequential_86_lstm_260_while_sequential_86_lstm_260_strided_slice_1Esequential_86_lstm_260_while_sequential_86_lstm_260_strided_slice_1_0"?
sequential_86_lstm_260_while_tensorarrayv2read_tensorlistgetitem_sequential_86_lstm_260_tensorarrayunstack_tensorlistfromtensor?sequential_86_lstm_260_while_tensorarrayv2read_tensorlistgetitem_sequential_86_lstm_260_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_86/lstm_260/while/lstm_cell_521/BiasAdd/ReadVariableOpAsequential_86/lstm_260/while/lstm_cell_521/BiasAdd/ReadVariableOp2?
@sequential_86/lstm_260/while/lstm_cell_521/MatMul/ReadVariableOp@sequential_86/lstm_260/while/lstm_cell_521/MatMul/ReadVariableOp2?
Bsequential_86/lstm_260/while/lstm_cell_521/MatMul_1/ReadVariableOpBsequential_86/lstm_260/while/lstm_cell_521/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_260_layer_call_and_return_conditional_losses_3151992

inputs'
lstm_cell_521_3151910:2('
lstm_cell_521_3151912:
(#
lstm_cell_521_3151914:(
identity??%lstm_cell_521/StatefulPartitionedCall?while;
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
%lstm_cell_521/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_521_3151910lstm_cell_521_3151912lstm_cell_521_3151914*
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
J__inference_lstm_cell_521_layer_call_and_return_conditional_losses_3151864n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_521_3151910lstm_cell_521_3151912lstm_cell_521_3151914*
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
while_body_3151923*
condR
while_cond_3151922*K
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
NoOpNoOp&^lstm_cell_521/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_521/StatefulPartitionedCall%lstm_cell_521/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_520_layer_call_and_return_conditional_losses_3151368

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
E__inference_dense_86_layer_call_and_return_conditional_losses_3155986

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
E__inference_lstm_259_layer_call_and_return_conditional_losses_3155065
inputs_0?
,lstm_cell_520_matmul_readvariableop_resource:	d?A
.lstm_cell_520_matmul_1_readvariableop_resource:	2?<
-lstm_cell_520_biasadd_readvariableop_resource:	?
identity??$lstm_cell_520/BiasAdd/ReadVariableOp?#lstm_cell_520/MatMul/ReadVariableOp?%lstm_cell_520/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_520/MatMul/ReadVariableOpReadVariableOp,lstm_cell_520_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_520/MatMulMatMulstrided_slice_2:output:0+lstm_cell_520/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_520/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_520_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_520/MatMul_1MatMulzeros:output:0-lstm_cell_520/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_520/addAddV2lstm_cell_520/MatMul:product:0 lstm_cell_520/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_520/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_520_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_520/BiasAddBiasAddlstm_cell_520/add:z:0,lstm_cell_520/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_520/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_520/splitSplit&lstm_cell_520/split/split_dim:output:0lstm_cell_520/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_520/SigmoidSigmoidlstm_cell_520/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_520/Sigmoid_1Sigmoidlstm_cell_520/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_520/mulMullstm_cell_520/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_520/ReluRelulstm_cell_520/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_520/mul_1Mullstm_cell_520/Sigmoid:y:0 lstm_cell_520/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_520/add_1AddV2lstm_cell_520/mul:z:0lstm_cell_520/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_520/Sigmoid_2Sigmoidlstm_cell_520/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_520/Relu_1Relulstm_cell_520/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_520/mul_2Mullstm_cell_520/Sigmoid_2:y:0"lstm_cell_520/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_520_matmul_readvariableop_resource.lstm_cell_520_matmul_1_readvariableop_resource-lstm_cell_520_biasadd_readvariableop_resource*
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
while_body_3154981*
condR
while_cond_3154980*K
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
NoOpNoOp%^lstm_cell_520/BiasAdd/ReadVariableOp$^lstm_cell_520/MatMul/ReadVariableOp&^lstm_cell_520/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_520/BiasAdd/ReadVariableOp$lstm_cell_520/BiasAdd/ReadVariableOp2J
#lstm_cell_520/MatMul/ReadVariableOp#lstm_cell_520/MatMul/ReadVariableOp2N
%lstm_cell_520/MatMul_1/ReadVariableOp%lstm_cell_520/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_3155596
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3155596___redundant_placeholder05
1while_while_cond_3155596___redundant_placeholder15
1while_while_cond_3155596___redundant_placeholder25
1while_while_cond_3155596___redundant_placeholder3
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
/__inference_lstm_cell_521_layer_call_fn_3156199

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
J__inference_lstm_cell_521_layer_call_and_return_conditional_losses_3151718o
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
E__inference_lstm_259_layer_call_and_return_conditional_losses_3154922
inputs_0?
,lstm_cell_520_matmul_readvariableop_resource:	d?A
.lstm_cell_520_matmul_1_readvariableop_resource:	2?<
-lstm_cell_520_biasadd_readvariableop_resource:	?
identity??$lstm_cell_520/BiasAdd/ReadVariableOp?#lstm_cell_520/MatMul/ReadVariableOp?%lstm_cell_520/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_520/MatMul/ReadVariableOpReadVariableOp,lstm_cell_520_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_520/MatMulMatMulstrided_slice_2:output:0+lstm_cell_520/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_520/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_520_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_520/MatMul_1MatMulzeros:output:0-lstm_cell_520/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_520/addAddV2lstm_cell_520/MatMul:product:0 lstm_cell_520/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_520/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_520_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_520/BiasAddBiasAddlstm_cell_520/add:z:0,lstm_cell_520/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_520/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_520/splitSplit&lstm_cell_520/split/split_dim:output:0lstm_cell_520/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_520/SigmoidSigmoidlstm_cell_520/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_520/Sigmoid_1Sigmoidlstm_cell_520/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_520/mulMullstm_cell_520/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_520/ReluRelulstm_cell_520/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_520/mul_1Mullstm_cell_520/Sigmoid:y:0 lstm_cell_520/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_520/add_1AddV2lstm_cell_520/mul:z:0lstm_cell_520/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_520/Sigmoid_2Sigmoidlstm_cell_520/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_520/Relu_1Relulstm_cell_520/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_520/mul_2Mullstm_cell_520/Sigmoid_2:y:0"lstm_cell_520/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_520_matmul_readvariableop_resource.lstm_cell_520_matmul_1_readvariableop_resource-lstm_cell_520_biasadd_readvariableop_resource*
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
while_body_3154838*
condR
while_cond_3154837*K
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
NoOpNoOp%^lstm_cell_520/BiasAdd/ReadVariableOp$^lstm_cell_520/MatMul/ReadVariableOp&^lstm_cell_520/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_520/BiasAdd/ReadVariableOp$lstm_cell_520/BiasAdd/ReadVariableOp2J
#lstm_cell_520/MatMul/ReadVariableOp#lstm_cell_520/MatMul/ReadVariableOp2N
%lstm_cell_520/MatMul_1/ReadVariableOp%lstm_cell_520/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
/__inference_sequential_86_layer_call_fn_3153238

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
J__inference_sequential_86_layer_call_and_return_conditional_losses_3152475o
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
/__inference_sequential_86_layer_call_fn_3153116
lstm_258_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_258_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_86_layer_call_and_return_conditional_losses_3153064o
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
_user_specified_namelstm_258_input
?
?
while_cond_3155123
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3155123___redundant_placeholder05
1while_while_cond_3155123___redundant_placeholder15
1while_while_cond_3155123___redundant_placeholder25
1while_while_cond_3155123___redundant_placeholder3
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
lstm_258_while_cond_3153323.
*lstm_258_while_lstm_258_while_loop_counter4
0lstm_258_while_lstm_258_while_maximum_iterations
lstm_258_while_placeholder 
lstm_258_while_placeholder_1 
lstm_258_while_placeholder_2 
lstm_258_while_placeholder_30
,lstm_258_while_less_lstm_258_strided_slice_1G
Clstm_258_while_lstm_258_while_cond_3153323___redundant_placeholder0G
Clstm_258_while_lstm_258_while_cond_3153323___redundant_placeholder1G
Clstm_258_while_lstm_258_while_cond_3153323___redundant_placeholder2G
Clstm_258_while_lstm_258_while_cond_3153323___redundant_placeholder3
lstm_258_while_identity
?
lstm_258/while/LessLesslstm_258_while_placeholder,lstm_258_while_less_lstm_258_strided_slice_1*
T0*
_output_shapes
: ]
lstm_258/while/IdentityIdentitylstm_258/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_258_while_identity lstm_258/while/Identity:output:0*(
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
while_cond_3152581
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3152581___redundant_placeholder05
1while_while_cond_3152581___redundant_placeholder15
1while_while_cond_3152581___redundant_placeholder25
1while_while_cond_3152581___redundant_placeholder3
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
*__inference_lstm_258_layer_call_fn_3154152

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
E__inference_lstm_258_layer_call_and_return_conditional_losses_3152150s
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
?8
?
E__inference_lstm_259_layer_call_and_return_conditional_losses_3151451

inputs(
lstm_cell_520_3151369:	d?(
lstm_cell_520_3151371:	2?$
lstm_cell_520_3151373:	?
identity??%lstm_cell_520/StatefulPartitionedCall?while;
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
%lstm_cell_520/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_520_3151369lstm_cell_520_3151371lstm_cell_520_3151373*
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
J__inference_lstm_cell_520_layer_call_and_return_conditional_losses_3151368n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_520_3151369lstm_cell_520_3151371lstm_cell_520_3151373*
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
while_body_3151382*
condR
while_cond_3151381*K
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
NoOpNoOp&^lstm_cell_520/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_520/StatefulPartitionedCall%lstm_cell_520/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_3151222
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3151222___redundant_placeholder05
1while_while_cond_3151222___redundant_placeholder15
1while_while_cond_3151222___redundant_placeholder25
1while_while_cond_3151222___redundant_placeholder3
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
lstm_260_while_cond_3154028.
*lstm_260_while_lstm_260_while_loop_counter4
0lstm_260_while_lstm_260_while_maximum_iterations
lstm_260_while_placeholder 
lstm_260_while_placeholder_1 
lstm_260_while_placeholder_2 
lstm_260_while_placeholder_30
,lstm_260_while_less_lstm_260_strided_slice_1G
Clstm_260_while_lstm_260_while_cond_3154028___redundant_placeholder0G
Clstm_260_while_lstm_260_while_cond_3154028___redundant_placeholder1G
Clstm_260_while_lstm_260_while_cond_3154028___redundant_placeholder2G
Clstm_260_while_lstm_260_while_cond_3154028___redundant_placeholder3
lstm_260_while_identity
?
lstm_260/while/LessLesslstm_260_while_placeholder,lstm_260_while_less_lstm_260_strided_slice_1*
T0*
_output_shapes
: ]
lstm_260/while/IdentityIdentitylstm_260/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_260_while_identity lstm_260/while/Identity:output:0*(
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
E__inference_lstm_259_layer_call_and_return_conditional_losses_3155351

inputs?
,lstm_cell_520_matmul_readvariableop_resource:	d?A
.lstm_cell_520_matmul_1_readvariableop_resource:	2?<
-lstm_cell_520_biasadd_readvariableop_resource:	?
identity??$lstm_cell_520/BiasAdd/ReadVariableOp?#lstm_cell_520/MatMul/ReadVariableOp?%lstm_cell_520/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_520/MatMul/ReadVariableOpReadVariableOp,lstm_cell_520_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_520/MatMulMatMulstrided_slice_2:output:0+lstm_cell_520/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_520/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_520_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_520/MatMul_1MatMulzeros:output:0-lstm_cell_520/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_520/addAddV2lstm_cell_520/MatMul:product:0 lstm_cell_520/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_520/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_520_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_520/BiasAddBiasAddlstm_cell_520/add:z:0,lstm_cell_520/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_520/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_520/splitSplit&lstm_cell_520/split/split_dim:output:0lstm_cell_520/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_520/SigmoidSigmoidlstm_cell_520/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_520/Sigmoid_1Sigmoidlstm_cell_520/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_520/mulMullstm_cell_520/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_520/ReluRelulstm_cell_520/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_520/mul_1Mullstm_cell_520/Sigmoid:y:0 lstm_cell_520/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_520/add_1AddV2lstm_cell_520/mul:z:0lstm_cell_520/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_520/Sigmoid_2Sigmoidlstm_cell_520/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_520/Relu_1Relulstm_cell_520/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_520/mul_2Mullstm_cell_520/Sigmoid_2:y:0"lstm_cell_520/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_520_matmul_readvariableop_resource.lstm_cell_520_matmul_1_readvariableop_resource-lstm_cell_520_biasadd_readvariableop_resource*
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
while_body_3155267*
condR
while_cond_3155266*K
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
NoOpNoOp%^lstm_cell_520/BiasAdd/ReadVariableOp$^lstm_cell_520/MatMul/ReadVariableOp&^lstm_cell_520/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_520/BiasAdd/ReadVariableOp$lstm_cell_520/BiasAdd/ReadVariableOp2J
#lstm_cell_520/MatMul/ReadVariableOp#lstm_cell_520/MatMul/ReadVariableOp2N
%lstm_cell_520/MatMul_1/ReadVariableOp%lstm_cell_520/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3155453
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3155453___redundant_placeholder05
1while_while_cond_3155453___redundant_placeholder15
1while_while_cond_3155453___redundant_placeholder25
1while_while_cond_3155453___redundant_placeholder3
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
while_body_3151732
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_521_3151756_0:2(/
while_lstm_cell_521_3151758_0:
(+
while_lstm_cell_521_3151760_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_521_3151756:2(-
while_lstm_cell_521_3151758:
()
while_lstm_cell_521_3151760:(??+while/lstm_cell_521/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_521/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_521_3151756_0while_lstm_cell_521_3151758_0while_lstm_cell_521_3151760_0*
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
J__inference_lstm_cell_521_layer_call_and_return_conditional_losses_3151718?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_521/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_521/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_521/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_521/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_521_3151756while_lstm_cell_521_3151756_0"<
while_lstm_cell_521_3151758while_lstm_cell_521_3151758_0"<
while_lstm_cell_521_3151760while_lstm_cell_521_3151760_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_521/StatefulPartitionedCall+while/lstm_cell_521/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
)sequential_86_lstm_260_while_cond_3150860J
Fsequential_86_lstm_260_while_sequential_86_lstm_260_while_loop_counterP
Lsequential_86_lstm_260_while_sequential_86_lstm_260_while_maximum_iterations,
(sequential_86_lstm_260_while_placeholder.
*sequential_86_lstm_260_while_placeholder_1.
*sequential_86_lstm_260_while_placeholder_2.
*sequential_86_lstm_260_while_placeholder_3L
Hsequential_86_lstm_260_while_less_sequential_86_lstm_260_strided_slice_1c
_sequential_86_lstm_260_while_sequential_86_lstm_260_while_cond_3150860___redundant_placeholder0c
_sequential_86_lstm_260_while_sequential_86_lstm_260_while_cond_3150860___redundant_placeholder1c
_sequential_86_lstm_260_while_sequential_86_lstm_260_while_cond_3150860___redundant_placeholder2c
_sequential_86_lstm_260_while_sequential_86_lstm_260_while_cond_3150860___redundant_placeholder3)
%sequential_86_lstm_260_while_identity
?
!sequential_86/lstm_260/while/LessLess(sequential_86_lstm_260_while_placeholderHsequential_86_lstm_260_while_less_sequential_86_lstm_260_strided_slice_1*
T0*
_output_shapes
: y
%sequential_86/lstm_260/while/IdentityIdentity%sequential_86/lstm_260/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_86_lstm_260_while_identity.sequential_86/lstm_260/while/Identity:output:0*(
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
/__inference_lstm_cell_521_layer_call_fn_3156216

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
J__inference_lstm_cell_521_layer_call_and_return_conditional_losses_3151864o
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
E__inference_lstm_260_layer_call_and_return_conditional_losses_3152666

inputs>
,lstm_cell_521_matmul_readvariableop_resource:2(@
.lstm_cell_521_matmul_1_readvariableop_resource:
(;
-lstm_cell_521_biasadd_readvariableop_resource:(
identity??$lstm_cell_521/BiasAdd/ReadVariableOp?#lstm_cell_521/MatMul/ReadVariableOp?%lstm_cell_521/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_521/MatMul/ReadVariableOpReadVariableOp,lstm_cell_521_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_521/MatMulMatMulstrided_slice_2:output:0+lstm_cell_521/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_521/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_521_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_521/MatMul_1MatMulzeros:output:0-lstm_cell_521/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_521/addAddV2lstm_cell_521/MatMul:product:0 lstm_cell_521/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_521/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_521_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_521/BiasAddBiasAddlstm_cell_521/add:z:0,lstm_cell_521/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_521/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_521/splitSplit&lstm_cell_521/split/split_dim:output:0lstm_cell_521/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_521/SigmoidSigmoidlstm_cell_521/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_521/Sigmoid_1Sigmoidlstm_cell_521/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_521/mulMullstm_cell_521/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_521/ReluRelulstm_cell_521/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_521/mul_1Mullstm_cell_521/Sigmoid:y:0 lstm_cell_521/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_521/add_1AddV2lstm_cell_521/mul:z:0lstm_cell_521/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_521/Sigmoid_2Sigmoidlstm_cell_521/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_521/Relu_1Relulstm_cell_521/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_521/mul_2Mullstm_cell_521/Sigmoid_2:y:0"lstm_cell_521/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_521_matmul_readvariableop_resource.lstm_cell_521_matmul_1_readvariableop_resource-lstm_cell_521_biasadd_readvariableop_resource*
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
while_body_3152582*
condR
while_cond_3152581*K
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
NoOpNoOp%^lstm_cell_521/BiasAdd/ReadVariableOp$^lstm_cell_521/MatMul/ReadVariableOp&^lstm_cell_521/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_521/BiasAdd/ReadVariableOp$lstm_cell_521/BiasAdd/ReadVariableOp2J
#lstm_cell_521/MatMul/ReadVariableOp#lstm_cell_521/MatMul/ReadVariableOp2N
%lstm_cell_521/MatMul_1/ReadVariableOp%lstm_cell_521/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_sequential_86_layer_call_and_return_conditional_losses_3152475

inputs#
lstm_258_3152151:	?#
lstm_258_3152153:	d?
lstm_258_3152155:	?#
lstm_259_3152301:	d?#
lstm_259_3152303:	2?
lstm_259_3152305:	?"
lstm_260_3152451:2("
lstm_260_3152453:
(
lstm_260_3152455:("
dense_86_3152469:

dense_86_3152471:
identity?? dense_86/StatefulPartitionedCall? lstm_258/StatefulPartitionedCall? lstm_259/StatefulPartitionedCall? lstm_260/StatefulPartitionedCall?
 lstm_258/StatefulPartitionedCallStatefulPartitionedCallinputslstm_258_3152151lstm_258_3152153lstm_258_3152155*
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
E__inference_lstm_258_layer_call_and_return_conditional_losses_3152150?
 lstm_259/StatefulPartitionedCallStatefulPartitionedCall)lstm_258/StatefulPartitionedCall:output:0lstm_259_3152301lstm_259_3152303lstm_259_3152305*
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
E__inference_lstm_259_layer_call_and_return_conditional_losses_3152300?
 lstm_260/StatefulPartitionedCallStatefulPartitionedCall)lstm_259/StatefulPartitionedCall:output:0lstm_260_3152451lstm_260_3152453lstm_260_3152455*
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
E__inference_lstm_260_layer_call_and_return_conditional_losses_3152450?
 dense_86/StatefulPartitionedCallStatefulPartitionedCall)lstm_260/StatefulPartitionedCall:output:0dense_86_3152469dense_86_3152471*
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
E__inference_dense_86_layer_call_and_return_conditional_losses_3152468x
IdentityIdentity)dense_86/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_86/StatefulPartitionedCall!^lstm_258/StatefulPartitionedCall!^lstm_259/StatefulPartitionedCall!^lstm_260/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_86/StatefulPartitionedCall dense_86/StatefulPartitionedCall2D
 lstm_258/StatefulPartitionedCall lstm_258/StatefulPartitionedCall2D
 lstm_259/StatefulPartitionedCall lstm_259/StatefulPartitionedCall2D
 lstm_260/StatefulPartitionedCall lstm_260/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_259_while_cond_3153462.
*lstm_259_while_lstm_259_while_loop_counter4
0lstm_259_while_lstm_259_while_maximum_iterations
lstm_259_while_placeholder 
lstm_259_while_placeholder_1 
lstm_259_while_placeholder_2 
lstm_259_while_placeholder_30
,lstm_259_while_less_lstm_259_strided_slice_1G
Clstm_259_while_lstm_259_while_cond_3153462___redundant_placeholder0G
Clstm_259_while_lstm_259_while_cond_3153462___redundant_placeholder1G
Clstm_259_while_lstm_259_while_cond_3153462___redundant_placeholder2G
Clstm_259_while_lstm_259_while_cond_3153462___redundant_placeholder3
lstm_259_while_identity
?
lstm_259/while/LessLesslstm_259_while_placeholder,lstm_259_while_less_lstm_259_strided_slice_1*
T0*
_output_shapes
: ]
lstm_259/while/IdentityIdentitylstm_259/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_259_while_identity lstm_259/while/Identity:output:0*(
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
while_cond_3154837
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3154837___redundant_placeholder05
1while_while_cond_3154837___redundant_placeholder15
1while_while_cond_3154837___redundant_placeholder25
1while_while_cond_3154837___redundant_placeholder3
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
E__inference_lstm_260_layer_call_and_return_conditional_losses_3151801

inputs'
lstm_cell_521_3151719:2('
lstm_cell_521_3151721:
(#
lstm_cell_521_3151723:(
identity??%lstm_cell_521/StatefulPartitionedCall?while;
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
%lstm_cell_521/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_521_3151719lstm_cell_521_3151721lstm_cell_521_3151723*
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
J__inference_lstm_cell_521_layer_call_and_return_conditional_losses_3151718n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_521_3151719lstm_cell_521_3151721lstm_cell_521_3151723*
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
while_body_3151732*
condR
while_cond_3151731*K
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
NoOpNoOp&^lstm_cell_521/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_521/StatefulPartitionedCall%lstm_cell_521/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_3152911
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3152911___redundant_placeholder05
1while_while_cond_3152911___redundant_placeholder15
1while_while_cond_3152911___redundant_placeholder25
1while_while_cond_3152911___redundant_placeholder3
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
?C
?

lstm_260_while_body_3154029.
*lstm_260_while_lstm_260_while_loop_counter4
0lstm_260_while_lstm_260_while_maximum_iterations
lstm_260_while_placeholder 
lstm_260_while_placeholder_1 
lstm_260_while_placeholder_2 
lstm_260_while_placeholder_3-
)lstm_260_while_lstm_260_strided_slice_1_0i
elstm_260_while_tensorarrayv2read_tensorlistgetitem_lstm_260_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_260_while_lstm_cell_521_matmul_readvariableop_resource_0:2(Q
?lstm_260_while_lstm_cell_521_matmul_1_readvariableop_resource_0:
(L
>lstm_260_while_lstm_cell_521_biasadd_readvariableop_resource_0:(
lstm_260_while_identity
lstm_260_while_identity_1
lstm_260_while_identity_2
lstm_260_while_identity_3
lstm_260_while_identity_4
lstm_260_while_identity_5+
'lstm_260_while_lstm_260_strided_slice_1g
clstm_260_while_tensorarrayv2read_tensorlistgetitem_lstm_260_tensorarrayunstack_tensorlistfromtensorM
;lstm_260_while_lstm_cell_521_matmul_readvariableop_resource:2(O
=lstm_260_while_lstm_cell_521_matmul_1_readvariableop_resource:
(J
<lstm_260_while_lstm_cell_521_biasadd_readvariableop_resource:(??3lstm_260/while/lstm_cell_521/BiasAdd/ReadVariableOp?2lstm_260/while/lstm_cell_521/MatMul/ReadVariableOp?4lstm_260/while/lstm_cell_521/MatMul_1/ReadVariableOp?
@lstm_260/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_260/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_260_while_tensorarrayv2read_tensorlistgetitem_lstm_260_tensorarrayunstack_tensorlistfromtensor_0lstm_260_while_placeholderIlstm_260/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_260/while/lstm_cell_521/MatMul/ReadVariableOpReadVariableOp=lstm_260_while_lstm_cell_521_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_260/while/lstm_cell_521/MatMulMatMul9lstm_260/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_260/while/lstm_cell_521/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_260/while/lstm_cell_521/MatMul_1/ReadVariableOpReadVariableOp?lstm_260_while_lstm_cell_521_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_260/while/lstm_cell_521/MatMul_1MatMullstm_260_while_placeholder_2<lstm_260/while/lstm_cell_521/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_260/while/lstm_cell_521/addAddV2-lstm_260/while/lstm_cell_521/MatMul:product:0/lstm_260/while/lstm_cell_521/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_260/while/lstm_cell_521/BiasAdd/ReadVariableOpReadVariableOp>lstm_260_while_lstm_cell_521_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_260/while/lstm_cell_521/BiasAddBiasAdd$lstm_260/while/lstm_cell_521/add:z:0;lstm_260/while/lstm_cell_521/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_260/while/lstm_cell_521/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_260/while/lstm_cell_521/splitSplit5lstm_260/while/lstm_cell_521/split/split_dim:output:0-lstm_260/while/lstm_cell_521/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_260/while/lstm_cell_521/SigmoidSigmoid+lstm_260/while/lstm_cell_521/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_260/while/lstm_cell_521/Sigmoid_1Sigmoid+lstm_260/while/lstm_cell_521/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_260/while/lstm_cell_521/mulMul*lstm_260/while/lstm_cell_521/Sigmoid_1:y:0lstm_260_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_260/while/lstm_cell_521/ReluRelu+lstm_260/while/lstm_cell_521/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_260/while/lstm_cell_521/mul_1Mul(lstm_260/while/lstm_cell_521/Sigmoid:y:0/lstm_260/while/lstm_cell_521/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_260/while/lstm_cell_521/add_1AddV2$lstm_260/while/lstm_cell_521/mul:z:0&lstm_260/while/lstm_cell_521/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_260/while/lstm_cell_521/Sigmoid_2Sigmoid+lstm_260/while/lstm_cell_521/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_260/while/lstm_cell_521/Relu_1Relu&lstm_260/while/lstm_cell_521/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_260/while/lstm_cell_521/mul_2Mul*lstm_260/while/lstm_cell_521/Sigmoid_2:y:01lstm_260/while/lstm_cell_521/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_260/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_260_while_placeholder_1lstm_260_while_placeholder&lstm_260/while/lstm_cell_521/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_260/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_260/while/addAddV2lstm_260_while_placeholderlstm_260/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_260/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_260/while/add_1AddV2*lstm_260_while_lstm_260_while_loop_counterlstm_260/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_260/while/IdentityIdentitylstm_260/while/add_1:z:0^lstm_260/while/NoOp*
T0*
_output_shapes
: ?
lstm_260/while/Identity_1Identity0lstm_260_while_lstm_260_while_maximum_iterations^lstm_260/while/NoOp*
T0*
_output_shapes
: t
lstm_260/while/Identity_2Identitylstm_260/while/add:z:0^lstm_260/while/NoOp*
T0*
_output_shapes
: ?
lstm_260/while/Identity_3IdentityClstm_260/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_260/while/NoOp*
T0*
_output_shapes
: ?
lstm_260/while/Identity_4Identity&lstm_260/while/lstm_cell_521/mul_2:z:0^lstm_260/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_260/while/Identity_5Identity&lstm_260/while/lstm_cell_521/add_1:z:0^lstm_260/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_260/while/NoOpNoOp4^lstm_260/while/lstm_cell_521/BiasAdd/ReadVariableOp3^lstm_260/while/lstm_cell_521/MatMul/ReadVariableOp5^lstm_260/while/lstm_cell_521/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_260_while_identity lstm_260/while/Identity:output:0"?
lstm_260_while_identity_1"lstm_260/while/Identity_1:output:0"?
lstm_260_while_identity_2"lstm_260/while/Identity_2:output:0"?
lstm_260_while_identity_3"lstm_260/while/Identity_3:output:0"?
lstm_260_while_identity_4"lstm_260/while/Identity_4:output:0"?
lstm_260_while_identity_5"lstm_260/while/Identity_5:output:0"T
'lstm_260_while_lstm_260_strided_slice_1)lstm_260_while_lstm_260_strided_slice_1_0"~
<lstm_260_while_lstm_cell_521_biasadd_readvariableop_resource>lstm_260_while_lstm_cell_521_biasadd_readvariableop_resource_0"?
=lstm_260_while_lstm_cell_521_matmul_1_readvariableop_resource?lstm_260_while_lstm_cell_521_matmul_1_readvariableop_resource_0"|
;lstm_260_while_lstm_cell_521_matmul_readvariableop_resource=lstm_260_while_lstm_cell_521_matmul_readvariableop_resource_0"?
clstm_260_while_tensorarrayv2read_tensorlistgetitem_lstm_260_tensorarrayunstack_tensorlistfromtensorelstm_260_while_tensorarrayv2read_tensorlistgetitem_lstm_260_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_260/while/lstm_cell_521/BiasAdd/ReadVariableOp3lstm_260/while/lstm_cell_521/BiasAdd/ReadVariableOp2h
2lstm_260/while/lstm_cell_521/MatMul/ReadVariableOp2lstm_260/while/lstm_cell_521/MatMul/ReadVariableOp2l
4lstm_260/while/lstm_cell_521/MatMul_1/ReadVariableOp4lstm_260/while/lstm_cell_521/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3155124
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_520_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_520_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_520_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_520_matmul_readvariableop_resource:	d?G
4while_lstm_cell_520_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_520_biasadd_readvariableop_resource:	???*while/lstm_cell_520/BiasAdd/ReadVariableOp?)while/lstm_cell_520/MatMul/ReadVariableOp?+while/lstm_cell_520/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_520/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_520_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_520/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_520/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_520/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_520_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_520/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_520/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_520/addAddV2$while/lstm_cell_520/MatMul:product:0&while/lstm_cell_520/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_520/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_520_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_520/BiasAddBiasAddwhile/lstm_cell_520/add:z:02while/lstm_cell_520/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_520/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_520/splitSplit,while/lstm_cell_520/split/split_dim:output:0$while/lstm_cell_520/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_520/SigmoidSigmoid"while/lstm_cell_520/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_520/Sigmoid_1Sigmoid"while/lstm_cell_520/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_520/mulMul!while/lstm_cell_520/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_520/ReluRelu"while/lstm_cell_520/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_520/mul_1Mulwhile/lstm_cell_520/Sigmoid:y:0&while/lstm_cell_520/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_520/add_1AddV2while/lstm_cell_520/mul:z:0while/lstm_cell_520/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_520/Sigmoid_2Sigmoid"while/lstm_cell_520/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_520/Relu_1Reluwhile/lstm_cell_520/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_520/mul_2Mul!while/lstm_cell_520/Sigmoid_2:y:0(while/lstm_cell_520/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_520/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_520/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_520/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_520/BiasAdd/ReadVariableOp*^while/lstm_cell_520/MatMul/ReadVariableOp,^while/lstm_cell_520/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_520_biasadd_readvariableop_resource5while_lstm_cell_520_biasadd_readvariableop_resource_0"n
4while_lstm_cell_520_matmul_1_readvariableop_resource6while_lstm_cell_520_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_520_matmul_readvariableop_resource4while_lstm_cell_520_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_520/BiasAdd/ReadVariableOp*while/lstm_cell_520/BiasAdd/ReadVariableOp2V
)while/lstm_cell_520/MatMul/ReadVariableOp)while/lstm_cell_520/MatMul/ReadVariableOp2Z
+while/lstm_cell_520/MatMul_1/ReadVariableOp+while/lstm_cell_520/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3154508
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_519_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_519_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_519_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_519_matmul_readvariableop_resource:	?G
4while_lstm_cell_519_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_519_biasadd_readvariableop_resource:	???*while/lstm_cell_519/BiasAdd/ReadVariableOp?)while/lstm_cell_519/MatMul/ReadVariableOp?+while/lstm_cell_519/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_519/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_519_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_519/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_519/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_519/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_519_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_519/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_519/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_519/addAddV2$while/lstm_cell_519/MatMul:product:0&while/lstm_cell_519/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_519/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_519_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_519/BiasAddBiasAddwhile/lstm_cell_519/add:z:02while/lstm_cell_519/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_519/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_519/splitSplit,while/lstm_cell_519/split/split_dim:output:0$while/lstm_cell_519/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_519/SigmoidSigmoid"while/lstm_cell_519/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_519/Sigmoid_1Sigmoid"while/lstm_cell_519/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_519/mulMul!while/lstm_cell_519/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_519/ReluRelu"while/lstm_cell_519/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_519/mul_1Mulwhile/lstm_cell_519/Sigmoid:y:0&while/lstm_cell_519/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_519/add_1AddV2while/lstm_cell_519/mul:z:0while/lstm_cell_519/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_519/Sigmoid_2Sigmoid"while/lstm_cell_519/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_519/Relu_1Reluwhile/lstm_cell_519/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_519/mul_2Mul!while/lstm_cell_519/Sigmoid_2:y:0(while/lstm_cell_519/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_519/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_519/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_519/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_519/BiasAdd/ReadVariableOp*^while/lstm_cell_519/MatMul/ReadVariableOp,^while/lstm_cell_519/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_519_biasadd_readvariableop_resource5while_lstm_cell_519_biasadd_readvariableop_resource_0"n
4while_lstm_cell_519_matmul_1_readvariableop_resource6while_lstm_cell_519_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_519_matmul_readvariableop_resource4while_lstm_cell_519_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_519/BiasAdd/ReadVariableOp*while/lstm_cell_519/BiasAdd/ReadVariableOp2V
)while/lstm_cell_519/MatMul/ReadVariableOp)while/lstm_cell_519/MatMul/ReadVariableOp2Z
+while/lstm_cell_519/MatMul_1/ReadVariableOp+while/lstm_cell_519/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_520_layer_call_fn_3156101

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
J__inference_lstm_cell_520_layer_call_and_return_conditional_losses_3151368o
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
J__inference_lstm_cell_521_layer_call_and_return_conditional_losses_3156280

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
)sequential_86_lstm_258_while_cond_3150582J
Fsequential_86_lstm_258_while_sequential_86_lstm_258_while_loop_counterP
Lsequential_86_lstm_258_while_sequential_86_lstm_258_while_maximum_iterations,
(sequential_86_lstm_258_while_placeholder.
*sequential_86_lstm_258_while_placeholder_1.
*sequential_86_lstm_258_while_placeholder_2.
*sequential_86_lstm_258_while_placeholder_3L
Hsequential_86_lstm_258_while_less_sequential_86_lstm_258_strided_slice_1c
_sequential_86_lstm_258_while_sequential_86_lstm_258_while_cond_3150582___redundant_placeholder0c
_sequential_86_lstm_258_while_sequential_86_lstm_258_while_cond_3150582___redundant_placeholder1c
_sequential_86_lstm_258_while_sequential_86_lstm_258_while_cond_3150582___redundant_placeholder2c
_sequential_86_lstm_258_while_sequential_86_lstm_258_while_cond_3150582___redundant_placeholder3)
%sequential_86_lstm_258_while_identity
?
!sequential_86/lstm_258/while/LessLess(sequential_86_lstm_258_while_placeholderHsequential_86_lstm_258_while_less_sequential_86_lstm_258_strided_slice_1*
T0*
_output_shapes
: y
%sequential_86/lstm_258/while/IdentityIdentity%sequential_86/lstm_258/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_86_lstm_258_while_identity.sequential_86/lstm_258/while/Identity:output:0*(
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
*__inference_lstm_260_layer_call_fn_3155362
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
E__inference_lstm_260_layer_call_and_return_conditional_losses_3151801o
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
while_cond_3155882
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3155882___redundant_placeholder05
1while_while_cond_3155882___redundant_placeholder15
1while_while_cond_3155882___redundant_placeholder25
1while_while_cond_3155882___redundant_placeholder3
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
*__inference_dense_86_layer_call_fn_3155976

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
E__inference_dense_86_layer_call_and_return_conditional_losses_3152468o
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
?#
?
while_body_3151032
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_519_3151056_0:	?0
while_lstm_cell_519_3151058_0:	d?,
while_lstm_cell_519_3151060_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_519_3151056:	?.
while_lstm_cell_519_3151058:	d?*
while_lstm_cell_519_3151060:	???+while/lstm_cell_519/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_519/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_519_3151056_0while_lstm_cell_519_3151058_0while_lstm_cell_519_3151060_0*
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
J__inference_lstm_cell_519_layer_call_and_return_conditional_losses_3151018?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_519/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_519/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_519/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_519/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_519_3151056while_lstm_cell_519_3151056_0"<
while_lstm_cell_519_3151058while_lstm_cell_519_3151058_0"<
while_lstm_cell_519_3151060while_lstm_cell_519_3151060_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_519/StatefulPartitionedCall+while/lstm_cell_519/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3155740
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_521_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_521_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_521_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_521_matmul_readvariableop_resource:2(F
4while_lstm_cell_521_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_521_biasadd_readvariableop_resource:(??*while/lstm_cell_521/BiasAdd/ReadVariableOp?)while/lstm_cell_521/MatMul/ReadVariableOp?+while/lstm_cell_521/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_521/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_521_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_521/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_521/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_521/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_521_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_521/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_521/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_521/addAddV2$while/lstm_cell_521/MatMul:product:0&while/lstm_cell_521/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_521/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_521_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_521/BiasAddBiasAddwhile/lstm_cell_521/add:z:02while/lstm_cell_521/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_521/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_521/splitSplit,while/lstm_cell_521/split/split_dim:output:0$while/lstm_cell_521/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_521/SigmoidSigmoid"while/lstm_cell_521/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_521/Sigmoid_1Sigmoid"while/lstm_cell_521/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_521/mulMul!while/lstm_cell_521/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_521/ReluRelu"while/lstm_cell_521/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_521/mul_1Mulwhile/lstm_cell_521/Sigmoid:y:0&while/lstm_cell_521/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_521/add_1AddV2while/lstm_cell_521/mul:z:0while/lstm_cell_521/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_521/Sigmoid_2Sigmoid"while/lstm_cell_521/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_521/Relu_1Reluwhile/lstm_cell_521/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_521/mul_2Mul!while/lstm_cell_521/Sigmoid_2:y:0(while/lstm_cell_521/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_521/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_521/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_521/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_521/BiasAdd/ReadVariableOp*^while/lstm_cell_521/MatMul/ReadVariableOp,^while/lstm_cell_521/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_521_biasadd_readvariableop_resource5while_lstm_cell_521_biasadd_readvariableop_resource_0"n
4while_lstm_cell_521_matmul_1_readvariableop_resource6while_lstm_cell_521_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_521_matmul_readvariableop_resource4while_lstm_cell_521_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_521/BiasAdd/ReadVariableOp*while/lstm_cell_521/BiasAdd/ReadVariableOp2V
)while/lstm_cell_521/MatMul/ReadVariableOp)while/lstm_cell_521/MatMul/ReadVariableOp2Z
+while/lstm_cell_521/MatMul_1/ReadVariableOp+while/lstm_cell_521/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_260_layer_call_fn_3155395

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
E__inference_lstm_260_layer_call_and_return_conditional_losses_3152666o
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

?
lstm_258_while_cond_3153750.
*lstm_258_while_lstm_258_while_loop_counter4
0lstm_258_while_lstm_258_while_maximum_iterations
lstm_258_while_placeholder 
lstm_258_while_placeholder_1 
lstm_258_while_placeholder_2 
lstm_258_while_placeholder_30
,lstm_258_while_less_lstm_258_strided_slice_1G
Clstm_258_while_lstm_258_while_cond_3153750___redundant_placeholder0G
Clstm_258_while_lstm_258_while_cond_3153750___redundant_placeholder1G
Clstm_258_while_lstm_258_while_cond_3153750___redundant_placeholder2G
Clstm_258_while_lstm_258_while_cond_3153750___redundant_placeholder3
lstm_258_while_identity
?
lstm_258/while/LessLesslstm_258_while_placeholder,lstm_258_while_less_lstm_258_strided_slice_1*
T0*
_output_shapes
: ]
lstm_258/while/IdentityIdentitylstm_258/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_258_while_identity lstm_258/while/Identity:output:0*(
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
J__inference_sequential_86_layer_call_and_return_conditional_losses_3153176
lstm_258_input#
lstm_258_3153149:	?#
lstm_258_3153151:	d?
lstm_258_3153153:	?#
lstm_259_3153156:	d?#
lstm_259_3153158:	2?
lstm_259_3153160:	?"
lstm_260_3153163:2("
lstm_260_3153165:
(
lstm_260_3153167:("
dense_86_3153170:

dense_86_3153172:
identity?? dense_86/StatefulPartitionedCall? lstm_258/StatefulPartitionedCall? lstm_259/StatefulPartitionedCall? lstm_260/StatefulPartitionedCall?
 lstm_258/StatefulPartitionedCallStatefulPartitionedCalllstm_258_inputlstm_258_3153149lstm_258_3153151lstm_258_3153153*
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
E__inference_lstm_258_layer_call_and_return_conditional_losses_3152996?
 lstm_259/StatefulPartitionedCallStatefulPartitionedCall)lstm_258/StatefulPartitionedCall:output:0lstm_259_3153156lstm_259_3153158lstm_259_3153160*
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
E__inference_lstm_259_layer_call_and_return_conditional_losses_3152831?
 lstm_260/StatefulPartitionedCallStatefulPartitionedCall)lstm_259/StatefulPartitionedCall:output:0lstm_260_3153163lstm_260_3153165lstm_260_3153167*
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
E__inference_lstm_260_layer_call_and_return_conditional_losses_3152666?
 dense_86/StatefulPartitionedCallStatefulPartitionedCall)lstm_260/StatefulPartitionedCall:output:0dense_86_3153170dense_86_3153172*
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
E__inference_dense_86_layer_call_and_return_conditional_losses_3152468x
IdentityIdentity)dense_86/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_86/StatefulPartitionedCall!^lstm_258/StatefulPartitionedCall!^lstm_259/StatefulPartitionedCall!^lstm_260/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_86/StatefulPartitionedCall dense_86/StatefulPartitionedCall2D
 lstm_258/StatefulPartitionedCall lstm_258/StatefulPartitionedCall2D
 lstm_259/StatefulPartitionedCall lstm_259/StatefulPartitionedCall2D
 lstm_260/StatefulPartitionedCall lstm_260/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_258_input
?
?
*__inference_lstm_259_layer_call_fn_3154768

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
E__inference_lstm_259_layer_call_and_return_conditional_losses_3152300s
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
?
?
J__inference_sequential_86_layer_call_and_return_conditional_losses_3153146
lstm_258_input#
lstm_258_3153119:	?#
lstm_258_3153121:	d?
lstm_258_3153123:	?#
lstm_259_3153126:	d?#
lstm_259_3153128:	2?
lstm_259_3153130:	?"
lstm_260_3153133:2("
lstm_260_3153135:
(
lstm_260_3153137:("
dense_86_3153140:

dense_86_3153142:
identity?? dense_86/StatefulPartitionedCall? lstm_258/StatefulPartitionedCall? lstm_259/StatefulPartitionedCall? lstm_260/StatefulPartitionedCall?
 lstm_258/StatefulPartitionedCallStatefulPartitionedCalllstm_258_inputlstm_258_3153119lstm_258_3153121lstm_258_3153123*
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
E__inference_lstm_258_layer_call_and_return_conditional_losses_3152150?
 lstm_259/StatefulPartitionedCallStatefulPartitionedCall)lstm_258/StatefulPartitionedCall:output:0lstm_259_3153126lstm_259_3153128lstm_259_3153130*
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
E__inference_lstm_259_layer_call_and_return_conditional_losses_3152300?
 lstm_260/StatefulPartitionedCallStatefulPartitionedCall)lstm_259/StatefulPartitionedCall:output:0lstm_260_3153133lstm_260_3153135lstm_260_3153137*
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
E__inference_lstm_260_layer_call_and_return_conditional_losses_3152450?
 dense_86/StatefulPartitionedCallStatefulPartitionedCall)lstm_260/StatefulPartitionedCall:output:0dense_86_3153140dense_86_3153142*
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
E__inference_dense_86_layer_call_and_return_conditional_losses_3152468x
IdentityIdentity)dense_86/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_86/StatefulPartitionedCall!^lstm_258/StatefulPartitionedCall!^lstm_259/StatefulPartitionedCall!^lstm_260/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_86/StatefulPartitionedCall dense_86/StatefulPartitionedCall2D
 lstm_258/StatefulPartitionedCall lstm_258/StatefulPartitionedCall2D
 lstm_259/StatefulPartitionedCall lstm_259/StatefulPartitionedCall2D
 lstm_260/StatefulPartitionedCall lstm_260/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_258_input
?#
?
while_body_3151923
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_521_3151947_0:2(/
while_lstm_cell_521_3151949_0:
(+
while_lstm_cell_521_3151951_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_521_3151947:2(-
while_lstm_cell_521_3151949:
()
while_lstm_cell_521_3151951:(??+while/lstm_cell_521/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_521/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_521_3151947_0while_lstm_cell_521_3151949_0while_lstm_cell_521_3151951_0*
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
J__inference_lstm_cell_521_layer_call_and_return_conditional_losses_3151864?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_521/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_521/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_521/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_521/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_521_3151947while_lstm_cell_521_3151947_0"<
while_lstm_cell_521_3151949while_lstm_cell_521_3151949_0"<
while_lstm_cell_521_3151951while_lstm_cell_521_3151951_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_521/StatefulPartitionedCall+while/lstm_cell_521/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_521_layer_call_and_return_conditional_losses_3156248

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
*__inference_lstm_258_layer_call_fn_3154141
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
E__inference_lstm_258_layer_call_and_return_conditional_losses_3151292|
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
while_body_3155454
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_521_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_521_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_521_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_521_matmul_readvariableop_resource:2(F
4while_lstm_cell_521_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_521_biasadd_readvariableop_resource:(??*while/lstm_cell_521/BiasAdd/ReadVariableOp?)while/lstm_cell_521/MatMul/ReadVariableOp?+while/lstm_cell_521/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_521/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_521_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_521/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_521/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_521/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_521_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_521/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_521/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_521/addAddV2$while/lstm_cell_521/MatMul:product:0&while/lstm_cell_521/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_521/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_521_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_521/BiasAddBiasAddwhile/lstm_cell_521/add:z:02while/lstm_cell_521/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_521/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_521/splitSplit,while/lstm_cell_521/split/split_dim:output:0$while/lstm_cell_521/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_521/SigmoidSigmoid"while/lstm_cell_521/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_521/Sigmoid_1Sigmoid"while/lstm_cell_521/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_521/mulMul!while/lstm_cell_521/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_521/ReluRelu"while/lstm_cell_521/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_521/mul_1Mulwhile/lstm_cell_521/Sigmoid:y:0&while/lstm_cell_521/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_521/add_1AddV2while/lstm_cell_521/mul:z:0while/lstm_cell_521/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_521/Sigmoid_2Sigmoid"while/lstm_cell_521/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_521/Relu_1Reluwhile/lstm_cell_521/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_521/mul_2Mul!while/lstm_cell_521/Sigmoid_2:y:0(while/lstm_cell_521/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_521/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_521/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_521/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_521/BiasAdd/ReadVariableOp*^while/lstm_cell_521/MatMul/ReadVariableOp,^while/lstm_cell_521/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_521_biasadd_readvariableop_resource5while_lstm_cell_521_biasadd_readvariableop_resource_0"n
4while_lstm_cell_521_matmul_1_readvariableop_resource6while_lstm_cell_521_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_521_matmul_readvariableop_resource4while_lstm_cell_521_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_521/BiasAdd/ReadVariableOp*while/lstm_cell_521/BiasAdd/ReadVariableOp2V
)while/lstm_cell_521/MatMul/ReadVariableOp)while/lstm_cell_521/MatMul/ReadVariableOp2Z
+while/lstm_cell_521/MatMul_1/ReadVariableOp+while/lstm_cell_521/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_260_layer_call_and_return_conditional_losses_3152450

inputs>
,lstm_cell_521_matmul_readvariableop_resource:2(@
.lstm_cell_521_matmul_1_readvariableop_resource:
(;
-lstm_cell_521_biasadd_readvariableop_resource:(
identity??$lstm_cell_521/BiasAdd/ReadVariableOp?#lstm_cell_521/MatMul/ReadVariableOp?%lstm_cell_521/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_521/MatMul/ReadVariableOpReadVariableOp,lstm_cell_521_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_521/MatMulMatMulstrided_slice_2:output:0+lstm_cell_521/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_521/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_521_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_521/MatMul_1MatMulzeros:output:0-lstm_cell_521/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_521/addAddV2lstm_cell_521/MatMul:product:0 lstm_cell_521/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_521/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_521_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_521/BiasAddBiasAddlstm_cell_521/add:z:0,lstm_cell_521/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_521/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_521/splitSplit&lstm_cell_521/split/split_dim:output:0lstm_cell_521/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_521/SigmoidSigmoidlstm_cell_521/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_521/Sigmoid_1Sigmoidlstm_cell_521/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_521/mulMullstm_cell_521/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_521/ReluRelulstm_cell_521/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_521/mul_1Mullstm_cell_521/Sigmoid:y:0 lstm_cell_521/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_521/add_1AddV2lstm_cell_521/mul:z:0lstm_cell_521/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_521/Sigmoid_2Sigmoidlstm_cell_521/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_521/Relu_1Relulstm_cell_521/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_521/mul_2Mullstm_cell_521/Sigmoid_2:y:0"lstm_cell_521/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_521_matmul_readvariableop_resource.lstm_cell_521_matmul_1_readvariableop_resource-lstm_cell_521_biasadd_readvariableop_resource*
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
while_body_3152366*
condR
while_cond_3152365*K
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
NoOpNoOp%^lstm_cell_521/BiasAdd/ReadVariableOp$^lstm_cell_521/MatMul/ReadVariableOp&^lstm_cell_521/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_521/BiasAdd/ReadVariableOp$lstm_cell_521/BiasAdd/ReadVariableOp2J
#lstm_cell_521/MatMul/ReadVariableOp#lstm_cell_521/MatMul/ReadVariableOp2N
%lstm_cell_521/MatMul_1/ReadVariableOp%lstm_cell_521/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_260_layer_call_and_return_conditional_losses_3155967

inputs>
,lstm_cell_521_matmul_readvariableop_resource:2(@
.lstm_cell_521_matmul_1_readvariableop_resource:
(;
-lstm_cell_521_biasadd_readvariableop_resource:(
identity??$lstm_cell_521/BiasAdd/ReadVariableOp?#lstm_cell_521/MatMul/ReadVariableOp?%lstm_cell_521/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_521/MatMul/ReadVariableOpReadVariableOp,lstm_cell_521_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_521/MatMulMatMulstrided_slice_2:output:0+lstm_cell_521/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_521/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_521_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_521/MatMul_1MatMulzeros:output:0-lstm_cell_521/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_521/addAddV2lstm_cell_521/MatMul:product:0 lstm_cell_521/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_521/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_521_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_521/BiasAddBiasAddlstm_cell_521/add:z:0,lstm_cell_521/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_521/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_521/splitSplit&lstm_cell_521/split/split_dim:output:0lstm_cell_521/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_521/SigmoidSigmoidlstm_cell_521/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_521/Sigmoid_1Sigmoidlstm_cell_521/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_521/mulMullstm_cell_521/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_521/ReluRelulstm_cell_521/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_521/mul_1Mullstm_cell_521/Sigmoid:y:0 lstm_cell_521/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_521/add_1AddV2lstm_cell_521/mul:z:0lstm_cell_521/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_521/Sigmoid_2Sigmoidlstm_cell_521/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_521/Relu_1Relulstm_cell_521/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_521/mul_2Mullstm_cell_521/Sigmoid_2:y:0"lstm_cell_521/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_521_matmul_readvariableop_resource.lstm_cell_521_matmul_1_readvariableop_resource-lstm_cell_521_biasadd_readvariableop_resource*
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
while_body_3155883*
condR
while_cond_3155882*K
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
NoOpNoOp%^lstm_cell_521/BiasAdd/ReadVariableOp$^lstm_cell_521/MatMul/ReadVariableOp&^lstm_cell_521/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_521/BiasAdd/ReadVariableOp$lstm_cell_521/BiasAdd/ReadVariableOp2J
#lstm_cell_521/MatMul/ReadVariableOp#lstm_cell_521/MatMul/ReadVariableOp2N
%lstm_cell_521/MatMul_1/ReadVariableOp%lstm_cell_521/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_519_layer_call_and_return_conditional_losses_3156052

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
while_body_3152216
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_520_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_520_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_520_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_520_matmul_readvariableop_resource:	d?G
4while_lstm_cell_520_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_520_biasadd_readvariableop_resource:	???*while/lstm_cell_520/BiasAdd/ReadVariableOp?)while/lstm_cell_520/MatMul/ReadVariableOp?+while/lstm_cell_520/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_520/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_520_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_520/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_520/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_520/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_520_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_520/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_520/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_520/addAddV2$while/lstm_cell_520/MatMul:product:0&while/lstm_cell_520/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_520/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_520_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_520/BiasAddBiasAddwhile/lstm_cell_520/add:z:02while/lstm_cell_520/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_520/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_520/splitSplit,while/lstm_cell_520/split/split_dim:output:0$while/lstm_cell_520/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_520/SigmoidSigmoid"while/lstm_cell_520/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_520/Sigmoid_1Sigmoid"while/lstm_cell_520/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_520/mulMul!while/lstm_cell_520/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_520/ReluRelu"while/lstm_cell_520/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_520/mul_1Mulwhile/lstm_cell_520/Sigmoid:y:0&while/lstm_cell_520/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_520/add_1AddV2while/lstm_cell_520/mul:z:0while/lstm_cell_520/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_520/Sigmoid_2Sigmoid"while/lstm_cell_520/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_520/Relu_1Reluwhile/lstm_cell_520/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_520/mul_2Mul!while/lstm_cell_520/Sigmoid_2:y:0(while/lstm_cell_520/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_520/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_520/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_520/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_520/BiasAdd/ReadVariableOp*^while/lstm_cell_520/MatMul/ReadVariableOp,^while/lstm_cell_520/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_520_biasadd_readvariableop_resource5while_lstm_cell_520_biasadd_readvariableop_resource_0"n
4while_lstm_cell_520_matmul_1_readvariableop_resource6while_lstm_cell_520_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_520_matmul_readvariableop_resource4while_lstm_cell_520_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_520/BiasAdd/ReadVariableOp*while/lstm_cell_520/BiasAdd/ReadVariableOp2V
)while/lstm_cell_520/MatMul/ReadVariableOp)while/lstm_cell_520/MatMul/ReadVariableOp2Z
+while/lstm_cell_520/MatMul_1/ReadVariableOp+while/lstm_cell_520/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_259_while_body_3153463.
*lstm_259_while_lstm_259_while_loop_counter4
0lstm_259_while_lstm_259_while_maximum_iterations
lstm_259_while_placeholder 
lstm_259_while_placeholder_1 
lstm_259_while_placeholder_2 
lstm_259_while_placeholder_3-
)lstm_259_while_lstm_259_strided_slice_1_0i
elstm_259_while_tensorarrayv2read_tensorlistgetitem_lstm_259_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_259_while_lstm_cell_520_matmul_readvariableop_resource_0:	d?R
?lstm_259_while_lstm_cell_520_matmul_1_readvariableop_resource_0:	2?M
>lstm_259_while_lstm_cell_520_biasadd_readvariableop_resource_0:	?
lstm_259_while_identity
lstm_259_while_identity_1
lstm_259_while_identity_2
lstm_259_while_identity_3
lstm_259_while_identity_4
lstm_259_while_identity_5+
'lstm_259_while_lstm_259_strided_slice_1g
clstm_259_while_tensorarrayv2read_tensorlistgetitem_lstm_259_tensorarrayunstack_tensorlistfromtensorN
;lstm_259_while_lstm_cell_520_matmul_readvariableop_resource:	d?P
=lstm_259_while_lstm_cell_520_matmul_1_readvariableop_resource:	2?K
<lstm_259_while_lstm_cell_520_biasadd_readvariableop_resource:	???3lstm_259/while/lstm_cell_520/BiasAdd/ReadVariableOp?2lstm_259/while/lstm_cell_520/MatMul/ReadVariableOp?4lstm_259/while/lstm_cell_520/MatMul_1/ReadVariableOp?
@lstm_259/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_259/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_259_while_tensorarrayv2read_tensorlistgetitem_lstm_259_tensorarrayunstack_tensorlistfromtensor_0lstm_259_while_placeholderIlstm_259/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_259/while/lstm_cell_520/MatMul/ReadVariableOpReadVariableOp=lstm_259_while_lstm_cell_520_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_259/while/lstm_cell_520/MatMulMatMul9lstm_259/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_259/while/lstm_cell_520/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_259/while/lstm_cell_520/MatMul_1/ReadVariableOpReadVariableOp?lstm_259_while_lstm_cell_520_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_259/while/lstm_cell_520/MatMul_1MatMullstm_259_while_placeholder_2<lstm_259/while/lstm_cell_520/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_259/while/lstm_cell_520/addAddV2-lstm_259/while/lstm_cell_520/MatMul:product:0/lstm_259/while/lstm_cell_520/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_259/while/lstm_cell_520/BiasAdd/ReadVariableOpReadVariableOp>lstm_259_while_lstm_cell_520_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_259/while/lstm_cell_520/BiasAddBiasAdd$lstm_259/while/lstm_cell_520/add:z:0;lstm_259/while/lstm_cell_520/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_259/while/lstm_cell_520/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_259/while/lstm_cell_520/splitSplit5lstm_259/while/lstm_cell_520/split/split_dim:output:0-lstm_259/while/lstm_cell_520/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_259/while/lstm_cell_520/SigmoidSigmoid+lstm_259/while/lstm_cell_520/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_259/while/lstm_cell_520/Sigmoid_1Sigmoid+lstm_259/while/lstm_cell_520/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_259/while/lstm_cell_520/mulMul*lstm_259/while/lstm_cell_520/Sigmoid_1:y:0lstm_259_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_259/while/lstm_cell_520/ReluRelu+lstm_259/while/lstm_cell_520/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_259/while/lstm_cell_520/mul_1Mul(lstm_259/while/lstm_cell_520/Sigmoid:y:0/lstm_259/while/lstm_cell_520/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_259/while/lstm_cell_520/add_1AddV2$lstm_259/while/lstm_cell_520/mul:z:0&lstm_259/while/lstm_cell_520/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_259/while/lstm_cell_520/Sigmoid_2Sigmoid+lstm_259/while/lstm_cell_520/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_259/while/lstm_cell_520/Relu_1Relu&lstm_259/while/lstm_cell_520/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_259/while/lstm_cell_520/mul_2Mul*lstm_259/while/lstm_cell_520/Sigmoid_2:y:01lstm_259/while/lstm_cell_520/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_259/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_259_while_placeholder_1lstm_259_while_placeholder&lstm_259/while/lstm_cell_520/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_259/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_259/while/addAddV2lstm_259_while_placeholderlstm_259/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_259/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_259/while/add_1AddV2*lstm_259_while_lstm_259_while_loop_counterlstm_259/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_259/while/IdentityIdentitylstm_259/while/add_1:z:0^lstm_259/while/NoOp*
T0*
_output_shapes
: ?
lstm_259/while/Identity_1Identity0lstm_259_while_lstm_259_while_maximum_iterations^lstm_259/while/NoOp*
T0*
_output_shapes
: t
lstm_259/while/Identity_2Identitylstm_259/while/add:z:0^lstm_259/while/NoOp*
T0*
_output_shapes
: ?
lstm_259/while/Identity_3IdentityClstm_259/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_259/while/NoOp*
T0*
_output_shapes
: ?
lstm_259/while/Identity_4Identity&lstm_259/while/lstm_cell_520/mul_2:z:0^lstm_259/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_259/while/Identity_5Identity&lstm_259/while/lstm_cell_520/add_1:z:0^lstm_259/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_259/while/NoOpNoOp4^lstm_259/while/lstm_cell_520/BiasAdd/ReadVariableOp3^lstm_259/while/lstm_cell_520/MatMul/ReadVariableOp5^lstm_259/while/lstm_cell_520/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_259_while_identity lstm_259/while/Identity:output:0"?
lstm_259_while_identity_1"lstm_259/while/Identity_1:output:0"?
lstm_259_while_identity_2"lstm_259/while/Identity_2:output:0"?
lstm_259_while_identity_3"lstm_259/while/Identity_3:output:0"?
lstm_259_while_identity_4"lstm_259/while/Identity_4:output:0"?
lstm_259_while_identity_5"lstm_259/while/Identity_5:output:0"T
'lstm_259_while_lstm_259_strided_slice_1)lstm_259_while_lstm_259_strided_slice_1_0"~
<lstm_259_while_lstm_cell_520_biasadd_readvariableop_resource>lstm_259_while_lstm_cell_520_biasadd_readvariableop_resource_0"?
=lstm_259_while_lstm_cell_520_matmul_1_readvariableop_resource?lstm_259_while_lstm_cell_520_matmul_1_readvariableop_resource_0"|
;lstm_259_while_lstm_cell_520_matmul_readvariableop_resource=lstm_259_while_lstm_cell_520_matmul_readvariableop_resource_0"?
clstm_259_while_tensorarrayv2read_tensorlistgetitem_lstm_259_tensorarrayunstack_tensorlistfromtensorelstm_259_while_tensorarrayv2read_tensorlistgetitem_lstm_259_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_259/while/lstm_cell_520/BiasAdd/ReadVariableOp3lstm_259/while/lstm_cell_520/BiasAdd/ReadVariableOp2h
2lstm_259/while/lstm_cell_520/MatMul/ReadVariableOp2lstm_259/while/lstm_cell_520/MatMul/ReadVariableOp2l
4lstm_259/while/lstm_cell_520/MatMul_1/ReadVariableOp4lstm_259/while/lstm_cell_520/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3155597
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_521_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_521_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_521_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_521_matmul_readvariableop_resource:2(F
4while_lstm_cell_521_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_521_biasadd_readvariableop_resource:(??*while/lstm_cell_521/BiasAdd/ReadVariableOp?)while/lstm_cell_521/MatMul/ReadVariableOp?+while/lstm_cell_521/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_521/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_521_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_521/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_521/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_521/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_521_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_521/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_521/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_521/addAddV2$while/lstm_cell_521/MatMul:product:0&while/lstm_cell_521/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_521/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_521_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_521/BiasAddBiasAddwhile/lstm_cell_521/add:z:02while/lstm_cell_521/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_521/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_521/splitSplit,while/lstm_cell_521/split/split_dim:output:0$while/lstm_cell_521/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_521/SigmoidSigmoid"while/lstm_cell_521/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_521/Sigmoid_1Sigmoid"while/lstm_cell_521/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_521/mulMul!while/lstm_cell_521/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_521/ReluRelu"while/lstm_cell_521/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_521/mul_1Mulwhile/lstm_cell_521/Sigmoid:y:0&while/lstm_cell_521/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_521/add_1AddV2while/lstm_cell_521/mul:z:0while/lstm_cell_521/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_521/Sigmoid_2Sigmoid"while/lstm_cell_521/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_521/Relu_1Reluwhile/lstm_cell_521/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_521/mul_2Mul!while/lstm_cell_521/Sigmoid_2:y:0(while/lstm_cell_521/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_521/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_521/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_521/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_521/BiasAdd/ReadVariableOp*^while/lstm_cell_521/MatMul/ReadVariableOp,^while/lstm_cell_521/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_521_biasadd_readvariableop_resource5while_lstm_cell_521_biasadd_readvariableop_resource_0"n
4while_lstm_cell_521_matmul_1_readvariableop_resource6while_lstm_cell_521_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_521_matmul_readvariableop_resource4while_lstm_cell_521_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_521/BiasAdd/ReadVariableOp*while/lstm_cell_521/BiasAdd/ReadVariableOp2V
)while/lstm_cell_521/MatMul/ReadVariableOp)while/lstm_cell_521/MatMul/ReadVariableOp2Z
+while/lstm_cell_521/MatMul_1/ReadVariableOp+while/lstm_cell_521/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
 __inference__traced_save_3156423
file_prefix.
*savev2_dense_86_kernel_read_readvariableop,
(savev2_dense_86_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_258_lstm_cell_258_kernel_read_readvariableopF
Bsavev2_lstm_258_lstm_cell_258_recurrent_kernel_read_readvariableop:
6savev2_lstm_258_lstm_cell_258_bias_read_readvariableop<
8savev2_lstm_259_lstm_cell_259_kernel_read_readvariableopF
Bsavev2_lstm_259_lstm_cell_259_recurrent_kernel_read_readvariableop:
6savev2_lstm_259_lstm_cell_259_bias_read_readvariableop<
8savev2_lstm_260_lstm_cell_260_kernel_read_readvariableopF
Bsavev2_lstm_260_lstm_cell_260_recurrent_kernel_read_readvariableop:
6savev2_lstm_260_lstm_cell_260_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_86_kernel_m_read_readvariableop3
/savev2_adam_dense_86_bias_m_read_readvariableopC
?savev2_adam_lstm_258_lstm_cell_258_kernel_m_read_readvariableopM
Isavev2_adam_lstm_258_lstm_cell_258_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_258_lstm_cell_258_bias_m_read_readvariableopC
?savev2_adam_lstm_259_lstm_cell_259_kernel_m_read_readvariableopM
Isavev2_adam_lstm_259_lstm_cell_259_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_259_lstm_cell_259_bias_m_read_readvariableopC
?savev2_adam_lstm_260_lstm_cell_260_kernel_m_read_readvariableopM
Isavev2_adam_lstm_260_lstm_cell_260_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_260_lstm_cell_260_bias_m_read_readvariableop5
1savev2_adam_dense_86_kernel_v_read_readvariableop3
/savev2_adam_dense_86_bias_v_read_readvariableopC
?savev2_adam_lstm_258_lstm_cell_258_kernel_v_read_readvariableopM
Isavev2_adam_lstm_258_lstm_cell_258_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_258_lstm_cell_258_bias_v_read_readvariableopC
?savev2_adam_lstm_259_lstm_cell_259_kernel_v_read_readvariableopM
Isavev2_adam_lstm_259_lstm_cell_259_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_259_lstm_cell_259_bias_v_read_readvariableopC
?savev2_adam_lstm_260_lstm_cell_260_kernel_v_read_readvariableopM
Isavev2_adam_lstm_260_lstm_cell_260_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_260_lstm_cell_260_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_86_kernel_read_readvariableop(savev2_dense_86_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_258_lstm_cell_258_kernel_read_readvariableopBsavev2_lstm_258_lstm_cell_258_recurrent_kernel_read_readvariableop6savev2_lstm_258_lstm_cell_258_bias_read_readvariableop8savev2_lstm_259_lstm_cell_259_kernel_read_readvariableopBsavev2_lstm_259_lstm_cell_259_recurrent_kernel_read_readvariableop6savev2_lstm_259_lstm_cell_259_bias_read_readvariableop8savev2_lstm_260_lstm_cell_260_kernel_read_readvariableopBsavev2_lstm_260_lstm_cell_260_recurrent_kernel_read_readvariableop6savev2_lstm_260_lstm_cell_260_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_86_kernel_m_read_readvariableop/savev2_adam_dense_86_bias_m_read_readvariableop?savev2_adam_lstm_258_lstm_cell_258_kernel_m_read_readvariableopIsavev2_adam_lstm_258_lstm_cell_258_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_258_lstm_cell_258_bias_m_read_readvariableop?savev2_adam_lstm_259_lstm_cell_259_kernel_m_read_readvariableopIsavev2_adam_lstm_259_lstm_cell_259_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_259_lstm_cell_259_bias_m_read_readvariableop?savev2_adam_lstm_260_lstm_cell_260_kernel_m_read_readvariableopIsavev2_adam_lstm_260_lstm_cell_260_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_260_lstm_cell_260_bias_m_read_readvariableop1savev2_adam_dense_86_kernel_v_read_readvariableop/savev2_adam_dense_86_bias_v_read_readvariableop?savev2_adam_lstm_258_lstm_cell_258_kernel_v_read_readvariableopIsavev2_adam_lstm_258_lstm_cell_258_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_258_lstm_cell_258_bias_v_read_readvariableop?savev2_adam_lstm_259_lstm_cell_259_kernel_v_read_readvariableopIsavev2_adam_lstm_259_lstm_cell_259_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_259_lstm_cell_259_bias_v_read_readvariableop?savev2_adam_lstm_260_lstm_cell_260_kernel_v_read_readvariableopIsavev2_adam_lstm_260_lstm_cell_260_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_260_lstm_cell_260_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?K
?
E__inference_lstm_258_layer_call_and_return_conditional_losses_3154449
inputs_0?
,lstm_cell_519_matmul_readvariableop_resource:	?A
.lstm_cell_519_matmul_1_readvariableop_resource:	d?<
-lstm_cell_519_biasadd_readvariableop_resource:	?
identity??$lstm_cell_519/BiasAdd/ReadVariableOp?#lstm_cell_519/MatMul/ReadVariableOp?%lstm_cell_519/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_519/MatMul/ReadVariableOpReadVariableOp,lstm_cell_519_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_519/MatMulMatMulstrided_slice_2:output:0+lstm_cell_519/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_519/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_519_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_519/MatMul_1MatMulzeros:output:0-lstm_cell_519/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_519/addAddV2lstm_cell_519/MatMul:product:0 lstm_cell_519/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_519/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_519_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_519/BiasAddBiasAddlstm_cell_519/add:z:0,lstm_cell_519/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_519/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_519/splitSplit&lstm_cell_519/split/split_dim:output:0lstm_cell_519/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_519/SigmoidSigmoidlstm_cell_519/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_519/Sigmoid_1Sigmoidlstm_cell_519/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_519/mulMullstm_cell_519/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_519/ReluRelulstm_cell_519/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_519/mul_1Mullstm_cell_519/Sigmoid:y:0 lstm_cell_519/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_519/add_1AddV2lstm_cell_519/mul:z:0lstm_cell_519/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_519/Sigmoid_2Sigmoidlstm_cell_519/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_519/Relu_1Relulstm_cell_519/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_519/mul_2Mullstm_cell_519/Sigmoid_2:y:0"lstm_cell_519/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_519_matmul_readvariableop_resource.lstm_cell_519_matmul_1_readvariableop_resource-lstm_cell_519_biasadd_readvariableop_resource*
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
while_body_3154365*
condR
while_cond_3154364*K
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
NoOpNoOp%^lstm_cell_519/BiasAdd/ReadVariableOp$^lstm_cell_519/MatMul/ReadVariableOp&^lstm_cell_519/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_519/BiasAdd/ReadVariableOp$lstm_cell_519/BiasAdd/ReadVariableOp2J
#lstm_cell_519/MatMul/ReadVariableOp#lstm_cell_519/MatMul/ReadVariableOp2N
%lstm_cell_519/MatMul_1/ReadVariableOp%lstm_cell_519/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_3151922
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3151922___redundant_placeholder05
1while_while_cond_3151922___redundant_placeholder15
1while_while_cond_3151922___redundant_placeholder25
1while_while_cond_3151922___redundant_placeholder3
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
while_body_3151573
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_520_3151597_0:	d?0
while_lstm_cell_520_3151599_0:	2?,
while_lstm_cell_520_3151601_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_520_3151597:	d?.
while_lstm_cell_520_3151599:	2?*
while_lstm_cell_520_3151601:	???+while/lstm_cell_520/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_520/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_520_3151597_0while_lstm_cell_520_3151599_0while_lstm_cell_520_3151601_0*
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
J__inference_lstm_cell_520_layer_call_and_return_conditional_losses_3151514?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_520/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_520/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_520/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_520/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_520_3151597while_lstm_cell_520_3151597_0"<
while_lstm_cell_520_3151599while_lstm_cell_520_3151599_0"<
while_lstm_cell_520_3151601while_lstm_cell_520_3151601_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_520/StatefulPartitionedCall+while/lstm_cell_520/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3155739
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3155739___redundant_placeholder05
1while_while_cond_3155739___redundant_placeholder15
1while_while_cond_3155739___redundant_placeholder25
1while_while_cond_3155739___redundant_placeholder3
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
while_body_3152366
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_521_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_521_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_521_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_521_matmul_readvariableop_resource:2(F
4while_lstm_cell_521_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_521_biasadd_readvariableop_resource:(??*while/lstm_cell_521/BiasAdd/ReadVariableOp?)while/lstm_cell_521/MatMul/ReadVariableOp?+while/lstm_cell_521/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_521/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_521_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_521/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_521/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_521/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_521_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_521/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_521/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_521/addAddV2$while/lstm_cell_521/MatMul:product:0&while/lstm_cell_521/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_521/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_521_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_521/BiasAddBiasAddwhile/lstm_cell_521/add:z:02while/lstm_cell_521/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_521/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_521/splitSplit,while/lstm_cell_521/split/split_dim:output:0$while/lstm_cell_521/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_521/SigmoidSigmoid"while/lstm_cell_521/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_521/Sigmoid_1Sigmoid"while/lstm_cell_521/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_521/mulMul!while/lstm_cell_521/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_521/ReluRelu"while/lstm_cell_521/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_521/mul_1Mulwhile/lstm_cell_521/Sigmoid:y:0&while/lstm_cell_521/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_521/add_1AddV2while/lstm_cell_521/mul:z:0while/lstm_cell_521/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_521/Sigmoid_2Sigmoid"while/lstm_cell_521/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_521/Relu_1Reluwhile/lstm_cell_521/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_521/mul_2Mul!while/lstm_cell_521/Sigmoid_2:y:0(while/lstm_cell_521/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_521/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_521/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_521/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_521/BiasAdd/ReadVariableOp*^while/lstm_cell_521/MatMul/ReadVariableOp,^while/lstm_cell_521/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_521_biasadd_readvariableop_resource5while_lstm_cell_521_biasadd_readvariableop_resource_0"n
4while_lstm_cell_521_matmul_1_readvariableop_resource6while_lstm_cell_521_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_521_matmul_readvariableop_resource4while_lstm_cell_521_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_521/BiasAdd/ReadVariableOp*while/lstm_cell_521/BiasAdd/ReadVariableOp2V
)while/lstm_cell_521/MatMul/ReadVariableOp)while/lstm_cell_521/MatMul/ReadVariableOp2Z
+while/lstm_cell_521/MatMul_1/ReadVariableOp+while/lstm_cell_521/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_519_layer_call_fn_3156020

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
J__inference_lstm_cell_519_layer_call_and_return_conditional_losses_3151164o
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
?
*__inference_lstm_259_layer_call_fn_3154746
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
E__inference_lstm_259_layer_call_and_return_conditional_losses_3151451|
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
inputs/0"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_258_input;
 serving_default_lstm_258_input:0?????????<
dense_860
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
2dense_86/kernel
:2dense_86/bias
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
0:.	?2lstm_258/lstm_cell_258/kernel
::8	d?2'lstm_258/lstm_cell_258/recurrent_kernel
*:(?2lstm_258/lstm_cell_258/bias
0:.	d?2lstm_259/lstm_cell_259/kernel
::8	2?2'lstm_259/lstm_cell_259/recurrent_kernel
*:(?2lstm_259/lstm_cell_259/bias
/:-2(2lstm_260/lstm_cell_260/kernel
9:7
(2'lstm_260/lstm_cell_260/recurrent_kernel
):'(2lstm_260/lstm_cell_260/bias
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
2Adam/dense_86/kernel/m
 :2Adam/dense_86/bias/m
5:3	?2$Adam/lstm_258/lstm_cell_258/kernel/m
?:=	d?2.Adam/lstm_258/lstm_cell_258/recurrent_kernel/m
/:-?2"Adam/lstm_258/lstm_cell_258/bias/m
5:3	d?2$Adam/lstm_259/lstm_cell_259/kernel/m
?:=	2?2.Adam/lstm_259/lstm_cell_259/recurrent_kernel/m
/:-?2"Adam/lstm_259/lstm_cell_259/bias/m
4:22(2$Adam/lstm_260/lstm_cell_260/kernel/m
>:<
(2.Adam/lstm_260/lstm_cell_260/recurrent_kernel/m
.:,(2"Adam/lstm_260/lstm_cell_260/bias/m
&:$
2Adam/dense_86/kernel/v
 :2Adam/dense_86/bias/v
5:3	?2$Adam/lstm_258/lstm_cell_258/kernel/v
?:=	d?2.Adam/lstm_258/lstm_cell_258/recurrent_kernel/v
/:-?2"Adam/lstm_258/lstm_cell_258/bias/v
5:3	d?2$Adam/lstm_259/lstm_cell_259/kernel/v
?:=	2?2.Adam/lstm_259/lstm_cell_259/recurrent_kernel/v
/:-?2"Adam/lstm_259/lstm_cell_259/bias/v
4:22(2$Adam/lstm_260/lstm_cell_260/kernel/v
>:<
(2.Adam/lstm_260/lstm_cell_260/recurrent_kernel/v
.:,(2"Adam/lstm_260/lstm_cell_260/bias/v
?2?
/__inference_sequential_86_layer_call_fn_3152500
/__inference_sequential_86_layer_call_fn_3153238
/__inference_sequential_86_layer_call_fn_3153265
/__inference_sequential_86_layer_call_fn_3153116?
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
J__inference_sequential_86_layer_call_and_return_conditional_losses_3153692
J__inference_sequential_86_layer_call_and_return_conditional_losses_3154119
J__inference_sequential_86_layer_call_and_return_conditional_losses_3153146
J__inference_sequential_86_layer_call_and_return_conditional_losses_3153176?
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
"__inference__wrapped_model_3150951lstm_258_input"?
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
*__inference_lstm_258_layer_call_fn_3154130
*__inference_lstm_258_layer_call_fn_3154141
*__inference_lstm_258_layer_call_fn_3154152
*__inference_lstm_258_layer_call_fn_3154163?
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
E__inference_lstm_258_layer_call_and_return_conditional_losses_3154306
E__inference_lstm_258_layer_call_and_return_conditional_losses_3154449
E__inference_lstm_258_layer_call_and_return_conditional_losses_3154592
E__inference_lstm_258_layer_call_and_return_conditional_losses_3154735?
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
*__inference_lstm_259_layer_call_fn_3154746
*__inference_lstm_259_layer_call_fn_3154757
*__inference_lstm_259_layer_call_fn_3154768
*__inference_lstm_259_layer_call_fn_3154779?
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
E__inference_lstm_259_layer_call_and_return_conditional_losses_3154922
E__inference_lstm_259_layer_call_and_return_conditional_losses_3155065
E__inference_lstm_259_layer_call_and_return_conditional_losses_3155208
E__inference_lstm_259_layer_call_and_return_conditional_losses_3155351?
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
*__inference_lstm_260_layer_call_fn_3155362
*__inference_lstm_260_layer_call_fn_3155373
*__inference_lstm_260_layer_call_fn_3155384
*__inference_lstm_260_layer_call_fn_3155395?
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
E__inference_lstm_260_layer_call_and_return_conditional_losses_3155538
E__inference_lstm_260_layer_call_and_return_conditional_losses_3155681
E__inference_lstm_260_layer_call_and_return_conditional_losses_3155824
E__inference_lstm_260_layer_call_and_return_conditional_losses_3155967?
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
*__inference_dense_86_layer_call_fn_3155976?
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
E__inference_dense_86_layer_call_and_return_conditional_losses_3155986?
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
%__inference_signature_wrapper_3153211lstm_258_input"?
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
/__inference_lstm_cell_519_layer_call_fn_3156003
/__inference_lstm_cell_519_layer_call_fn_3156020?
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
J__inference_lstm_cell_519_layer_call_and_return_conditional_losses_3156052
J__inference_lstm_cell_519_layer_call_and_return_conditional_losses_3156084?
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
/__inference_lstm_cell_520_layer_call_fn_3156101
/__inference_lstm_cell_520_layer_call_fn_3156118?
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
J__inference_lstm_cell_520_layer_call_and_return_conditional_losses_3156150
J__inference_lstm_cell_520_layer_call_and_return_conditional_losses_3156182?
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
/__inference_lstm_cell_521_layer_call_fn_3156199
/__inference_lstm_cell_521_layer_call_fn_3156216?
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
J__inference_lstm_cell_521_layer_call_and_return_conditional_losses_3156248
J__inference_lstm_cell_521_layer_call_and_return_conditional_losses_3156280?
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
"__inference__wrapped_model_3150951-./012345!";?8
1?.
,?)
lstm_258_input?????????
? "3?0
.
dense_86"?
dense_86??????????
E__inference_dense_86_layer_call_and_return_conditional_losses_3155986\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_86_layer_call_fn_3155976O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_258_layer_call_and_return_conditional_losses_3154306?-./O?L
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
E__inference_lstm_258_layer_call_and_return_conditional_losses_3154449?-./O?L
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
E__inference_lstm_258_layer_call_and_return_conditional_losses_3154592q-./??<
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
E__inference_lstm_258_layer_call_and_return_conditional_losses_3154735q-./??<
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
*__inference_lstm_258_layer_call_fn_3154130}-./O?L
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
*__inference_lstm_258_layer_call_fn_3154141}-./O?L
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
*__inference_lstm_258_layer_call_fn_3154152d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_258_layer_call_fn_3154163d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_259_layer_call_and_return_conditional_losses_3154922?012O?L
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
E__inference_lstm_259_layer_call_and_return_conditional_losses_3155065?012O?L
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
E__inference_lstm_259_layer_call_and_return_conditional_losses_3155208q012??<
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
E__inference_lstm_259_layer_call_and_return_conditional_losses_3155351q012??<
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
*__inference_lstm_259_layer_call_fn_3154746}012O?L
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
*__inference_lstm_259_layer_call_fn_3154757}012O?L
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
*__inference_lstm_259_layer_call_fn_3154768d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_259_layer_call_fn_3154779d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_260_layer_call_and_return_conditional_losses_3155538}345O?L
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
E__inference_lstm_260_layer_call_and_return_conditional_losses_3155681}345O?L
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
E__inference_lstm_260_layer_call_and_return_conditional_losses_3155824m345??<
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
E__inference_lstm_260_layer_call_and_return_conditional_losses_3155967m345??<
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
*__inference_lstm_260_layer_call_fn_3155362p345O?L
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
*__inference_lstm_260_layer_call_fn_3155373p345O?L
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
*__inference_lstm_260_layer_call_fn_3155384`345??<
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
*__inference_lstm_260_layer_call_fn_3155395`345??<
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
J__inference_lstm_cell_519_layer_call_and_return_conditional_losses_3156052?-./??}
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
J__inference_lstm_cell_519_layer_call_and_return_conditional_losses_3156084?-./??}
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
/__inference_lstm_cell_519_layer_call_fn_3156003?-./??}
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
/__inference_lstm_cell_519_layer_call_fn_3156020?-./??}
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
J__inference_lstm_cell_520_layer_call_and_return_conditional_losses_3156150?012??}
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
J__inference_lstm_cell_520_layer_call_and_return_conditional_losses_3156182?012??}
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
/__inference_lstm_cell_520_layer_call_fn_3156101?012??}
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
/__inference_lstm_cell_520_layer_call_fn_3156118?012??}
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
J__inference_lstm_cell_521_layer_call_and_return_conditional_losses_3156248?345??}
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
J__inference_lstm_cell_521_layer_call_and_return_conditional_losses_3156280?345??}
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
/__inference_lstm_cell_521_layer_call_fn_3156199?345??}
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
/__inference_lstm_cell_521_layer_call_fn_3156216?345??}
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
J__inference_sequential_86_layer_call_and_return_conditional_losses_3153146y-./012345!"C?@
9?6
,?)
lstm_258_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_86_layer_call_and_return_conditional_losses_3153176y-./012345!"C?@
9?6
,?)
lstm_258_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_86_layer_call_and_return_conditional_losses_3153692q-./012345!";?8
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
J__inference_sequential_86_layer_call_and_return_conditional_losses_3154119q-./012345!";?8
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
/__inference_sequential_86_layer_call_fn_3152500l-./012345!"C?@
9?6
,?)
lstm_258_input?????????
p 

 
? "???????????
/__inference_sequential_86_layer_call_fn_3153116l-./012345!"C?@
9?6
,?)
lstm_258_input?????????
p

 
? "???????????
/__inference_sequential_86_layer_call_fn_3153238d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_86_layer_call_fn_3153265d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3153211?-./012345!"M?J
? 
C?@
>
lstm_258_input,?)
lstm_258_input?????????"3?0
.
dense_86"?
dense_86?????????