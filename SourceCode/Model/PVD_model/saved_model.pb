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
dense_69/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_69/kernel
s
#dense_69/kernel/Read/ReadVariableOpReadVariableOpdense_69/kernel*
_output_shapes

:
*
dtype0
r
dense_69/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_69/bias
k
!dense_69/bias/Read/ReadVariableOpReadVariableOpdense_69/bias*
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
lstm_207/lstm_cell_207/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_207/lstm_cell_207/kernel
?
1lstm_207/lstm_cell_207/kernel/Read/ReadVariableOpReadVariableOplstm_207/lstm_cell_207/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_207/lstm_cell_207/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_207/lstm_cell_207/recurrent_kernel
?
;lstm_207/lstm_cell_207/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_207/lstm_cell_207/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_207/lstm_cell_207/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_207/lstm_cell_207/bias
?
/lstm_207/lstm_cell_207/bias/Read/ReadVariableOpReadVariableOplstm_207/lstm_cell_207/bias*
_output_shapes	
:?*
dtype0
?
lstm_208/lstm_cell_208/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_208/lstm_cell_208/kernel
?
1lstm_208/lstm_cell_208/kernel/Read/ReadVariableOpReadVariableOplstm_208/lstm_cell_208/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_208/lstm_cell_208/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_208/lstm_cell_208/recurrent_kernel
?
;lstm_208/lstm_cell_208/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_208/lstm_cell_208/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_208/lstm_cell_208/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_208/lstm_cell_208/bias
?
/lstm_208/lstm_cell_208/bias/Read/ReadVariableOpReadVariableOplstm_208/lstm_cell_208/bias*
_output_shapes	
:?*
dtype0
?
lstm_209/lstm_cell_209/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_209/lstm_cell_209/kernel
?
1lstm_209/lstm_cell_209/kernel/Read/ReadVariableOpReadVariableOplstm_209/lstm_cell_209/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_209/lstm_cell_209/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_209/lstm_cell_209/recurrent_kernel
?
;lstm_209/lstm_cell_209/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_209/lstm_cell_209/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_209/lstm_cell_209/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_209/lstm_cell_209/bias
?
/lstm_209/lstm_cell_209/bias/Read/ReadVariableOpReadVariableOplstm_209/lstm_cell_209/bias*
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
Adam/dense_69/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_69/kernel/m
?
*Adam/dense_69/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_69/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_69/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_69/bias/m
y
(Adam/dense_69/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_69/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_207/lstm_cell_207/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_207/lstm_cell_207/kernel/m
?
8Adam/lstm_207/lstm_cell_207/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_207/lstm_cell_207/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_207/lstm_cell_207/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_207/lstm_cell_207/recurrent_kernel/m
?
BAdam/lstm_207/lstm_cell_207/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_207/lstm_cell_207/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_207/lstm_cell_207/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_207/lstm_cell_207/bias/m
?
6Adam/lstm_207/lstm_cell_207/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_207/lstm_cell_207/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_208/lstm_cell_208/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_208/lstm_cell_208/kernel/m
?
8Adam/lstm_208/lstm_cell_208/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_208/lstm_cell_208/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_208/lstm_cell_208/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_208/lstm_cell_208/recurrent_kernel/m
?
BAdam/lstm_208/lstm_cell_208/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_208/lstm_cell_208/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_208/lstm_cell_208/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_208/lstm_cell_208/bias/m
?
6Adam/lstm_208/lstm_cell_208/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_208/lstm_cell_208/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_209/lstm_cell_209/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_209/lstm_cell_209/kernel/m
?
8Adam/lstm_209/lstm_cell_209/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_209/lstm_cell_209/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_209/lstm_cell_209/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_209/lstm_cell_209/recurrent_kernel/m
?
BAdam/lstm_209/lstm_cell_209/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_209/lstm_cell_209/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_209/lstm_cell_209/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_209/lstm_cell_209/bias/m
?
6Adam/lstm_209/lstm_cell_209/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_209/lstm_cell_209/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_69/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_69/kernel/v
?
*Adam/dense_69/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_69/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_69/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_69/bias/v
y
(Adam/dense_69/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_69/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_207/lstm_cell_207/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_207/lstm_cell_207/kernel/v
?
8Adam/lstm_207/lstm_cell_207/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_207/lstm_cell_207/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_207/lstm_cell_207/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_207/lstm_cell_207/recurrent_kernel/v
?
BAdam/lstm_207/lstm_cell_207/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_207/lstm_cell_207/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_207/lstm_cell_207/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_207/lstm_cell_207/bias/v
?
6Adam/lstm_207/lstm_cell_207/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_207/lstm_cell_207/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_208/lstm_cell_208/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_208/lstm_cell_208/kernel/v
?
8Adam/lstm_208/lstm_cell_208/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_208/lstm_cell_208/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_208/lstm_cell_208/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_208/lstm_cell_208/recurrent_kernel/v
?
BAdam/lstm_208/lstm_cell_208/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_208/lstm_cell_208/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_208/lstm_cell_208/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_208/lstm_cell_208/bias/v
?
6Adam/lstm_208/lstm_cell_208/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_208/lstm_cell_208/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_209/lstm_cell_209/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_209/lstm_cell_209/kernel/v
?
8Adam/lstm_209/lstm_cell_209/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_209/lstm_cell_209/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_209/lstm_cell_209/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_209/lstm_cell_209/recurrent_kernel/v
?
BAdam/lstm_209/lstm_cell_209/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_209/lstm_cell_209/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_209/lstm_cell_209/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_209/lstm_cell_209/bias/v
?
6Adam/lstm_209/lstm_cell_209/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_209/lstm_cell_209/bias/v*
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
VARIABLE_VALUEdense_69/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_69/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_207/lstm_cell_207/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_207/lstm_cell_207/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_207/lstm_cell_207/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_208/lstm_cell_208/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_208/lstm_cell_208/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_208/lstm_cell_208/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_209/lstm_cell_209/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_209/lstm_cell_209/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_209/lstm_cell_209/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_69/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_69/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_207/lstm_cell_207/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_207/lstm_cell_207/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_207/lstm_cell_207/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_208/lstm_cell_208/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_208/lstm_cell_208/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_208/lstm_cell_208/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_209/lstm_cell_209/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_209/lstm_cell_209/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_209/lstm_cell_209/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_69/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_69/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_207/lstm_cell_207/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_207/lstm_cell_207/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_207/lstm_cell_207/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_208/lstm_cell_208/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_208/lstm_cell_208/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_208/lstm_cell_208/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_209/lstm_cell_209/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_209/lstm_cell_209/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_209/lstm_cell_209/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_207_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_207_inputlstm_207/lstm_cell_207/kernel'lstm_207/lstm_cell_207/recurrent_kernellstm_207/lstm_cell_207/biaslstm_208/lstm_cell_208/kernel'lstm_208/lstm_cell_208/recurrent_kernellstm_208/lstm_cell_208/biaslstm_209/lstm_cell_209/kernel'lstm_209/lstm_cell_209/recurrent_kernellstm_209/lstm_cell_209/biasdense_69/kerneldense_69/bias*
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
%__inference_signature_wrapper_3080695
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_69/kernel/Read/ReadVariableOp!dense_69/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_207/lstm_cell_207/kernel/Read/ReadVariableOp;lstm_207/lstm_cell_207/recurrent_kernel/Read/ReadVariableOp/lstm_207/lstm_cell_207/bias/Read/ReadVariableOp1lstm_208/lstm_cell_208/kernel/Read/ReadVariableOp;lstm_208/lstm_cell_208/recurrent_kernel/Read/ReadVariableOp/lstm_208/lstm_cell_208/bias/Read/ReadVariableOp1lstm_209/lstm_cell_209/kernel/Read/ReadVariableOp;lstm_209/lstm_cell_209/recurrent_kernel/Read/ReadVariableOp/lstm_209/lstm_cell_209/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_69/kernel/m/Read/ReadVariableOp(Adam/dense_69/bias/m/Read/ReadVariableOp8Adam/lstm_207/lstm_cell_207/kernel/m/Read/ReadVariableOpBAdam/lstm_207/lstm_cell_207/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_207/lstm_cell_207/bias/m/Read/ReadVariableOp8Adam/lstm_208/lstm_cell_208/kernel/m/Read/ReadVariableOpBAdam/lstm_208/lstm_cell_208/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_208/lstm_cell_208/bias/m/Read/ReadVariableOp8Adam/lstm_209/lstm_cell_209/kernel/m/Read/ReadVariableOpBAdam/lstm_209/lstm_cell_209/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_209/lstm_cell_209/bias/m/Read/ReadVariableOp*Adam/dense_69/kernel/v/Read/ReadVariableOp(Adam/dense_69/bias/v/Read/ReadVariableOp8Adam/lstm_207/lstm_cell_207/kernel/v/Read/ReadVariableOpBAdam/lstm_207/lstm_cell_207/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_207/lstm_cell_207/bias/v/Read/ReadVariableOp8Adam/lstm_208/lstm_cell_208/kernel/v/Read/ReadVariableOpBAdam/lstm_208/lstm_cell_208/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_208/lstm_cell_208/bias/v/Read/ReadVariableOp8Adam/lstm_209/lstm_cell_209/kernel/v/Read/ReadVariableOpBAdam/lstm_209/lstm_cell_209/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_209/lstm_cell_209/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3083907
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_69/kerneldense_69/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_207/lstm_cell_207/kernel'lstm_207/lstm_cell_207/recurrent_kernellstm_207/lstm_cell_207/biaslstm_208/lstm_cell_208/kernel'lstm_208/lstm_cell_208/recurrent_kernellstm_208/lstm_cell_208/biaslstm_209/lstm_cell_209/kernel'lstm_209/lstm_cell_209/recurrent_kernellstm_209/lstm_cell_209/biastotalcountAdam/dense_69/kernel/mAdam/dense_69/bias/m$Adam/lstm_207/lstm_cell_207/kernel/m.Adam/lstm_207/lstm_cell_207/recurrent_kernel/m"Adam/lstm_207/lstm_cell_207/bias/m$Adam/lstm_208/lstm_cell_208/kernel/m.Adam/lstm_208/lstm_cell_208/recurrent_kernel/m"Adam/lstm_208/lstm_cell_208/bias/m$Adam/lstm_209/lstm_cell_209/kernel/m.Adam/lstm_209/lstm_cell_209/recurrent_kernel/m"Adam/lstm_209/lstm_cell_209/bias/mAdam/dense_69/kernel/vAdam/dense_69/bias/v$Adam/lstm_207/lstm_cell_207/kernel/v.Adam/lstm_207/lstm_cell_207/recurrent_kernel/v"Adam/lstm_207/lstm_cell_207/bias/v$Adam/lstm_208/lstm_cell_208/kernel/v.Adam/lstm_208/lstm_cell_208/recurrent_kernel/v"Adam/lstm_208/lstm_cell_208/bias/v$Adam/lstm_209/lstm_cell_209/kernel/v.Adam/lstm_209/lstm_cell_209/recurrent_kernel/v"Adam/lstm_209/lstm_cell_209/bias/v*4
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
#__inference__traced_restore_3084037??+
?8
?
while_body_3079700
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_508_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_508_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_508_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_508_matmul_readvariableop_resource:	d?G
4while_lstm_cell_508_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_508_biasadd_readvariableop_resource:	???*while/lstm_cell_508/BiasAdd/ReadVariableOp?)while/lstm_cell_508/MatMul/ReadVariableOp?+while/lstm_cell_508/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_508/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_508_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_508/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_508/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_508/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_508_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_508/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_508/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_508/addAddV2$while/lstm_cell_508/MatMul:product:0&while/lstm_cell_508/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_508/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_508_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_508/BiasAddBiasAddwhile/lstm_cell_508/add:z:02while/lstm_cell_508/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_508/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_508/splitSplit,while/lstm_cell_508/split/split_dim:output:0$while/lstm_cell_508/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_508/SigmoidSigmoid"while/lstm_cell_508/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_508/Sigmoid_1Sigmoid"while/lstm_cell_508/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_508/mulMul!while/lstm_cell_508/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_508/ReluRelu"while/lstm_cell_508/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_508/mul_1Mulwhile/lstm_cell_508/Sigmoid:y:0&while/lstm_cell_508/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_508/add_1AddV2while/lstm_cell_508/mul:z:0while/lstm_cell_508/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_508/Sigmoid_2Sigmoid"while/lstm_cell_508/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_508/Relu_1Reluwhile/lstm_cell_508/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_508/mul_2Mul!while/lstm_cell_508/Sigmoid_2:y:0(while/lstm_cell_508/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_508/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_508/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_508/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_508/BiasAdd/ReadVariableOp*^while/lstm_cell_508/MatMul/ReadVariableOp,^while/lstm_cell_508/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_508_biasadd_readvariableop_resource5while_lstm_cell_508_biasadd_readvariableop_resource_0"n
4while_lstm_cell_508_matmul_1_readvariableop_resource6while_lstm_cell_508_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_508_matmul_readvariableop_resource4while_lstm_cell_508_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_508/BiasAdd/ReadVariableOp*while/lstm_cell_508/BiasAdd/ReadVariableOp2V
)while/lstm_cell_508/MatMul/ReadVariableOp)while/lstm_cell_508/MatMul/ReadVariableOp2Z
+while/lstm_cell_508/MatMul_1/ReadVariableOp+while/lstm_cell_508/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_207_layer_call_and_return_conditional_losses_3078585

inputs(
lstm_cell_507_3078503:	?(
lstm_cell_507_3078505:	d?$
lstm_cell_507_3078507:	?
identity??%lstm_cell_507/StatefulPartitionedCall?while;
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
%lstm_cell_507/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_507_3078503lstm_cell_507_3078505lstm_cell_507_3078507*
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
J__inference_lstm_cell_507_layer_call_and_return_conditional_losses_3078502n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_507_3078503lstm_cell_507_3078505lstm_cell_507_3078507*
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
while_body_3078516*
condR
while_cond_3078515*K
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
NoOpNoOp&^lstm_cell_507/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_507/StatefulPartitionedCall%lstm_cell_507/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_3080396
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_507_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_507_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_507_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_507_matmul_readvariableop_resource:	?G
4while_lstm_cell_507_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_507_biasadd_readvariableop_resource:	???*while/lstm_cell_507/BiasAdd/ReadVariableOp?)while/lstm_cell_507/MatMul/ReadVariableOp?+while/lstm_cell_507/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_507/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_507_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_507/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_507/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_507/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_507_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_507/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_507/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_507/addAddV2$while/lstm_cell_507/MatMul:product:0&while/lstm_cell_507/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_507/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_507_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_507/BiasAddBiasAddwhile/lstm_cell_507/add:z:02while/lstm_cell_507/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_507/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_507/splitSplit,while/lstm_cell_507/split/split_dim:output:0$while/lstm_cell_507/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_507/SigmoidSigmoid"while/lstm_cell_507/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_507/Sigmoid_1Sigmoid"while/lstm_cell_507/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_507/mulMul!while/lstm_cell_507/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_507/ReluRelu"while/lstm_cell_507/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_507/mul_1Mulwhile/lstm_cell_507/Sigmoid:y:0&while/lstm_cell_507/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_507/add_1AddV2while/lstm_cell_507/mul:z:0while/lstm_cell_507/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_507/Sigmoid_2Sigmoid"while/lstm_cell_507/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_507/Relu_1Reluwhile/lstm_cell_507/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_507/mul_2Mul!while/lstm_cell_507/Sigmoid_2:y:0(while/lstm_cell_507/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_507/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_507/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_507/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_507/BiasAdd/ReadVariableOp*^while/lstm_cell_507/MatMul/ReadVariableOp,^while/lstm_cell_507/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_507_biasadd_readvariableop_resource5while_lstm_cell_507_biasadd_readvariableop_resource_0"n
4while_lstm_cell_507_matmul_1_readvariableop_resource6while_lstm_cell_507_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_507_matmul_readvariableop_resource4while_lstm_cell_507_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_507/BiasAdd/ReadVariableOp*while/lstm_cell_507/BiasAdd/ReadVariableOp2V
)while/lstm_cell_507/MatMul/ReadVariableOp)while/lstm_cell_507/MatMul/ReadVariableOp2Z
+while/lstm_cell_507/MatMul_1/ReadVariableOp+while/lstm_cell_507/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3081991
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3081991___redundant_placeholder05
1while_while_cond_3081991___redundant_placeholder15
1while_while_cond_3081991___redundant_placeholder25
1while_while_cond_3081991___redundant_placeholder3
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

lstm_208_while_body_3081374.
*lstm_208_while_lstm_208_while_loop_counter4
0lstm_208_while_lstm_208_while_maximum_iterations
lstm_208_while_placeholder 
lstm_208_while_placeholder_1 
lstm_208_while_placeholder_2 
lstm_208_while_placeholder_3-
)lstm_208_while_lstm_208_strided_slice_1_0i
elstm_208_while_tensorarrayv2read_tensorlistgetitem_lstm_208_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_208_while_lstm_cell_508_matmul_readvariableop_resource_0:	d?R
?lstm_208_while_lstm_cell_508_matmul_1_readvariableop_resource_0:	2?M
>lstm_208_while_lstm_cell_508_biasadd_readvariableop_resource_0:	?
lstm_208_while_identity
lstm_208_while_identity_1
lstm_208_while_identity_2
lstm_208_while_identity_3
lstm_208_while_identity_4
lstm_208_while_identity_5+
'lstm_208_while_lstm_208_strided_slice_1g
clstm_208_while_tensorarrayv2read_tensorlistgetitem_lstm_208_tensorarrayunstack_tensorlistfromtensorN
;lstm_208_while_lstm_cell_508_matmul_readvariableop_resource:	d?P
=lstm_208_while_lstm_cell_508_matmul_1_readvariableop_resource:	2?K
<lstm_208_while_lstm_cell_508_biasadd_readvariableop_resource:	???3lstm_208/while/lstm_cell_508/BiasAdd/ReadVariableOp?2lstm_208/while/lstm_cell_508/MatMul/ReadVariableOp?4lstm_208/while/lstm_cell_508/MatMul_1/ReadVariableOp?
@lstm_208/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_208/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_208_while_tensorarrayv2read_tensorlistgetitem_lstm_208_tensorarrayunstack_tensorlistfromtensor_0lstm_208_while_placeholderIlstm_208/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_208/while/lstm_cell_508/MatMul/ReadVariableOpReadVariableOp=lstm_208_while_lstm_cell_508_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_208/while/lstm_cell_508/MatMulMatMul9lstm_208/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_208/while/lstm_cell_508/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_208/while/lstm_cell_508/MatMul_1/ReadVariableOpReadVariableOp?lstm_208_while_lstm_cell_508_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_208/while/lstm_cell_508/MatMul_1MatMullstm_208_while_placeholder_2<lstm_208/while/lstm_cell_508/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_208/while/lstm_cell_508/addAddV2-lstm_208/while/lstm_cell_508/MatMul:product:0/lstm_208/while/lstm_cell_508/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_208/while/lstm_cell_508/BiasAdd/ReadVariableOpReadVariableOp>lstm_208_while_lstm_cell_508_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_208/while/lstm_cell_508/BiasAddBiasAdd$lstm_208/while/lstm_cell_508/add:z:0;lstm_208/while/lstm_cell_508/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_208/while/lstm_cell_508/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_208/while/lstm_cell_508/splitSplit5lstm_208/while/lstm_cell_508/split/split_dim:output:0-lstm_208/while/lstm_cell_508/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_208/while/lstm_cell_508/SigmoidSigmoid+lstm_208/while/lstm_cell_508/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_208/while/lstm_cell_508/Sigmoid_1Sigmoid+lstm_208/while/lstm_cell_508/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_208/while/lstm_cell_508/mulMul*lstm_208/while/lstm_cell_508/Sigmoid_1:y:0lstm_208_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_208/while/lstm_cell_508/ReluRelu+lstm_208/while/lstm_cell_508/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_208/while/lstm_cell_508/mul_1Mul(lstm_208/while/lstm_cell_508/Sigmoid:y:0/lstm_208/while/lstm_cell_508/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_208/while/lstm_cell_508/add_1AddV2$lstm_208/while/lstm_cell_508/mul:z:0&lstm_208/while/lstm_cell_508/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_208/while/lstm_cell_508/Sigmoid_2Sigmoid+lstm_208/while/lstm_cell_508/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_208/while/lstm_cell_508/Relu_1Relu&lstm_208/while/lstm_cell_508/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_208/while/lstm_cell_508/mul_2Mul*lstm_208/while/lstm_cell_508/Sigmoid_2:y:01lstm_208/while/lstm_cell_508/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_208/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_208_while_placeholder_1lstm_208_while_placeholder&lstm_208/while/lstm_cell_508/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_208/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_208/while/addAddV2lstm_208_while_placeholderlstm_208/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_208/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_208/while/add_1AddV2*lstm_208_while_lstm_208_while_loop_counterlstm_208/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_208/while/IdentityIdentitylstm_208/while/add_1:z:0^lstm_208/while/NoOp*
T0*
_output_shapes
: ?
lstm_208/while/Identity_1Identity0lstm_208_while_lstm_208_while_maximum_iterations^lstm_208/while/NoOp*
T0*
_output_shapes
: t
lstm_208/while/Identity_2Identitylstm_208/while/add:z:0^lstm_208/while/NoOp*
T0*
_output_shapes
: ?
lstm_208/while/Identity_3IdentityClstm_208/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_208/while/NoOp*
T0*
_output_shapes
: ?
lstm_208/while/Identity_4Identity&lstm_208/while/lstm_cell_508/mul_2:z:0^lstm_208/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_208/while/Identity_5Identity&lstm_208/while/lstm_cell_508/add_1:z:0^lstm_208/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_208/while/NoOpNoOp4^lstm_208/while/lstm_cell_508/BiasAdd/ReadVariableOp3^lstm_208/while/lstm_cell_508/MatMul/ReadVariableOp5^lstm_208/while/lstm_cell_508/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_208_while_identity lstm_208/while/Identity:output:0"?
lstm_208_while_identity_1"lstm_208/while/Identity_1:output:0"?
lstm_208_while_identity_2"lstm_208/while/Identity_2:output:0"?
lstm_208_while_identity_3"lstm_208/while/Identity_3:output:0"?
lstm_208_while_identity_4"lstm_208/while/Identity_4:output:0"?
lstm_208_while_identity_5"lstm_208/while/Identity_5:output:0"T
'lstm_208_while_lstm_208_strided_slice_1)lstm_208_while_lstm_208_strided_slice_1_0"~
<lstm_208_while_lstm_cell_508_biasadd_readvariableop_resource>lstm_208_while_lstm_cell_508_biasadd_readvariableop_resource_0"?
=lstm_208_while_lstm_cell_508_matmul_1_readvariableop_resource?lstm_208_while_lstm_cell_508_matmul_1_readvariableop_resource_0"|
;lstm_208_while_lstm_cell_508_matmul_readvariableop_resource=lstm_208_while_lstm_cell_508_matmul_readvariableop_resource_0"?
clstm_208_while_tensorarrayv2read_tensorlistgetitem_lstm_208_tensorarrayunstack_tensorlistfromtensorelstm_208_while_tensorarrayv2read_tensorlistgetitem_lstm_208_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_208/while/lstm_cell_508/BiasAdd/ReadVariableOp3lstm_208/while/lstm_cell_508/BiasAdd/ReadVariableOp2h
2lstm_208/while/lstm_cell_508/MatMul/ReadVariableOp2lstm_208/while/lstm_cell_508/MatMul/ReadVariableOp2l
4lstm_208/while/lstm_cell_508/MatMul_1/ReadVariableOp4lstm_208/while/lstm_cell_508/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3082607
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3082607___redundant_placeholder05
1while_while_cond_3082607___redundant_placeholder15
1while_while_cond_3082607___redundant_placeholder25
1while_while_cond_3082607___redundant_placeholder3
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
/__inference_lstm_cell_507_layer_call_fn_3083504

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
J__inference_lstm_cell_507_layer_call_and_return_conditional_losses_3078648o
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
while_body_3079850
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_509_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_509_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_509_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_509_matmul_readvariableop_resource:2(F
4while_lstm_cell_509_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_509_biasadd_readvariableop_resource:(??*while/lstm_cell_509/BiasAdd/ReadVariableOp?)while/lstm_cell_509/MatMul/ReadVariableOp?+while/lstm_cell_509/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_509/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_509_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_509/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_509/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_509/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_509_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_509/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_509/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_509/addAddV2$while/lstm_cell_509/MatMul:product:0&while/lstm_cell_509/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_509/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_509_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_509/BiasAddBiasAddwhile/lstm_cell_509/add:z:02while/lstm_cell_509/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_509/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_509/splitSplit,while/lstm_cell_509/split/split_dim:output:0$while/lstm_cell_509/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_509/SigmoidSigmoid"while/lstm_cell_509/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_509/Sigmoid_1Sigmoid"while/lstm_cell_509/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_509/mulMul!while/lstm_cell_509/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_509/ReluRelu"while/lstm_cell_509/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_509/mul_1Mulwhile/lstm_cell_509/Sigmoid:y:0&while/lstm_cell_509/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_509/add_1AddV2while/lstm_cell_509/mul:z:0while/lstm_cell_509/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_509/Sigmoid_2Sigmoid"while/lstm_cell_509/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_509/Relu_1Reluwhile/lstm_cell_509/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_509/mul_2Mul!while/lstm_cell_509/Sigmoid_2:y:0(while/lstm_cell_509/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_509/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_509/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_509/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_509/BiasAdd/ReadVariableOp*^while/lstm_cell_509/MatMul/ReadVariableOp,^while/lstm_cell_509/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_509_biasadd_readvariableop_resource5while_lstm_cell_509_biasadd_readvariableop_resource_0"n
4while_lstm_cell_509_matmul_1_readvariableop_resource6while_lstm_cell_509_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_509_matmul_readvariableop_resource4while_lstm_cell_509_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_509/BiasAdd/ReadVariableOp*while/lstm_cell_509/BiasAdd/ReadVariableOp2V
)while/lstm_cell_509/MatMul/ReadVariableOp)while/lstm_cell_509/MatMul/ReadVariableOp2Z
+while/lstm_cell_509/MatMul_1/ReadVariableOp+while/lstm_cell_509/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_207_layer_call_and_return_conditional_losses_3081933
inputs_0?
,lstm_cell_507_matmul_readvariableop_resource:	?A
.lstm_cell_507_matmul_1_readvariableop_resource:	d?<
-lstm_cell_507_biasadd_readvariableop_resource:	?
identity??$lstm_cell_507/BiasAdd/ReadVariableOp?#lstm_cell_507/MatMul/ReadVariableOp?%lstm_cell_507/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_507/MatMul/ReadVariableOpReadVariableOp,lstm_cell_507_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_507/MatMulMatMulstrided_slice_2:output:0+lstm_cell_507/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_507/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_507_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_507/MatMul_1MatMulzeros:output:0-lstm_cell_507/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_507/addAddV2lstm_cell_507/MatMul:product:0 lstm_cell_507/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_507/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_507_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_507/BiasAddBiasAddlstm_cell_507/add:z:0,lstm_cell_507/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_507/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_507/splitSplit&lstm_cell_507/split/split_dim:output:0lstm_cell_507/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_507/SigmoidSigmoidlstm_cell_507/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_507/Sigmoid_1Sigmoidlstm_cell_507/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_507/mulMullstm_cell_507/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_507/ReluRelulstm_cell_507/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_507/mul_1Mullstm_cell_507/Sigmoid:y:0 lstm_cell_507/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_507/add_1AddV2lstm_cell_507/mul:z:0lstm_cell_507/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_507/Sigmoid_2Sigmoidlstm_cell_507/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_507/Relu_1Relulstm_cell_507/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_507/mul_2Mullstm_cell_507/Sigmoid_2:y:0"lstm_cell_507/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_507_matmul_readvariableop_resource.lstm_cell_507_matmul_1_readvariableop_resource-lstm_cell_507_biasadd_readvariableop_resource*
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
while_body_3081849*
condR
while_cond_3081848*K
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
NoOpNoOp%^lstm_cell_507/BiasAdd/ReadVariableOp$^lstm_cell_507/MatMul/ReadVariableOp&^lstm_cell_507/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_507/BiasAdd/ReadVariableOp$lstm_cell_507/BiasAdd/ReadVariableOp2J
#lstm_cell_507/MatMul/ReadVariableOp#lstm_cell_507/MatMul/ReadVariableOp2N
%lstm_cell_507/MatMul_1/ReadVariableOp%lstm_cell_507/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_208_layer_call_and_return_conditional_losses_3080315

inputs?
,lstm_cell_508_matmul_readvariableop_resource:	d?A
.lstm_cell_508_matmul_1_readvariableop_resource:	2?<
-lstm_cell_508_biasadd_readvariableop_resource:	?
identity??$lstm_cell_508/BiasAdd/ReadVariableOp?#lstm_cell_508/MatMul/ReadVariableOp?%lstm_cell_508/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_508/MatMul/ReadVariableOpReadVariableOp,lstm_cell_508_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_508/MatMulMatMulstrided_slice_2:output:0+lstm_cell_508/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_508/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_508_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_508/MatMul_1MatMulzeros:output:0-lstm_cell_508/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_508/addAddV2lstm_cell_508/MatMul:product:0 lstm_cell_508/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_508/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_508_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_508/BiasAddBiasAddlstm_cell_508/add:z:0,lstm_cell_508/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_508/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_508/splitSplit&lstm_cell_508/split/split_dim:output:0lstm_cell_508/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_508/SigmoidSigmoidlstm_cell_508/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_508/Sigmoid_1Sigmoidlstm_cell_508/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_508/mulMullstm_cell_508/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_508/ReluRelulstm_cell_508/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_508/mul_1Mullstm_cell_508/Sigmoid:y:0 lstm_cell_508/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_508/add_1AddV2lstm_cell_508/mul:z:0lstm_cell_508/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_508/Sigmoid_2Sigmoidlstm_cell_508/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_508/Relu_1Relulstm_cell_508/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_508/mul_2Mullstm_cell_508/Sigmoid_2:y:0"lstm_cell_508/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_508_matmul_readvariableop_resource.lstm_cell_508_matmul_1_readvariableop_resource-lstm_cell_508_biasadd_readvariableop_resource*
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
while_body_3080231*
condR
while_cond_3080230*K
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
NoOpNoOp%^lstm_cell_508/BiasAdd/ReadVariableOp$^lstm_cell_508/MatMul/ReadVariableOp&^lstm_cell_508/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_508/BiasAdd/ReadVariableOp$lstm_cell_508/BiasAdd/ReadVariableOp2J
#lstm_cell_508/MatMul/ReadVariableOp#lstm_cell_508/MatMul/ReadVariableOp2N
%lstm_cell_508/MatMul_1/ReadVariableOp%lstm_cell_508/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3081848
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3081848___redundant_placeholder05
1while_while_cond_3081848___redundant_placeholder15
1while_while_cond_3081848___redundant_placeholder25
1while_while_cond_3081848___redundant_placeholder3
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
lstm_209_while_cond_3081085.
*lstm_209_while_lstm_209_while_loop_counter4
0lstm_209_while_lstm_209_while_maximum_iterations
lstm_209_while_placeholder 
lstm_209_while_placeholder_1 
lstm_209_while_placeholder_2 
lstm_209_while_placeholder_30
,lstm_209_while_less_lstm_209_strided_slice_1G
Clstm_209_while_lstm_209_while_cond_3081085___redundant_placeholder0G
Clstm_209_while_lstm_209_while_cond_3081085___redundant_placeholder1G
Clstm_209_while_lstm_209_while_cond_3081085___redundant_placeholder2G
Clstm_209_while_lstm_209_while_cond_3081085___redundant_placeholder3
lstm_209_while_identity
?
lstm_209/while/LessLesslstm_209_while_placeholder,lstm_209_while_less_lstm_209_strided_slice_1*
T0*
_output_shapes
: ]
lstm_209/while/IdentityIdentitylstm_209/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_209_while_identity lstm_209/while/Identity:output:0*(
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
while_body_3080231
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_508_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_508_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_508_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_508_matmul_readvariableop_resource:	d?G
4while_lstm_cell_508_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_508_biasadd_readvariableop_resource:	???*while/lstm_cell_508/BiasAdd/ReadVariableOp?)while/lstm_cell_508/MatMul/ReadVariableOp?+while/lstm_cell_508/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_508/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_508_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_508/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_508/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_508/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_508_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_508/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_508/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_508/addAddV2$while/lstm_cell_508/MatMul:product:0&while/lstm_cell_508/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_508/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_508_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_508/BiasAddBiasAddwhile/lstm_cell_508/add:z:02while/lstm_cell_508/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_508/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_508/splitSplit,while/lstm_cell_508/split/split_dim:output:0$while/lstm_cell_508/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_508/SigmoidSigmoid"while/lstm_cell_508/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_508/Sigmoid_1Sigmoid"while/lstm_cell_508/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_508/mulMul!while/lstm_cell_508/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_508/ReluRelu"while/lstm_cell_508/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_508/mul_1Mulwhile/lstm_cell_508/Sigmoid:y:0&while/lstm_cell_508/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_508/add_1AddV2while/lstm_cell_508/mul:z:0while/lstm_cell_508/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_508/Sigmoid_2Sigmoid"while/lstm_cell_508/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_508/Relu_1Reluwhile/lstm_cell_508/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_508/mul_2Mul!while/lstm_cell_508/Sigmoid_2:y:0(while/lstm_cell_508/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_508/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_508/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_508/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_508/BiasAdd/ReadVariableOp*^while/lstm_cell_508/MatMul/ReadVariableOp,^while/lstm_cell_508/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_508_biasadd_readvariableop_resource5while_lstm_cell_508_biasadd_readvariableop_resource_0"n
4while_lstm_cell_508_matmul_1_readvariableop_resource6while_lstm_cell_508_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_508_matmul_readvariableop_resource4while_lstm_cell_508_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_508/BiasAdd/ReadVariableOp*while/lstm_cell_508/BiasAdd/ReadVariableOp2V
)while/lstm_cell_508/MatMul/ReadVariableOp)while/lstm_cell_508/MatMul/ReadVariableOp2Z
+while/lstm_cell_508/MatMul_1/ReadVariableOp+while/lstm_cell_508/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_207_layer_call_and_return_conditional_losses_3082219

inputs?
,lstm_cell_507_matmul_readvariableop_resource:	?A
.lstm_cell_507_matmul_1_readvariableop_resource:	d?<
-lstm_cell_507_biasadd_readvariableop_resource:	?
identity??$lstm_cell_507/BiasAdd/ReadVariableOp?#lstm_cell_507/MatMul/ReadVariableOp?%lstm_cell_507/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_507/MatMul/ReadVariableOpReadVariableOp,lstm_cell_507_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_507/MatMulMatMulstrided_slice_2:output:0+lstm_cell_507/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_507/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_507_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_507/MatMul_1MatMulzeros:output:0-lstm_cell_507/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_507/addAddV2lstm_cell_507/MatMul:product:0 lstm_cell_507/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_507/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_507_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_507/BiasAddBiasAddlstm_cell_507/add:z:0,lstm_cell_507/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_507/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_507/splitSplit&lstm_cell_507/split/split_dim:output:0lstm_cell_507/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_507/SigmoidSigmoidlstm_cell_507/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_507/Sigmoid_1Sigmoidlstm_cell_507/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_507/mulMullstm_cell_507/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_507/ReluRelulstm_cell_507/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_507/mul_1Mullstm_cell_507/Sigmoid:y:0 lstm_cell_507/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_507/add_1AddV2lstm_cell_507/mul:z:0lstm_cell_507/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_507/Sigmoid_2Sigmoidlstm_cell_507/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_507/Relu_1Relulstm_cell_507/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_507/mul_2Mullstm_cell_507/Sigmoid_2:y:0"lstm_cell_507/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_507_matmul_readvariableop_resource.lstm_cell_507_matmul_1_readvariableop_resource-lstm_cell_507_biasadd_readvariableop_resource*
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
while_body_3082135*
condR
while_cond_3082134*K
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
NoOpNoOp%^lstm_cell_507/BiasAdd/ReadVariableOp$^lstm_cell_507/MatMul/ReadVariableOp&^lstm_cell_507/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_507/BiasAdd/ReadVariableOp$lstm_cell_507/BiasAdd/ReadVariableOp2J
#lstm_cell_507/MatMul/ReadVariableOp#lstm_cell_507/MatMul/ReadVariableOp2N
%lstm_cell_507/MatMul_1/ReadVariableOp%lstm_cell_507/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3083367
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_509_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_509_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_509_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_509_matmul_readvariableop_resource:2(F
4while_lstm_cell_509_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_509_biasadd_readvariableop_resource:(??*while/lstm_cell_509/BiasAdd/ReadVariableOp?)while/lstm_cell_509/MatMul/ReadVariableOp?+while/lstm_cell_509/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_509/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_509_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_509/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_509/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_509/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_509_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_509/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_509/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_509/addAddV2$while/lstm_cell_509/MatMul:product:0&while/lstm_cell_509/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_509/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_509_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_509/BiasAddBiasAddwhile/lstm_cell_509/add:z:02while/lstm_cell_509/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_509/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_509/splitSplit,while/lstm_cell_509/split/split_dim:output:0$while/lstm_cell_509/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_509/SigmoidSigmoid"while/lstm_cell_509/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_509/Sigmoid_1Sigmoid"while/lstm_cell_509/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_509/mulMul!while/lstm_cell_509/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_509/ReluRelu"while/lstm_cell_509/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_509/mul_1Mulwhile/lstm_cell_509/Sigmoid:y:0&while/lstm_cell_509/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_509/add_1AddV2while/lstm_cell_509/mul:z:0while/lstm_cell_509/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_509/Sigmoid_2Sigmoid"while/lstm_cell_509/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_509/Relu_1Reluwhile/lstm_cell_509/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_509/mul_2Mul!while/lstm_cell_509/Sigmoid_2:y:0(while/lstm_cell_509/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_509/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_509/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_509/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_509/BiasAdd/ReadVariableOp*^while/lstm_cell_509/MatMul/ReadVariableOp,^while/lstm_cell_509/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_509_biasadd_readvariableop_resource5while_lstm_cell_509_biasadd_readvariableop_resource_0"n
4while_lstm_cell_509_matmul_1_readvariableop_resource6while_lstm_cell_509_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_509_matmul_readvariableop_resource4while_lstm_cell_509_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_509/BiasAdd/ReadVariableOp*while/lstm_cell_509/BiasAdd/ReadVariableOp2V
)while/lstm_cell_509/MatMul/ReadVariableOp)while/lstm_cell_509/MatMul/ReadVariableOp2Z
+while/lstm_cell_509/MatMul_1/ReadVariableOp+while/lstm_cell_509/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?S
?
)sequential_69_lstm_208_while_body_3078206J
Fsequential_69_lstm_208_while_sequential_69_lstm_208_while_loop_counterP
Lsequential_69_lstm_208_while_sequential_69_lstm_208_while_maximum_iterations,
(sequential_69_lstm_208_while_placeholder.
*sequential_69_lstm_208_while_placeholder_1.
*sequential_69_lstm_208_while_placeholder_2.
*sequential_69_lstm_208_while_placeholder_3I
Esequential_69_lstm_208_while_sequential_69_lstm_208_strided_slice_1_0?
?sequential_69_lstm_208_while_tensorarrayv2read_tensorlistgetitem_sequential_69_lstm_208_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_69_lstm_208_while_lstm_cell_508_matmul_readvariableop_resource_0:	d?`
Msequential_69_lstm_208_while_lstm_cell_508_matmul_1_readvariableop_resource_0:	2?[
Lsequential_69_lstm_208_while_lstm_cell_508_biasadd_readvariableop_resource_0:	?)
%sequential_69_lstm_208_while_identity+
'sequential_69_lstm_208_while_identity_1+
'sequential_69_lstm_208_while_identity_2+
'sequential_69_lstm_208_while_identity_3+
'sequential_69_lstm_208_while_identity_4+
'sequential_69_lstm_208_while_identity_5G
Csequential_69_lstm_208_while_sequential_69_lstm_208_strided_slice_1?
sequential_69_lstm_208_while_tensorarrayv2read_tensorlistgetitem_sequential_69_lstm_208_tensorarrayunstack_tensorlistfromtensor\
Isequential_69_lstm_208_while_lstm_cell_508_matmul_readvariableop_resource:	d?^
Ksequential_69_lstm_208_while_lstm_cell_508_matmul_1_readvariableop_resource:	2?Y
Jsequential_69_lstm_208_while_lstm_cell_508_biasadd_readvariableop_resource:	???Asequential_69/lstm_208/while/lstm_cell_508/BiasAdd/ReadVariableOp?@sequential_69/lstm_208/while/lstm_cell_508/MatMul/ReadVariableOp?Bsequential_69/lstm_208/while/lstm_cell_508/MatMul_1/ReadVariableOp?
Nsequential_69/lstm_208/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_69/lstm_208/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_69_lstm_208_while_tensorarrayv2read_tensorlistgetitem_sequential_69_lstm_208_tensorarrayunstack_tensorlistfromtensor_0(sequential_69_lstm_208_while_placeholderWsequential_69/lstm_208/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_69/lstm_208/while/lstm_cell_508/MatMul/ReadVariableOpReadVariableOpKsequential_69_lstm_208_while_lstm_cell_508_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_69/lstm_208/while/lstm_cell_508/MatMulMatMulGsequential_69/lstm_208/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_69/lstm_208/while/lstm_cell_508/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_69/lstm_208/while/lstm_cell_508/MatMul_1/ReadVariableOpReadVariableOpMsequential_69_lstm_208_while_lstm_cell_508_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_69/lstm_208/while/lstm_cell_508/MatMul_1MatMul*sequential_69_lstm_208_while_placeholder_2Jsequential_69/lstm_208/while/lstm_cell_508/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_69/lstm_208/while/lstm_cell_508/addAddV2;sequential_69/lstm_208/while/lstm_cell_508/MatMul:product:0=sequential_69/lstm_208/while/lstm_cell_508/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_69/lstm_208/while/lstm_cell_508/BiasAdd/ReadVariableOpReadVariableOpLsequential_69_lstm_208_while_lstm_cell_508_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_69/lstm_208/while/lstm_cell_508/BiasAddBiasAdd2sequential_69/lstm_208/while/lstm_cell_508/add:z:0Isequential_69/lstm_208/while/lstm_cell_508/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_69/lstm_208/while/lstm_cell_508/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_69/lstm_208/while/lstm_cell_508/splitSplitCsequential_69/lstm_208/while/lstm_cell_508/split/split_dim:output:0;sequential_69/lstm_208/while/lstm_cell_508/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_69/lstm_208/while/lstm_cell_508/SigmoidSigmoid9sequential_69/lstm_208/while/lstm_cell_508/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_69/lstm_208/while/lstm_cell_508/Sigmoid_1Sigmoid9sequential_69/lstm_208/while/lstm_cell_508/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_69/lstm_208/while/lstm_cell_508/mulMul8sequential_69/lstm_208/while/lstm_cell_508/Sigmoid_1:y:0*sequential_69_lstm_208_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_69/lstm_208/while/lstm_cell_508/ReluRelu9sequential_69/lstm_208/while/lstm_cell_508/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_69/lstm_208/while/lstm_cell_508/mul_1Mul6sequential_69/lstm_208/while/lstm_cell_508/Sigmoid:y:0=sequential_69/lstm_208/while/lstm_cell_508/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_69/lstm_208/while/lstm_cell_508/add_1AddV22sequential_69/lstm_208/while/lstm_cell_508/mul:z:04sequential_69/lstm_208/while/lstm_cell_508/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_69/lstm_208/while/lstm_cell_508/Sigmoid_2Sigmoid9sequential_69/lstm_208/while/lstm_cell_508/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_69/lstm_208/while/lstm_cell_508/Relu_1Relu4sequential_69/lstm_208/while/lstm_cell_508/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_69/lstm_208/while/lstm_cell_508/mul_2Mul8sequential_69/lstm_208/while/lstm_cell_508/Sigmoid_2:y:0?sequential_69/lstm_208/while/lstm_cell_508/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_69/lstm_208/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_69_lstm_208_while_placeholder_1(sequential_69_lstm_208_while_placeholder4sequential_69/lstm_208/while/lstm_cell_508/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_69/lstm_208/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_69/lstm_208/while/addAddV2(sequential_69_lstm_208_while_placeholder+sequential_69/lstm_208/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_69/lstm_208/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_69/lstm_208/while/add_1AddV2Fsequential_69_lstm_208_while_sequential_69_lstm_208_while_loop_counter-sequential_69/lstm_208/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_69/lstm_208/while/IdentityIdentity&sequential_69/lstm_208/while/add_1:z:0"^sequential_69/lstm_208/while/NoOp*
T0*
_output_shapes
: ?
'sequential_69/lstm_208/while/Identity_1IdentityLsequential_69_lstm_208_while_sequential_69_lstm_208_while_maximum_iterations"^sequential_69/lstm_208/while/NoOp*
T0*
_output_shapes
: ?
'sequential_69/lstm_208/while/Identity_2Identity$sequential_69/lstm_208/while/add:z:0"^sequential_69/lstm_208/while/NoOp*
T0*
_output_shapes
: ?
'sequential_69/lstm_208/while/Identity_3IdentityQsequential_69/lstm_208/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_69/lstm_208/while/NoOp*
T0*
_output_shapes
: ?
'sequential_69/lstm_208/while/Identity_4Identity4sequential_69/lstm_208/while/lstm_cell_508/mul_2:z:0"^sequential_69/lstm_208/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_69/lstm_208/while/Identity_5Identity4sequential_69/lstm_208/while/lstm_cell_508/add_1:z:0"^sequential_69/lstm_208/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_69/lstm_208/while/NoOpNoOpB^sequential_69/lstm_208/while/lstm_cell_508/BiasAdd/ReadVariableOpA^sequential_69/lstm_208/while/lstm_cell_508/MatMul/ReadVariableOpC^sequential_69/lstm_208/while/lstm_cell_508/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_69_lstm_208_while_identity.sequential_69/lstm_208/while/Identity:output:0"[
'sequential_69_lstm_208_while_identity_10sequential_69/lstm_208/while/Identity_1:output:0"[
'sequential_69_lstm_208_while_identity_20sequential_69/lstm_208/while/Identity_2:output:0"[
'sequential_69_lstm_208_while_identity_30sequential_69/lstm_208/while/Identity_3:output:0"[
'sequential_69_lstm_208_while_identity_40sequential_69/lstm_208/while/Identity_4:output:0"[
'sequential_69_lstm_208_while_identity_50sequential_69/lstm_208/while/Identity_5:output:0"?
Jsequential_69_lstm_208_while_lstm_cell_508_biasadd_readvariableop_resourceLsequential_69_lstm_208_while_lstm_cell_508_biasadd_readvariableop_resource_0"?
Ksequential_69_lstm_208_while_lstm_cell_508_matmul_1_readvariableop_resourceMsequential_69_lstm_208_while_lstm_cell_508_matmul_1_readvariableop_resource_0"?
Isequential_69_lstm_208_while_lstm_cell_508_matmul_readvariableop_resourceKsequential_69_lstm_208_while_lstm_cell_508_matmul_readvariableop_resource_0"?
Csequential_69_lstm_208_while_sequential_69_lstm_208_strided_slice_1Esequential_69_lstm_208_while_sequential_69_lstm_208_strided_slice_1_0"?
sequential_69_lstm_208_while_tensorarrayv2read_tensorlistgetitem_sequential_69_lstm_208_tensorarrayunstack_tensorlistfromtensor?sequential_69_lstm_208_while_tensorarrayv2read_tensorlistgetitem_sequential_69_lstm_208_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_69/lstm_208/while/lstm_cell_508/BiasAdd/ReadVariableOpAsequential_69/lstm_208/while/lstm_cell_508/BiasAdd/ReadVariableOp2?
@sequential_69/lstm_208/while/lstm_cell_508/MatMul/ReadVariableOp@sequential_69/lstm_208/while/lstm_cell_508/MatMul/ReadVariableOp2?
Bsequential_69/lstm_208/while/lstm_cell_508/MatMul_1/ReadVariableOpBsequential_69/lstm_208/while/lstm_cell_508/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3082464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3082464___redundant_placeholder05
1while_while_cond_3082464___redundant_placeholder15
1while_while_cond_3082464___redundant_placeholder25
1while_while_cond_3082464___redundant_placeholder3
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
E__inference_lstm_209_layer_call_and_return_conditional_losses_3079285

inputs'
lstm_cell_509_3079203:2('
lstm_cell_509_3079205:
(#
lstm_cell_509_3079207:(
identity??%lstm_cell_509/StatefulPartitionedCall?while;
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
%lstm_cell_509/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_509_3079203lstm_cell_509_3079205lstm_cell_509_3079207*
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
J__inference_lstm_cell_509_layer_call_and_return_conditional_losses_3079202n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_509_3079203lstm_cell_509_3079205lstm_cell_509_3079207*
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
while_body_3079216*
condR
while_cond_3079215*K
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
NoOpNoOp&^lstm_cell_509/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_509/StatefulPartitionedCall%lstm_cell_509/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?

?
lstm_207_while_cond_3081234.
*lstm_207_while_lstm_207_while_loop_counter4
0lstm_207_while_lstm_207_while_maximum_iterations
lstm_207_while_placeholder 
lstm_207_while_placeholder_1 
lstm_207_while_placeholder_2 
lstm_207_while_placeholder_30
,lstm_207_while_less_lstm_207_strided_slice_1G
Clstm_207_while_lstm_207_while_cond_3081234___redundant_placeholder0G
Clstm_207_while_lstm_207_while_cond_3081234___redundant_placeholder1G
Clstm_207_while_lstm_207_while_cond_3081234___redundant_placeholder2G
Clstm_207_while_lstm_207_while_cond_3081234___redundant_placeholder3
lstm_207_while_identity
?
lstm_207/while/LessLesslstm_207_while_placeholder,lstm_207_while_less_lstm_207_strided_slice_1*
T0*
_output_shapes
: ]
lstm_207/while/IdentityIdentitylstm_207/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_207_while_identity lstm_207/while/Identity:output:0*(
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
/__inference_lstm_cell_508_layer_call_fn_3083585

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
J__inference_lstm_cell_508_layer_call_and_return_conditional_losses_3078852o
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
?
)sequential_69_lstm_207_while_cond_3078066J
Fsequential_69_lstm_207_while_sequential_69_lstm_207_while_loop_counterP
Lsequential_69_lstm_207_while_sequential_69_lstm_207_while_maximum_iterations,
(sequential_69_lstm_207_while_placeholder.
*sequential_69_lstm_207_while_placeholder_1.
*sequential_69_lstm_207_while_placeholder_2.
*sequential_69_lstm_207_while_placeholder_3L
Hsequential_69_lstm_207_while_less_sequential_69_lstm_207_strided_slice_1c
_sequential_69_lstm_207_while_sequential_69_lstm_207_while_cond_3078066___redundant_placeholder0c
_sequential_69_lstm_207_while_sequential_69_lstm_207_while_cond_3078066___redundant_placeholder1c
_sequential_69_lstm_207_while_sequential_69_lstm_207_while_cond_3078066___redundant_placeholder2c
_sequential_69_lstm_207_while_sequential_69_lstm_207_while_cond_3078066___redundant_placeholder3)
%sequential_69_lstm_207_while_identity
?
!sequential_69/lstm_207/while/LessLess(sequential_69_lstm_207_while_placeholderHsequential_69_lstm_207_while_less_sequential_69_lstm_207_strided_slice_1*
T0*
_output_shapes
: y
%sequential_69/lstm_207/while/IdentityIdentity%sequential_69/lstm_207/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_69_lstm_207_while_identity.sequential_69/lstm_207/while/Identity:output:0*(
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
/__inference_sequential_69_layer_call_fn_3080722

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
J__inference_sequential_69_layer_call_and_return_conditional_losses_3079959o
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
*__inference_lstm_207_layer_call_fn_3081625
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
E__inference_lstm_207_layer_call_and_return_conditional_losses_3078776|
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
?
)sequential_69_lstm_208_while_cond_3078205J
Fsequential_69_lstm_208_while_sequential_69_lstm_208_while_loop_counterP
Lsequential_69_lstm_208_while_sequential_69_lstm_208_while_maximum_iterations,
(sequential_69_lstm_208_while_placeholder.
*sequential_69_lstm_208_while_placeholder_1.
*sequential_69_lstm_208_while_placeholder_2.
*sequential_69_lstm_208_while_placeholder_3L
Hsequential_69_lstm_208_while_less_sequential_69_lstm_208_strided_slice_1c
_sequential_69_lstm_208_while_sequential_69_lstm_208_while_cond_3078205___redundant_placeholder0c
_sequential_69_lstm_208_while_sequential_69_lstm_208_while_cond_3078205___redundant_placeholder1c
_sequential_69_lstm_208_while_sequential_69_lstm_208_while_cond_3078205___redundant_placeholder2c
_sequential_69_lstm_208_while_sequential_69_lstm_208_while_cond_3078205___redundant_placeholder3)
%sequential_69_lstm_208_while_identity
?
!sequential_69/lstm_208/while/LessLess(sequential_69_lstm_208_while_placeholderHsequential_69_lstm_208_while_less_sequential_69_lstm_208_strided_slice_1*
T0*
_output_shapes
: y
%sequential_69/lstm_208/while/IdentityIdentity%sequential_69/lstm_208/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_69_lstm_208_while_identity.sequential_69/lstm_208/while/Identity:output:0*(
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
J__inference_lstm_cell_507_layer_call_and_return_conditional_losses_3083536

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
while_cond_3080065
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3080065___redundant_placeholder05
1while_while_cond_3080065___redundant_placeholder15
1while_while_cond_3080065___redundant_placeholder25
1while_while_cond_3080065___redundant_placeholder3
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
*__inference_lstm_208_layer_call_fn_3082241
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
E__inference_lstm_208_layer_call_and_return_conditional_losses_3079126|
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
E__inference_lstm_207_layer_call_and_return_conditional_losses_3080480

inputs?
,lstm_cell_507_matmul_readvariableop_resource:	?A
.lstm_cell_507_matmul_1_readvariableop_resource:	d?<
-lstm_cell_507_biasadd_readvariableop_resource:	?
identity??$lstm_cell_507/BiasAdd/ReadVariableOp?#lstm_cell_507/MatMul/ReadVariableOp?%lstm_cell_507/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_507/MatMul/ReadVariableOpReadVariableOp,lstm_cell_507_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_507/MatMulMatMulstrided_slice_2:output:0+lstm_cell_507/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_507/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_507_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_507/MatMul_1MatMulzeros:output:0-lstm_cell_507/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_507/addAddV2lstm_cell_507/MatMul:product:0 lstm_cell_507/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_507/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_507_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_507/BiasAddBiasAddlstm_cell_507/add:z:0,lstm_cell_507/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_507/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_507/splitSplit&lstm_cell_507/split/split_dim:output:0lstm_cell_507/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_507/SigmoidSigmoidlstm_cell_507/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_507/Sigmoid_1Sigmoidlstm_cell_507/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_507/mulMullstm_cell_507/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_507/ReluRelulstm_cell_507/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_507/mul_1Mullstm_cell_507/Sigmoid:y:0 lstm_cell_507/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_507/add_1AddV2lstm_cell_507/mul:z:0lstm_cell_507/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_507/Sigmoid_2Sigmoidlstm_cell_507/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_507/Relu_1Relulstm_cell_507/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_507/mul_2Mullstm_cell_507/Sigmoid_2:y:0"lstm_cell_507/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_507_matmul_readvariableop_resource.lstm_cell_507_matmul_1_readvariableop_resource-lstm_cell_507_biasadd_readvariableop_resource*
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
while_body_3080396*
condR
while_cond_3080395*K
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
NoOpNoOp%^lstm_cell_507/BiasAdd/ReadVariableOp$^lstm_cell_507/MatMul/ReadVariableOp&^lstm_cell_507/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_507/BiasAdd/ReadVariableOp$lstm_cell_507/BiasAdd/ReadVariableOp2J
#lstm_cell_507/MatMul/ReadVariableOp#lstm_cell_507/MatMul/ReadVariableOp2N
%lstm_cell_507/MatMul_1/ReadVariableOp%lstm_cell_507/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3079849
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3079849___redundant_placeholder05
1while_while_cond_3079849___redundant_placeholder15
1while_while_cond_3079849___redundant_placeholder25
1while_while_cond_3079849___redundant_placeholder3
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
E__inference_lstm_209_layer_call_and_return_conditional_losses_3083451

inputs>
,lstm_cell_509_matmul_readvariableop_resource:2(@
.lstm_cell_509_matmul_1_readvariableop_resource:
(;
-lstm_cell_509_biasadd_readvariableop_resource:(
identity??$lstm_cell_509/BiasAdd/ReadVariableOp?#lstm_cell_509/MatMul/ReadVariableOp?%lstm_cell_509/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_509/MatMul/ReadVariableOpReadVariableOp,lstm_cell_509_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_509/MatMulMatMulstrided_slice_2:output:0+lstm_cell_509/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_509/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_509_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_509/MatMul_1MatMulzeros:output:0-lstm_cell_509/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_509/addAddV2lstm_cell_509/MatMul:product:0 lstm_cell_509/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_509/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_509_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_509/BiasAddBiasAddlstm_cell_509/add:z:0,lstm_cell_509/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_509/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_509/splitSplit&lstm_cell_509/split/split_dim:output:0lstm_cell_509/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_509/SigmoidSigmoidlstm_cell_509/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_509/Sigmoid_1Sigmoidlstm_cell_509/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_509/mulMullstm_cell_509/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_509/ReluRelulstm_cell_509/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_509/mul_1Mullstm_cell_509/Sigmoid:y:0 lstm_cell_509/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_509/add_1AddV2lstm_cell_509/mul:z:0lstm_cell_509/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_509/Sigmoid_2Sigmoidlstm_cell_509/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_509/Relu_1Relulstm_cell_509/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_509/mul_2Mullstm_cell_509/Sigmoid_2:y:0"lstm_cell_509/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_509_matmul_readvariableop_resource.lstm_cell_509_matmul_1_readvariableop_resource-lstm_cell_509_biasadd_readvariableop_resource*
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
while_body_3083367*
condR
while_cond_3083366*K
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
NoOpNoOp%^lstm_cell_509/BiasAdd/ReadVariableOp$^lstm_cell_509/MatMul/ReadVariableOp&^lstm_cell_509/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_509/BiasAdd/ReadVariableOp$lstm_cell_509/BiasAdd/ReadVariableOp2J
#lstm_cell_509/MatMul/ReadVariableOp#lstm_cell_509/MatMul/ReadVariableOp2N
%lstm_cell_509/MatMul_1/ReadVariableOp%lstm_cell_509/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?	
?
E__inference_dense_69_layer_call_and_return_conditional_losses_3083470

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
?C
?

lstm_207_while_body_3081235.
*lstm_207_while_lstm_207_while_loop_counter4
0lstm_207_while_lstm_207_while_maximum_iterations
lstm_207_while_placeholder 
lstm_207_while_placeholder_1 
lstm_207_while_placeholder_2 
lstm_207_while_placeholder_3-
)lstm_207_while_lstm_207_strided_slice_1_0i
elstm_207_while_tensorarrayv2read_tensorlistgetitem_lstm_207_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_207_while_lstm_cell_507_matmul_readvariableop_resource_0:	?R
?lstm_207_while_lstm_cell_507_matmul_1_readvariableop_resource_0:	d?M
>lstm_207_while_lstm_cell_507_biasadd_readvariableop_resource_0:	?
lstm_207_while_identity
lstm_207_while_identity_1
lstm_207_while_identity_2
lstm_207_while_identity_3
lstm_207_while_identity_4
lstm_207_while_identity_5+
'lstm_207_while_lstm_207_strided_slice_1g
clstm_207_while_tensorarrayv2read_tensorlistgetitem_lstm_207_tensorarrayunstack_tensorlistfromtensorN
;lstm_207_while_lstm_cell_507_matmul_readvariableop_resource:	?P
=lstm_207_while_lstm_cell_507_matmul_1_readvariableop_resource:	d?K
<lstm_207_while_lstm_cell_507_biasadd_readvariableop_resource:	???3lstm_207/while/lstm_cell_507/BiasAdd/ReadVariableOp?2lstm_207/while/lstm_cell_507/MatMul/ReadVariableOp?4lstm_207/while/lstm_cell_507/MatMul_1/ReadVariableOp?
@lstm_207/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_207/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_207_while_tensorarrayv2read_tensorlistgetitem_lstm_207_tensorarrayunstack_tensorlistfromtensor_0lstm_207_while_placeholderIlstm_207/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_207/while/lstm_cell_507/MatMul/ReadVariableOpReadVariableOp=lstm_207_while_lstm_cell_507_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_207/while/lstm_cell_507/MatMulMatMul9lstm_207/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_207/while/lstm_cell_507/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_207/while/lstm_cell_507/MatMul_1/ReadVariableOpReadVariableOp?lstm_207_while_lstm_cell_507_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_207/while/lstm_cell_507/MatMul_1MatMullstm_207_while_placeholder_2<lstm_207/while/lstm_cell_507/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_207/while/lstm_cell_507/addAddV2-lstm_207/while/lstm_cell_507/MatMul:product:0/lstm_207/while/lstm_cell_507/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_207/while/lstm_cell_507/BiasAdd/ReadVariableOpReadVariableOp>lstm_207_while_lstm_cell_507_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_207/while/lstm_cell_507/BiasAddBiasAdd$lstm_207/while/lstm_cell_507/add:z:0;lstm_207/while/lstm_cell_507/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_207/while/lstm_cell_507/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_207/while/lstm_cell_507/splitSplit5lstm_207/while/lstm_cell_507/split/split_dim:output:0-lstm_207/while/lstm_cell_507/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_207/while/lstm_cell_507/SigmoidSigmoid+lstm_207/while/lstm_cell_507/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_207/while/lstm_cell_507/Sigmoid_1Sigmoid+lstm_207/while/lstm_cell_507/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_207/while/lstm_cell_507/mulMul*lstm_207/while/lstm_cell_507/Sigmoid_1:y:0lstm_207_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_207/while/lstm_cell_507/ReluRelu+lstm_207/while/lstm_cell_507/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_207/while/lstm_cell_507/mul_1Mul(lstm_207/while/lstm_cell_507/Sigmoid:y:0/lstm_207/while/lstm_cell_507/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_207/while/lstm_cell_507/add_1AddV2$lstm_207/while/lstm_cell_507/mul:z:0&lstm_207/while/lstm_cell_507/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_207/while/lstm_cell_507/Sigmoid_2Sigmoid+lstm_207/while/lstm_cell_507/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_207/while/lstm_cell_507/Relu_1Relu&lstm_207/while/lstm_cell_507/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_207/while/lstm_cell_507/mul_2Mul*lstm_207/while/lstm_cell_507/Sigmoid_2:y:01lstm_207/while/lstm_cell_507/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_207/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_207_while_placeholder_1lstm_207_while_placeholder&lstm_207/while/lstm_cell_507/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_207/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_207/while/addAddV2lstm_207_while_placeholderlstm_207/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_207/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_207/while/add_1AddV2*lstm_207_while_lstm_207_while_loop_counterlstm_207/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_207/while/IdentityIdentitylstm_207/while/add_1:z:0^lstm_207/while/NoOp*
T0*
_output_shapes
: ?
lstm_207/while/Identity_1Identity0lstm_207_while_lstm_207_while_maximum_iterations^lstm_207/while/NoOp*
T0*
_output_shapes
: t
lstm_207/while/Identity_2Identitylstm_207/while/add:z:0^lstm_207/while/NoOp*
T0*
_output_shapes
: ?
lstm_207/while/Identity_3IdentityClstm_207/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_207/while/NoOp*
T0*
_output_shapes
: ?
lstm_207/while/Identity_4Identity&lstm_207/while/lstm_cell_507/mul_2:z:0^lstm_207/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_207/while/Identity_5Identity&lstm_207/while/lstm_cell_507/add_1:z:0^lstm_207/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_207/while/NoOpNoOp4^lstm_207/while/lstm_cell_507/BiasAdd/ReadVariableOp3^lstm_207/while/lstm_cell_507/MatMul/ReadVariableOp5^lstm_207/while/lstm_cell_507/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_207_while_identity lstm_207/while/Identity:output:0"?
lstm_207_while_identity_1"lstm_207/while/Identity_1:output:0"?
lstm_207_while_identity_2"lstm_207/while/Identity_2:output:0"?
lstm_207_while_identity_3"lstm_207/while/Identity_3:output:0"?
lstm_207_while_identity_4"lstm_207/while/Identity_4:output:0"?
lstm_207_while_identity_5"lstm_207/while/Identity_5:output:0"T
'lstm_207_while_lstm_207_strided_slice_1)lstm_207_while_lstm_207_strided_slice_1_0"~
<lstm_207_while_lstm_cell_507_biasadd_readvariableop_resource>lstm_207_while_lstm_cell_507_biasadd_readvariableop_resource_0"?
=lstm_207_while_lstm_cell_507_matmul_1_readvariableop_resource?lstm_207_while_lstm_cell_507_matmul_1_readvariableop_resource_0"|
;lstm_207_while_lstm_cell_507_matmul_readvariableop_resource=lstm_207_while_lstm_cell_507_matmul_readvariableop_resource_0"?
clstm_207_while_tensorarrayv2read_tensorlistgetitem_lstm_207_tensorarrayunstack_tensorlistfromtensorelstm_207_while_tensorarrayv2read_tensorlistgetitem_lstm_207_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_207/while/lstm_cell_507/BiasAdd/ReadVariableOp3lstm_207/while/lstm_cell_507/BiasAdd/ReadVariableOp2h
2lstm_207/while/lstm_cell_507/MatMul/ReadVariableOp2lstm_207/while/lstm_cell_507/MatMul/ReadVariableOp2l
4lstm_207/while/lstm_cell_507/MatMul_1/ReadVariableOp4lstm_207/while/lstm_cell_507/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_208_while_cond_3081373.
*lstm_208_while_lstm_208_while_loop_counter4
0lstm_208_while_lstm_208_while_maximum_iterations
lstm_208_while_placeholder 
lstm_208_while_placeholder_1 
lstm_208_while_placeholder_2 
lstm_208_while_placeholder_30
,lstm_208_while_less_lstm_208_strided_slice_1G
Clstm_208_while_lstm_208_while_cond_3081373___redundant_placeholder0G
Clstm_208_while_lstm_208_while_cond_3081373___redundant_placeholder1G
Clstm_208_while_lstm_208_while_cond_3081373___redundant_placeholder2G
Clstm_208_while_lstm_208_while_cond_3081373___redundant_placeholder3
lstm_208_while_identity
?
lstm_208/while/LessLesslstm_208_while_placeholder,lstm_208_while_less_lstm_208_strided_slice_1*
T0*
_output_shapes
: ]
lstm_208/while/IdentityIdentitylstm_208/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_208_while_identity lstm_208/while/Identity:output:0*(
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
/__inference_lstm_cell_509_layer_call_fn_3083683

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
J__inference_lstm_cell_509_layer_call_and_return_conditional_losses_3079202o
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
E__inference_lstm_209_layer_call_and_return_conditional_losses_3083165
inputs_0>
,lstm_cell_509_matmul_readvariableop_resource:2(@
.lstm_cell_509_matmul_1_readvariableop_resource:
(;
-lstm_cell_509_biasadd_readvariableop_resource:(
identity??$lstm_cell_509/BiasAdd/ReadVariableOp?#lstm_cell_509/MatMul/ReadVariableOp?%lstm_cell_509/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_509/MatMul/ReadVariableOpReadVariableOp,lstm_cell_509_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_509/MatMulMatMulstrided_slice_2:output:0+lstm_cell_509/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_509/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_509_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_509/MatMul_1MatMulzeros:output:0-lstm_cell_509/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_509/addAddV2lstm_cell_509/MatMul:product:0 lstm_cell_509/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_509/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_509_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_509/BiasAddBiasAddlstm_cell_509/add:z:0,lstm_cell_509/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_509/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_509/splitSplit&lstm_cell_509/split/split_dim:output:0lstm_cell_509/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_509/SigmoidSigmoidlstm_cell_509/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_509/Sigmoid_1Sigmoidlstm_cell_509/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_509/mulMullstm_cell_509/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_509/ReluRelulstm_cell_509/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_509/mul_1Mullstm_cell_509/Sigmoid:y:0 lstm_cell_509/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_509/add_1AddV2lstm_cell_509/mul:z:0lstm_cell_509/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_509/Sigmoid_2Sigmoidlstm_cell_509/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_509/Relu_1Relulstm_cell_509/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_509/mul_2Mullstm_cell_509/Sigmoid_2:y:0"lstm_cell_509/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_509_matmul_readvariableop_resource.lstm_cell_509_matmul_1_readvariableop_resource-lstm_cell_509_biasadd_readvariableop_resource*
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
while_body_3083081*
condR
while_cond_3083080*K
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
NoOpNoOp%^lstm_cell_509/BiasAdd/ReadVariableOp$^lstm_cell_509/MatMul/ReadVariableOp&^lstm_cell_509/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_509/BiasAdd/ReadVariableOp$lstm_cell_509/BiasAdd/ReadVariableOp2J
#lstm_cell_509/MatMul/ReadVariableOp#lstm_cell_509/MatMul/ReadVariableOp2N
%lstm_cell_509/MatMul_1/ReadVariableOp%lstm_cell_509/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_209_layer_call_fn_3082879

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
E__inference_lstm_209_layer_call_and_return_conditional_losses_3080150o
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
while_cond_3079056
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3079056___redundant_placeholder05
1while_while_cond_3079056___redundant_placeholder15
1while_while_cond_3079056___redundant_placeholder25
1while_while_cond_3079056___redundant_placeholder3
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
*__inference_lstm_208_layer_call_fn_3082263

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
E__inference_lstm_208_layer_call_and_return_conditional_losses_3080315s
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
J__inference_lstm_cell_509_layer_call_and_return_conditional_losses_3079202

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
?
?
J__inference_lstm_cell_508_layer_call_and_return_conditional_losses_3083634

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
while_body_3079550
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_507_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_507_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_507_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_507_matmul_readvariableop_resource:	?G
4while_lstm_cell_507_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_507_biasadd_readvariableop_resource:	???*while/lstm_cell_507/BiasAdd/ReadVariableOp?)while/lstm_cell_507/MatMul/ReadVariableOp?+while/lstm_cell_507/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_507/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_507_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_507/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_507/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_507/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_507_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_507/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_507/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_507/addAddV2$while/lstm_cell_507/MatMul:product:0&while/lstm_cell_507/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_507/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_507_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_507/BiasAddBiasAddwhile/lstm_cell_507/add:z:02while/lstm_cell_507/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_507/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_507/splitSplit,while/lstm_cell_507/split/split_dim:output:0$while/lstm_cell_507/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_507/SigmoidSigmoid"while/lstm_cell_507/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_507/Sigmoid_1Sigmoid"while/lstm_cell_507/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_507/mulMul!while/lstm_cell_507/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_507/ReluRelu"while/lstm_cell_507/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_507/mul_1Mulwhile/lstm_cell_507/Sigmoid:y:0&while/lstm_cell_507/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_507/add_1AddV2while/lstm_cell_507/mul:z:0while/lstm_cell_507/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_507/Sigmoid_2Sigmoid"while/lstm_cell_507/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_507/Relu_1Reluwhile/lstm_cell_507/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_507/mul_2Mul!while/lstm_cell_507/Sigmoid_2:y:0(while/lstm_cell_507/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_507/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_507/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_507/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_507/BiasAdd/ReadVariableOp*^while/lstm_cell_507/MatMul/ReadVariableOp,^while/lstm_cell_507/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_507_biasadd_readvariableop_resource5while_lstm_cell_507_biasadd_readvariableop_resource_0"n
4while_lstm_cell_507_matmul_1_readvariableop_resource6while_lstm_cell_507_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_507_matmul_readvariableop_resource4while_lstm_cell_507_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_507/BiasAdd/ReadVariableOp*while/lstm_cell_507/BiasAdd/ReadVariableOp2V
)while/lstm_cell_507/MatMul/ReadVariableOp)while/lstm_cell_507/MatMul/ReadVariableOp2Z
+while/lstm_cell_507/MatMul_1/ReadVariableOp+while/lstm_cell_507/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_208_layer_call_and_return_conditional_losses_3079126

inputs(
lstm_cell_508_3079044:	d?(
lstm_cell_508_3079046:	2?$
lstm_cell_508_3079048:	?
identity??%lstm_cell_508/StatefulPartitionedCall?while;
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
%lstm_cell_508/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_508_3079044lstm_cell_508_3079046lstm_cell_508_3079048*
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
J__inference_lstm_cell_508_layer_call_and_return_conditional_losses_3078998n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_508_3079044lstm_cell_508_3079046lstm_cell_508_3079048*
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
while_body_3079057*
condR
while_cond_3079056*K
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
NoOpNoOp&^lstm_cell_508/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_508/StatefulPartitionedCall%lstm_cell_508/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_3084037
file_prefix2
 assignvariableop_dense_69_kernel:
.
 assignvariableop_1_dense_69_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_207_lstm_cell_207_kernel:	?M
:assignvariableop_8_lstm_207_lstm_cell_207_recurrent_kernel:	d?=
.assignvariableop_9_lstm_207_lstm_cell_207_bias:	?D
1assignvariableop_10_lstm_208_lstm_cell_208_kernel:	d?N
;assignvariableop_11_lstm_208_lstm_cell_208_recurrent_kernel:	2?>
/assignvariableop_12_lstm_208_lstm_cell_208_bias:	?C
1assignvariableop_13_lstm_209_lstm_cell_209_kernel:2(M
;assignvariableop_14_lstm_209_lstm_cell_209_recurrent_kernel:
(=
/assignvariableop_15_lstm_209_lstm_cell_209_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_69_kernel_m:
6
(assignvariableop_19_adam_dense_69_bias_m:K
8assignvariableop_20_adam_lstm_207_lstm_cell_207_kernel_m:	?U
Bassignvariableop_21_adam_lstm_207_lstm_cell_207_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_207_lstm_cell_207_bias_m:	?K
8assignvariableop_23_adam_lstm_208_lstm_cell_208_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_208_lstm_cell_208_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_208_lstm_cell_208_bias_m:	?J
8assignvariableop_26_adam_lstm_209_lstm_cell_209_kernel_m:2(T
Bassignvariableop_27_adam_lstm_209_lstm_cell_209_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_209_lstm_cell_209_bias_m:(<
*assignvariableop_29_adam_dense_69_kernel_v:
6
(assignvariableop_30_adam_dense_69_bias_v:K
8assignvariableop_31_adam_lstm_207_lstm_cell_207_kernel_v:	?U
Bassignvariableop_32_adam_lstm_207_lstm_cell_207_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_207_lstm_cell_207_bias_v:	?K
8assignvariableop_34_adam_lstm_208_lstm_cell_208_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_208_lstm_cell_208_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_208_lstm_cell_208_bias_v:	?J
8assignvariableop_37_adam_lstm_209_lstm_cell_209_kernel_v:2(T
Bassignvariableop_38_adam_lstm_209_lstm_cell_209_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_209_lstm_cell_209_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_69_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_69_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_207_lstm_cell_207_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_207_lstm_cell_207_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_207_lstm_cell_207_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_208_lstm_cell_208_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_208_lstm_cell_208_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_208_lstm_cell_208_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_209_lstm_cell_209_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_209_lstm_cell_209_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_209_lstm_cell_209_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_69_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_69_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_207_lstm_cell_207_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_207_lstm_cell_207_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_207_lstm_cell_207_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_208_lstm_cell_208_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_208_lstm_cell_208_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_208_lstm_cell_208_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_209_lstm_cell_209_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_209_lstm_cell_209_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_209_lstm_cell_209_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_69_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_69_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_207_lstm_cell_207_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_207_lstm_cell_207_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_207_lstm_cell_207_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_208_lstm_cell_208_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_208_lstm_cell_208_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_208_lstm_cell_208_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_209_lstm_cell_209_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_209_lstm_cell_209_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_209_lstm_cell_209_bias_vIdentity_39:output:0"/device:CPU:0*
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
J__inference_lstm_cell_507_layer_call_and_return_conditional_losses_3083568

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
*__inference_lstm_209_layer_call_fn_3082846
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
E__inference_lstm_209_layer_call_and_return_conditional_losses_3079285o
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
%__inference_signature_wrapper_3080695
lstm_207_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_207_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3078435o
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
_user_specified_namelstm_207_input
?
?
*__inference_lstm_208_layer_call_fn_3082252

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
E__inference_lstm_208_layer_call_and_return_conditional_losses_3079784s
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
?
*__inference_lstm_209_layer_call_fn_3082857
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
E__inference_lstm_209_layer_call_and_return_conditional_losses_3079476o
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
while_cond_3080230
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3080230___redundant_placeholder05
1while_while_cond_3080230___redundant_placeholder15
1while_while_cond_3080230___redundant_placeholder25
1while_while_cond_3080230___redundant_placeholder3
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
while_cond_3078865
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3078865___redundant_placeholder05
1while_while_cond_3078865___redundant_placeholder15
1while_while_cond_3078865___redundant_placeholder25
1while_while_cond_3078865___redundant_placeholder3
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
while_cond_3078515
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3078515___redundant_placeholder05
1while_while_cond_3078515___redundant_placeholder15
1while_while_cond_3078515___redundant_placeholder25
1while_while_cond_3078515___redundant_placeholder3
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
while_cond_3079549
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3079549___redundant_placeholder05
1while_while_cond_3079549___redundant_placeholder15
1while_while_cond_3079549___redundant_placeholder25
1while_while_cond_3079549___redundant_placeholder3
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
J__inference_lstm_cell_508_layer_call_and_return_conditional_losses_3083666

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
??
?
J__inference_sequential_69_layer_call_and_return_conditional_losses_3081603

inputsH
5lstm_207_lstm_cell_507_matmul_readvariableop_resource:	?J
7lstm_207_lstm_cell_507_matmul_1_readvariableop_resource:	d?E
6lstm_207_lstm_cell_507_biasadd_readvariableop_resource:	?H
5lstm_208_lstm_cell_508_matmul_readvariableop_resource:	d?J
7lstm_208_lstm_cell_508_matmul_1_readvariableop_resource:	2?E
6lstm_208_lstm_cell_508_biasadd_readvariableop_resource:	?G
5lstm_209_lstm_cell_509_matmul_readvariableop_resource:2(I
7lstm_209_lstm_cell_509_matmul_1_readvariableop_resource:
(D
6lstm_209_lstm_cell_509_biasadd_readvariableop_resource:(9
'dense_69_matmul_readvariableop_resource:
6
(dense_69_biasadd_readvariableop_resource:
identity??dense_69/BiasAdd/ReadVariableOp?dense_69/MatMul/ReadVariableOp?-lstm_207/lstm_cell_507/BiasAdd/ReadVariableOp?,lstm_207/lstm_cell_507/MatMul/ReadVariableOp?.lstm_207/lstm_cell_507/MatMul_1/ReadVariableOp?lstm_207/while?-lstm_208/lstm_cell_508/BiasAdd/ReadVariableOp?,lstm_208/lstm_cell_508/MatMul/ReadVariableOp?.lstm_208/lstm_cell_508/MatMul_1/ReadVariableOp?lstm_208/while?-lstm_209/lstm_cell_509/BiasAdd/ReadVariableOp?,lstm_209/lstm_cell_509/MatMul/ReadVariableOp?.lstm_209/lstm_cell_509/MatMul_1/ReadVariableOp?lstm_209/whileD
lstm_207/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_207/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_207/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_207/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_207/strided_sliceStridedSlicelstm_207/Shape:output:0%lstm_207/strided_slice/stack:output:0'lstm_207/strided_slice/stack_1:output:0'lstm_207/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_207/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_207/zeros/packedPacklstm_207/strided_slice:output:0 lstm_207/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_207/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_207/zerosFilllstm_207/zeros/packed:output:0lstm_207/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_207/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_207/zeros_1/packedPacklstm_207/strided_slice:output:0"lstm_207/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_207/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_207/zeros_1Fill lstm_207/zeros_1/packed:output:0lstm_207/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_207/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_207/transpose	Transposeinputs lstm_207/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_207/Shape_1Shapelstm_207/transpose:y:0*
T0*
_output_shapes
:h
lstm_207/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_207/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_207/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_207/strided_slice_1StridedSlicelstm_207/Shape_1:output:0'lstm_207/strided_slice_1/stack:output:0)lstm_207/strided_slice_1/stack_1:output:0)lstm_207/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_207/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_207/TensorArrayV2TensorListReserve-lstm_207/TensorArrayV2/element_shape:output:0!lstm_207/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_207/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_207/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_207/transpose:y:0Glstm_207/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_207/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_207/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_207/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_207/strided_slice_2StridedSlicelstm_207/transpose:y:0'lstm_207/strided_slice_2/stack:output:0)lstm_207/strided_slice_2/stack_1:output:0)lstm_207/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_207/lstm_cell_507/MatMul/ReadVariableOpReadVariableOp5lstm_207_lstm_cell_507_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_207/lstm_cell_507/MatMulMatMul!lstm_207/strided_slice_2:output:04lstm_207/lstm_cell_507/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_207/lstm_cell_507/MatMul_1/ReadVariableOpReadVariableOp7lstm_207_lstm_cell_507_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_207/lstm_cell_507/MatMul_1MatMullstm_207/zeros:output:06lstm_207/lstm_cell_507/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_207/lstm_cell_507/addAddV2'lstm_207/lstm_cell_507/MatMul:product:0)lstm_207/lstm_cell_507/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_207/lstm_cell_507/BiasAdd/ReadVariableOpReadVariableOp6lstm_207_lstm_cell_507_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_207/lstm_cell_507/BiasAddBiasAddlstm_207/lstm_cell_507/add:z:05lstm_207/lstm_cell_507/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_207/lstm_cell_507/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_207/lstm_cell_507/splitSplit/lstm_207/lstm_cell_507/split/split_dim:output:0'lstm_207/lstm_cell_507/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_207/lstm_cell_507/SigmoidSigmoid%lstm_207/lstm_cell_507/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_207/lstm_cell_507/Sigmoid_1Sigmoid%lstm_207/lstm_cell_507/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_207/lstm_cell_507/mulMul$lstm_207/lstm_cell_507/Sigmoid_1:y:0lstm_207/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_207/lstm_cell_507/ReluRelu%lstm_207/lstm_cell_507/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_207/lstm_cell_507/mul_1Mul"lstm_207/lstm_cell_507/Sigmoid:y:0)lstm_207/lstm_cell_507/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_207/lstm_cell_507/add_1AddV2lstm_207/lstm_cell_507/mul:z:0 lstm_207/lstm_cell_507/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_207/lstm_cell_507/Sigmoid_2Sigmoid%lstm_207/lstm_cell_507/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_207/lstm_cell_507/Relu_1Relu lstm_207/lstm_cell_507/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_207/lstm_cell_507/mul_2Mul$lstm_207/lstm_cell_507/Sigmoid_2:y:0+lstm_207/lstm_cell_507/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_207/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_207/TensorArrayV2_1TensorListReserve/lstm_207/TensorArrayV2_1/element_shape:output:0!lstm_207/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_207/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_207/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_207/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_207/whileWhile$lstm_207/while/loop_counter:output:0*lstm_207/while/maximum_iterations:output:0lstm_207/time:output:0!lstm_207/TensorArrayV2_1:handle:0lstm_207/zeros:output:0lstm_207/zeros_1:output:0!lstm_207/strided_slice_1:output:0@lstm_207/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_207_lstm_cell_507_matmul_readvariableop_resource7lstm_207_lstm_cell_507_matmul_1_readvariableop_resource6lstm_207_lstm_cell_507_biasadd_readvariableop_resource*
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
lstm_207_while_body_3081235*'
condR
lstm_207_while_cond_3081234*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_207/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_207/TensorArrayV2Stack/TensorListStackTensorListStacklstm_207/while:output:3Blstm_207/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_207/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_207/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_207/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_207/strided_slice_3StridedSlice4lstm_207/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_207/strided_slice_3/stack:output:0)lstm_207/strided_slice_3/stack_1:output:0)lstm_207/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_207/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_207/transpose_1	Transpose4lstm_207/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_207/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_207/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_208/ShapeShapelstm_207/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_208/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_208/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_208/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_208/strided_sliceStridedSlicelstm_208/Shape:output:0%lstm_208/strided_slice/stack:output:0'lstm_208/strided_slice/stack_1:output:0'lstm_208/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_208/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_208/zeros/packedPacklstm_208/strided_slice:output:0 lstm_208/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_208/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_208/zerosFilllstm_208/zeros/packed:output:0lstm_208/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_208/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_208/zeros_1/packedPacklstm_208/strided_slice:output:0"lstm_208/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_208/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_208/zeros_1Fill lstm_208/zeros_1/packed:output:0lstm_208/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_208/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_208/transpose	Transposelstm_207/transpose_1:y:0 lstm_208/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_208/Shape_1Shapelstm_208/transpose:y:0*
T0*
_output_shapes
:h
lstm_208/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_208/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_208/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_208/strided_slice_1StridedSlicelstm_208/Shape_1:output:0'lstm_208/strided_slice_1/stack:output:0)lstm_208/strided_slice_1/stack_1:output:0)lstm_208/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_208/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_208/TensorArrayV2TensorListReserve-lstm_208/TensorArrayV2/element_shape:output:0!lstm_208/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_208/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_208/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_208/transpose:y:0Glstm_208/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_208/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_208/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_208/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_208/strided_slice_2StridedSlicelstm_208/transpose:y:0'lstm_208/strided_slice_2/stack:output:0)lstm_208/strided_slice_2/stack_1:output:0)lstm_208/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_208/lstm_cell_508/MatMul/ReadVariableOpReadVariableOp5lstm_208_lstm_cell_508_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_208/lstm_cell_508/MatMulMatMul!lstm_208/strided_slice_2:output:04lstm_208/lstm_cell_508/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_208/lstm_cell_508/MatMul_1/ReadVariableOpReadVariableOp7lstm_208_lstm_cell_508_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_208/lstm_cell_508/MatMul_1MatMullstm_208/zeros:output:06lstm_208/lstm_cell_508/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_208/lstm_cell_508/addAddV2'lstm_208/lstm_cell_508/MatMul:product:0)lstm_208/lstm_cell_508/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_208/lstm_cell_508/BiasAdd/ReadVariableOpReadVariableOp6lstm_208_lstm_cell_508_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_208/lstm_cell_508/BiasAddBiasAddlstm_208/lstm_cell_508/add:z:05lstm_208/lstm_cell_508/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_208/lstm_cell_508/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_208/lstm_cell_508/splitSplit/lstm_208/lstm_cell_508/split/split_dim:output:0'lstm_208/lstm_cell_508/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_208/lstm_cell_508/SigmoidSigmoid%lstm_208/lstm_cell_508/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_208/lstm_cell_508/Sigmoid_1Sigmoid%lstm_208/lstm_cell_508/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_208/lstm_cell_508/mulMul$lstm_208/lstm_cell_508/Sigmoid_1:y:0lstm_208/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_208/lstm_cell_508/ReluRelu%lstm_208/lstm_cell_508/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_208/lstm_cell_508/mul_1Mul"lstm_208/lstm_cell_508/Sigmoid:y:0)lstm_208/lstm_cell_508/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_208/lstm_cell_508/add_1AddV2lstm_208/lstm_cell_508/mul:z:0 lstm_208/lstm_cell_508/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_208/lstm_cell_508/Sigmoid_2Sigmoid%lstm_208/lstm_cell_508/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_208/lstm_cell_508/Relu_1Relu lstm_208/lstm_cell_508/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_208/lstm_cell_508/mul_2Mul$lstm_208/lstm_cell_508/Sigmoid_2:y:0+lstm_208/lstm_cell_508/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_208/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_208/TensorArrayV2_1TensorListReserve/lstm_208/TensorArrayV2_1/element_shape:output:0!lstm_208/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_208/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_208/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_208/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_208/whileWhile$lstm_208/while/loop_counter:output:0*lstm_208/while/maximum_iterations:output:0lstm_208/time:output:0!lstm_208/TensorArrayV2_1:handle:0lstm_208/zeros:output:0lstm_208/zeros_1:output:0!lstm_208/strided_slice_1:output:0@lstm_208/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_208_lstm_cell_508_matmul_readvariableop_resource7lstm_208_lstm_cell_508_matmul_1_readvariableop_resource6lstm_208_lstm_cell_508_biasadd_readvariableop_resource*
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
lstm_208_while_body_3081374*'
condR
lstm_208_while_cond_3081373*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_208/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_208/TensorArrayV2Stack/TensorListStackTensorListStacklstm_208/while:output:3Blstm_208/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_208/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_208/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_208/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_208/strided_slice_3StridedSlice4lstm_208/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_208/strided_slice_3/stack:output:0)lstm_208/strided_slice_3/stack_1:output:0)lstm_208/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_208/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_208/transpose_1	Transpose4lstm_208/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_208/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_208/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_209/ShapeShapelstm_208/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_209/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_209/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_209/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_209/strided_sliceStridedSlicelstm_209/Shape:output:0%lstm_209/strided_slice/stack:output:0'lstm_209/strided_slice/stack_1:output:0'lstm_209/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_209/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_209/zeros/packedPacklstm_209/strided_slice:output:0 lstm_209/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_209/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_209/zerosFilllstm_209/zeros/packed:output:0lstm_209/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_209/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_209/zeros_1/packedPacklstm_209/strided_slice:output:0"lstm_209/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_209/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_209/zeros_1Fill lstm_209/zeros_1/packed:output:0lstm_209/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_209/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_209/transpose	Transposelstm_208/transpose_1:y:0 lstm_209/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_209/Shape_1Shapelstm_209/transpose:y:0*
T0*
_output_shapes
:h
lstm_209/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_209/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_209/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_209/strided_slice_1StridedSlicelstm_209/Shape_1:output:0'lstm_209/strided_slice_1/stack:output:0)lstm_209/strided_slice_1/stack_1:output:0)lstm_209/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_209/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_209/TensorArrayV2TensorListReserve-lstm_209/TensorArrayV2/element_shape:output:0!lstm_209/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_209/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_209/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_209/transpose:y:0Glstm_209/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_209/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_209/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_209/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_209/strided_slice_2StridedSlicelstm_209/transpose:y:0'lstm_209/strided_slice_2/stack:output:0)lstm_209/strided_slice_2/stack_1:output:0)lstm_209/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_209/lstm_cell_509/MatMul/ReadVariableOpReadVariableOp5lstm_209_lstm_cell_509_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_209/lstm_cell_509/MatMulMatMul!lstm_209/strided_slice_2:output:04lstm_209/lstm_cell_509/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_209/lstm_cell_509/MatMul_1/ReadVariableOpReadVariableOp7lstm_209_lstm_cell_509_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_209/lstm_cell_509/MatMul_1MatMullstm_209/zeros:output:06lstm_209/lstm_cell_509/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_209/lstm_cell_509/addAddV2'lstm_209/lstm_cell_509/MatMul:product:0)lstm_209/lstm_cell_509/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_209/lstm_cell_509/BiasAdd/ReadVariableOpReadVariableOp6lstm_209_lstm_cell_509_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_209/lstm_cell_509/BiasAddBiasAddlstm_209/lstm_cell_509/add:z:05lstm_209/lstm_cell_509/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_209/lstm_cell_509/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_209/lstm_cell_509/splitSplit/lstm_209/lstm_cell_509/split/split_dim:output:0'lstm_209/lstm_cell_509/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_209/lstm_cell_509/SigmoidSigmoid%lstm_209/lstm_cell_509/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_209/lstm_cell_509/Sigmoid_1Sigmoid%lstm_209/lstm_cell_509/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_209/lstm_cell_509/mulMul$lstm_209/lstm_cell_509/Sigmoid_1:y:0lstm_209/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_209/lstm_cell_509/ReluRelu%lstm_209/lstm_cell_509/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_209/lstm_cell_509/mul_1Mul"lstm_209/lstm_cell_509/Sigmoid:y:0)lstm_209/lstm_cell_509/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_209/lstm_cell_509/add_1AddV2lstm_209/lstm_cell_509/mul:z:0 lstm_209/lstm_cell_509/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_209/lstm_cell_509/Sigmoid_2Sigmoid%lstm_209/lstm_cell_509/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_209/lstm_cell_509/Relu_1Relu lstm_209/lstm_cell_509/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_209/lstm_cell_509/mul_2Mul$lstm_209/lstm_cell_509/Sigmoid_2:y:0+lstm_209/lstm_cell_509/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_209/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_209/TensorArrayV2_1TensorListReserve/lstm_209/TensorArrayV2_1/element_shape:output:0!lstm_209/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_209/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_209/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_209/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_209/whileWhile$lstm_209/while/loop_counter:output:0*lstm_209/while/maximum_iterations:output:0lstm_209/time:output:0!lstm_209/TensorArrayV2_1:handle:0lstm_209/zeros:output:0lstm_209/zeros_1:output:0!lstm_209/strided_slice_1:output:0@lstm_209/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_209_lstm_cell_509_matmul_readvariableop_resource7lstm_209_lstm_cell_509_matmul_1_readvariableop_resource6lstm_209_lstm_cell_509_biasadd_readvariableop_resource*
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
lstm_209_while_body_3081513*'
condR
lstm_209_while_cond_3081512*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_209/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_209/TensorArrayV2Stack/TensorListStackTensorListStacklstm_209/while:output:3Blstm_209/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_209/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_209/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_209/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_209/strided_slice_3StridedSlice4lstm_209/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_209/strided_slice_3/stack:output:0)lstm_209/strided_slice_3/stack_1:output:0)lstm_209/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_209/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_209/transpose_1	Transpose4lstm_209/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_209/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_209/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_69/MatMul/ReadVariableOpReadVariableOp'dense_69_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_69/MatMulMatMul!lstm_209/strided_slice_3:output:0&dense_69/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_69/BiasAdd/ReadVariableOpReadVariableOp(dense_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_69/BiasAddBiasAdddense_69/MatMul:product:0'dense_69/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_69/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_69/BiasAdd/ReadVariableOp^dense_69/MatMul/ReadVariableOp.^lstm_207/lstm_cell_507/BiasAdd/ReadVariableOp-^lstm_207/lstm_cell_507/MatMul/ReadVariableOp/^lstm_207/lstm_cell_507/MatMul_1/ReadVariableOp^lstm_207/while.^lstm_208/lstm_cell_508/BiasAdd/ReadVariableOp-^lstm_208/lstm_cell_508/MatMul/ReadVariableOp/^lstm_208/lstm_cell_508/MatMul_1/ReadVariableOp^lstm_208/while.^lstm_209/lstm_cell_509/BiasAdd/ReadVariableOp-^lstm_209/lstm_cell_509/MatMul/ReadVariableOp/^lstm_209/lstm_cell_509/MatMul_1/ReadVariableOp^lstm_209/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_69/BiasAdd/ReadVariableOpdense_69/BiasAdd/ReadVariableOp2@
dense_69/MatMul/ReadVariableOpdense_69/MatMul/ReadVariableOp2^
-lstm_207/lstm_cell_507/BiasAdd/ReadVariableOp-lstm_207/lstm_cell_507/BiasAdd/ReadVariableOp2\
,lstm_207/lstm_cell_507/MatMul/ReadVariableOp,lstm_207/lstm_cell_507/MatMul/ReadVariableOp2`
.lstm_207/lstm_cell_507/MatMul_1/ReadVariableOp.lstm_207/lstm_cell_507/MatMul_1/ReadVariableOp2 
lstm_207/whilelstm_207/while2^
-lstm_208/lstm_cell_508/BiasAdd/ReadVariableOp-lstm_208/lstm_cell_508/BiasAdd/ReadVariableOp2\
,lstm_208/lstm_cell_508/MatMul/ReadVariableOp,lstm_208/lstm_cell_508/MatMul/ReadVariableOp2`
.lstm_208/lstm_cell_508/MatMul_1/ReadVariableOp.lstm_208/lstm_cell_508/MatMul_1/ReadVariableOp2 
lstm_208/whilelstm_208/while2^
-lstm_209/lstm_cell_509/BiasAdd/ReadVariableOp-lstm_209/lstm_cell_509/BiasAdd/ReadVariableOp2\
,lstm_209/lstm_cell_509/MatMul/ReadVariableOp,lstm_209/lstm_cell_509/MatMul/ReadVariableOp2`
.lstm_209/lstm_cell_509/MatMul_1/ReadVariableOp.lstm_209/lstm_cell_509/MatMul_1/ReadVariableOp2 
lstm_209/whilelstm_209/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_209_while_body_3081086.
*lstm_209_while_lstm_209_while_loop_counter4
0lstm_209_while_lstm_209_while_maximum_iterations
lstm_209_while_placeholder 
lstm_209_while_placeholder_1 
lstm_209_while_placeholder_2 
lstm_209_while_placeholder_3-
)lstm_209_while_lstm_209_strided_slice_1_0i
elstm_209_while_tensorarrayv2read_tensorlistgetitem_lstm_209_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_209_while_lstm_cell_509_matmul_readvariableop_resource_0:2(Q
?lstm_209_while_lstm_cell_509_matmul_1_readvariableop_resource_0:
(L
>lstm_209_while_lstm_cell_509_biasadd_readvariableop_resource_0:(
lstm_209_while_identity
lstm_209_while_identity_1
lstm_209_while_identity_2
lstm_209_while_identity_3
lstm_209_while_identity_4
lstm_209_while_identity_5+
'lstm_209_while_lstm_209_strided_slice_1g
clstm_209_while_tensorarrayv2read_tensorlistgetitem_lstm_209_tensorarrayunstack_tensorlistfromtensorM
;lstm_209_while_lstm_cell_509_matmul_readvariableop_resource:2(O
=lstm_209_while_lstm_cell_509_matmul_1_readvariableop_resource:
(J
<lstm_209_while_lstm_cell_509_biasadd_readvariableop_resource:(??3lstm_209/while/lstm_cell_509/BiasAdd/ReadVariableOp?2lstm_209/while/lstm_cell_509/MatMul/ReadVariableOp?4lstm_209/while/lstm_cell_509/MatMul_1/ReadVariableOp?
@lstm_209/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_209/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_209_while_tensorarrayv2read_tensorlistgetitem_lstm_209_tensorarrayunstack_tensorlistfromtensor_0lstm_209_while_placeholderIlstm_209/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_209/while/lstm_cell_509/MatMul/ReadVariableOpReadVariableOp=lstm_209_while_lstm_cell_509_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_209/while/lstm_cell_509/MatMulMatMul9lstm_209/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_209/while/lstm_cell_509/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_209/while/lstm_cell_509/MatMul_1/ReadVariableOpReadVariableOp?lstm_209_while_lstm_cell_509_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_209/while/lstm_cell_509/MatMul_1MatMullstm_209_while_placeholder_2<lstm_209/while/lstm_cell_509/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_209/while/lstm_cell_509/addAddV2-lstm_209/while/lstm_cell_509/MatMul:product:0/lstm_209/while/lstm_cell_509/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_209/while/lstm_cell_509/BiasAdd/ReadVariableOpReadVariableOp>lstm_209_while_lstm_cell_509_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_209/while/lstm_cell_509/BiasAddBiasAdd$lstm_209/while/lstm_cell_509/add:z:0;lstm_209/while/lstm_cell_509/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_209/while/lstm_cell_509/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_209/while/lstm_cell_509/splitSplit5lstm_209/while/lstm_cell_509/split/split_dim:output:0-lstm_209/while/lstm_cell_509/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_209/while/lstm_cell_509/SigmoidSigmoid+lstm_209/while/lstm_cell_509/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_209/while/lstm_cell_509/Sigmoid_1Sigmoid+lstm_209/while/lstm_cell_509/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_209/while/lstm_cell_509/mulMul*lstm_209/while/lstm_cell_509/Sigmoid_1:y:0lstm_209_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_209/while/lstm_cell_509/ReluRelu+lstm_209/while/lstm_cell_509/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_209/while/lstm_cell_509/mul_1Mul(lstm_209/while/lstm_cell_509/Sigmoid:y:0/lstm_209/while/lstm_cell_509/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_209/while/lstm_cell_509/add_1AddV2$lstm_209/while/lstm_cell_509/mul:z:0&lstm_209/while/lstm_cell_509/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_209/while/lstm_cell_509/Sigmoid_2Sigmoid+lstm_209/while/lstm_cell_509/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_209/while/lstm_cell_509/Relu_1Relu&lstm_209/while/lstm_cell_509/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_209/while/lstm_cell_509/mul_2Mul*lstm_209/while/lstm_cell_509/Sigmoid_2:y:01lstm_209/while/lstm_cell_509/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_209/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_209_while_placeholder_1lstm_209_while_placeholder&lstm_209/while/lstm_cell_509/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_209/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_209/while/addAddV2lstm_209_while_placeholderlstm_209/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_209/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_209/while/add_1AddV2*lstm_209_while_lstm_209_while_loop_counterlstm_209/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_209/while/IdentityIdentitylstm_209/while/add_1:z:0^lstm_209/while/NoOp*
T0*
_output_shapes
: ?
lstm_209/while/Identity_1Identity0lstm_209_while_lstm_209_while_maximum_iterations^lstm_209/while/NoOp*
T0*
_output_shapes
: t
lstm_209/while/Identity_2Identitylstm_209/while/add:z:0^lstm_209/while/NoOp*
T0*
_output_shapes
: ?
lstm_209/while/Identity_3IdentityClstm_209/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_209/while/NoOp*
T0*
_output_shapes
: ?
lstm_209/while/Identity_4Identity&lstm_209/while/lstm_cell_509/mul_2:z:0^lstm_209/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_209/while/Identity_5Identity&lstm_209/while/lstm_cell_509/add_1:z:0^lstm_209/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_209/while/NoOpNoOp4^lstm_209/while/lstm_cell_509/BiasAdd/ReadVariableOp3^lstm_209/while/lstm_cell_509/MatMul/ReadVariableOp5^lstm_209/while/lstm_cell_509/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_209_while_identity lstm_209/while/Identity:output:0"?
lstm_209_while_identity_1"lstm_209/while/Identity_1:output:0"?
lstm_209_while_identity_2"lstm_209/while/Identity_2:output:0"?
lstm_209_while_identity_3"lstm_209/while/Identity_3:output:0"?
lstm_209_while_identity_4"lstm_209/while/Identity_4:output:0"?
lstm_209_while_identity_5"lstm_209/while/Identity_5:output:0"T
'lstm_209_while_lstm_209_strided_slice_1)lstm_209_while_lstm_209_strided_slice_1_0"~
<lstm_209_while_lstm_cell_509_biasadd_readvariableop_resource>lstm_209_while_lstm_cell_509_biasadd_readvariableop_resource_0"?
=lstm_209_while_lstm_cell_509_matmul_1_readvariableop_resource?lstm_209_while_lstm_cell_509_matmul_1_readvariableop_resource_0"|
;lstm_209_while_lstm_cell_509_matmul_readvariableop_resource=lstm_209_while_lstm_cell_509_matmul_readvariableop_resource_0"?
clstm_209_while_tensorarrayv2read_tensorlistgetitem_lstm_209_tensorarrayunstack_tensorlistfromtensorelstm_209_while_tensorarrayv2read_tensorlistgetitem_lstm_209_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_209/while/lstm_cell_509/BiasAdd/ReadVariableOp3lstm_209/while/lstm_cell_509/BiasAdd/ReadVariableOp2h
2lstm_209/while/lstm_cell_509/MatMul/ReadVariableOp2lstm_209/while/lstm_cell_509/MatMul/ReadVariableOp2l
4lstm_209/while/lstm_cell_509/MatMul_1/ReadVariableOp4lstm_209/while/lstm_cell_509/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_209_layer_call_and_return_conditional_losses_3079476

inputs'
lstm_cell_509_3079394:2('
lstm_cell_509_3079396:
(#
lstm_cell_509_3079398:(
identity??%lstm_cell_509/StatefulPartitionedCall?while;
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
%lstm_cell_509/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_509_3079394lstm_cell_509_3079396lstm_cell_509_3079398*
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
J__inference_lstm_cell_509_layer_call_and_return_conditional_losses_3079348n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_509_3079394lstm_cell_509_3079396lstm_cell_509_3079398*
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
while_body_3079407*
condR
while_cond_3079406*K
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
NoOpNoOp&^lstm_cell_509/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_509/StatefulPartitionedCall%lstm_cell_509/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_208_layer_call_and_return_conditional_losses_3079784

inputs?
,lstm_cell_508_matmul_readvariableop_resource:	d?A
.lstm_cell_508_matmul_1_readvariableop_resource:	2?<
-lstm_cell_508_biasadd_readvariableop_resource:	?
identity??$lstm_cell_508/BiasAdd/ReadVariableOp?#lstm_cell_508/MatMul/ReadVariableOp?%lstm_cell_508/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_508/MatMul/ReadVariableOpReadVariableOp,lstm_cell_508_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_508/MatMulMatMulstrided_slice_2:output:0+lstm_cell_508/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_508/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_508_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_508/MatMul_1MatMulzeros:output:0-lstm_cell_508/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_508/addAddV2lstm_cell_508/MatMul:product:0 lstm_cell_508/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_508/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_508_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_508/BiasAddBiasAddlstm_cell_508/add:z:0,lstm_cell_508/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_508/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_508/splitSplit&lstm_cell_508/split/split_dim:output:0lstm_cell_508/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_508/SigmoidSigmoidlstm_cell_508/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_508/Sigmoid_1Sigmoidlstm_cell_508/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_508/mulMullstm_cell_508/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_508/ReluRelulstm_cell_508/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_508/mul_1Mullstm_cell_508/Sigmoid:y:0 lstm_cell_508/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_508/add_1AddV2lstm_cell_508/mul:z:0lstm_cell_508/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_508/Sigmoid_2Sigmoidlstm_cell_508/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_508/Relu_1Relulstm_cell_508/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_508/mul_2Mullstm_cell_508/Sigmoid_2:y:0"lstm_cell_508/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_508_matmul_readvariableop_resource.lstm_cell_508_matmul_1_readvariableop_resource-lstm_cell_508_biasadd_readvariableop_resource*
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
while_body_3079700*
condR
while_cond_3079699*K
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
NoOpNoOp%^lstm_cell_508/BiasAdd/ReadVariableOp$^lstm_cell_508/MatMul/ReadVariableOp&^lstm_cell_508/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_508/BiasAdd/ReadVariableOp$lstm_cell_508/BiasAdd/ReadVariableOp2J
#lstm_cell_508/MatMul/ReadVariableOp#lstm_cell_508/MatMul/ReadVariableOp2N
%lstm_cell_508/MatMul_1/ReadVariableOp%lstm_cell_508/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?K
?
E__inference_lstm_208_layer_call_and_return_conditional_losses_3082549
inputs_0?
,lstm_cell_508_matmul_readvariableop_resource:	d?A
.lstm_cell_508_matmul_1_readvariableop_resource:	2?<
-lstm_cell_508_biasadd_readvariableop_resource:	?
identity??$lstm_cell_508/BiasAdd/ReadVariableOp?#lstm_cell_508/MatMul/ReadVariableOp?%lstm_cell_508/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_508/MatMul/ReadVariableOpReadVariableOp,lstm_cell_508_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_508/MatMulMatMulstrided_slice_2:output:0+lstm_cell_508/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_508/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_508_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_508/MatMul_1MatMulzeros:output:0-lstm_cell_508/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_508/addAddV2lstm_cell_508/MatMul:product:0 lstm_cell_508/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_508/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_508_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_508/BiasAddBiasAddlstm_cell_508/add:z:0,lstm_cell_508/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_508/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_508/splitSplit&lstm_cell_508/split/split_dim:output:0lstm_cell_508/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_508/SigmoidSigmoidlstm_cell_508/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_508/Sigmoid_1Sigmoidlstm_cell_508/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_508/mulMullstm_cell_508/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_508/ReluRelulstm_cell_508/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_508/mul_1Mullstm_cell_508/Sigmoid:y:0 lstm_cell_508/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_508/add_1AddV2lstm_cell_508/mul:z:0lstm_cell_508/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_508/Sigmoid_2Sigmoidlstm_cell_508/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_508/Relu_1Relulstm_cell_508/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_508/mul_2Mullstm_cell_508/Sigmoid_2:y:0"lstm_cell_508/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_508_matmul_readvariableop_resource.lstm_cell_508_matmul_1_readvariableop_resource-lstm_cell_508_biasadd_readvariableop_resource*
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
while_body_3082465*
condR
while_cond_3082464*K
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
NoOpNoOp%^lstm_cell_508/BiasAdd/ReadVariableOp$^lstm_cell_508/MatMul/ReadVariableOp&^lstm_cell_508/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_508/BiasAdd/ReadVariableOp$lstm_cell_508/BiasAdd/ReadVariableOp2J
#lstm_cell_508/MatMul/ReadVariableOp#lstm_cell_508/MatMul/ReadVariableOp2N
%lstm_cell_508/MatMul_1/ReadVariableOp%lstm_cell_508/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_3082938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_509_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_509_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_509_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_509_matmul_readvariableop_resource:2(F
4while_lstm_cell_509_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_509_biasadd_readvariableop_resource:(??*while/lstm_cell_509/BiasAdd/ReadVariableOp?)while/lstm_cell_509/MatMul/ReadVariableOp?+while/lstm_cell_509/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_509/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_509_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_509/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_509/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_509/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_509_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_509/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_509/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_509/addAddV2$while/lstm_cell_509/MatMul:product:0&while/lstm_cell_509/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_509/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_509_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_509/BiasAddBiasAddwhile/lstm_cell_509/add:z:02while/lstm_cell_509/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_509/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_509/splitSplit,while/lstm_cell_509/split/split_dim:output:0$while/lstm_cell_509/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_509/SigmoidSigmoid"while/lstm_cell_509/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_509/Sigmoid_1Sigmoid"while/lstm_cell_509/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_509/mulMul!while/lstm_cell_509/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_509/ReluRelu"while/lstm_cell_509/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_509/mul_1Mulwhile/lstm_cell_509/Sigmoid:y:0&while/lstm_cell_509/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_509/add_1AddV2while/lstm_cell_509/mul:z:0while/lstm_cell_509/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_509/Sigmoid_2Sigmoid"while/lstm_cell_509/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_509/Relu_1Reluwhile/lstm_cell_509/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_509/mul_2Mul!while/lstm_cell_509/Sigmoid_2:y:0(while/lstm_cell_509/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_509/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_509/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_509/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_509/BiasAdd/ReadVariableOp*^while/lstm_cell_509/MatMul/ReadVariableOp,^while/lstm_cell_509/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_509_biasadd_readvariableop_resource5while_lstm_cell_509_biasadd_readvariableop_resource_0"n
4while_lstm_cell_509_matmul_1_readvariableop_resource6while_lstm_cell_509_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_509_matmul_readvariableop_resource4while_lstm_cell_509_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_509/BiasAdd/ReadVariableOp*while/lstm_cell_509/BiasAdd/ReadVariableOp2V
)while/lstm_cell_509/MatMul/ReadVariableOp)while/lstm_cell_509/MatMul/ReadVariableOp2Z
+while/lstm_cell_509/MatMul_1/ReadVariableOp+while/lstm_cell_509/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_508_layer_call_and_return_conditional_losses_3078998

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
while_cond_3083366
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3083366___redundant_placeholder05
1while_while_cond_3083366___redundant_placeholder15
1while_while_cond_3083366___redundant_placeholder25
1while_while_cond_3083366___redundant_placeholder3
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
J__inference_lstm_cell_509_layer_call_and_return_conditional_losses_3083732

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
*__inference_lstm_207_layer_call_fn_3081647

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
E__inference_lstm_207_layer_call_and_return_conditional_losses_3080480s
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
?
?
J__inference_sequential_69_layer_call_and_return_conditional_losses_3080660
lstm_207_input#
lstm_207_3080633:	?#
lstm_207_3080635:	d?
lstm_207_3080637:	?#
lstm_208_3080640:	d?#
lstm_208_3080642:	2?
lstm_208_3080644:	?"
lstm_209_3080647:2("
lstm_209_3080649:
(
lstm_209_3080651:("
dense_69_3080654:

dense_69_3080656:
identity?? dense_69/StatefulPartitionedCall? lstm_207/StatefulPartitionedCall? lstm_208/StatefulPartitionedCall? lstm_209/StatefulPartitionedCall?
 lstm_207/StatefulPartitionedCallStatefulPartitionedCalllstm_207_inputlstm_207_3080633lstm_207_3080635lstm_207_3080637*
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
E__inference_lstm_207_layer_call_and_return_conditional_losses_3080480?
 lstm_208/StatefulPartitionedCallStatefulPartitionedCall)lstm_207/StatefulPartitionedCall:output:0lstm_208_3080640lstm_208_3080642lstm_208_3080644*
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
E__inference_lstm_208_layer_call_and_return_conditional_losses_3080315?
 lstm_209/StatefulPartitionedCallStatefulPartitionedCall)lstm_208/StatefulPartitionedCall:output:0lstm_209_3080647lstm_209_3080649lstm_209_3080651*
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
E__inference_lstm_209_layer_call_and_return_conditional_losses_3080150?
 dense_69/StatefulPartitionedCallStatefulPartitionedCall)lstm_209/StatefulPartitionedCall:output:0dense_69_3080654dense_69_3080656*
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
E__inference_dense_69_layer_call_and_return_conditional_losses_3079952x
IdentityIdentity)dense_69/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_69/StatefulPartitionedCall!^lstm_207/StatefulPartitionedCall!^lstm_208/StatefulPartitionedCall!^lstm_209/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2D
 lstm_207/StatefulPartitionedCall lstm_207/StatefulPartitionedCall2D
 lstm_208/StatefulPartitionedCall lstm_208/StatefulPartitionedCall2D
 lstm_209/StatefulPartitionedCall lstm_209/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_207_input
?

?
/__inference_sequential_69_layer_call_fn_3080749

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
J__inference_sequential_69_layer_call_and_return_conditional_losses_3080548o
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
?
?
*__inference_dense_69_layer_call_fn_3083460

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
E__inference_dense_69_layer_call_and_return_conditional_losses_3079952o
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
E__inference_lstm_209_layer_call_and_return_conditional_losses_3083308

inputs>
,lstm_cell_509_matmul_readvariableop_resource:2(@
.lstm_cell_509_matmul_1_readvariableop_resource:
(;
-lstm_cell_509_biasadd_readvariableop_resource:(
identity??$lstm_cell_509/BiasAdd/ReadVariableOp?#lstm_cell_509/MatMul/ReadVariableOp?%lstm_cell_509/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_509/MatMul/ReadVariableOpReadVariableOp,lstm_cell_509_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_509/MatMulMatMulstrided_slice_2:output:0+lstm_cell_509/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_509/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_509_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_509/MatMul_1MatMulzeros:output:0-lstm_cell_509/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_509/addAddV2lstm_cell_509/MatMul:product:0 lstm_cell_509/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_509/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_509_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_509/BiasAddBiasAddlstm_cell_509/add:z:0,lstm_cell_509/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_509/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_509/splitSplit&lstm_cell_509/split/split_dim:output:0lstm_cell_509/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_509/SigmoidSigmoidlstm_cell_509/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_509/Sigmoid_1Sigmoidlstm_cell_509/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_509/mulMullstm_cell_509/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_509/ReluRelulstm_cell_509/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_509/mul_1Mullstm_cell_509/Sigmoid:y:0 lstm_cell_509/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_509/add_1AddV2lstm_cell_509/mul:z:0lstm_cell_509/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_509/Sigmoid_2Sigmoidlstm_cell_509/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_509/Relu_1Relulstm_cell_509/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_509/mul_2Mullstm_cell_509/Sigmoid_2:y:0"lstm_cell_509/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_509_matmul_readvariableop_resource.lstm_cell_509_matmul_1_readvariableop_resource-lstm_cell_509_biasadd_readvariableop_resource*
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
while_body_3083224*
condR
while_cond_3083223*K
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
NoOpNoOp%^lstm_cell_509/BiasAdd/ReadVariableOp$^lstm_cell_509/MatMul/ReadVariableOp&^lstm_cell_509/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_509/BiasAdd/ReadVariableOp$lstm_cell_509/BiasAdd/ReadVariableOp2J
#lstm_cell_509/MatMul/ReadVariableOp#lstm_cell_509/MatMul/ReadVariableOp2N
%lstm_cell_509/MatMul_1/ReadVariableOp%lstm_cell_509/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_3080066
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_509_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_509_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_509_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_509_matmul_readvariableop_resource:2(F
4while_lstm_cell_509_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_509_biasadd_readvariableop_resource:(??*while/lstm_cell_509/BiasAdd/ReadVariableOp?)while/lstm_cell_509/MatMul/ReadVariableOp?+while/lstm_cell_509/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_509/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_509_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_509/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_509/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_509/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_509_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_509/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_509/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_509/addAddV2$while/lstm_cell_509/MatMul:product:0&while/lstm_cell_509/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_509/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_509_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_509/BiasAddBiasAddwhile/lstm_cell_509/add:z:02while/lstm_cell_509/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_509/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_509/splitSplit,while/lstm_cell_509/split/split_dim:output:0$while/lstm_cell_509/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_509/SigmoidSigmoid"while/lstm_cell_509/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_509/Sigmoid_1Sigmoid"while/lstm_cell_509/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_509/mulMul!while/lstm_cell_509/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_509/ReluRelu"while/lstm_cell_509/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_509/mul_1Mulwhile/lstm_cell_509/Sigmoid:y:0&while/lstm_cell_509/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_509/add_1AddV2while/lstm_cell_509/mul:z:0while/lstm_cell_509/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_509/Sigmoid_2Sigmoid"while/lstm_cell_509/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_509/Relu_1Reluwhile/lstm_cell_509/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_509/mul_2Mul!while/lstm_cell_509/Sigmoid_2:y:0(while/lstm_cell_509/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_509/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_509/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_509/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_509/BiasAdd/ReadVariableOp*^while/lstm_cell_509/MatMul/ReadVariableOp,^while/lstm_cell_509/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_509_biasadd_readvariableop_resource5while_lstm_cell_509_biasadd_readvariableop_resource_0"n
4while_lstm_cell_509_matmul_1_readvariableop_resource6while_lstm_cell_509_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_509_matmul_readvariableop_resource4while_lstm_cell_509_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_509/BiasAdd/ReadVariableOp*while/lstm_cell_509/BiasAdd/ReadVariableOp2V
)while/lstm_cell_509/MatMul/ReadVariableOp)while/lstm_cell_509/MatMul/ReadVariableOp2Z
+while/lstm_cell_509/MatMul_1/ReadVariableOp+while/lstm_cell_509/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_207_layer_call_fn_3081614
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
E__inference_lstm_207_layer_call_and_return_conditional_losses_3078585|
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
E__inference_lstm_209_layer_call_and_return_conditional_losses_3079934

inputs>
,lstm_cell_509_matmul_readvariableop_resource:2(@
.lstm_cell_509_matmul_1_readvariableop_resource:
(;
-lstm_cell_509_biasadd_readvariableop_resource:(
identity??$lstm_cell_509/BiasAdd/ReadVariableOp?#lstm_cell_509/MatMul/ReadVariableOp?%lstm_cell_509/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_509/MatMul/ReadVariableOpReadVariableOp,lstm_cell_509_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_509/MatMulMatMulstrided_slice_2:output:0+lstm_cell_509/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_509/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_509_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_509/MatMul_1MatMulzeros:output:0-lstm_cell_509/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_509/addAddV2lstm_cell_509/MatMul:product:0 lstm_cell_509/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_509/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_509_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_509/BiasAddBiasAddlstm_cell_509/add:z:0,lstm_cell_509/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_509/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_509/splitSplit&lstm_cell_509/split/split_dim:output:0lstm_cell_509/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_509/SigmoidSigmoidlstm_cell_509/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_509/Sigmoid_1Sigmoidlstm_cell_509/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_509/mulMullstm_cell_509/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_509/ReluRelulstm_cell_509/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_509/mul_1Mullstm_cell_509/Sigmoid:y:0 lstm_cell_509/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_509/add_1AddV2lstm_cell_509/mul:z:0lstm_cell_509/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_509/Sigmoid_2Sigmoidlstm_cell_509/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_509/Relu_1Relulstm_cell_509/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_509/mul_2Mullstm_cell_509/Sigmoid_2:y:0"lstm_cell_509/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_509_matmul_readvariableop_resource.lstm_cell_509_matmul_1_readvariableop_resource-lstm_cell_509_biasadd_readvariableop_resource*
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
while_body_3079850*
condR
while_cond_3079849*K
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
NoOpNoOp%^lstm_cell_509/BiasAdd/ReadVariableOp$^lstm_cell_509/MatMul/ReadVariableOp&^lstm_cell_509/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_509/BiasAdd/ReadVariableOp$lstm_cell_509/BiasAdd/ReadVariableOp2J
#lstm_cell_509/MatMul/ReadVariableOp#lstm_cell_509/MatMul/ReadVariableOp2N
%lstm_cell_509/MatMul_1/ReadVariableOp%lstm_cell_509/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3078706
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3078706___redundant_placeholder05
1while_while_cond_3078706___redundant_placeholder15
1while_while_cond_3078706___redundant_placeholder25
1while_while_cond_3078706___redundant_placeholder3
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
while_body_3079407
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_509_3079431_0:2(/
while_lstm_cell_509_3079433_0:
(+
while_lstm_cell_509_3079435_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_509_3079431:2(-
while_lstm_cell_509_3079433:
()
while_lstm_cell_509_3079435:(??+while/lstm_cell_509/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_509/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_509_3079431_0while_lstm_cell_509_3079433_0while_lstm_cell_509_3079435_0*
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
J__inference_lstm_cell_509_layer_call_and_return_conditional_losses_3079348?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_509/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_509/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_509/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_509/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_509_3079431while_lstm_cell_509_3079431_0"<
while_lstm_cell_509_3079433while_lstm_cell_509_3079433_0"<
while_lstm_cell_509_3079435while_lstm_cell_509_3079435_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_509/StatefulPartitionedCall+while/lstm_cell_509/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3083224
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_509_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_509_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_509_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_509_matmul_readvariableop_resource:2(F
4while_lstm_cell_509_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_509_biasadd_readvariableop_resource:(??*while/lstm_cell_509/BiasAdd/ReadVariableOp?)while/lstm_cell_509/MatMul/ReadVariableOp?+while/lstm_cell_509/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_509/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_509_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_509/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_509/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_509/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_509_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_509/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_509/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_509/addAddV2$while/lstm_cell_509/MatMul:product:0&while/lstm_cell_509/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_509/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_509_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_509/BiasAddBiasAddwhile/lstm_cell_509/add:z:02while/lstm_cell_509/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_509/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_509/splitSplit,while/lstm_cell_509/split/split_dim:output:0$while/lstm_cell_509/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_509/SigmoidSigmoid"while/lstm_cell_509/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_509/Sigmoid_1Sigmoid"while/lstm_cell_509/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_509/mulMul!while/lstm_cell_509/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_509/ReluRelu"while/lstm_cell_509/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_509/mul_1Mulwhile/lstm_cell_509/Sigmoid:y:0&while/lstm_cell_509/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_509/add_1AddV2while/lstm_cell_509/mul:z:0while/lstm_cell_509/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_509/Sigmoid_2Sigmoid"while/lstm_cell_509/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_509/Relu_1Reluwhile/lstm_cell_509/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_509/mul_2Mul!while/lstm_cell_509/Sigmoid_2:y:0(while/lstm_cell_509/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_509/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_509/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_509/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_509/BiasAdd/ReadVariableOp*^while/lstm_cell_509/MatMul/ReadVariableOp,^while/lstm_cell_509/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_509_biasadd_readvariableop_resource5while_lstm_cell_509_biasadd_readvariableop_resource_0"n
4while_lstm_cell_509_matmul_1_readvariableop_resource6while_lstm_cell_509_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_509_matmul_readvariableop_resource4while_lstm_cell_509_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_509/BiasAdd/ReadVariableOp*while/lstm_cell_509/BiasAdd/ReadVariableOp2V
)while/lstm_cell_509/MatMul/ReadVariableOp)while/lstm_cell_509/MatMul/ReadVariableOp2Z
+while/lstm_cell_509/MatMul_1/ReadVariableOp+while/lstm_cell_509/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_208_while_body_3080947.
*lstm_208_while_lstm_208_while_loop_counter4
0lstm_208_while_lstm_208_while_maximum_iterations
lstm_208_while_placeholder 
lstm_208_while_placeholder_1 
lstm_208_while_placeholder_2 
lstm_208_while_placeholder_3-
)lstm_208_while_lstm_208_strided_slice_1_0i
elstm_208_while_tensorarrayv2read_tensorlistgetitem_lstm_208_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_208_while_lstm_cell_508_matmul_readvariableop_resource_0:	d?R
?lstm_208_while_lstm_cell_508_matmul_1_readvariableop_resource_0:	2?M
>lstm_208_while_lstm_cell_508_biasadd_readvariableop_resource_0:	?
lstm_208_while_identity
lstm_208_while_identity_1
lstm_208_while_identity_2
lstm_208_while_identity_3
lstm_208_while_identity_4
lstm_208_while_identity_5+
'lstm_208_while_lstm_208_strided_slice_1g
clstm_208_while_tensorarrayv2read_tensorlistgetitem_lstm_208_tensorarrayunstack_tensorlistfromtensorN
;lstm_208_while_lstm_cell_508_matmul_readvariableop_resource:	d?P
=lstm_208_while_lstm_cell_508_matmul_1_readvariableop_resource:	2?K
<lstm_208_while_lstm_cell_508_biasadd_readvariableop_resource:	???3lstm_208/while/lstm_cell_508/BiasAdd/ReadVariableOp?2lstm_208/while/lstm_cell_508/MatMul/ReadVariableOp?4lstm_208/while/lstm_cell_508/MatMul_1/ReadVariableOp?
@lstm_208/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_208/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_208_while_tensorarrayv2read_tensorlistgetitem_lstm_208_tensorarrayunstack_tensorlistfromtensor_0lstm_208_while_placeholderIlstm_208/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_208/while/lstm_cell_508/MatMul/ReadVariableOpReadVariableOp=lstm_208_while_lstm_cell_508_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_208/while/lstm_cell_508/MatMulMatMul9lstm_208/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_208/while/lstm_cell_508/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_208/while/lstm_cell_508/MatMul_1/ReadVariableOpReadVariableOp?lstm_208_while_lstm_cell_508_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_208/while/lstm_cell_508/MatMul_1MatMullstm_208_while_placeholder_2<lstm_208/while/lstm_cell_508/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_208/while/lstm_cell_508/addAddV2-lstm_208/while/lstm_cell_508/MatMul:product:0/lstm_208/while/lstm_cell_508/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_208/while/lstm_cell_508/BiasAdd/ReadVariableOpReadVariableOp>lstm_208_while_lstm_cell_508_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_208/while/lstm_cell_508/BiasAddBiasAdd$lstm_208/while/lstm_cell_508/add:z:0;lstm_208/while/lstm_cell_508/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_208/while/lstm_cell_508/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_208/while/lstm_cell_508/splitSplit5lstm_208/while/lstm_cell_508/split/split_dim:output:0-lstm_208/while/lstm_cell_508/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_208/while/lstm_cell_508/SigmoidSigmoid+lstm_208/while/lstm_cell_508/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_208/while/lstm_cell_508/Sigmoid_1Sigmoid+lstm_208/while/lstm_cell_508/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_208/while/lstm_cell_508/mulMul*lstm_208/while/lstm_cell_508/Sigmoid_1:y:0lstm_208_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_208/while/lstm_cell_508/ReluRelu+lstm_208/while/lstm_cell_508/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_208/while/lstm_cell_508/mul_1Mul(lstm_208/while/lstm_cell_508/Sigmoid:y:0/lstm_208/while/lstm_cell_508/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_208/while/lstm_cell_508/add_1AddV2$lstm_208/while/lstm_cell_508/mul:z:0&lstm_208/while/lstm_cell_508/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_208/while/lstm_cell_508/Sigmoid_2Sigmoid+lstm_208/while/lstm_cell_508/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_208/while/lstm_cell_508/Relu_1Relu&lstm_208/while/lstm_cell_508/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_208/while/lstm_cell_508/mul_2Mul*lstm_208/while/lstm_cell_508/Sigmoid_2:y:01lstm_208/while/lstm_cell_508/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_208/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_208_while_placeholder_1lstm_208_while_placeholder&lstm_208/while/lstm_cell_508/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_208/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_208/while/addAddV2lstm_208_while_placeholderlstm_208/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_208/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_208/while/add_1AddV2*lstm_208_while_lstm_208_while_loop_counterlstm_208/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_208/while/IdentityIdentitylstm_208/while/add_1:z:0^lstm_208/while/NoOp*
T0*
_output_shapes
: ?
lstm_208/while/Identity_1Identity0lstm_208_while_lstm_208_while_maximum_iterations^lstm_208/while/NoOp*
T0*
_output_shapes
: t
lstm_208/while/Identity_2Identitylstm_208/while/add:z:0^lstm_208/while/NoOp*
T0*
_output_shapes
: ?
lstm_208/while/Identity_3IdentityClstm_208/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_208/while/NoOp*
T0*
_output_shapes
: ?
lstm_208/while/Identity_4Identity&lstm_208/while/lstm_cell_508/mul_2:z:0^lstm_208/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_208/while/Identity_5Identity&lstm_208/while/lstm_cell_508/add_1:z:0^lstm_208/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_208/while/NoOpNoOp4^lstm_208/while/lstm_cell_508/BiasAdd/ReadVariableOp3^lstm_208/while/lstm_cell_508/MatMul/ReadVariableOp5^lstm_208/while/lstm_cell_508/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_208_while_identity lstm_208/while/Identity:output:0"?
lstm_208_while_identity_1"lstm_208/while/Identity_1:output:0"?
lstm_208_while_identity_2"lstm_208/while/Identity_2:output:0"?
lstm_208_while_identity_3"lstm_208/while/Identity_3:output:0"?
lstm_208_while_identity_4"lstm_208/while/Identity_4:output:0"?
lstm_208_while_identity_5"lstm_208/while/Identity_5:output:0"T
'lstm_208_while_lstm_208_strided_slice_1)lstm_208_while_lstm_208_strided_slice_1_0"~
<lstm_208_while_lstm_cell_508_biasadd_readvariableop_resource>lstm_208_while_lstm_cell_508_biasadd_readvariableop_resource_0"?
=lstm_208_while_lstm_cell_508_matmul_1_readvariableop_resource?lstm_208_while_lstm_cell_508_matmul_1_readvariableop_resource_0"|
;lstm_208_while_lstm_cell_508_matmul_readvariableop_resource=lstm_208_while_lstm_cell_508_matmul_readvariableop_resource_0"?
clstm_208_while_tensorarrayv2read_tensorlistgetitem_lstm_208_tensorarrayunstack_tensorlistfromtensorelstm_208_while_tensorarrayv2read_tensorlistgetitem_lstm_208_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_208/while/lstm_cell_508/BiasAdd/ReadVariableOp3lstm_208/while/lstm_cell_508/BiasAdd/ReadVariableOp2h
2lstm_208/while/lstm_cell_508/MatMul/ReadVariableOp2lstm_208/while/lstm_cell_508/MatMul/ReadVariableOp2l
4lstm_208/while/lstm_cell_508/MatMul_1/ReadVariableOp4lstm_208/while/lstm_cell_508/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_509_layer_call_and_return_conditional_losses_3079348

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
/__inference_lstm_cell_509_layer_call_fn_3083700

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
J__inference_lstm_cell_509_layer_call_and_return_conditional_losses_3079348o
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

?
lstm_208_while_cond_3080946.
*lstm_208_while_lstm_208_while_loop_counter4
0lstm_208_while_lstm_208_while_maximum_iterations
lstm_208_while_placeholder 
lstm_208_while_placeholder_1 
lstm_208_while_placeholder_2 
lstm_208_while_placeholder_30
,lstm_208_while_less_lstm_208_strided_slice_1G
Clstm_208_while_lstm_208_while_cond_3080946___redundant_placeholder0G
Clstm_208_while_lstm_208_while_cond_3080946___redundant_placeholder1G
Clstm_208_while_lstm_208_while_cond_3080946___redundant_placeholder2G
Clstm_208_while_lstm_208_while_cond_3080946___redundant_placeholder3
lstm_208_while_identity
?
lstm_208/while/LessLesslstm_208_while_placeholder,lstm_208_while_less_lstm_208_strided_slice_1*
T0*
_output_shapes
: ]
lstm_208/while/IdentityIdentitylstm_208/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_208_while_identity lstm_208/while/Identity:output:0*(
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
*__inference_lstm_208_layer_call_fn_3082230
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
E__inference_lstm_208_layer_call_and_return_conditional_losses_3078935|
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
?#
?
while_body_3078516
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_507_3078540_0:	?0
while_lstm_cell_507_3078542_0:	d?,
while_lstm_cell_507_3078544_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_507_3078540:	?.
while_lstm_cell_507_3078542:	d?*
while_lstm_cell_507_3078544:	???+while/lstm_cell_507/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_507/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_507_3078540_0while_lstm_cell_507_3078542_0while_lstm_cell_507_3078544_0*
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
J__inference_lstm_cell_507_layer_call_and_return_conditional_losses_3078502?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_507/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_507/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_507/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_507/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_507_3078540while_lstm_cell_507_3078540_0"<
while_lstm_cell_507_3078542while_lstm_cell_507_3078542_0"<
while_lstm_cell_507_3078544while_lstm_cell_507_3078544_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_507/StatefulPartitionedCall+while/lstm_cell_507/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_208_layer_call_and_return_conditional_losses_3082835

inputs?
,lstm_cell_508_matmul_readvariableop_resource:	d?A
.lstm_cell_508_matmul_1_readvariableop_resource:	2?<
-lstm_cell_508_biasadd_readvariableop_resource:	?
identity??$lstm_cell_508/BiasAdd/ReadVariableOp?#lstm_cell_508/MatMul/ReadVariableOp?%lstm_cell_508/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_508/MatMul/ReadVariableOpReadVariableOp,lstm_cell_508_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_508/MatMulMatMulstrided_slice_2:output:0+lstm_cell_508/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_508/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_508_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_508/MatMul_1MatMulzeros:output:0-lstm_cell_508/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_508/addAddV2lstm_cell_508/MatMul:product:0 lstm_cell_508/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_508/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_508_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_508/BiasAddBiasAddlstm_cell_508/add:z:0,lstm_cell_508/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_508/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_508/splitSplit&lstm_cell_508/split/split_dim:output:0lstm_cell_508/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_508/SigmoidSigmoidlstm_cell_508/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_508/Sigmoid_1Sigmoidlstm_cell_508/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_508/mulMullstm_cell_508/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_508/ReluRelulstm_cell_508/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_508/mul_1Mullstm_cell_508/Sigmoid:y:0 lstm_cell_508/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_508/add_1AddV2lstm_cell_508/mul:z:0lstm_cell_508/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_508/Sigmoid_2Sigmoidlstm_cell_508/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_508/Relu_1Relulstm_cell_508/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_508/mul_2Mullstm_cell_508/Sigmoid_2:y:0"lstm_cell_508/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_508_matmul_readvariableop_resource.lstm_cell_508_matmul_1_readvariableop_resource-lstm_cell_508_biasadd_readvariableop_resource*
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
while_body_3082751*
condR
while_cond_3082750*K
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
NoOpNoOp%^lstm_cell_508/BiasAdd/ReadVariableOp$^lstm_cell_508/MatMul/ReadVariableOp&^lstm_cell_508/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_508/BiasAdd/ReadVariableOp$lstm_cell_508/BiasAdd/ReadVariableOp2J
#lstm_cell_508/MatMul/ReadVariableOp#lstm_cell_508/MatMul/ReadVariableOp2N
%lstm_cell_508/MatMul_1/ReadVariableOp%lstm_cell_508/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
/__inference_sequential_69_layer_call_fn_3080600
lstm_207_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_207_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_69_layer_call_and_return_conditional_losses_3080548o
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
_user_specified_namelstm_207_input
?#
?
while_body_3079057
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_508_3079081_0:	d?0
while_lstm_cell_508_3079083_0:	2?,
while_lstm_cell_508_3079085_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_508_3079081:	d?.
while_lstm_cell_508_3079083:	2?*
while_lstm_cell_508_3079085:	???+while/lstm_cell_508/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_508/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_508_3079081_0while_lstm_cell_508_3079083_0while_lstm_cell_508_3079085_0*
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
J__inference_lstm_cell_508_layer_call_and_return_conditional_losses_3078998?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_508/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_508/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_508/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_508/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_508_3079081while_lstm_cell_508_3079081_0"<
while_lstm_cell_508_3079083while_lstm_cell_508_3079083_0"<
while_lstm_cell_508_3079085while_lstm_cell_508_3079085_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_508/StatefulPartitionedCall+while/lstm_cell_508/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_508_layer_call_fn_3083602

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
J__inference_lstm_cell_508_layer_call_and_return_conditional_losses_3078998o
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
?K
?
E__inference_lstm_207_layer_call_and_return_conditional_losses_3081790
inputs_0?
,lstm_cell_507_matmul_readvariableop_resource:	?A
.lstm_cell_507_matmul_1_readvariableop_resource:	d?<
-lstm_cell_507_biasadd_readvariableop_resource:	?
identity??$lstm_cell_507/BiasAdd/ReadVariableOp?#lstm_cell_507/MatMul/ReadVariableOp?%lstm_cell_507/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_507/MatMul/ReadVariableOpReadVariableOp,lstm_cell_507_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_507/MatMulMatMulstrided_slice_2:output:0+lstm_cell_507/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_507/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_507_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_507/MatMul_1MatMulzeros:output:0-lstm_cell_507/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_507/addAddV2lstm_cell_507/MatMul:product:0 lstm_cell_507/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_507/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_507_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_507/BiasAddBiasAddlstm_cell_507/add:z:0,lstm_cell_507/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_507/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_507/splitSplit&lstm_cell_507/split/split_dim:output:0lstm_cell_507/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_507/SigmoidSigmoidlstm_cell_507/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_507/Sigmoid_1Sigmoidlstm_cell_507/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_507/mulMullstm_cell_507/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_507/ReluRelulstm_cell_507/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_507/mul_1Mullstm_cell_507/Sigmoid:y:0 lstm_cell_507/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_507/add_1AddV2lstm_cell_507/mul:z:0lstm_cell_507/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_507/Sigmoid_2Sigmoidlstm_cell_507/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_507/Relu_1Relulstm_cell_507/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_507/mul_2Mullstm_cell_507/Sigmoid_2:y:0"lstm_cell_507/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_507_matmul_readvariableop_resource.lstm_cell_507_matmul_1_readvariableop_resource-lstm_cell_507_biasadd_readvariableop_resource*
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
while_body_3081706*
condR
while_cond_3081705*K
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
NoOpNoOp%^lstm_cell_507/BiasAdd/ReadVariableOp$^lstm_cell_507/MatMul/ReadVariableOp&^lstm_cell_507/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_507/BiasAdd/ReadVariableOp$lstm_cell_507/BiasAdd/ReadVariableOp2J
#lstm_cell_507/MatMul/ReadVariableOp#lstm_cell_507/MatMul/ReadVariableOp2N
%lstm_cell_507/MatMul_1/ReadVariableOp%lstm_cell_507/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_3083081
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_509_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_509_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_509_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_509_matmul_readvariableop_resource:2(F
4while_lstm_cell_509_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_509_biasadd_readvariableop_resource:(??*while/lstm_cell_509/BiasAdd/ReadVariableOp?)while/lstm_cell_509/MatMul/ReadVariableOp?+while/lstm_cell_509/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_509/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_509_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_509/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_509/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_509/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_509_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_509/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_509/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_509/addAddV2$while/lstm_cell_509/MatMul:product:0&while/lstm_cell_509/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_509/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_509_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_509/BiasAddBiasAddwhile/lstm_cell_509/add:z:02while/lstm_cell_509/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_509/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_509/splitSplit,while/lstm_cell_509/split/split_dim:output:0$while/lstm_cell_509/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_509/SigmoidSigmoid"while/lstm_cell_509/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_509/Sigmoid_1Sigmoid"while/lstm_cell_509/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_509/mulMul!while/lstm_cell_509/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_509/ReluRelu"while/lstm_cell_509/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_509/mul_1Mulwhile/lstm_cell_509/Sigmoid:y:0&while/lstm_cell_509/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_509/add_1AddV2while/lstm_cell_509/mul:z:0while/lstm_cell_509/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_509/Sigmoid_2Sigmoid"while/lstm_cell_509/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_509/Relu_1Reluwhile/lstm_cell_509/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_509/mul_2Mul!while/lstm_cell_509/Sigmoid_2:y:0(while/lstm_cell_509/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_509/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_509/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_509/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_509/BiasAdd/ReadVariableOp*^while/lstm_cell_509/MatMul/ReadVariableOp,^while/lstm_cell_509/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_509_biasadd_readvariableop_resource5while_lstm_cell_509_biasadd_readvariableop_resource_0"n
4while_lstm_cell_509_matmul_1_readvariableop_resource6while_lstm_cell_509_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_509_matmul_readvariableop_resource4while_lstm_cell_509_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_509/BiasAdd/ReadVariableOp*while/lstm_cell_509/BiasAdd/ReadVariableOp2V
)while/lstm_cell_509/MatMul/ReadVariableOp)while/lstm_cell_509/MatMul/ReadVariableOp2Z
+while/lstm_cell_509/MatMul_1/ReadVariableOp+while/lstm_cell_509/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_69_layer_call_fn_3079984
lstm_207_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_207_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_69_layer_call_and_return_conditional_losses_3079959o
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
_user_specified_namelstm_207_input
?
?
J__inference_lstm_cell_507_layer_call_and_return_conditional_losses_3078502

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
??
?
J__inference_sequential_69_layer_call_and_return_conditional_losses_3081176

inputsH
5lstm_207_lstm_cell_507_matmul_readvariableop_resource:	?J
7lstm_207_lstm_cell_507_matmul_1_readvariableop_resource:	d?E
6lstm_207_lstm_cell_507_biasadd_readvariableop_resource:	?H
5lstm_208_lstm_cell_508_matmul_readvariableop_resource:	d?J
7lstm_208_lstm_cell_508_matmul_1_readvariableop_resource:	2?E
6lstm_208_lstm_cell_508_biasadd_readvariableop_resource:	?G
5lstm_209_lstm_cell_509_matmul_readvariableop_resource:2(I
7lstm_209_lstm_cell_509_matmul_1_readvariableop_resource:
(D
6lstm_209_lstm_cell_509_biasadd_readvariableop_resource:(9
'dense_69_matmul_readvariableop_resource:
6
(dense_69_biasadd_readvariableop_resource:
identity??dense_69/BiasAdd/ReadVariableOp?dense_69/MatMul/ReadVariableOp?-lstm_207/lstm_cell_507/BiasAdd/ReadVariableOp?,lstm_207/lstm_cell_507/MatMul/ReadVariableOp?.lstm_207/lstm_cell_507/MatMul_1/ReadVariableOp?lstm_207/while?-lstm_208/lstm_cell_508/BiasAdd/ReadVariableOp?,lstm_208/lstm_cell_508/MatMul/ReadVariableOp?.lstm_208/lstm_cell_508/MatMul_1/ReadVariableOp?lstm_208/while?-lstm_209/lstm_cell_509/BiasAdd/ReadVariableOp?,lstm_209/lstm_cell_509/MatMul/ReadVariableOp?.lstm_209/lstm_cell_509/MatMul_1/ReadVariableOp?lstm_209/whileD
lstm_207/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_207/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_207/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_207/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_207/strided_sliceStridedSlicelstm_207/Shape:output:0%lstm_207/strided_slice/stack:output:0'lstm_207/strided_slice/stack_1:output:0'lstm_207/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_207/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_207/zeros/packedPacklstm_207/strided_slice:output:0 lstm_207/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_207/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_207/zerosFilllstm_207/zeros/packed:output:0lstm_207/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_207/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_207/zeros_1/packedPacklstm_207/strided_slice:output:0"lstm_207/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_207/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_207/zeros_1Fill lstm_207/zeros_1/packed:output:0lstm_207/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_207/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_207/transpose	Transposeinputs lstm_207/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_207/Shape_1Shapelstm_207/transpose:y:0*
T0*
_output_shapes
:h
lstm_207/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_207/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_207/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_207/strided_slice_1StridedSlicelstm_207/Shape_1:output:0'lstm_207/strided_slice_1/stack:output:0)lstm_207/strided_slice_1/stack_1:output:0)lstm_207/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_207/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_207/TensorArrayV2TensorListReserve-lstm_207/TensorArrayV2/element_shape:output:0!lstm_207/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_207/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_207/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_207/transpose:y:0Glstm_207/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_207/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_207/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_207/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_207/strided_slice_2StridedSlicelstm_207/transpose:y:0'lstm_207/strided_slice_2/stack:output:0)lstm_207/strided_slice_2/stack_1:output:0)lstm_207/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_207/lstm_cell_507/MatMul/ReadVariableOpReadVariableOp5lstm_207_lstm_cell_507_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_207/lstm_cell_507/MatMulMatMul!lstm_207/strided_slice_2:output:04lstm_207/lstm_cell_507/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_207/lstm_cell_507/MatMul_1/ReadVariableOpReadVariableOp7lstm_207_lstm_cell_507_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_207/lstm_cell_507/MatMul_1MatMullstm_207/zeros:output:06lstm_207/lstm_cell_507/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_207/lstm_cell_507/addAddV2'lstm_207/lstm_cell_507/MatMul:product:0)lstm_207/lstm_cell_507/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_207/lstm_cell_507/BiasAdd/ReadVariableOpReadVariableOp6lstm_207_lstm_cell_507_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_207/lstm_cell_507/BiasAddBiasAddlstm_207/lstm_cell_507/add:z:05lstm_207/lstm_cell_507/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_207/lstm_cell_507/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_207/lstm_cell_507/splitSplit/lstm_207/lstm_cell_507/split/split_dim:output:0'lstm_207/lstm_cell_507/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_207/lstm_cell_507/SigmoidSigmoid%lstm_207/lstm_cell_507/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_207/lstm_cell_507/Sigmoid_1Sigmoid%lstm_207/lstm_cell_507/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_207/lstm_cell_507/mulMul$lstm_207/lstm_cell_507/Sigmoid_1:y:0lstm_207/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_207/lstm_cell_507/ReluRelu%lstm_207/lstm_cell_507/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_207/lstm_cell_507/mul_1Mul"lstm_207/lstm_cell_507/Sigmoid:y:0)lstm_207/lstm_cell_507/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_207/lstm_cell_507/add_1AddV2lstm_207/lstm_cell_507/mul:z:0 lstm_207/lstm_cell_507/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_207/lstm_cell_507/Sigmoid_2Sigmoid%lstm_207/lstm_cell_507/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_207/lstm_cell_507/Relu_1Relu lstm_207/lstm_cell_507/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_207/lstm_cell_507/mul_2Mul$lstm_207/lstm_cell_507/Sigmoid_2:y:0+lstm_207/lstm_cell_507/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_207/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_207/TensorArrayV2_1TensorListReserve/lstm_207/TensorArrayV2_1/element_shape:output:0!lstm_207/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_207/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_207/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_207/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_207/whileWhile$lstm_207/while/loop_counter:output:0*lstm_207/while/maximum_iterations:output:0lstm_207/time:output:0!lstm_207/TensorArrayV2_1:handle:0lstm_207/zeros:output:0lstm_207/zeros_1:output:0!lstm_207/strided_slice_1:output:0@lstm_207/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_207_lstm_cell_507_matmul_readvariableop_resource7lstm_207_lstm_cell_507_matmul_1_readvariableop_resource6lstm_207_lstm_cell_507_biasadd_readvariableop_resource*
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
lstm_207_while_body_3080808*'
condR
lstm_207_while_cond_3080807*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_207/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_207/TensorArrayV2Stack/TensorListStackTensorListStacklstm_207/while:output:3Blstm_207/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_207/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_207/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_207/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_207/strided_slice_3StridedSlice4lstm_207/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_207/strided_slice_3/stack:output:0)lstm_207/strided_slice_3/stack_1:output:0)lstm_207/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_207/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_207/transpose_1	Transpose4lstm_207/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_207/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_207/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_208/ShapeShapelstm_207/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_208/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_208/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_208/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_208/strided_sliceStridedSlicelstm_208/Shape:output:0%lstm_208/strided_slice/stack:output:0'lstm_208/strided_slice/stack_1:output:0'lstm_208/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_208/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_208/zeros/packedPacklstm_208/strided_slice:output:0 lstm_208/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_208/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_208/zerosFilllstm_208/zeros/packed:output:0lstm_208/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_208/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_208/zeros_1/packedPacklstm_208/strided_slice:output:0"lstm_208/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_208/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_208/zeros_1Fill lstm_208/zeros_1/packed:output:0lstm_208/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_208/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_208/transpose	Transposelstm_207/transpose_1:y:0 lstm_208/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_208/Shape_1Shapelstm_208/transpose:y:0*
T0*
_output_shapes
:h
lstm_208/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_208/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_208/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_208/strided_slice_1StridedSlicelstm_208/Shape_1:output:0'lstm_208/strided_slice_1/stack:output:0)lstm_208/strided_slice_1/stack_1:output:0)lstm_208/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_208/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_208/TensorArrayV2TensorListReserve-lstm_208/TensorArrayV2/element_shape:output:0!lstm_208/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_208/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_208/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_208/transpose:y:0Glstm_208/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_208/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_208/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_208/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_208/strided_slice_2StridedSlicelstm_208/transpose:y:0'lstm_208/strided_slice_2/stack:output:0)lstm_208/strided_slice_2/stack_1:output:0)lstm_208/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_208/lstm_cell_508/MatMul/ReadVariableOpReadVariableOp5lstm_208_lstm_cell_508_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_208/lstm_cell_508/MatMulMatMul!lstm_208/strided_slice_2:output:04lstm_208/lstm_cell_508/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_208/lstm_cell_508/MatMul_1/ReadVariableOpReadVariableOp7lstm_208_lstm_cell_508_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_208/lstm_cell_508/MatMul_1MatMullstm_208/zeros:output:06lstm_208/lstm_cell_508/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_208/lstm_cell_508/addAddV2'lstm_208/lstm_cell_508/MatMul:product:0)lstm_208/lstm_cell_508/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_208/lstm_cell_508/BiasAdd/ReadVariableOpReadVariableOp6lstm_208_lstm_cell_508_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_208/lstm_cell_508/BiasAddBiasAddlstm_208/lstm_cell_508/add:z:05lstm_208/lstm_cell_508/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_208/lstm_cell_508/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_208/lstm_cell_508/splitSplit/lstm_208/lstm_cell_508/split/split_dim:output:0'lstm_208/lstm_cell_508/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_208/lstm_cell_508/SigmoidSigmoid%lstm_208/lstm_cell_508/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_208/lstm_cell_508/Sigmoid_1Sigmoid%lstm_208/lstm_cell_508/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_208/lstm_cell_508/mulMul$lstm_208/lstm_cell_508/Sigmoid_1:y:0lstm_208/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_208/lstm_cell_508/ReluRelu%lstm_208/lstm_cell_508/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_208/lstm_cell_508/mul_1Mul"lstm_208/lstm_cell_508/Sigmoid:y:0)lstm_208/lstm_cell_508/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_208/lstm_cell_508/add_1AddV2lstm_208/lstm_cell_508/mul:z:0 lstm_208/lstm_cell_508/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_208/lstm_cell_508/Sigmoid_2Sigmoid%lstm_208/lstm_cell_508/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_208/lstm_cell_508/Relu_1Relu lstm_208/lstm_cell_508/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_208/lstm_cell_508/mul_2Mul$lstm_208/lstm_cell_508/Sigmoid_2:y:0+lstm_208/lstm_cell_508/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_208/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_208/TensorArrayV2_1TensorListReserve/lstm_208/TensorArrayV2_1/element_shape:output:0!lstm_208/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_208/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_208/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_208/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_208/whileWhile$lstm_208/while/loop_counter:output:0*lstm_208/while/maximum_iterations:output:0lstm_208/time:output:0!lstm_208/TensorArrayV2_1:handle:0lstm_208/zeros:output:0lstm_208/zeros_1:output:0!lstm_208/strided_slice_1:output:0@lstm_208/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_208_lstm_cell_508_matmul_readvariableop_resource7lstm_208_lstm_cell_508_matmul_1_readvariableop_resource6lstm_208_lstm_cell_508_biasadd_readvariableop_resource*
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
lstm_208_while_body_3080947*'
condR
lstm_208_while_cond_3080946*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_208/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_208/TensorArrayV2Stack/TensorListStackTensorListStacklstm_208/while:output:3Blstm_208/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_208/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_208/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_208/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_208/strided_slice_3StridedSlice4lstm_208/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_208/strided_slice_3/stack:output:0)lstm_208/strided_slice_3/stack_1:output:0)lstm_208/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_208/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_208/transpose_1	Transpose4lstm_208/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_208/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_208/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_209/ShapeShapelstm_208/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_209/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_209/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_209/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_209/strided_sliceStridedSlicelstm_209/Shape:output:0%lstm_209/strided_slice/stack:output:0'lstm_209/strided_slice/stack_1:output:0'lstm_209/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_209/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_209/zeros/packedPacklstm_209/strided_slice:output:0 lstm_209/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_209/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_209/zerosFilllstm_209/zeros/packed:output:0lstm_209/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_209/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_209/zeros_1/packedPacklstm_209/strided_slice:output:0"lstm_209/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_209/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_209/zeros_1Fill lstm_209/zeros_1/packed:output:0lstm_209/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_209/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_209/transpose	Transposelstm_208/transpose_1:y:0 lstm_209/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_209/Shape_1Shapelstm_209/transpose:y:0*
T0*
_output_shapes
:h
lstm_209/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_209/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_209/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_209/strided_slice_1StridedSlicelstm_209/Shape_1:output:0'lstm_209/strided_slice_1/stack:output:0)lstm_209/strided_slice_1/stack_1:output:0)lstm_209/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_209/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_209/TensorArrayV2TensorListReserve-lstm_209/TensorArrayV2/element_shape:output:0!lstm_209/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_209/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_209/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_209/transpose:y:0Glstm_209/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_209/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_209/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_209/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_209/strided_slice_2StridedSlicelstm_209/transpose:y:0'lstm_209/strided_slice_2/stack:output:0)lstm_209/strided_slice_2/stack_1:output:0)lstm_209/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_209/lstm_cell_509/MatMul/ReadVariableOpReadVariableOp5lstm_209_lstm_cell_509_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_209/lstm_cell_509/MatMulMatMul!lstm_209/strided_slice_2:output:04lstm_209/lstm_cell_509/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_209/lstm_cell_509/MatMul_1/ReadVariableOpReadVariableOp7lstm_209_lstm_cell_509_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_209/lstm_cell_509/MatMul_1MatMullstm_209/zeros:output:06lstm_209/lstm_cell_509/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_209/lstm_cell_509/addAddV2'lstm_209/lstm_cell_509/MatMul:product:0)lstm_209/lstm_cell_509/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_209/lstm_cell_509/BiasAdd/ReadVariableOpReadVariableOp6lstm_209_lstm_cell_509_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_209/lstm_cell_509/BiasAddBiasAddlstm_209/lstm_cell_509/add:z:05lstm_209/lstm_cell_509/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_209/lstm_cell_509/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_209/lstm_cell_509/splitSplit/lstm_209/lstm_cell_509/split/split_dim:output:0'lstm_209/lstm_cell_509/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_209/lstm_cell_509/SigmoidSigmoid%lstm_209/lstm_cell_509/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_209/lstm_cell_509/Sigmoid_1Sigmoid%lstm_209/lstm_cell_509/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_209/lstm_cell_509/mulMul$lstm_209/lstm_cell_509/Sigmoid_1:y:0lstm_209/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_209/lstm_cell_509/ReluRelu%lstm_209/lstm_cell_509/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_209/lstm_cell_509/mul_1Mul"lstm_209/lstm_cell_509/Sigmoid:y:0)lstm_209/lstm_cell_509/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_209/lstm_cell_509/add_1AddV2lstm_209/lstm_cell_509/mul:z:0 lstm_209/lstm_cell_509/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_209/lstm_cell_509/Sigmoid_2Sigmoid%lstm_209/lstm_cell_509/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_209/lstm_cell_509/Relu_1Relu lstm_209/lstm_cell_509/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_209/lstm_cell_509/mul_2Mul$lstm_209/lstm_cell_509/Sigmoid_2:y:0+lstm_209/lstm_cell_509/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_209/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_209/TensorArrayV2_1TensorListReserve/lstm_209/TensorArrayV2_1/element_shape:output:0!lstm_209/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_209/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_209/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_209/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_209/whileWhile$lstm_209/while/loop_counter:output:0*lstm_209/while/maximum_iterations:output:0lstm_209/time:output:0!lstm_209/TensorArrayV2_1:handle:0lstm_209/zeros:output:0lstm_209/zeros_1:output:0!lstm_209/strided_slice_1:output:0@lstm_209/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_209_lstm_cell_509_matmul_readvariableop_resource7lstm_209_lstm_cell_509_matmul_1_readvariableop_resource6lstm_209_lstm_cell_509_biasadd_readvariableop_resource*
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
lstm_209_while_body_3081086*'
condR
lstm_209_while_cond_3081085*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_209/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_209/TensorArrayV2Stack/TensorListStackTensorListStacklstm_209/while:output:3Blstm_209/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_209/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_209/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_209/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_209/strided_slice_3StridedSlice4lstm_209/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_209/strided_slice_3/stack:output:0)lstm_209/strided_slice_3/stack_1:output:0)lstm_209/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_209/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_209/transpose_1	Transpose4lstm_209/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_209/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_209/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_69/MatMul/ReadVariableOpReadVariableOp'dense_69_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_69/MatMulMatMul!lstm_209/strided_slice_3:output:0&dense_69/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_69/BiasAdd/ReadVariableOpReadVariableOp(dense_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_69/BiasAddBiasAdddense_69/MatMul:product:0'dense_69/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_69/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_69/BiasAdd/ReadVariableOp^dense_69/MatMul/ReadVariableOp.^lstm_207/lstm_cell_507/BiasAdd/ReadVariableOp-^lstm_207/lstm_cell_507/MatMul/ReadVariableOp/^lstm_207/lstm_cell_507/MatMul_1/ReadVariableOp^lstm_207/while.^lstm_208/lstm_cell_508/BiasAdd/ReadVariableOp-^lstm_208/lstm_cell_508/MatMul/ReadVariableOp/^lstm_208/lstm_cell_508/MatMul_1/ReadVariableOp^lstm_208/while.^lstm_209/lstm_cell_509/BiasAdd/ReadVariableOp-^lstm_209/lstm_cell_509/MatMul/ReadVariableOp/^lstm_209/lstm_cell_509/MatMul_1/ReadVariableOp^lstm_209/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_69/BiasAdd/ReadVariableOpdense_69/BiasAdd/ReadVariableOp2@
dense_69/MatMul/ReadVariableOpdense_69/MatMul/ReadVariableOp2^
-lstm_207/lstm_cell_507/BiasAdd/ReadVariableOp-lstm_207/lstm_cell_507/BiasAdd/ReadVariableOp2\
,lstm_207/lstm_cell_507/MatMul/ReadVariableOp,lstm_207/lstm_cell_507/MatMul/ReadVariableOp2`
.lstm_207/lstm_cell_507/MatMul_1/ReadVariableOp.lstm_207/lstm_cell_507/MatMul_1/ReadVariableOp2 
lstm_207/whilelstm_207/while2^
-lstm_208/lstm_cell_508/BiasAdd/ReadVariableOp-lstm_208/lstm_cell_508/BiasAdd/ReadVariableOp2\
,lstm_208/lstm_cell_508/MatMul/ReadVariableOp,lstm_208/lstm_cell_508/MatMul/ReadVariableOp2`
.lstm_208/lstm_cell_508/MatMul_1/ReadVariableOp.lstm_208/lstm_cell_508/MatMul_1/ReadVariableOp2 
lstm_208/whilelstm_208/while2^
-lstm_209/lstm_cell_509/BiasAdd/ReadVariableOp-lstm_209/lstm_cell_509/BiasAdd/ReadVariableOp2\
,lstm_209/lstm_cell_509/MatMul/ReadVariableOp,lstm_209/lstm_cell_509/MatMul/ReadVariableOp2`
.lstm_209/lstm_cell_509/MatMul_1/ReadVariableOp.lstm_209/lstm_cell_509/MatMul_1/ReadVariableOp2 
lstm_209/whilelstm_209/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_207_layer_call_and_return_conditional_losses_3082076

inputs?
,lstm_cell_507_matmul_readvariableop_resource:	?A
.lstm_cell_507_matmul_1_readvariableop_resource:	d?<
-lstm_cell_507_biasadd_readvariableop_resource:	?
identity??$lstm_cell_507/BiasAdd/ReadVariableOp?#lstm_cell_507/MatMul/ReadVariableOp?%lstm_cell_507/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_507/MatMul/ReadVariableOpReadVariableOp,lstm_cell_507_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_507/MatMulMatMulstrided_slice_2:output:0+lstm_cell_507/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_507/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_507_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_507/MatMul_1MatMulzeros:output:0-lstm_cell_507/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_507/addAddV2lstm_cell_507/MatMul:product:0 lstm_cell_507/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_507/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_507_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_507/BiasAddBiasAddlstm_cell_507/add:z:0,lstm_cell_507/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_507/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_507/splitSplit&lstm_cell_507/split/split_dim:output:0lstm_cell_507/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_507/SigmoidSigmoidlstm_cell_507/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_507/Sigmoid_1Sigmoidlstm_cell_507/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_507/mulMullstm_cell_507/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_507/ReluRelulstm_cell_507/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_507/mul_1Mullstm_cell_507/Sigmoid:y:0 lstm_cell_507/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_507/add_1AddV2lstm_cell_507/mul:z:0lstm_cell_507/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_507/Sigmoid_2Sigmoidlstm_cell_507/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_507/Relu_1Relulstm_cell_507/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_507/mul_2Mullstm_cell_507/Sigmoid_2:y:0"lstm_cell_507/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_507_matmul_readvariableop_resource.lstm_cell_507_matmul_1_readvariableop_resource-lstm_cell_507_biasadd_readvariableop_resource*
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
while_body_3081992*
condR
while_cond_3081991*K
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
NoOpNoOp%^lstm_cell_507/BiasAdd/ReadVariableOp$^lstm_cell_507/MatMul/ReadVariableOp&^lstm_cell_507/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_507/BiasAdd/ReadVariableOp$lstm_cell_507/BiasAdd/ReadVariableOp2J
#lstm_cell_507/MatMul/ReadVariableOp#lstm_cell_507/MatMul/ReadVariableOp2N
%lstm_cell_507/MatMul_1/ReadVariableOp%lstm_cell_507/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_3078707
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_507_3078731_0:	?0
while_lstm_cell_507_3078733_0:	d?,
while_lstm_cell_507_3078735_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_507_3078731:	?.
while_lstm_cell_507_3078733:	d?*
while_lstm_cell_507_3078735:	???+while/lstm_cell_507/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_507/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_507_3078731_0while_lstm_cell_507_3078733_0while_lstm_cell_507_3078735_0*
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
J__inference_lstm_cell_507_layer_call_and_return_conditional_losses_3078648?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_507/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_507/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_507/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_507/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_507_3078731while_lstm_cell_507_3078731_0"<
while_lstm_cell_507_3078733while_lstm_cell_507_3078733_0"<
while_lstm_cell_507_3078735while_lstm_cell_507_3078735_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_507/StatefulPartitionedCall+while/lstm_cell_507/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3079215
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3079215___redundant_placeholder05
1while_while_cond_3079215___redundant_placeholder15
1while_while_cond_3079215___redundant_placeholder25
1while_while_cond_3079215___redundant_placeholder3
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
while_cond_3082937
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3082937___redundant_placeholder05
1while_while_cond_3082937___redundant_placeholder15
1while_while_cond_3082937___redundant_placeholder25
1while_while_cond_3082937___redundant_placeholder3
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
E__inference_lstm_207_layer_call_and_return_conditional_losses_3079634

inputs?
,lstm_cell_507_matmul_readvariableop_resource:	?A
.lstm_cell_507_matmul_1_readvariableop_resource:	d?<
-lstm_cell_507_biasadd_readvariableop_resource:	?
identity??$lstm_cell_507/BiasAdd/ReadVariableOp?#lstm_cell_507/MatMul/ReadVariableOp?%lstm_cell_507/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_507/MatMul/ReadVariableOpReadVariableOp,lstm_cell_507_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_507/MatMulMatMulstrided_slice_2:output:0+lstm_cell_507/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_507/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_507_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_507/MatMul_1MatMulzeros:output:0-lstm_cell_507/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_507/addAddV2lstm_cell_507/MatMul:product:0 lstm_cell_507/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_507/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_507_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_507/BiasAddBiasAddlstm_cell_507/add:z:0,lstm_cell_507/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_507/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_507/splitSplit&lstm_cell_507/split/split_dim:output:0lstm_cell_507/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_507/SigmoidSigmoidlstm_cell_507/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_507/Sigmoid_1Sigmoidlstm_cell_507/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_507/mulMullstm_cell_507/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_507/ReluRelulstm_cell_507/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_507/mul_1Mullstm_cell_507/Sigmoid:y:0 lstm_cell_507/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_507/add_1AddV2lstm_cell_507/mul:z:0lstm_cell_507/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_507/Sigmoid_2Sigmoidlstm_cell_507/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_507/Relu_1Relulstm_cell_507/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_507/mul_2Mullstm_cell_507/Sigmoid_2:y:0"lstm_cell_507/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_507_matmul_readvariableop_resource.lstm_cell_507_matmul_1_readvariableop_resource-lstm_cell_507_biasadd_readvariableop_resource*
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
while_body_3079550*
condR
while_cond_3079549*K
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
NoOpNoOp%^lstm_cell_507/BiasAdd/ReadVariableOp$^lstm_cell_507/MatMul/ReadVariableOp&^lstm_cell_507/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_507/BiasAdd/ReadVariableOp$lstm_cell_507/BiasAdd/ReadVariableOp2J
#lstm_cell_507/MatMul/ReadVariableOp#lstm_cell_507/MatMul/ReadVariableOp2N
%lstm_cell_507/MatMul_1/ReadVariableOp%lstm_cell_507/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_3078435
lstm_207_inputV
Csequential_69_lstm_207_lstm_cell_507_matmul_readvariableop_resource:	?X
Esequential_69_lstm_207_lstm_cell_507_matmul_1_readvariableop_resource:	d?S
Dsequential_69_lstm_207_lstm_cell_507_biasadd_readvariableop_resource:	?V
Csequential_69_lstm_208_lstm_cell_508_matmul_readvariableop_resource:	d?X
Esequential_69_lstm_208_lstm_cell_508_matmul_1_readvariableop_resource:	2?S
Dsequential_69_lstm_208_lstm_cell_508_biasadd_readvariableop_resource:	?U
Csequential_69_lstm_209_lstm_cell_509_matmul_readvariableop_resource:2(W
Esequential_69_lstm_209_lstm_cell_509_matmul_1_readvariableop_resource:
(R
Dsequential_69_lstm_209_lstm_cell_509_biasadd_readvariableop_resource:(G
5sequential_69_dense_69_matmul_readvariableop_resource:
D
6sequential_69_dense_69_biasadd_readvariableop_resource:
identity??-sequential_69/dense_69/BiasAdd/ReadVariableOp?,sequential_69/dense_69/MatMul/ReadVariableOp?;sequential_69/lstm_207/lstm_cell_507/BiasAdd/ReadVariableOp?:sequential_69/lstm_207/lstm_cell_507/MatMul/ReadVariableOp?<sequential_69/lstm_207/lstm_cell_507/MatMul_1/ReadVariableOp?sequential_69/lstm_207/while?;sequential_69/lstm_208/lstm_cell_508/BiasAdd/ReadVariableOp?:sequential_69/lstm_208/lstm_cell_508/MatMul/ReadVariableOp?<sequential_69/lstm_208/lstm_cell_508/MatMul_1/ReadVariableOp?sequential_69/lstm_208/while?;sequential_69/lstm_209/lstm_cell_509/BiasAdd/ReadVariableOp?:sequential_69/lstm_209/lstm_cell_509/MatMul/ReadVariableOp?<sequential_69/lstm_209/lstm_cell_509/MatMul_1/ReadVariableOp?sequential_69/lstm_209/whileZ
sequential_69/lstm_207/ShapeShapelstm_207_input*
T0*
_output_shapes
:t
*sequential_69/lstm_207/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_69/lstm_207/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_69/lstm_207/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_69/lstm_207/strided_sliceStridedSlice%sequential_69/lstm_207/Shape:output:03sequential_69/lstm_207/strided_slice/stack:output:05sequential_69/lstm_207/strided_slice/stack_1:output:05sequential_69/lstm_207/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_69/lstm_207/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_69/lstm_207/zeros/packedPack-sequential_69/lstm_207/strided_slice:output:0.sequential_69/lstm_207/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_69/lstm_207/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_69/lstm_207/zerosFill,sequential_69/lstm_207/zeros/packed:output:0+sequential_69/lstm_207/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_69/lstm_207/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_69/lstm_207/zeros_1/packedPack-sequential_69/lstm_207/strided_slice:output:00sequential_69/lstm_207/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_69/lstm_207/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_69/lstm_207/zeros_1Fill.sequential_69/lstm_207/zeros_1/packed:output:0-sequential_69/lstm_207/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_69/lstm_207/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_69/lstm_207/transpose	Transposelstm_207_input.sequential_69/lstm_207/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_69/lstm_207/Shape_1Shape$sequential_69/lstm_207/transpose:y:0*
T0*
_output_shapes
:v
,sequential_69/lstm_207/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_69/lstm_207/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_69/lstm_207/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_69/lstm_207/strided_slice_1StridedSlice'sequential_69/lstm_207/Shape_1:output:05sequential_69/lstm_207/strided_slice_1/stack:output:07sequential_69/lstm_207/strided_slice_1/stack_1:output:07sequential_69/lstm_207/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_69/lstm_207/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_69/lstm_207/TensorArrayV2TensorListReserve;sequential_69/lstm_207/TensorArrayV2/element_shape:output:0/sequential_69/lstm_207/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_69/lstm_207/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_69/lstm_207/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_69/lstm_207/transpose:y:0Usequential_69/lstm_207/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_69/lstm_207/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_69/lstm_207/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_69/lstm_207/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_69/lstm_207/strided_slice_2StridedSlice$sequential_69/lstm_207/transpose:y:05sequential_69/lstm_207/strided_slice_2/stack:output:07sequential_69/lstm_207/strided_slice_2/stack_1:output:07sequential_69/lstm_207/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_69/lstm_207/lstm_cell_507/MatMul/ReadVariableOpReadVariableOpCsequential_69_lstm_207_lstm_cell_507_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_69/lstm_207/lstm_cell_507/MatMulMatMul/sequential_69/lstm_207/strided_slice_2:output:0Bsequential_69/lstm_207/lstm_cell_507/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_69/lstm_207/lstm_cell_507/MatMul_1/ReadVariableOpReadVariableOpEsequential_69_lstm_207_lstm_cell_507_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_69/lstm_207/lstm_cell_507/MatMul_1MatMul%sequential_69/lstm_207/zeros:output:0Dsequential_69/lstm_207/lstm_cell_507/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_69/lstm_207/lstm_cell_507/addAddV25sequential_69/lstm_207/lstm_cell_507/MatMul:product:07sequential_69/lstm_207/lstm_cell_507/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_69/lstm_207/lstm_cell_507/BiasAdd/ReadVariableOpReadVariableOpDsequential_69_lstm_207_lstm_cell_507_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_69/lstm_207/lstm_cell_507/BiasAddBiasAdd,sequential_69/lstm_207/lstm_cell_507/add:z:0Csequential_69/lstm_207/lstm_cell_507/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_69/lstm_207/lstm_cell_507/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_69/lstm_207/lstm_cell_507/splitSplit=sequential_69/lstm_207/lstm_cell_507/split/split_dim:output:05sequential_69/lstm_207/lstm_cell_507/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_69/lstm_207/lstm_cell_507/SigmoidSigmoid3sequential_69/lstm_207/lstm_cell_507/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_69/lstm_207/lstm_cell_507/Sigmoid_1Sigmoid3sequential_69/lstm_207/lstm_cell_507/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_69/lstm_207/lstm_cell_507/mulMul2sequential_69/lstm_207/lstm_cell_507/Sigmoid_1:y:0'sequential_69/lstm_207/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_69/lstm_207/lstm_cell_507/ReluRelu3sequential_69/lstm_207/lstm_cell_507/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_69/lstm_207/lstm_cell_507/mul_1Mul0sequential_69/lstm_207/lstm_cell_507/Sigmoid:y:07sequential_69/lstm_207/lstm_cell_507/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_69/lstm_207/lstm_cell_507/add_1AddV2,sequential_69/lstm_207/lstm_cell_507/mul:z:0.sequential_69/lstm_207/lstm_cell_507/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_69/lstm_207/lstm_cell_507/Sigmoid_2Sigmoid3sequential_69/lstm_207/lstm_cell_507/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_69/lstm_207/lstm_cell_507/Relu_1Relu.sequential_69/lstm_207/lstm_cell_507/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_69/lstm_207/lstm_cell_507/mul_2Mul2sequential_69/lstm_207/lstm_cell_507/Sigmoid_2:y:09sequential_69/lstm_207/lstm_cell_507/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_69/lstm_207/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_69/lstm_207/TensorArrayV2_1TensorListReserve=sequential_69/lstm_207/TensorArrayV2_1/element_shape:output:0/sequential_69/lstm_207/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_69/lstm_207/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_69/lstm_207/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_69/lstm_207/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_69/lstm_207/whileWhile2sequential_69/lstm_207/while/loop_counter:output:08sequential_69/lstm_207/while/maximum_iterations:output:0$sequential_69/lstm_207/time:output:0/sequential_69/lstm_207/TensorArrayV2_1:handle:0%sequential_69/lstm_207/zeros:output:0'sequential_69/lstm_207/zeros_1:output:0/sequential_69/lstm_207/strided_slice_1:output:0Nsequential_69/lstm_207/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_69_lstm_207_lstm_cell_507_matmul_readvariableop_resourceEsequential_69_lstm_207_lstm_cell_507_matmul_1_readvariableop_resourceDsequential_69_lstm_207_lstm_cell_507_biasadd_readvariableop_resource*
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
)sequential_69_lstm_207_while_body_3078067*5
cond-R+
)sequential_69_lstm_207_while_cond_3078066*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_69/lstm_207/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_69/lstm_207/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_69/lstm_207/while:output:3Psequential_69/lstm_207/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_69/lstm_207/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_69/lstm_207/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_69/lstm_207/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_69/lstm_207/strided_slice_3StridedSliceBsequential_69/lstm_207/TensorArrayV2Stack/TensorListStack:tensor:05sequential_69/lstm_207/strided_slice_3/stack:output:07sequential_69/lstm_207/strided_slice_3/stack_1:output:07sequential_69/lstm_207/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_69/lstm_207/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_69/lstm_207/transpose_1	TransposeBsequential_69/lstm_207/TensorArrayV2Stack/TensorListStack:tensor:00sequential_69/lstm_207/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_69/lstm_207/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_69/lstm_208/ShapeShape&sequential_69/lstm_207/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_69/lstm_208/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_69/lstm_208/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_69/lstm_208/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_69/lstm_208/strided_sliceStridedSlice%sequential_69/lstm_208/Shape:output:03sequential_69/lstm_208/strided_slice/stack:output:05sequential_69/lstm_208/strided_slice/stack_1:output:05sequential_69/lstm_208/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_69/lstm_208/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_69/lstm_208/zeros/packedPack-sequential_69/lstm_208/strided_slice:output:0.sequential_69/lstm_208/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_69/lstm_208/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_69/lstm_208/zerosFill,sequential_69/lstm_208/zeros/packed:output:0+sequential_69/lstm_208/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_69/lstm_208/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_69/lstm_208/zeros_1/packedPack-sequential_69/lstm_208/strided_slice:output:00sequential_69/lstm_208/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_69/lstm_208/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_69/lstm_208/zeros_1Fill.sequential_69/lstm_208/zeros_1/packed:output:0-sequential_69/lstm_208/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_69/lstm_208/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_69/lstm_208/transpose	Transpose&sequential_69/lstm_207/transpose_1:y:0.sequential_69/lstm_208/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_69/lstm_208/Shape_1Shape$sequential_69/lstm_208/transpose:y:0*
T0*
_output_shapes
:v
,sequential_69/lstm_208/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_69/lstm_208/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_69/lstm_208/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_69/lstm_208/strided_slice_1StridedSlice'sequential_69/lstm_208/Shape_1:output:05sequential_69/lstm_208/strided_slice_1/stack:output:07sequential_69/lstm_208/strided_slice_1/stack_1:output:07sequential_69/lstm_208/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_69/lstm_208/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_69/lstm_208/TensorArrayV2TensorListReserve;sequential_69/lstm_208/TensorArrayV2/element_shape:output:0/sequential_69/lstm_208/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_69/lstm_208/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_69/lstm_208/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_69/lstm_208/transpose:y:0Usequential_69/lstm_208/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_69/lstm_208/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_69/lstm_208/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_69/lstm_208/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_69/lstm_208/strided_slice_2StridedSlice$sequential_69/lstm_208/transpose:y:05sequential_69/lstm_208/strided_slice_2/stack:output:07sequential_69/lstm_208/strided_slice_2/stack_1:output:07sequential_69/lstm_208/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_69/lstm_208/lstm_cell_508/MatMul/ReadVariableOpReadVariableOpCsequential_69_lstm_208_lstm_cell_508_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_69/lstm_208/lstm_cell_508/MatMulMatMul/sequential_69/lstm_208/strided_slice_2:output:0Bsequential_69/lstm_208/lstm_cell_508/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_69/lstm_208/lstm_cell_508/MatMul_1/ReadVariableOpReadVariableOpEsequential_69_lstm_208_lstm_cell_508_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_69/lstm_208/lstm_cell_508/MatMul_1MatMul%sequential_69/lstm_208/zeros:output:0Dsequential_69/lstm_208/lstm_cell_508/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_69/lstm_208/lstm_cell_508/addAddV25sequential_69/lstm_208/lstm_cell_508/MatMul:product:07sequential_69/lstm_208/lstm_cell_508/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_69/lstm_208/lstm_cell_508/BiasAdd/ReadVariableOpReadVariableOpDsequential_69_lstm_208_lstm_cell_508_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_69/lstm_208/lstm_cell_508/BiasAddBiasAdd,sequential_69/lstm_208/lstm_cell_508/add:z:0Csequential_69/lstm_208/lstm_cell_508/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_69/lstm_208/lstm_cell_508/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_69/lstm_208/lstm_cell_508/splitSplit=sequential_69/lstm_208/lstm_cell_508/split/split_dim:output:05sequential_69/lstm_208/lstm_cell_508/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_69/lstm_208/lstm_cell_508/SigmoidSigmoid3sequential_69/lstm_208/lstm_cell_508/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_69/lstm_208/lstm_cell_508/Sigmoid_1Sigmoid3sequential_69/lstm_208/lstm_cell_508/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_69/lstm_208/lstm_cell_508/mulMul2sequential_69/lstm_208/lstm_cell_508/Sigmoid_1:y:0'sequential_69/lstm_208/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_69/lstm_208/lstm_cell_508/ReluRelu3sequential_69/lstm_208/lstm_cell_508/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_69/lstm_208/lstm_cell_508/mul_1Mul0sequential_69/lstm_208/lstm_cell_508/Sigmoid:y:07sequential_69/lstm_208/lstm_cell_508/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_69/lstm_208/lstm_cell_508/add_1AddV2,sequential_69/lstm_208/lstm_cell_508/mul:z:0.sequential_69/lstm_208/lstm_cell_508/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_69/lstm_208/lstm_cell_508/Sigmoid_2Sigmoid3sequential_69/lstm_208/lstm_cell_508/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_69/lstm_208/lstm_cell_508/Relu_1Relu.sequential_69/lstm_208/lstm_cell_508/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_69/lstm_208/lstm_cell_508/mul_2Mul2sequential_69/lstm_208/lstm_cell_508/Sigmoid_2:y:09sequential_69/lstm_208/lstm_cell_508/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_69/lstm_208/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_69/lstm_208/TensorArrayV2_1TensorListReserve=sequential_69/lstm_208/TensorArrayV2_1/element_shape:output:0/sequential_69/lstm_208/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_69/lstm_208/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_69/lstm_208/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_69/lstm_208/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_69/lstm_208/whileWhile2sequential_69/lstm_208/while/loop_counter:output:08sequential_69/lstm_208/while/maximum_iterations:output:0$sequential_69/lstm_208/time:output:0/sequential_69/lstm_208/TensorArrayV2_1:handle:0%sequential_69/lstm_208/zeros:output:0'sequential_69/lstm_208/zeros_1:output:0/sequential_69/lstm_208/strided_slice_1:output:0Nsequential_69/lstm_208/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_69_lstm_208_lstm_cell_508_matmul_readvariableop_resourceEsequential_69_lstm_208_lstm_cell_508_matmul_1_readvariableop_resourceDsequential_69_lstm_208_lstm_cell_508_biasadd_readvariableop_resource*
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
)sequential_69_lstm_208_while_body_3078206*5
cond-R+
)sequential_69_lstm_208_while_cond_3078205*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_69/lstm_208/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_69/lstm_208/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_69/lstm_208/while:output:3Psequential_69/lstm_208/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_69/lstm_208/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_69/lstm_208/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_69/lstm_208/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_69/lstm_208/strided_slice_3StridedSliceBsequential_69/lstm_208/TensorArrayV2Stack/TensorListStack:tensor:05sequential_69/lstm_208/strided_slice_3/stack:output:07sequential_69/lstm_208/strided_slice_3/stack_1:output:07sequential_69/lstm_208/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_69/lstm_208/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_69/lstm_208/transpose_1	TransposeBsequential_69/lstm_208/TensorArrayV2Stack/TensorListStack:tensor:00sequential_69/lstm_208/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_69/lstm_208/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_69/lstm_209/ShapeShape&sequential_69/lstm_208/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_69/lstm_209/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_69/lstm_209/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_69/lstm_209/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_69/lstm_209/strided_sliceStridedSlice%sequential_69/lstm_209/Shape:output:03sequential_69/lstm_209/strided_slice/stack:output:05sequential_69/lstm_209/strided_slice/stack_1:output:05sequential_69/lstm_209/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_69/lstm_209/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_69/lstm_209/zeros/packedPack-sequential_69/lstm_209/strided_slice:output:0.sequential_69/lstm_209/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_69/lstm_209/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_69/lstm_209/zerosFill,sequential_69/lstm_209/zeros/packed:output:0+sequential_69/lstm_209/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_69/lstm_209/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_69/lstm_209/zeros_1/packedPack-sequential_69/lstm_209/strided_slice:output:00sequential_69/lstm_209/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_69/lstm_209/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_69/lstm_209/zeros_1Fill.sequential_69/lstm_209/zeros_1/packed:output:0-sequential_69/lstm_209/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_69/lstm_209/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_69/lstm_209/transpose	Transpose&sequential_69/lstm_208/transpose_1:y:0.sequential_69/lstm_209/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_69/lstm_209/Shape_1Shape$sequential_69/lstm_209/transpose:y:0*
T0*
_output_shapes
:v
,sequential_69/lstm_209/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_69/lstm_209/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_69/lstm_209/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_69/lstm_209/strided_slice_1StridedSlice'sequential_69/lstm_209/Shape_1:output:05sequential_69/lstm_209/strided_slice_1/stack:output:07sequential_69/lstm_209/strided_slice_1/stack_1:output:07sequential_69/lstm_209/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_69/lstm_209/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_69/lstm_209/TensorArrayV2TensorListReserve;sequential_69/lstm_209/TensorArrayV2/element_shape:output:0/sequential_69/lstm_209/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_69/lstm_209/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_69/lstm_209/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_69/lstm_209/transpose:y:0Usequential_69/lstm_209/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_69/lstm_209/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_69/lstm_209/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_69/lstm_209/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_69/lstm_209/strided_slice_2StridedSlice$sequential_69/lstm_209/transpose:y:05sequential_69/lstm_209/strided_slice_2/stack:output:07sequential_69/lstm_209/strided_slice_2/stack_1:output:07sequential_69/lstm_209/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_69/lstm_209/lstm_cell_509/MatMul/ReadVariableOpReadVariableOpCsequential_69_lstm_209_lstm_cell_509_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_69/lstm_209/lstm_cell_509/MatMulMatMul/sequential_69/lstm_209/strided_slice_2:output:0Bsequential_69/lstm_209/lstm_cell_509/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_69/lstm_209/lstm_cell_509/MatMul_1/ReadVariableOpReadVariableOpEsequential_69_lstm_209_lstm_cell_509_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_69/lstm_209/lstm_cell_509/MatMul_1MatMul%sequential_69/lstm_209/zeros:output:0Dsequential_69/lstm_209/lstm_cell_509/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_69/lstm_209/lstm_cell_509/addAddV25sequential_69/lstm_209/lstm_cell_509/MatMul:product:07sequential_69/lstm_209/lstm_cell_509/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_69/lstm_209/lstm_cell_509/BiasAdd/ReadVariableOpReadVariableOpDsequential_69_lstm_209_lstm_cell_509_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_69/lstm_209/lstm_cell_509/BiasAddBiasAdd,sequential_69/lstm_209/lstm_cell_509/add:z:0Csequential_69/lstm_209/lstm_cell_509/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_69/lstm_209/lstm_cell_509/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_69/lstm_209/lstm_cell_509/splitSplit=sequential_69/lstm_209/lstm_cell_509/split/split_dim:output:05sequential_69/lstm_209/lstm_cell_509/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_69/lstm_209/lstm_cell_509/SigmoidSigmoid3sequential_69/lstm_209/lstm_cell_509/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_69/lstm_209/lstm_cell_509/Sigmoid_1Sigmoid3sequential_69/lstm_209/lstm_cell_509/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_69/lstm_209/lstm_cell_509/mulMul2sequential_69/lstm_209/lstm_cell_509/Sigmoid_1:y:0'sequential_69/lstm_209/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_69/lstm_209/lstm_cell_509/ReluRelu3sequential_69/lstm_209/lstm_cell_509/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_69/lstm_209/lstm_cell_509/mul_1Mul0sequential_69/lstm_209/lstm_cell_509/Sigmoid:y:07sequential_69/lstm_209/lstm_cell_509/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_69/lstm_209/lstm_cell_509/add_1AddV2,sequential_69/lstm_209/lstm_cell_509/mul:z:0.sequential_69/lstm_209/lstm_cell_509/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_69/lstm_209/lstm_cell_509/Sigmoid_2Sigmoid3sequential_69/lstm_209/lstm_cell_509/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_69/lstm_209/lstm_cell_509/Relu_1Relu.sequential_69/lstm_209/lstm_cell_509/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_69/lstm_209/lstm_cell_509/mul_2Mul2sequential_69/lstm_209/lstm_cell_509/Sigmoid_2:y:09sequential_69/lstm_209/lstm_cell_509/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_69/lstm_209/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_69/lstm_209/TensorArrayV2_1TensorListReserve=sequential_69/lstm_209/TensorArrayV2_1/element_shape:output:0/sequential_69/lstm_209/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_69/lstm_209/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_69/lstm_209/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_69/lstm_209/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_69/lstm_209/whileWhile2sequential_69/lstm_209/while/loop_counter:output:08sequential_69/lstm_209/while/maximum_iterations:output:0$sequential_69/lstm_209/time:output:0/sequential_69/lstm_209/TensorArrayV2_1:handle:0%sequential_69/lstm_209/zeros:output:0'sequential_69/lstm_209/zeros_1:output:0/sequential_69/lstm_209/strided_slice_1:output:0Nsequential_69/lstm_209/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_69_lstm_209_lstm_cell_509_matmul_readvariableop_resourceEsequential_69_lstm_209_lstm_cell_509_matmul_1_readvariableop_resourceDsequential_69_lstm_209_lstm_cell_509_biasadd_readvariableop_resource*
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
)sequential_69_lstm_209_while_body_3078345*5
cond-R+
)sequential_69_lstm_209_while_cond_3078344*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_69/lstm_209/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_69/lstm_209/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_69/lstm_209/while:output:3Psequential_69/lstm_209/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_69/lstm_209/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_69/lstm_209/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_69/lstm_209/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_69/lstm_209/strided_slice_3StridedSliceBsequential_69/lstm_209/TensorArrayV2Stack/TensorListStack:tensor:05sequential_69/lstm_209/strided_slice_3/stack:output:07sequential_69/lstm_209/strided_slice_3/stack_1:output:07sequential_69/lstm_209/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_69/lstm_209/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_69/lstm_209/transpose_1	TransposeBsequential_69/lstm_209/TensorArrayV2Stack/TensorListStack:tensor:00sequential_69/lstm_209/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_69/lstm_209/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_69/dense_69/MatMul/ReadVariableOpReadVariableOp5sequential_69_dense_69_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_69/dense_69/MatMulMatMul/sequential_69/lstm_209/strided_slice_3:output:04sequential_69/dense_69/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_69/dense_69/BiasAdd/ReadVariableOpReadVariableOp6sequential_69_dense_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_69/dense_69/BiasAddBiasAdd'sequential_69/dense_69/MatMul:product:05sequential_69/dense_69/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_69/dense_69/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_69/dense_69/BiasAdd/ReadVariableOp-^sequential_69/dense_69/MatMul/ReadVariableOp<^sequential_69/lstm_207/lstm_cell_507/BiasAdd/ReadVariableOp;^sequential_69/lstm_207/lstm_cell_507/MatMul/ReadVariableOp=^sequential_69/lstm_207/lstm_cell_507/MatMul_1/ReadVariableOp^sequential_69/lstm_207/while<^sequential_69/lstm_208/lstm_cell_508/BiasAdd/ReadVariableOp;^sequential_69/lstm_208/lstm_cell_508/MatMul/ReadVariableOp=^sequential_69/lstm_208/lstm_cell_508/MatMul_1/ReadVariableOp^sequential_69/lstm_208/while<^sequential_69/lstm_209/lstm_cell_509/BiasAdd/ReadVariableOp;^sequential_69/lstm_209/lstm_cell_509/MatMul/ReadVariableOp=^sequential_69/lstm_209/lstm_cell_509/MatMul_1/ReadVariableOp^sequential_69/lstm_209/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_69/dense_69/BiasAdd/ReadVariableOp-sequential_69/dense_69/BiasAdd/ReadVariableOp2\
,sequential_69/dense_69/MatMul/ReadVariableOp,sequential_69/dense_69/MatMul/ReadVariableOp2z
;sequential_69/lstm_207/lstm_cell_507/BiasAdd/ReadVariableOp;sequential_69/lstm_207/lstm_cell_507/BiasAdd/ReadVariableOp2x
:sequential_69/lstm_207/lstm_cell_507/MatMul/ReadVariableOp:sequential_69/lstm_207/lstm_cell_507/MatMul/ReadVariableOp2|
<sequential_69/lstm_207/lstm_cell_507/MatMul_1/ReadVariableOp<sequential_69/lstm_207/lstm_cell_507/MatMul_1/ReadVariableOp2<
sequential_69/lstm_207/whilesequential_69/lstm_207/while2z
;sequential_69/lstm_208/lstm_cell_508/BiasAdd/ReadVariableOp;sequential_69/lstm_208/lstm_cell_508/BiasAdd/ReadVariableOp2x
:sequential_69/lstm_208/lstm_cell_508/MatMul/ReadVariableOp:sequential_69/lstm_208/lstm_cell_508/MatMul/ReadVariableOp2|
<sequential_69/lstm_208/lstm_cell_508/MatMul_1/ReadVariableOp<sequential_69/lstm_208/lstm_cell_508/MatMul_1/ReadVariableOp2<
sequential_69/lstm_208/whilesequential_69/lstm_208/while2z
;sequential_69/lstm_209/lstm_cell_509/BiasAdd/ReadVariableOp;sequential_69/lstm_209/lstm_cell_509/BiasAdd/ReadVariableOp2x
:sequential_69/lstm_209/lstm_cell_509/MatMul/ReadVariableOp:sequential_69/lstm_209/lstm_cell_509/MatMul/ReadVariableOp2|
<sequential_69/lstm_209/lstm_cell_509/MatMul_1/ReadVariableOp<sequential_69/lstm_209/lstm_cell_509/MatMul_1/ReadVariableOp2<
sequential_69/lstm_209/whilesequential_69/lstm_209/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_207_input
?J
?
E__inference_lstm_209_layer_call_and_return_conditional_losses_3080150

inputs>
,lstm_cell_509_matmul_readvariableop_resource:2(@
.lstm_cell_509_matmul_1_readvariableop_resource:
(;
-lstm_cell_509_biasadd_readvariableop_resource:(
identity??$lstm_cell_509/BiasAdd/ReadVariableOp?#lstm_cell_509/MatMul/ReadVariableOp?%lstm_cell_509/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_509/MatMul/ReadVariableOpReadVariableOp,lstm_cell_509_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_509/MatMulMatMulstrided_slice_2:output:0+lstm_cell_509/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_509/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_509_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_509/MatMul_1MatMulzeros:output:0-lstm_cell_509/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_509/addAddV2lstm_cell_509/MatMul:product:0 lstm_cell_509/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_509/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_509_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_509/BiasAddBiasAddlstm_cell_509/add:z:0,lstm_cell_509/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_509/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_509/splitSplit&lstm_cell_509/split/split_dim:output:0lstm_cell_509/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_509/SigmoidSigmoidlstm_cell_509/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_509/Sigmoid_1Sigmoidlstm_cell_509/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_509/mulMullstm_cell_509/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_509/ReluRelulstm_cell_509/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_509/mul_1Mullstm_cell_509/Sigmoid:y:0 lstm_cell_509/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_509/add_1AddV2lstm_cell_509/mul:z:0lstm_cell_509/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_509/Sigmoid_2Sigmoidlstm_cell_509/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_509/Relu_1Relulstm_cell_509/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_509/mul_2Mullstm_cell_509/Sigmoid_2:y:0"lstm_cell_509/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_509_matmul_readvariableop_resource.lstm_cell_509_matmul_1_readvariableop_resource-lstm_cell_509_biasadd_readvariableop_resource*
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
while_body_3080066*
condR
while_cond_3080065*K
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
NoOpNoOp%^lstm_cell_509/BiasAdd/ReadVariableOp$^lstm_cell_509/MatMul/ReadVariableOp&^lstm_cell_509/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_509/BiasAdd/ReadVariableOp$lstm_cell_509/BiasAdd/ReadVariableOp2J
#lstm_cell_509/MatMul/ReadVariableOp#lstm_cell_509/MatMul/ReadVariableOp2N
%lstm_cell_509/MatMul_1/ReadVariableOp%lstm_cell_509/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_3081706
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_507_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_507_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_507_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_507_matmul_readvariableop_resource:	?G
4while_lstm_cell_507_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_507_biasadd_readvariableop_resource:	???*while/lstm_cell_507/BiasAdd/ReadVariableOp?)while/lstm_cell_507/MatMul/ReadVariableOp?+while/lstm_cell_507/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_507/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_507_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_507/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_507/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_507/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_507_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_507/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_507/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_507/addAddV2$while/lstm_cell_507/MatMul:product:0&while/lstm_cell_507/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_507/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_507_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_507/BiasAddBiasAddwhile/lstm_cell_507/add:z:02while/lstm_cell_507/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_507/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_507/splitSplit,while/lstm_cell_507/split/split_dim:output:0$while/lstm_cell_507/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_507/SigmoidSigmoid"while/lstm_cell_507/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_507/Sigmoid_1Sigmoid"while/lstm_cell_507/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_507/mulMul!while/lstm_cell_507/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_507/ReluRelu"while/lstm_cell_507/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_507/mul_1Mulwhile/lstm_cell_507/Sigmoid:y:0&while/lstm_cell_507/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_507/add_1AddV2while/lstm_cell_507/mul:z:0while/lstm_cell_507/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_507/Sigmoid_2Sigmoid"while/lstm_cell_507/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_507/Relu_1Reluwhile/lstm_cell_507/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_507/mul_2Mul!while/lstm_cell_507/Sigmoid_2:y:0(while/lstm_cell_507/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_507/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_507/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_507/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_507/BiasAdd/ReadVariableOp*^while/lstm_cell_507/MatMul/ReadVariableOp,^while/lstm_cell_507/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_507_biasadd_readvariableop_resource5while_lstm_cell_507_biasadd_readvariableop_resource_0"n
4while_lstm_cell_507_matmul_1_readvariableop_resource6while_lstm_cell_507_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_507_matmul_readvariableop_resource4while_lstm_cell_507_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_507/BiasAdd/ReadVariableOp*while/lstm_cell_507/BiasAdd/ReadVariableOp2V
)while/lstm_cell_507/MatMul/ReadVariableOp)while/lstm_cell_507/MatMul/ReadVariableOp2Z
+while/lstm_cell_507/MatMul_1/ReadVariableOp+while/lstm_cell_507/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?S
?
)sequential_69_lstm_209_while_body_3078345J
Fsequential_69_lstm_209_while_sequential_69_lstm_209_while_loop_counterP
Lsequential_69_lstm_209_while_sequential_69_lstm_209_while_maximum_iterations,
(sequential_69_lstm_209_while_placeholder.
*sequential_69_lstm_209_while_placeholder_1.
*sequential_69_lstm_209_while_placeholder_2.
*sequential_69_lstm_209_while_placeholder_3I
Esequential_69_lstm_209_while_sequential_69_lstm_209_strided_slice_1_0?
?sequential_69_lstm_209_while_tensorarrayv2read_tensorlistgetitem_sequential_69_lstm_209_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_69_lstm_209_while_lstm_cell_509_matmul_readvariableop_resource_0:2(_
Msequential_69_lstm_209_while_lstm_cell_509_matmul_1_readvariableop_resource_0:
(Z
Lsequential_69_lstm_209_while_lstm_cell_509_biasadd_readvariableop_resource_0:()
%sequential_69_lstm_209_while_identity+
'sequential_69_lstm_209_while_identity_1+
'sequential_69_lstm_209_while_identity_2+
'sequential_69_lstm_209_while_identity_3+
'sequential_69_lstm_209_while_identity_4+
'sequential_69_lstm_209_while_identity_5G
Csequential_69_lstm_209_while_sequential_69_lstm_209_strided_slice_1?
sequential_69_lstm_209_while_tensorarrayv2read_tensorlistgetitem_sequential_69_lstm_209_tensorarrayunstack_tensorlistfromtensor[
Isequential_69_lstm_209_while_lstm_cell_509_matmul_readvariableop_resource:2(]
Ksequential_69_lstm_209_while_lstm_cell_509_matmul_1_readvariableop_resource:
(X
Jsequential_69_lstm_209_while_lstm_cell_509_biasadd_readvariableop_resource:(??Asequential_69/lstm_209/while/lstm_cell_509/BiasAdd/ReadVariableOp?@sequential_69/lstm_209/while/lstm_cell_509/MatMul/ReadVariableOp?Bsequential_69/lstm_209/while/lstm_cell_509/MatMul_1/ReadVariableOp?
Nsequential_69/lstm_209/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_69/lstm_209/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_69_lstm_209_while_tensorarrayv2read_tensorlistgetitem_sequential_69_lstm_209_tensorarrayunstack_tensorlistfromtensor_0(sequential_69_lstm_209_while_placeholderWsequential_69/lstm_209/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_69/lstm_209/while/lstm_cell_509/MatMul/ReadVariableOpReadVariableOpKsequential_69_lstm_209_while_lstm_cell_509_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_69/lstm_209/while/lstm_cell_509/MatMulMatMulGsequential_69/lstm_209/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_69/lstm_209/while/lstm_cell_509/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_69/lstm_209/while/lstm_cell_509/MatMul_1/ReadVariableOpReadVariableOpMsequential_69_lstm_209_while_lstm_cell_509_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_69/lstm_209/while/lstm_cell_509/MatMul_1MatMul*sequential_69_lstm_209_while_placeholder_2Jsequential_69/lstm_209/while/lstm_cell_509/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_69/lstm_209/while/lstm_cell_509/addAddV2;sequential_69/lstm_209/while/lstm_cell_509/MatMul:product:0=sequential_69/lstm_209/while/lstm_cell_509/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_69/lstm_209/while/lstm_cell_509/BiasAdd/ReadVariableOpReadVariableOpLsequential_69_lstm_209_while_lstm_cell_509_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_69/lstm_209/while/lstm_cell_509/BiasAddBiasAdd2sequential_69/lstm_209/while/lstm_cell_509/add:z:0Isequential_69/lstm_209/while/lstm_cell_509/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_69/lstm_209/while/lstm_cell_509/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_69/lstm_209/while/lstm_cell_509/splitSplitCsequential_69/lstm_209/while/lstm_cell_509/split/split_dim:output:0;sequential_69/lstm_209/while/lstm_cell_509/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_69/lstm_209/while/lstm_cell_509/SigmoidSigmoid9sequential_69/lstm_209/while/lstm_cell_509/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_69/lstm_209/while/lstm_cell_509/Sigmoid_1Sigmoid9sequential_69/lstm_209/while/lstm_cell_509/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_69/lstm_209/while/lstm_cell_509/mulMul8sequential_69/lstm_209/while/lstm_cell_509/Sigmoid_1:y:0*sequential_69_lstm_209_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_69/lstm_209/while/lstm_cell_509/ReluRelu9sequential_69/lstm_209/while/lstm_cell_509/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_69/lstm_209/while/lstm_cell_509/mul_1Mul6sequential_69/lstm_209/while/lstm_cell_509/Sigmoid:y:0=sequential_69/lstm_209/while/lstm_cell_509/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_69/lstm_209/while/lstm_cell_509/add_1AddV22sequential_69/lstm_209/while/lstm_cell_509/mul:z:04sequential_69/lstm_209/while/lstm_cell_509/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_69/lstm_209/while/lstm_cell_509/Sigmoid_2Sigmoid9sequential_69/lstm_209/while/lstm_cell_509/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_69/lstm_209/while/lstm_cell_509/Relu_1Relu4sequential_69/lstm_209/while/lstm_cell_509/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_69/lstm_209/while/lstm_cell_509/mul_2Mul8sequential_69/lstm_209/while/lstm_cell_509/Sigmoid_2:y:0?sequential_69/lstm_209/while/lstm_cell_509/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_69/lstm_209/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_69_lstm_209_while_placeholder_1(sequential_69_lstm_209_while_placeholder4sequential_69/lstm_209/while/lstm_cell_509/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_69/lstm_209/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_69/lstm_209/while/addAddV2(sequential_69_lstm_209_while_placeholder+sequential_69/lstm_209/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_69/lstm_209/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_69/lstm_209/while/add_1AddV2Fsequential_69_lstm_209_while_sequential_69_lstm_209_while_loop_counter-sequential_69/lstm_209/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_69/lstm_209/while/IdentityIdentity&sequential_69/lstm_209/while/add_1:z:0"^sequential_69/lstm_209/while/NoOp*
T0*
_output_shapes
: ?
'sequential_69/lstm_209/while/Identity_1IdentityLsequential_69_lstm_209_while_sequential_69_lstm_209_while_maximum_iterations"^sequential_69/lstm_209/while/NoOp*
T0*
_output_shapes
: ?
'sequential_69/lstm_209/while/Identity_2Identity$sequential_69/lstm_209/while/add:z:0"^sequential_69/lstm_209/while/NoOp*
T0*
_output_shapes
: ?
'sequential_69/lstm_209/while/Identity_3IdentityQsequential_69/lstm_209/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_69/lstm_209/while/NoOp*
T0*
_output_shapes
: ?
'sequential_69/lstm_209/while/Identity_4Identity4sequential_69/lstm_209/while/lstm_cell_509/mul_2:z:0"^sequential_69/lstm_209/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_69/lstm_209/while/Identity_5Identity4sequential_69/lstm_209/while/lstm_cell_509/add_1:z:0"^sequential_69/lstm_209/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_69/lstm_209/while/NoOpNoOpB^sequential_69/lstm_209/while/lstm_cell_509/BiasAdd/ReadVariableOpA^sequential_69/lstm_209/while/lstm_cell_509/MatMul/ReadVariableOpC^sequential_69/lstm_209/while/lstm_cell_509/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_69_lstm_209_while_identity.sequential_69/lstm_209/while/Identity:output:0"[
'sequential_69_lstm_209_while_identity_10sequential_69/lstm_209/while/Identity_1:output:0"[
'sequential_69_lstm_209_while_identity_20sequential_69/lstm_209/while/Identity_2:output:0"[
'sequential_69_lstm_209_while_identity_30sequential_69/lstm_209/while/Identity_3:output:0"[
'sequential_69_lstm_209_while_identity_40sequential_69/lstm_209/while/Identity_4:output:0"[
'sequential_69_lstm_209_while_identity_50sequential_69/lstm_209/while/Identity_5:output:0"?
Jsequential_69_lstm_209_while_lstm_cell_509_biasadd_readvariableop_resourceLsequential_69_lstm_209_while_lstm_cell_509_biasadd_readvariableop_resource_0"?
Ksequential_69_lstm_209_while_lstm_cell_509_matmul_1_readvariableop_resourceMsequential_69_lstm_209_while_lstm_cell_509_matmul_1_readvariableop_resource_0"?
Isequential_69_lstm_209_while_lstm_cell_509_matmul_readvariableop_resourceKsequential_69_lstm_209_while_lstm_cell_509_matmul_readvariableop_resource_0"?
Csequential_69_lstm_209_while_sequential_69_lstm_209_strided_slice_1Esequential_69_lstm_209_while_sequential_69_lstm_209_strided_slice_1_0"?
sequential_69_lstm_209_while_tensorarrayv2read_tensorlistgetitem_sequential_69_lstm_209_tensorarrayunstack_tensorlistfromtensor?sequential_69_lstm_209_while_tensorarrayv2read_tensorlistgetitem_sequential_69_lstm_209_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_69/lstm_209/while/lstm_cell_509/BiasAdd/ReadVariableOpAsequential_69/lstm_209/while/lstm_cell_509/BiasAdd/ReadVariableOp2?
@sequential_69/lstm_209/while/lstm_cell_509/MatMul/ReadVariableOp@sequential_69/lstm_209/while/lstm_cell_509/MatMul/ReadVariableOp2?
Bsequential_69/lstm_209/while/lstm_cell_509/MatMul_1/ReadVariableOpBsequential_69/lstm_209/while/lstm_cell_509/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_508_layer_call_and_return_conditional_losses_3078852

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
E__inference_lstm_208_layer_call_and_return_conditional_losses_3082692

inputs?
,lstm_cell_508_matmul_readvariableop_resource:	d?A
.lstm_cell_508_matmul_1_readvariableop_resource:	2?<
-lstm_cell_508_biasadd_readvariableop_resource:	?
identity??$lstm_cell_508/BiasAdd/ReadVariableOp?#lstm_cell_508/MatMul/ReadVariableOp?%lstm_cell_508/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_508/MatMul/ReadVariableOpReadVariableOp,lstm_cell_508_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_508/MatMulMatMulstrided_slice_2:output:0+lstm_cell_508/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_508/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_508_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_508/MatMul_1MatMulzeros:output:0-lstm_cell_508/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_508/addAddV2lstm_cell_508/MatMul:product:0 lstm_cell_508/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_508/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_508_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_508/BiasAddBiasAddlstm_cell_508/add:z:0,lstm_cell_508/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_508/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_508/splitSplit&lstm_cell_508/split/split_dim:output:0lstm_cell_508/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_508/SigmoidSigmoidlstm_cell_508/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_508/Sigmoid_1Sigmoidlstm_cell_508/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_508/mulMullstm_cell_508/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_508/ReluRelulstm_cell_508/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_508/mul_1Mullstm_cell_508/Sigmoid:y:0 lstm_cell_508/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_508/add_1AddV2lstm_cell_508/mul:z:0lstm_cell_508/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_508/Sigmoid_2Sigmoidlstm_cell_508/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_508/Relu_1Relulstm_cell_508/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_508/mul_2Mullstm_cell_508/Sigmoid_2:y:0"lstm_cell_508/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_508_matmul_readvariableop_resource.lstm_cell_508_matmul_1_readvariableop_resource-lstm_cell_508_biasadd_readvariableop_resource*
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
while_body_3082608*
condR
while_cond_3082607*K
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
NoOpNoOp%^lstm_cell_508/BiasAdd/ReadVariableOp$^lstm_cell_508/MatMul/ReadVariableOp&^lstm_cell_508/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_508/BiasAdd/ReadVariableOp$lstm_cell_508/BiasAdd/ReadVariableOp2J
#lstm_cell_508/MatMul/ReadVariableOp#lstm_cell_508/MatMul/ReadVariableOp2N
%lstm_cell_508/MatMul_1/ReadVariableOp%lstm_cell_508/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_3082751
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_508_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_508_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_508_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_508_matmul_readvariableop_resource:	d?G
4while_lstm_cell_508_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_508_biasadd_readvariableop_resource:	???*while/lstm_cell_508/BiasAdd/ReadVariableOp?)while/lstm_cell_508/MatMul/ReadVariableOp?+while/lstm_cell_508/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_508/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_508_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_508/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_508/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_508/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_508_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_508/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_508/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_508/addAddV2$while/lstm_cell_508/MatMul:product:0&while/lstm_cell_508/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_508/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_508_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_508/BiasAddBiasAddwhile/lstm_cell_508/add:z:02while/lstm_cell_508/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_508/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_508/splitSplit,while/lstm_cell_508/split/split_dim:output:0$while/lstm_cell_508/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_508/SigmoidSigmoid"while/lstm_cell_508/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_508/Sigmoid_1Sigmoid"while/lstm_cell_508/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_508/mulMul!while/lstm_cell_508/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_508/ReluRelu"while/lstm_cell_508/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_508/mul_1Mulwhile/lstm_cell_508/Sigmoid:y:0&while/lstm_cell_508/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_508/add_1AddV2while/lstm_cell_508/mul:z:0while/lstm_cell_508/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_508/Sigmoid_2Sigmoid"while/lstm_cell_508/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_508/Relu_1Reluwhile/lstm_cell_508/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_508/mul_2Mul!while/lstm_cell_508/Sigmoid_2:y:0(while/lstm_cell_508/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_508/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_508/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_508/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_508/BiasAdd/ReadVariableOp*^while/lstm_cell_508/MatMul/ReadVariableOp,^while/lstm_cell_508/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_508_biasadd_readvariableop_resource5while_lstm_cell_508_biasadd_readvariableop_resource_0"n
4while_lstm_cell_508_matmul_1_readvariableop_resource6while_lstm_cell_508_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_508_matmul_readvariableop_resource4while_lstm_cell_508_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_508/BiasAdd/ReadVariableOp*while/lstm_cell_508/BiasAdd/ReadVariableOp2V
)while/lstm_cell_508/MatMul/ReadVariableOp)while/lstm_cell_508/MatMul/ReadVariableOp2Z
+while/lstm_cell_508/MatMul_1/ReadVariableOp+while/lstm_cell_508/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3083223
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3083223___redundant_placeholder05
1while_while_cond_3083223___redundant_placeholder15
1while_while_cond_3083223___redundant_placeholder25
1while_while_cond_3083223___redundant_placeholder3
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
while_cond_3082750
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3082750___redundant_placeholder05
1while_while_cond_3082750___redundant_placeholder15
1while_while_cond_3082750___redundant_placeholder25
1while_while_cond_3082750___redundant_placeholder3
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
lstm_209_while_cond_3081512.
*lstm_209_while_lstm_209_while_loop_counter4
0lstm_209_while_lstm_209_while_maximum_iterations
lstm_209_while_placeholder 
lstm_209_while_placeholder_1 
lstm_209_while_placeholder_2 
lstm_209_while_placeholder_30
,lstm_209_while_less_lstm_209_strided_slice_1G
Clstm_209_while_lstm_209_while_cond_3081512___redundant_placeholder0G
Clstm_209_while_lstm_209_while_cond_3081512___redundant_placeholder1G
Clstm_209_while_lstm_209_while_cond_3081512___redundant_placeholder2G
Clstm_209_while_lstm_209_while_cond_3081512___redundant_placeholder3
lstm_209_while_identity
?
lstm_209/while/LessLesslstm_209_while_placeholder,lstm_209_while_less_lstm_209_strided_slice_1*
T0*
_output_shapes
: ]
lstm_209/while/IdentityIdentitylstm_209/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_209_while_identity lstm_209/while/Identity:output:0*(
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
while_body_3081849
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_507_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_507_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_507_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_507_matmul_readvariableop_resource:	?G
4while_lstm_cell_507_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_507_biasadd_readvariableop_resource:	???*while/lstm_cell_507/BiasAdd/ReadVariableOp?)while/lstm_cell_507/MatMul/ReadVariableOp?+while/lstm_cell_507/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_507/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_507_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_507/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_507/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_507/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_507_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_507/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_507/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_507/addAddV2$while/lstm_cell_507/MatMul:product:0&while/lstm_cell_507/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_507/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_507_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_507/BiasAddBiasAddwhile/lstm_cell_507/add:z:02while/lstm_cell_507/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_507/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_507/splitSplit,while/lstm_cell_507/split/split_dim:output:0$while/lstm_cell_507/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_507/SigmoidSigmoid"while/lstm_cell_507/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_507/Sigmoid_1Sigmoid"while/lstm_cell_507/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_507/mulMul!while/lstm_cell_507/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_507/ReluRelu"while/lstm_cell_507/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_507/mul_1Mulwhile/lstm_cell_507/Sigmoid:y:0&while/lstm_cell_507/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_507/add_1AddV2while/lstm_cell_507/mul:z:0while/lstm_cell_507/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_507/Sigmoid_2Sigmoid"while/lstm_cell_507/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_507/Relu_1Reluwhile/lstm_cell_507/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_507/mul_2Mul!while/lstm_cell_507/Sigmoid_2:y:0(while/lstm_cell_507/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_507/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_507/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_507/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_507/BiasAdd/ReadVariableOp*^while/lstm_cell_507/MatMul/ReadVariableOp,^while/lstm_cell_507/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_507_biasadd_readvariableop_resource5while_lstm_cell_507_biasadd_readvariableop_resource_0"n
4while_lstm_cell_507_matmul_1_readvariableop_resource6while_lstm_cell_507_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_507_matmul_readvariableop_resource4while_lstm_cell_507_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_507/BiasAdd/ReadVariableOp*while/lstm_cell_507/BiasAdd/ReadVariableOp2V
)while/lstm_cell_507/MatMul/ReadVariableOp)while/lstm_cell_507/MatMul/ReadVariableOp2Z
+while/lstm_cell_507/MatMul_1/ReadVariableOp+while/lstm_cell_507/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3082321
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3082321___redundant_placeholder05
1while_while_cond_3082321___redundant_placeholder15
1while_while_cond_3082321___redundant_placeholder25
1while_while_cond_3082321___redundant_placeholder3
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
while_body_3079216
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_509_3079240_0:2(/
while_lstm_cell_509_3079242_0:
(+
while_lstm_cell_509_3079244_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_509_3079240:2(-
while_lstm_cell_509_3079242:
()
while_lstm_cell_509_3079244:(??+while/lstm_cell_509/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_509/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_509_3079240_0while_lstm_cell_509_3079242_0while_lstm_cell_509_3079244_0*
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
J__inference_lstm_cell_509_layer_call_and_return_conditional_losses_3079202?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_509/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_509/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_509/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_509/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_509_3079240while_lstm_cell_509_3079240_0"<
while_lstm_cell_509_3079242while_lstm_cell_509_3079242_0"<
while_lstm_cell_509_3079244while_lstm_cell_509_3079244_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_509/StatefulPartitionedCall+while/lstm_cell_509/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3082134
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3082134___redundant_placeholder05
1while_while_cond_3082134___redundant_placeholder15
1while_while_cond_3082134___redundant_placeholder25
1while_while_cond_3082134___redundant_placeholder3
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
)sequential_69_lstm_207_while_body_3078067J
Fsequential_69_lstm_207_while_sequential_69_lstm_207_while_loop_counterP
Lsequential_69_lstm_207_while_sequential_69_lstm_207_while_maximum_iterations,
(sequential_69_lstm_207_while_placeholder.
*sequential_69_lstm_207_while_placeholder_1.
*sequential_69_lstm_207_while_placeholder_2.
*sequential_69_lstm_207_while_placeholder_3I
Esequential_69_lstm_207_while_sequential_69_lstm_207_strided_slice_1_0?
?sequential_69_lstm_207_while_tensorarrayv2read_tensorlistgetitem_sequential_69_lstm_207_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_69_lstm_207_while_lstm_cell_507_matmul_readvariableop_resource_0:	?`
Msequential_69_lstm_207_while_lstm_cell_507_matmul_1_readvariableop_resource_0:	d?[
Lsequential_69_lstm_207_while_lstm_cell_507_biasadd_readvariableop_resource_0:	?)
%sequential_69_lstm_207_while_identity+
'sequential_69_lstm_207_while_identity_1+
'sequential_69_lstm_207_while_identity_2+
'sequential_69_lstm_207_while_identity_3+
'sequential_69_lstm_207_while_identity_4+
'sequential_69_lstm_207_while_identity_5G
Csequential_69_lstm_207_while_sequential_69_lstm_207_strided_slice_1?
sequential_69_lstm_207_while_tensorarrayv2read_tensorlistgetitem_sequential_69_lstm_207_tensorarrayunstack_tensorlistfromtensor\
Isequential_69_lstm_207_while_lstm_cell_507_matmul_readvariableop_resource:	?^
Ksequential_69_lstm_207_while_lstm_cell_507_matmul_1_readvariableop_resource:	d?Y
Jsequential_69_lstm_207_while_lstm_cell_507_biasadd_readvariableop_resource:	???Asequential_69/lstm_207/while/lstm_cell_507/BiasAdd/ReadVariableOp?@sequential_69/lstm_207/while/lstm_cell_507/MatMul/ReadVariableOp?Bsequential_69/lstm_207/while/lstm_cell_507/MatMul_1/ReadVariableOp?
Nsequential_69/lstm_207/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_69/lstm_207/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_69_lstm_207_while_tensorarrayv2read_tensorlistgetitem_sequential_69_lstm_207_tensorarrayunstack_tensorlistfromtensor_0(sequential_69_lstm_207_while_placeholderWsequential_69/lstm_207/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_69/lstm_207/while/lstm_cell_507/MatMul/ReadVariableOpReadVariableOpKsequential_69_lstm_207_while_lstm_cell_507_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_69/lstm_207/while/lstm_cell_507/MatMulMatMulGsequential_69/lstm_207/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_69/lstm_207/while/lstm_cell_507/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_69/lstm_207/while/lstm_cell_507/MatMul_1/ReadVariableOpReadVariableOpMsequential_69_lstm_207_while_lstm_cell_507_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_69/lstm_207/while/lstm_cell_507/MatMul_1MatMul*sequential_69_lstm_207_while_placeholder_2Jsequential_69/lstm_207/while/lstm_cell_507/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_69/lstm_207/while/lstm_cell_507/addAddV2;sequential_69/lstm_207/while/lstm_cell_507/MatMul:product:0=sequential_69/lstm_207/while/lstm_cell_507/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_69/lstm_207/while/lstm_cell_507/BiasAdd/ReadVariableOpReadVariableOpLsequential_69_lstm_207_while_lstm_cell_507_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_69/lstm_207/while/lstm_cell_507/BiasAddBiasAdd2sequential_69/lstm_207/while/lstm_cell_507/add:z:0Isequential_69/lstm_207/while/lstm_cell_507/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_69/lstm_207/while/lstm_cell_507/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_69/lstm_207/while/lstm_cell_507/splitSplitCsequential_69/lstm_207/while/lstm_cell_507/split/split_dim:output:0;sequential_69/lstm_207/while/lstm_cell_507/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_69/lstm_207/while/lstm_cell_507/SigmoidSigmoid9sequential_69/lstm_207/while/lstm_cell_507/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_69/lstm_207/while/lstm_cell_507/Sigmoid_1Sigmoid9sequential_69/lstm_207/while/lstm_cell_507/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_69/lstm_207/while/lstm_cell_507/mulMul8sequential_69/lstm_207/while/lstm_cell_507/Sigmoid_1:y:0*sequential_69_lstm_207_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_69/lstm_207/while/lstm_cell_507/ReluRelu9sequential_69/lstm_207/while/lstm_cell_507/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_69/lstm_207/while/lstm_cell_507/mul_1Mul6sequential_69/lstm_207/while/lstm_cell_507/Sigmoid:y:0=sequential_69/lstm_207/while/lstm_cell_507/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_69/lstm_207/while/lstm_cell_507/add_1AddV22sequential_69/lstm_207/while/lstm_cell_507/mul:z:04sequential_69/lstm_207/while/lstm_cell_507/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_69/lstm_207/while/lstm_cell_507/Sigmoid_2Sigmoid9sequential_69/lstm_207/while/lstm_cell_507/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_69/lstm_207/while/lstm_cell_507/Relu_1Relu4sequential_69/lstm_207/while/lstm_cell_507/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_69/lstm_207/while/lstm_cell_507/mul_2Mul8sequential_69/lstm_207/while/lstm_cell_507/Sigmoid_2:y:0?sequential_69/lstm_207/while/lstm_cell_507/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_69/lstm_207/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_69_lstm_207_while_placeholder_1(sequential_69_lstm_207_while_placeholder4sequential_69/lstm_207/while/lstm_cell_507/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_69/lstm_207/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_69/lstm_207/while/addAddV2(sequential_69_lstm_207_while_placeholder+sequential_69/lstm_207/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_69/lstm_207/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_69/lstm_207/while/add_1AddV2Fsequential_69_lstm_207_while_sequential_69_lstm_207_while_loop_counter-sequential_69/lstm_207/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_69/lstm_207/while/IdentityIdentity&sequential_69/lstm_207/while/add_1:z:0"^sequential_69/lstm_207/while/NoOp*
T0*
_output_shapes
: ?
'sequential_69/lstm_207/while/Identity_1IdentityLsequential_69_lstm_207_while_sequential_69_lstm_207_while_maximum_iterations"^sequential_69/lstm_207/while/NoOp*
T0*
_output_shapes
: ?
'sequential_69/lstm_207/while/Identity_2Identity$sequential_69/lstm_207/while/add:z:0"^sequential_69/lstm_207/while/NoOp*
T0*
_output_shapes
: ?
'sequential_69/lstm_207/while/Identity_3IdentityQsequential_69/lstm_207/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_69/lstm_207/while/NoOp*
T0*
_output_shapes
: ?
'sequential_69/lstm_207/while/Identity_4Identity4sequential_69/lstm_207/while/lstm_cell_507/mul_2:z:0"^sequential_69/lstm_207/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_69/lstm_207/while/Identity_5Identity4sequential_69/lstm_207/while/lstm_cell_507/add_1:z:0"^sequential_69/lstm_207/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_69/lstm_207/while/NoOpNoOpB^sequential_69/lstm_207/while/lstm_cell_507/BiasAdd/ReadVariableOpA^sequential_69/lstm_207/while/lstm_cell_507/MatMul/ReadVariableOpC^sequential_69/lstm_207/while/lstm_cell_507/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_69_lstm_207_while_identity.sequential_69/lstm_207/while/Identity:output:0"[
'sequential_69_lstm_207_while_identity_10sequential_69/lstm_207/while/Identity_1:output:0"[
'sequential_69_lstm_207_while_identity_20sequential_69/lstm_207/while/Identity_2:output:0"[
'sequential_69_lstm_207_while_identity_30sequential_69/lstm_207/while/Identity_3:output:0"[
'sequential_69_lstm_207_while_identity_40sequential_69/lstm_207/while/Identity_4:output:0"[
'sequential_69_lstm_207_while_identity_50sequential_69/lstm_207/while/Identity_5:output:0"?
Jsequential_69_lstm_207_while_lstm_cell_507_biasadd_readvariableop_resourceLsequential_69_lstm_207_while_lstm_cell_507_biasadd_readvariableop_resource_0"?
Ksequential_69_lstm_207_while_lstm_cell_507_matmul_1_readvariableop_resourceMsequential_69_lstm_207_while_lstm_cell_507_matmul_1_readvariableop_resource_0"?
Isequential_69_lstm_207_while_lstm_cell_507_matmul_readvariableop_resourceKsequential_69_lstm_207_while_lstm_cell_507_matmul_readvariableop_resource_0"?
Csequential_69_lstm_207_while_sequential_69_lstm_207_strided_slice_1Esequential_69_lstm_207_while_sequential_69_lstm_207_strided_slice_1_0"?
sequential_69_lstm_207_while_tensorarrayv2read_tensorlistgetitem_sequential_69_lstm_207_tensorarrayunstack_tensorlistfromtensor?sequential_69_lstm_207_while_tensorarrayv2read_tensorlistgetitem_sequential_69_lstm_207_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_69/lstm_207/while/lstm_cell_507/BiasAdd/ReadVariableOpAsequential_69/lstm_207/while/lstm_cell_507/BiasAdd/ReadVariableOp2?
@sequential_69/lstm_207/while/lstm_cell_507/MatMul/ReadVariableOp@sequential_69/lstm_207/while/lstm_cell_507/MatMul/ReadVariableOp2?
Bsequential_69/lstm_207/while/lstm_cell_507/MatMul_1/ReadVariableOpBsequential_69/lstm_207/while/lstm_cell_507/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3081705
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3081705___redundant_placeholder05
1while_while_cond_3081705___redundant_placeholder15
1while_while_cond_3081705___redundant_placeholder25
1while_while_cond_3081705___redundant_placeholder3
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
?
E__inference_lstm_207_layer_call_and_return_conditional_losses_3078776

inputs(
lstm_cell_507_3078694:	?(
lstm_cell_507_3078696:	d?$
lstm_cell_507_3078698:	?
identity??%lstm_cell_507/StatefulPartitionedCall?while;
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
%lstm_cell_507/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_507_3078694lstm_cell_507_3078696lstm_cell_507_3078698*
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
J__inference_lstm_cell_507_layer_call_and_return_conditional_losses_3078648n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_507_3078694lstm_cell_507_3078696lstm_cell_507_3078698*
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
while_body_3078707*
condR
while_cond_3078706*K
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
NoOpNoOp&^lstm_cell_507/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_507/StatefulPartitionedCall%lstm_cell_507/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_3082322
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_508_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_508_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_508_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_508_matmul_readvariableop_resource:	d?G
4while_lstm_cell_508_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_508_biasadd_readvariableop_resource:	???*while/lstm_cell_508/BiasAdd/ReadVariableOp?)while/lstm_cell_508/MatMul/ReadVariableOp?+while/lstm_cell_508/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_508/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_508_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_508/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_508/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_508/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_508_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_508/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_508/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_508/addAddV2$while/lstm_cell_508/MatMul:product:0&while/lstm_cell_508/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_508/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_508_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_508/BiasAddBiasAddwhile/lstm_cell_508/add:z:02while/lstm_cell_508/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_508/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_508/splitSplit,while/lstm_cell_508/split/split_dim:output:0$while/lstm_cell_508/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_508/SigmoidSigmoid"while/lstm_cell_508/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_508/Sigmoid_1Sigmoid"while/lstm_cell_508/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_508/mulMul!while/lstm_cell_508/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_508/ReluRelu"while/lstm_cell_508/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_508/mul_1Mulwhile/lstm_cell_508/Sigmoid:y:0&while/lstm_cell_508/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_508/add_1AddV2while/lstm_cell_508/mul:z:0while/lstm_cell_508/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_508/Sigmoid_2Sigmoid"while/lstm_cell_508/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_508/Relu_1Reluwhile/lstm_cell_508/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_508/mul_2Mul!while/lstm_cell_508/Sigmoid_2:y:0(while/lstm_cell_508/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_508/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_508/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_508/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_508/BiasAdd/ReadVariableOp*^while/lstm_cell_508/MatMul/ReadVariableOp,^while/lstm_cell_508/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_508_biasadd_readvariableop_resource5while_lstm_cell_508_biasadd_readvariableop_resource_0"n
4while_lstm_cell_508_matmul_1_readvariableop_resource6while_lstm_cell_508_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_508_matmul_readvariableop_resource4while_lstm_cell_508_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_508/BiasAdd/ReadVariableOp*while/lstm_cell_508/BiasAdd/ReadVariableOp2V
)while/lstm_cell_508/MatMul/ReadVariableOp)while/lstm_cell_508/MatMul/ReadVariableOp2Z
+while/lstm_cell_508/MatMul_1/ReadVariableOp+while/lstm_cell_508/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_207_while_cond_3080807.
*lstm_207_while_lstm_207_while_loop_counter4
0lstm_207_while_lstm_207_while_maximum_iterations
lstm_207_while_placeholder 
lstm_207_while_placeholder_1 
lstm_207_while_placeholder_2 
lstm_207_while_placeholder_30
,lstm_207_while_less_lstm_207_strided_slice_1G
Clstm_207_while_lstm_207_while_cond_3080807___redundant_placeholder0G
Clstm_207_while_lstm_207_while_cond_3080807___redundant_placeholder1G
Clstm_207_while_lstm_207_while_cond_3080807___redundant_placeholder2G
Clstm_207_while_lstm_207_while_cond_3080807___redundant_placeholder3
lstm_207_while_identity
?
lstm_207/while/LessLesslstm_207_while_placeholder,lstm_207_while_less_lstm_207_strided_slice_1*
T0*
_output_shapes
: ]
lstm_207/while/IdentityIdentitylstm_207/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_207_while_identity lstm_207/while/Identity:output:0*(
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
J__inference_lstm_cell_509_layer_call_and_return_conditional_losses_3083764

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
?
?
J__inference_sequential_69_layer_call_and_return_conditional_losses_3080630
lstm_207_input#
lstm_207_3080603:	?#
lstm_207_3080605:	d?
lstm_207_3080607:	?#
lstm_208_3080610:	d?#
lstm_208_3080612:	2?
lstm_208_3080614:	?"
lstm_209_3080617:2("
lstm_209_3080619:
(
lstm_209_3080621:("
dense_69_3080624:

dense_69_3080626:
identity?? dense_69/StatefulPartitionedCall? lstm_207/StatefulPartitionedCall? lstm_208/StatefulPartitionedCall? lstm_209/StatefulPartitionedCall?
 lstm_207/StatefulPartitionedCallStatefulPartitionedCalllstm_207_inputlstm_207_3080603lstm_207_3080605lstm_207_3080607*
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
E__inference_lstm_207_layer_call_and_return_conditional_losses_3079634?
 lstm_208/StatefulPartitionedCallStatefulPartitionedCall)lstm_207/StatefulPartitionedCall:output:0lstm_208_3080610lstm_208_3080612lstm_208_3080614*
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
E__inference_lstm_208_layer_call_and_return_conditional_losses_3079784?
 lstm_209/StatefulPartitionedCallStatefulPartitionedCall)lstm_208/StatefulPartitionedCall:output:0lstm_209_3080617lstm_209_3080619lstm_209_3080621*
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
E__inference_lstm_209_layer_call_and_return_conditional_losses_3079934?
 dense_69/StatefulPartitionedCallStatefulPartitionedCall)lstm_209/StatefulPartitionedCall:output:0dense_69_3080624dense_69_3080626*
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
E__inference_dense_69_layer_call_and_return_conditional_losses_3079952x
IdentityIdentity)dense_69/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_69/StatefulPartitionedCall!^lstm_207/StatefulPartitionedCall!^lstm_208/StatefulPartitionedCall!^lstm_209/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2D
 lstm_207/StatefulPartitionedCall lstm_207/StatefulPartitionedCall2D
 lstm_208/StatefulPartitionedCall lstm_208/StatefulPartitionedCall2D
 lstm_209/StatefulPartitionedCall lstm_209/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_207_input
?8
?
while_body_3082465
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_508_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_508_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_508_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_508_matmul_readvariableop_resource:	d?G
4while_lstm_cell_508_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_508_biasadd_readvariableop_resource:	???*while/lstm_cell_508/BiasAdd/ReadVariableOp?)while/lstm_cell_508/MatMul/ReadVariableOp?+while/lstm_cell_508/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_508/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_508_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_508/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_508/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_508/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_508_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_508/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_508/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_508/addAddV2$while/lstm_cell_508/MatMul:product:0&while/lstm_cell_508/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_508/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_508_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_508/BiasAddBiasAddwhile/lstm_cell_508/add:z:02while/lstm_cell_508/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_508/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_508/splitSplit,while/lstm_cell_508/split/split_dim:output:0$while/lstm_cell_508/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_508/SigmoidSigmoid"while/lstm_cell_508/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_508/Sigmoid_1Sigmoid"while/lstm_cell_508/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_508/mulMul!while/lstm_cell_508/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_508/ReluRelu"while/lstm_cell_508/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_508/mul_1Mulwhile/lstm_cell_508/Sigmoid:y:0&while/lstm_cell_508/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_508/add_1AddV2while/lstm_cell_508/mul:z:0while/lstm_cell_508/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_508/Sigmoid_2Sigmoid"while/lstm_cell_508/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_508/Relu_1Reluwhile/lstm_cell_508/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_508/mul_2Mul!while/lstm_cell_508/Sigmoid_2:y:0(while/lstm_cell_508/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_508/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_508/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_508/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_508/BiasAdd/ReadVariableOp*^while/lstm_cell_508/MatMul/ReadVariableOp,^while/lstm_cell_508/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_508_biasadd_readvariableop_resource5while_lstm_cell_508_biasadd_readvariableop_resource_0"n
4while_lstm_cell_508_matmul_1_readvariableop_resource6while_lstm_cell_508_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_508_matmul_readvariableop_resource4while_lstm_cell_508_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_508/BiasAdd/ReadVariableOp*while/lstm_cell_508/BiasAdd/ReadVariableOp2V
)while/lstm_cell_508/MatMul/ReadVariableOp)while/lstm_cell_508/MatMul/ReadVariableOp2Z
+while/lstm_cell_508/MatMul_1/ReadVariableOp+while/lstm_cell_508/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3082608
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_508_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_508_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_508_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_508_matmul_readvariableop_resource:	d?G
4while_lstm_cell_508_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_508_biasadd_readvariableop_resource:	???*while/lstm_cell_508/BiasAdd/ReadVariableOp?)while/lstm_cell_508/MatMul/ReadVariableOp?+while/lstm_cell_508/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_508/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_508_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_508/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_508/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_508/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_508_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_508/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_508/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_508/addAddV2$while/lstm_cell_508/MatMul:product:0&while/lstm_cell_508/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_508/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_508_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_508/BiasAddBiasAddwhile/lstm_cell_508/add:z:02while/lstm_cell_508/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_508/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_508/splitSplit,while/lstm_cell_508/split/split_dim:output:0$while/lstm_cell_508/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_508/SigmoidSigmoid"while/lstm_cell_508/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_508/Sigmoid_1Sigmoid"while/lstm_cell_508/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_508/mulMul!while/lstm_cell_508/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_508/ReluRelu"while/lstm_cell_508/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_508/mul_1Mulwhile/lstm_cell_508/Sigmoid:y:0&while/lstm_cell_508/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_508/add_1AddV2while/lstm_cell_508/mul:z:0while/lstm_cell_508/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_508/Sigmoid_2Sigmoid"while/lstm_cell_508/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_508/Relu_1Reluwhile/lstm_cell_508/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_508/mul_2Mul!while/lstm_cell_508/Sigmoid_2:y:0(while/lstm_cell_508/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_508/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_508/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_508/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_508/BiasAdd/ReadVariableOp*^while/lstm_cell_508/MatMul/ReadVariableOp,^while/lstm_cell_508/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_508_biasadd_readvariableop_resource5while_lstm_cell_508_biasadd_readvariableop_resource_0"n
4while_lstm_cell_508_matmul_1_readvariableop_resource6while_lstm_cell_508_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_508_matmul_readvariableop_resource4while_lstm_cell_508_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_508/BiasAdd/ReadVariableOp*while/lstm_cell_508/BiasAdd/ReadVariableOp2V
)while/lstm_cell_508/MatMul/ReadVariableOp)while/lstm_cell_508/MatMul/ReadVariableOp2Z
+while/lstm_cell_508/MatMul_1/ReadVariableOp+while/lstm_cell_508/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3079406
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3079406___redundant_placeholder05
1while_while_cond_3079406___redundant_placeholder15
1while_while_cond_3079406___redundant_placeholder25
1while_while_cond_3079406___redundant_placeholder3
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
E__inference_lstm_209_layer_call_and_return_conditional_losses_3083022
inputs_0>
,lstm_cell_509_matmul_readvariableop_resource:2(@
.lstm_cell_509_matmul_1_readvariableop_resource:
(;
-lstm_cell_509_biasadd_readvariableop_resource:(
identity??$lstm_cell_509/BiasAdd/ReadVariableOp?#lstm_cell_509/MatMul/ReadVariableOp?%lstm_cell_509/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_509/MatMul/ReadVariableOpReadVariableOp,lstm_cell_509_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_509/MatMulMatMulstrided_slice_2:output:0+lstm_cell_509/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_509/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_509_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_509/MatMul_1MatMulzeros:output:0-lstm_cell_509/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_509/addAddV2lstm_cell_509/MatMul:product:0 lstm_cell_509/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_509/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_509_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_509/BiasAddBiasAddlstm_cell_509/add:z:0,lstm_cell_509/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_509/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_509/splitSplit&lstm_cell_509/split/split_dim:output:0lstm_cell_509/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_509/SigmoidSigmoidlstm_cell_509/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_509/Sigmoid_1Sigmoidlstm_cell_509/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_509/mulMullstm_cell_509/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_509/ReluRelulstm_cell_509/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_509/mul_1Mullstm_cell_509/Sigmoid:y:0 lstm_cell_509/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_509/add_1AddV2lstm_cell_509/mul:z:0lstm_cell_509/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_509/Sigmoid_2Sigmoidlstm_cell_509/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_509/Relu_1Relulstm_cell_509/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_509/mul_2Mullstm_cell_509/Sigmoid_2:y:0"lstm_cell_509/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_509_matmul_readvariableop_resource.lstm_cell_509_matmul_1_readvariableop_resource-lstm_cell_509_biasadd_readvariableop_resource*
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
while_body_3082938*
condR
while_cond_3082937*K
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
NoOpNoOp%^lstm_cell_509/BiasAdd/ReadVariableOp$^lstm_cell_509/MatMul/ReadVariableOp&^lstm_cell_509/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_509/BiasAdd/ReadVariableOp$lstm_cell_509/BiasAdd/ReadVariableOp2J
#lstm_cell_509/MatMul/ReadVariableOp#lstm_cell_509/MatMul/ReadVariableOp2N
%lstm_cell_509/MatMul_1/ReadVariableOp%lstm_cell_509/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_3079699
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3079699___redundant_placeholder05
1while_while_cond_3079699___redundant_placeholder15
1while_while_cond_3079699___redundant_placeholder25
1while_while_cond_3079699___redundant_placeholder3
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
J__inference_sequential_69_layer_call_and_return_conditional_losses_3080548

inputs#
lstm_207_3080521:	?#
lstm_207_3080523:	d?
lstm_207_3080525:	?#
lstm_208_3080528:	d?#
lstm_208_3080530:	2?
lstm_208_3080532:	?"
lstm_209_3080535:2("
lstm_209_3080537:
(
lstm_209_3080539:("
dense_69_3080542:

dense_69_3080544:
identity?? dense_69/StatefulPartitionedCall? lstm_207/StatefulPartitionedCall? lstm_208/StatefulPartitionedCall? lstm_209/StatefulPartitionedCall?
 lstm_207/StatefulPartitionedCallStatefulPartitionedCallinputslstm_207_3080521lstm_207_3080523lstm_207_3080525*
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
E__inference_lstm_207_layer_call_and_return_conditional_losses_3080480?
 lstm_208/StatefulPartitionedCallStatefulPartitionedCall)lstm_207/StatefulPartitionedCall:output:0lstm_208_3080528lstm_208_3080530lstm_208_3080532*
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
E__inference_lstm_208_layer_call_and_return_conditional_losses_3080315?
 lstm_209/StatefulPartitionedCallStatefulPartitionedCall)lstm_208/StatefulPartitionedCall:output:0lstm_209_3080535lstm_209_3080537lstm_209_3080539*
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
E__inference_lstm_209_layer_call_and_return_conditional_losses_3080150?
 dense_69/StatefulPartitionedCallStatefulPartitionedCall)lstm_209/StatefulPartitionedCall:output:0dense_69_3080542dense_69_3080544*
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
E__inference_dense_69_layer_call_and_return_conditional_losses_3079952x
IdentityIdentity)dense_69/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_69/StatefulPartitionedCall!^lstm_207/StatefulPartitionedCall!^lstm_208/StatefulPartitionedCall!^lstm_209/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2D
 lstm_207/StatefulPartitionedCall lstm_207/StatefulPartitionedCall2D
 lstm_208/StatefulPartitionedCall lstm_208/StatefulPartitionedCall2D
 lstm_209/StatefulPartitionedCall lstm_209/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_3078866
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_508_3078890_0:	d?0
while_lstm_cell_508_3078892_0:	2?,
while_lstm_cell_508_3078894_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_508_3078890:	d?.
while_lstm_cell_508_3078892:	2?*
while_lstm_cell_508_3078894:	???+while/lstm_cell_508/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_508/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_508_3078890_0while_lstm_cell_508_3078892_0while_lstm_cell_508_3078894_0*
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
J__inference_lstm_cell_508_layer_call_and_return_conditional_losses_3078852?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_508/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_508/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_508/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_508/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_508_3078890while_lstm_cell_508_3078890_0"<
while_lstm_cell_508_3078892while_lstm_cell_508_3078892_0"<
while_lstm_cell_508_3078894while_lstm_cell_508_3078894_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_508/StatefulPartitionedCall+while/lstm_cell_508/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?
)sequential_69_lstm_209_while_cond_3078344J
Fsequential_69_lstm_209_while_sequential_69_lstm_209_while_loop_counterP
Lsequential_69_lstm_209_while_sequential_69_lstm_209_while_maximum_iterations,
(sequential_69_lstm_209_while_placeholder.
*sequential_69_lstm_209_while_placeholder_1.
*sequential_69_lstm_209_while_placeholder_2.
*sequential_69_lstm_209_while_placeholder_3L
Hsequential_69_lstm_209_while_less_sequential_69_lstm_209_strided_slice_1c
_sequential_69_lstm_209_while_sequential_69_lstm_209_while_cond_3078344___redundant_placeholder0c
_sequential_69_lstm_209_while_sequential_69_lstm_209_while_cond_3078344___redundant_placeholder1c
_sequential_69_lstm_209_while_sequential_69_lstm_209_while_cond_3078344___redundant_placeholder2c
_sequential_69_lstm_209_while_sequential_69_lstm_209_while_cond_3078344___redundant_placeholder3)
%sequential_69_lstm_209_while_identity
?
!sequential_69/lstm_209/while/LessLess(sequential_69_lstm_209_while_placeholderHsequential_69_lstm_209_while_less_sequential_69_lstm_209_strided_slice_1*
T0*
_output_shapes
: y
%sequential_69/lstm_209/while/IdentityIdentity%sequential_69/lstm_209/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_69_lstm_209_while_identity.sequential_69/lstm_209/while/Identity:output:0*(
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
*__inference_lstm_207_layer_call_fn_3081636

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
E__inference_lstm_207_layer_call_and_return_conditional_losses_3079634s
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
E__inference_dense_69_layer_call_and_return_conditional_losses_3079952

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
while_body_3081992
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_507_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_507_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_507_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_507_matmul_readvariableop_resource:	?G
4while_lstm_cell_507_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_507_biasadd_readvariableop_resource:	???*while/lstm_cell_507/BiasAdd/ReadVariableOp?)while/lstm_cell_507/MatMul/ReadVariableOp?+while/lstm_cell_507/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_507/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_507_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_507/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_507/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_507/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_507_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_507/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_507/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_507/addAddV2$while/lstm_cell_507/MatMul:product:0&while/lstm_cell_507/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_507/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_507_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_507/BiasAddBiasAddwhile/lstm_cell_507/add:z:02while/lstm_cell_507/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_507/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_507/splitSplit,while/lstm_cell_507/split/split_dim:output:0$while/lstm_cell_507/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_507/SigmoidSigmoid"while/lstm_cell_507/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_507/Sigmoid_1Sigmoid"while/lstm_cell_507/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_507/mulMul!while/lstm_cell_507/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_507/ReluRelu"while/lstm_cell_507/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_507/mul_1Mulwhile/lstm_cell_507/Sigmoid:y:0&while/lstm_cell_507/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_507/add_1AddV2while/lstm_cell_507/mul:z:0while/lstm_cell_507/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_507/Sigmoid_2Sigmoid"while/lstm_cell_507/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_507/Relu_1Reluwhile/lstm_cell_507/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_507/mul_2Mul!while/lstm_cell_507/Sigmoid_2:y:0(while/lstm_cell_507/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_507/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_507/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_507/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_507/BiasAdd/ReadVariableOp*^while/lstm_cell_507/MatMul/ReadVariableOp,^while/lstm_cell_507/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_507_biasadd_readvariableop_resource5while_lstm_cell_507_biasadd_readvariableop_resource_0"n
4while_lstm_cell_507_matmul_1_readvariableop_resource6while_lstm_cell_507_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_507_matmul_readvariableop_resource4while_lstm_cell_507_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_507/BiasAdd/ReadVariableOp*while/lstm_cell_507/BiasAdd/ReadVariableOp2V
)while/lstm_cell_507/MatMul/ReadVariableOp)while/lstm_cell_507/MatMul/ReadVariableOp2Z
+while/lstm_cell_507/MatMul_1/ReadVariableOp+while/lstm_cell_507/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3082135
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_507_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_507_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_507_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_507_matmul_readvariableop_resource:	?G
4while_lstm_cell_507_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_507_biasadd_readvariableop_resource:	???*while/lstm_cell_507/BiasAdd/ReadVariableOp?)while/lstm_cell_507/MatMul/ReadVariableOp?+while/lstm_cell_507/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_507/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_507_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_507/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_507/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_507/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_507_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_507/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_507/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_507/addAddV2$while/lstm_cell_507/MatMul:product:0&while/lstm_cell_507/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_507/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_507_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_507/BiasAddBiasAddwhile/lstm_cell_507/add:z:02while/lstm_cell_507/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_507/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_507/splitSplit,while/lstm_cell_507/split/split_dim:output:0$while/lstm_cell_507/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_507/SigmoidSigmoid"while/lstm_cell_507/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_507/Sigmoid_1Sigmoid"while/lstm_cell_507/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_507/mulMul!while/lstm_cell_507/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_507/ReluRelu"while/lstm_cell_507/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_507/mul_1Mulwhile/lstm_cell_507/Sigmoid:y:0&while/lstm_cell_507/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_507/add_1AddV2while/lstm_cell_507/mul:z:0while/lstm_cell_507/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_507/Sigmoid_2Sigmoid"while/lstm_cell_507/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_507/Relu_1Reluwhile/lstm_cell_507/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_507/mul_2Mul!while/lstm_cell_507/Sigmoid_2:y:0(while/lstm_cell_507/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_507/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_507/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_507/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_507/BiasAdd/ReadVariableOp*^while/lstm_cell_507/MatMul/ReadVariableOp,^while/lstm_cell_507/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_507_biasadd_readvariableop_resource5while_lstm_cell_507_biasadd_readvariableop_resource_0"n
4while_lstm_cell_507_matmul_1_readvariableop_resource6while_lstm_cell_507_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_507_matmul_readvariableop_resource4while_lstm_cell_507_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_507/BiasAdd/ReadVariableOp*while/lstm_cell_507/BiasAdd/ReadVariableOp2V
)while/lstm_cell_507/MatMul/ReadVariableOp)while/lstm_cell_507/MatMul/ReadVariableOp2Z
+while/lstm_cell_507/MatMul_1/ReadVariableOp+while/lstm_cell_507/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_208_layer_call_and_return_conditional_losses_3082406
inputs_0?
,lstm_cell_508_matmul_readvariableop_resource:	d?A
.lstm_cell_508_matmul_1_readvariableop_resource:	2?<
-lstm_cell_508_biasadd_readvariableop_resource:	?
identity??$lstm_cell_508/BiasAdd/ReadVariableOp?#lstm_cell_508/MatMul/ReadVariableOp?%lstm_cell_508/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_508/MatMul/ReadVariableOpReadVariableOp,lstm_cell_508_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_508/MatMulMatMulstrided_slice_2:output:0+lstm_cell_508/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_508/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_508_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_508/MatMul_1MatMulzeros:output:0-lstm_cell_508/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_508/addAddV2lstm_cell_508/MatMul:product:0 lstm_cell_508/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_508/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_508_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_508/BiasAddBiasAddlstm_cell_508/add:z:0,lstm_cell_508/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_508/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_508/splitSplit&lstm_cell_508/split/split_dim:output:0lstm_cell_508/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_508/SigmoidSigmoidlstm_cell_508/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_508/Sigmoid_1Sigmoidlstm_cell_508/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_508/mulMullstm_cell_508/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_508/ReluRelulstm_cell_508/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_508/mul_1Mullstm_cell_508/Sigmoid:y:0 lstm_cell_508/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_508/add_1AddV2lstm_cell_508/mul:z:0lstm_cell_508/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_508/Sigmoid_2Sigmoidlstm_cell_508/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_508/Relu_1Relulstm_cell_508/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_508/mul_2Mullstm_cell_508/Sigmoid_2:y:0"lstm_cell_508/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_508_matmul_readvariableop_resource.lstm_cell_508_matmul_1_readvariableop_resource-lstm_cell_508_biasadd_readvariableop_resource*
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
while_body_3082322*
condR
while_cond_3082321*K
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
NoOpNoOp%^lstm_cell_508/BiasAdd/ReadVariableOp$^lstm_cell_508/MatMul/ReadVariableOp&^lstm_cell_508/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_508/BiasAdd/ReadVariableOp$lstm_cell_508/BiasAdd/ReadVariableOp2J
#lstm_cell_508/MatMul/ReadVariableOp#lstm_cell_508/MatMul/ReadVariableOp2N
%lstm_cell_508/MatMul_1/ReadVariableOp%lstm_cell_508/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_507_layer_call_fn_3083487

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
J__inference_lstm_cell_507_layer_call_and_return_conditional_losses_3078502o
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
?C
?

lstm_209_while_body_3081513.
*lstm_209_while_lstm_209_while_loop_counter4
0lstm_209_while_lstm_209_while_maximum_iterations
lstm_209_while_placeholder 
lstm_209_while_placeholder_1 
lstm_209_while_placeholder_2 
lstm_209_while_placeholder_3-
)lstm_209_while_lstm_209_strided_slice_1_0i
elstm_209_while_tensorarrayv2read_tensorlistgetitem_lstm_209_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_209_while_lstm_cell_509_matmul_readvariableop_resource_0:2(Q
?lstm_209_while_lstm_cell_509_matmul_1_readvariableop_resource_0:
(L
>lstm_209_while_lstm_cell_509_biasadd_readvariableop_resource_0:(
lstm_209_while_identity
lstm_209_while_identity_1
lstm_209_while_identity_2
lstm_209_while_identity_3
lstm_209_while_identity_4
lstm_209_while_identity_5+
'lstm_209_while_lstm_209_strided_slice_1g
clstm_209_while_tensorarrayv2read_tensorlistgetitem_lstm_209_tensorarrayunstack_tensorlistfromtensorM
;lstm_209_while_lstm_cell_509_matmul_readvariableop_resource:2(O
=lstm_209_while_lstm_cell_509_matmul_1_readvariableop_resource:
(J
<lstm_209_while_lstm_cell_509_biasadd_readvariableop_resource:(??3lstm_209/while/lstm_cell_509/BiasAdd/ReadVariableOp?2lstm_209/while/lstm_cell_509/MatMul/ReadVariableOp?4lstm_209/while/lstm_cell_509/MatMul_1/ReadVariableOp?
@lstm_209/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_209/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_209_while_tensorarrayv2read_tensorlistgetitem_lstm_209_tensorarrayunstack_tensorlistfromtensor_0lstm_209_while_placeholderIlstm_209/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_209/while/lstm_cell_509/MatMul/ReadVariableOpReadVariableOp=lstm_209_while_lstm_cell_509_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_209/while/lstm_cell_509/MatMulMatMul9lstm_209/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_209/while/lstm_cell_509/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_209/while/lstm_cell_509/MatMul_1/ReadVariableOpReadVariableOp?lstm_209_while_lstm_cell_509_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_209/while/lstm_cell_509/MatMul_1MatMullstm_209_while_placeholder_2<lstm_209/while/lstm_cell_509/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_209/while/lstm_cell_509/addAddV2-lstm_209/while/lstm_cell_509/MatMul:product:0/lstm_209/while/lstm_cell_509/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_209/while/lstm_cell_509/BiasAdd/ReadVariableOpReadVariableOp>lstm_209_while_lstm_cell_509_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_209/while/lstm_cell_509/BiasAddBiasAdd$lstm_209/while/lstm_cell_509/add:z:0;lstm_209/while/lstm_cell_509/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_209/while/lstm_cell_509/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_209/while/lstm_cell_509/splitSplit5lstm_209/while/lstm_cell_509/split/split_dim:output:0-lstm_209/while/lstm_cell_509/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_209/while/lstm_cell_509/SigmoidSigmoid+lstm_209/while/lstm_cell_509/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_209/while/lstm_cell_509/Sigmoid_1Sigmoid+lstm_209/while/lstm_cell_509/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_209/while/lstm_cell_509/mulMul*lstm_209/while/lstm_cell_509/Sigmoid_1:y:0lstm_209_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_209/while/lstm_cell_509/ReluRelu+lstm_209/while/lstm_cell_509/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_209/while/lstm_cell_509/mul_1Mul(lstm_209/while/lstm_cell_509/Sigmoid:y:0/lstm_209/while/lstm_cell_509/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_209/while/lstm_cell_509/add_1AddV2$lstm_209/while/lstm_cell_509/mul:z:0&lstm_209/while/lstm_cell_509/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_209/while/lstm_cell_509/Sigmoid_2Sigmoid+lstm_209/while/lstm_cell_509/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_209/while/lstm_cell_509/Relu_1Relu&lstm_209/while/lstm_cell_509/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_209/while/lstm_cell_509/mul_2Mul*lstm_209/while/lstm_cell_509/Sigmoid_2:y:01lstm_209/while/lstm_cell_509/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_209/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_209_while_placeholder_1lstm_209_while_placeholder&lstm_209/while/lstm_cell_509/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_209/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_209/while/addAddV2lstm_209_while_placeholderlstm_209/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_209/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_209/while/add_1AddV2*lstm_209_while_lstm_209_while_loop_counterlstm_209/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_209/while/IdentityIdentitylstm_209/while/add_1:z:0^lstm_209/while/NoOp*
T0*
_output_shapes
: ?
lstm_209/while/Identity_1Identity0lstm_209_while_lstm_209_while_maximum_iterations^lstm_209/while/NoOp*
T0*
_output_shapes
: t
lstm_209/while/Identity_2Identitylstm_209/while/add:z:0^lstm_209/while/NoOp*
T0*
_output_shapes
: ?
lstm_209/while/Identity_3IdentityClstm_209/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_209/while/NoOp*
T0*
_output_shapes
: ?
lstm_209/while/Identity_4Identity&lstm_209/while/lstm_cell_509/mul_2:z:0^lstm_209/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_209/while/Identity_5Identity&lstm_209/while/lstm_cell_509/add_1:z:0^lstm_209/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_209/while/NoOpNoOp4^lstm_209/while/lstm_cell_509/BiasAdd/ReadVariableOp3^lstm_209/while/lstm_cell_509/MatMul/ReadVariableOp5^lstm_209/while/lstm_cell_509/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_209_while_identity lstm_209/while/Identity:output:0"?
lstm_209_while_identity_1"lstm_209/while/Identity_1:output:0"?
lstm_209_while_identity_2"lstm_209/while/Identity_2:output:0"?
lstm_209_while_identity_3"lstm_209/while/Identity_3:output:0"?
lstm_209_while_identity_4"lstm_209/while/Identity_4:output:0"?
lstm_209_while_identity_5"lstm_209/while/Identity_5:output:0"T
'lstm_209_while_lstm_209_strided_slice_1)lstm_209_while_lstm_209_strided_slice_1_0"~
<lstm_209_while_lstm_cell_509_biasadd_readvariableop_resource>lstm_209_while_lstm_cell_509_biasadd_readvariableop_resource_0"?
=lstm_209_while_lstm_cell_509_matmul_1_readvariableop_resource?lstm_209_while_lstm_cell_509_matmul_1_readvariableop_resource_0"|
;lstm_209_while_lstm_cell_509_matmul_readvariableop_resource=lstm_209_while_lstm_cell_509_matmul_readvariableop_resource_0"?
clstm_209_while_tensorarrayv2read_tensorlistgetitem_lstm_209_tensorarrayunstack_tensorlistfromtensorelstm_209_while_tensorarrayv2read_tensorlistgetitem_lstm_209_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_209/while/lstm_cell_509/BiasAdd/ReadVariableOp3lstm_209/while/lstm_cell_509/BiasAdd/ReadVariableOp2h
2lstm_209/while/lstm_cell_509/MatMul/ReadVariableOp2lstm_209/while/lstm_cell_509/MatMul/ReadVariableOp2l
4lstm_209/while/lstm_cell_509/MatMul_1/ReadVariableOp4lstm_209/while/lstm_cell_509/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3083080
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3083080___redundant_placeholder05
1while_while_cond_3083080___redundant_placeholder15
1while_while_cond_3083080___redundant_placeholder25
1while_while_cond_3083080___redundant_placeholder3
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
while_cond_3080395
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3080395___redundant_placeholder05
1while_while_cond_3080395___redundant_placeholder15
1while_while_cond_3080395___redundant_placeholder25
1while_while_cond_3080395___redundant_placeholder3
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

lstm_207_while_body_3080808.
*lstm_207_while_lstm_207_while_loop_counter4
0lstm_207_while_lstm_207_while_maximum_iterations
lstm_207_while_placeholder 
lstm_207_while_placeholder_1 
lstm_207_while_placeholder_2 
lstm_207_while_placeholder_3-
)lstm_207_while_lstm_207_strided_slice_1_0i
elstm_207_while_tensorarrayv2read_tensorlistgetitem_lstm_207_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_207_while_lstm_cell_507_matmul_readvariableop_resource_0:	?R
?lstm_207_while_lstm_cell_507_matmul_1_readvariableop_resource_0:	d?M
>lstm_207_while_lstm_cell_507_biasadd_readvariableop_resource_0:	?
lstm_207_while_identity
lstm_207_while_identity_1
lstm_207_while_identity_2
lstm_207_while_identity_3
lstm_207_while_identity_4
lstm_207_while_identity_5+
'lstm_207_while_lstm_207_strided_slice_1g
clstm_207_while_tensorarrayv2read_tensorlistgetitem_lstm_207_tensorarrayunstack_tensorlistfromtensorN
;lstm_207_while_lstm_cell_507_matmul_readvariableop_resource:	?P
=lstm_207_while_lstm_cell_507_matmul_1_readvariableop_resource:	d?K
<lstm_207_while_lstm_cell_507_biasadd_readvariableop_resource:	???3lstm_207/while/lstm_cell_507/BiasAdd/ReadVariableOp?2lstm_207/while/lstm_cell_507/MatMul/ReadVariableOp?4lstm_207/while/lstm_cell_507/MatMul_1/ReadVariableOp?
@lstm_207/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_207/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_207_while_tensorarrayv2read_tensorlistgetitem_lstm_207_tensorarrayunstack_tensorlistfromtensor_0lstm_207_while_placeholderIlstm_207/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_207/while/lstm_cell_507/MatMul/ReadVariableOpReadVariableOp=lstm_207_while_lstm_cell_507_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_207/while/lstm_cell_507/MatMulMatMul9lstm_207/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_207/while/lstm_cell_507/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_207/while/lstm_cell_507/MatMul_1/ReadVariableOpReadVariableOp?lstm_207_while_lstm_cell_507_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_207/while/lstm_cell_507/MatMul_1MatMullstm_207_while_placeholder_2<lstm_207/while/lstm_cell_507/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_207/while/lstm_cell_507/addAddV2-lstm_207/while/lstm_cell_507/MatMul:product:0/lstm_207/while/lstm_cell_507/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_207/while/lstm_cell_507/BiasAdd/ReadVariableOpReadVariableOp>lstm_207_while_lstm_cell_507_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_207/while/lstm_cell_507/BiasAddBiasAdd$lstm_207/while/lstm_cell_507/add:z:0;lstm_207/while/lstm_cell_507/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_207/while/lstm_cell_507/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_207/while/lstm_cell_507/splitSplit5lstm_207/while/lstm_cell_507/split/split_dim:output:0-lstm_207/while/lstm_cell_507/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_207/while/lstm_cell_507/SigmoidSigmoid+lstm_207/while/lstm_cell_507/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_207/while/lstm_cell_507/Sigmoid_1Sigmoid+lstm_207/while/lstm_cell_507/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_207/while/lstm_cell_507/mulMul*lstm_207/while/lstm_cell_507/Sigmoid_1:y:0lstm_207_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_207/while/lstm_cell_507/ReluRelu+lstm_207/while/lstm_cell_507/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_207/while/lstm_cell_507/mul_1Mul(lstm_207/while/lstm_cell_507/Sigmoid:y:0/lstm_207/while/lstm_cell_507/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_207/while/lstm_cell_507/add_1AddV2$lstm_207/while/lstm_cell_507/mul:z:0&lstm_207/while/lstm_cell_507/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_207/while/lstm_cell_507/Sigmoid_2Sigmoid+lstm_207/while/lstm_cell_507/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_207/while/lstm_cell_507/Relu_1Relu&lstm_207/while/lstm_cell_507/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_207/while/lstm_cell_507/mul_2Mul*lstm_207/while/lstm_cell_507/Sigmoid_2:y:01lstm_207/while/lstm_cell_507/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_207/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_207_while_placeholder_1lstm_207_while_placeholder&lstm_207/while/lstm_cell_507/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_207/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_207/while/addAddV2lstm_207_while_placeholderlstm_207/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_207/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_207/while/add_1AddV2*lstm_207_while_lstm_207_while_loop_counterlstm_207/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_207/while/IdentityIdentitylstm_207/while/add_1:z:0^lstm_207/while/NoOp*
T0*
_output_shapes
: ?
lstm_207/while/Identity_1Identity0lstm_207_while_lstm_207_while_maximum_iterations^lstm_207/while/NoOp*
T0*
_output_shapes
: t
lstm_207/while/Identity_2Identitylstm_207/while/add:z:0^lstm_207/while/NoOp*
T0*
_output_shapes
: ?
lstm_207/while/Identity_3IdentityClstm_207/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_207/while/NoOp*
T0*
_output_shapes
: ?
lstm_207/while/Identity_4Identity&lstm_207/while/lstm_cell_507/mul_2:z:0^lstm_207/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_207/while/Identity_5Identity&lstm_207/while/lstm_cell_507/add_1:z:0^lstm_207/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_207/while/NoOpNoOp4^lstm_207/while/lstm_cell_507/BiasAdd/ReadVariableOp3^lstm_207/while/lstm_cell_507/MatMul/ReadVariableOp5^lstm_207/while/lstm_cell_507/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_207_while_identity lstm_207/while/Identity:output:0"?
lstm_207_while_identity_1"lstm_207/while/Identity_1:output:0"?
lstm_207_while_identity_2"lstm_207/while/Identity_2:output:0"?
lstm_207_while_identity_3"lstm_207/while/Identity_3:output:0"?
lstm_207_while_identity_4"lstm_207/while/Identity_4:output:0"?
lstm_207_while_identity_5"lstm_207/while/Identity_5:output:0"T
'lstm_207_while_lstm_207_strided_slice_1)lstm_207_while_lstm_207_strided_slice_1_0"~
<lstm_207_while_lstm_cell_507_biasadd_readvariableop_resource>lstm_207_while_lstm_cell_507_biasadd_readvariableop_resource_0"?
=lstm_207_while_lstm_cell_507_matmul_1_readvariableop_resource?lstm_207_while_lstm_cell_507_matmul_1_readvariableop_resource_0"|
;lstm_207_while_lstm_cell_507_matmul_readvariableop_resource=lstm_207_while_lstm_cell_507_matmul_readvariableop_resource_0"?
clstm_207_while_tensorarrayv2read_tensorlistgetitem_lstm_207_tensorarrayunstack_tensorlistfromtensorelstm_207_while_tensorarrayv2read_tensorlistgetitem_lstm_207_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_207/while/lstm_cell_507/BiasAdd/ReadVariableOp3lstm_207/while/lstm_cell_507/BiasAdd/ReadVariableOp2h
2lstm_207/while/lstm_cell_507/MatMul/ReadVariableOp2lstm_207/while/lstm_cell_507/MatMul/ReadVariableOp2l
4lstm_207/while/lstm_cell_507/MatMul_1/ReadVariableOp4lstm_207/while/lstm_cell_507/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_507_layer_call_and_return_conditional_losses_3078648

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
E__inference_lstm_208_layer_call_and_return_conditional_losses_3078935

inputs(
lstm_cell_508_3078853:	d?(
lstm_cell_508_3078855:	2?$
lstm_cell_508_3078857:	?
identity??%lstm_cell_508/StatefulPartitionedCall?while;
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
%lstm_cell_508/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_508_3078853lstm_cell_508_3078855lstm_cell_508_3078857*
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
J__inference_lstm_cell_508_layer_call_and_return_conditional_losses_3078852n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_508_3078853lstm_cell_508_3078855lstm_cell_508_3078857*
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
while_body_3078866*
condR
while_cond_3078865*K
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
NoOpNoOp&^lstm_cell_508/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_508/StatefulPartitionedCall%lstm_cell_508/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_209_layer_call_fn_3082868

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
E__inference_lstm_209_layer_call_and_return_conditional_losses_3079934o
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
?W
?
 __inference__traced_save_3083907
file_prefix.
*savev2_dense_69_kernel_read_readvariableop,
(savev2_dense_69_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_207_lstm_cell_207_kernel_read_readvariableopF
Bsavev2_lstm_207_lstm_cell_207_recurrent_kernel_read_readvariableop:
6savev2_lstm_207_lstm_cell_207_bias_read_readvariableop<
8savev2_lstm_208_lstm_cell_208_kernel_read_readvariableopF
Bsavev2_lstm_208_lstm_cell_208_recurrent_kernel_read_readvariableop:
6savev2_lstm_208_lstm_cell_208_bias_read_readvariableop<
8savev2_lstm_209_lstm_cell_209_kernel_read_readvariableopF
Bsavev2_lstm_209_lstm_cell_209_recurrent_kernel_read_readvariableop:
6savev2_lstm_209_lstm_cell_209_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_69_kernel_m_read_readvariableop3
/savev2_adam_dense_69_bias_m_read_readvariableopC
?savev2_adam_lstm_207_lstm_cell_207_kernel_m_read_readvariableopM
Isavev2_adam_lstm_207_lstm_cell_207_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_207_lstm_cell_207_bias_m_read_readvariableopC
?savev2_adam_lstm_208_lstm_cell_208_kernel_m_read_readvariableopM
Isavev2_adam_lstm_208_lstm_cell_208_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_208_lstm_cell_208_bias_m_read_readvariableopC
?savev2_adam_lstm_209_lstm_cell_209_kernel_m_read_readvariableopM
Isavev2_adam_lstm_209_lstm_cell_209_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_209_lstm_cell_209_bias_m_read_readvariableop5
1savev2_adam_dense_69_kernel_v_read_readvariableop3
/savev2_adam_dense_69_bias_v_read_readvariableopC
?savev2_adam_lstm_207_lstm_cell_207_kernel_v_read_readvariableopM
Isavev2_adam_lstm_207_lstm_cell_207_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_207_lstm_cell_207_bias_v_read_readvariableopC
?savev2_adam_lstm_208_lstm_cell_208_kernel_v_read_readvariableopM
Isavev2_adam_lstm_208_lstm_cell_208_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_208_lstm_cell_208_bias_v_read_readvariableopC
?savev2_adam_lstm_209_lstm_cell_209_kernel_v_read_readvariableopM
Isavev2_adam_lstm_209_lstm_cell_209_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_209_lstm_cell_209_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_69_kernel_read_readvariableop(savev2_dense_69_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_207_lstm_cell_207_kernel_read_readvariableopBsavev2_lstm_207_lstm_cell_207_recurrent_kernel_read_readvariableop6savev2_lstm_207_lstm_cell_207_bias_read_readvariableop8savev2_lstm_208_lstm_cell_208_kernel_read_readvariableopBsavev2_lstm_208_lstm_cell_208_recurrent_kernel_read_readvariableop6savev2_lstm_208_lstm_cell_208_bias_read_readvariableop8savev2_lstm_209_lstm_cell_209_kernel_read_readvariableopBsavev2_lstm_209_lstm_cell_209_recurrent_kernel_read_readvariableop6savev2_lstm_209_lstm_cell_209_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_69_kernel_m_read_readvariableop/savev2_adam_dense_69_bias_m_read_readvariableop?savev2_adam_lstm_207_lstm_cell_207_kernel_m_read_readvariableopIsavev2_adam_lstm_207_lstm_cell_207_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_207_lstm_cell_207_bias_m_read_readvariableop?savev2_adam_lstm_208_lstm_cell_208_kernel_m_read_readvariableopIsavev2_adam_lstm_208_lstm_cell_208_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_208_lstm_cell_208_bias_m_read_readvariableop?savev2_adam_lstm_209_lstm_cell_209_kernel_m_read_readvariableopIsavev2_adam_lstm_209_lstm_cell_209_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_209_lstm_cell_209_bias_m_read_readvariableop1savev2_adam_dense_69_kernel_v_read_readvariableop/savev2_adam_dense_69_bias_v_read_readvariableop?savev2_adam_lstm_207_lstm_cell_207_kernel_v_read_readvariableopIsavev2_adam_lstm_207_lstm_cell_207_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_207_lstm_cell_207_bias_v_read_readvariableop?savev2_adam_lstm_208_lstm_cell_208_kernel_v_read_readvariableopIsavev2_adam_lstm_208_lstm_cell_208_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_208_lstm_cell_208_bias_v_read_readvariableop?savev2_adam_lstm_209_lstm_cell_209_kernel_v_read_readvariableopIsavev2_adam_lstm_209_lstm_cell_209_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_209_lstm_cell_209_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
?
J__inference_sequential_69_layer_call_and_return_conditional_losses_3079959

inputs#
lstm_207_3079635:	?#
lstm_207_3079637:	d?
lstm_207_3079639:	?#
lstm_208_3079785:	d?#
lstm_208_3079787:	2?
lstm_208_3079789:	?"
lstm_209_3079935:2("
lstm_209_3079937:
(
lstm_209_3079939:("
dense_69_3079953:

dense_69_3079955:
identity?? dense_69/StatefulPartitionedCall? lstm_207/StatefulPartitionedCall? lstm_208/StatefulPartitionedCall? lstm_209/StatefulPartitionedCall?
 lstm_207/StatefulPartitionedCallStatefulPartitionedCallinputslstm_207_3079635lstm_207_3079637lstm_207_3079639*
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
E__inference_lstm_207_layer_call_and_return_conditional_losses_3079634?
 lstm_208/StatefulPartitionedCallStatefulPartitionedCall)lstm_207/StatefulPartitionedCall:output:0lstm_208_3079785lstm_208_3079787lstm_208_3079789*
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
E__inference_lstm_208_layer_call_and_return_conditional_losses_3079784?
 lstm_209/StatefulPartitionedCallStatefulPartitionedCall)lstm_208/StatefulPartitionedCall:output:0lstm_209_3079935lstm_209_3079937lstm_209_3079939*
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
E__inference_lstm_209_layer_call_and_return_conditional_losses_3079934?
 dense_69/StatefulPartitionedCallStatefulPartitionedCall)lstm_209/StatefulPartitionedCall:output:0dense_69_3079953dense_69_3079955*
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
E__inference_dense_69_layer_call_and_return_conditional_losses_3079952x
IdentityIdentity)dense_69/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_69/StatefulPartitionedCall!^lstm_207/StatefulPartitionedCall!^lstm_208/StatefulPartitionedCall!^lstm_209/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2D
 lstm_207/StatefulPartitionedCall lstm_207/StatefulPartitionedCall2D
 lstm_208/StatefulPartitionedCall lstm_208/StatefulPartitionedCall2D
 lstm_209/StatefulPartitionedCall lstm_209/StatefulPartitionedCall:S O
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
lstm_207_input;
 serving_default_lstm_207_input:0?????????<
dense_690
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
2dense_69/kernel
:2dense_69/bias
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
0:.	?2lstm_207/lstm_cell_207/kernel
::8	d?2'lstm_207/lstm_cell_207/recurrent_kernel
*:(?2lstm_207/lstm_cell_207/bias
0:.	d?2lstm_208/lstm_cell_208/kernel
::8	2?2'lstm_208/lstm_cell_208/recurrent_kernel
*:(?2lstm_208/lstm_cell_208/bias
/:-2(2lstm_209/lstm_cell_209/kernel
9:7
(2'lstm_209/lstm_cell_209/recurrent_kernel
):'(2lstm_209/lstm_cell_209/bias
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
2Adam/dense_69/kernel/m
 :2Adam/dense_69/bias/m
5:3	?2$Adam/lstm_207/lstm_cell_207/kernel/m
?:=	d?2.Adam/lstm_207/lstm_cell_207/recurrent_kernel/m
/:-?2"Adam/lstm_207/lstm_cell_207/bias/m
5:3	d?2$Adam/lstm_208/lstm_cell_208/kernel/m
?:=	2?2.Adam/lstm_208/lstm_cell_208/recurrent_kernel/m
/:-?2"Adam/lstm_208/lstm_cell_208/bias/m
4:22(2$Adam/lstm_209/lstm_cell_209/kernel/m
>:<
(2.Adam/lstm_209/lstm_cell_209/recurrent_kernel/m
.:,(2"Adam/lstm_209/lstm_cell_209/bias/m
&:$
2Adam/dense_69/kernel/v
 :2Adam/dense_69/bias/v
5:3	?2$Adam/lstm_207/lstm_cell_207/kernel/v
?:=	d?2.Adam/lstm_207/lstm_cell_207/recurrent_kernel/v
/:-?2"Adam/lstm_207/lstm_cell_207/bias/v
5:3	d?2$Adam/lstm_208/lstm_cell_208/kernel/v
?:=	2?2.Adam/lstm_208/lstm_cell_208/recurrent_kernel/v
/:-?2"Adam/lstm_208/lstm_cell_208/bias/v
4:22(2$Adam/lstm_209/lstm_cell_209/kernel/v
>:<
(2.Adam/lstm_209/lstm_cell_209/recurrent_kernel/v
.:,(2"Adam/lstm_209/lstm_cell_209/bias/v
?2?
/__inference_sequential_69_layer_call_fn_3079984
/__inference_sequential_69_layer_call_fn_3080722
/__inference_sequential_69_layer_call_fn_3080749
/__inference_sequential_69_layer_call_fn_3080600?
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
J__inference_sequential_69_layer_call_and_return_conditional_losses_3081176
J__inference_sequential_69_layer_call_and_return_conditional_losses_3081603
J__inference_sequential_69_layer_call_and_return_conditional_losses_3080630
J__inference_sequential_69_layer_call_and_return_conditional_losses_3080660?
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
"__inference__wrapped_model_3078435lstm_207_input"?
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
*__inference_lstm_207_layer_call_fn_3081614
*__inference_lstm_207_layer_call_fn_3081625
*__inference_lstm_207_layer_call_fn_3081636
*__inference_lstm_207_layer_call_fn_3081647?
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
E__inference_lstm_207_layer_call_and_return_conditional_losses_3081790
E__inference_lstm_207_layer_call_and_return_conditional_losses_3081933
E__inference_lstm_207_layer_call_and_return_conditional_losses_3082076
E__inference_lstm_207_layer_call_and_return_conditional_losses_3082219?
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
*__inference_lstm_208_layer_call_fn_3082230
*__inference_lstm_208_layer_call_fn_3082241
*__inference_lstm_208_layer_call_fn_3082252
*__inference_lstm_208_layer_call_fn_3082263?
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
E__inference_lstm_208_layer_call_and_return_conditional_losses_3082406
E__inference_lstm_208_layer_call_and_return_conditional_losses_3082549
E__inference_lstm_208_layer_call_and_return_conditional_losses_3082692
E__inference_lstm_208_layer_call_and_return_conditional_losses_3082835?
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
*__inference_lstm_209_layer_call_fn_3082846
*__inference_lstm_209_layer_call_fn_3082857
*__inference_lstm_209_layer_call_fn_3082868
*__inference_lstm_209_layer_call_fn_3082879?
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
E__inference_lstm_209_layer_call_and_return_conditional_losses_3083022
E__inference_lstm_209_layer_call_and_return_conditional_losses_3083165
E__inference_lstm_209_layer_call_and_return_conditional_losses_3083308
E__inference_lstm_209_layer_call_and_return_conditional_losses_3083451?
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
*__inference_dense_69_layer_call_fn_3083460?
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
E__inference_dense_69_layer_call_and_return_conditional_losses_3083470?
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
%__inference_signature_wrapper_3080695lstm_207_input"?
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
/__inference_lstm_cell_507_layer_call_fn_3083487
/__inference_lstm_cell_507_layer_call_fn_3083504?
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
J__inference_lstm_cell_507_layer_call_and_return_conditional_losses_3083536
J__inference_lstm_cell_507_layer_call_and_return_conditional_losses_3083568?
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
/__inference_lstm_cell_508_layer_call_fn_3083585
/__inference_lstm_cell_508_layer_call_fn_3083602?
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
J__inference_lstm_cell_508_layer_call_and_return_conditional_losses_3083634
J__inference_lstm_cell_508_layer_call_and_return_conditional_losses_3083666?
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
/__inference_lstm_cell_509_layer_call_fn_3083683
/__inference_lstm_cell_509_layer_call_fn_3083700?
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
J__inference_lstm_cell_509_layer_call_and_return_conditional_losses_3083732
J__inference_lstm_cell_509_layer_call_and_return_conditional_losses_3083764?
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
"__inference__wrapped_model_3078435-./012345!";?8
1?.
,?)
lstm_207_input?????????
? "3?0
.
dense_69"?
dense_69??????????
E__inference_dense_69_layer_call_and_return_conditional_losses_3083470\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_69_layer_call_fn_3083460O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_207_layer_call_and_return_conditional_losses_3081790?-./O?L
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
E__inference_lstm_207_layer_call_and_return_conditional_losses_3081933?-./O?L
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
E__inference_lstm_207_layer_call_and_return_conditional_losses_3082076q-./??<
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
E__inference_lstm_207_layer_call_and_return_conditional_losses_3082219q-./??<
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
*__inference_lstm_207_layer_call_fn_3081614}-./O?L
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
*__inference_lstm_207_layer_call_fn_3081625}-./O?L
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
*__inference_lstm_207_layer_call_fn_3081636d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_207_layer_call_fn_3081647d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_208_layer_call_and_return_conditional_losses_3082406?012O?L
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
E__inference_lstm_208_layer_call_and_return_conditional_losses_3082549?012O?L
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
E__inference_lstm_208_layer_call_and_return_conditional_losses_3082692q012??<
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
E__inference_lstm_208_layer_call_and_return_conditional_losses_3082835q012??<
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
*__inference_lstm_208_layer_call_fn_3082230}012O?L
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
*__inference_lstm_208_layer_call_fn_3082241}012O?L
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
*__inference_lstm_208_layer_call_fn_3082252d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_208_layer_call_fn_3082263d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_209_layer_call_and_return_conditional_losses_3083022}345O?L
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
E__inference_lstm_209_layer_call_and_return_conditional_losses_3083165}345O?L
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
E__inference_lstm_209_layer_call_and_return_conditional_losses_3083308m345??<
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
E__inference_lstm_209_layer_call_and_return_conditional_losses_3083451m345??<
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
*__inference_lstm_209_layer_call_fn_3082846p345O?L
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
*__inference_lstm_209_layer_call_fn_3082857p345O?L
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
*__inference_lstm_209_layer_call_fn_3082868`345??<
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
*__inference_lstm_209_layer_call_fn_3082879`345??<
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
J__inference_lstm_cell_507_layer_call_and_return_conditional_losses_3083536?-./??}
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
J__inference_lstm_cell_507_layer_call_and_return_conditional_losses_3083568?-./??}
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
/__inference_lstm_cell_507_layer_call_fn_3083487?-./??}
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
/__inference_lstm_cell_507_layer_call_fn_3083504?-./??}
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
J__inference_lstm_cell_508_layer_call_and_return_conditional_losses_3083634?012??}
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
J__inference_lstm_cell_508_layer_call_and_return_conditional_losses_3083666?012??}
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
/__inference_lstm_cell_508_layer_call_fn_3083585?012??}
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
/__inference_lstm_cell_508_layer_call_fn_3083602?012??}
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
J__inference_lstm_cell_509_layer_call_and_return_conditional_losses_3083732?345??}
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
J__inference_lstm_cell_509_layer_call_and_return_conditional_losses_3083764?345??}
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
/__inference_lstm_cell_509_layer_call_fn_3083683?345??}
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
/__inference_lstm_cell_509_layer_call_fn_3083700?345??}
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
J__inference_sequential_69_layer_call_and_return_conditional_losses_3080630y-./012345!"C?@
9?6
,?)
lstm_207_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_69_layer_call_and_return_conditional_losses_3080660y-./012345!"C?@
9?6
,?)
lstm_207_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_69_layer_call_and_return_conditional_losses_3081176q-./012345!";?8
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
J__inference_sequential_69_layer_call_and_return_conditional_losses_3081603q-./012345!";?8
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
/__inference_sequential_69_layer_call_fn_3079984l-./012345!"C?@
9?6
,?)
lstm_207_input?????????
p 

 
? "???????????
/__inference_sequential_69_layer_call_fn_3080600l-./012345!"C?@
9?6
,?)
lstm_207_input?????????
p

 
? "???????????
/__inference_sequential_69_layer_call_fn_3080722d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_69_layer_call_fn_3080749d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3080695?-./012345!"M?J
? 
C?@
>
lstm_207_input,?)
lstm_207_input?????????"3?0
.
dense_69"?
dense_69?????????