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
dense_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_45/kernel
s
#dense_45/kernel/Read/ReadVariableOpReadVariableOpdense_45/kernel*
_output_shapes

:
*
dtype0
r
dense_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_45/bias
k
!dense_45/bias/Read/ReadVariableOpReadVariableOpdense_45/bias*
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
lstm_135/lstm_cell_135/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_135/lstm_cell_135/kernel
?
1lstm_135/lstm_cell_135/kernel/Read/ReadVariableOpReadVariableOplstm_135/lstm_cell_135/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_135/lstm_cell_135/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_135/lstm_cell_135/recurrent_kernel
?
;lstm_135/lstm_cell_135/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_135/lstm_cell_135/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_135/lstm_cell_135/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_135/lstm_cell_135/bias
?
/lstm_135/lstm_cell_135/bias/Read/ReadVariableOpReadVariableOplstm_135/lstm_cell_135/bias*
_output_shapes	
:?*
dtype0
?
lstm_136/lstm_cell_136/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_136/lstm_cell_136/kernel
?
1lstm_136/lstm_cell_136/kernel/Read/ReadVariableOpReadVariableOplstm_136/lstm_cell_136/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_136/lstm_cell_136/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_136/lstm_cell_136/recurrent_kernel
?
;lstm_136/lstm_cell_136/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_136/lstm_cell_136/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_136/lstm_cell_136/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_136/lstm_cell_136/bias
?
/lstm_136/lstm_cell_136/bias/Read/ReadVariableOpReadVariableOplstm_136/lstm_cell_136/bias*
_output_shapes	
:?*
dtype0
?
lstm_137/lstm_cell_137/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_137/lstm_cell_137/kernel
?
1lstm_137/lstm_cell_137/kernel/Read/ReadVariableOpReadVariableOplstm_137/lstm_cell_137/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_137/lstm_cell_137/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_137/lstm_cell_137/recurrent_kernel
?
;lstm_137/lstm_cell_137/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_137/lstm_cell_137/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_137/lstm_cell_137/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_137/lstm_cell_137/bias
?
/lstm_137/lstm_cell_137/bias/Read/ReadVariableOpReadVariableOplstm_137/lstm_cell_137/bias*
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
Adam/dense_45/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_45/kernel/m
?
*Adam/dense_45/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_45/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_45/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_45/bias/m
y
(Adam/dense_45/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_45/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_135/lstm_cell_135/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_135/lstm_cell_135/kernel/m
?
8Adam/lstm_135/lstm_cell_135/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_135/lstm_cell_135/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_135/lstm_cell_135/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_135/lstm_cell_135/recurrent_kernel/m
?
BAdam/lstm_135/lstm_cell_135/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_135/lstm_cell_135/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_135/lstm_cell_135/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_135/lstm_cell_135/bias/m
?
6Adam/lstm_135/lstm_cell_135/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_135/lstm_cell_135/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_136/lstm_cell_136/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_136/lstm_cell_136/kernel/m
?
8Adam/lstm_136/lstm_cell_136/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_136/lstm_cell_136/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_136/lstm_cell_136/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_136/lstm_cell_136/recurrent_kernel/m
?
BAdam/lstm_136/lstm_cell_136/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_136/lstm_cell_136/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_136/lstm_cell_136/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_136/lstm_cell_136/bias/m
?
6Adam/lstm_136/lstm_cell_136/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_136/lstm_cell_136/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_137/lstm_cell_137/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_137/lstm_cell_137/kernel/m
?
8Adam/lstm_137/lstm_cell_137/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_137/lstm_cell_137/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_137/lstm_cell_137/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_137/lstm_cell_137/recurrent_kernel/m
?
BAdam/lstm_137/lstm_cell_137/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_137/lstm_cell_137/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_137/lstm_cell_137/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_137/lstm_cell_137/bias/m
?
6Adam/lstm_137/lstm_cell_137/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_137/lstm_cell_137/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_45/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_45/kernel/v
?
*Adam/dense_45/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_45/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_45/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_45/bias/v
y
(Adam/dense_45/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_45/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_135/lstm_cell_135/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_135/lstm_cell_135/kernel/v
?
8Adam/lstm_135/lstm_cell_135/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_135/lstm_cell_135/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_135/lstm_cell_135/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_135/lstm_cell_135/recurrent_kernel/v
?
BAdam/lstm_135/lstm_cell_135/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_135/lstm_cell_135/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_135/lstm_cell_135/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_135/lstm_cell_135/bias/v
?
6Adam/lstm_135/lstm_cell_135/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_135/lstm_cell_135/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_136/lstm_cell_136/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_136/lstm_cell_136/kernel/v
?
8Adam/lstm_136/lstm_cell_136/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_136/lstm_cell_136/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_136/lstm_cell_136/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_136/lstm_cell_136/recurrent_kernel/v
?
BAdam/lstm_136/lstm_cell_136/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_136/lstm_cell_136/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_136/lstm_cell_136/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_136/lstm_cell_136/bias/v
?
6Adam/lstm_136/lstm_cell_136/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_136/lstm_cell_136/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_137/lstm_cell_137/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_137/lstm_cell_137/kernel/v
?
8Adam/lstm_137/lstm_cell_137/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_137/lstm_cell_137/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_137/lstm_cell_137/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_137/lstm_cell_137/recurrent_kernel/v
?
BAdam/lstm_137/lstm_cell_137/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_137/lstm_cell_137/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_137/lstm_cell_137/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_137/lstm_cell_137/bias/v
?
6Adam/lstm_137/lstm_cell_137/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_137/lstm_cell_137/bias/v*
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
VARIABLE_VALUEdense_45/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_45/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_135/lstm_cell_135/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_135/lstm_cell_135/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_135/lstm_cell_135/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_136/lstm_cell_136/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_136/lstm_cell_136/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_136/lstm_cell_136/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_137/lstm_cell_137/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_137/lstm_cell_137/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_137/lstm_cell_137/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_45/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_45/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_135/lstm_cell_135/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_135/lstm_cell_135/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_135/lstm_cell_135/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_136/lstm_cell_136/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_136/lstm_cell_136/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_136/lstm_cell_136/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_137/lstm_cell_137/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_137/lstm_cell_137/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_137/lstm_cell_137/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_45/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_45/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_135/lstm_cell_135/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_135/lstm_cell_135/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_135/lstm_cell_135/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_136/lstm_cell_136/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_136/lstm_cell_136/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_136/lstm_cell_136/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_137/lstm_cell_137/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_137/lstm_cell_137/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_137/lstm_cell_137/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_135_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_135_inputlstm_135/lstm_cell_135/kernel'lstm_135/lstm_cell_135/recurrent_kernellstm_135/lstm_cell_135/biaslstm_136/lstm_cell_136/kernel'lstm_136/lstm_cell_136/recurrent_kernellstm_136/lstm_cell_136/biaslstm_137/lstm_cell_137/kernel'lstm_137/lstm_cell_137/recurrent_kernellstm_137/lstm_cell_137/biasdense_45/kerneldense_45/bias*
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
%__inference_signature_wrapper_1248289
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_45/kernel/Read/ReadVariableOp!dense_45/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_135/lstm_cell_135/kernel/Read/ReadVariableOp;lstm_135/lstm_cell_135/recurrent_kernel/Read/ReadVariableOp/lstm_135/lstm_cell_135/bias/Read/ReadVariableOp1lstm_136/lstm_cell_136/kernel/Read/ReadVariableOp;lstm_136/lstm_cell_136/recurrent_kernel/Read/ReadVariableOp/lstm_136/lstm_cell_136/bias/Read/ReadVariableOp1lstm_137/lstm_cell_137/kernel/Read/ReadVariableOp;lstm_137/lstm_cell_137/recurrent_kernel/Read/ReadVariableOp/lstm_137/lstm_cell_137/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_45/kernel/m/Read/ReadVariableOp(Adam/dense_45/bias/m/Read/ReadVariableOp8Adam/lstm_135/lstm_cell_135/kernel/m/Read/ReadVariableOpBAdam/lstm_135/lstm_cell_135/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_135/lstm_cell_135/bias/m/Read/ReadVariableOp8Adam/lstm_136/lstm_cell_136/kernel/m/Read/ReadVariableOpBAdam/lstm_136/lstm_cell_136/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_136/lstm_cell_136/bias/m/Read/ReadVariableOp8Adam/lstm_137/lstm_cell_137/kernel/m/Read/ReadVariableOpBAdam/lstm_137/lstm_cell_137/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_137/lstm_cell_137/bias/m/Read/ReadVariableOp*Adam/dense_45/kernel/v/Read/ReadVariableOp(Adam/dense_45/bias/v/Read/ReadVariableOp8Adam/lstm_135/lstm_cell_135/kernel/v/Read/ReadVariableOpBAdam/lstm_135/lstm_cell_135/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_135/lstm_cell_135/bias/v/Read/ReadVariableOp8Adam/lstm_136/lstm_cell_136/kernel/v/Read/ReadVariableOpBAdam/lstm_136/lstm_cell_136/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_136/lstm_cell_136/bias/v/Read/ReadVariableOp8Adam/lstm_137/lstm_cell_137/kernel/v/Read/ReadVariableOpBAdam/lstm_137/lstm_cell_137/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_137/lstm_cell_137/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1251501
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_45/kerneldense_45/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_135/lstm_cell_135/kernel'lstm_135/lstm_cell_135/recurrent_kernellstm_135/lstm_cell_135/biaslstm_136/lstm_cell_136/kernel'lstm_136/lstm_cell_136/recurrent_kernellstm_136/lstm_cell_136/biaslstm_137/lstm_cell_137/kernel'lstm_137/lstm_cell_137/recurrent_kernellstm_137/lstm_cell_137/biastotalcountAdam/dense_45/kernel/mAdam/dense_45/bias/m$Adam/lstm_135/lstm_cell_135/kernel/m.Adam/lstm_135/lstm_cell_135/recurrent_kernel/m"Adam/lstm_135/lstm_cell_135/bias/m$Adam/lstm_136/lstm_cell_136/kernel/m.Adam/lstm_136/lstm_cell_136/recurrent_kernel/m"Adam/lstm_136/lstm_cell_136/bias/m$Adam/lstm_137/lstm_cell_137/kernel/m.Adam/lstm_137/lstm_cell_137/recurrent_kernel/m"Adam/lstm_137/lstm_cell_137/bias/mAdam/dense_45/kernel/vAdam/dense_45/bias/v$Adam/lstm_135/lstm_cell_135/kernel/v.Adam/lstm_135/lstm_cell_135/recurrent_kernel/v"Adam/lstm_135/lstm_cell_135/bias/v$Adam/lstm_136/lstm_cell_136/kernel/v.Adam/lstm_136/lstm_cell_136/recurrent_kernel/v"Adam/lstm_136/lstm_cell_136/bias/v$Adam/lstm_137/lstm_cell_137/kernel/v.Adam/lstm_137/lstm_cell_137/recurrent_kernel/v"Adam/lstm_137/lstm_cell_137/bias/v*4
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
#__inference__traced_restore_1251631??+
?	
?
E__inference_dense_45_layer_call_and_return_conditional_losses_1251064

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
J__inference_lstm_cell_204_layer_call_and_return_conditional_losses_1246242

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
while_body_1249729
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_204_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_204_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_204_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_204_matmul_readvariableop_resource:	?G
4while_lstm_cell_204_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_204_biasadd_readvariableop_resource:	???*while/lstm_cell_204/BiasAdd/ReadVariableOp?)while/lstm_cell_204/MatMul/ReadVariableOp?+while/lstm_cell_204/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_204/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_204_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_204/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_204_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_204/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_204/addAddV2$while/lstm_cell_204/MatMul:product:0&while/lstm_cell_204/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_204_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_204/BiasAddBiasAddwhile/lstm_cell_204/add:z:02while/lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_204/splitSplit,while/lstm_cell_204/split/split_dim:output:0$while/lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_204/SigmoidSigmoid"while/lstm_cell_204/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_204/Sigmoid_1Sigmoid"while/lstm_cell_204/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_204/mulMul!while/lstm_cell_204/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_204/ReluRelu"while/lstm_cell_204/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_204/mul_1Mulwhile/lstm_cell_204/Sigmoid:y:0&while/lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_204/add_1AddV2while/lstm_cell_204/mul:z:0while/lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_204/Sigmoid_2Sigmoid"while/lstm_cell_204/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_204/Relu_1Reluwhile/lstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_204/mul_2Mul!while/lstm_cell_204/Sigmoid_2:y:0(while/lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_204/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_204/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_204/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_204/BiasAdd/ReadVariableOp*^while/lstm_cell_204/MatMul/ReadVariableOp,^while/lstm_cell_204/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_204_biasadd_readvariableop_resource5while_lstm_cell_204_biasadd_readvariableop_resource_0"n
4while_lstm_cell_204_matmul_1_readvariableop_resource6while_lstm_cell_204_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_204_matmul_readvariableop_resource4while_lstm_cell_204_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_204/BiasAdd/ReadVariableOp*while/lstm_cell_204/BiasAdd/ReadVariableOp2V
)while/lstm_cell_204/MatMul/ReadVariableOp)while/lstm_cell_204/MatMul/ReadVariableOp2Z
+while/lstm_cell_204/MatMul_1/ReadVariableOp+while/lstm_cell_204/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
#__inference__traced_restore_1251631
file_prefix2
 assignvariableop_dense_45_kernel:
.
 assignvariableop_1_dense_45_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_135_lstm_cell_135_kernel:	?M
:assignvariableop_8_lstm_135_lstm_cell_135_recurrent_kernel:	d?=
.assignvariableop_9_lstm_135_lstm_cell_135_bias:	?D
1assignvariableop_10_lstm_136_lstm_cell_136_kernel:	d?N
;assignvariableop_11_lstm_136_lstm_cell_136_recurrent_kernel:	2?>
/assignvariableop_12_lstm_136_lstm_cell_136_bias:	?C
1assignvariableop_13_lstm_137_lstm_cell_137_kernel:2(M
;assignvariableop_14_lstm_137_lstm_cell_137_recurrent_kernel:
(=
/assignvariableop_15_lstm_137_lstm_cell_137_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_45_kernel_m:
6
(assignvariableop_19_adam_dense_45_bias_m:K
8assignvariableop_20_adam_lstm_135_lstm_cell_135_kernel_m:	?U
Bassignvariableop_21_adam_lstm_135_lstm_cell_135_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_135_lstm_cell_135_bias_m:	?K
8assignvariableop_23_adam_lstm_136_lstm_cell_136_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_136_lstm_cell_136_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_136_lstm_cell_136_bias_m:	?J
8assignvariableop_26_adam_lstm_137_lstm_cell_137_kernel_m:2(T
Bassignvariableop_27_adam_lstm_137_lstm_cell_137_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_137_lstm_cell_137_bias_m:(<
*assignvariableop_29_adam_dense_45_kernel_v:
6
(assignvariableop_30_adam_dense_45_bias_v:K
8assignvariableop_31_adam_lstm_135_lstm_cell_135_kernel_v:	?U
Bassignvariableop_32_adam_lstm_135_lstm_cell_135_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_135_lstm_cell_135_bias_v:	?K
8assignvariableop_34_adam_lstm_136_lstm_cell_136_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_136_lstm_cell_136_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_136_lstm_cell_136_bias_v:	?J
8assignvariableop_37_adam_lstm_137_lstm_cell_137_kernel_v:2(T
Bassignvariableop_38_adam_lstm_137_lstm_cell_137_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_137_lstm_cell_137_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_45_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_45_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_135_lstm_cell_135_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_135_lstm_cell_135_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_135_lstm_cell_135_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_136_lstm_cell_136_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_136_lstm_cell_136_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_136_lstm_cell_136_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_137_lstm_cell_137_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_137_lstm_cell_137_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_137_lstm_cell_137_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_45_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_45_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_135_lstm_cell_135_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_135_lstm_cell_135_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_135_lstm_cell_135_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_136_lstm_cell_136_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_136_lstm_cell_136_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_136_lstm_cell_136_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_137_lstm_cell_137_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_137_lstm_cell_137_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_137_lstm_cell_137_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_45_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_45_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_135_lstm_cell_135_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_135_lstm_cell_135_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_135_lstm_cell_135_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_136_lstm_cell_136_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_136_lstm_cell_136_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_136_lstm_cell_136_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_137_lstm_cell_137_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_137_lstm_cell_137_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_137_lstm_cell_137_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_1249585
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1249585___redundant_placeholder05
1while_while_cond_1249585___redundant_placeholder15
1while_while_cond_1249585___redundant_placeholder25
1while_while_cond_1249585___redundant_placeholder3
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
while_cond_1247659
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1247659___redundant_placeholder05
1while_while_cond_1247659___redundant_placeholder15
1while_while_cond_1247659___redundant_placeholder25
1while_while_cond_1247659___redundant_placeholder3
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
lstm_135_while_cond_1248401.
*lstm_135_while_lstm_135_while_loop_counter4
0lstm_135_while_lstm_135_while_maximum_iterations
lstm_135_while_placeholder 
lstm_135_while_placeholder_1 
lstm_135_while_placeholder_2 
lstm_135_while_placeholder_30
,lstm_135_while_less_lstm_135_strided_slice_1G
Clstm_135_while_lstm_135_while_cond_1248401___redundant_placeholder0G
Clstm_135_while_lstm_135_while_cond_1248401___redundant_placeholder1G
Clstm_135_while_lstm_135_while_cond_1248401___redundant_placeholder2G
Clstm_135_while_lstm_135_while_cond_1248401___redundant_placeholder3
lstm_135_while_identity
?
lstm_135/while/LessLesslstm_135_while_placeholder,lstm_135_while_less_lstm_135_strided_slice_1*
T0*
_output_shapes
: ]
lstm_135/while/IdentityIdentitylstm_135/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_135_while_identity lstm_135/while/Identity:output:0*(
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
while_body_1249443
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_204_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_204_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_204_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_204_matmul_readvariableop_resource:	?G
4while_lstm_cell_204_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_204_biasadd_readvariableop_resource:	???*while/lstm_cell_204/BiasAdd/ReadVariableOp?)while/lstm_cell_204/MatMul/ReadVariableOp?+while/lstm_cell_204/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_204/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_204_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_204/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_204_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_204/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_204/addAddV2$while/lstm_cell_204/MatMul:product:0&while/lstm_cell_204/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_204_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_204/BiasAddBiasAddwhile/lstm_cell_204/add:z:02while/lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_204/splitSplit,while/lstm_cell_204/split/split_dim:output:0$while/lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_204/SigmoidSigmoid"while/lstm_cell_204/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_204/Sigmoid_1Sigmoid"while/lstm_cell_204/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_204/mulMul!while/lstm_cell_204/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_204/ReluRelu"while/lstm_cell_204/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_204/mul_1Mulwhile/lstm_cell_204/Sigmoid:y:0&while/lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_204/add_1AddV2while/lstm_cell_204/mul:z:0while/lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_204/Sigmoid_2Sigmoid"while/lstm_cell_204/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_204/Relu_1Reluwhile/lstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_204/mul_2Mul!while/lstm_cell_204/Sigmoid_2:y:0(while/lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_204/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_204/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_204/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_204/BiasAdd/ReadVariableOp*^while/lstm_cell_204/MatMul/ReadVariableOp,^while/lstm_cell_204/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_204_biasadd_readvariableop_resource5while_lstm_cell_204_biasadd_readvariableop_resource_0"n
4while_lstm_cell_204_matmul_1_readvariableop_resource6while_lstm_cell_204_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_204_matmul_readvariableop_resource4while_lstm_cell_204_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_204/BiasAdd/ReadVariableOp*while/lstm_cell_204/BiasAdd/ReadVariableOp2V
)while/lstm_cell_204/MatMul/ReadVariableOp)while/lstm_cell_204/MatMul/ReadVariableOp2Z
+while/lstm_cell_204/MatMul_1/ReadVariableOp+while/lstm_cell_204/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_135_layer_call_and_return_conditional_losses_1246179

inputs(
lstm_cell_204_1246097:	?(
lstm_cell_204_1246099:	d?$
lstm_cell_204_1246101:	?
identity??%lstm_cell_204/StatefulPartitionedCall?while;
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
%lstm_cell_204/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_204_1246097lstm_cell_204_1246099lstm_cell_204_1246101*
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
J__inference_lstm_cell_204_layer_call_and_return_conditional_losses_1246096n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_204_1246097lstm_cell_204_1246099lstm_cell_204_1246101*
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
while_body_1246110*
condR
while_cond_1246109*K
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
NoOpNoOp&^lstm_cell_204/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_204/StatefulPartitionedCall%lstm_cell_204/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_1246809
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1246809___redundant_placeholder05
1while_while_cond_1246809___redundant_placeholder15
1while_while_cond_1246809___redundant_placeholder25
1while_while_cond_1246809___redundant_placeholder3
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
while_body_1246810
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_206_1246834_0:2(/
while_lstm_cell_206_1246836_0:
(+
while_lstm_cell_206_1246838_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_206_1246834:2(-
while_lstm_cell_206_1246836:
()
while_lstm_cell_206_1246838:(??+while/lstm_cell_206/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_206/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_206_1246834_0while_lstm_cell_206_1246836_0while_lstm_cell_206_1246838_0*
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
J__inference_lstm_cell_206_layer_call_and_return_conditional_losses_1246796?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_206/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_206/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_206/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_206/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_206_1246834while_lstm_cell_206_1246834_0"<
while_lstm_cell_206_1246836while_lstm_cell_206_1246836_0"<
while_lstm_cell_206_1246838while_lstm_cell_206_1246838_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_206/StatefulPartitionedCall+while/lstm_cell_206/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_45_layer_call_and_return_conditional_losses_1248142

inputs#
lstm_135_1248115:	?#
lstm_135_1248117:	d?
lstm_135_1248119:	?#
lstm_136_1248122:	d?#
lstm_136_1248124:	2?
lstm_136_1248126:	?"
lstm_137_1248129:2("
lstm_137_1248131:
(
lstm_137_1248133:("
dense_45_1248136:

dense_45_1248138:
identity?? dense_45/StatefulPartitionedCall? lstm_135/StatefulPartitionedCall? lstm_136/StatefulPartitionedCall? lstm_137/StatefulPartitionedCall?
 lstm_135/StatefulPartitionedCallStatefulPartitionedCallinputslstm_135_1248115lstm_135_1248117lstm_135_1248119*
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
E__inference_lstm_135_layer_call_and_return_conditional_losses_1248074?
 lstm_136/StatefulPartitionedCallStatefulPartitionedCall)lstm_135/StatefulPartitionedCall:output:0lstm_136_1248122lstm_136_1248124lstm_136_1248126*
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
E__inference_lstm_136_layer_call_and_return_conditional_losses_1247909?
 lstm_137/StatefulPartitionedCallStatefulPartitionedCall)lstm_136/StatefulPartitionedCall:output:0lstm_137_1248129lstm_137_1248131lstm_137_1248133*
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
E__inference_lstm_137_layer_call_and_return_conditional_losses_1247744?
 dense_45/StatefulPartitionedCallStatefulPartitionedCall)lstm_137/StatefulPartitionedCall:output:0dense_45_1248136dense_45_1248138*
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
E__inference_dense_45_layer_call_and_return_conditional_losses_1247546x
IdentityIdentity)dense_45/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_45/StatefulPartitionedCall!^lstm_135/StatefulPartitionedCall!^lstm_136/StatefulPartitionedCall!^lstm_137/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2D
 lstm_135/StatefulPartitionedCall lstm_135/StatefulPartitionedCall2D
 lstm_136/StatefulPartitionedCall lstm_136/StatefulPartitionedCall2D
 lstm_137/StatefulPartitionedCall lstm_137/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_136_layer_call_and_return_conditional_losses_1246529

inputs(
lstm_cell_205_1246447:	d?(
lstm_cell_205_1246449:	2?$
lstm_cell_205_1246451:	?
identity??%lstm_cell_205/StatefulPartitionedCall?while;
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
%lstm_cell_205/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_205_1246447lstm_cell_205_1246449lstm_cell_205_1246451*
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
J__inference_lstm_cell_205_layer_call_and_return_conditional_losses_1246446n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_205_1246447lstm_cell_205_1246449lstm_cell_205_1246451*
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
while_body_1246460*
condR
while_cond_1246459*K
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
NoOpNoOp&^lstm_cell_205/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_205/StatefulPartitionedCall%lstm_cell_205/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?K
?
E__inference_lstm_137_layer_call_and_return_conditional_losses_1250759
inputs_0>
,lstm_cell_206_matmul_readvariableop_resource:2(@
.lstm_cell_206_matmul_1_readvariableop_resource:
(;
-lstm_cell_206_biasadd_readvariableop_resource:(
identity??$lstm_cell_206/BiasAdd/ReadVariableOp?#lstm_cell_206/MatMul/ReadVariableOp?%lstm_cell_206/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_206/MatMul/ReadVariableOpReadVariableOp,lstm_cell_206_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_206/MatMulMatMulstrided_slice_2:output:0+lstm_cell_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_206/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_206_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_206/MatMul_1MatMulzeros:output:0-lstm_cell_206/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_206/addAddV2lstm_cell_206/MatMul:product:0 lstm_cell_206/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_206/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_206_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_206/BiasAddBiasAddlstm_cell_206/add:z:0,lstm_cell_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_206/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_206/splitSplit&lstm_cell_206/split/split_dim:output:0lstm_cell_206/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_206/SigmoidSigmoidlstm_cell_206/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_206/Sigmoid_1Sigmoidlstm_cell_206/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_206/mulMullstm_cell_206/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_206/ReluRelulstm_cell_206/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_206/mul_1Mullstm_cell_206/Sigmoid:y:0 lstm_cell_206/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_206/add_1AddV2lstm_cell_206/mul:z:0lstm_cell_206/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_206/Sigmoid_2Sigmoidlstm_cell_206/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_206/Relu_1Relulstm_cell_206/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_206/mul_2Mullstm_cell_206/Sigmoid_2:y:0"lstm_cell_206/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_206_matmul_readvariableop_resource.lstm_cell_206_matmul_1_readvariableop_resource-lstm_cell_206_biasadd_readvariableop_resource*
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
while_body_1250675*
condR
while_cond_1250674*K
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
NoOpNoOp%^lstm_cell_206/BiasAdd/ReadVariableOp$^lstm_cell_206/MatMul/ReadVariableOp&^lstm_cell_206/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_206/BiasAdd/ReadVariableOp$lstm_cell_206/BiasAdd/ReadVariableOp2J
#lstm_cell_206/MatMul/ReadVariableOp#lstm_cell_206/MatMul/ReadVariableOp2N
%lstm_cell_206/MatMul_1/ReadVariableOp%lstm_cell_206/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_137_layer_call_fn_1250462

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
E__inference_lstm_137_layer_call_and_return_conditional_losses_1247528o
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
while_body_1250675
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_206_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_206_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_206_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_206_matmul_readvariableop_resource:2(F
4while_lstm_cell_206_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_206_biasadd_readvariableop_resource:(??*while/lstm_cell_206/BiasAdd/ReadVariableOp?)while/lstm_cell_206/MatMul/ReadVariableOp?+while/lstm_cell_206/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_206/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_206_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_206/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_206/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_206_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_206/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_206/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_206/addAddV2$while/lstm_cell_206/MatMul:product:0&while/lstm_cell_206/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_206/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_206_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_206/BiasAddBiasAddwhile/lstm_cell_206/add:z:02while/lstm_cell_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_206/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_206/splitSplit,while/lstm_cell_206/split/split_dim:output:0$while/lstm_cell_206/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_206/SigmoidSigmoid"while/lstm_cell_206/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_206/Sigmoid_1Sigmoid"while/lstm_cell_206/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_206/mulMul!while/lstm_cell_206/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_206/ReluRelu"while/lstm_cell_206/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_206/mul_1Mulwhile/lstm_cell_206/Sigmoid:y:0&while/lstm_cell_206/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_206/add_1AddV2while/lstm_cell_206/mul:z:0while/lstm_cell_206/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_206/Sigmoid_2Sigmoid"while/lstm_cell_206/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_206/Relu_1Reluwhile/lstm_cell_206/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_206/mul_2Mul!while/lstm_cell_206/Sigmoid_2:y:0(while/lstm_cell_206/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_206/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_206/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_206/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_206/BiasAdd/ReadVariableOp*^while/lstm_cell_206/MatMul/ReadVariableOp,^while/lstm_cell_206/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_206_biasadd_readvariableop_resource5while_lstm_cell_206_biasadd_readvariableop_resource_0"n
4while_lstm_cell_206_matmul_1_readvariableop_resource6while_lstm_cell_206_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_206_matmul_readvariableop_resource4while_lstm_cell_206_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_206/BiasAdd/ReadVariableOp*while/lstm_cell_206/BiasAdd/ReadVariableOp2V
)while/lstm_cell_206/MatMul/ReadVariableOp)while/lstm_cell_206/MatMul/ReadVariableOp2Z
+while/lstm_cell_206/MatMul_1/ReadVariableOp+while/lstm_cell_206/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1249586
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_204_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_204_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_204_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_204_matmul_readvariableop_resource:	?G
4while_lstm_cell_204_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_204_biasadd_readvariableop_resource:	???*while/lstm_cell_204/BiasAdd/ReadVariableOp?)while/lstm_cell_204/MatMul/ReadVariableOp?+while/lstm_cell_204/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_204/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_204_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_204/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_204_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_204/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_204/addAddV2$while/lstm_cell_204/MatMul:product:0&while/lstm_cell_204/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_204_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_204/BiasAddBiasAddwhile/lstm_cell_204/add:z:02while/lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_204/splitSplit,while/lstm_cell_204/split/split_dim:output:0$while/lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_204/SigmoidSigmoid"while/lstm_cell_204/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_204/Sigmoid_1Sigmoid"while/lstm_cell_204/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_204/mulMul!while/lstm_cell_204/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_204/ReluRelu"while/lstm_cell_204/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_204/mul_1Mulwhile/lstm_cell_204/Sigmoid:y:0&while/lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_204/add_1AddV2while/lstm_cell_204/mul:z:0while/lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_204/Sigmoid_2Sigmoid"while/lstm_cell_204/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_204/Relu_1Reluwhile/lstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_204/mul_2Mul!while/lstm_cell_204/Sigmoid_2:y:0(while/lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_204/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_204/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_204/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_204/BiasAdd/ReadVariableOp*^while/lstm_cell_204/MatMul/ReadVariableOp,^while/lstm_cell_204/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_204_biasadd_readvariableop_resource5while_lstm_cell_204_biasadd_readvariableop_resource_0"n
4while_lstm_cell_204_matmul_1_readvariableop_resource6while_lstm_cell_204_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_204_matmul_readvariableop_resource4while_lstm_cell_204_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_204/BiasAdd/ReadVariableOp*while/lstm_cell_204/BiasAdd/ReadVariableOp2V
)while/lstm_cell_204/MatMul/ReadVariableOp)while/lstm_cell_204/MatMul/ReadVariableOp2Z
+while/lstm_cell_204/MatMul_1/ReadVariableOp+while/lstm_cell_204/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1250961
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_206_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_206_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_206_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_206_matmul_readvariableop_resource:2(F
4while_lstm_cell_206_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_206_biasadd_readvariableop_resource:(??*while/lstm_cell_206/BiasAdd/ReadVariableOp?)while/lstm_cell_206/MatMul/ReadVariableOp?+while/lstm_cell_206/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_206/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_206_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_206/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_206/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_206_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_206/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_206/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_206/addAddV2$while/lstm_cell_206/MatMul:product:0&while/lstm_cell_206/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_206/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_206_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_206/BiasAddBiasAddwhile/lstm_cell_206/add:z:02while/lstm_cell_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_206/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_206/splitSplit,while/lstm_cell_206/split/split_dim:output:0$while/lstm_cell_206/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_206/SigmoidSigmoid"while/lstm_cell_206/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_206/Sigmoid_1Sigmoid"while/lstm_cell_206/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_206/mulMul!while/lstm_cell_206/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_206/ReluRelu"while/lstm_cell_206/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_206/mul_1Mulwhile/lstm_cell_206/Sigmoid:y:0&while/lstm_cell_206/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_206/add_1AddV2while/lstm_cell_206/mul:z:0while/lstm_cell_206/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_206/Sigmoid_2Sigmoid"while/lstm_cell_206/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_206/Relu_1Reluwhile/lstm_cell_206/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_206/mul_2Mul!while/lstm_cell_206/Sigmoid_2:y:0(while/lstm_cell_206/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_206/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_206/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_206/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_206/BiasAdd/ReadVariableOp*^while/lstm_cell_206/MatMul/ReadVariableOp,^while/lstm_cell_206/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_206_biasadd_readvariableop_resource5while_lstm_cell_206_biasadd_readvariableop_resource_0"n
4while_lstm_cell_206_matmul_1_readvariableop_resource6while_lstm_cell_206_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_206_matmul_readvariableop_resource4while_lstm_cell_206_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_206/BiasAdd/ReadVariableOp*while/lstm_cell_206/BiasAdd/ReadVariableOp2V
)while/lstm_cell_206/MatMul/ReadVariableOp)while/lstm_cell_206/MatMul/ReadVariableOp2Z
+while/lstm_cell_206/MatMul_1/ReadVariableOp+while/lstm_cell_206/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_135_while_body_1248829.
*lstm_135_while_lstm_135_while_loop_counter4
0lstm_135_while_lstm_135_while_maximum_iterations
lstm_135_while_placeholder 
lstm_135_while_placeholder_1 
lstm_135_while_placeholder_2 
lstm_135_while_placeholder_3-
)lstm_135_while_lstm_135_strided_slice_1_0i
elstm_135_while_tensorarrayv2read_tensorlistgetitem_lstm_135_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_135_while_lstm_cell_204_matmul_readvariableop_resource_0:	?R
?lstm_135_while_lstm_cell_204_matmul_1_readvariableop_resource_0:	d?M
>lstm_135_while_lstm_cell_204_biasadd_readvariableop_resource_0:	?
lstm_135_while_identity
lstm_135_while_identity_1
lstm_135_while_identity_2
lstm_135_while_identity_3
lstm_135_while_identity_4
lstm_135_while_identity_5+
'lstm_135_while_lstm_135_strided_slice_1g
clstm_135_while_tensorarrayv2read_tensorlistgetitem_lstm_135_tensorarrayunstack_tensorlistfromtensorN
;lstm_135_while_lstm_cell_204_matmul_readvariableop_resource:	?P
=lstm_135_while_lstm_cell_204_matmul_1_readvariableop_resource:	d?K
<lstm_135_while_lstm_cell_204_biasadd_readvariableop_resource:	???3lstm_135/while/lstm_cell_204/BiasAdd/ReadVariableOp?2lstm_135/while/lstm_cell_204/MatMul/ReadVariableOp?4lstm_135/while/lstm_cell_204/MatMul_1/ReadVariableOp?
@lstm_135/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_135/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_135_while_tensorarrayv2read_tensorlistgetitem_lstm_135_tensorarrayunstack_tensorlistfromtensor_0lstm_135_while_placeholderIlstm_135/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_135/while/lstm_cell_204/MatMul/ReadVariableOpReadVariableOp=lstm_135_while_lstm_cell_204_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_135/while/lstm_cell_204/MatMulMatMul9lstm_135/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_135/while/lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_135/while/lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp?lstm_135_while_lstm_cell_204_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_135/while/lstm_cell_204/MatMul_1MatMullstm_135_while_placeholder_2<lstm_135/while/lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_135/while/lstm_cell_204/addAddV2-lstm_135/while/lstm_cell_204/MatMul:product:0/lstm_135/while/lstm_cell_204/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_135/while/lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp>lstm_135_while_lstm_cell_204_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_135/while/lstm_cell_204/BiasAddBiasAdd$lstm_135/while/lstm_cell_204/add:z:0;lstm_135/while/lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_135/while/lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_135/while/lstm_cell_204/splitSplit5lstm_135/while/lstm_cell_204/split/split_dim:output:0-lstm_135/while/lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_135/while/lstm_cell_204/SigmoidSigmoid+lstm_135/while/lstm_cell_204/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_135/while/lstm_cell_204/Sigmoid_1Sigmoid+lstm_135/while/lstm_cell_204/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_135/while/lstm_cell_204/mulMul*lstm_135/while/lstm_cell_204/Sigmoid_1:y:0lstm_135_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_135/while/lstm_cell_204/ReluRelu+lstm_135/while/lstm_cell_204/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_135/while/lstm_cell_204/mul_1Mul(lstm_135/while/lstm_cell_204/Sigmoid:y:0/lstm_135/while/lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_135/while/lstm_cell_204/add_1AddV2$lstm_135/while/lstm_cell_204/mul:z:0&lstm_135/while/lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_135/while/lstm_cell_204/Sigmoid_2Sigmoid+lstm_135/while/lstm_cell_204/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_135/while/lstm_cell_204/Relu_1Relu&lstm_135/while/lstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_135/while/lstm_cell_204/mul_2Mul*lstm_135/while/lstm_cell_204/Sigmoid_2:y:01lstm_135/while/lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_135/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_135_while_placeholder_1lstm_135_while_placeholder&lstm_135/while/lstm_cell_204/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_135/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_135/while/addAddV2lstm_135_while_placeholderlstm_135/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_135/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_135/while/add_1AddV2*lstm_135_while_lstm_135_while_loop_counterlstm_135/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_135/while/IdentityIdentitylstm_135/while/add_1:z:0^lstm_135/while/NoOp*
T0*
_output_shapes
: ?
lstm_135/while/Identity_1Identity0lstm_135_while_lstm_135_while_maximum_iterations^lstm_135/while/NoOp*
T0*
_output_shapes
: t
lstm_135/while/Identity_2Identitylstm_135/while/add:z:0^lstm_135/while/NoOp*
T0*
_output_shapes
: ?
lstm_135/while/Identity_3IdentityClstm_135/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_135/while/NoOp*
T0*
_output_shapes
: ?
lstm_135/while/Identity_4Identity&lstm_135/while/lstm_cell_204/mul_2:z:0^lstm_135/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_135/while/Identity_5Identity&lstm_135/while/lstm_cell_204/add_1:z:0^lstm_135/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_135/while/NoOpNoOp4^lstm_135/while/lstm_cell_204/BiasAdd/ReadVariableOp3^lstm_135/while/lstm_cell_204/MatMul/ReadVariableOp5^lstm_135/while/lstm_cell_204/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_135_while_identity lstm_135/while/Identity:output:0"?
lstm_135_while_identity_1"lstm_135/while/Identity_1:output:0"?
lstm_135_while_identity_2"lstm_135/while/Identity_2:output:0"?
lstm_135_while_identity_3"lstm_135/while/Identity_3:output:0"?
lstm_135_while_identity_4"lstm_135/while/Identity_4:output:0"?
lstm_135_while_identity_5"lstm_135/while/Identity_5:output:0"T
'lstm_135_while_lstm_135_strided_slice_1)lstm_135_while_lstm_135_strided_slice_1_0"~
<lstm_135_while_lstm_cell_204_biasadd_readvariableop_resource>lstm_135_while_lstm_cell_204_biasadd_readvariableop_resource_0"?
=lstm_135_while_lstm_cell_204_matmul_1_readvariableop_resource?lstm_135_while_lstm_cell_204_matmul_1_readvariableop_resource_0"|
;lstm_135_while_lstm_cell_204_matmul_readvariableop_resource=lstm_135_while_lstm_cell_204_matmul_readvariableop_resource_0"?
clstm_135_while_tensorarrayv2read_tensorlistgetitem_lstm_135_tensorarrayunstack_tensorlistfromtensorelstm_135_while_tensorarrayv2read_tensorlistgetitem_lstm_135_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_135/while/lstm_cell_204/BiasAdd/ReadVariableOp3lstm_135/while/lstm_cell_204/BiasAdd/ReadVariableOp2h
2lstm_135/while/lstm_cell_204/MatMul/ReadVariableOp2lstm_135/while/lstm_cell_204/MatMul/ReadVariableOp2l
4lstm_135/while/lstm_cell_204/MatMul_1/ReadVariableOp4lstm_135/while/lstm_cell_204/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_204_layer_call_and_return_conditional_losses_1251130

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
/__inference_lstm_cell_204_layer_call_fn_1251081

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
J__inference_lstm_cell_204_layer_call_and_return_conditional_losses_1246096o
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
?
E__inference_lstm_137_layer_call_and_return_conditional_losses_1246879

inputs'
lstm_cell_206_1246797:2('
lstm_cell_206_1246799:
(#
lstm_cell_206_1246801:(
identity??%lstm_cell_206/StatefulPartitionedCall?while;
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
%lstm_cell_206/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_206_1246797lstm_cell_206_1246799lstm_cell_206_1246801*
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
J__inference_lstm_cell_206_layer_call_and_return_conditional_losses_1246796n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_206_1246797lstm_cell_206_1246799lstm_cell_206_1246801*
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
while_body_1246810*
condR
while_cond_1246809*K
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
NoOpNoOp&^lstm_cell_206/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_206/StatefulPartitionedCall%lstm_cell_206/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_206_layer_call_and_return_conditional_losses_1251326

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
J__inference_lstm_cell_206_layer_call_and_return_conditional_losses_1246942

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

lstm_137_while_body_1248680.
*lstm_137_while_lstm_137_while_loop_counter4
0lstm_137_while_lstm_137_while_maximum_iterations
lstm_137_while_placeholder 
lstm_137_while_placeholder_1 
lstm_137_while_placeholder_2 
lstm_137_while_placeholder_3-
)lstm_137_while_lstm_137_strided_slice_1_0i
elstm_137_while_tensorarrayv2read_tensorlistgetitem_lstm_137_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_137_while_lstm_cell_206_matmul_readvariableop_resource_0:2(Q
?lstm_137_while_lstm_cell_206_matmul_1_readvariableop_resource_0:
(L
>lstm_137_while_lstm_cell_206_biasadd_readvariableop_resource_0:(
lstm_137_while_identity
lstm_137_while_identity_1
lstm_137_while_identity_2
lstm_137_while_identity_3
lstm_137_while_identity_4
lstm_137_while_identity_5+
'lstm_137_while_lstm_137_strided_slice_1g
clstm_137_while_tensorarrayv2read_tensorlistgetitem_lstm_137_tensorarrayunstack_tensorlistfromtensorM
;lstm_137_while_lstm_cell_206_matmul_readvariableop_resource:2(O
=lstm_137_while_lstm_cell_206_matmul_1_readvariableop_resource:
(J
<lstm_137_while_lstm_cell_206_biasadd_readvariableop_resource:(??3lstm_137/while/lstm_cell_206/BiasAdd/ReadVariableOp?2lstm_137/while/lstm_cell_206/MatMul/ReadVariableOp?4lstm_137/while/lstm_cell_206/MatMul_1/ReadVariableOp?
@lstm_137/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_137/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_137_while_tensorarrayv2read_tensorlistgetitem_lstm_137_tensorarrayunstack_tensorlistfromtensor_0lstm_137_while_placeholderIlstm_137/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_137/while/lstm_cell_206/MatMul/ReadVariableOpReadVariableOp=lstm_137_while_lstm_cell_206_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_137/while/lstm_cell_206/MatMulMatMul9lstm_137/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_137/while/lstm_cell_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_137/while/lstm_cell_206/MatMul_1/ReadVariableOpReadVariableOp?lstm_137_while_lstm_cell_206_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_137/while/lstm_cell_206/MatMul_1MatMullstm_137_while_placeholder_2<lstm_137/while/lstm_cell_206/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_137/while/lstm_cell_206/addAddV2-lstm_137/while/lstm_cell_206/MatMul:product:0/lstm_137/while/lstm_cell_206/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_137/while/lstm_cell_206/BiasAdd/ReadVariableOpReadVariableOp>lstm_137_while_lstm_cell_206_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_137/while/lstm_cell_206/BiasAddBiasAdd$lstm_137/while/lstm_cell_206/add:z:0;lstm_137/while/lstm_cell_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_137/while/lstm_cell_206/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_137/while/lstm_cell_206/splitSplit5lstm_137/while/lstm_cell_206/split/split_dim:output:0-lstm_137/while/lstm_cell_206/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_137/while/lstm_cell_206/SigmoidSigmoid+lstm_137/while/lstm_cell_206/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_137/while/lstm_cell_206/Sigmoid_1Sigmoid+lstm_137/while/lstm_cell_206/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_137/while/lstm_cell_206/mulMul*lstm_137/while/lstm_cell_206/Sigmoid_1:y:0lstm_137_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_137/while/lstm_cell_206/ReluRelu+lstm_137/while/lstm_cell_206/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_137/while/lstm_cell_206/mul_1Mul(lstm_137/while/lstm_cell_206/Sigmoid:y:0/lstm_137/while/lstm_cell_206/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_137/while/lstm_cell_206/add_1AddV2$lstm_137/while/lstm_cell_206/mul:z:0&lstm_137/while/lstm_cell_206/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_137/while/lstm_cell_206/Sigmoid_2Sigmoid+lstm_137/while/lstm_cell_206/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_137/while/lstm_cell_206/Relu_1Relu&lstm_137/while/lstm_cell_206/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_137/while/lstm_cell_206/mul_2Mul*lstm_137/while/lstm_cell_206/Sigmoid_2:y:01lstm_137/while/lstm_cell_206/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_137/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_137_while_placeholder_1lstm_137_while_placeholder&lstm_137/while/lstm_cell_206/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_137/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_137/while/addAddV2lstm_137_while_placeholderlstm_137/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_137/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_137/while/add_1AddV2*lstm_137_while_lstm_137_while_loop_counterlstm_137/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_137/while/IdentityIdentitylstm_137/while/add_1:z:0^lstm_137/while/NoOp*
T0*
_output_shapes
: ?
lstm_137/while/Identity_1Identity0lstm_137_while_lstm_137_while_maximum_iterations^lstm_137/while/NoOp*
T0*
_output_shapes
: t
lstm_137/while/Identity_2Identitylstm_137/while/add:z:0^lstm_137/while/NoOp*
T0*
_output_shapes
: ?
lstm_137/while/Identity_3IdentityClstm_137/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_137/while/NoOp*
T0*
_output_shapes
: ?
lstm_137/while/Identity_4Identity&lstm_137/while/lstm_cell_206/mul_2:z:0^lstm_137/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_137/while/Identity_5Identity&lstm_137/while/lstm_cell_206/add_1:z:0^lstm_137/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_137/while/NoOpNoOp4^lstm_137/while/lstm_cell_206/BiasAdd/ReadVariableOp3^lstm_137/while/lstm_cell_206/MatMul/ReadVariableOp5^lstm_137/while/lstm_cell_206/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_137_while_identity lstm_137/while/Identity:output:0"?
lstm_137_while_identity_1"lstm_137/while/Identity_1:output:0"?
lstm_137_while_identity_2"lstm_137/while/Identity_2:output:0"?
lstm_137_while_identity_3"lstm_137/while/Identity_3:output:0"?
lstm_137_while_identity_4"lstm_137/while/Identity_4:output:0"?
lstm_137_while_identity_5"lstm_137/while/Identity_5:output:0"T
'lstm_137_while_lstm_137_strided_slice_1)lstm_137_while_lstm_137_strided_slice_1_0"~
<lstm_137_while_lstm_cell_206_biasadd_readvariableop_resource>lstm_137_while_lstm_cell_206_biasadd_readvariableop_resource_0"?
=lstm_137_while_lstm_cell_206_matmul_1_readvariableop_resource?lstm_137_while_lstm_cell_206_matmul_1_readvariableop_resource_0"|
;lstm_137_while_lstm_cell_206_matmul_readvariableop_resource=lstm_137_while_lstm_cell_206_matmul_readvariableop_resource_0"?
clstm_137_while_tensorarrayv2read_tensorlistgetitem_lstm_137_tensorarrayunstack_tensorlistfromtensorelstm_137_while_tensorarrayv2read_tensorlistgetitem_lstm_137_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_137/while/lstm_cell_206/BiasAdd/ReadVariableOp3lstm_137/while/lstm_cell_206/BiasAdd/ReadVariableOp2h
2lstm_137/while/lstm_cell_206/MatMul/ReadVariableOp2lstm_137/while/lstm_cell_206/MatMul/ReadVariableOp2l
4lstm_137/while/lstm_cell_206/MatMul_1/ReadVariableOp4lstm_137/while/lstm_cell_206/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1247989
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1247989___redundant_placeholder05
1while_while_cond_1247989___redundant_placeholder15
1while_while_cond_1247989___redundant_placeholder25
1while_while_cond_1247989___redundant_placeholder3
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
J__inference_sequential_45_layer_call_and_return_conditional_losses_1248254
lstm_135_input#
lstm_135_1248227:	?#
lstm_135_1248229:	d?
lstm_135_1248231:	?#
lstm_136_1248234:	d?#
lstm_136_1248236:	2?
lstm_136_1248238:	?"
lstm_137_1248241:2("
lstm_137_1248243:
(
lstm_137_1248245:("
dense_45_1248248:

dense_45_1248250:
identity?? dense_45/StatefulPartitionedCall? lstm_135/StatefulPartitionedCall? lstm_136/StatefulPartitionedCall? lstm_137/StatefulPartitionedCall?
 lstm_135/StatefulPartitionedCallStatefulPartitionedCalllstm_135_inputlstm_135_1248227lstm_135_1248229lstm_135_1248231*
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
E__inference_lstm_135_layer_call_and_return_conditional_losses_1248074?
 lstm_136/StatefulPartitionedCallStatefulPartitionedCall)lstm_135/StatefulPartitionedCall:output:0lstm_136_1248234lstm_136_1248236lstm_136_1248238*
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
E__inference_lstm_136_layer_call_and_return_conditional_losses_1247909?
 lstm_137/StatefulPartitionedCallStatefulPartitionedCall)lstm_136/StatefulPartitionedCall:output:0lstm_137_1248241lstm_137_1248243lstm_137_1248245*
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
E__inference_lstm_137_layer_call_and_return_conditional_losses_1247744?
 dense_45/StatefulPartitionedCallStatefulPartitionedCall)lstm_137/StatefulPartitionedCall:output:0dense_45_1248248dense_45_1248250*
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
E__inference_dense_45_layer_call_and_return_conditional_losses_1247546x
IdentityIdentity)dense_45/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_45/StatefulPartitionedCall!^lstm_135/StatefulPartitionedCall!^lstm_136/StatefulPartitionedCall!^lstm_137/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2D
 lstm_135/StatefulPartitionedCall lstm_135/StatefulPartitionedCall2D
 lstm_136/StatefulPartitionedCall lstm_136/StatefulPartitionedCall2D
 lstm_137/StatefulPartitionedCall lstm_137/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_135_input
?8
?
while_body_1247660
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_206_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_206_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_206_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_206_matmul_readvariableop_resource:2(F
4while_lstm_cell_206_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_206_biasadd_readvariableop_resource:(??*while/lstm_cell_206/BiasAdd/ReadVariableOp?)while/lstm_cell_206/MatMul/ReadVariableOp?+while/lstm_cell_206/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_206/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_206_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_206/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_206/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_206_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_206/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_206/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_206/addAddV2$while/lstm_cell_206/MatMul:product:0&while/lstm_cell_206/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_206/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_206_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_206/BiasAddBiasAddwhile/lstm_cell_206/add:z:02while/lstm_cell_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_206/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_206/splitSplit,while/lstm_cell_206/split/split_dim:output:0$while/lstm_cell_206/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_206/SigmoidSigmoid"while/lstm_cell_206/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_206/Sigmoid_1Sigmoid"while/lstm_cell_206/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_206/mulMul!while/lstm_cell_206/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_206/ReluRelu"while/lstm_cell_206/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_206/mul_1Mulwhile/lstm_cell_206/Sigmoid:y:0&while/lstm_cell_206/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_206/add_1AddV2while/lstm_cell_206/mul:z:0while/lstm_cell_206/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_206/Sigmoid_2Sigmoid"while/lstm_cell_206/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_206/Relu_1Reluwhile/lstm_cell_206/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_206/mul_2Mul!while/lstm_cell_206/Sigmoid_2:y:0(while/lstm_cell_206/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_206/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_206/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_206/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_206/BiasAdd/ReadVariableOp*^while/lstm_cell_206/MatMul/ReadVariableOp,^while/lstm_cell_206/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_206_biasadd_readvariableop_resource5while_lstm_cell_206_biasadd_readvariableop_resource_0"n
4while_lstm_cell_206_matmul_1_readvariableop_resource6while_lstm_cell_206_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_206_matmul_readvariableop_resource4while_lstm_cell_206_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_206/BiasAdd/ReadVariableOp*while/lstm_cell_206/BiasAdd/ReadVariableOp2V
)while/lstm_cell_206/MatMul/ReadVariableOp)while/lstm_cell_206/MatMul/ReadVariableOp2Z
+while/lstm_cell_206/MatMul_1/ReadVariableOp+while/lstm_cell_206/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1250344
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1250344___redundant_placeholder05
1while_while_cond_1250344___redundant_placeholder15
1while_while_cond_1250344___redundant_placeholder25
1while_while_cond_1250344___redundant_placeholder3
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
*__inference_lstm_135_layer_call_fn_1249208
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
E__inference_lstm_135_layer_call_and_return_conditional_losses_1246179|
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
?
?
/__inference_lstm_cell_204_layer_call_fn_1251098

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
J__inference_lstm_cell_204_layer_call_and_return_conditional_losses_1246242o
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
while_cond_1246109
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1246109___redundant_placeholder05
1while_while_cond_1246109___redundant_placeholder15
1while_while_cond_1246109___redundant_placeholder25
1while_while_cond_1246109___redundant_placeholder3
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
E__inference_lstm_135_layer_call_and_return_conditional_losses_1249384
inputs_0?
,lstm_cell_204_matmul_readvariableop_resource:	?A
.lstm_cell_204_matmul_1_readvariableop_resource:	d?<
-lstm_cell_204_biasadd_readvariableop_resource:	?
identity??$lstm_cell_204/BiasAdd/ReadVariableOp?#lstm_cell_204/MatMul/ReadVariableOp?%lstm_cell_204/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_204/MatMul/ReadVariableOpReadVariableOp,lstm_cell_204_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_204/MatMulMatMulstrided_slice_2:output:0+lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_204_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_204/MatMul_1MatMulzeros:output:0-lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_204/addAddV2lstm_cell_204/MatMul:product:0 lstm_cell_204/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_204_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_204/BiasAddBiasAddlstm_cell_204/add:z:0,lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_204/splitSplit&lstm_cell_204/split/split_dim:output:0lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_204/SigmoidSigmoidlstm_cell_204/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_204/Sigmoid_1Sigmoidlstm_cell_204/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_204/mulMullstm_cell_204/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_204/ReluRelulstm_cell_204/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_204/mul_1Mullstm_cell_204/Sigmoid:y:0 lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_204/add_1AddV2lstm_cell_204/mul:z:0lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_204/Sigmoid_2Sigmoidlstm_cell_204/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_204/Relu_1Relulstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_204/mul_2Mullstm_cell_204/Sigmoid_2:y:0"lstm_cell_204/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_204_matmul_readvariableop_resource.lstm_cell_204_matmul_1_readvariableop_resource-lstm_cell_204_biasadd_readvariableop_resource*
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
while_body_1249300*
condR
while_cond_1249299*K
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
NoOpNoOp%^lstm_cell_204/BiasAdd/ReadVariableOp$^lstm_cell_204/MatMul/ReadVariableOp&^lstm_cell_204/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_204/BiasAdd/ReadVariableOp$lstm_cell_204/BiasAdd/ReadVariableOp2J
#lstm_cell_204/MatMul/ReadVariableOp#lstm_cell_204/MatMul/ReadVariableOp2N
%lstm_cell_204/MatMul_1/ReadVariableOp%lstm_cell_204/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_135_layer_call_fn_1249230

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
E__inference_lstm_135_layer_call_and_return_conditional_losses_1247228s
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

?
/__inference_sequential_45_layer_call_fn_1248316

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
J__inference_sequential_45_layer_call_and_return_conditional_losses_1247553o
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
*__inference_lstm_136_layer_call_fn_1249835
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
E__inference_lstm_136_layer_call_and_return_conditional_losses_1246720|
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
?
?
J__inference_sequential_45_layer_call_and_return_conditional_losses_1247553

inputs#
lstm_135_1247229:	?#
lstm_135_1247231:	d?
lstm_135_1247233:	?#
lstm_136_1247379:	d?#
lstm_136_1247381:	2?
lstm_136_1247383:	?"
lstm_137_1247529:2("
lstm_137_1247531:
(
lstm_137_1247533:("
dense_45_1247547:

dense_45_1247549:
identity?? dense_45/StatefulPartitionedCall? lstm_135/StatefulPartitionedCall? lstm_136/StatefulPartitionedCall? lstm_137/StatefulPartitionedCall?
 lstm_135/StatefulPartitionedCallStatefulPartitionedCallinputslstm_135_1247229lstm_135_1247231lstm_135_1247233*
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
E__inference_lstm_135_layer_call_and_return_conditional_losses_1247228?
 lstm_136/StatefulPartitionedCallStatefulPartitionedCall)lstm_135/StatefulPartitionedCall:output:0lstm_136_1247379lstm_136_1247381lstm_136_1247383*
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
E__inference_lstm_136_layer_call_and_return_conditional_losses_1247378?
 lstm_137/StatefulPartitionedCallStatefulPartitionedCall)lstm_136/StatefulPartitionedCall:output:0lstm_137_1247529lstm_137_1247531lstm_137_1247533*
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
E__inference_lstm_137_layer_call_and_return_conditional_losses_1247528?
 dense_45/StatefulPartitionedCallStatefulPartitionedCall)lstm_137/StatefulPartitionedCall:output:0dense_45_1247547dense_45_1247549*
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
E__inference_dense_45_layer_call_and_return_conditional_losses_1247546x
IdentityIdentity)dense_45/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_45/StatefulPartitionedCall!^lstm_135/StatefulPartitionedCall!^lstm_136/StatefulPartitionedCall!^lstm_137/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2D
 lstm_135/StatefulPartitionedCall lstm_135/StatefulPartitionedCall2D
 lstm_136/StatefulPartitionedCall lstm_136/StatefulPartitionedCall2D
 lstm_137/StatefulPartitionedCall lstm_137/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1250532
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_206_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_206_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_206_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_206_matmul_readvariableop_resource:2(F
4while_lstm_cell_206_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_206_biasadd_readvariableop_resource:(??*while/lstm_cell_206/BiasAdd/ReadVariableOp?)while/lstm_cell_206/MatMul/ReadVariableOp?+while/lstm_cell_206/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_206/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_206_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_206/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_206/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_206_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_206/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_206/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_206/addAddV2$while/lstm_cell_206/MatMul:product:0&while/lstm_cell_206/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_206/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_206_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_206/BiasAddBiasAddwhile/lstm_cell_206/add:z:02while/lstm_cell_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_206/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_206/splitSplit,while/lstm_cell_206/split/split_dim:output:0$while/lstm_cell_206/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_206/SigmoidSigmoid"while/lstm_cell_206/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_206/Sigmoid_1Sigmoid"while/lstm_cell_206/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_206/mulMul!while/lstm_cell_206/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_206/ReluRelu"while/lstm_cell_206/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_206/mul_1Mulwhile/lstm_cell_206/Sigmoid:y:0&while/lstm_cell_206/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_206/add_1AddV2while/lstm_cell_206/mul:z:0while/lstm_cell_206/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_206/Sigmoid_2Sigmoid"while/lstm_cell_206/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_206/Relu_1Reluwhile/lstm_cell_206/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_206/mul_2Mul!while/lstm_cell_206/Sigmoid_2:y:0(while/lstm_cell_206/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_206/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_206/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_206/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_206/BiasAdd/ReadVariableOp*^while/lstm_cell_206/MatMul/ReadVariableOp,^while/lstm_cell_206/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_206_biasadd_readvariableop_resource5while_lstm_cell_206_biasadd_readvariableop_resource_0"n
4while_lstm_cell_206_matmul_1_readvariableop_resource6while_lstm_cell_206_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_206_matmul_readvariableop_resource4while_lstm_cell_206_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_206/BiasAdd/ReadVariableOp*while/lstm_cell_206/BiasAdd/ReadVariableOp2V
)while/lstm_cell_206/MatMul/ReadVariableOp)while/lstm_cell_206/MatMul/ReadVariableOp2Z
+while/lstm_cell_206/MatMul_1/ReadVariableOp+while/lstm_cell_206/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_dense_45_layer_call_and_return_conditional_losses_1247546

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
E__inference_lstm_137_layer_call_and_return_conditional_losses_1251045

inputs>
,lstm_cell_206_matmul_readvariableop_resource:2(@
.lstm_cell_206_matmul_1_readvariableop_resource:
(;
-lstm_cell_206_biasadd_readvariableop_resource:(
identity??$lstm_cell_206/BiasAdd/ReadVariableOp?#lstm_cell_206/MatMul/ReadVariableOp?%lstm_cell_206/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_206/MatMul/ReadVariableOpReadVariableOp,lstm_cell_206_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_206/MatMulMatMulstrided_slice_2:output:0+lstm_cell_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_206/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_206_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_206/MatMul_1MatMulzeros:output:0-lstm_cell_206/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_206/addAddV2lstm_cell_206/MatMul:product:0 lstm_cell_206/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_206/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_206_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_206/BiasAddBiasAddlstm_cell_206/add:z:0,lstm_cell_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_206/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_206/splitSplit&lstm_cell_206/split/split_dim:output:0lstm_cell_206/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_206/SigmoidSigmoidlstm_cell_206/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_206/Sigmoid_1Sigmoidlstm_cell_206/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_206/mulMullstm_cell_206/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_206/ReluRelulstm_cell_206/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_206/mul_1Mullstm_cell_206/Sigmoid:y:0 lstm_cell_206/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_206/add_1AddV2lstm_cell_206/mul:z:0lstm_cell_206/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_206/Sigmoid_2Sigmoidlstm_cell_206/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_206/Relu_1Relulstm_cell_206/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_206/mul_2Mullstm_cell_206/Sigmoid_2:y:0"lstm_cell_206/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_206_matmul_readvariableop_resource.lstm_cell_206_matmul_1_readvariableop_resource-lstm_cell_206_biasadd_readvariableop_resource*
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
while_body_1250961*
condR
while_cond_1250960*K
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
NoOpNoOp%^lstm_cell_206/BiasAdd/ReadVariableOp$^lstm_cell_206/MatMul/ReadVariableOp&^lstm_cell_206/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_206/BiasAdd/ReadVariableOp$lstm_cell_206/BiasAdd/ReadVariableOp2J
#lstm_cell_206/MatMul/ReadVariableOp#lstm_cell_206/MatMul/ReadVariableOp2N
%lstm_cell_206/MatMul_1/ReadVariableOp%lstm_cell_206/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_1246301
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_204_1246325_0:	?0
while_lstm_cell_204_1246327_0:	d?,
while_lstm_cell_204_1246329_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_204_1246325:	?.
while_lstm_cell_204_1246327:	d?*
while_lstm_cell_204_1246329:	???+while/lstm_cell_204/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_204/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_204_1246325_0while_lstm_cell_204_1246327_0while_lstm_cell_204_1246329_0*
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
J__inference_lstm_cell_204_layer_call_and_return_conditional_losses_1246242?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_204/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_204/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_204/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_204/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_204_1246325while_lstm_cell_204_1246325_0"<
while_lstm_cell_204_1246327while_lstm_cell_204_1246327_0"<
while_lstm_cell_204_1246329while_lstm_cell_204_1246329_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_204/StatefulPartitionedCall+while/lstm_cell_204/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_137_layer_call_and_return_conditional_losses_1250902

inputs>
,lstm_cell_206_matmul_readvariableop_resource:2(@
.lstm_cell_206_matmul_1_readvariableop_resource:
(;
-lstm_cell_206_biasadd_readvariableop_resource:(
identity??$lstm_cell_206/BiasAdd/ReadVariableOp?#lstm_cell_206/MatMul/ReadVariableOp?%lstm_cell_206/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_206/MatMul/ReadVariableOpReadVariableOp,lstm_cell_206_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_206/MatMulMatMulstrided_slice_2:output:0+lstm_cell_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_206/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_206_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_206/MatMul_1MatMulzeros:output:0-lstm_cell_206/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_206/addAddV2lstm_cell_206/MatMul:product:0 lstm_cell_206/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_206/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_206_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_206/BiasAddBiasAddlstm_cell_206/add:z:0,lstm_cell_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_206/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_206/splitSplit&lstm_cell_206/split/split_dim:output:0lstm_cell_206/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_206/SigmoidSigmoidlstm_cell_206/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_206/Sigmoid_1Sigmoidlstm_cell_206/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_206/mulMullstm_cell_206/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_206/ReluRelulstm_cell_206/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_206/mul_1Mullstm_cell_206/Sigmoid:y:0 lstm_cell_206/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_206/add_1AddV2lstm_cell_206/mul:z:0lstm_cell_206/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_206/Sigmoid_2Sigmoidlstm_cell_206/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_206/Relu_1Relulstm_cell_206/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_206/mul_2Mullstm_cell_206/Sigmoid_2:y:0"lstm_cell_206/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_206_matmul_readvariableop_resource.lstm_cell_206_matmul_1_readvariableop_resource-lstm_cell_206_biasadd_readvariableop_resource*
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
while_body_1250818*
condR
while_cond_1250817*K
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
NoOpNoOp%^lstm_cell_206/BiasAdd/ReadVariableOp$^lstm_cell_206/MatMul/ReadVariableOp&^lstm_cell_206/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_206/BiasAdd/ReadVariableOp$lstm_cell_206/BiasAdd/ReadVariableOp2J
#lstm_cell_206/MatMul/ReadVariableOp#lstm_cell_206/MatMul/ReadVariableOp2N
%lstm_cell_206/MatMul_1/ReadVariableOp%lstm_cell_206/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_1247143
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1247143___redundant_placeholder05
1while_while_cond_1247143___redundant_placeholder15
1while_while_cond_1247143___redundant_placeholder25
1while_while_cond_1247143___redundant_placeholder3
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
J__inference_lstm_cell_206_layer_call_and_return_conditional_losses_1246796

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
while_cond_1247443
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1247443___redundant_placeholder05
1while_while_cond_1247443___redundant_placeholder15
1while_while_cond_1247443___redundant_placeholder25
1while_while_cond_1247443___redundant_placeholder3
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
*__inference_lstm_135_layer_call_fn_1249219
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
E__inference_lstm_135_layer_call_and_return_conditional_losses_1246370|
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
*__inference_dense_45_layer_call_fn_1251054

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
E__inference_dense_45_layer_call_and_return_conditional_losses_1247546o
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
?
?
)sequential_45_lstm_137_while_cond_1245938J
Fsequential_45_lstm_137_while_sequential_45_lstm_137_while_loop_counterP
Lsequential_45_lstm_137_while_sequential_45_lstm_137_while_maximum_iterations,
(sequential_45_lstm_137_while_placeholder.
*sequential_45_lstm_137_while_placeholder_1.
*sequential_45_lstm_137_while_placeholder_2.
*sequential_45_lstm_137_while_placeholder_3L
Hsequential_45_lstm_137_while_less_sequential_45_lstm_137_strided_slice_1c
_sequential_45_lstm_137_while_sequential_45_lstm_137_while_cond_1245938___redundant_placeholder0c
_sequential_45_lstm_137_while_sequential_45_lstm_137_while_cond_1245938___redundant_placeholder1c
_sequential_45_lstm_137_while_sequential_45_lstm_137_while_cond_1245938___redundant_placeholder2c
_sequential_45_lstm_137_while_sequential_45_lstm_137_while_cond_1245938___redundant_placeholder3)
%sequential_45_lstm_137_while_identity
?
!sequential_45/lstm_137/while/LessLess(sequential_45_lstm_137_while_placeholderHsequential_45_lstm_137_while_less_sequential_45_lstm_137_strided_slice_1*
T0*
_output_shapes
: y
%sequential_45/lstm_137/while/IdentityIdentity%sequential_45/lstm_137/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_45_lstm_137_while_identity.sequential_45/lstm_137/while/Identity:output:0*(
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
while_cond_1246650
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1246650___redundant_placeholder05
1while_while_cond_1246650___redundant_placeholder15
1while_while_cond_1246650___redundant_placeholder25
1while_while_cond_1246650___redundant_placeholder3
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
while_body_1250202
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_205_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_205_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_205_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_205_matmul_readvariableop_resource:	d?G
4while_lstm_cell_205_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_205_biasadd_readvariableop_resource:	???*while/lstm_cell_205/BiasAdd/ReadVariableOp?)while/lstm_cell_205/MatMul/ReadVariableOp?+while/lstm_cell_205/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_205/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_205_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_205/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_205/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_205/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_205_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_205/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_205/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_205/addAddV2$while/lstm_cell_205/MatMul:product:0&while/lstm_cell_205/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_205/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_205_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_205/BiasAddBiasAddwhile/lstm_cell_205/add:z:02while/lstm_cell_205/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_205/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_205/splitSplit,while/lstm_cell_205/split/split_dim:output:0$while/lstm_cell_205/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_205/SigmoidSigmoid"while/lstm_cell_205/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_205/Sigmoid_1Sigmoid"while/lstm_cell_205/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_205/mulMul!while/lstm_cell_205/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_205/ReluRelu"while/lstm_cell_205/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_205/mul_1Mulwhile/lstm_cell_205/Sigmoid:y:0&while/lstm_cell_205/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_205/add_1AddV2while/lstm_cell_205/mul:z:0while/lstm_cell_205/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_205/Sigmoid_2Sigmoid"while/lstm_cell_205/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_205/Relu_1Reluwhile/lstm_cell_205/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_205/mul_2Mul!while/lstm_cell_205/Sigmoid_2:y:0(while/lstm_cell_205/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_205/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_205/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_205/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_205/BiasAdd/ReadVariableOp*^while/lstm_cell_205/MatMul/ReadVariableOp,^while/lstm_cell_205/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_205_biasadd_readvariableop_resource5while_lstm_cell_205_biasadd_readvariableop_resource_0"n
4while_lstm_cell_205_matmul_1_readvariableop_resource6while_lstm_cell_205_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_205_matmul_readvariableop_resource4while_lstm_cell_205_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_205/BiasAdd/ReadVariableOp*while/lstm_cell_205/BiasAdd/ReadVariableOp2V
)while/lstm_cell_205/MatMul/ReadVariableOp)while/lstm_cell_205/MatMul/ReadVariableOp2Z
+while/lstm_cell_205/MatMul_1/ReadVariableOp+while/lstm_cell_205/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1247825
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_205_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_205_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_205_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_205_matmul_readvariableop_resource:	d?G
4while_lstm_cell_205_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_205_biasadd_readvariableop_resource:	???*while/lstm_cell_205/BiasAdd/ReadVariableOp?)while/lstm_cell_205/MatMul/ReadVariableOp?+while/lstm_cell_205/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_205/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_205_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_205/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_205/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_205/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_205_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_205/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_205/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_205/addAddV2$while/lstm_cell_205/MatMul:product:0&while/lstm_cell_205/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_205/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_205_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_205/BiasAddBiasAddwhile/lstm_cell_205/add:z:02while/lstm_cell_205/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_205/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_205/splitSplit,while/lstm_cell_205/split/split_dim:output:0$while/lstm_cell_205/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_205/SigmoidSigmoid"while/lstm_cell_205/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_205/Sigmoid_1Sigmoid"while/lstm_cell_205/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_205/mulMul!while/lstm_cell_205/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_205/ReluRelu"while/lstm_cell_205/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_205/mul_1Mulwhile/lstm_cell_205/Sigmoid:y:0&while/lstm_cell_205/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_205/add_1AddV2while/lstm_cell_205/mul:z:0while/lstm_cell_205/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_205/Sigmoid_2Sigmoid"while/lstm_cell_205/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_205/Relu_1Reluwhile/lstm_cell_205/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_205/mul_2Mul!while/lstm_cell_205/Sigmoid_2:y:0(while/lstm_cell_205/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_205/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_205/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_205/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_205/BiasAdd/ReadVariableOp*^while/lstm_cell_205/MatMul/ReadVariableOp,^while/lstm_cell_205/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_205_biasadd_readvariableop_resource5while_lstm_cell_205_biasadd_readvariableop_resource_0"n
4while_lstm_cell_205_matmul_1_readvariableop_resource6while_lstm_cell_205_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_205_matmul_readvariableop_resource4while_lstm_cell_205_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_205/BiasAdd/ReadVariableOp*while/lstm_cell_205/BiasAdd/ReadVariableOp2V
)while/lstm_cell_205/MatMul/ReadVariableOp)while/lstm_cell_205/MatMul/ReadVariableOp2Z
+while/lstm_cell_205/MatMul_1/ReadVariableOp+while/lstm_cell_205/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_205_layer_call_and_return_conditional_losses_1251228

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

?
%__inference_signature_wrapper_1248289
lstm_135_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_135_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1246029o
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
_user_specified_namelstm_135_input
?

?
/__inference_sequential_45_layer_call_fn_1247578
lstm_135_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_135_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_45_layer_call_and_return_conditional_losses_1247553o
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
_user_specified_namelstm_135_input
?
?
)sequential_45_lstm_136_while_cond_1245799J
Fsequential_45_lstm_136_while_sequential_45_lstm_136_while_loop_counterP
Lsequential_45_lstm_136_while_sequential_45_lstm_136_while_maximum_iterations,
(sequential_45_lstm_136_while_placeholder.
*sequential_45_lstm_136_while_placeholder_1.
*sequential_45_lstm_136_while_placeholder_2.
*sequential_45_lstm_136_while_placeholder_3L
Hsequential_45_lstm_136_while_less_sequential_45_lstm_136_strided_slice_1c
_sequential_45_lstm_136_while_sequential_45_lstm_136_while_cond_1245799___redundant_placeholder0c
_sequential_45_lstm_136_while_sequential_45_lstm_136_while_cond_1245799___redundant_placeholder1c
_sequential_45_lstm_136_while_sequential_45_lstm_136_while_cond_1245799___redundant_placeholder2c
_sequential_45_lstm_136_while_sequential_45_lstm_136_while_cond_1245799___redundant_placeholder3)
%sequential_45_lstm_136_while_identity
?
!sequential_45/lstm_136/while/LessLess(sequential_45_lstm_136_while_placeholderHsequential_45_lstm_136_while_less_sequential_45_lstm_136_strided_slice_1*
T0*
_output_shapes
: y
%sequential_45/lstm_136/while/IdentityIdentity%sequential_45/lstm_136/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_45_lstm_136_while_identity.sequential_45/lstm_136/while/Identity:output:0*(
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
while_cond_1247824
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1247824___redundant_placeholder05
1while_while_cond_1247824___redundant_placeholder15
1while_while_cond_1247824___redundant_placeholder25
1while_while_cond_1247824___redundant_placeholder3
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
J__inference_lstm_cell_205_layer_call_and_return_conditional_losses_1246446

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
J__inference_lstm_cell_205_layer_call_and_return_conditional_losses_1251260

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
?
E__inference_lstm_136_layer_call_and_return_conditional_losses_1246720

inputs(
lstm_cell_205_1246638:	d?(
lstm_cell_205_1246640:	2?$
lstm_cell_205_1246642:	?
identity??%lstm_cell_205/StatefulPartitionedCall?while;
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
%lstm_cell_205/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_205_1246638lstm_cell_205_1246640lstm_cell_205_1246642*
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
J__inference_lstm_cell_205_layer_call_and_return_conditional_losses_1246592n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_205_1246638lstm_cell_205_1246640lstm_cell_205_1246642*
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
while_body_1246651*
condR
while_cond_1246650*K
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
NoOpNoOp&^lstm_cell_205/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_205/StatefulPartitionedCall%lstm_cell_205/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_205_layer_call_fn_1251196

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
J__inference_lstm_cell_205_layer_call_and_return_conditional_losses_1246592o
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
while_cond_1250531
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1250531___redundant_placeholder05
1while_while_cond_1250531___redundant_placeholder15
1while_while_cond_1250531___redundant_placeholder25
1while_while_cond_1250531___redundant_placeholder3
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
while_cond_1249299
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1249299___redundant_placeholder05
1while_while_cond_1249299___redundant_placeholder15
1while_while_cond_1249299___redundant_placeholder25
1while_while_cond_1249299___redundant_placeholder3
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
E__inference_lstm_135_layer_call_and_return_conditional_losses_1248074

inputs?
,lstm_cell_204_matmul_readvariableop_resource:	?A
.lstm_cell_204_matmul_1_readvariableop_resource:	d?<
-lstm_cell_204_biasadd_readvariableop_resource:	?
identity??$lstm_cell_204/BiasAdd/ReadVariableOp?#lstm_cell_204/MatMul/ReadVariableOp?%lstm_cell_204/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_204/MatMul/ReadVariableOpReadVariableOp,lstm_cell_204_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_204/MatMulMatMulstrided_slice_2:output:0+lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_204_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_204/MatMul_1MatMulzeros:output:0-lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_204/addAddV2lstm_cell_204/MatMul:product:0 lstm_cell_204/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_204_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_204/BiasAddBiasAddlstm_cell_204/add:z:0,lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_204/splitSplit&lstm_cell_204/split/split_dim:output:0lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_204/SigmoidSigmoidlstm_cell_204/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_204/Sigmoid_1Sigmoidlstm_cell_204/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_204/mulMullstm_cell_204/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_204/ReluRelulstm_cell_204/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_204/mul_1Mullstm_cell_204/Sigmoid:y:0 lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_204/add_1AddV2lstm_cell_204/mul:z:0lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_204/Sigmoid_2Sigmoidlstm_cell_204/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_204/Relu_1Relulstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_204/mul_2Mullstm_cell_204/Sigmoid_2:y:0"lstm_cell_204/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_204_matmul_readvariableop_resource.lstm_cell_204_matmul_1_readvariableop_resource-lstm_cell_204_biasadd_readvariableop_resource*
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
while_body_1247990*
condR
while_cond_1247989*K
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
NoOpNoOp%^lstm_cell_204/BiasAdd/ReadVariableOp$^lstm_cell_204/MatMul/ReadVariableOp&^lstm_cell_204/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_204/BiasAdd/ReadVariableOp$lstm_cell_204/BiasAdd/ReadVariableOp2J
#lstm_cell_204/MatMul/ReadVariableOp#lstm_cell_204/MatMul/ReadVariableOp2N
%lstm_cell_204/MatMul_1/ReadVariableOp%lstm_cell_204/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_1246110
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_204_1246134_0:	?0
while_lstm_cell_204_1246136_0:	d?,
while_lstm_cell_204_1246138_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_204_1246134:	?.
while_lstm_cell_204_1246136:	d?*
while_lstm_cell_204_1246138:	???+while/lstm_cell_204/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_204/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_204_1246134_0while_lstm_cell_204_1246136_0while_lstm_cell_204_1246138_0*
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
J__inference_lstm_cell_204_layer_call_and_return_conditional_losses_1246096?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_204/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_204/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_204/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_204/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_204_1246134while_lstm_cell_204_1246134_0"<
while_lstm_cell_204_1246136while_lstm_cell_204_1246136_0"<
while_lstm_cell_204_1246138while_lstm_cell_204_1246138_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_204/StatefulPartitionedCall+while/lstm_cell_204/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

?
lstm_136_while_cond_1248540.
*lstm_136_while_lstm_136_while_loop_counter4
0lstm_136_while_lstm_136_while_maximum_iterations
lstm_136_while_placeholder 
lstm_136_while_placeholder_1 
lstm_136_while_placeholder_2 
lstm_136_while_placeholder_30
,lstm_136_while_less_lstm_136_strided_slice_1G
Clstm_136_while_lstm_136_while_cond_1248540___redundant_placeholder0G
Clstm_136_while_lstm_136_while_cond_1248540___redundant_placeholder1G
Clstm_136_while_lstm_136_while_cond_1248540___redundant_placeholder2G
Clstm_136_while_lstm_136_while_cond_1248540___redundant_placeholder3
lstm_136_while_identity
?
lstm_136/while/LessLesslstm_136_while_placeholder,lstm_136_while_less_lstm_136_strided_slice_1*
T0*
_output_shapes
: ]
lstm_136/while/IdentityIdentitylstm_136/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_136_while_identity lstm_136/while/Identity:output:0*(
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

lstm_136_while_body_1248541.
*lstm_136_while_lstm_136_while_loop_counter4
0lstm_136_while_lstm_136_while_maximum_iterations
lstm_136_while_placeholder 
lstm_136_while_placeholder_1 
lstm_136_while_placeholder_2 
lstm_136_while_placeholder_3-
)lstm_136_while_lstm_136_strided_slice_1_0i
elstm_136_while_tensorarrayv2read_tensorlistgetitem_lstm_136_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_136_while_lstm_cell_205_matmul_readvariableop_resource_0:	d?R
?lstm_136_while_lstm_cell_205_matmul_1_readvariableop_resource_0:	2?M
>lstm_136_while_lstm_cell_205_biasadd_readvariableop_resource_0:	?
lstm_136_while_identity
lstm_136_while_identity_1
lstm_136_while_identity_2
lstm_136_while_identity_3
lstm_136_while_identity_4
lstm_136_while_identity_5+
'lstm_136_while_lstm_136_strided_slice_1g
clstm_136_while_tensorarrayv2read_tensorlistgetitem_lstm_136_tensorarrayunstack_tensorlistfromtensorN
;lstm_136_while_lstm_cell_205_matmul_readvariableop_resource:	d?P
=lstm_136_while_lstm_cell_205_matmul_1_readvariableop_resource:	2?K
<lstm_136_while_lstm_cell_205_biasadd_readvariableop_resource:	???3lstm_136/while/lstm_cell_205/BiasAdd/ReadVariableOp?2lstm_136/while/lstm_cell_205/MatMul/ReadVariableOp?4lstm_136/while/lstm_cell_205/MatMul_1/ReadVariableOp?
@lstm_136/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_136/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_136_while_tensorarrayv2read_tensorlistgetitem_lstm_136_tensorarrayunstack_tensorlistfromtensor_0lstm_136_while_placeholderIlstm_136/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_136/while/lstm_cell_205/MatMul/ReadVariableOpReadVariableOp=lstm_136_while_lstm_cell_205_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_136/while/lstm_cell_205/MatMulMatMul9lstm_136/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_136/while/lstm_cell_205/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_136/while/lstm_cell_205/MatMul_1/ReadVariableOpReadVariableOp?lstm_136_while_lstm_cell_205_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_136/while/lstm_cell_205/MatMul_1MatMullstm_136_while_placeholder_2<lstm_136/while/lstm_cell_205/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_136/while/lstm_cell_205/addAddV2-lstm_136/while/lstm_cell_205/MatMul:product:0/lstm_136/while/lstm_cell_205/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_136/while/lstm_cell_205/BiasAdd/ReadVariableOpReadVariableOp>lstm_136_while_lstm_cell_205_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_136/while/lstm_cell_205/BiasAddBiasAdd$lstm_136/while/lstm_cell_205/add:z:0;lstm_136/while/lstm_cell_205/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_136/while/lstm_cell_205/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_136/while/lstm_cell_205/splitSplit5lstm_136/while/lstm_cell_205/split/split_dim:output:0-lstm_136/while/lstm_cell_205/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_136/while/lstm_cell_205/SigmoidSigmoid+lstm_136/while/lstm_cell_205/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_136/while/lstm_cell_205/Sigmoid_1Sigmoid+lstm_136/while/lstm_cell_205/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_136/while/lstm_cell_205/mulMul*lstm_136/while/lstm_cell_205/Sigmoid_1:y:0lstm_136_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_136/while/lstm_cell_205/ReluRelu+lstm_136/while/lstm_cell_205/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_136/while/lstm_cell_205/mul_1Mul(lstm_136/while/lstm_cell_205/Sigmoid:y:0/lstm_136/while/lstm_cell_205/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_136/while/lstm_cell_205/add_1AddV2$lstm_136/while/lstm_cell_205/mul:z:0&lstm_136/while/lstm_cell_205/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_136/while/lstm_cell_205/Sigmoid_2Sigmoid+lstm_136/while/lstm_cell_205/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_136/while/lstm_cell_205/Relu_1Relu&lstm_136/while/lstm_cell_205/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_136/while/lstm_cell_205/mul_2Mul*lstm_136/while/lstm_cell_205/Sigmoid_2:y:01lstm_136/while/lstm_cell_205/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_136/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_136_while_placeholder_1lstm_136_while_placeholder&lstm_136/while/lstm_cell_205/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_136/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_136/while/addAddV2lstm_136_while_placeholderlstm_136/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_136/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_136/while/add_1AddV2*lstm_136_while_lstm_136_while_loop_counterlstm_136/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_136/while/IdentityIdentitylstm_136/while/add_1:z:0^lstm_136/while/NoOp*
T0*
_output_shapes
: ?
lstm_136/while/Identity_1Identity0lstm_136_while_lstm_136_while_maximum_iterations^lstm_136/while/NoOp*
T0*
_output_shapes
: t
lstm_136/while/Identity_2Identitylstm_136/while/add:z:0^lstm_136/while/NoOp*
T0*
_output_shapes
: ?
lstm_136/while/Identity_3IdentityClstm_136/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_136/while/NoOp*
T0*
_output_shapes
: ?
lstm_136/while/Identity_4Identity&lstm_136/while/lstm_cell_205/mul_2:z:0^lstm_136/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_136/while/Identity_5Identity&lstm_136/while/lstm_cell_205/add_1:z:0^lstm_136/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_136/while/NoOpNoOp4^lstm_136/while/lstm_cell_205/BiasAdd/ReadVariableOp3^lstm_136/while/lstm_cell_205/MatMul/ReadVariableOp5^lstm_136/while/lstm_cell_205/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_136_while_identity lstm_136/while/Identity:output:0"?
lstm_136_while_identity_1"lstm_136/while/Identity_1:output:0"?
lstm_136_while_identity_2"lstm_136/while/Identity_2:output:0"?
lstm_136_while_identity_3"lstm_136/while/Identity_3:output:0"?
lstm_136_while_identity_4"lstm_136/while/Identity_4:output:0"?
lstm_136_while_identity_5"lstm_136/while/Identity_5:output:0"T
'lstm_136_while_lstm_136_strided_slice_1)lstm_136_while_lstm_136_strided_slice_1_0"~
<lstm_136_while_lstm_cell_205_biasadd_readvariableop_resource>lstm_136_while_lstm_cell_205_biasadd_readvariableop_resource_0"?
=lstm_136_while_lstm_cell_205_matmul_1_readvariableop_resource?lstm_136_while_lstm_cell_205_matmul_1_readvariableop_resource_0"|
;lstm_136_while_lstm_cell_205_matmul_readvariableop_resource=lstm_136_while_lstm_cell_205_matmul_readvariableop_resource_0"?
clstm_136_while_tensorarrayv2read_tensorlistgetitem_lstm_136_tensorarrayunstack_tensorlistfromtensorelstm_136_while_tensorarrayv2read_tensorlistgetitem_lstm_136_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_136/while/lstm_cell_205/BiasAdd/ReadVariableOp3lstm_136/while/lstm_cell_205/BiasAdd/ReadVariableOp2h
2lstm_136/while/lstm_cell_205/MatMul/ReadVariableOp2lstm_136/while/lstm_cell_205/MatMul/ReadVariableOp2l
4lstm_136/while/lstm_cell_205/MatMul_1/ReadVariableOp4lstm_136/while/lstm_cell_205/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_137_layer_call_and_return_conditional_losses_1250616
inputs_0>
,lstm_cell_206_matmul_readvariableop_resource:2(@
.lstm_cell_206_matmul_1_readvariableop_resource:
(;
-lstm_cell_206_biasadd_readvariableop_resource:(
identity??$lstm_cell_206/BiasAdd/ReadVariableOp?#lstm_cell_206/MatMul/ReadVariableOp?%lstm_cell_206/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_206/MatMul/ReadVariableOpReadVariableOp,lstm_cell_206_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_206/MatMulMatMulstrided_slice_2:output:0+lstm_cell_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_206/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_206_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_206/MatMul_1MatMulzeros:output:0-lstm_cell_206/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_206/addAddV2lstm_cell_206/MatMul:product:0 lstm_cell_206/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_206/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_206_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_206/BiasAddBiasAddlstm_cell_206/add:z:0,lstm_cell_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_206/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_206/splitSplit&lstm_cell_206/split/split_dim:output:0lstm_cell_206/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_206/SigmoidSigmoidlstm_cell_206/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_206/Sigmoid_1Sigmoidlstm_cell_206/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_206/mulMullstm_cell_206/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_206/ReluRelulstm_cell_206/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_206/mul_1Mullstm_cell_206/Sigmoid:y:0 lstm_cell_206/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_206/add_1AddV2lstm_cell_206/mul:z:0lstm_cell_206/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_206/Sigmoid_2Sigmoidlstm_cell_206/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_206/Relu_1Relulstm_cell_206/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_206/mul_2Mullstm_cell_206/Sigmoid_2:y:0"lstm_cell_206/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_206_matmul_readvariableop_resource.lstm_cell_206_matmul_1_readvariableop_resource-lstm_cell_206_biasadd_readvariableop_resource*
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
while_body_1250532*
condR
while_cond_1250531*K
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
NoOpNoOp%^lstm_cell_206/BiasAdd/ReadVariableOp$^lstm_cell_206/MatMul/ReadVariableOp&^lstm_cell_206/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_206/BiasAdd/ReadVariableOp$lstm_cell_206/BiasAdd/ReadVariableOp2J
#lstm_cell_206/MatMul/ReadVariableOp#lstm_cell_206/MatMul/ReadVariableOp2N
%lstm_cell_206/MatMul_1/ReadVariableOp%lstm_cell_206/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?C
?

lstm_136_while_body_1248968.
*lstm_136_while_lstm_136_while_loop_counter4
0lstm_136_while_lstm_136_while_maximum_iterations
lstm_136_while_placeholder 
lstm_136_while_placeholder_1 
lstm_136_while_placeholder_2 
lstm_136_while_placeholder_3-
)lstm_136_while_lstm_136_strided_slice_1_0i
elstm_136_while_tensorarrayv2read_tensorlistgetitem_lstm_136_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_136_while_lstm_cell_205_matmul_readvariableop_resource_0:	d?R
?lstm_136_while_lstm_cell_205_matmul_1_readvariableop_resource_0:	2?M
>lstm_136_while_lstm_cell_205_biasadd_readvariableop_resource_0:	?
lstm_136_while_identity
lstm_136_while_identity_1
lstm_136_while_identity_2
lstm_136_while_identity_3
lstm_136_while_identity_4
lstm_136_while_identity_5+
'lstm_136_while_lstm_136_strided_slice_1g
clstm_136_while_tensorarrayv2read_tensorlistgetitem_lstm_136_tensorarrayunstack_tensorlistfromtensorN
;lstm_136_while_lstm_cell_205_matmul_readvariableop_resource:	d?P
=lstm_136_while_lstm_cell_205_matmul_1_readvariableop_resource:	2?K
<lstm_136_while_lstm_cell_205_biasadd_readvariableop_resource:	???3lstm_136/while/lstm_cell_205/BiasAdd/ReadVariableOp?2lstm_136/while/lstm_cell_205/MatMul/ReadVariableOp?4lstm_136/while/lstm_cell_205/MatMul_1/ReadVariableOp?
@lstm_136/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_136/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_136_while_tensorarrayv2read_tensorlistgetitem_lstm_136_tensorarrayunstack_tensorlistfromtensor_0lstm_136_while_placeholderIlstm_136/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_136/while/lstm_cell_205/MatMul/ReadVariableOpReadVariableOp=lstm_136_while_lstm_cell_205_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_136/while/lstm_cell_205/MatMulMatMul9lstm_136/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_136/while/lstm_cell_205/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_136/while/lstm_cell_205/MatMul_1/ReadVariableOpReadVariableOp?lstm_136_while_lstm_cell_205_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_136/while/lstm_cell_205/MatMul_1MatMullstm_136_while_placeholder_2<lstm_136/while/lstm_cell_205/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_136/while/lstm_cell_205/addAddV2-lstm_136/while/lstm_cell_205/MatMul:product:0/lstm_136/while/lstm_cell_205/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_136/while/lstm_cell_205/BiasAdd/ReadVariableOpReadVariableOp>lstm_136_while_lstm_cell_205_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_136/while/lstm_cell_205/BiasAddBiasAdd$lstm_136/while/lstm_cell_205/add:z:0;lstm_136/while/lstm_cell_205/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_136/while/lstm_cell_205/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_136/while/lstm_cell_205/splitSplit5lstm_136/while/lstm_cell_205/split/split_dim:output:0-lstm_136/while/lstm_cell_205/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_136/while/lstm_cell_205/SigmoidSigmoid+lstm_136/while/lstm_cell_205/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_136/while/lstm_cell_205/Sigmoid_1Sigmoid+lstm_136/while/lstm_cell_205/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_136/while/lstm_cell_205/mulMul*lstm_136/while/lstm_cell_205/Sigmoid_1:y:0lstm_136_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_136/while/lstm_cell_205/ReluRelu+lstm_136/while/lstm_cell_205/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_136/while/lstm_cell_205/mul_1Mul(lstm_136/while/lstm_cell_205/Sigmoid:y:0/lstm_136/while/lstm_cell_205/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_136/while/lstm_cell_205/add_1AddV2$lstm_136/while/lstm_cell_205/mul:z:0&lstm_136/while/lstm_cell_205/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_136/while/lstm_cell_205/Sigmoid_2Sigmoid+lstm_136/while/lstm_cell_205/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_136/while/lstm_cell_205/Relu_1Relu&lstm_136/while/lstm_cell_205/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_136/while/lstm_cell_205/mul_2Mul*lstm_136/while/lstm_cell_205/Sigmoid_2:y:01lstm_136/while/lstm_cell_205/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_136/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_136_while_placeholder_1lstm_136_while_placeholder&lstm_136/while/lstm_cell_205/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_136/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_136/while/addAddV2lstm_136_while_placeholderlstm_136/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_136/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_136/while/add_1AddV2*lstm_136_while_lstm_136_while_loop_counterlstm_136/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_136/while/IdentityIdentitylstm_136/while/add_1:z:0^lstm_136/while/NoOp*
T0*
_output_shapes
: ?
lstm_136/while/Identity_1Identity0lstm_136_while_lstm_136_while_maximum_iterations^lstm_136/while/NoOp*
T0*
_output_shapes
: t
lstm_136/while/Identity_2Identitylstm_136/while/add:z:0^lstm_136/while/NoOp*
T0*
_output_shapes
: ?
lstm_136/while/Identity_3IdentityClstm_136/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_136/while/NoOp*
T0*
_output_shapes
: ?
lstm_136/while/Identity_4Identity&lstm_136/while/lstm_cell_205/mul_2:z:0^lstm_136/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_136/while/Identity_5Identity&lstm_136/while/lstm_cell_205/add_1:z:0^lstm_136/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_136/while/NoOpNoOp4^lstm_136/while/lstm_cell_205/BiasAdd/ReadVariableOp3^lstm_136/while/lstm_cell_205/MatMul/ReadVariableOp5^lstm_136/while/lstm_cell_205/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_136_while_identity lstm_136/while/Identity:output:0"?
lstm_136_while_identity_1"lstm_136/while/Identity_1:output:0"?
lstm_136_while_identity_2"lstm_136/while/Identity_2:output:0"?
lstm_136_while_identity_3"lstm_136/while/Identity_3:output:0"?
lstm_136_while_identity_4"lstm_136/while/Identity_4:output:0"?
lstm_136_while_identity_5"lstm_136/while/Identity_5:output:0"T
'lstm_136_while_lstm_136_strided_slice_1)lstm_136_while_lstm_136_strided_slice_1_0"~
<lstm_136_while_lstm_cell_205_biasadd_readvariableop_resource>lstm_136_while_lstm_cell_205_biasadd_readvariableop_resource_0"?
=lstm_136_while_lstm_cell_205_matmul_1_readvariableop_resource?lstm_136_while_lstm_cell_205_matmul_1_readvariableop_resource_0"|
;lstm_136_while_lstm_cell_205_matmul_readvariableop_resource=lstm_136_while_lstm_cell_205_matmul_readvariableop_resource_0"?
clstm_136_while_tensorarrayv2read_tensorlistgetitem_lstm_136_tensorarrayunstack_tensorlistfromtensorelstm_136_while_tensorarrayv2read_tensorlistgetitem_lstm_136_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_136/while/lstm_cell_205/BiasAdd/ReadVariableOp3lstm_136/while/lstm_cell_205/BiasAdd/ReadVariableOp2h
2lstm_136/while/lstm_cell_205/MatMul/ReadVariableOp2lstm_136/while/lstm_cell_205/MatMul/ReadVariableOp2l
4lstm_136/while/lstm_cell_205/MatMul_1/ReadVariableOp4lstm_136/while/lstm_cell_205/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_205_layer_call_and_return_conditional_losses_1246592

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
?W
?
 __inference__traced_save_1251501
file_prefix.
*savev2_dense_45_kernel_read_readvariableop,
(savev2_dense_45_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_135_lstm_cell_135_kernel_read_readvariableopF
Bsavev2_lstm_135_lstm_cell_135_recurrent_kernel_read_readvariableop:
6savev2_lstm_135_lstm_cell_135_bias_read_readvariableop<
8savev2_lstm_136_lstm_cell_136_kernel_read_readvariableopF
Bsavev2_lstm_136_lstm_cell_136_recurrent_kernel_read_readvariableop:
6savev2_lstm_136_lstm_cell_136_bias_read_readvariableop<
8savev2_lstm_137_lstm_cell_137_kernel_read_readvariableopF
Bsavev2_lstm_137_lstm_cell_137_recurrent_kernel_read_readvariableop:
6savev2_lstm_137_lstm_cell_137_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_45_kernel_m_read_readvariableop3
/savev2_adam_dense_45_bias_m_read_readvariableopC
?savev2_adam_lstm_135_lstm_cell_135_kernel_m_read_readvariableopM
Isavev2_adam_lstm_135_lstm_cell_135_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_135_lstm_cell_135_bias_m_read_readvariableopC
?savev2_adam_lstm_136_lstm_cell_136_kernel_m_read_readvariableopM
Isavev2_adam_lstm_136_lstm_cell_136_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_136_lstm_cell_136_bias_m_read_readvariableopC
?savev2_adam_lstm_137_lstm_cell_137_kernel_m_read_readvariableopM
Isavev2_adam_lstm_137_lstm_cell_137_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_137_lstm_cell_137_bias_m_read_readvariableop5
1savev2_adam_dense_45_kernel_v_read_readvariableop3
/savev2_adam_dense_45_bias_v_read_readvariableopC
?savev2_adam_lstm_135_lstm_cell_135_kernel_v_read_readvariableopM
Isavev2_adam_lstm_135_lstm_cell_135_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_135_lstm_cell_135_bias_v_read_readvariableopC
?savev2_adam_lstm_136_lstm_cell_136_kernel_v_read_readvariableopM
Isavev2_adam_lstm_136_lstm_cell_136_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_136_lstm_cell_136_bias_v_read_readvariableopC
?savev2_adam_lstm_137_lstm_cell_137_kernel_v_read_readvariableopM
Isavev2_adam_lstm_137_lstm_cell_137_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_137_lstm_cell_137_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_45_kernel_read_readvariableop(savev2_dense_45_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_135_lstm_cell_135_kernel_read_readvariableopBsavev2_lstm_135_lstm_cell_135_recurrent_kernel_read_readvariableop6savev2_lstm_135_lstm_cell_135_bias_read_readvariableop8savev2_lstm_136_lstm_cell_136_kernel_read_readvariableopBsavev2_lstm_136_lstm_cell_136_recurrent_kernel_read_readvariableop6savev2_lstm_136_lstm_cell_136_bias_read_readvariableop8savev2_lstm_137_lstm_cell_137_kernel_read_readvariableopBsavev2_lstm_137_lstm_cell_137_recurrent_kernel_read_readvariableop6savev2_lstm_137_lstm_cell_137_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_45_kernel_m_read_readvariableop/savev2_adam_dense_45_bias_m_read_readvariableop?savev2_adam_lstm_135_lstm_cell_135_kernel_m_read_readvariableopIsavev2_adam_lstm_135_lstm_cell_135_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_135_lstm_cell_135_bias_m_read_readvariableop?savev2_adam_lstm_136_lstm_cell_136_kernel_m_read_readvariableopIsavev2_adam_lstm_136_lstm_cell_136_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_136_lstm_cell_136_bias_m_read_readvariableop?savev2_adam_lstm_137_lstm_cell_137_kernel_m_read_readvariableopIsavev2_adam_lstm_137_lstm_cell_137_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_137_lstm_cell_137_bias_m_read_readvariableop1savev2_adam_dense_45_kernel_v_read_readvariableop/savev2_adam_dense_45_bias_v_read_readvariableop?savev2_adam_lstm_135_lstm_cell_135_kernel_v_read_readvariableopIsavev2_adam_lstm_135_lstm_cell_135_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_135_lstm_cell_135_bias_v_read_readvariableop?savev2_adam_lstm_136_lstm_cell_136_kernel_v_read_readvariableopIsavev2_adam_lstm_136_lstm_cell_136_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_136_lstm_cell_136_bias_v_read_readvariableop?savev2_adam_lstm_137_lstm_cell_137_kernel_v_read_readvariableopIsavev2_adam_lstm_137_lstm_cell_137_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_137_lstm_cell_137_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
J__inference_lstm_cell_204_layer_call_and_return_conditional_losses_1246096

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
?
)sequential_45_lstm_135_while_cond_1245660J
Fsequential_45_lstm_135_while_sequential_45_lstm_135_while_loop_counterP
Lsequential_45_lstm_135_while_sequential_45_lstm_135_while_maximum_iterations,
(sequential_45_lstm_135_while_placeholder.
*sequential_45_lstm_135_while_placeholder_1.
*sequential_45_lstm_135_while_placeholder_2.
*sequential_45_lstm_135_while_placeholder_3L
Hsequential_45_lstm_135_while_less_sequential_45_lstm_135_strided_slice_1c
_sequential_45_lstm_135_while_sequential_45_lstm_135_while_cond_1245660___redundant_placeholder0c
_sequential_45_lstm_135_while_sequential_45_lstm_135_while_cond_1245660___redundant_placeholder1c
_sequential_45_lstm_135_while_sequential_45_lstm_135_while_cond_1245660___redundant_placeholder2c
_sequential_45_lstm_135_while_sequential_45_lstm_135_while_cond_1245660___redundant_placeholder3)
%sequential_45_lstm_135_while_identity
?
!sequential_45/lstm_135/while/LessLess(sequential_45_lstm_135_while_placeholderHsequential_45_lstm_135_while_less_sequential_45_lstm_135_strided_slice_1*
T0*
_output_shapes
: y
%sequential_45/lstm_135/while/IdentityIdentity%sequential_45/lstm_135/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_45_lstm_135_while_identity.sequential_45/lstm_135/while/Identity:output:0*(
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
/__inference_sequential_45_layer_call_fn_1248194
lstm_135_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_135_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_45_layer_call_and_return_conditional_losses_1248142o
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
_user_specified_namelstm_135_input
?
?
/__inference_lstm_cell_206_layer_call_fn_1251277

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
J__inference_lstm_cell_206_layer_call_and_return_conditional_losses_1246796o
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
?
*__inference_lstm_136_layer_call_fn_1249846

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
E__inference_lstm_136_layer_call_and_return_conditional_losses_1247378s
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
?C
?

lstm_137_while_body_1249107.
*lstm_137_while_lstm_137_while_loop_counter4
0lstm_137_while_lstm_137_while_maximum_iterations
lstm_137_while_placeholder 
lstm_137_while_placeholder_1 
lstm_137_while_placeholder_2 
lstm_137_while_placeholder_3-
)lstm_137_while_lstm_137_strided_slice_1_0i
elstm_137_while_tensorarrayv2read_tensorlistgetitem_lstm_137_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_137_while_lstm_cell_206_matmul_readvariableop_resource_0:2(Q
?lstm_137_while_lstm_cell_206_matmul_1_readvariableop_resource_0:
(L
>lstm_137_while_lstm_cell_206_biasadd_readvariableop_resource_0:(
lstm_137_while_identity
lstm_137_while_identity_1
lstm_137_while_identity_2
lstm_137_while_identity_3
lstm_137_while_identity_4
lstm_137_while_identity_5+
'lstm_137_while_lstm_137_strided_slice_1g
clstm_137_while_tensorarrayv2read_tensorlistgetitem_lstm_137_tensorarrayunstack_tensorlistfromtensorM
;lstm_137_while_lstm_cell_206_matmul_readvariableop_resource:2(O
=lstm_137_while_lstm_cell_206_matmul_1_readvariableop_resource:
(J
<lstm_137_while_lstm_cell_206_biasadd_readvariableop_resource:(??3lstm_137/while/lstm_cell_206/BiasAdd/ReadVariableOp?2lstm_137/while/lstm_cell_206/MatMul/ReadVariableOp?4lstm_137/while/lstm_cell_206/MatMul_1/ReadVariableOp?
@lstm_137/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_137/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_137_while_tensorarrayv2read_tensorlistgetitem_lstm_137_tensorarrayunstack_tensorlistfromtensor_0lstm_137_while_placeholderIlstm_137/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_137/while/lstm_cell_206/MatMul/ReadVariableOpReadVariableOp=lstm_137_while_lstm_cell_206_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_137/while/lstm_cell_206/MatMulMatMul9lstm_137/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_137/while/lstm_cell_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_137/while/lstm_cell_206/MatMul_1/ReadVariableOpReadVariableOp?lstm_137_while_lstm_cell_206_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_137/while/lstm_cell_206/MatMul_1MatMullstm_137_while_placeholder_2<lstm_137/while/lstm_cell_206/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_137/while/lstm_cell_206/addAddV2-lstm_137/while/lstm_cell_206/MatMul:product:0/lstm_137/while/lstm_cell_206/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_137/while/lstm_cell_206/BiasAdd/ReadVariableOpReadVariableOp>lstm_137_while_lstm_cell_206_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_137/while/lstm_cell_206/BiasAddBiasAdd$lstm_137/while/lstm_cell_206/add:z:0;lstm_137/while/lstm_cell_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_137/while/lstm_cell_206/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_137/while/lstm_cell_206/splitSplit5lstm_137/while/lstm_cell_206/split/split_dim:output:0-lstm_137/while/lstm_cell_206/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_137/while/lstm_cell_206/SigmoidSigmoid+lstm_137/while/lstm_cell_206/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_137/while/lstm_cell_206/Sigmoid_1Sigmoid+lstm_137/while/lstm_cell_206/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_137/while/lstm_cell_206/mulMul*lstm_137/while/lstm_cell_206/Sigmoid_1:y:0lstm_137_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_137/while/lstm_cell_206/ReluRelu+lstm_137/while/lstm_cell_206/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_137/while/lstm_cell_206/mul_1Mul(lstm_137/while/lstm_cell_206/Sigmoid:y:0/lstm_137/while/lstm_cell_206/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_137/while/lstm_cell_206/add_1AddV2$lstm_137/while/lstm_cell_206/mul:z:0&lstm_137/while/lstm_cell_206/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_137/while/lstm_cell_206/Sigmoid_2Sigmoid+lstm_137/while/lstm_cell_206/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_137/while/lstm_cell_206/Relu_1Relu&lstm_137/while/lstm_cell_206/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_137/while/lstm_cell_206/mul_2Mul*lstm_137/while/lstm_cell_206/Sigmoid_2:y:01lstm_137/while/lstm_cell_206/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_137/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_137_while_placeholder_1lstm_137_while_placeholder&lstm_137/while/lstm_cell_206/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_137/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_137/while/addAddV2lstm_137_while_placeholderlstm_137/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_137/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_137/while/add_1AddV2*lstm_137_while_lstm_137_while_loop_counterlstm_137/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_137/while/IdentityIdentitylstm_137/while/add_1:z:0^lstm_137/while/NoOp*
T0*
_output_shapes
: ?
lstm_137/while/Identity_1Identity0lstm_137_while_lstm_137_while_maximum_iterations^lstm_137/while/NoOp*
T0*
_output_shapes
: t
lstm_137/while/Identity_2Identitylstm_137/while/add:z:0^lstm_137/while/NoOp*
T0*
_output_shapes
: ?
lstm_137/while/Identity_3IdentityClstm_137/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_137/while/NoOp*
T0*
_output_shapes
: ?
lstm_137/while/Identity_4Identity&lstm_137/while/lstm_cell_206/mul_2:z:0^lstm_137/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_137/while/Identity_5Identity&lstm_137/while/lstm_cell_206/add_1:z:0^lstm_137/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_137/while/NoOpNoOp4^lstm_137/while/lstm_cell_206/BiasAdd/ReadVariableOp3^lstm_137/while/lstm_cell_206/MatMul/ReadVariableOp5^lstm_137/while/lstm_cell_206/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_137_while_identity lstm_137/while/Identity:output:0"?
lstm_137_while_identity_1"lstm_137/while/Identity_1:output:0"?
lstm_137_while_identity_2"lstm_137/while/Identity_2:output:0"?
lstm_137_while_identity_3"lstm_137/while/Identity_3:output:0"?
lstm_137_while_identity_4"lstm_137/while/Identity_4:output:0"?
lstm_137_while_identity_5"lstm_137/while/Identity_5:output:0"T
'lstm_137_while_lstm_137_strided_slice_1)lstm_137_while_lstm_137_strided_slice_1_0"~
<lstm_137_while_lstm_cell_206_biasadd_readvariableop_resource>lstm_137_while_lstm_cell_206_biasadd_readvariableop_resource_0"?
=lstm_137_while_lstm_cell_206_matmul_1_readvariableop_resource?lstm_137_while_lstm_cell_206_matmul_1_readvariableop_resource_0"|
;lstm_137_while_lstm_cell_206_matmul_readvariableop_resource=lstm_137_while_lstm_cell_206_matmul_readvariableop_resource_0"?
clstm_137_while_tensorarrayv2read_tensorlistgetitem_lstm_137_tensorarrayunstack_tensorlistfromtensorelstm_137_while_tensorarrayv2read_tensorlistgetitem_lstm_137_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_137/while/lstm_cell_206/BiasAdd/ReadVariableOp3lstm_137/while/lstm_cell_206/BiasAdd/ReadVariableOp2h
2lstm_137/while/lstm_cell_206/MatMul/ReadVariableOp2lstm_137/while/lstm_cell_206/MatMul/ReadVariableOp2l
4lstm_137/while/lstm_cell_206/MatMul_1/ReadVariableOp4lstm_137/while/lstm_cell_206/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1250817
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1250817___redundant_placeholder05
1while_while_cond_1250817___redundant_placeholder15
1while_while_cond_1250817___redundant_placeholder25
1while_while_cond_1250817___redundant_placeholder3
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
*__inference_lstm_137_layer_call_fn_1250451
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
E__inference_lstm_137_layer_call_and_return_conditional_losses_1247070o
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
E__inference_lstm_137_layer_call_and_return_conditional_losses_1247528

inputs>
,lstm_cell_206_matmul_readvariableop_resource:2(@
.lstm_cell_206_matmul_1_readvariableop_resource:
(;
-lstm_cell_206_biasadd_readvariableop_resource:(
identity??$lstm_cell_206/BiasAdd/ReadVariableOp?#lstm_cell_206/MatMul/ReadVariableOp?%lstm_cell_206/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_206/MatMul/ReadVariableOpReadVariableOp,lstm_cell_206_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_206/MatMulMatMulstrided_slice_2:output:0+lstm_cell_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_206/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_206_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_206/MatMul_1MatMulzeros:output:0-lstm_cell_206/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_206/addAddV2lstm_cell_206/MatMul:product:0 lstm_cell_206/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_206/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_206_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_206/BiasAddBiasAddlstm_cell_206/add:z:0,lstm_cell_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_206/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_206/splitSplit&lstm_cell_206/split/split_dim:output:0lstm_cell_206/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_206/SigmoidSigmoidlstm_cell_206/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_206/Sigmoid_1Sigmoidlstm_cell_206/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_206/mulMullstm_cell_206/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_206/ReluRelulstm_cell_206/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_206/mul_1Mullstm_cell_206/Sigmoid:y:0 lstm_cell_206/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_206/add_1AddV2lstm_cell_206/mul:z:0lstm_cell_206/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_206/Sigmoid_2Sigmoidlstm_cell_206/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_206/Relu_1Relulstm_cell_206/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_206/mul_2Mullstm_cell_206/Sigmoid_2:y:0"lstm_cell_206/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_206_matmul_readvariableop_resource.lstm_cell_206_matmul_1_readvariableop_resource-lstm_cell_206_biasadd_readvariableop_resource*
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
while_body_1247444*
condR
while_cond_1247443*K
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
NoOpNoOp%^lstm_cell_206/BiasAdd/ReadVariableOp$^lstm_cell_206/MatMul/ReadVariableOp&^lstm_cell_206/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_206/BiasAdd/ReadVariableOp$lstm_cell_206/BiasAdd/ReadVariableOp2J
#lstm_cell_206/MatMul/ReadVariableOp#lstm_cell_206/MatMul/ReadVariableOp2N
%lstm_cell_206/MatMul_1/ReadVariableOp%lstm_cell_206/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_136_layer_call_and_return_conditional_losses_1247909

inputs?
,lstm_cell_205_matmul_readvariableop_resource:	d?A
.lstm_cell_205_matmul_1_readvariableop_resource:	2?<
-lstm_cell_205_biasadd_readvariableop_resource:	?
identity??$lstm_cell_205/BiasAdd/ReadVariableOp?#lstm_cell_205/MatMul/ReadVariableOp?%lstm_cell_205/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_205/MatMul/ReadVariableOpReadVariableOp,lstm_cell_205_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_205/MatMulMatMulstrided_slice_2:output:0+lstm_cell_205/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_205/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_205_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_205/MatMul_1MatMulzeros:output:0-lstm_cell_205/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_205/addAddV2lstm_cell_205/MatMul:product:0 lstm_cell_205/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_205/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_205_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_205/BiasAddBiasAddlstm_cell_205/add:z:0,lstm_cell_205/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_205/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_205/splitSplit&lstm_cell_205/split/split_dim:output:0lstm_cell_205/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_205/SigmoidSigmoidlstm_cell_205/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_205/Sigmoid_1Sigmoidlstm_cell_205/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_205/mulMullstm_cell_205/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_205/ReluRelulstm_cell_205/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_205/mul_1Mullstm_cell_205/Sigmoid:y:0 lstm_cell_205/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_205/add_1AddV2lstm_cell_205/mul:z:0lstm_cell_205/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_205/Sigmoid_2Sigmoidlstm_cell_205/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_205/Relu_1Relulstm_cell_205/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_205/mul_2Mullstm_cell_205/Sigmoid_2:y:0"lstm_cell_205/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_205_matmul_readvariableop_resource.lstm_cell_205_matmul_1_readvariableop_resource-lstm_cell_205_biasadd_readvariableop_resource*
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
while_body_1247825*
condR
while_cond_1247824*K
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
NoOpNoOp%^lstm_cell_205/BiasAdd/ReadVariableOp$^lstm_cell_205/MatMul/ReadVariableOp&^lstm_cell_205/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_205/BiasAdd/ReadVariableOp$lstm_cell_205/BiasAdd/ReadVariableOp2J
#lstm_cell_205/MatMul/ReadVariableOp#lstm_cell_205/MatMul/ReadVariableOp2N
%lstm_cell_205/MatMul_1/ReadVariableOp%lstm_cell_205/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_137_while_cond_1249106.
*lstm_137_while_lstm_137_while_loop_counter4
0lstm_137_while_lstm_137_while_maximum_iterations
lstm_137_while_placeholder 
lstm_137_while_placeholder_1 
lstm_137_while_placeholder_2 
lstm_137_while_placeholder_30
,lstm_137_while_less_lstm_137_strided_slice_1G
Clstm_137_while_lstm_137_while_cond_1249106___redundant_placeholder0G
Clstm_137_while_lstm_137_while_cond_1249106___redundant_placeholder1G
Clstm_137_while_lstm_137_while_cond_1249106___redundant_placeholder2G
Clstm_137_while_lstm_137_while_cond_1249106___redundant_placeholder3
lstm_137_while_identity
?
lstm_137/while/LessLesslstm_137_while_placeholder,lstm_137_while_less_lstm_137_strided_slice_1*
T0*
_output_shapes
: ]
lstm_137/while/IdentityIdentitylstm_137/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_137_while_identity lstm_137/while/Identity:output:0*(
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
E__inference_lstm_136_layer_call_and_return_conditional_losses_1250429

inputs?
,lstm_cell_205_matmul_readvariableop_resource:	d?A
.lstm_cell_205_matmul_1_readvariableop_resource:	2?<
-lstm_cell_205_biasadd_readvariableop_resource:	?
identity??$lstm_cell_205/BiasAdd/ReadVariableOp?#lstm_cell_205/MatMul/ReadVariableOp?%lstm_cell_205/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_205/MatMul/ReadVariableOpReadVariableOp,lstm_cell_205_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_205/MatMulMatMulstrided_slice_2:output:0+lstm_cell_205/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_205/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_205_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_205/MatMul_1MatMulzeros:output:0-lstm_cell_205/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_205/addAddV2lstm_cell_205/MatMul:product:0 lstm_cell_205/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_205/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_205_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_205/BiasAddBiasAddlstm_cell_205/add:z:0,lstm_cell_205/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_205/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_205/splitSplit&lstm_cell_205/split/split_dim:output:0lstm_cell_205/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_205/SigmoidSigmoidlstm_cell_205/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_205/Sigmoid_1Sigmoidlstm_cell_205/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_205/mulMullstm_cell_205/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_205/ReluRelulstm_cell_205/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_205/mul_1Mullstm_cell_205/Sigmoid:y:0 lstm_cell_205/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_205/add_1AddV2lstm_cell_205/mul:z:0lstm_cell_205/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_205/Sigmoid_2Sigmoidlstm_cell_205/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_205/Relu_1Relulstm_cell_205/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_205/mul_2Mullstm_cell_205/Sigmoid_2:y:0"lstm_cell_205/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_205_matmul_readvariableop_resource.lstm_cell_205_matmul_1_readvariableop_resource-lstm_cell_205_biasadd_readvariableop_resource*
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
while_body_1250345*
condR
while_cond_1250344*K
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
NoOpNoOp%^lstm_cell_205/BiasAdd/ReadVariableOp$^lstm_cell_205/MatMul/ReadVariableOp&^lstm_cell_205/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_205/BiasAdd/ReadVariableOp$lstm_cell_205/BiasAdd/ReadVariableOp2J
#lstm_cell_205/MatMul/ReadVariableOp#lstm_cell_205/MatMul/ReadVariableOp2N
%lstm_cell_205/MatMul_1/ReadVariableOp%lstm_cell_205/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_1247444
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_206_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_206_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_206_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_206_matmul_readvariableop_resource:2(F
4while_lstm_cell_206_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_206_biasadd_readvariableop_resource:(??*while/lstm_cell_206/BiasAdd/ReadVariableOp?)while/lstm_cell_206/MatMul/ReadVariableOp?+while/lstm_cell_206/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_206/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_206_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_206/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_206/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_206_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_206/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_206/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_206/addAddV2$while/lstm_cell_206/MatMul:product:0&while/lstm_cell_206/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_206/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_206_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_206/BiasAddBiasAddwhile/lstm_cell_206/add:z:02while/lstm_cell_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_206/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_206/splitSplit,while/lstm_cell_206/split/split_dim:output:0$while/lstm_cell_206/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_206/SigmoidSigmoid"while/lstm_cell_206/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_206/Sigmoid_1Sigmoid"while/lstm_cell_206/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_206/mulMul!while/lstm_cell_206/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_206/ReluRelu"while/lstm_cell_206/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_206/mul_1Mulwhile/lstm_cell_206/Sigmoid:y:0&while/lstm_cell_206/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_206/add_1AddV2while/lstm_cell_206/mul:z:0while/lstm_cell_206/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_206/Sigmoid_2Sigmoid"while/lstm_cell_206/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_206/Relu_1Reluwhile/lstm_cell_206/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_206/mul_2Mul!while/lstm_cell_206/Sigmoid_2:y:0(while/lstm_cell_206/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_206/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_206/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_206/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_206/BiasAdd/ReadVariableOp*^while/lstm_cell_206/MatMul/ReadVariableOp,^while/lstm_cell_206/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_206_biasadd_readvariableop_resource5while_lstm_cell_206_biasadd_readvariableop_resource_0"n
4while_lstm_cell_206_matmul_1_readvariableop_resource6while_lstm_cell_206_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_206_matmul_readvariableop_resource4while_lstm_cell_206_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_206/BiasAdd/ReadVariableOp*while/lstm_cell_206/BiasAdd/ReadVariableOp2V
)while/lstm_cell_206/MatMul/ReadVariableOp)while/lstm_cell_206/MatMul/ReadVariableOp2Z
+while/lstm_cell_206/MatMul_1/ReadVariableOp+while/lstm_cell_206/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?#
?
while_body_1247001
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_206_1247025_0:2(/
while_lstm_cell_206_1247027_0:
(+
while_lstm_cell_206_1247029_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_206_1247025:2(-
while_lstm_cell_206_1247027:
()
while_lstm_cell_206_1247029:(??+while/lstm_cell_206/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_206/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_206_1247025_0while_lstm_cell_206_1247027_0while_lstm_cell_206_1247029_0*
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
J__inference_lstm_cell_206_layer_call_and_return_conditional_losses_1246942?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_206/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_206/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_206/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_206/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_206_1247025while_lstm_cell_206_1247025_0"<
while_lstm_cell_206_1247027while_lstm_cell_206_1247027_0"<
while_lstm_cell_206_1247029while_lstm_cell_206_1247029_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_206/StatefulPartitionedCall+while/lstm_cell_206/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_1249300
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_204_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_204_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_204_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_204_matmul_readvariableop_resource:	?G
4while_lstm_cell_204_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_204_biasadd_readvariableop_resource:	???*while/lstm_cell_204/BiasAdd/ReadVariableOp?)while/lstm_cell_204/MatMul/ReadVariableOp?+while/lstm_cell_204/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_204/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_204_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_204/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_204_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_204/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_204/addAddV2$while/lstm_cell_204/MatMul:product:0&while/lstm_cell_204/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_204_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_204/BiasAddBiasAddwhile/lstm_cell_204/add:z:02while/lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_204/splitSplit,while/lstm_cell_204/split/split_dim:output:0$while/lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_204/SigmoidSigmoid"while/lstm_cell_204/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_204/Sigmoid_1Sigmoid"while/lstm_cell_204/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_204/mulMul!while/lstm_cell_204/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_204/ReluRelu"while/lstm_cell_204/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_204/mul_1Mulwhile/lstm_cell_204/Sigmoid:y:0&while/lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_204/add_1AddV2while/lstm_cell_204/mul:z:0while/lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_204/Sigmoid_2Sigmoid"while/lstm_cell_204/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_204/Relu_1Reluwhile/lstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_204/mul_2Mul!while/lstm_cell_204/Sigmoid_2:y:0(while/lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_204/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_204/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_204/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_204/BiasAdd/ReadVariableOp*^while/lstm_cell_204/MatMul/ReadVariableOp,^while/lstm_cell_204/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_204_biasadd_readvariableop_resource5while_lstm_cell_204_biasadd_readvariableop_resource_0"n
4while_lstm_cell_204_matmul_1_readvariableop_resource6while_lstm_cell_204_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_204_matmul_readvariableop_resource4while_lstm_cell_204_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_204/BiasAdd/ReadVariableOp*while/lstm_cell_204/BiasAdd/ReadVariableOp2V
)while/lstm_cell_204/MatMul/ReadVariableOp)while/lstm_cell_204/MatMul/ReadVariableOp2Z
+while/lstm_cell_204/MatMul_1/ReadVariableOp+while/lstm_cell_204/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_136_layer_call_and_return_conditional_losses_1250000
inputs_0?
,lstm_cell_205_matmul_readvariableop_resource:	d?A
.lstm_cell_205_matmul_1_readvariableop_resource:	2?<
-lstm_cell_205_biasadd_readvariableop_resource:	?
identity??$lstm_cell_205/BiasAdd/ReadVariableOp?#lstm_cell_205/MatMul/ReadVariableOp?%lstm_cell_205/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_205/MatMul/ReadVariableOpReadVariableOp,lstm_cell_205_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_205/MatMulMatMulstrided_slice_2:output:0+lstm_cell_205/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_205/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_205_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_205/MatMul_1MatMulzeros:output:0-lstm_cell_205/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_205/addAddV2lstm_cell_205/MatMul:product:0 lstm_cell_205/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_205/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_205_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_205/BiasAddBiasAddlstm_cell_205/add:z:0,lstm_cell_205/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_205/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_205/splitSplit&lstm_cell_205/split/split_dim:output:0lstm_cell_205/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_205/SigmoidSigmoidlstm_cell_205/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_205/Sigmoid_1Sigmoidlstm_cell_205/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_205/mulMullstm_cell_205/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_205/ReluRelulstm_cell_205/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_205/mul_1Mullstm_cell_205/Sigmoid:y:0 lstm_cell_205/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_205/add_1AddV2lstm_cell_205/mul:z:0lstm_cell_205/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_205/Sigmoid_2Sigmoidlstm_cell_205/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_205/Relu_1Relulstm_cell_205/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_205/mul_2Mullstm_cell_205/Sigmoid_2:y:0"lstm_cell_205/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_205_matmul_readvariableop_resource.lstm_cell_205_matmul_1_readvariableop_resource-lstm_cell_205_biasadd_readvariableop_resource*
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
while_body_1249916*
condR
while_cond_1249915*K
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
NoOpNoOp%^lstm_cell_205/BiasAdd/ReadVariableOp$^lstm_cell_205/MatMul/ReadVariableOp&^lstm_cell_205/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_205/BiasAdd/ReadVariableOp$lstm_cell_205/BiasAdd/ReadVariableOp2J
#lstm_cell_205/MatMul/ReadVariableOp#lstm_cell_205/MatMul/ReadVariableOp2N
%lstm_cell_205/MatMul_1/ReadVariableOp%lstm_cell_205/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_206_layer_call_fn_1251294

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
J__inference_lstm_cell_206_layer_call_and_return_conditional_losses_1246942o
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
while_cond_1250960
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1250960___redundant_placeholder05
1while_while_cond_1250960___redundant_placeholder15
1while_while_cond_1250960___redundant_placeholder25
1while_while_cond_1250960___redundant_placeholder3
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
J__inference_sequential_45_layer_call_and_return_conditional_losses_1248224
lstm_135_input#
lstm_135_1248197:	?#
lstm_135_1248199:	d?
lstm_135_1248201:	?#
lstm_136_1248204:	d?#
lstm_136_1248206:	2?
lstm_136_1248208:	?"
lstm_137_1248211:2("
lstm_137_1248213:
(
lstm_137_1248215:("
dense_45_1248218:

dense_45_1248220:
identity?? dense_45/StatefulPartitionedCall? lstm_135/StatefulPartitionedCall? lstm_136/StatefulPartitionedCall? lstm_137/StatefulPartitionedCall?
 lstm_135/StatefulPartitionedCallStatefulPartitionedCalllstm_135_inputlstm_135_1248197lstm_135_1248199lstm_135_1248201*
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
E__inference_lstm_135_layer_call_and_return_conditional_losses_1247228?
 lstm_136/StatefulPartitionedCallStatefulPartitionedCall)lstm_135/StatefulPartitionedCall:output:0lstm_136_1248204lstm_136_1248206lstm_136_1248208*
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
E__inference_lstm_136_layer_call_and_return_conditional_losses_1247378?
 lstm_137/StatefulPartitionedCallStatefulPartitionedCall)lstm_136/StatefulPartitionedCall:output:0lstm_137_1248211lstm_137_1248213lstm_137_1248215*
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
E__inference_lstm_137_layer_call_and_return_conditional_losses_1247528?
 dense_45/StatefulPartitionedCallStatefulPartitionedCall)lstm_137/StatefulPartitionedCall:output:0dense_45_1248218dense_45_1248220*
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
E__inference_dense_45_layer_call_and_return_conditional_losses_1247546x
IdentityIdentity)dense_45/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_45/StatefulPartitionedCall!^lstm_135/StatefulPartitionedCall!^lstm_136/StatefulPartitionedCall!^lstm_137/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2D
 lstm_135/StatefulPartitionedCall lstm_135/StatefulPartitionedCall2D
 lstm_136/StatefulPartitionedCall lstm_136/StatefulPartitionedCall2D
 lstm_137/StatefulPartitionedCall lstm_137/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_135_input
?#
?
while_body_1246651
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_205_1246675_0:	d?0
while_lstm_cell_205_1246677_0:	2?,
while_lstm_cell_205_1246679_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_205_1246675:	d?.
while_lstm_cell_205_1246677:	2?*
while_lstm_cell_205_1246679:	???+while/lstm_cell_205/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_205/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_205_1246675_0while_lstm_cell_205_1246677_0while_lstm_cell_205_1246679_0*
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
J__inference_lstm_cell_205_layer_call_and_return_conditional_losses_1246592?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_205/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_205/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_205/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_205/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_205_1246675while_lstm_cell_205_1246675_0"<
while_lstm_cell_205_1246677while_lstm_cell_205_1246677_0"<
while_lstm_cell_205_1246679while_lstm_cell_205_1246679_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_205/StatefulPartitionedCall+while/lstm_cell_205/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_1247294
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_205_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_205_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_205_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_205_matmul_readvariableop_resource:	d?G
4while_lstm_cell_205_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_205_biasadd_readvariableop_resource:	???*while/lstm_cell_205/BiasAdd/ReadVariableOp?)while/lstm_cell_205/MatMul/ReadVariableOp?+while/lstm_cell_205/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_205/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_205_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_205/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_205/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_205/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_205_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_205/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_205/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_205/addAddV2$while/lstm_cell_205/MatMul:product:0&while/lstm_cell_205/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_205/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_205_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_205/BiasAddBiasAddwhile/lstm_cell_205/add:z:02while/lstm_cell_205/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_205/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_205/splitSplit,while/lstm_cell_205/split/split_dim:output:0$while/lstm_cell_205/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_205/SigmoidSigmoid"while/lstm_cell_205/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_205/Sigmoid_1Sigmoid"while/lstm_cell_205/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_205/mulMul!while/lstm_cell_205/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_205/ReluRelu"while/lstm_cell_205/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_205/mul_1Mulwhile/lstm_cell_205/Sigmoid:y:0&while/lstm_cell_205/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_205/add_1AddV2while/lstm_cell_205/mul:z:0while/lstm_cell_205/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_205/Sigmoid_2Sigmoid"while/lstm_cell_205/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_205/Relu_1Reluwhile/lstm_cell_205/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_205/mul_2Mul!while/lstm_cell_205/Sigmoid_2:y:0(while/lstm_cell_205/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_205/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_205/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_205/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_205/BiasAdd/ReadVariableOp*^while/lstm_cell_205/MatMul/ReadVariableOp,^while/lstm_cell_205/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_205_biasadd_readvariableop_resource5while_lstm_cell_205_biasadd_readvariableop_resource_0"n
4while_lstm_cell_205_matmul_1_readvariableop_resource6while_lstm_cell_205_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_205_matmul_readvariableop_resource4while_lstm_cell_205_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_205/BiasAdd/ReadVariableOp*while/lstm_cell_205/BiasAdd/ReadVariableOp2V
)while/lstm_cell_205/MatMul/ReadVariableOp)while/lstm_cell_205/MatMul/ReadVariableOp2Z
+while/lstm_cell_205/MatMul_1/ReadVariableOp+while/lstm_cell_205/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_137_layer_call_fn_1250440
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
E__inference_lstm_137_layer_call_and_return_conditional_losses_1246879o
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
while_body_1249916
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_205_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_205_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_205_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_205_matmul_readvariableop_resource:	d?G
4while_lstm_cell_205_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_205_biasadd_readvariableop_resource:	???*while/lstm_cell_205/BiasAdd/ReadVariableOp?)while/lstm_cell_205/MatMul/ReadVariableOp?+while/lstm_cell_205/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_205/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_205_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_205/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_205/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_205/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_205_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_205/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_205/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_205/addAddV2$while/lstm_cell_205/MatMul:product:0&while/lstm_cell_205/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_205/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_205_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_205/BiasAddBiasAddwhile/lstm_cell_205/add:z:02while/lstm_cell_205/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_205/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_205/splitSplit,while/lstm_cell_205/split/split_dim:output:0$while/lstm_cell_205/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_205/SigmoidSigmoid"while/lstm_cell_205/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_205/Sigmoid_1Sigmoid"while/lstm_cell_205/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_205/mulMul!while/lstm_cell_205/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_205/ReluRelu"while/lstm_cell_205/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_205/mul_1Mulwhile/lstm_cell_205/Sigmoid:y:0&while/lstm_cell_205/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_205/add_1AddV2while/lstm_cell_205/mul:z:0while/lstm_cell_205/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_205/Sigmoid_2Sigmoid"while/lstm_cell_205/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_205/Relu_1Reluwhile/lstm_cell_205/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_205/mul_2Mul!while/lstm_cell_205/Sigmoid_2:y:0(while/lstm_cell_205/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_205/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_205/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_205/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_205/BiasAdd/ReadVariableOp*^while/lstm_cell_205/MatMul/ReadVariableOp,^while/lstm_cell_205/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_205_biasadd_readvariableop_resource5while_lstm_cell_205_biasadd_readvariableop_resource_0"n
4while_lstm_cell_205_matmul_1_readvariableop_resource6while_lstm_cell_205_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_205_matmul_readvariableop_resource4while_lstm_cell_205_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_205/BiasAdd/ReadVariableOp*while/lstm_cell_205/BiasAdd/ReadVariableOp2V
)while/lstm_cell_205/MatMul/ReadVariableOp)while/lstm_cell_205/MatMul/ReadVariableOp2Z
+while/lstm_cell_205/MatMul_1/ReadVariableOp+while/lstm_cell_205/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1249442
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1249442___redundant_placeholder05
1while_while_cond_1249442___redundant_placeholder15
1while_while_cond_1249442___redundant_placeholder25
1while_while_cond_1249442___redundant_placeholder3
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
)sequential_45_lstm_135_while_body_1245661J
Fsequential_45_lstm_135_while_sequential_45_lstm_135_while_loop_counterP
Lsequential_45_lstm_135_while_sequential_45_lstm_135_while_maximum_iterations,
(sequential_45_lstm_135_while_placeholder.
*sequential_45_lstm_135_while_placeholder_1.
*sequential_45_lstm_135_while_placeholder_2.
*sequential_45_lstm_135_while_placeholder_3I
Esequential_45_lstm_135_while_sequential_45_lstm_135_strided_slice_1_0?
?sequential_45_lstm_135_while_tensorarrayv2read_tensorlistgetitem_sequential_45_lstm_135_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_45_lstm_135_while_lstm_cell_204_matmul_readvariableop_resource_0:	?`
Msequential_45_lstm_135_while_lstm_cell_204_matmul_1_readvariableop_resource_0:	d?[
Lsequential_45_lstm_135_while_lstm_cell_204_biasadd_readvariableop_resource_0:	?)
%sequential_45_lstm_135_while_identity+
'sequential_45_lstm_135_while_identity_1+
'sequential_45_lstm_135_while_identity_2+
'sequential_45_lstm_135_while_identity_3+
'sequential_45_lstm_135_while_identity_4+
'sequential_45_lstm_135_while_identity_5G
Csequential_45_lstm_135_while_sequential_45_lstm_135_strided_slice_1?
sequential_45_lstm_135_while_tensorarrayv2read_tensorlistgetitem_sequential_45_lstm_135_tensorarrayunstack_tensorlistfromtensor\
Isequential_45_lstm_135_while_lstm_cell_204_matmul_readvariableop_resource:	?^
Ksequential_45_lstm_135_while_lstm_cell_204_matmul_1_readvariableop_resource:	d?Y
Jsequential_45_lstm_135_while_lstm_cell_204_biasadd_readvariableop_resource:	???Asequential_45/lstm_135/while/lstm_cell_204/BiasAdd/ReadVariableOp?@sequential_45/lstm_135/while/lstm_cell_204/MatMul/ReadVariableOp?Bsequential_45/lstm_135/while/lstm_cell_204/MatMul_1/ReadVariableOp?
Nsequential_45/lstm_135/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_45/lstm_135/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_45_lstm_135_while_tensorarrayv2read_tensorlistgetitem_sequential_45_lstm_135_tensorarrayunstack_tensorlistfromtensor_0(sequential_45_lstm_135_while_placeholderWsequential_45/lstm_135/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_45/lstm_135/while/lstm_cell_204/MatMul/ReadVariableOpReadVariableOpKsequential_45_lstm_135_while_lstm_cell_204_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_45/lstm_135/while/lstm_cell_204/MatMulMatMulGsequential_45/lstm_135/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_45/lstm_135/while/lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_45/lstm_135/while/lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOpMsequential_45_lstm_135_while_lstm_cell_204_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_45/lstm_135/while/lstm_cell_204/MatMul_1MatMul*sequential_45_lstm_135_while_placeholder_2Jsequential_45/lstm_135/while/lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_45/lstm_135/while/lstm_cell_204/addAddV2;sequential_45/lstm_135/while/lstm_cell_204/MatMul:product:0=sequential_45/lstm_135/while/lstm_cell_204/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_45/lstm_135/while/lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOpLsequential_45_lstm_135_while_lstm_cell_204_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_45/lstm_135/while/lstm_cell_204/BiasAddBiasAdd2sequential_45/lstm_135/while/lstm_cell_204/add:z:0Isequential_45/lstm_135/while/lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_45/lstm_135/while/lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_45/lstm_135/while/lstm_cell_204/splitSplitCsequential_45/lstm_135/while/lstm_cell_204/split/split_dim:output:0;sequential_45/lstm_135/while/lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_45/lstm_135/while/lstm_cell_204/SigmoidSigmoid9sequential_45/lstm_135/while/lstm_cell_204/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_45/lstm_135/while/lstm_cell_204/Sigmoid_1Sigmoid9sequential_45/lstm_135/while/lstm_cell_204/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_45/lstm_135/while/lstm_cell_204/mulMul8sequential_45/lstm_135/while/lstm_cell_204/Sigmoid_1:y:0*sequential_45_lstm_135_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_45/lstm_135/while/lstm_cell_204/ReluRelu9sequential_45/lstm_135/while/lstm_cell_204/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_45/lstm_135/while/lstm_cell_204/mul_1Mul6sequential_45/lstm_135/while/lstm_cell_204/Sigmoid:y:0=sequential_45/lstm_135/while/lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_45/lstm_135/while/lstm_cell_204/add_1AddV22sequential_45/lstm_135/while/lstm_cell_204/mul:z:04sequential_45/lstm_135/while/lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_45/lstm_135/while/lstm_cell_204/Sigmoid_2Sigmoid9sequential_45/lstm_135/while/lstm_cell_204/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_45/lstm_135/while/lstm_cell_204/Relu_1Relu4sequential_45/lstm_135/while/lstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_45/lstm_135/while/lstm_cell_204/mul_2Mul8sequential_45/lstm_135/while/lstm_cell_204/Sigmoid_2:y:0?sequential_45/lstm_135/while/lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_45/lstm_135/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_45_lstm_135_while_placeholder_1(sequential_45_lstm_135_while_placeholder4sequential_45/lstm_135/while/lstm_cell_204/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_45/lstm_135/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_45/lstm_135/while/addAddV2(sequential_45_lstm_135_while_placeholder+sequential_45/lstm_135/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_45/lstm_135/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_45/lstm_135/while/add_1AddV2Fsequential_45_lstm_135_while_sequential_45_lstm_135_while_loop_counter-sequential_45/lstm_135/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_45/lstm_135/while/IdentityIdentity&sequential_45/lstm_135/while/add_1:z:0"^sequential_45/lstm_135/while/NoOp*
T0*
_output_shapes
: ?
'sequential_45/lstm_135/while/Identity_1IdentityLsequential_45_lstm_135_while_sequential_45_lstm_135_while_maximum_iterations"^sequential_45/lstm_135/while/NoOp*
T0*
_output_shapes
: ?
'sequential_45/lstm_135/while/Identity_2Identity$sequential_45/lstm_135/while/add:z:0"^sequential_45/lstm_135/while/NoOp*
T0*
_output_shapes
: ?
'sequential_45/lstm_135/while/Identity_3IdentityQsequential_45/lstm_135/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_45/lstm_135/while/NoOp*
T0*
_output_shapes
: ?
'sequential_45/lstm_135/while/Identity_4Identity4sequential_45/lstm_135/while/lstm_cell_204/mul_2:z:0"^sequential_45/lstm_135/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_45/lstm_135/while/Identity_5Identity4sequential_45/lstm_135/while/lstm_cell_204/add_1:z:0"^sequential_45/lstm_135/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_45/lstm_135/while/NoOpNoOpB^sequential_45/lstm_135/while/lstm_cell_204/BiasAdd/ReadVariableOpA^sequential_45/lstm_135/while/lstm_cell_204/MatMul/ReadVariableOpC^sequential_45/lstm_135/while/lstm_cell_204/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_45_lstm_135_while_identity.sequential_45/lstm_135/while/Identity:output:0"[
'sequential_45_lstm_135_while_identity_10sequential_45/lstm_135/while/Identity_1:output:0"[
'sequential_45_lstm_135_while_identity_20sequential_45/lstm_135/while/Identity_2:output:0"[
'sequential_45_lstm_135_while_identity_30sequential_45/lstm_135/while/Identity_3:output:0"[
'sequential_45_lstm_135_while_identity_40sequential_45/lstm_135/while/Identity_4:output:0"[
'sequential_45_lstm_135_while_identity_50sequential_45/lstm_135/while/Identity_5:output:0"?
Jsequential_45_lstm_135_while_lstm_cell_204_biasadd_readvariableop_resourceLsequential_45_lstm_135_while_lstm_cell_204_biasadd_readvariableop_resource_0"?
Ksequential_45_lstm_135_while_lstm_cell_204_matmul_1_readvariableop_resourceMsequential_45_lstm_135_while_lstm_cell_204_matmul_1_readvariableop_resource_0"?
Isequential_45_lstm_135_while_lstm_cell_204_matmul_readvariableop_resourceKsequential_45_lstm_135_while_lstm_cell_204_matmul_readvariableop_resource_0"?
Csequential_45_lstm_135_while_sequential_45_lstm_135_strided_slice_1Esequential_45_lstm_135_while_sequential_45_lstm_135_strided_slice_1_0"?
sequential_45_lstm_135_while_tensorarrayv2read_tensorlistgetitem_sequential_45_lstm_135_tensorarrayunstack_tensorlistfromtensor?sequential_45_lstm_135_while_tensorarrayv2read_tensorlistgetitem_sequential_45_lstm_135_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_45/lstm_135/while/lstm_cell_204/BiasAdd/ReadVariableOpAsequential_45/lstm_135/while/lstm_cell_204/BiasAdd/ReadVariableOp2?
@sequential_45/lstm_135/while/lstm_cell_204/MatMul/ReadVariableOp@sequential_45/lstm_135/while/lstm_cell_204/MatMul/ReadVariableOp2?
Bsequential_45/lstm_135/while/lstm_cell_204/MatMul_1/ReadVariableOpBsequential_45/lstm_135/while/lstm_cell_204/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_136_layer_call_fn_1249824
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
E__inference_lstm_136_layer_call_and_return_conditional_losses_1246529|
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
while_cond_1249915
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1249915___redundant_placeholder05
1while_while_cond_1249915___redundant_placeholder15
1while_while_cond_1249915___redundant_placeholder25
1while_while_cond_1249915___redundant_placeholder3
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
while_cond_1250674
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1250674___redundant_placeholder05
1while_while_cond_1250674___redundant_placeholder15
1while_while_cond_1250674___redundant_placeholder25
1while_while_cond_1250674___redundant_placeholder3
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
J__inference_sequential_45_layer_call_and_return_conditional_losses_1249197

inputsH
5lstm_135_lstm_cell_204_matmul_readvariableop_resource:	?J
7lstm_135_lstm_cell_204_matmul_1_readvariableop_resource:	d?E
6lstm_135_lstm_cell_204_biasadd_readvariableop_resource:	?H
5lstm_136_lstm_cell_205_matmul_readvariableop_resource:	d?J
7lstm_136_lstm_cell_205_matmul_1_readvariableop_resource:	2?E
6lstm_136_lstm_cell_205_biasadd_readvariableop_resource:	?G
5lstm_137_lstm_cell_206_matmul_readvariableop_resource:2(I
7lstm_137_lstm_cell_206_matmul_1_readvariableop_resource:
(D
6lstm_137_lstm_cell_206_biasadd_readvariableop_resource:(9
'dense_45_matmul_readvariableop_resource:
6
(dense_45_biasadd_readvariableop_resource:
identity??dense_45/BiasAdd/ReadVariableOp?dense_45/MatMul/ReadVariableOp?-lstm_135/lstm_cell_204/BiasAdd/ReadVariableOp?,lstm_135/lstm_cell_204/MatMul/ReadVariableOp?.lstm_135/lstm_cell_204/MatMul_1/ReadVariableOp?lstm_135/while?-lstm_136/lstm_cell_205/BiasAdd/ReadVariableOp?,lstm_136/lstm_cell_205/MatMul/ReadVariableOp?.lstm_136/lstm_cell_205/MatMul_1/ReadVariableOp?lstm_136/while?-lstm_137/lstm_cell_206/BiasAdd/ReadVariableOp?,lstm_137/lstm_cell_206/MatMul/ReadVariableOp?.lstm_137/lstm_cell_206/MatMul_1/ReadVariableOp?lstm_137/whileD
lstm_135/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_135/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_135/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_135/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_135/strided_sliceStridedSlicelstm_135/Shape:output:0%lstm_135/strided_slice/stack:output:0'lstm_135/strided_slice/stack_1:output:0'lstm_135/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_135/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_135/zeros/packedPacklstm_135/strided_slice:output:0 lstm_135/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_135/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_135/zerosFilllstm_135/zeros/packed:output:0lstm_135/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_135/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_135/zeros_1/packedPacklstm_135/strided_slice:output:0"lstm_135/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_135/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_135/zeros_1Fill lstm_135/zeros_1/packed:output:0lstm_135/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_135/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_135/transpose	Transposeinputs lstm_135/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_135/Shape_1Shapelstm_135/transpose:y:0*
T0*
_output_shapes
:h
lstm_135/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_135/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_135/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_135/strided_slice_1StridedSlicelstm_135/Shape_1:output:0'lstm_135/strided_slice_1/stack:output:0)lstm_135/strided_slice_1/stack_1:output:0)lstm_135/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_135/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_135/TensorArrayV2TensorListReserve-lstm_135/TensorArrayV2/element_shape:output:0!lstm_135/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_135/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_135/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_135/transpose:y:0Glstm_135/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_135/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_135/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_135/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_135/strided_slice_2StridedSlicelstm_135/transpose:y:0'lstm_135/strided_slice_2/stack:output:0)lstm_135/strided_slice_2/stack_1:output:0)lstm_135/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_135/lstm_cell_204/MatMul/ReadVariableOpReadVariableOp5lstm_135_lstm_cell_204_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_135/lstm_cell_204/MatMulMatMul!lstm_135/strided_slice_2:output:04lstm_135/lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_135/lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp7lstm_135_lstm_cell_204_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_135/lstm_cell_204/MatMul_1MatMullstm_135/zeros:output:06lstm_135/lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_135/lstm_cell_204/addAddV2'lstm_135/lstm_cell_204/MatMul:product:0)lstm_135/lstm_cell_204/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_135/lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp6lstm_135_lstm_cell_204_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_135/lstm_cell_204/BiasAddBiasAddlstm_135/lstm_cell_204/add:z:05lstm_135/lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_135/lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_135/lstm_cell_204/splitSplit/lstm_135/lstm_cell_204/split/split_dim:output:0'lstm_135/lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_135/lstm_cell_204/SigmoidSigmoid%lstm_135/lstm_cell_204/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_135/lstm_cell_204/Sigmoid_1Sigmoid%lstm_135/lstm_cell_204/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_135/lstm_cell_204/mulMul$lstm_135/lstm_cell_204/Sigmoid_1:y:0lstm_135/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_135/lstm_cell_204/ReluRelu%lstm_135/lstm_cell_204/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_135/lstm_cell_204/mul_1Mul"lstm_135/lstm_cell_204/Sigmoid:y:0)lstm_135/lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_135/lstm_cell_204/add_1AddV2lstm_135/lstm_cell_204/mul:z:0 lstm_135/lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_135/lstm_cell_204/Sigmoid_2Sigmoid%lstm_135/lstm_cell_204/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_135/lstm_cell_204/Relu_1Relu lstm_135/lstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_135/lstm_cell_204/mul_2Mul$lstm_135/lstm_cell_204/Sigmoid_2:y:0+lstm_135/lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_135/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_135/TensorArrayV2_1TensorListReserve/lstm_135/TensorArrayV2_1/element_shape:output:0!lstm_135/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_135/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_135/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_135/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_135/whileWhile$lstm_135/while/loop_counter:output:0*lstm_135/while/maximum_iterations:output:0lstm_135/time:output:0!lstm_135/TensorArrayV2_1:handle:0lstm_135/zeros:output:0lstm_135/zeros_1:output:0!lstm_135/strided_slice_1:output:0@lstm_135/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_135_lstm_cell_204_matmul_readvariableop_resource7lstm_135_lstm_cell_204_matmul_1_readvariableop_resource6lstm_135_lstm_cell_204_biasadd_readvariableop_resource*
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
lstm_135_while_body_1248829*'
condR
lstm_135_while_cond_1248828*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_135/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_135/TensorArrayV2Stack/TensorListStackTensorListStacklstm_135/while:output:3Blstm_135/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_135/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_135/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_135/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_135/strided_slice_3StridedSlice4lstm_135/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_135/strided_slice_3/stack:output:0)lstm_135/strided_slice_3/stack_1:output:0)lstm_135/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_135/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_135/transpose_1	Transpose4lstm_135/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_135/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_135/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_136/ShapeShapelstm_135/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_136/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_136/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_136/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_136/strided_sliceStridedSlicelstm_136/Shape:output:0%lstm_136/strided_slice/stack:output:0'lstm_136/strided_slice/stack_1:output:0'lstm_136/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_136/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_136/zeros/packedPacklstm_136/strided_slice:output:0 lstm_136/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_136/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_136/zerosFilllstm_136/zeros/packed:output:0lstm_136/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_136/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_136/zeros_1/packedPacklstm_136/strided_slice:output:0"lstm_136/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_136/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_136/zeros_1Fill lstm_136/zeros_1/packed:output:0lstm_136/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_136/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_136/transpose	Transposelstm_135/transpose_1:y:0 lstm_136/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_136/Shape_1Shapelstm_136/transpose:y:0*
T0*
_output_shapes
:h
lstm_136/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_136/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_136/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_136/strided_slice_1StridedSlicelstm_136/Shape_1:output:0'lstm_136/strided_slice_1/stack:output:0)lstm_136/strided_slice_1/stack_1:output:0)lstm_136/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_136/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_136/TensorArrayV2TensorListReserve-lstm_136/TensorArrayV2/element_shape:output:0!lstm_136/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_136/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_136/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_136/transpose:y:0Glstm_136/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_136/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_136/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_136/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_136/strided_slice_2StridedSlicelstm_136/transpose:y:0'lstm_136/strided_slice_2/stack:output:0)lstm_136/strided_slice_2/stack_1:output:0)lstm_136/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_136/lstm_cell_205/MatMul/ReadVariableOpReadVariableOp5lstm_136_lstm_cell_205_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_136/lstm_cell_205/MatMulMatMul!lstm_136/strided_slice_2:output:04lstm_136/lstm_cell_205/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_136/lstm_cell_205/MatMul_1/ReadVariableOpReadVariableOp7lstm_136_lstm_cell_205_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_136/lstm_cell_205/MatMul_1MatMullstm_136/zeros:output:06lstm_136/lstm_cell_205/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_136/lstm_cell_205/addAddV2'lstm_136/lstm_cell_205/MatMul:product:0)lstm_136/lstm_cell_205/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_136/lstm_cell_205/BiasAdd/ReadVariableOpReadVariableOp6lstm_136_lstm_cell_205_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_136/lstm_cell_205/BiasAddBiasAddlstm_136/lstm_cell_205/add:z:05lstm_136/lstm_cell_205/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_136/lstm_cell_205/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_136/lstm_cell_205/splitSplit/lstm_136/lstm_cell_205/split/split_dim:output:0'lstm_136/lstm_cell_205/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_136/lstm_cell_205/SigmoidSigmoid%lstm_136/lstm_cell_205/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_136/lstm_cell_205/Sigmoid_1Sigmoid%lstm_136/lstm_cell_205/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_136/lstm_cell_205/mulMul$lstm_136/lstm_cell_205/Sigmoid_1:y:0lstm_136/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_136/lstm_cell_205/ReluRelu%lstm_136/lstm_cell_205/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_136/lstm_cell_205/mul_1Mul"lstm_136/lstm_cell_205/Sigmoid:y:0)lstm_136/lstm_cell_205/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_136/lstm_cell_205/add_1AddV2lstm_136/lstm_cell_205/mul:z:0 lstm_136/lstm_cell_205/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_136/lstm_cell_205/Sigmoid_2Sigmoid%lstm_136/lstm_cell_205/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_136/lstm_cell_205/Relu_1Relu lstm_136/lstm_cell_205/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_136/lstm_cell_205/mul_2Mul$lstm_136/lstm_cell_205/Sigmoid_2:y:0+lstm_136/lstm_cell_205/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_136/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_136/TensorArrayV2_1TensorListReserve/lstm_136/TensorArrayV2_1/element_shape:output:0!lstm_136/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_136/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_136/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_136/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_136/whileWhile$lstm_136/while/loop_counter:output:0*lstm_136/while/maximum_iterations:output:0lstm_136/time:output:0!lstm_136/TensorArrayV2_1:handle:0lstm_136/zeros:output:0lstm_136/zeros_1:output:0!lstm_136/strided_slice_1:output:0@lstm_136/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_136_lstm_cell_205_matmul_readvariableop_resource7lstm_136_lstm_cell_205_matmul_1_readvariableop_resource6lstm_136_lstm_cell_205_biasadd_readvariableop_resource*
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
lstm_136_while_body_1248968*'
condR
lstm_136_while_cond_1248967*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_136/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_136/TensorArrayV2Stack/TensorListStackTensorListStacklstm_136/while:output:3Blstm_136/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_136/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_136/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_136/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_136/strided_slice_3StridedSlice4lstm_136/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_136/strided_slice_3/stack:output:0)lstm_136/strided_slice_3/stack_1:output:0)lstm_136/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_136/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_136/transpose_1	Transpose4lstm_136/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_136/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_136/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_137/ShapeShapelstm_136/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_137/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_137/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_137/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_137/strided_sliceStridedSlicelstm_137/Shape:output:0%lstm_137/strided_slice/stack:output:0'lstm_137/strided_slice/stack_1:output:0'lstm_137/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_137/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_137/zeros/packedPacklstm_137/strided_slice:output:0 lstm_137/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_137/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_137/zerosFilllstm_137/zeros/packed:output:0lstm_137/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_137/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_137/zeros_1/packedPacklstm_137/strided_slice:output:0"lstm_137/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_137/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_137/zeros_1Fill lstm_137/zeros_1/packed:output:0lstm_137/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_137/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_137/transpose	Transposelstm_136/transpose_1:y:0 lstm_137/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_137/Shape_1Shapelstm_137/transpose:y:0*
T0*
_output_shapes
:h
lstm_137/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_137/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_137/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_137/strided_slice_1StridedSlicelstm_137/Shape_1:output:0'lstm_137/strided_slice_1/stack:output:0)lstm_137/strided_slice_1/stack_1:output:0)lstm_137/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_137/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_137/TensorArrayV2TensorListReserve-lstm_137/TensorArrayV2/element_shape:output:0!lstm_137/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_137/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_137/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_137/transpose:y:0Glstm_137/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_137/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_137/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_137/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_137/strided_slice_2StridedSlicelstm_137/transpose:y:0'lstm_137/strided_slice_2/stack:output:0)lstm_137/strided_slice_2/stack_1:output:0)lstm_137/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_137/lstm_cell_206/MatMul/ReadVariableOpReadVariableOp5lstm_137_lstm_cell_206_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_137/lstm_cell_206/MatMulMatMul!lstm_137/strided_slice_2:output:04lstm_137/lstm_cell_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_137/lstm_cell_206/MatMul_1/ReadVariableOpReadVariableOp7lstm_137_lstm_cell_206_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_137/lstm_cell_206/MatMul_1MatMullstm_137/zeros:output:06lstm_137/lstm_cell_206/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_137/lstm_cell_206/addAddV2'lstm_137/lstm_cell_206/MatMul:product:0)lstm_137/lstm_cell_206/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_137/lstm_cell_206/BiasAdd/ReadVariableOpReadVariableOp6lstm_137_lstm_cell_206_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_137/lstm_cell_206/BiasAddBiasAddlstm_137/lstm_cell_206/add:z:05lstm_137/lstm_cell_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_137/lstm_cell_206/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_137/lstm_cell_206/splitSplit/lstm_137/lstm_cell_206/split/split_dim:output:0'lstm_137/lstm_cell_206/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_137/lstm_cell_206/SigmoidSigmoid%lstm_137/lstm_cell_206/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_137/lstm_cell_206/Sigmoid_1Sigmoid%lstm_137/lstm_cell_206/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_137/lstm_cell_206/mulMul$lstm_137/lstm_cell_206/Sigmoid_1:y:0lstm_137/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_137/lstm_cell_206/ReluRelu%lstm_137/lstm_cell_206/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_137/lstm_cell_206/mul_1Mul"lstm_137/lstm_cell_206/Sigmoid:y:0)lstm_137/lstm_cell_206/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_137/lstm_cell_206/add_1AddV2lstm_137/lstm_cell_206/mul:z:0 lstm_137/lstm_cell_206/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_137/lstm_cell_206/Sigmoid_2Sigmoid%lstm_137/lstm_cell_206/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_137/lstm_cell_206/Relu_1Relu lstm_137/lstm_cell_206/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_137/lstm_cell_206/mul_2Mul$lstm_137/lstm_cell_206/Sigmoid_2:y:0+lstm_137/lstm_cell_206/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_137/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_137/TensorArrayV2_1TensorListReserve/lstm_137/TensorArrayV2_1/element_shape:output:0!lstm_137/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_137/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_137/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_137/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_137/whileWhile$lstm_137/while/loop_counter:output:0*lstm_137/while/maximum_iterations:output:0lstm_137/time:output:0!lstm_137/TensorArrayV2_1:handle:0lstm_137/zeros:output:0lstm_137/zeros_1:output:0!lstm_137/strided_slice_1:output:0@lstm_137/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_137_lstm_cell_206_matmul_readvariableop_resource7lstm_137_lstm_cell_206_matmul_1_readvariableop_resource6lstm_137_lstm_cell_206_biasadd_readvariableop_resource*
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
lstm_137_while_body_1249107*'
condR
lstm_137_while_cond_1249106*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_137/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_137/TensorArrayV2Stack/TensorListStackTensorListStacklstm_137/while:output:3Blstm_137/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_137/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_137/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_137/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_137/strided_slice_3StridedSlice4lstm_137/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_137/strided_slice_3/stack:output:0)lstm_137/strided_slice_3/stack_1:output:0)lstm_137/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_137/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_137/transpose_1	Transpose4lstm_137/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_137/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_137/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_45/MatMul/ReadVariableOpReadVariableOp'dense_45_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_45/MatMulMatMul!lstm_137/strided_slice_3:output:0&dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_45/BiasAdd/ReadVariableOpReadVariableOp(dense_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_45/BiasAddBiasAdddense_45/MatMul:product:0'dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_45/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_45/BiasAdd/ReadVariableOp^dense_45/MatMul/ReadVariableOp.^lstm_135/lstm_cell_204/BiasAdd/ReadVariableOp-^lstm_135/lstm_cell_204/MatMul/ReadVariableOp/^lstm_135/lstm_cell_204/MatMul_1/ReadVariableOp^lstm_135/while.^lstm_136/lstm_cell_205/BiasAdd/ReadVariableOp-^lstm_136/lstm_cell_205/MatMul/ReadVariableOp/^lstm_136/lstm_cell_205/MatMul_1/ReadVariableOp^lstm_136/while.^lstm_137/lstm_cell_206/BiasAdd/ReadVariableOp-^lstm_137/lstm_cell_206/MatMul/ReadVariableOp/^lstm_137/lstm_cell_206/MatMul_1/ReadVariableOp^lstm_137/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_45/BiasAdd/ReadVariableOpdense_45/BiasAdd/ReadVariableOp2@
dense_45/MatMul/ReadVariableOpdense_45/MatMul/ReadVariableOp2^
-lstm_135/lstm_cell_204/BiasAdd/ReadVariableOp-lstm_135/lstm_cell_204/BiasAdd/ReadVariableOp2\
,lstm_135/lstm_cell_204/MatMul/ReadVariableOp,lstm_135/lstm_cell_204/MatMul/ReadVariableOp2`
.lstm_135/lstm_cell_204/MatMul_1/ReadVariableOp.lstm_135/lstm_cell_204/MatMul_1/ReadVariableOp2 
lstm_135/whilelstm_135/while2^
-lstm_136/lstm_cell_205/BiasAdd/ReadVariableOp-lstm_136/lstm_cell_205/BiasAdd/ReadVariableOp2\
,lstm_136/lstm_cell_205/MatMul/ReadVariableOp,lstm_136/lstm_cell_205/MatMul/ReadVariableOp2`
.lstm_136/lstm_cell_205/MatMul_1/ReadVariableOp.lstm_136/lstm_cell_205/MatMul_1/ReadVariableOp2 
lstm_136/whilelstm_136/while2^
-lstm_137/lstm_cell_206/BiasAdd/ReadVariableOp-lstm_137/lstm_cell_206/BiasAdd/ReadVariableOp2\
,lstm_137/lstm_cell_206/MatMul/ReadVariableOp,lstm_137/lstm_cell_206/MatMul/ReadVariableOp2`
.lstm_137/lstm_cell_206/MatMul_1/ReadVariableOp.lstm_137/lstm_cell_206/MatMul_1/ReadVariableOp2 
lstm_137/whilelstm_137/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_137_layer_call_and_return_conditional_losses_1247070

inputs'
lstm_cell_206_1246988:2('
lstm_cell_206_1246990:
(#
lstm_cell_206_1246992:(
identity??%lstm_cell_206/StatefulPartitionedCall?while;
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
%lstm_cell_206/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_206_1246988lstm_cell_206_1246990lstm_cell_206_1246992*
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
J__inference_lstm_cell_206_layer_call_and_return_conditional_losses_1246942n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_206_1246988lstm_cell_206_1246990lstm_cell_206_1246992*
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
while_body_1247001*
condR
while_cond_1247000*K
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
NoOpNoOp&^lstm_cell_206/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_206/StatefulPartitionedCall%lstm_cell_206/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_136_layer_call_and_return_conditional_losses_1250143
inputs_0?
,lstm_cell_205_matmul_readvariableop_resource:	d?A
.lstm_cell_205_matmul_1_readvariableop_resource:	2?<
-lstm_cell_205_biasadd_readvariableop_resource:	?
identity??$lstm_cell_205/BiasAdd/ReadVariableOp?#lstm_cell_205/MatMul/ReadVariableOp?%lstm_cell_205/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_205/MatMul/ReadVariableOpReadVariableOp,lstm_cell_205_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_205/MatMulMatMulstrided_slice_2:output:0+lstm_cell_205/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_205/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_205_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_205/MatMul_1MatMulzeros:output:0-lstm_cell_205/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_205/addAddV2lstm_cell_205/MatMul:product:0 lstm_cell_205/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_205/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_205_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_205/BiasAddBiasAddlstm_cell_205/add:z:0,lstm_cell_205/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_205/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_205/splitSplit&lstm_cell_205/split/split_dim:output:0lstm_cell_205/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_205/SigmoidSigmoidlstm_cell_205/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_205/Sigmoid_1Sigmoidlstm_cell_205/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_205/mulMullstm_cell_205/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_205/ReluRelulstm_cell_205/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_205/mul_1Mullstm_cell_205/Sigmoid:y:0 lstm_cell_205/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_205/add_1AddV2lstm_cell_205/mul:z:0lstm_cell_205/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_205/Sigmoid_2Sigmoidlstm_cell_205/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_205/Relu_1Relulstm_cell_205/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_205/mul_2Mullstm_cell_205/Sigmoid_2:y:0"lstm_cell_205/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_205_matmul_readvariableop_resource.lstm_cell_205_matmul_1_readvariableop_resource-lstm_cell_205_biasadd_readvariableop_resource*
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
while_body_1250059*
condR
while_cond_1250058*K
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
NoOpNoOp%^lstm_cell_205/BiasAdd/ReadVariableOp$^lstm_cell_205/MatMul/ReadVariableOp&^lstm_cell_205/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_205/BiasAdd/ReadVariableOp$lstm_cell_205/BiasAdd/ReadVariableOp2J
#lstm_cell_205/MatMul/ReadVariableOp#lstm_cell_205/MatMul/ReadVariableOp2N
%lstm_cell_205/MatMul_1/ReadVariableOp%lstm_cell_205/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_136_layer_call_and_return_conditional_losses_1250286

inputs?
,lstm_cell_205_matmul_readvariableop_resource:	d?A
.lstm_cell_205_matmul_1_readvariableop_resource:	2?<
-lstm_cell_205_biasadd_readvariableop_resource:	?
identity??$lstm_cell_205/BiasAdd/ReadVariableOp?#lstm_cell_205/MatMul/ReadVariableOp?%lstm_cell_205/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_205/MatMul/ReadVariableOpReadVariableOp,lstm_cell_205_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_205/MatMulMatMulstrided_slice_2:output:0+lstm_cell_205/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_205/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_205_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_205/MatMul_1MatMulzeros:output:0-lstm_cell_205/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_205/addAddV2lstm_cell_205/MatMul:product:0 lstm_cell_205/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_205/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_205_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_205/BiasAddBiasAddlstm_cell_205/add:z:0,lstm_cell_205/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_205/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_205/splitSplit&lstm_cell_205/split/split_dim:output:0lstm_cell_205/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_205/SigmoidSigmoidlstm_cell_205/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_205/Sigmoid_1Sigmoidlstm_cell_205/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_205/mulMullstm_cell_205/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_205/ReluRelulstm_cell_205/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_205/mul_1Mullstm_cell_205/Sigmoid:y:0 lstm_cell_205/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_205/add_1AddV2lstm_cell_205/mul:z:0lstm_cell_205/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_205/Sigmoid_2Sigmoidlstm_cell_205/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_205/Relu_1Relulstm_cell_205/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_205/mul_2Mullstm_cell_205/Sigmoid_2:y:0"lstm_cell_205/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_205_matmul_readvariableop_resource.lstm_cell_205_matmul_1_readvariableop_resource-lstm_cell_205_biasadd_readvariableop_resource*
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
while_body_1250202*
condR
while_cond_1250201*K
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
NoOpNoOp%^lstm_cell_205/BiasAdd/ReadVariableOp$^lstm_cell_205/MatMul/ReadVariableOp&^lstm_cell_205/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_205/BiasAdd/ReadVariableOp$lstm_cell_205/BiasAdd/ReadVariableOp2J
#lstm_cell_205/MatMul/ReadVariableOp#lstm_cell_205/MatMul/ReadVariableOp2N
%lstm_cell_205/MatMul_1/ReadVariableOp%lstm_cell_205/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_136_layer_call_fn_1249857

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
E__inference_lstm_136_layer_call_and_return_conditional_losses_1247909s
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
?
?
J__inference_lstm_cell_204_layer_call_and_return_conditional_losses_1251162

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
J__inference_lstm_cell_206_layer_call_and_return_conditional_losses_1251358

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
while_cond_1246459
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1246459___redundant_placeholder05
1while_while_cond_1246459___redundant_placeholder15
1while_while_cond_1246459___redundant_placeholder25
1while_while_cond_1246459___redundant_placeholder3
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
"__inference__wrapped_model_1246029
lstm_135_inputV
Csequential_45_lstm_135_lstm_cell_204_matmul_readvariableop_resource:	?X
Esequential_45_lstm_135_lstm_cell_204_matmul_1_readvariableop_resource:	d?S
Dsequential_45_lstm_135_lstm_cell_204_biasadd_readvariableop_resource:	?V
Csequential_45_lstm_136_lstm_cell_205_matmul_readvariableop_resource:	d?X
Esequential_45_lstm_136_lstm_cell_205_matmul_1_readvariableop_resource:	2?S
Dsequential_45_lstm_136_lstm_cell_205_biasadd_readvariableop_resource:	?U
Csequential_45_lstm_137_lstm_cell_206_matmul_readvariableop_resource:2(W
Esequential_45_lstm_137_lstm_cell_206_matmul_1_readvariableop_resource:
(R
Dsequential_45_lstm_137_lstm_cell_206_biasadd_readvariableop_resource:(G
5sequential_45_dense_45_matmul_readvariableop_resource:
D
6sequential_45_dense_45_biasadd_readvariableop_resource:
identity??-sequential_45/dense_45/BiasAdd/ReadVariableOp?,sequential_45/dense_45/MatMul/ReadVariableOp?;sequential_45/lstm_135/lstm_cell_204/BiasAdd/ReadVariableOp?:sequential_45/lstm_135/lstm_cell_204/MatMul/ReadVariableOp?<sequential_45/lstm_135/lstm_cell_204/MatMul_1/ReadVariableOp?sequential_45/lstm_135/while?;sequential_45/lstm_136/lstm_cell_205/BiasAdd/ReadVariableOp?:sequential_45/lstm_136/lstm_cell_205/MatMul/ReadVariableOp?<sequential_45/lstm_136/lstm_cell_205/MatMul_1/ReadVariableOp?sequential_45/lstm_136/while?;sequential_45/lstm_137/lstm_cell_206/BiasAdd/ReadVariableOp?:sequential_45/lstm_137/lstm_cell_206/MatMul/ReadVariableOp?<sequential_45/lstm_137/lstm_cell_206/MatMul_1/ReadVariableOp?sequential_45/lstm_137/whileZ
sequential_45/lstm_135/ShapeShapelstm_135_input*
T0*
_output_shapes
:t
*sequential_45/lstm_135/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_45/lstm_135/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_45/lstm_135/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_45/lstm_135/strided_sliceStridedSlice%sequential_45/lstm_135/Shape:output:03sequential_45/lstm_135/strided_slice/stack:output:05sequential_45/lstm_135/strided_slice/stack_1:output:05sequential_45/lstm_135/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_45/lstm_135/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_45/lstm_135/zeros/packedPack-sequential_45/lstm_135/strided_slice:output:0.sequential_45/lstm_135/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_45/lstm_135/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_45/lstm_135/zerosFill,sequential_45/lstm_135/zeros/packed:output:0+sequential_45/lstm_135/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_45/lstm_135/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_45/lstm_135/zeros_1/packedPack-sequential_45/lstm_135/strided_slice:output:00sequential_45/lstm_135/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_45/lstm_135/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_45/lstm_135/zeros_1Fill.sequential_45/lstm_135/zeros_1/packed:output:0-sequential_45/lstm_135/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_45/lstm_135/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_45/lstm_135/transpose	Transposelstm_135_input.sequential_45/lstm_135/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_45/lstm_135/Shape_1Shape$sequential_45/lstm_135/transpose:y:0*
T0*
_output_shapes
:v
,sequential_45/lstm_135/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_45/lstm_135/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_45/lstm_135/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_45/lstm_135/strided_slice_1StridedSlice'sequential_45/lstm_135/Shape_1:output:05sequential_45/lstm_135/strided_slice_1/stack:output:07sequential_45/lstm_135/strided_slice_1/stack_1:output:07sequential_45/lstm_135/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_45/lstm_135/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_45/lstm_135/TensorArrayV2TensorListReserve;sequential_45/lstm_135/TensorArrayV2/element_shape:output:0/sequential_45/lstm_135/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_45/lstm_135/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_45/lstm_135/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_45/lstm_135/transpose:y:0Usequential_45/lstm_135/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_45/lstm_135/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_45/lstm_135/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_45/lstm_135/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_45/lstm_135/strided_slice_2StridedSlice$sequential_45/lstm_135/transpose:y:05sequential_45/lstm_135/strided_slice_2/stack:output:07sequential_45/lstm_135/strided_slice_2/stack_1:output:07sequential_45/lstm_135/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_45/lstm_135/lstm_cell_204/MatMul/ReadVariableOpReadVariableOpCsequential_45_lstm_135_lstm_cell_204_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_45/lstm_135/lstm_cell_204/MatMulMatMul/sequential_45/lstm_135/strided_slice_2:output:0Bsequential_45/lstm_135/lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_45/lstm_135/lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOpEsequential_45_lstm_135_lstm_cell_204_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_45/lstm_135/lstm_cell_204/MatMul_1MatMul%sequential_45/lstm_135/zeros:output:0Dsequential_45/lstm_135/lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_45/lstm_135/lstm_cell_204/addAddV25sequential_45/lstm_135/lstm_cell_204/MatMul:product:07sequential_45/lstm_135/lstm_cell_204/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_45/lstm_135/lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOpDsequential_45_lstm_135_lstm_cell_204_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_45/lstm_135/lstm_cell_204/BiasAddBiasAdd,sequential_45/lstm_135/lstm_cell_204/add:z:0Csequential_45/lstm_135/lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_45/lstm_135/lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_45/lstm_135/lstm_cell_204/splitSplit=sequential_45/lstm_135/lstm_cell_204/split/split_dim:output:05sequential_45/lstm_135/lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_45/lstm_135/lstm_cell_204/SigmoidSigmoid3sequential_45/lstm_135/lstm_cell_204/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_45/lstm_135/lstm_cell_204/Sigmoid_1Sigmoid3sequential_45/lstm_135/lstm_cell_204/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_45/lstm_135/lstm_cell_204/mulMul2sequential_45/lstm_135/lstm_cell_204/Sigmoid_1:y:0'sequential_45/lstm_135/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_45/lstm_135/lstm_cell_204/ReluRelu3sequential_45/lstm_135/lstm_cell_204/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_45/lstm_135/lstm_cell_204/mul_1Mul0sequential_45/lstm_135/lstm_cell_204/Sigmoid:y:07sequential_45/lstm_135/lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_45/lstm_135/lstm_cell_204/add_1AddV2,sequential_45/lstm_135/lstm_cell_204/mul:z:0.sequential_45/lstm_135/lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_45/lstm_135/lstm_cell_204/Sigmoid_2Sigmoid3sequential_45/lstm_135/lstm_cell_204/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_45/lstm_135/lstm_cell_204/Relu_1Relu.sequential_45/lstm_135/lstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_45/lstm_135/lstm_cell_204/mul_2Mul2sequential_45/lstm_135/lstm_cell_204/Sigmoid_2:y:09sequential_45/lstm_135/lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_45/lstm_135/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_45/lstm_135/TensorArrayV2_1TensorListReserve=sequential_45/lstm_135/TensorArrayV2_1/element_shape:output:0/sequential_45/lstm_135/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_45/lstm_135/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_45/lstm_135/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_45/lstm_135/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_45/lstm_135/whileWhile2sequential_45/lstm_135/while/loop_counter:output:08sequential_45/lstm_135/while/maximum_iterations:output:0$sequential_45/lstm_135/time:output:0/sequential_45/lstm_135/TensorArrayV2_1:handle:0%sequential_45/lstm_135/zeros:output:0'sequential_45/lstm_135/zeros_1:output:0/sequential_45/lstm_135/strided_slice_1:output:0Nsequential_45/lstm_135/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_45_lstm_135_lstm_cell_204_matmul_readvariableop_resourceEsequential_45_lstm_135_lstm_cell_204_matmul_1_readvariableop_resourceDsequential_45_lstm_135_lstm_cell_204_biasadd_readvariableop_resource*
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
)sequential_45_lstm_135_while_body_1245661*5
cond-R+
)sequential_45_lstm_135_while_cond_1245660*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_45/lstm_135/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_45/lstm_135/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_45/lstm_135/while:output:3Psequential_45/lstm_135/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_45/lstm_135/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_45/lstm_135/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_45/lstm_135/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_45/lstm_135/strided_slice_3StridedSliceBsequential_45/lstm_135/TensorArrayV2Stack/TensorListStack:tensor:05sequential_45/lstm_135/strided_slice_3/stack:output:07sequential_45/lstm_135/strided_slice_3/stack_1:output:07sequential_45/lstm_135/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_45/lstm_135/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_45/lstm_135/transpose_1	TransposeBsequential_45/lstm_135/TensorArrayV2Stack/TensorListStack:tensor:00sequential_45/lstm_135/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_45/lstm_135/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_45/lstm_136/ShapeShape&sequential_45/lstm_135/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_45/lstm_136/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_45/lstm_136/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_45/lstm_136/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_45/lstm_136/strided_sliceStridedSlice%sequential_45/lstm_136/Shape:output:03sequential_45/lstm_136/strided_slice/stack:output:05sequential_45/lstm_136/strided_slice/stack_1:output:05sequential_45/lstm_136/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_45/lstm_136/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_45/lstm_136/zeros/packedPack-sequential_45/lstm_136/strided_slice:output:0.sequential_45/lstm_136/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_45/lstm_136/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_45/lstm_136/zerosFill,sequential_45/lstm_136/zeros/packed:output:0+sequential_45/lstm_136/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_45/lstm_136/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_45/lstm_136/zeros_1/packedPack-sequential_45/lstm_136/strided_slice:output:00sequential_45/lstm_136/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_45/lstm_136/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_45/lstm_136/zeros_1Fill.sequential_45/lstm_136/zeros_1/packed:output:0-sequential_45/lstm_136/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_45/lstm_136/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_45/lstm_136/transpose	Transpose&sequential_45/lstm_135/transpose_1:y:0.sequential_45/lstm_136/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_45/lstm_136/Shape_1Shape$sequential_45/lstm_136/transpose:y:0*
T0*
_output_shapes
:v
,sequential_45/lstm_136/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_45/lstm_136/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_45/lstm_136/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_45/lstm_136/strided_slice_1StridedSlice'sequential_45/lstm_136/Shape_1:output:05sequential_45/lstm_136/strided_slice_1/stack:output:07sequential_45/lstm_136/strided_slice_1/stack_1:output:07sequential_45/lstm_136/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_45/lstm_136/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_45/lstm_136/TensorArrayV2TensorListReserve;sequential_45/lstm_136/TensorArrayV2/element_shape:output:0/sequential_45/lstm_136/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_45/lstm_136/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_45/lstm_136/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_45/lstm_136/transpose:y:0Usequential_45/lstm_136/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_45/lstm_136/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_45/lstm_136/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_45/lstm_136/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_45/lstm_136/strided_slice_2StridedSlice$sequential_45/lstm_136/transpose:y:05sequential_45/lstm_136/strided_slice_2/stack:output:07sequential_45/lstm_136/strided_slice_2/stack_1:output:07sequential_45/lstm_136/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_45/lstm_136/lstm_cell_205/MatMul/ReadVariableOpReadVariableOpCsequential_45_lstm_136_lstm_cell_205_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_45/lstm_136/lstm_cell_205/MatMulMatMul/sequential_45/lstm_136/strided_slice_2:output:0Bsequential_45/lstm_136/lstm_cell_205/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_45/lstm_136/lstm_cell_205/MatMul_1/ReadVariableOpReadVariableOpEsequential_45_lstm_136_lstm_cell_205_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_45/lstm_136/lstm_cell_205/MatMul_1MatMul%sequential_45/lstm_136/zeros:output:0Dsequential_45/lstm_136/lstm_cell_205/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_45/lstm_136/lstm_cell_205/addAddV25sequential_45/lstm_136/lstm_cell_205/MatMul:product:07sequential_45/lstm_136/lstm_cell_205/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_45/lstm_136/lstm_cell_205/BiasAdd/ReadVariableOpReadVariableOpDsequential_45_lstm_136_lstm_cell_205_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_45/lstm_136/lstm_cell_205/BiasAddBiasAdd,sequential_45/lstm_136/lstm_cell_205/add:z:0Csequential_45/lstm_136/lstm_cell_205/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_45/lstm_136/lstm_cell_205/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_45/lstm_136/lstm_cell_205/splitSplit=sequential_45/lstm_136/lstm_cell_205/split/split_dim:output:05sequential_45/lstm_136/lstm_cell_205/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_45/lstm_136/lstm_cell_205/SigmoidSigmoid3sequential_45/lstm_136/lstm_cell_205/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_45/lstm_136/lstm_cell_205/Sigmoid_1Sigmoid3sequential_45/lstm_136/lstm_cell_205/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_45/lstm_136/lstm_cell_205/mulMul2sequential_45/lstm_136/lstm_cell_205/Sigmoid_1:y:0'sequential_45/lstm_136/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_45/lstm_136/lstm_cell_205/ReluRelu3sequential_45/lstm_136/lstm_cell_205/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_45/lstm_136/lstm_cell_205/mul_1Mul0sequential_45/lstm_136/lstm_cell_205/Sigmoid:y:07sequential_45/lstm_136/lstm_cell_205/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_45/lstm_136/lstm_cell_205/add_1AddV2,sequential_45/lstm_136/lstm_cell_205/mul:z:0.sequential_45/lstm_136/lstm_cell_205/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_45/lstm_136/lstm_cell_205/Sigmoid_2Sigmoid3sequential_45/lstm_136/lstm_cell_205/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_45/lstm_136/lstm_cell_205/Relu_1Relu.sequential_45/lstm_136/lstm_cell_205/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_45/lstm_136/lstm_cell_205/mul_2Mul2sequential_45/lstm_136/lstm_cell_205/Sigmoid_2:y:09sequential_45/lstm_136/lstm_cell_205/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_45/lstm_136/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_45/lstm_136/TensorArrayV2_1TensorListReserve=sequential_45/lstm_136/TensorArrayV2_1/element_shape:output:0/sequential_45/lstm_136/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_45/lstm_136/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_45/lstm_136/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_45/lstm_136/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_45/lstm_136/whileWhile2sequential_45/lstm_136/while/loop_counter:output:08sequential_45/lstm_136/while/maximum_iterations:output:0$sequential_45/lstm_136/time:output:0/sequential_45/lstm_136/TensorArrayV2_1:handle:0%sequential_45/lstm_136/zeros:output:0'sequential_45/lstm_136/zeros_1:output:0/sequential_45/lstm_136/strided_slice_1:output:0Nsequential_45/lstm_136/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_45_lstm_136_lstm_cell_205_matmul_readvariableop_resourceEsequential_45_lstm_136_lstm_cell_205_matmul_1_readvariableop_resourceDsequential_45_lstm_136_lstm_cell_205_biasadd_readvariableop_resource*
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
)sequential_45_lstm_136_while_body_1245800*5
cond-R+
)sequential_45_lstm_136_while_cond_1245799*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_45/lstm_136/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_45/lstm_136/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_45/lstm_136/while:output:3Psequential_45/lstm_136/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_45/lstm_136/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_45/lstm_136/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_45/lstm_136/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_45/lstm_136/strided_slice_3StridedSliceBsequential_45/lstm_136/TensorArrayV2Stack/TensorListStack:tensor:05sequential_45/lstm_136/strided_slice_3/stack:output:07sequential_45/lstm_136/strided_slice_3/stack_1:output:07sequential_45/lstm_136/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_45/lstm_136/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_45/lstm_136/transpose_1	TransposeBsequential_45/lstm_136/TensorArrayV2Stack/TensorListStack:tensor:00sequential_45/lstm_136/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_45/lstm_136/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_45/lstm_137/ShapeShape&sequential_45/lstm_136/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_45/lstm_137/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_45/lstm_137/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_45/lstm_137/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_45/lstm_137/strided_sliceStridedSlice%sequential_45/lstm_137/Shape:output:03sequential_45/lstm_137/strided_slice/stack:output:05sequential_45/lstm_137/strided_slice/stack_1:output:05sequential_45/lstm_137/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_45/lstm_137/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_45/lstm_137/zeros/packedPack-sequential_45/lstm_137/strided_slice:output:0.sequential_45/lstm_137/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_45/lstm_137/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_45/lstm_137/zerosFill,sequential_45/lstm_137/zeros/packed:output:0+sequential_45/lstm_137/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_45/lstm_137/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_45/lstm_137/zeros_1/packedPack-sequential_45/lstm_137/strided_slice:output:00sequential_45/lstm_137/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_45/lstm_137/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_45/lstm_137/zeros_1Fill.sequential_45/lstm_137/zeros_1/packed:output:0-sequential_45/lstm_137/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_45/lstm_137/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_45/lstm_137/transpose	Transpose&sequential_45/lstm_136/transpose_1:y:0.sequential_45/lstm_137/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_45/lstm_137/Shape_1Shape$sequential_45/lstm_137/transpose:y:0*
T0*
_output_shapes
:v
,sequential_45/lstm_137/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_45/lstm_137/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_45/lstm_137/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_45/lstm_137/strided_slice_1StridedSlice'sequential_45/lstm_137/Shape_1:output:05sequential_45/lstm_137/strided_slice_1/stack:output:07sequential_45/lstm_137/strided_slice_1/stack_1:output:07sequential_45/lstm_137/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_45/lstm_137/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_45/lstm_137/TensorArrayV2TensorListReserve;sequential_45/lstm_137/TensorArrayV2/element_shape:output:0/sequential_45/lstm_137/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_45/lstm_137/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_45/lstm_137/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_45/lstm_137/transpose:y:0Usequential_45/lstm_137/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_45/lstm_137/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_45/lstm_137/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_45/lstm_137/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_45/lstm_137/strided_slice_2StridedSlice$sequential_45/lstm_137/transpose:y:05sequential_45/lstm_137/strided_slice_2/stack:output:07sequential_45/lstm_137/strided_slice_2/stack_1:output:07sequential_45/lstm_137/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_45/lstm_137/lstm_cell_206/MatMul/ReadVariableOpReadVariableOpCsequential_45_lstm_137_lstm_cell_206_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_45/lstm_137/lstm_cell_206/MatMulMatMul/sequential_45/lstm_137/strided_slice_2:output:0Bsequential_45/lstm_137/lstm_cell_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_45/lstm_137/lstm_cell_206/MatMul_1/ReadVariableOpReadVariableOpEsequential_45_lstm_137_lstm_cell_206_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_45/lstm_137/lstm_cell_206/MatMul_1MatMul%sequential_45/lstm_137/zeros:output:0Dsequential_45/lstm_137/lstm_cell_206/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_45/lstm_137/lstm_cell_206/addAddV25sequential_45/lstm_137/lstm_cell_206/MatMul:product:07sequential_45/lstm_137/lstm_cell_206/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_45/lstm_137/lstm_cell_206/BiasAdd/ReadVariableOpReadVariableOpDsequential_45_lstm_137_lstm_cell_206_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_45/lstm_137/lstm_cell_206/BiasAddBiasAdd,sequential_45/lstm_137/lstm_cell_206/add:z:0Csequential_45/lstm_137/lstm_cell_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_45/lstm_137/lstm_cell_206/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_45/lstm_137/lstm_cell_206/splitSplit=sequential_45/lstm_137/lstm_cell_206/split/split_dim:output:05sequential_45/lstm_137/lstm_cell_206/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_45/lstm_137/lstm_cell_206/SigmoidSigmoid3sequential_45/lstm_137/lstm_cell_206/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_45/lstm_137/lstm_cell_206/Sigmoid_1Sigmoid3sequential_45/lstm_137/lstm_cell_206/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_45/lstm_137/lstm_cell_206/mulMul2sequential_45/lstm_137/lstm_cell_206/Sigmoid_1:y:0'sequential_45/lstm_137/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_45/lstm_137/lstm_cell_206/ReluRelu3sequential_45/lstm_137/lstm_cell_206/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_45/lstm_137/lstm_cell_206/mul_1Mul0sequential_45/lstm_137/lstm_cell_206/Sigmoid:y:07sequential_45/lstm_137/lstm_cell_206/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_45/lstm_137/lstm_cell_206/add_1AddV2,sequential_45/lstm_137/lstm_cell_206/mul:z:0.sequential_45/lstm_137/lstm_cell_206/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_45/lstm_137/lstm_cell_206/Sigmoid_2Sigmoid3sequential_45/lstm_137/lstm_cell_206/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_45/lstm_137/lstm_cell_206/Relu_1Relu.sequential_45/lstm_137/lstm_cell_206/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_45/lstm_137/lstm_cell_206/mul_2Mul2sequential_45/lstm_137/lstm_cell_206/Sigmoid_2:y:09sequential_45/lstm_137/lstm_cell_206/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_45/lstm_137/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_45/lstm_137/TensorArrayV2_1TensorListReserve=sequential_45/lstm_137/TensorArrayV2_1/element_shape:output:0/sequential_45/lstm_137/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_45/lstm_137/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_45/lstm_137/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_45/lstm_137/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_45/lstm_137/whileWhile2sequential_45/lstm_137/while/loop_counter:output:08sequential_45/lstm_137/while/maximum_iterations:output:0$sequential_45/lstm_137/time:output:0/sequential_45/lstm_137/TensorArrayV2_1:handle:0%sequential_45/lstm_137/zeros:output:0'sequential_45/lstm_137/zeros_1:output:0/sequential_45/lstm_137/strided_slice_1:output:0Nsequential_45/lstm_137/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_45_lstm_137_lstm_cell_206_matmul_readvariableop_resourceEsequential_45_lstm_137_lstm_cell_206_matmul_1_readvariableop_resourceDsequential_45_lstm_137_lstm_cell_206_biasadd_readvariableop_resource*
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
)sequential_45_lstm_137_while_body_1245939*5
cond-R+
)sequential_45_lstm_137_while_cond_1245938*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_45/lstm_137/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_45/lstm_137/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_45/lstm_137/while:output:3Psequential_45/lstm_137/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_45/lstm_137/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_45/lstm_137/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_45/lstm_137/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_45/lstm_137/strided_slice_3StridedSliceBsequential_45/lstm_137/TensorArrayV2Stack/TensorListStack:tensor:05sequential_45/lstm_137/strided_slice_3/stack:output:07sequential_45/lstm_137/strided_slice_3/stack_1:output:07sequential_45/lstm_137/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_45/lstm_137/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_45/lstm_137/transpose_1	TransposeBsequential_45/lstm_137/TensorArrayV2Stack/TensorListStack:tensor:00sequential_45/lstm_137/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_45/lstm_137/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_45/dense_45/MatMul/ReadVariableOpReadVariableOp5sequential_45_dense_45_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_45/dense_45/MatMulMatMul/sequential_45/lstm_137/strided_slice_3:output:04sequential_45/dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_45/dense_45/BiasAdd/ReadVariableOpReadVariableOp6sequential_45_dense_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_45/dense_45/BiasAddBiasAdd'sequential_45/dense_45/MatMul:product:05sequential_45/dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_45/dense_45/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_45/dense_45/BiasAdd/ReadVariableOp-^sequential_45/dense_45/MatMul/ReadVariableOp<^sequential_45/lstm_135/lstm_cell_204/BiasAdd/ReadVariableOp;^sequential_45/lstm_135/lstm_cell_204/MatMul/ReadVariableOp=^sequential_45/lstm_135/lstm_cell_204/MatMul_1/ReadVariableOp^sequential_45/lstm_135/while<^sequential_45/lstm_136/lstm_cell_205/BiasAdd/ReadVariableOp;^sequential_45/lstm_136/lstm_cell_205/MatMul/ReadVariableOp=^sequential_45/lstm_136/lstm_cell_205/MatMul_1/ReadVariableOp^sequential_45/lstm_136/while<^sequential_45/lstm_137/lstm_cell_206/BiasAdd/ReadVariableOp;^sequential_45/lstm_137/lstm_cell_206/MatMul/ReadVariableOp=^sequential_45/lstm_137/lstm_cell_206/MatMul_1/ReadVariableOp^sequential_45/lstm_137/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_45/dense_45/BiasAdd/ReadVariableOp-sequential_45/dense_45/BiasAdd/ReadVariableOp2\
,sequential_45/dense_45/MatMul/ReadVariableOp,sequential_45/dense_45/MatMul/ReadVariableOp2z
;sequential_45/lstm_135/lstm_cell_204/BiasAdd/ReadVariableOp;sequential_45/lstm_135/lstm_cell_204/BiasAdd/ReadVariableOp2x
:sequential_45/lstm_135/lstm_cell_204/MatMul/ReadVariableOp:sequential_45/lstm_135/lstm_cell_204/MatMul/ReadVariableOp2|
<sequential_45/lstm_135/lstm_cell_204/MatMul_1/ReadVariableOp<sequential_45/lstm_135/lstm_cell_204/MatMul_1/ReadVariableOp2<
sequential_45/lstm_135/whilesequential_45/lstm_135/while2z
;sequential_45/lstm_136/lstm_cell_205/BiasAdd/ReadVariableOp;sequential_45/lstm_136/lstm_cell_205/BiasAdd/ReadVariableOp2x
:sequential_45/lstm_136/lstm_cell_205/MatMul/ReadVariableOp:sequential_45/lstm_136/lstm_cell_205/MatMul/ReadVariableOp2|
<sequential_45/lstm_136/lstm_cell_205/MatMul_1/ReadVariableOp<sequential_45/lstm_136/lstm_cell_205/MatMul_1/ReadVariableOp2<
sequential_45/lstm_136/whilesequential_45/lstm_136/while2z
;sequential_45/lstm_137/lstm_cell_206/BiasAdd/ReadVariableOp;sequential_45/lstm_137/lstm_cell_206/BiasAdd/ReadVariableOp2x
:sequential_45/lstm_137/lstm_cell_206/MatMul/ReadVariableOp:sequential_45/lstm_137/lstm_cell_206/MatMul/ReadVariableOp2|
<sequential_45/lstm_137/lstm_cell_206/MatMul_1/ReadVariableOp<sequential_45/lstm_137/lstm_cell_206/MatMul_1/ReadVariableOp2<
sequential_45/lstm_137/whilesequential_45/lstm_137/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_135_input
?8
?
E__inference_lstm_135_layer_call_and_return_conditional_losses_1246370

inputs(
lstm_cell_204_1246288:	?(
lstm_cell_204_1246290:	d?$
lstm_cell_204_1246292:	?
identity??%lstm_cell_204/StatefulPartitionedCall?while;
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
%lstm_cell_204/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_204_1246288lstm_cell_204_1246290lstm_cell_204_1246292*
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
J__inference_lstm_cell_204_layer_call_and_return_conditional_losses_1246242n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_204_1246288lstm_cell_204_1246290lstm_cell_204_1246292*
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
while_body_1246301*
condR
while_cond_1246300*K
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
NoOpNoOp&^lstm_cell_204/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_204/StatefulPartitionedCall%lstm_cell_204/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_135_layer_call_and_return_conditional_losses_1249813

inputs?
,lstm_cell_204_matmul_readvariableop_resource:	?A
.lstm_cell_204_matmul_1_readvariableop_resource:	d?<
-lstm_cell_204_biasadd_readvariableop_resource:	?
identity??$lstm_cell_204/BiasAdd/ReadVariableOp?#lstm_cell_204/MatMul/ReadVariableOp?%lstm_cell_204/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_204/MatMul/ReadVariableOpReadVariableOp,lstm_cell_204_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_204/MatMulMatMulstrided_slice_2:output:0+lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_204_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_204/MatMul_1MatMulzeros:output:0-lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_204/addAddV2lstm_cell_204/MatMul:product:0 lstm_cell_204/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_204_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_204/BiasAddBiasAddlstm_cell_204/add:z:0,lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_204/splitSplit&lstm_cell_204/split/split_dim:output:0lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_204/SigmoidSigmoidlstm_cell_204/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_204/Sigmoid_1Sigmoidlstm_cell_204/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_204/mulMullstm_cell_204/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_204/ReluRelulstm_cell_204/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_204/mul_1Mullstm_cell_204/Sigmoid:y:0 lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_204/add_1AddV2lstm_cell_204/mul:z:0lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_204/Sigmoid_2Sigmoidlstm_cell_204/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_204/Relu_1Relulstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_204/mul_2Mullstm_cell_204/Sigmoid_2:y:0"lstm_cell_204/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_204_matmul_readvariableop_resource.lstm_cell_204_matmul_1_readvariableop_resource-lstm_cell_204_biasadd_readvariableop_resource*
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
while_body_1249729*
condR
while_cond_1249728*K
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
NoOpNoOp%^lstm_cell_204/BiasAdd/ReadVariableOp$^lstm_cell_204/MatMul/ReadVariableOp&^lstm_cell_204/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_204/BiasAdd/ReadVariableOp$lstm_cell_204/BiasAdd/ReadVariableOp2J
#lstm_cell_204/MatMul/ReadVariableOp#lstm_cell_204/MatMul/ReadVariableOp2N
%lstm_cell_204/MatMul_1/ReadVariableOp%lstm_cell_204/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_135_layer_call_and_return_conditional_losses_1249527
inputs_0?
,lstm_cell_204_matmul_readvariableop_resource:	?A
.lstm_cell_204_matmul_1_readvariableop_resource:	d?<
-lstm_cell_204_biasadd_readvariableop_resource:	?
identity??$lstm_cell_204/BiasAdd/ReadVariableOp?#lstm_cell_204/MatMul/ReadVariableOp?%lstm_cell_204/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_204/MatMul/ReadVariableOpReadVariableOp,lstm_cell_204_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_204/MatMulMatMulstrided_slice_2:output:0+lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_204_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_204/MatMul_1MatMulzeros:output:0-lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_204/addAddV2lstm_cell_204/MatMul:product:0 lstm_cell_204/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_204_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_204/BiasAddBiasAddlstm_cell_204/add:z:0,lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_204/splitSplit&lstm_cell_204/split/split_dim:output:0lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_204/SigmoidSigmoidlstm_cell_204/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_204/Sigmoid_1Sigmoidlstm_cell_204/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_204/mulMullstm_cell_204/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_204/ReluRelulstm_cell_204/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_204/mul_1Mullstm_cell_204/Sigmoid:y:0 lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_204/add_1AddV2lstm_cell_204/mul:z:0lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_204/Sigmoid_2Sigmoidlstm_cell_204/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_204/Relu_1Relulstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_204/mul_2Mullstm_cell_204/Sigmoid_2:y:0"lstm_cell_204/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_204_matmul_readvariableop_resource.lstm_cell_204_matmul_1_readvariableop_resource-lstm_cell_204_biasadd_readvariableop_resource*
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
while_body_1249443*
condR
while_cond_1249442*K
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
NoOpNoOp%^lstm_cell_204/BiasAdd/ReadVariableOp$^lstm_cell_204/MatMul/ReadVariableOp&^lstm_cell_204/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_204/BiasAdd/ReadVariableOp$lstm_cell_204/BiasAdd/ReadVariableOp2J
#lstm_cell_204/MatMul/ReadVariableOp#lstm_cell_204/MatMul/ReadVariableOp2N
%lstm_cell_204/MatMul_1/ReadVariableOp%lstm_cell_204/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_1247000
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1247000___redundant_placeholder05
1while_while_cond_1247000___redundant_placeholder15
1while_while_cond_1247000___redundant_placeholder25
1while_while_cond_1247000___redundant_placeholder3
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
while_body_1246460
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_205_1246484_0:	d?0
while_lstm_cell_205_1246486_0:	2?,
while_lstm_cell_205_1246488_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_205_1246484:	d?.
while_lstm_cell_205_1246486:	2?*
while_lstm_cell_205_1246488:	???+while/lstm_cell_205/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_205/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_205_1246484_0while_lstm_cell_205_1246486_0while_lstm_cell_205_1246488_0*
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
J__inference_lstm_cell_205_layer_call_and_return_conditional_losses_1246446?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_205/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_205/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_205/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_205/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_205_1246484while_lstm_cell_205_1246484_0"<
while_lstm_cell_205_1246486while_lstm_cell_205_1246486_0"<
while_lstm_cell_205_1246488while_lstm_cell_205_1246488_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_205/StatefulPartitionedCall+while/lstm_cell_205/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_135_while_cond_1248828.
*lstm_135_while_lstm_135_while_loop_counter4
0lstm_135_while_lstm_135_while_maximum_iterations
lstm_135_while_placeholder 
lstm_135_while_placeholder_1 
lstm_135_while_placeholder_2 
lstm_135_while_placeholder_30
,lstm_135_while_less_lstm_135_strided_slice_1G
Clstm_135_while_lstm_135_while_cond_1248828___redundant_placeholder0G
Clstm_135_while_lstm_135_while_cond_1248828___redundant_placeholder1G
Clstm_135_while_lstm_135_while_cond_1248828___redundant_placeholder2G
Clstm_135_while_lstm_135_while_cond_1248828___redundant_placeholder3
lstm_135_while_identity
?
lstm_135/while/LessLesslstm_135_while_placeholder,lstm_135_while_less_lstm_135_strided_slice_1*
T0*
_output_shapes
: ]
lstm_135/while/IdentityIdentitylstm_135/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_135_while_identity lstm_135/while/Identity:output:0*(
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
while_cond_1250201
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1250201___redundant_placeholder05
1while_while_cond_1250201___redundant_placeholder15
1while_while_cond_1250201___redundant_placeholder25
1while_while_cond_1250201___redundant_placeholder3
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
E__inference_lstm_136_layer_call_and_return_conditional_losses_1247378

inputs?
,lstm_cell_205_matmul_readvariableop_resource:	d?A
.lstm_cell_205_matmul_1_readvariableop_resource:	2?<
-lstm_cell_205_biasadd_readvariableop_resource:	?
identity??$lstm_cell_205/BiasAdd/ReadVariableOp?#lstm_cell_205/MatMul/ReadVariableOp?%lstm_cell_205/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_205/MatMul/ReadVariableOpReadVariableOp,lstm_cell_205_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_205/MatMulMatMulstrided_slice_2:output:0+lstm_cell_205/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_205/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_205_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_205/MatMul_1MatMulzeros:output:0-lstm_cell_205/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_205/addAddV2lstm_cell_205/MatMul:product:0 lstm_cell_205/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_205/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_205_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_205/BiasAddBiasAddlstm_cell_205/add:z:0,lstm_cell_205/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_205/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_205/splitSplit&lstm_cell_205/split/split_dim:output:0lstm_cell_205/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_205/SigmoidSigmoidlstm_cell_205/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_205/Sigmoid_1Sigmoidlstm_cell_205/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_205/mulMullstm_cell_205/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_205/ReluRelulstm_cell_205/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_205/mul_1Mullstm_cell_205/Sigmoid:y:0 lstm_cell_205/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_205/add_1AddV2lstm_cell_205/mul:z:0lstm_cell_205/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_205/Sigmoid_2Sigmoidlstm_cell_205/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_205/Relu_1Relulstm_cell_205/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_205/mul_2Mullstm_cell_205/Sigmoid_2:y:0"lstm_cell_205/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_205_matmul_readvariableop_resource.lstm_cell_205_matmul_1_readvariableop_resource-lstm_cell_205_biasadd_readvariableop_resource*
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
while_body_1247294*
condR
while_cond_1247293*K
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
NoOpNoOp%^lstm_cell_205/BiasAdd/ReadVariableOp$^lstm_cell_205/MatMul/ReadVariableOp&^lstm_cell_205/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_205/BiasAdd/ReadVariableOp$lstm_cell_205/BiasAdd/ReadVariableOp2J
#lstm_cell_205/MatMul/ReadVariableOp#lstm_cell_205/MatMul/ReadVariableOp2N
%lstm_cell_205/MatMul_1/ReadVariableOp%lstm_cell_205/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_205_layer_call_fn_1251179

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
J__inference_lstm_cell_205_layer_call_and_return_conditional_losses_1246446o
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
?S
?
)sequential_45_lstm_136_while_body_1245800J
Fsequential_45_lstm_136_while_sequential_45_lstm_136_while_loop_counterP
Lsequential_45_lstm_136_while_sequential_45_lstm_136_while_maximum_iterations,
(sequential_45_lstm_136_while_placeholder.
*sequential_45_lstm_136_while_placeholder_1.
*sequential_45_lstm_136_while_placeholder_2.
*sequential_45_lstm_136_while_placeholder_3I
Esequential_45_lstm_136_while_sequential_45_lstm_136_strided_slice_1_0?
?sequential_45_lstm_136_while_tensorarrayv2read_tensorlistgetitem_sequential_45_lstm_136_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_45_lstm_136_while_lstm_cell_205_matmul_readvariableop_resource_0:	d?`
Msequential_45_lstm_136_while_lstm_cell_205_matmul_1_readvariableop_resource_0:	2?[
Lsequential_45_lstm_136_while_lstm_cell_205_biasadd_readvariableop_resource_0:	?)
%sequential_45_lstm_136_while_identity+
'sequential_45_lstm_136_while_identity_1+
'sequential_45_lstm_136_while_identity_2+
'sequential_45_lstm_136_while_identity_3+
'sequential_45_lstm_136_while_identity_4+
'sequential_45_lstm_136_while_identity_5G
Csequential_45_lstm_136_while_sequential_45_lstm_136_strided_slice_1?
sequential_45_lstm_136_while_tensorarrayv2read_tensorlistgetitem_sequential_45_lstm_136_tensorarrayunstack_tensorlistfromtensor\
Isequential_45_lstm_136_while_lstm_cell_205_matmul_readvariableop_resource:	d?^
Ksequential_45_lstm_136_while_lstm_cell_205_matmul_1_readvariableop_resource:	2?Y
Jsequential_45_lstm_136_while_lstm_cell_205_biasadd_readvariableop_resource:	???Asequential_45/lstm_136/while/lstm_cell_205/BiasAdd/ReadVariableOp?@sequential_45/lstm_136/while/lstm_cell_205/MatMul/ReadVariableOp?Bsequential_45/lstm_136/while/lstm_cell_205/MatMul_1/ReadVariableOp?
Nsequential_45/lstm_136/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_45/lstm_136/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_45_lstm_136_while_tensorarrayv2read_tensorlistgetitem_sequential_45_lstm_136_tensorarrayunstack_tensorlistfromtensor_0(sequential_45_lstm_136_while_placeholderWsequential_45/lstm_136/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_45/lstm_136/while/lstm_cell_205/MatMul/ReadVariableOpReadVariableOpKsequential_45_lstm_136_while_lstm_cell_205_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_45/lstm_136/while/lstm_cell_205/MatMulMatMulGsequential_45/lstm_136/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_45/lstm_136/while/lstm_cell_205/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_45/lstm_136/while/lstm_cell_205/MatMul_1/ReadVariableOpReadVariableOpMsequential_45_lstm_136_while_lstm_cell_205_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_45/lstm_136/while/lstm_cell_205/MatMul_1MatMul*sequential_45_lstm_136_while_placeholder_2Jsequential_45/lstm_136/while/lstm_cell_205/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_45/lstm_136/while/lstm_cell_205/addAddV2;sequential_45/lstm_136/while/lstm_cell_205/MatMul:product:0=sequential_45/lstm_136/while/lstm_cell_205/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_45/lstm_136/while/lstm_cell_205/BiasAdd/ReadVariableOpReadVariableOpLsequential_45_lstm_136_while_lstm_cell_205_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_45/lstm_136/while/lstm_cell_205/BiasAddBiasAdd2sequential_45/lstm_136/while/lstm_cell_205/add:z:0Isequential_45/lstm_136/while/lstm_cell_205/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_45/lstm_136/while/lstm_cell_205/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_45/lstm_136/while/lstm_cell_205/splitSplitCsequential_45/lstm_136/while/lstm_cell_205/split/split_dim:output:0;sequential_45/lstm_136/while/lstm_cell_205/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_45/lstm_136/while/lstm_cell_205/SigmoidSigmoid9sequential_45/lstm_136/while/lstm_cell_205/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_45/lstm_136/while/lstm_cell_205/Sigmoid_1Sigmoid9sequential_45/lstm_136/while/lstm_cell_205/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_45/lstm_136/while/lstm_cell_205/mulMul8sequential_45/lstm_136/while/lstm_cell_205/Sigmoid_1:y:0*sequential_45_lstm_136_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_45/lstm_136/while/lstm_cell_205/ReluRelu9sequential_45/lstm_136/while/lstm_cell_205/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_45/lstm_136/while/lstm_cell_205/mul_1Mul6sequential_45/lstm_136/while/lstm_cell_205/Sigmoid:y:0=sequential_45/lstm_136/while/lstm_cell_205/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_45/lstm_136/while/lstm_cell_205/add_1AddV22sequential_45/lstm_136/while/lstm_cell_205/mul:z:04sequential_45/lstm_136/while/lstm_cell_205/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_45/lstm_136/while/lstm_cell_205/Sigmoid_2Sigmoid9sequential_45/lstm_136/while/lstm_cell_205/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_45/lstm_136/while/lstm_cell_205/Relu_1Relu4sequential_45/lstm_136/while/lstm_cell_205/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_45/lstm_136/while/lstm_cell_205/mul_2Mul8sequential_45/lstm_136/while/lstm_cell_205/Sigmoid_2:y:0?sequential_45/lstm_136/while/lstm_cell_205/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_45/lstm_136/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_45_lstm_136_while_placeholder_1(sequential_45_lstm_136_while_placeholder4sequential_45/lstm_136/while/lstm_cell_205/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_45/lstm_136/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_45/lstm_136/while/addAddV2(sequential_45_lstm_136_while_placeholder+sequential_45/lstm_136/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_45/lstm_136/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_45/lstm_136/while/add_1AddV2Fsequential_45_lstm_136_while_sequential_45_lstm_136_while_loop_counter-sequential_45/lstm_136/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_45/lstm_136/while/IdentityIdentity&sequential_45/lstm_136/while/add_1:z:0"^sequential_45/lstm_136/while/NoOp*
T0*
_output_shapes
: ?
'sequential_45/lstm_136/while/Identity_1IdentityLsequential_45_lstm_136_while_sequential_45_lstm_136_while_maximum_iterations"^sequential_45/lstm_136/while/NoOp*
T0*
_output_shapes
: ?
'sequential_45/lstm_136/while/Identity_2Identity$sequential_45/lstm_136/while/add:z:0"^sequential_45/lstm_136/while/NoOp*
T0*
_output_shapes
: ?
'sequential_45/lstm_136/while/Identity_3IdentityQsequential_45/lstm_136/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_45/lstm_136/while/NoOp*
T0*
_output_shapes
: ?
'sequential_45/lstm_136/while/Identity_4Identity4sequential_45/lstm_136/while/lstm_cell_205/mul_2:z:0"^sequential_45/lstm_136/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_45/lstm_136/while/Identity_5Identity4sequential_45/lstm_136/while/lstm_cell_205/add_1:z:0"^sequential_45/lstm_136/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_45/lstm_136/while/NoOpNoOpB^sequential_45/lstm_136/while/lstm_cell_205/BiasAdd/ReadVariableOpA^sequential_45/lstm_136/while/lstm_cell_205/MatMul/ReadVariableOpC^sequential_45/lstm_136/while/lstm_cell_205/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_45_lstm_136_while_identity.sequential_45/lstm_136/while/Identity:output:0"[
'sequential_45_lstm_136_while_identity_10sequential_45/lstm_136/while/Identity_1:output:0"[
'sequential_45_lstm_136_while_identity_20sequential_45/lstm_136/while/Identity_2:output:0"[
'sequential_45_lstm_136_while_identity_30sequential_45/lstm_136/while/Identity_3:output:0"[
'sequential_45_lstm_136_while_identity_40sequential_45/lstm_136/while/Identity_4:output:0"[
'sequential_45_lstm_136_while_identity_50sequential_45/lstm_136/while/Identity_5:output:0"?
Jsequential_45_lstm_136_while_lstm_cell_205_biasadd_readvariableop_resourceLsequential_45_lstm_136_while_lstm_cell_205_biasadd_readvariableop_resource_0"?
Ksequential_45_lstm_136_while_lstm_cell_205_matmul_1_readvariableop_resourceMsequential_45_lstm_136_while_lstm_cell_205_matmul_1_readvariableop_resource_0"?
Isequential_45_lstm_136_while_lstm_cell_205_matmul_readvariableop_resourceKsequential_45_lstm_136_while_lstm_cell_205_matmul_readvariableop_resource_0"?
Csequential_45_lstm_136_while_sequential_45_lstm_136_strided_slice_1Esequential_45_lstm_136_while_sequential_45_lstm_136_strided_slice_1_0"?
sequential_45_lstm_136_while_tensorarrayv2read_tensorlistgetitem_sequential_45_lstm_136_tensorarrayunstack_tensorlistfromtensor?sequential_45_lstm_136_while_tensorarrayv2read_tensorlistgetitem_sequential_45_lstm_136_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_45/lstm_136/while/lstm_cell_205/BiasAdd/ReadVariableOpAsequential_45/lstm_136/while/lstm_cell_205/BiasAdd/ReadVariableOp2?
@sequential_45/lstm_136/while/lstm_cell_205/MatMul/ReadVariableOp@sequential_45/lstm_136/while/lstm_cell_205/MatMul/ReadVariableOp2?
Bsequential_45/lstm_136/while/lstm_cell_205/MatMul_1/ReadVariableOpBsequential_45/lstm_136/while/lstm_cell_205/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_45_lstm_137_while_body_1245939J
Fsequential_45_lstm_137_while_sequential_45_lstm_137_while_loop_counterP
Lsequential_45_lstm_137_while_sequential_45_lstm_137_while_maximum_iterations,
(sequential_45_lstm_137_while_placeholder.
*sequential_45_lstm_137_while_placeholder_1.
*sequential_45_lstm_137_while_placeholder_2.
*sequential_45_lstm_137_while_placeholder_3I
Esequential_45_lstm_137_while_sequential_45_lstm_137_strided_slice_1_0?
?sequential_45_lstm_137_while_tensorarrayv2read_tensorlistgetitem_sequential_45_lstm_137_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_45_lstm_137_while_lstm_cell_206_matmul_readvariableop_resource_0:2(_
Msequential_45_lstm_137_while_lstm_cell_206_matmul_1_readvariableop_resource_0:
(Z
Lsequential_45_lstm_137_while_lstm_cell_206_biasadd_readvariableop_resource_0:()
%sequential_45_lstm_137_while_identity+
'sequential_45_lstm_137_while_identity_1+
'sequential_45_lstm_137_while_identity_2+
'sequential_45_lstm_137_while_identity_3+
'sequential_45_lstm_137_while_identity_4+
'sequential_45_lstm_137_while_identity_5G
Csequential_45_lstm_137_while_sequential_45_lstm_137_strided_slice_1?
sequential_45_lstm_137_while_tensorarrayv2read_tensorlistgetitem_sequential_45_lstm_137_tensorarrayunstack_tensorlistfromtensor[
Isequential_45_lstm_137_while_lstm_cell_206_matmul_readvariableop_resource:2(]
Ksequential_45_lstm_137_while_lstm_cell_206_matmul_1_readvariableop_resource:
(X
Jsequential_45_lstm_137_while_lstm_cell_206_biasadd_readvariableop_resource:(??Asequential_45/lstm_137/while/lstm_cell_206/BiasAdd/ReadVariableOp?@sequential_45/lstm_137/while/lstm_cell_206/MatMul/ReadVariableOp?Bsequential_45/lstm_137/while/lstm_cell_206/MatMul_1/ReadVariableOp?
Nsequential_45/lstm_137/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_45/lstm_137/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_45_lstm_137_while_tensorarrayv2read_tensorlistgetitem_sequential_45_lstm_137_tensorarrayunstack_tensorlistfromtensor_0(sequential_45_lstm_137_while_placeholderWsequential_45/lstm_137/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_45/lstm_137/while/lstm_cell_206/MatMul/ReadVariableOpReadVariableOpKsequential_45_lstm_137_while_lstm_cell_206_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_45/lstm_137/while/lstm_cell_206/MatMulMatMulGsequential_45/lstm_137/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_45/lstm_137/while/lstm_cell_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_45/lstm_137/while/lstm_cell_206/MatMul_1/ReadVariableOpReadVariableOpMsequential_45_lstm_137_while_lstm_cell_206_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_45/lstm_137/while/lstm_cell_206/MatMul_1MatMul*sequential_45_lstm_137_while_placeholder_2Jsequential_45/lstm_137/while/lstm_cell_206/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_45/lstm_137/while/lstm_cell_206/addAddV2;sequential_45/lstm_137/while/lstm_cell_206/MatMul:product:0=sequential_45/lstm_137/while/lstm_cell_206/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_45/lstm_137/while/lstm_cell_206/BiasAdd/ReadVariableOpReadVariableOpLsequential_45_lstm_137_while_lstm_cell_206_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_45/lstm_137/while/lstm_cell_206/BiasAddBiasAdd2sequential_45/lstm_137/while/lstm_cell_206/add:z:0Isequential_45/lstm_137/while/lstm_cell_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_45/lstm_137/while/lstm_cell_206/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_45/lstm_137/while/lstm_cell_206/splitSplitCsequential_45/lstm_137/while/lstm_cell_206/split/split_dim:output:0;sequential_45/lstm_137/while/lstm_cell_206/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_45/lstm_137/while/lstm_cell_206/SigmoidSigmoid9sequential_45/lstm_137/while/lstm_cell_206/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_45/lstm_137/while/lstm_cell_206/Sigmoid_1Sigmoid9sequential_45/lstm_137/while/lstm_cell_206/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_45/lstm_137/while/lstm_cell_206/mulMul8sequential_45/lstm_137/while/lstm_cell_206/Sigmoid_1:y:0*sequential_45_lstm_137_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_45/lstm_137/while/lstm_cell_206/ReluRelu9sequential_45/lstm_137/while/lstm_cell_206/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_45/lstm_137/while/lstm_cell_206/mul_1Mul6sequential_45/lstm_137/while/lstm_cell_206/Sigmoid:y:0=sequential_45/lstm_137/while/lstm_cell_206/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_45/lstm_137/while/lstm_cell_206/add_1AddV22sequential_45/lstm_137/while/lstm_cell_206/mul:z:04sequential_45/lstm_137/while/lstm_cell_206/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_45/lstm_137/while/lstm_cell_206/Sigmoid_2Sigmoid9sequential_45/lstm_137/while/lstm_cell_206/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_45/lstm_137/while/lstm_cell_206/Relu_1Relu4sequential_45/lstm_137/while/lstm_cell_206/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_45/lstm_137/while/lstm_cell_206/mul_2Mul8sequential_45/lstm_137/while/lstm_cell_206/Sigmoid_2:y:0?sequential_45/lstm_137/while/lstm_cell_206/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_45/lstm_137/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_45_lstm_137_while_placeholder_1(sequential_45_lstm_137_while_placeholder4sequential_45/lstm_137/while/lstm_cell_206/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_45/lstm_137/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_45/lstm_137/while/addAddV2(sequential_45_lstm_137_while_placeholder+sequential_45/lstm_137/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_45/lstm_137/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_45/lstm_137/while/add_1AddV2Fsequential_45_lstm_137_while_sequential_45_lstm_137_while_loop_counter-sequential_45/lstm_137/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_45/lstm_137/while/IdentityIdentity&sequential_45/lstm_137/while/add_1:z:0"^sequential_45/lstm_137/while/NoOp*
T0*
_output_shapes
: ?
'sequential_45/lstm_137/while/Identity_1IdentityLsequential_45_lstm_137_while_sequential_45_lstm_137_while_maximum_iterations"^sequential_45/lstm_137/while/NoOp*
T0*
_output_shapes
: ?
'sequential_45/lstm_137/while/Identity_2Identity$sequential_45/lstm_137/while/add:z:0"^sequential_45/lstm_137/while/NoOp*
T0*
_output_shapes
: ?
'sequential_45/lstm_137/while/Identity_3IdentityQsequential_45/lstm_137/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_45/lstm_137/while/NoOp*
T0*
_output_shapes
: ?
'sequential_45/lstm_137/while/Identity_4Identity4sequential_45/lstm_137/while/lstm_cell_206/mul_2:z:0"^sequential_45/lstm_137/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_45/lstm_137/while/Identity_5Identity4sequential_45/lstm_137/while/lstm_cell_206/add_1:z:0"^sequential_45/lstm_137/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_45/lstm_137/while/NoOpNoOpB^sequential_45/lstm_137/while/lstm_cell_206/BiasAdd/ReadVariableOpA^sequential_45/lstm_137/while/lstm_cell_206/MatMul/ReadVariableOpC^sequential_45/lstm_137/while/lstm_cell_206/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_45_lstm_137_while_identity.sequential_45/lstm_137/while/Identity:output:0"[
'sequential_45_lstm_137_while_identity_10sequential_45/lstm_137/while/Identity_1:output:0"[
'sequential_45_lstm_137_while_identity_20sequential_45/lstm_137/while/Identity_2:output:0"[
'sequential_45_lstm_137_while_identity_30sequential_45/lstm_137/while/Identity_3:output:0"[
'sequential_45_lstm_137_while_identity_40sequential_45/lstm_137/while/Identity_4:output:0"[
'sequential_45_lstm_137_while_identity_50sequential_45/lstm_137/while/Identity_5:output:0"?
Jsequential_45_lstm_137_while_lstm_cell_206_biasadd_readvariableop_resourceLsequential_45_lstm_137_while_lstm_cell_206_biasadd_readvariableop_resource_0"?
Ksequential_45_lstm_137_while_lstm_cell_206_matmul_1_readvariableop_resourceMsequential_45_lstm_137_while_lstm_cell_206_matmul_1_readvariableop_resource_0"?
Isequential_45_lstm_137_while_lstm_cell_206_matmul_readvariableop_resourceKsequential_45_lstm_137_while_lstm_cell_206_matmul_readvariableop_resource_0"?
Csequential_45_lstm_137_while_sequential_45_lstm_137_strided_slice_1Esequential_45_lstm_137_while_sequential_45_lstm_137_strided_slice_1_0"?
sequential_45_lstm_137_while_tensorarrayv2read_tensorlistgetitem_sequential_45_lstm_137_tensorarrayunstack_tensorlistfromtensor?sequential_45_lstm_137_while_tensorarrayv2read_tensorlistgetitem_sequential_45_lstm_137_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_45/lstm_137/while/lstm_cell_206/BiasAdd/ReadVariableOpAsequential_45/lstm_137/while/lstm_cell_206/BiasAdd/ReadVariableOp2?
@sequential_45/lstm_137/while/lstm_cell_206/MatMul/ReadVariableOp@sequential_45/lstm_137/while/lstm_cell_206/MatMul/ReadVariableOp2?
Bsequential_45/lstm_137/while/lstm_cell_206/MatMul_1/ReadVariableOpBsequential_45/lstm_137/while/lstm_cell_206/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_135_layer_call_and_return_conditional_losses_1249670

inputs?
,lstm_cell_204_matmul_readvariableop_resource:	?A
.lstm_cell_204_matmul_1_readvariableop_resource:	d?<
-lstm_cell_204_biasadd_readvariableop_resource:	?
identity??$lstm_cell_204/BiasAdd/ReadVariableOp?#lstm_cell_204/MatMul/ReadVariableOp?%lstm_cell_204/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_204/MatMul/ReadVariableOpReadVariableOp,lstm_cell_204_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_204/MatMulMatMulstrided_slice_2:output:0+lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_204_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_204/MatMul_1MatMulzeros:output:0-lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_204/addAddV2lstm_cell_204/MatMul:product:0 lstm_cell_204/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_204_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_204/BiasAddBiasAddlstm_cell_204/add:z:0,lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_204/splitSplit&lstm_cell_204/split/split_dim:output:0lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_204/SigmoidSigmoidlstm_cell_204/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_204/Sigmoid_1Sigmoidlstm_cell_204/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_204/mulMullstm_cell_204/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_204/ReluRelulstm_cell_204/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_204/mul_1Mullstm_cell_204/Sigmoid:y:0 lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_204/add_1AddV2lstm_cell_204/mul:z:0lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_204/Sigmoid_2Sigmoidlstm_cell_204/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_204/Relu_1Relulstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_204/mul_2Mullstm_cell_204/Sigmoid_2:y:0"lstm_cell_204/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_204_matmul_readvariableop_resource.lstm_cell_204_matmul_1_readvariableop_resource-lstm_cell_204_biasadd_readvariableop_resource*
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
while_body_1249586*
condR
while_cond_1249585*K
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
NoOpNoOp%^lstm_cell_204/BiasAdd/ReadVariableOp$^lstm_cell_204/MatMul/ReadVariableOp&^lstm_cell_204/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_204/BiasAdd/ReadVariableOp$lstm_cell_204/BiasAdd/ReadVariableOp2J
#lstm_cell_204/MatMul/ReadVariableOp#lstm_cell_204/MatMul/ReadVariableOp2N
%lstm_cell_204/MatMul_1/ReadVariableOp%lstm_cell_204/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1250345
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_205_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_205_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_205_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_205_matmul_readvariableop_resource:	d?G
4while_lstm_cell_205_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_205_biasadd_readvariableop_resource:	???*while/lstm_cell_205/BiasAdd/ReadVariableOp?)while/lstm_cell_205/MatMul/ReadVariableOp?+while/lstm_cell_205/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_205/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_205_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_205/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_205/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_205/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_205_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_205/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_205/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_205/addAddV2$while/lstm_cell_205/MatMul:product:0&while/lstm_cell_205/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_205/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_205_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_205/BiasAddBiasAddwhile/lstm_cell_205/add:z:02while/lstm_cell_205/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_205/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_205/splitSplit,while/lstm_cell_205/split/split_dim:output:0$while/lstm_cell_205/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_205/SigmoidSigmoid"while/lstm_cell_205/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_205/Sigmoid_1Sigmoid"while/lstm_cell_205/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_205/mulMul!while/lstm_cell_205/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_205/ReluRelu"while/lstm_cell_205/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_205/mul_1Mulwhile/lstm_cell_205/Sigmoid:y:0&while/lstm_cell_205/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_205/add_1AddV2while/lstm_cell_205/mul:z:0while/lstm_cell_205/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_205/Sigmoid_2Sigmoid"while/lstm_cell_205/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_205/Relu_1Reluwhile/lstm_cell_205/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_205/mul_2Mul!while/lstm_cell_205/Sigmoid_2:y:0(while/lstm_cell_205/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_205/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_205/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_205/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_205/BiasAdd/ReadVariableOp*^while/lstm_cell_205/MatMul/ReadVariableOp,^while/lstm_cell_205/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_205_biasadd_readvariableop_resource5while_lstm_cell_205_biasadd_readvariableop_resource_0"n
4while_lstm_cell_205_matmul_1_readvariableop_resource6while_lstm_cell_205_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_205_matmul_readvariableop_resource4while_lstm_cell_205_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_205/BiasAdd/ReadVariableOp*while/lstm_cell_205/BiasAdd/ReadVariableOp2V
)while/lstm_cell_205/MatMul/ReadVariableOp)while/lstm_cell_205/MatMul/ReadVariableOp2Z
+while/lstm_cell_205/MatMul_1/ReadVariableOp+while/lstm_cell_205/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_137_while_cond_1248679.
*lstm_137_while_lstm_137_while_loop_counter4
0lstm_137_while_lstm_137_while_maximum_iterations
lstm_137_while_placeholder 
lstm_137_while_placeholder_1 
lstm_137_while_placeholder_2 
lstm_137_while_placeholder_30
,lstm_137_while_less_lstm_137_strided_slice_1G
Clstm_137_while_lstm_137_while_cond_1248679___redundant_placeholder0G
Clstm_137_while_lstm_137_while_cond_1248679___redundant_placeholder1G
Clstm_137_while_lstm_137_while_cond_1248679___redundant_placeholder2G
Clstm_137_while_lstm_137_while_cond_1248679___redundant_placeholder3
lstm_137_while_identity
?
lstm_137/while/LessLesslstm_137_while_placeholder,lstm_137_while_less_lstm_137_strided_slice_1*
T0*
_output_shapes
: ]
lstm_137/while/IdentityIdentitylstm_137/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_137_while_identity lstm_137/while/Identity:output:0*(
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
J__inference_sequential_45_layer_call_and_return_conditional_losses_1248770

inputsH
5lstm_135_lstm_cell_204_matmul_readvariableop_resource:	?J
7lstm_135_lstm_cell_204_matmul_1_readvariableop_resource:	d?E
6lstm_135_lstm_cell_204_biasadd_readvariableop_resource:	?H
5lstm_136_lstm_cell_205_matmul_readvariableop_resource:	d?J
7lstm_136_lstm_cell_205_matmul_1_readvariableop_resource:	2?E
6lstm_136_lstm_cell_205_biasadd_readvariableop_resource:	?G
5lstm_137_lstm_cell_206_matmul_readvariableop_resource:2(I
7lstm_137_lstm_cell_206_matmul_1_readvariableop_resource:
(D
6lstm_137_lstm_cell_206_biasadd_readvariableop_resource:(9
'dense_45_matmul_readvariableop_resource:
6
(dense_45_biasadd_readvariableop_resource:
identity??dense_45/BiasAdd/ReadVariableOp?dense_45/MatMul/ReadVariableOp?-lstm_135/lstm_cell_204/BiasAdd/ReadVariableOp?,lstm_135/lstm_cell_204/MatMul/ReadVariableOp?.lstm_135/lstm_cell_204/MatMul_1/ReadVariableOp?lstm_135/while?-lstm_136/lstm_cell_205/BiasAdd/ReadVariableOp?,lstm_136/lstm_cell_205/MatMul/ReadVariableOp?.lstm_136/lstm_cell_205/MatMul_1/ReadVariableOp?lstm_136/while?-lstm_137/lstm_cell_206/BiasAdd/ReadVariableOp?,lstm_137/lstm_cell_206/MatMul/ReadVariableOp?.lstm_137/lstm_cell_206/MatMul_1/ReadVariableOp?lstm_137/whileD
lstm_135/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_135/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_135/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_135/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_135/strided_sliceStridedSlicelstm_135/Shape:output:0%lstm_135/strided_slice/stack:output:0'lstm_135/strided_slice/stack_1:output:0'lstm_135/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_135/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_135/zeros/packedPacklstm_135/strided_slice:output:0 lstm_135/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_135/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_135/zerosFilllstm_135/zeros/packed:output:0lstm_135/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_135/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_135/zeros_1/packedPacklstm_135/strided_slice:output:0"lstm_135/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_135/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_135/zeros_1Fill lstm_135/zeros_1/packed:output:0lstm_135/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_135/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_135/transpose	Transposeinputs lstm_135/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_135/Shape_1Shapelstm_135/transpose:y:0*
T0*
_output_shapes
:h
lstm_135/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_135/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_135/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_135/strided_slice_1StridedSlicelstm_135/Shape_1:output:0'lstm_135/strided_slice_1/stack:output:0)lstm_135/strided_slice_1/stack_1:output:0)lstm_135/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_135/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_135/TensorArrayV2TensorListReserve-lstm_135/TensorArrayV2/element_shape:output:0!lstm_135/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_135/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_135/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_135/transpose:y:0Glstm_135/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_135/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_135/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_135/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_135/strided_slice_2StridedSlicelstm_135/transpose:y:0'lstm_135/strided_slice_2/stack:output:0)lstm_135/strided_slice_2/stack_1:output:0)lstm_135/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_135/lstm_cell_204/MatMul/ReadVariableOpReadVariableOp5lstm_135_lstm_cell_204_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_135/lstm_cell_204/MatMulMatMul!lstm_135/strided_slice_2:output:04lstm_135/lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_135/lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp7lstm_135_lstm_cell_204_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_135/lstm_cell_204/MatMul_1MatMullstm_135/zeros:output:06lstm_135/lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_135/lstm_cell_204/addAddV2'lstm_135/lstm_cell_204/MatMul:product:0)lstm_135/lstm_cell_204/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_135/lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp6lstm_135_lstm_cell_204_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_135/lstm_cell_204/BiasAddBiasAddlstm_135/lstm_cell_204/add:z:05lstm_135/lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_135/lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_135/lstm_cell_204/splitSplit/lstm_135/lstm_cell_204/split/split_dim:output:0'lstm_135/lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_135/lstm_cell_204/SigmoidSigmoid%lstm_135/lstm_cell_204/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_135/lstm_cell_204/Sigmoid_1Sigmoid%lstm_135/lstm_cell_204/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_135/lstm_cell_204/mulMul$lstm_135/lstm_cell_204/Sigmoid_1:y:0lstm_135/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_135/lstm_cell_204/ReluRelu%lstm_135/lstm_cell_204/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_135/lstm_cell_204/mul_1Mul"lstm_135/lstm_cell_204/Sigmoid:y:0)lstm_135/lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_135/lstm_cell_204/add_1AddV2lstm_135/lstm_cell_204/mul:z:0 lstm_135/lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_135/lstm_cell_204/Sigmoid_2Sigmoid%lstm_135/lstm_cell_204/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_135/lstm_cell_204/Relu_1Relu lstm_135/lstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_135/lstm_cell_204/mul_2Mul$lstm_135/lstm_cell_204/Sigmoid_2:y:0+lstm_135/lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_135/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_135/TensorArrayV2_1TensorListReserve/lstm_135/TensorArrayV2_1/element_shape:output:0!lstm_135/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_135/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_135/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_135/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_135/whileWhile$lstm_135/while/loop_counter:output:0*lstm_135/while/maximum_iterations:output:0lstm_135/time:output:0!lstm_135/TensorArrayV2_1:handle:0lstm_135/zeros:output:0lstm_135/zeros_1:output:0!lstm_135/strided_slice_1:output:0@lstm_135/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_135_lstm_cell_204_matmul_readvariableop_resource7lstm_135_lstm_cell_204_matmul_1_readvariableop_resource6lstm_135_lstm_cell_204_biasadd_readvariableop_resource*
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
lstm_135_while_body_1248402*'
condR
lstm_135_while_cond_1248401*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_135/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_135/TensorArrayV2Stack/TensorListStackTensorListStacklstm_135/while:output:3Blstm_135/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_135/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_135/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_135/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_135/strided_slice_3StridedSlice4lstm_135/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_135/strided_slice_3/stack:output:0)lstm_135/strided_slice_3/stack_1:output:0)lstm_135/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_135/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_135/transpose_1	Transpose4lstm_135/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_135/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_135/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_136/ShapeShapelstm_135/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_136/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_136/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_136/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_136/strided_sliceStridedSlicelstm_136/Shape:output:0%lstm_136/strided_slice/stack:output:0'lstm_136/strided_slice/stack_1:output:0'lstm_136/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_136/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_136/zeros/packedPacklstm_136/strided_slice:output:0 lstm_136/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_136/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_136/zerosFilllstm_136/zeros/packed:output:0lstm_136/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_136/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_136/zeros_1/packedPacklstm_136/strided_slice:output:0"lstm_136/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_136/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_136/zeros_1Fill lstm_136/zeros_1/packed:output:0lstm_136/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_136/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_136/transpose	Transposelstm_135/transpose_1:y:0 lstm_136/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_136/Shape_1Shapelstm_136/transpose:y:0*
T0*
_output_shapes
:h
lstm_136/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_136/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_136/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_136/strided_slice_1StridedSlicelstm_136/Shape_1:output:0'lstm_136/strided_slice_1/stack:output:0)lstm_136/strided_slice_1/stack_1:output:0)lstm_136/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_136/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_136/TensorArrayV2TensorListReserve-lstm_136/TensorArrayV2/element_shape:output:0!lstm_136/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_136/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_136/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_136/transpose:y:0Glstm_136/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_136/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_136/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_136/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_136/strided_slice_2StridedSlicelstm_136/transpose:y:0'lstm_136/strided_slice_2/stack:output:0)lstm_136/strided_slice_2/stack_1:output:0)lstm_136/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_136/lstm_cell_205/MatMul/ReadVariableOpReadVariableOp5lstm_136_lstm_cell_205_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_136/lstm_cell_205/MatMulMatMul!lstm_136/strided_slice_2:output:04lstm_136/lstm_cell_205/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_136/lstm_cell_205/MatMul_1/ReadVariableOpReadVariableOp7lstm_136_lstm_cell_205_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_136/lstm_cell_205/MatMul_1MatMullstm_136/zeros:output:06lstm_136/lstm_cell_205/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_136/lstm_cell_205/addAddV2'lstm_136/lstm_cell_205/MatMul:product:0)lstm_136/lstm_cell_205/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_136/lstm_cell_205/BiasAdd/ReadVariableOpReadVariableOp6lstm_136_lstm_cell_205_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_136/lstm_cell_205/BiasAddBiasAddlstm_136/lstm_cell_205/add:z:05lstm_136/lstm_cell_205/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_136/lstm_cell_205/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_136/lstm_cell_205/splitSplit/lstm_136/lstm_cell_205/split/split_dim:output:0'lstm_136/lstm_cell_205/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_136/lstm_cell_205/SigmoidSigmoid%lstm_136/lstm_cell_205/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_136/lstm_cell_205/Sigmoid_1Sigmoid%lstm_136/lstm_cell_205/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_136/lstm_cell_205/mulMul$lstm_136/lstm_cell_205/Sigmoid_1:y:0lstm_136/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_136/lstm_cell_205/ReluRelu%lstm_136/lstm_cell_205/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_136/lstm_cell_205/mul_1Mul"lstm_136/lstm_cell_205/Sigmoid:y:0)lstm_136/lstm_cell_205/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_136/lstm_cell_205/add_1AddV2lstm_136/lstm_cell_205/mul:z:0 lstm_136/lstm_cell_205/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_136/lstm_cell_205/Sigmoid_2Sigmoid%lstm_136/lstm_cell_205/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_136/lstm_cell_205/Relu_1Relu lstm_136/lstm_cell_205/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_136/lstm_cell_205/mul_2Mul$lstm_136/lstm_cell_205/Sigmoid_2:y:0+lstm_136/lstm_cell_205/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_136/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_136/TensorArrayV2_1TensorListReserve/lstm_136/TensorArrayV2_1/element_shape:output:0!lstm_136/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_136/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_136/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_136/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_136/whileWhile$lstm_136/while/loop_counter:output:0*lstm_136/while/maximum_iterations:output:0lstm_136/time:output:0!lstm_136/TensorArrayV2_1:handle:0lstm_136/zeros:output:0lstm_136/zeros_1:output:0!lstm_136/strided_slice_1:output:0@lstm_136/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_136_lstm_cell_205_matmul_readvariableop_resource7lstm_136_lstm_cell_205_matmul_1_readvariableop_resource6lstm_136_lstm_cell_205_biasadd_readvariableop_resource*
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
lstm_136_while_body_1248541*'
condR
lstm_136_while_cond_1248540*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_136/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_136/TensorArrayV2Stack/TensorListStackTensorListStacklstm_136/while:output:3Blstm_136/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_136/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_136/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_136/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_136/strided_slice_3StridedSlice4lstm_136/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_136/strided_slice_3/stack:output:0)lstm_136/strided_slice_3/stack_1:output:0)lstm_136/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_136/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_136/transpose_1	Transpose4lstm_136/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_136/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_136/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_137/ShapeShapelstm_136/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_137/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_137/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_137/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_137/strided_sliceStridedSlicelstm_137/Shape:output:0%lstm_137/strided_slice/stack:output:0'lstm_137/strided_slice/stack_1:output:0'lstm_137/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_137/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_137/zeros/packedPacklstm_137/strided_slice:output:0 lstm_137/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_137/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_137/zerosFilllstm_137/zeros/packed:output:0lstm_137/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_137/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_137/zeros_1/packedPacklstm_137/strided_slice:output:0"lstm_137/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_137/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_137/zeros_1Fill lstm_137/zeros_1/packed:output:0lstm_137/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_137/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_137/transpose	Transposelstm_136/transpose_1:y:0 lstm_137/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_137/Shape_1Shapelstm_137/transpose:y:0*
T0*
_output_shapes
:h
lstm_137/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_137/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_137/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_137/strided_slice_1StridedSlicelstm_137/Shape_1:output:0'lstm_137/strided_slice_1/stack:output:0)lstm_137/strided_slice_1/stack_1:output:0)lstm_137/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_137/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_137/TensorArrayV2TensorListReserve-lstm_137/TensorArrayV2/element_shape:output:0!lstm_137/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_137/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_137/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_137/transpose:y:0Glstm_137/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_137/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_137/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_137/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_137/strided_slice_2StridedSlicelstm_137/transpose:y:0'lstm_137/strided_slice_2/stack:output:0)lstm_137/strided_slice_2/stack_1:output:0)lstm_137/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_137/lstm_cell_206/MatMul/ReadVariableOpReadVariableOp5lstm_137_lstm_cell_206_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_137/lstm_cell_206/MatMulMatMul!lstm_137/strided_slice_2:output:04lstm_137/lstm_cell_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_137/lstm_cell_206/MatMul_1/ReadVariableOpReadVariableOp7lstm_137_lstm_cell_206_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_137/lstm_cell_206/MatMul_1MatMullstm_137/zeros:output:06lstm_137/lstm_cell_206/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_137/lstm_cell_206/addAddV2'lstm_137/lstm_cell_206/MatMul:product:0)lstm_137/lstm_cell_206/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_137/lstm_cell_206/BiasAdd/ReadVariableOpReadVariableOp6lstm_137_lstm_cell_206_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_137/lstm_cell_206/BiasAddBiasAddlstm_137/lstm_cell_206/add:z:05lstm_137/lstm_cell_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_137/lstm_cell_206/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_137/lstm_cell_206/splitSplit/lstm_137/lstm_cell_206/split/split_dim:output:0'lstm_137/lstm_cell_206/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_137/lstm_cell_206/SigmoidSigmoid%lstm_137/lstm_cell_206/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_137/lstm_cell_206/Sigmoid_1Sigmoid%lstm_137/lstm_cell_206/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_137/lstm_cell_206/mulMul$lstm_137/lstm_cell_206/Sigmoid_1:y:0lstm_137/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_137/lstm_cell_206/ReluRelu%lstm_137/lstm_cell_206/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_137/lstm_cell_206/mul_1Mul"lstm_137/lstm_cell_206/Sigmoid:y:0)lstm_137/lstm_cell_206/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_137/lstm_cell_206/add_1AddV2lstm_137/lstm_cell_206/mul:z:0 lstm_137/lstm_cell_206/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_137/lstm_cell_206/Sigmoid_2Sigmoid%lstm_137/lstm_cell_206/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_137/lstm_cell_206/Relu_1Relu lstm_137/lstm_cell_206/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_137/lstm_cell_206/mul_2Mul$lstm_137/lstm_cell_206/Sigmoid_2:y:0+lstm_137/lstm_cell_206/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_137/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_137/TensorArrayV2_1TensorListReserve/lstm_137/TensorArrayV2_1/element_shape:output:0!lstm_137/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_137/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_137/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_137/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_137/whileWhile$lstm_137/while/loop_counter:output:0*lstm_137/while/maximum_iterations:output:0lstm_137/time:output:0!lstm_137/TensorArrayV2_1:handle:0lstm_137/zeros:output:0lstm_137/zeros_1:output:0!lstm_137/strided_slice_1:output:0@lstm_137/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_137_lstm_cell_206_matmul_readvariableop_resource7lstm_137_lstm_cell_206_matmul_1_readvariableop_resource6lstm_137_lstm_cell_206_biasadd_readvariableop_resource*
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
lstm_137_while_body_1248680*'
condR
lstm_137_while_cond_1248679*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_137/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_137/TensorArrayV2Stack/TensorListStackTensorListStacklstm_137/while:output:3Blstm_137/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_137/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_137/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_137/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_137/strided_slice_3StridedSlice4lstm_137/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_137/strided_slice_3/stack:output:0)lstm_137/strided_slice_3/stack_1:output:0)lstm_137/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_137/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_137/transpose_1	Transpose4lstm_137/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_137/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_137/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_45/MatMul/ReadVariableOpReadVariableOp'dense_45_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_45/MatMulMatMul!lstm_137/strided_slice_3:output:0&dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_45/BiasAdd/ReadVariableOpReadVariableOp(dense_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_45/BiasAddBiasAdddense_45/MatMul:product:0'dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_45/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_45/BiasAdd/ReadVariableOp^dense_45/MatMul/ReadVariableOp.^lstm_135/lstm_cell_204/BiasAdd/ReadVariableOp-^lstm_135/lstm_cell_204/MatMul/ReadVariableOp/^lstm_135/lstm_cell_204/MatMul_1/ReadVariableOp^lstm_135/while.^lstm_136/lstm_cell_205/BiasAdd/ReadVariableOp-^lstm_136/lstm_cell_205/MatMul/ReadVariableOp/^lstm_136/lstm_cell_205/MatMul_1/ReadVariableOp^lstm_136/while.^lstm_137/lstm_cell_206/BiasAdd/ReadVariableOp-^lstm_137/lstm_cell_206/MatMul/ReadVariableOp/^lstm_137/lstm_cell_206/MatMul_1/ReadVariableOp^lstm_137/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_45/BiasAdd/ReadVariableOpdense_45/BiasAdd/ReadVariableOp2@
dense_45/MatMul/ReadVariableOpdense_45/MatMul/ReadVariableOp2^
-lstm_135/lstm_cell_204/BiasAdd/ReadVariableOp-lstm_135/lstm_cell_204/BiasAdd/ReadVariableOp2\
,lstm_135/lstm_cell_204/MatMul/ReadVariableOp,lstm_135/lstm_cell_204/MatMul/ReadVariableOp2`
.lstm_135/lstm_cell_204/MatMul_1/ReadVariableOp.lstm_135/lstm_cell_204/MatMul_1/ReadVariableOp2 
lstm_135/whilelstm_135/while2^
-lstm_136/lstm_cell_205/BiasAdd/ReadVariableOp-lstm_136/lstm_cell_205/BiasAdd/ReadVariableOp2\
,lstm_136/lstm_cell_205/MatMul/ReadVariableOp,lstm_136/lstm_cell_205/MatMul/ReadVariableOp2`
.lstm_136/lstm_cell_205/MatMul_1/ReadVariableOp.lstm_136/lstm_cell_205/MatMul_1/ReadVariableOp2 
lstm_136/whilelstm_136/while2^
-lstm_137/lstm_cell_206/BiasAdd/ReadVariableOp-lstm_137/lstm_cell_206/BiasAdd/ReadVariableOp2\
,lstm_137/lstm_cell_206/MatMul/ReadVariableOp,lstm_137/lstm_cell_206/MatMul/ReadVariableOp2`
.lstm_137/lstm_cell_206/MatMul_1/ReadVariableOp.lstm_137/lstm_cell_206/MatMul_1/ReadVariableOp2 
lstm_137/whilelstm_137/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1247990
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_204_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_204_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_204_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_204_matmul_readvariableop_resource:	?G
4while_lstm_cell_204_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_204_biasadd_readvariableop_resource:	???*while/lstm_cell_204/BiasAdd/ReadVariableOp?)while/lstm_cell_204/MatMul/ReadVariableOp?+while/lstm_cell_204/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_204/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_204_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_204/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_204_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_204/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_204/addAddV2$while/lstm_cell_204/MatMul:product:0&while/lstm_cell_204/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_204_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_204/BiasAddBiasAddwhile/lstm_cell_204/add:z:02while/lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_204/splitSplit,while/lstm_cell_204/split/split_dim:output:0$while/lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_204/SigmoidSigmoid"while/lstm_cell_204/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_204/Sigmoid_1Sigmoid"while/lstm_cell_204/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_204/mulMul!while/lstm_cell_204/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_204/ReluRelu"while/lstm_cell_204/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_204/mul_1Mulwhile/lstm_cell_204/Sigmoid:y:0&while/lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_204/add_1AddV2while/lstm_cell_204/mul:z:0while/lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_204/Sigmoid_2Sigmoid"while/lstm_cell_204/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_204/Relu_1Reluwhile/lstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_204/mul_2Mul!while/lstm_cell_204/Sigmoid_2:y:0(while/lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_204/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_204/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_204/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_204/BiasAdd/ReadVariableOp*^while/lstm_cell_204/MatMul/ReadVariableOp,^while/lstm_cell_204/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_204_biasadd_readvariableop_resource5while_lstm_cell_204_biasadd_readvariableop_resource_0"n
4while_lstm_cell_204_matmul_1_readvariableop_resource6while_lstm_cell_204_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_204_matmul_readvariableop_resource4while_lstm_cell_204_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_204/BiasAdd/ReadVariableOp*while/lstm_cell_204/BiasAdd/ReadVariableOp2V
)while/lstm_cell_204/MatMul/ReadVariableOp)while/lstm_cell_204/MatMul/ReadVariableOp2Z
+while/lstm_cell_204/MatMul_1/ReadVariableOp+while/lstm_cell_204/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1250058
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1250058___redundant_placeholder05
1while_while_cond_1250058___redundant_placeholder15
1while_while_cond_1250058___redundant_placeholder25
1while_while_cond_1250058___redundant_placeholder3
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
*__inference_lstm_135_layer_call_fn_1249241

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
E__inference_lstm_135_layer_call_and_return_conditional_losses_1248074s
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
while_cond_1249728
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1249728___redundant_placeholder05
1while_while_cond_1249728___redundant_placeholder15
1while_while_cond_1249728___redundant_placeholder25
1while_while_cond_1249728___redundant_placeholder3
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
E__inference_lstm_137_layer_call_and_return_conditional_losses_1247744

inputs>
,lstm_cell_206_matmul_readvariableop_resource:2(@
.lstm_cell_206_matmul_1_readvariableop_resource:
(;
-lstm_cell_206_biasadd_readvariableop_resource:(
identity??$lstm_cell_206/BiasAdd/ReadVariableOp?#lstm_cell_206/MatMul/ReadVariableOp?%lstm_cell_206/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_206/MatMul/ReadVariableOpReadVariableOp,lstm_cell_206_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_206/MatMulMatMulstrided_slice_2:output:0+lstm_cell_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_206/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_206_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_206/MatMul_1MatMulzeros:output:0-lstm_cell_206/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_206/addAddV2lstm_cell_206/MatMul:product:0 lstm_cell_206/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_206/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_206_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_206/BiasAddBiasAddlstm_cell_206/add:z:0,lstm_cell_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_206/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_206/splitSplit&lstm_cell_206/split/split_dim:output:0lstm_cell_206/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_206/SigmoidSigmoidlstm_cell_206/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_206/Sigmoid_1Sigmoidlstm_cell_206/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_206/mulMullstm_cell_206/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_206/ReluRelulstm_cell_206/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_206/mul_1Mullstm_cell_206/Sigmoid:y:0 lstm_cell_206/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_206/add_1AddV2lstm_cell_206/mul:z:0lstm_cell_206/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_206/Sigmoid_2Sigmoidlstm_cell_206/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_206/Relu_1Relulstm_cell_206/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_206/mul_2Mullstm_cell_206/Sigmoid_2:y:0"lstm_cell_206/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_206_matmul_readvariableop_resource.lstm_cell_206_matmul_1_readvariableop_resource-lstm_cell_206_biasadd_readvariableop_resource*
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
while_body_1247660*
condR
while_cond_1247659*K
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
NoOpNoOp%^lstm_cell_206/BiasAdd/ReadVariableOp$^lstm_cell_206/MatMul/ReadVariableOp&^lstm_cell_206/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_206/BiasAdd/ReadVariableOp$lstm_cell_206/BiasAdd/ReadVariableOp2J
#lstm_cell_206/MatMul/ReadVariableOp#lstm_cell_206/MatMul/ReadVariableOp2N
%lstm_cell_206/MatMul_1/ReadVariableOp%lstm_cell_206/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
/__inference_sequential_45_layer_call_fn_1248343

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
J__inference_sequential_45_layer_call_and_return_conditional_losses_1248142o
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
?J
?
E__inference_lstm_135_layer_call_and_return_conditional_losses_1247228

inputs?
,lstm_cell_204_matmul_readvariableop_resource:	?A
.lstm_cell_204_matmul_1_readvariableop_resource:	d?<
-lstm_cell_204_biasadd_readvariableop_resource:	?
identity??$lstm_cell_204/BiasAdd/ReadVariableOp?#lstm_cell_204/MatMul/ReadVariableOp?%lstm_cell_204/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_204/MatMul/ReadVariableOpReadVariableOp,lstm_cell_204_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_204/MatMulMatMulstrided_slice_2:output:0+lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_204_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_204/MatMul_1MatMulzeros:output:0-lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_204/addAddV2lstm_cell_204/MatMul:product:0 lstm_cell_204/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_204_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_204/BiasAddBiasAddlstm_cell_204/add:z:0,lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_204/splitSplit&lstm_cell_204/split/split_dim:output:0lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_204/SigmoidSigmoidlstm_cell_204/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_204/Sigmoid_1Sigmoidlstm_cell_204/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_204/mulMullstm_cell_204/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_204/ReluRelulstm_cell_204/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_204/mul_1Mullstm_cell_204/Sigmoid:y:0 lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_204/add_1AddV2lstm_cell_204/mul:z:0lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_204/Sigmoid_2Sigmoidlstm_cell_204/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_204/Relu_1Relulstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_204/mul_2Mullstm_cell_204/Sigmoid_2:y:0"lstm_cell_204/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_204_matmul_readvariableop_resource.lstm_cell_204_matmul_1_readvariableop_resource-lstm_cell_204_biasadd_readvariableop_resource*
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
while_body_1247144*
condR
while_cond_1247143*K
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
NoOpNoOp%^lstm_cell_204/BiasAdd/ReadVariableOp$^lstm_cell_204/MatMul/ReadVariableOp&^lstm_cell_204/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_204/BiasAdd/ReadVariableOp$lstm_cell_204/BiasAdd/ReadVariableOp2J
#lstm_cell_204/MatMul/ReadVariableOp#lstm_cell_204/MatMul/ReadVariableOp2N
%lstm_cell_204/MatMul_1/ReadVariableOp%lstm_cell_204/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_135_while_body_1248402.
*lstm_135_while_lstm_135_while_loop_counter4
0lstm_135_while_lstm_135_while_maximum_iterations
lstm_135_while_placeholder 
lstm_135_while_placeholder_1 
lstm_135_while_placeholder_2 
lstm_135_while_placeholder_3-
)lstm_135_while_lstm_135_strided_slice_1_0i
elstm_135_while_tensorarrayv2read_tensorlistgetitem_lstm_135_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_135_while_lstm_cell_204_matmul_readvariableop_resource_0:	?R
?lstm_135_while_lstm_cell_204_matmul_1_readvariableop_resource_0:	d?M
>lstm_135_while_lstm_cell_204_biasadd_readvariableop_resource_0:	?
lstm_135_while_identity
lstm_135_while_identity_1
lstm_135_while_identity_2
lstm_135_while_identity_3
lstm_135_while_identity_4
lstm_135_while_identity_5+
'lstm_135_while_lstm_135_strided_slice_1g
clstm_135_while_tensorarrayv2read_tensorlistgetitem_lstm_135_tensorarrayunstack_tensorlistfromtensorN
;lstm_135_while_lstm_cell_204_matmul_readvariableop_resource:	?P
=lstm_135_while_lstm_cell_204_matmul_1_readvariableop_resource:	d?K
<lstm_135_while_lstm_cell_204_biasadd_readvariableop_resource:	???3lstm_135/while/lstm_cell_204/BiasAdd/ReadVariableOp?2lstm_135/while/lstm_cell_204/MatMul/ReadVariableOp?4lstm_135/while/lstm_cell_204/MatMul_1/ReadVariableOp?
@lstm_135/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_135/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_135_while_tensorarrayv2read_tensorlistgetitem_lstm_135_tensorarrayunstack_tensorlistfromtensor_0lstm_135_while_placeholderIlstm_135/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_135/while/lstm_cell_204/MatMul/ReadVariableOpReadVariableOp=lstm_135_while_lstm_cell_204_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_135/while/lstm_cell_204/MatMulMatMul9lstm_135/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_135/while/lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_135/while/lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp?lstm_135_while_lstm_cell_204_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_135/while/lstm_cell_204/MatMul_1MatMullstm_135_while_placeholder_2<lstm_135/while/lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_135/while/lstm_cell_204/addAddV2-lstm_135/while/lstm_cell_204/MatMul:product:0/lstm_135/while/lstm_cell_204/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_135/while/lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp>lstm_135_while_lstm_cell_204_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_135/while/lstm_cell_204/BiasAddBiasAdd$lstm_135/while/lstm_cell_204/add:z:0;lstm_135/while/lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_135/while/lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_135/while/lstm_cell_204/splitSplit5lstm_135/while/lstm_cell_204/split/split_dim:output:0-lstm_135/while/lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_135/while/lstm_cell_204/SigmoidSigmoid+lstm_135/while/lstm_cell_204/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_135/while/lstm_cell_204/Sigmoid_1Sigmoid+lstm_135/while/lstm_cell_204/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_135/while/lstm_cell_204/mulMul*lstm_135/while/lstm_cell_204/Sigmoid_1:y:0lstm_135_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_135/while/lstm_cell_204/ReluRelu+lstm_135/while/lstm_cell_204/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_135/while/lstm_cell_204/mul_1Mul(lstm_135/while/lstm_cell_204/Sigmoid:y:0/lstm_135/while/lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_135/while/lstm_cell_204/add_1AddV2$lstm_135/while/lstm_cell_204/mul:z:0&lstm_135/while/lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_135/while/lstm_cell_204/Sigmoid_2Sigmoid+lstm_135/while/lstm_cell_204/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_135/while/lstm_cell_204/Relu_1Relu&lstm_135/while/lstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_135/while/lstm_cell_204/mul_2Mul*lstm_135/while/lstm_cell_204/Sigmoid_2:y:01lstm_135/while/lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_135/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_135_while_placeholder_1lstm_135_while_placeholder&lstm_135/while/lstm_cell_204/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_135/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_135/while/addAddV2lstm_135_while_placeholderlstm_135/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_135/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_135/while/add_1AddV2*lstm_135_while_lstm_135_while_loop_counterlstm_135/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_135/while/IdentityIdentitylstm_135/while/add_1:z:0^lstm_135/while/NoOp*
T0*
_output_shapes
: ?
lstm_135/while/Identity_1Identity0lstm_135_while_lstm_135_while_maximum_iterations^lstm_135/while/NoOp*
T0*
_output_shapes
: t
lstm_135/while/Identity_2Identitylstm_135/while/add:z:0^lstm_135/while/NoOp*
T0*
_output_shapes
: ?
lstm_135/while/Identity_3IdentityClstm_135/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_135/while/NoOp*
T0*
_output_shapes
: ?
lstm_135/while/Identity_4Identity&lstm_135/while/lstm_cell_204/mul_2:z:0^lstm_135/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_135/while/Identity_5Identity&lstm_135/while/lstm_cell_204/add_1:z:0^lstm_135/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_135/while/NoOpNoOp4^lstm_135/while/lstm_cell_204/BiasAdd/ReadVariableOp3^lstm_135/while/lstm_cell_204/MatMul/ReadVariableOp5^lstm_135/while/lstm_cell_204/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_135_while_identity lstm_135/while/Identity:output:0"?
lstm_135_while_identity_1"lstm_135/while/Identity_1:output:0"?
lstm_135_while_identity_2"lstm_135/while/Identity_2:output:0"?
lstm_135_while_identity_3"lstm_135/while/Identity_3:output:0"?
lstm_135_while_identity_4"lstm_135/while/Identity_4:output:0"?
lstm_135_while_identity_5"lstm_135/while/Identity_5:output:0"T
'lstm_135_while_lstm_135_strided_slice_1)lstm_135_while_lstm_135_strided_slice_1_0"~
<lstm_135_while_lstm_cell_204_biasadd_readvariableop_resource>lstm_135_while_lstm_cell_204_biasadd_readvariableop_resource_0"?
=lstm_135_while_lstm_cell_204_matmul_1_readvariableop_resource?lstm_135_while_lstm_cell_204_matmul_1_readvariableop_resource_0"|
;lstm_135_while_lstm_cell_204_matmul_readvariableop_resource=lstm_135_while_lstm_cell_204_matmul_readvariableop_resource_0"?
clstm_135_while_tensorarrayv2read_tensorlistgetitem_lstm_135_tensorarrayunstack_tensorlistfromtensorelstm_135_while_tensorarrayv2read_tensorlistgetitem_lstm_135_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_135/while/lstm_cell_204/BiasAdd/ReadVariableOp3lstm_135/while/lstm_cell_204/BiasAdd/ReadVariableOp2h
2lstm_135/while/lstm_cell_204/MatMul/ReadVariableOp2lstm_135/while/lstm_cell_204/MatMul/ReadVariableOp2l
4lstm_135/while/lstm_cell_204/MatMul_1/ReadVariableOp4lstm_135/while/lstm_cell_204/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1247144
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_204_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_204_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_204_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_204_matmul_readvariableop_resource:	?G
4while_lstm_cell_204_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_204_biasadd_readvariableop_resource:	???*while/lstm_cell_204/BiasAdd/ReadVariableOp?)while/lstm_cell_204/MatMul/ReadVariableOp?+while/lstm_cell_204/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_204/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_204_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_204/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_204_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_204/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_204/addAddV2$while/lstm_cell_204/MatMul:product:0&while/lstm_cell_204/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_204_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_204/BiasAddBiasAddwhile/lstm_cell_204/add:z:02while/lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_204/splitSplit,while/lstm_cell_204/split/split_dim:output:0$while/lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_204/SigmoidSigmoid"while/lstm_cell_204/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_204/Sigmoid_1Sigmoid"while/lstm_cell_204/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_204/mulMul!while/lstm_cell_204/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_204/ReluRelu"while/lstm_cell_204/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_204/mul_1Mulwhile/lstm_cell_204/Sigmoid:y:0&while/lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_204/add_1AddV2while/lstm_cell_204/mul:z:0while/lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_204/Sigmoid_2Sigmoid"while/lstm_cell_204/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_204/Relu_1Reluwhile/lstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_204/mul_2Mul!while/lstm_cell_204/Sigmoid_2:y:0(while/lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_204/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_204/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_204/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_204/BiasAdd/ReadVariableOp*^while/lstm_cell_204/MatMul/ReadVariableOp,^while/lstm_cell_204/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_204_biasadd_readvariableop_resource5while_lstm_cell_204_biasadd_readvariableop_resource_0"n
4while_lstm_cell_204_matmul_1_readvariableop_resource6while_lstm_cell_204_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_204_matmul_readvariableop_resource4while_lstm_cell_204_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_204/BiasAdd/ReadVariableOp*while/lstm_cell_204/BiasAdd/ReadVariableOp2V
)while/lstm_cell_204/MatMul/ReadVariableOp)while/lstm_cell_204/MatMul/ReadVariableOp2Z
+while/lstm_cell_204/MatMul_1/ReadVariableOp+while/lstm_cell_204/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_137_layer_call_fn_1250473

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
E__inference_lstm_137_layer_call_and_return_conditional_losses_1247744o
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
?
while_cond_1247293
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1247293___redundant_placeholder05
1while_while_cond_1247293___redundant_placeholder15
1while_while_cond_1247293___redundant_placeholder25
1while_while_cond_1247293___redundant_placeholder3
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
while_body_1250059
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_205_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_205_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_205_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_205_matmul_readvariableop_resource:	d?G
4while_lstm_cell_205_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_205_biasadd_readvariableop_resource:	???*while/lstm_cell_205/BiasAdd/ReadVariableOp?)while/lstm_cell_205/MatMul/ReadVariableOp?+while/lstm_cell_205/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_205/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_205_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_205/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_205/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_205/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_205_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_205/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_205/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_205/addAddV2$while/lstm_cell_205/MatMul:product:0&while/lstm_cell_205/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_205/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_205_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_205/BiasAddBiasAddwhile/lstm_cell_205/add:z:02while/lstm_cell_205/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_205/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_205/splitSplit,while/lstm_cell_205/split/split_dim:output:0$while/lstm_cell_205/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_205/SigmoidSigmoid"while/lstm_cell_205/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_205/Sigmoid_1Sigmoid"while/lstm_cell_205/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_205/mulMul!while/lstm_cell_205/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_205/ReluRelu"while/lstm_cell_205/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_205/mul_1Mulwhile/lstm_cell_205/Sigmoid:y:0&while/lstm_cell_205/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_205/add_1AddV2while/lstm_cell_205/mul:z:0while/lstm_cell_205/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_205/Sigmoid_2Sigmoid"while/lstm_cell_205/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_205/Relu_1Reluwhile/lstm_cell_205/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_205/mul_2Mul!while/lstm_cell_205/Sigmoid_2:y:0(while/lstm_cell_205/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_205/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_205/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_205/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_205/BiasAdd/ReadVariableOp*^while/lstm_cell_205/MatMul/ReadVariableOp,^while/lstm_cell_205/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_205_biasadd_readvariableop_resource5while_lstm_cell_205_biasadd_readvariableop_resource_0"n
4while_lstm_cell_205_matmul_1_readvariableop_resource6while_lstm_cell_205_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_205_matmul_readvariableop_resource4while_lstm_cell_205_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_205/BiasAdd/ReadVariableOp*while/lstm_cell_205/BiasAdd/ReadVariableOp2V
)while/lstm_cell_205/MatMul/ReadVariableOp)while/lstm_cell_205/MatMul/ReadVariableOp2Z
+while/lstm_cell_205/MatMul_1/ReadVariableOp+while/lstm_cell_205/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1246300
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1246300___redundant_placeholder05
1while_while_cond_1246300___redundant_placeholder15
1while_while_cond_1246300___redundant_placeholder25
1while_while_cond_1246300___redundant_placeholder3
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
lstm_136_while_cond_1248967.
*lstm_136_while_lstm_136_while_loop_counter4
0lstm_136_while_lstm_136_while_maximum_iterations
lstm_136_while_placeholder 
lstm_136_while_placeholder_1 
lstm_136_while_placeholder_2 
lstm_136_while_placeholder_30
,lstm_136_while_less_lstm_136_strided_slice_1G
Clstm_136_while_lstm_136_while_cond_1248967___redundant_placeholder0G
Clstm_136_while_lstm_136_while_cond_1248967___redundant_placeholder1G
Clstm_136_while_lstm_136_while_cond_1248967___redundant_placeholder2G
Clstm_136_while_lstm_136_while_cond_1248967___redundant_placeholder3
lstm_136_while_identity
?
lstm_136/while/LessLesslstm_136_while_placeholder,lstm_136_while_less_lstm_136_strided_slice_1*
T0*
_output_shapes
: ]
lstm_136/while/IdentityIdentitylstm_136/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_136_while_identity lstm_136/while/Identity:output:0*(
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
while_body_1250818
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_206_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_206_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_206_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_206_matmul_readvariableop_resource:2(F
4while_lstm_cell_206_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_206_biasadd_readvariableop_resource:(??*while/lstm_cell_206/BiasAdd/ReadVariableOp?)while/lstm_cell_206/MatMul/ReadVariableOp?+while/lstm_cell_206/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_206/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_206_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_206/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_206/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_206_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_206/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_206/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_206/addAddV2$while/lstm_cell_206/MatMul:product:0&while/lstm_cell_206/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_206/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_206_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_206/BiasAddBiasAddwhile/lstm_cell_206/add:z:02while/lstm_cell_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_206/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_206/splitSplit,while/lstm_cell_206/split/split_dim:output:0$while/lstm_cell_206/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_206/SigmoidSigmoid"while/lstm_cell_206/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_206/Sigmoid_1Sigmoid"while/lstm_cell_206/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_206/mulMul!while/lstm_cell_206/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_206/ReluRelu"while/lstm_cell_206/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_206/mul_1Mulwhile/lstm_cell_206/Sigmoid:y:0&while/lstm_cell_206/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_206/add_1AddV2while/lstm_cell_206/mul:z:0while/lstm_cell_206/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_206/Sigmoid_2Sigmoid"while/lstm_cell_206/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_206/Relu_1Reluwhile/lstm_cell_206/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_206/mul_2Mul!while/lstm_cell_206/Sigmoid_2:y:0(while/lstm_cell_206/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_206/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_206/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_206/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_206/BiasAdd/ReadVariableOp*^while/lstm_cell_206/MatMul/ReadVariableOp,^while/lstm_cell_206/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_206_biasadd_readvariableop_resource5while_lstm_cell_206_biasadd_readvariableop_resource_0"n
4while_lstm_cell_206_matmul_1_readvariableop_resource6while_lstm_cell_206_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_206_matmul_readvariableop_resource4while_lstm_cell_206_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_206/BiasAdd/ReadVariableOp*while/lstm_cell_206/BiasAdd/ReadVariableOp2V
)while/lstm_cell_206/MatMul/ReadVariableOp)while/lstm_cell_206/MatMul/ReadVariableOp2Z
+while/lstm_cell_206/MatMul_1/ReadVariableOp+while/lstm_cell_206/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_135_input;
 serving_default_lstm_135_input:0?????????<
dense_450
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
2dense_45/kernel
:2dense_45/bias
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
0:.	?2lstm_135/lstm_cell_135/kernel
::8	d?2'lstm_135/lstm_cell_135/recurrent_kernel
*:(?2lstm_135/lstm_cell_135/bias
0:.	d?2lstm_136/lstm_cell_136/kernel
::8	2?2'lstm_136/lstm_cell_136/recurrent_kernel
*:(?2lstm_136/lstm_cell_136/bias
/:-2(2lstm_137/lstm_cell_137/kernel
9:7
(2'lstm_137/lstm_cell_137/recurrent_kernel
):'(2lstm_137/lstm_cell_137/bias
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
2Adam/dense_45/kernel/m
 :2Adam/dense_45/bias/m
5:3	?2$Adam/lstm_135/lstm_cell_135/kernel/m
?:=	d?2.Adam/lstm_135/lstm_cell_135/recurrent_kernel/m
/:-?2"Adam/lstm_135/lstm_cell_135/bias/m
5:3	d?2$Adam/lstm_136/lstm_cell_136/kernel/m
?:=	2?2.Adam/lstm_136/lstm_cell_136/recurrent_kernel/m
/:-?2"Adam/lstm_136/lstm_cell_136/bias/m
4:22(2$Adam/lstm_137/lstm_cell_137/kernel/m
>:<
(2.Adam/lstm_137/lstm_cell_137/recurrent_kernel/m
.:,(2"Adam/lstm_137/lstm_cell_137/bias/m
&:$
2Adam/dense_45/kernel/v
 :2Adam/dense_45/bias/v
5:3	?2$Adam/lstm_135/lstm_cell_135/kernel/v
?:=	d?2.Adam/lstm_135/lstm_cell_135/recurrent_kernel/v
/:-?2"Adam/lstm_135/lstm_cell_135/bias/v
5:3	d?2$Adam/lstm_136/lstm_cell_136/kernel/v
?:=	2?2.Adam/lstm_136/lstm_cell_136/recurrent_kernel/v
/:-?2"Adam/lstm_136/lstm_cell_136/bias/v
4:22(2$Adam/lstm_137/lstm_cell_137/kernel/v
>:<
(2.Adam/lstm_137/lstm_cell_137/recurrent_kernel/v
.:,(2"Adam/lstm_137/lstm_cell_137/bias/v
?2?
/__inference_sequential_45_layer_call_fn_1247578
/__inference_sequential_45_layer_call_fn_1248316
/__inference_sequential_45_layer_call_fn_1248343
/__inference_sequential_45_layer_call_fn_1248194?
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
J__inference_sequential_45_layer_call_and_return_conditional_losses_1248770
J__inference_sequential_45_layer_call_and_return_conditional_losses_1249197
J__inference_sequential_45_layer_call_and_return_conditional_losses_1248224
J__inference_sequential_45_layer_call_and_return_conditional_losses_1248254?
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
"__inference__wrapped_model_1246029lstm_135_input"?
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
*__inference_lstm_135_layer_call_fn_1249208
*__inference_lstm_135_layer_call_fn_1249219
*__inference_lstm_135_layer_call_fn_1249230
*__inference_lstm_135_layer_call_fn_1249241?
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
E__inference_lstm_135_layer_call_and_return_conditional_losses_1249384
E__inference_lstm_135_layer_call_and_return_conditional_losses_1249527
E__inference_lstm_135_layer_call_and_return_conditional_losses_1249670
E__inference_lstm_135_layer_call_and_return_conditional_losses_1249813?
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
*__inference_lstm_136_layer_call_fn_1249824
*__inference_lstm_136_layer_call_fn_1249835
*__inference_lstm_136_layer_call_fn_1249846
*__inference_lstm_136_layer_call_fn_1249857?
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
E__inference_lstm_136_layer_call_and_return_conditional_losses_1250000
E__inference_lstm_136_layer_call_and_return_conditional_losses_1250143
E__inference_lstm_136_layer_call_and_return_conditional_losses_1250286
E__inference_lstm_136_layer_call_and_return_conditional_losses_1250429?
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
*__inference_lstm_137_layer_call_fn_1250440
*__inference_lstm_137_layer_call_fn_1250451
*__inference_lstm_137_layer_call_fn_1250462
*__inference_lstm_137_layer_call_fn_1250473?
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
E__inference_lstm_137_layer_call_and_return_conditional_losses_1250616
E__inference_lstm_137_layer_call_and_return_conditional_losses_1250759
E__inference_lstm_137_layer_call_and_return_conditional_losses_1250902
E__inference_lstm_137_layer_call_and_return_conditional_losses_1251045?
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
*__inference_dense_45_layer_call_fn_1251054?
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
E__inference_dense_45_layer_call_and_return_conditional_losses_1251064?
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
%__inference_signature_wrapper_1248289lstm_135_input"?
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
/__inference_lstm_cell_204_layer_call_fn_1251081
/__inference_lstm_cell_204_layer_call_fn_1251098?
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
J__inference_lstm_cell_204_layer_call_and_return_conditional_losses_1251130
J__inference_lstm_cell_204_layer_call_and_return_conditional_losses_1251162?
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
/__inference_lstm_cell_205_layer_call_fn_1251179
/__inference_lstm_cell_205_layer_call_fn_1251196?
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
J__inference_lstm_cell_205_layer_call_and_return_conditional_losses_1251228
J__inference_lstm_cell_205_layer_call_and_return_conditional_losses_1251260?
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
/__inference_lstm_cell_206_layer_call_fn_1251277
/__inference_lstm_cell_206_layer_call_fn_1251294?
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
J__inference_lstm_cell_206_layer_call_and_return_conditional_losses_1251326
J__inference_lstm_cell_206_layer_call_and_return_conditional_losses_1251358?
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
"__inference__wrapped_model_1246029-./012345!";?8
1?.
,?)
lstm_135_input?????????
? "3?0
.
dense_45"?
dense_45??????????
E__inference_dense_45_layer_call_and_return_conditional_losses_1251064\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_45_layer_call_fn_1251054O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_135_layer_call_and_return_conditional_losses_1249384?-./O?L
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
E__inference_lstm_135_layer_call_and_return_conditional_losses_1249527?-./O?L
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
E__inference_lstm_135_layer_call_and_return_conditional_losses_1249670q-./??<
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
E__inference_lstm_135_layer_call_and_return_conditional_losses_1249813q-./??<
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
*__inference_lstm_135_layer_call_fn_1249208}-./O?L
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
*__inference_lstm_135_layer_call_fn_1249219}-./O?L
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
*__inference_lstm_135_layer_call_fn_1249230d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_135_layer_call_fn_1249241d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_136_layer_call_and_return_conditional_losses_1250000?012O?L
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
E__inference_lstm_136_layer_call_and_return_conditional_losses_1250143?012O?L
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
E__inference_lstm_136_layer_call_and_return_conditional_losses_1250286q012??<
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
E__inference_lstm_136_layer_call_and_return_conditional_losses_1250429q012??<
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
*__inference_lstm_136_layer_call_fn_1249824}012O?L
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
*__inference_lstm_136_layer_call_fn_1249835}012O?L
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
*__inference_lstm_136_layer_call_fn_1249846d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_136_layer_call_fn_1249857d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_137_layer_call_and_return_conditional_losses_1250616}345O?L
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
E__inference_lstm_137_layer_call_and_return_conditional_losses_1250759}345O?L
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
E__inference_lstm_137_layer_call_and_return_conditional_losses_1250902m345??<
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
E__inference_lstm_137_layer_call_and_return_conditional_losses_1251045m345??<
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
*__inference_lstm_137_layer_call_fn_1250440p345O?L
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
*__inference_lstm_137_layer_call_fn_1250451p345O?L
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
*__inference_lstm_137_layer_call_fn_1250462`345??<
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
*__inference_lstm_137_layer_call_fn_1250473`345??<
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
J__inference_lstm_cell_204_layer_call_and_return_conditional_losses_1251130?-./??}
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
J__inference_lstm_cell_204_layer_call_and_return_conditional_losses_1251162?-./??}
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
/__inference_lstm_cell_204_layer_call_fn_1251081?-./??}
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
/__inference_lstm_cell_204_layer_call_fn_1251098?-./??}
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
J__inference_lstm_cell_205_layer_call_and_return_conditional_losses_1251228?012??}
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
J__inference_lstm_cell_205_layer_call_and_return_conditional_losses_1251260?012??}
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
/__inference_lstm_cell_205_layer_call_fn_1251179?012??}
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
/__inference_lstm_cell_205_layer_call_fn_1251196?012??}
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
J__inference_lstm_cell_206_layer_call_and_return_conditional_losses_1251326?345??}
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
J__inference_lstm_cell_206_layer_call_and_return_conditional_losses_1251358?345??}
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
/__inference_lstm_cell_206_layer_call_fn_1251277?345??}
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
/__inference_lstm_cell_206_layer_call_fn_1251294?345??}
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
J__inference_sequential_45_layer_call_and_return_conditional_losses_1248224y-./012345!"C?@
9?6
,?)
lstm_135_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_45_layer_call_and_return_conditional_losses_1248254y-./012345!"C?@
9?6
,?)
lstm_135_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_45_layer_call_and_return_conditional_losses_1248770q-./012345!";?8
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
J__inference_sequential_45_layer_call_and_return_conditional_losses_1249197q-./012345!";?8
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
/__inference_sequential_45_layer_call_fn_1247578l-./012345!"C?@
9?6
,?)
lstm_135_input?????????
p 

 
? "???????????
/__inference_sequential_45_layer_call_fn_1248194l-./012345!"C?@
9?6
,?)
lstm_135_input?????????
p

 
? "???????????
/__inference_sequential_45_layer_call_fn_1248316d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_45_layer_call_fn_1248343d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1248289?-./012345!"M?J
? 
C?@
>
lstm_135_input,?)
lstm_135_input?????????"3?0
.
dense_45"?
dense_45?????????