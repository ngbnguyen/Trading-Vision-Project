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
dense_40/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_40/kernel
s
#dense_40/kernel/Read/ReadVariableOpReadVariableOpdense_40/kernel*
_output_shapes

:
*
dtype0
r
dense_40/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_40/bias
k
!dense_40/bias/Read/ReadVariableOpReadVariableOpdense_40/bias*
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
lstm_120/lstm_cell_120/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_120/lstm_cell_120/kernel
?
1lstm_120/lstm_cell_120/kernel/Read/ReadVariableOpReadVariableOplstm_120/lstm_cell_120/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_120/lstm_cell_120/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_120/lstm_cell_120/recurrent_kernel
?
;lstm_120/lstm_cell_120/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_120/lstm_cell_120/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_120/lstm_cell_120/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_120/lstm_cell_120/bias
?
/lstm_120/lstm_cell_120/bias/Read/ReadVariableOpReadVariableOplstm_120/lstm_cell_120/bias*
_output_shapes	
:?*
dtype0
?
lstm_121/lstm_cell_121/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_121/lstm_cell_121/kernel
?
1lstm_121/lstm_cell_121/kernel/Read/ReadVariableOpReadVariableOplstm_121/lstm_cell_121/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_121/lstm_cell_121/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_121/lstm_cell_121/recurrent_kernel
?
;lstm_121/lstm_cell_121/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_121/lstm_cell_121/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_121/lstm_cell_121/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_121/lstm_cell_121/bias
?
/lstm_121/lstm_cell_121/bias/Read/ReadVariableOpReadVariableOplstm_121/lstm_cell_121/bias*
_output_shapes	
:?*
dtype0
?
lstm_122/lstm_cell_122/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_122/lstm_cell_122/kernel
?
1lstm_122/lstm_cell_122/kernel/Read/ReadVariableOpReadVariableOplstm_122/lstm_cell_122/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_122/lstm_cell_122/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_122/lstm_cell_122/recurrent_kernel
?
;lstm_122/lstm_cell_122/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_122/lstm_cell_122/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_122/lstm_cell_122/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_122/lstm_cell_122/bias
?
/lstm_122/lstm_cell_122/bias/Read/ReadVariableOpReadVariableOplstm_122/lstm_cell_122/bias*
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
Adam/dense_40/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_40/kernel/m
?
*Adam/dense_40/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_40/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_40/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_40/bias/m
y
(Adam/dense_40/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_40/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_120/lstm_cell_120/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_120/lstm_cell_120/kernel/m
?
8Adam/lstm_120/lstm_cell_120/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_120/lstm_cell_120/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_120/lstm_cell_120/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_120/lstm_cell_120/recurrent_kernel/m
?
BAdam/lstm_120/lstm_cell_120/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_120/lstm_cell_120/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_120/lstm_cell_120/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_120/lstm_cell_120/bias/m
?
6Adam/lstm_120/lstm_cell_120/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_120/lstm_cell_120/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_121/lstm_cell_121/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_121/lstm_cell_121/kernel/m
?
8Adam/lstm_121/lstm_cell_121/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_121/lstm_cell_121/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_121/lstm_cell_121/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_121/lstm_cell_121/recurrent_kernel/m
?
BAdam/lstm_121/lstm_cell_121/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_121/lstm_cell_121/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_121/lstm_cell_121/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_121/lstm_cell_121/bias/m
?
6Adam/lstm_121/lstm_cell_121/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_121/lstm_cell_121/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_122/lstm_cell_122/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_122/lstm_cell_122/kernel/m
?
8Adam/lstm_122/lstm_cell_122/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_122/lstm_cell_122/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_122/lstm_cell_122/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_122/lstm_cell_122/recurrent_kernel/m
?
BAdam/lstm_122/lstm_cell_122/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_122/lstm_cell_122/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_122/lstm_cell_122/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_122/lstm_cell_122/bias/m
?
6Adam/lstm_122/lstm_cell_122/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_122/lstm_cell_122/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_40/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_40/kernel/v
?
*Adam/dense_40/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_40/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_40/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_40/bias/v
y
(Adam/dense_40/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_40/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_120/lstm_cell_120/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_120/lstm_cell_120/kernel/v
?
8Adam/lstm_120/lstm_cell_120/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_120/lstm_cell_120/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_120/lstm_cell_120/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_120/lstm_cell_120/recurrent_kernel/v
?
BAdam/lstm_120/lstm_cell_120/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_120/lstm_cell_120/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_120/lstm_cell_120/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_120/lstm_cell_120/bias/v
?
6Adam/lstm_120/lstm_cell_120/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_120/lstm_cell_120/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_121/lstm_cell_121/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_121/lstm_cell_121/kernel/v
?
8Adam/lstm_121/lstm_cell_121/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_121/lstm_cell_121/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_121/lstm_cell_121/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_121/lstm_cell_121/recurrent_kernel/v
?
BAdam/lstm_121/lstm_cell_121/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_121/lstm_cell_121/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_121/lstm_cell_121/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_121/lstm_cell_121/bias/v
?
6Adam/lstm_121/lstm_cell_121/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_121/lstm_cell_121/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_122/lstm_cell_122/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_122/lstm_cell_122/kernel/v
?
8Adam/lstm_122/lstm_cell_122/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_122/lstm_cell_122/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_122/lstm_cell_122/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_122/lstm_cell_122/recurrent_kernel/v
?
BAdam/lstm_122/lstm_cell_122/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_122/lstm_cell_122/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_122/lstm_cell_122/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_122/lstm_cell_122/bias/v
?
6Adam/lstm_122/lstm_cell_122/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_122/lstm_cell_122/bias/v*
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
VARIABLE_VALUEdense_40/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_40/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_120/lstm_cell_120/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_120/lstm_cell_120/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_120/lstm_cell_120/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_121/lstm_cell_121/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_121/lstm_cell_121/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_121/lstm_cell_121/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_122/lstm_cell_122/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_122/lstm_cell_122/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_122/lstm_cell_122/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_40/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_40/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_120/lstm_cell_120/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_120/lstm_cell_120/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_120/lstm_cell_120/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_121/lstm_cell_121/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_121/lstm_cell_121/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_121/lstm_cell_121/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_122/lstm_cell_122/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_122/lstm_cell_122/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_122/lstm_cell_122/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_40/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_40/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_120/lstm_cell_120/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_120/lstm_cell_120/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_120/lstm_cell_120/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_121/lstm_cell_121/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_121/lstm_cell_121/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_121/lstm_cell_121/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_122/lstm_cell_122/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_122/lstm_cell_122/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_122/lstm_cell_122/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_120_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_120_inputlstm_120/lstm_cell_120/kernel'lstm_120/lstm_cell_120/recurrent_kernellstm_120/lstm_cell_120/biaslstm_121/lstm_cell_121/kernel'lstm_121/lstm_cell_121/recurrent_kernellstm_121/lstm_cell_121/biaslstm_122/lstm_cell_122/kernel'lstm_122/lstm_cell_122/recurrent_kernellstm_122/lstm_cell_122/biasdense_40/kerneldense_40/bias*
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
%__inference_signature_wrapper_2952185
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_40/kernel/Read/ReadVariableOp!dense_40/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_120/lstm_cell_120/kernel/Read/ReadVariableOp;lstm_120/lstm_cell_120/recurrent_kernel/Read/ReadVariableOp/lstm_120/lstm_cell_120/bias/Read/ReadVariableOp1lstm_121/lstm_cell_121/kernel/Read/ReadVariableOp;lstm_121/lstm_cell_121/recurrent_kernel/Read/ReadVariableOp/lstm_121/lstm_cell_121/bias/Read/ReadVariableOp1lstm_122/lstm_cell_122/kernel/Read/ReadVariableOp;lstm_122/lstm_cell_122/recurrent_kernel/Read/ReadVariableOp/lstm_122/lstm_cell_122/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_40/kernel/m/Read/ReadVariableOp(Adam/dense_40/bias/m/Read/ReadVariableOp8Adam/lstm_120/lstm_cell_120/kernel/m/Read/ReadVariableOpBAdam/lstm_120/lstm_cell_120/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_120/lstm_cell_120/bias/m/Read/ReadVariableOp8Adam/lstm_121/lstm_cell_121/kernel/m/Read/ReadVariableOpBAdam/lstm_121/lstm_cell_121/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_121/lstm_cell_121/bias/m/Read/ReadVariableOp8Adam/lstm_122/lstm_cell_122/kernel/m/Read/ReadVariableOpBAdam/lstm_122/lstm_cell_122/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_122/lstm_cell_122/bias/m/Read/ReadVariableOp*Adam/dense_40/kernel/v/Read/ReadVariableOp(Adam/dense_40/bias/v/Read/ReadVariableOp8Adam/lstm_120/lstm_cell_120/kernel/v/Read/ReadVariableOpBAdam/lstm_120/lstm_cell_120/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_120/lstm_cell_120/bias/v/Read/ReadVariableOp8Adam/lstm_121/lstm_cell_121/kernel/v/Read/ReadVariableOpBAdam/lstm_121/lstm_cell_121/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_121/lstm_cell_121/bias/v/Read/ReadVariableOp8Adam/lstm_122/lstm_cell_122/kernel/v/Read/ReadVariableOpBAdam/lstm_122/lstm_cell_122/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_122/lstm_cell_122/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2955397
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_40/kerneldense_40/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_120/lstm_cell_120/kernel'lstm_120/lstm_cell_120/recurrent_kernellstm_120/lstm_cell_120/biaslstm_121/lstm_cell_121/kernel'lstm_121/lstm_cell_121/recurrent_kernellstm_121/lstm_cell_121/biaslstm_122/lstm_cell_122/kernel'lstm_122/lstm_cell_122/recurrent_kernellstm_122/lstm_cell_122/biastotalcountAdam/dense_40/kernel/mAdam/dense_40/bias/m$Adam/lstm_120/lstm_cell_120/kernel/m.Adam/lstm_120/lstm_cell_120/recurrent_kernel/m"Adam/lstm_120/lstm_cell_120/bias/m$Adam/lstm_121/lstm_cell_121/kernel/m.Adam/lstm_121/lstm_cell_121/recurrent_kernel/m"Adam/lstm_121/lstm_cell_121/bias/m$Adam/lstm_122/lstm_cell_122/kernel/m.Adam/lstm_122/lstm_cell_122/recurrent_kernel/m"Adam/lstm_122/lstm_cell_122/bias/mAdam/dense_40/kernel/vAdam/dense_40/bias/v$Adam/lstm_120/lstm_cell_120/kernel/v.Adam/lstm_120/lstm_cell_120/recurrent_kernel/v"Adam/lstm_120/lstm_cell_120/bias/v$Adam/lstm_121/lstm_cell_121/kernel/v.Adam/lstm_121/lstm_cell_121/recurrent_kernel/v"Adam/lstm_121/lstm_cell_121/bias/v$Adam/lstm_122/lstm_cell_122/kernel/v.Adam/lstm_122/lstm_cell_122/recurrent_kernel/v"Adam/lstm_122/lstm_cell_122/bias/v*4
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
#__inference__traced_restore_2955527??+
?J
?
E__inference_lstm_120_layer_call_and_return_conditional_losses_2951124

inputs?
,lstm_cell_486_matmul_readvariableop_resource:	?A
.lstm_cell_486_matmul_1_readvariableop_resource:	d?<
-lstm_cell_486_biasadd_readvariableop_resource:	?
identity??$lstm_cell_486/BiasAdd/ReadVariableOp?#lstm_cell_486/MatMul/ReadVariableOp?%lstm_cell_486/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_486/MatMul/ReadVariableOpReadVariableOp,lstm_cell_486_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_486/MatMulMatMulstrided_slice_2:output:0+lstm_cell_486/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_486/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_486_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_486/MatMul_1MatMulzeros:output:0-lstm_cell_486/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_486/addAddV2lstm_cell_486/MatMul:product:0 lstm_cell_486/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_486/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_486_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_486/BiasAddBiasAddlstm_cell_486/add:z:0,lstm_cell_486/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_486/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_486/splitSplit&lstm_cell_486/split/split_dim:output:0lstm_cell_486/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_486/SigmoidSigmoidlstm_cell_486/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_486/Sigmoid_1Sigmoidlstm_cell_486/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_486/mulMullstm_cell_486/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_486/ReluRelulstm_cell_486/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_486/mul_1Mullstm_cell_486/Sigmoid:y:0 lstm_cell_486/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_486/add_1AddV2lstm_cell_486/mul:z:0lstm_cell_486/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_486/Sigmoid_2Sigmoidlstm_cell_486/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_486/Relu_1Relulstm_cell_486/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_486/mul_2Mullstm_cell_486/Sigmoid_2:y:0"lstm_cell_486/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_486_matmul_readvariableop_resource.lstm_cell_486_matmul_1_readvariableop_resource-lstm_cell_486_biasadd_readvariableop_resource*
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
while_body_2951040*
condR
while_cond_2951039*K
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
NoOpNoOp%^lstm_cell_486/BiasAdd/ReadVariableOp$^lstm_cell_486/MatMul/ReadVariableOp&^lstm_cell_486/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_486/BiasAdd/ReadVariableOp$lstm_cell_486/BiasAdd/ReadVariableOp2J
#lstm_cell_486/MatMul/ReadVariableOp#lstm_cell_486/MatMul/ReadVariableOp2N
%lstm_cell_486/MatMul_1/ReadVariableOp%lstm_cell_486/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2953955
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_487_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_487_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_487_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_487_matmul_readvariableop_resource:	d?G
4while_lstm_cell_487_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_487_biasadd_readvariableop_resource:	???*while/lstm_cell_487/BiasAdd/ReadVariableOp?)while/lstm_cell_487/MatMul/ReadVariableOp?+while/lstm_cell_487/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_487/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_487_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_487/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_487/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_487/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_487_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_487/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_487/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_487/addAddV2$while/lstm_cell_487/MatMul:product:0&while/lstm_cell_487/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_487/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_487_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_487/BiasAddBiasAddwhile/lstm_cell_487/add:z:02while/lstm_cell_487/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_487/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_487/splitSplit,while/lstm_cell_487/split/split_dim:output:0$while/lstm_cell_487/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_487/SigmoidSigmoid"while/lstm_cell_487/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_487/Sigmoid_1Sigmoid"while/lstm_cell_487/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_487/mulMul!while/lstm_cell_487/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_487/ReluRelu"while/lstm_cell_487/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_487/mul_1Mulwhile/lstm_cell_487/Sigmoid:y:0&while/lstm_cell_487/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_487/add_1AddV2while/lstm_cell_487/mul:z:0while/lstm_cell_487/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_487/Sigmoid_2Sigmoid"while/lstm_cell_487/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_487/Relu_1Reluwhile/lstm_cell_487/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_487/mul_2Mul!while/lstm_cell_487/Sigmoid_2:y:0(while/lstm_cell_487/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_487/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_487/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_487/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_487/BiasAdd/ReadVariableOp*^while/lstm_cell_487/MatMul/ReadVariableOp,^while/lstm_cell_487/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_487_biasadd_readvariableop_resource5while_lstm_cell_487_biasadd_readvariableop_resource_0"n
4while_lstm_cell_487_matmul_1_readvariableop_resource6while_lstm_cell_487_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_487_matmul_readvariableop_resource4while_lstm_cell_487_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_487/BiasAdd/ReadVariableOp*while/lstm_cell_487/BiasAdd/ReadVariableOp2V
)while/lstm_cell_487/MatMul/ReadVariableOp)while/lstm_cell_487/MatMul/ReadVariableOp2Z
+while/lstm_cell_487/MatMul_1/ReadVariableOp+while/lstm_cell_487/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2950706
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_488_2950730_0:2(/
while_lstm_cell_488_2950732_0:
(+
while_lstm_cell_488_2950734_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_488_2950730:2(-
while_lstm_cell_488_2950732:
()
while_lstm_cell_488_2950734:(??+while/lstm_cell_488/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_488/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_488_2950730_0while_lstm_cell_488_2950732_0while_lstm_cell_488_2950734_0*
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
J__inference_lstm_cell_488_layer_call_and_return_conditional_losses_2950692?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_488/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_488/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_488/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_488/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_488_2950730while_lstm_cell_488_2950730_0"<
while_lstm_cell_488_2950732while_lstm_cell_488_2950732_0"<
while_lstm_cell_488_2950734while_lstm_cell_488_2950734_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_488/StatefulPartitionedCall+while/lstm_cell_488/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_121_layer_call_and_return_conditional_losses_2950425

inputs(
lstm_cell_487_2950343:	d?(
lstm_cell_487_2950345:	2?$
lstm_cell_487_2950347:	?
identity??%lstm_cell_487/StatefulPartitionedCall?while;
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
%lstm_cell_487/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_487_2950343lstm_cell_487_2950345lstm_cell_487_2950347*
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
J__inference_lstm_cell_487_layer_call_and_return_conditional_losses_2950342n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_487_2950343lstm_cell_487_2950345lstm_cell_487_2950347*
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
while_body_2950356*
condR
while_cond_2950355*K
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
NoOpNoOp&^lstm_cell_487/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_487/StatefulPartitionedCall%lstm_cell_487/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_487_layer_call_and_return_conditional_losses_2950342

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
E__inference_lstm_121_layer_call_and_return_conditional_losses_2954325

inputs?
,lstm_cell_487_matmul_readvariableop_resource:	d?A
.lstm_cell_487_matmul_1_readvariableop_resource:	2?<
-lstm_cell_487_biasadd_readvariableop_resource:	?
identity??$lstm_cell_487/BiasAdd/ReadVariableOp?#lstm_cell_487/MatMul/ReadVariableOp?%lstm_cell_487/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_487/MatMul/ReadVariableOpReadVariableOp,lstm_cell_487_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_487/MatMulMatMulstrided_slice_2:output:0+lstm_cell_487/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_487/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_487_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_487/MatMul_1MatMulzeros:output:0-lstm_cell_487/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_487/addAddV2lstm_cell_487/MatMul:product:0 lstm_cell_487/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_487/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_487_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_487/BiasAddBiasAddlstm_cell_487/add:z:0,lstm_cell_487/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_487/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_487/splitSplit&lstm_cell_487/split/split_dim:output:0lstm_cell_487/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_487/SigmoidSigmoidlstm_cell_487/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_487/Sigmoid_1Sigmoidlstm_cell_487/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_487/mulMullstm_cell_487/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_487/ReluRelulstm_cell_487/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_487/mul_1Mullstm_cell_487/Sigmoid:y:0 lstm_cell_487/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_487/add_1AddV2lstm_cell_487/mul:z:0lstm_cell_487/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_487/Sigmoid_2Sigmoidlstm_cell_487/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_487/Relu_1Relulstm_cell_487/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_487/mul_2Mullstm_cell_487/Sigmoid_2:y:0"lstm_cell_487/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_487_matmul_readvariableop_resource.lstm_cell_487_matmul_1_readvariableop_resource-lstm_cell_487_biasadd_readvariableop_resource*
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
while_body_2954241*
condR
while_cond_2954240*K
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
NoOpNoOp%^lstm_cell_487/BiasAdd/ReadVariableOp$^lstm_cell_487/MatMul/ReadVariableOp&^lstm_cell_487/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_487/BiasAdd/ReadVariableOp$lstm_cell_487/BiasAdd/ReadVariableOp2J
#lstm_cell_487/MatMul/ReadVariableOp#lstm_cell_487/MatMul/ReadVariableOp2N
%lstm_cell_487/MatMul_1/ReadVariableOp%lstm_cell_487/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_120_while_cond_2952724.
*lstm_120_while_lstm_120_while_loop_counter4
0lstm_120_while_lstm_120_while_maximum_iterations
lstm_120_while_placeholder 
lstm_120_while_placeholder_1 
lstm_120_while_placeholder_2 
lstm_120_while_placeholder_30
,lstm_120_while_less_lstm_120_strided_slice_1G
Clstm_120_while_lstm_120_while_cond_2952724___redundant_placeholder0G
Clstm_120_while_lstm_120_while_cond_2952724___redundant_placeholder1G
Clstm_120_while_lstm_120_while_cond_2952724___redundant_placeholder2G
Clstm_120_while_lstm_120_while_cond_2952724___redundant_placeholder3
lstm_120_while_identity
?
lstm_120/while/LessLesslstm_120_while_placeholder,lstm_120_while_less_lstm_120_strided_slice_1*
T0*
_output_shapes
: ]
lstm_120/while/IdentityIdentitylstm_120/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_120_while_identity lstm_120/while/Identity:output:0*(
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
while_body_2953339
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_486_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_486_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_486_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_486_matmul_readvariableop_resource:	?G
4while_lstm_cell_486_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_486_biasadd_readvariableop_resource:	???*while/lstm_cell_486/BiasAdd/ReadVariableOp?)while/lstm_cell_486/MatMul/ReadVariableOp?+while/lstm_cell_486/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_486/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_486_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_486/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_486/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_486/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_486_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_486/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_486/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_486/addAddV2$while/lstm_cell_486/MatMul:product:0&while/lstm_cell_486/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_486/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_486_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_486/BiasAddBiasAddwhile/lstm_cell_486/add:z:02while/lstm_cell_486/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_486/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_486/splitSplit,while/lstm_cell_486/split/split_dim:output:0$while/lstm_cell_486/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_486/SigmoidSigmoid"while/lstm_cell_486/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_486/Sigmoid_1Sigmoid"while/lstm_cell_486/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_486/mulMul!while/lstm_cell_486/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_486/ReluRelu"while/lstm_cell_486/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_486/mul_1Mulwhile/lstm_cell_486/Sigmoid:y:0&while/lstm_cell_486/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_486/add_1AddV2while/lstm_cell_486/mul:z:0while/lstm_cell_486/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_486/Sigmoid_2Sigmoid"while/lstm_cell_486/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_486/Relu_1Reluwhile/lstm_cell_486/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_486/mul_2Mul!while/lstm_cell_486/Sigmoid_2:y:0(while/lstm_cell_486/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_486/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_486/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_486/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_486/BiasAdd/ReadVariableOp*^while/lstm_cell_486/MatMul/ReadVariableOp,^while/lstm_cell_486/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_486_biasadd_readvariableop_resource5while_lstm_cell_486_biasadd_readvariableop_resource_0"n
4while_lstm_cell_486_matmul_1_readvariableop_resource6while_lstm_cell_486_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_486_matmul_readvariableop_resource4while_lstm_cell_486_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_486/BiasAdd/ReadVariableOp*while/lstm_cell_486/BiasAdd/ReadVariableOp2V
)while/lstm_cell_486/MatMul/ReadVariableOp)while/lstm_cell_486/MatMul/ReadVariableOp2Z
+while/lstm_cell_486/MatMul_1/ReadVariableOp+while/lstm_cell_486/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_122_layer_call_and_return_conditional_losses_2954512
inputs_0>
,lstm_cell_488_matmul_readvariableop_resource:2(@
.lstm_cell_488_matmul_1_readvariableop_resource:
(;
-lstm_cell_488_biasadd_readvariableop_resource:(
identity??$lstm_cell_488/BiasAdd/ReadVariableOp?#lstm_cell_488/MatMul/ReadVariableOp?%lstm_cell_488/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_488/MatMul/ReadVariableOpReadVariableOp,lstm_cell_488_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_488/MatMulMatMulstrided_slice_2:output:0+lstm_cell_488/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_488/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_488_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_488/MatMul_1MatMulzeros:output:0-lstm_cell_488/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_488/addAddV2lstm_cell_488/MatMul:product:0 lstm_cell_488/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_488/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_488_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_488/BiasAddBiasAddlstm_cell_488/add:z:0,lstm_cell_488/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_488/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_488/splitSplit&lstm_cell_488/split/split_dim:output:0lstm_cell_488/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_488/SigmoidSigmoidlstm_cell_488/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_488/Sigmoid_1Sigmoidlstm_cell_488/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_488/mulMullstm_cell_488/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_488/ReluRelulstm_cell_488/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_488/mul_1Mullstm_cell_488/Sigmoid:y:0 lstm_cell_488/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_488/add_1AddV2lstm_cell_488/mul:z:0lstm_cell_488/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_488/Sigmoid_2Sigmoidlstm_cell_488/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_488/Relu_1Relulstm_cell_488/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_488/mul_2Mullstm_cell_488/Sigmoid_2:y:0"lstm_cell_488/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_488_matmul_readvariableop_resource.lstm_cell_488_matmul_1_readvariableop_resource-lstm_cell_488_biasadd_readvariableop_resource*
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
while_body_2954428*
condR
while_cond_2954427*K
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
NoOpNoOp%^lstm_cell_488/BiasAdd/ReadVariableOp$^lstm_cell_488/MatMul/ReadVariableOp&^lstm_cell_488/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_488/BiasAdd/ReadVariableOp$lstm_cell_488/BiasAdd/ReadVariableOp2J
#lstm_cell_488/MatMul/ReadVariableOp#lstm_cell_488/MatMul/ReadVariableOp2N
%lstm_cell_488/MatMul_1/ReadVariableOp%lstm_cell_488/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_486_layer_call_fn_2954994

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
J__inference_lstm_cell_486_layer_call_and_return_conditional_losses_2950138o
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
?
?
*__inference_dense_40_layer_call_fn_2954950

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
E__inference_dense_40_layer_call_and_return_conditional_losses_2951442o
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
?
?
J__inference_lstm_cell_487_layer_call_and_return_conditional_losses_2955124

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
lstm_122_while_cond_2953002.
*lstm_122_while_lstm_122_while_loop_counter4
0lstm_122_while_lstm_122_while_maximum_iterations
lstm_122_while_placeholder 
lstm_122_while_placeholder_1 
lstm_122_while_placeholder_2 
lstm_122_while_placeholder_30
,lstm_122_while_less_lstm_122_strided_slice_1G
Clstm_122_while_lstm_122_while_cond_2953002___redundant_placeholder0G
Clstm_122_while_lstm_122_while_cond_2953002___redundant_placeholder1G
Clstm_122_while_lstm_122_while_cond_2953002___redundant_placeholder2G
Clstm_122_while_lstm_122_while_cond_2953002___redundant_placeholder3
lstm_122_while_identity
?
lstm_122/while/LessLesslstm_122_while_placeholder,lstm_122_while_less_lstm_122_strided_slice_1*
T0*
_output_shapes
: ]
lstm_122/while/IdentityIdentitylstm_122/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_122_while_identity lstm_122/while/Identity:output:0*(
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
*__inference_lstm_120_layer_call_fn_2953104
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
E__inference_lstm_120_layer_call_and_return_conditional_losses_2950075|
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
)sequential_40_lstm_121_while_cond_2949695J
Fsequential_40_lstm_121_while_sequential_40_lstm_121_while_loop_counterP
Lsequential_40_lstm_121_while_sequential_40_lstm_121_while_maximum_iterations,
(sequential_40_lstm_121_while_placeholder.
*sequential_40_lstm_121_while_placeholder_1.
*sequential_40_lstm_121_while_placeholder_2.
*sequential_40_lstm_121_while_placeholder_3L
Hsequential_40_lstm_121_while_less_sequential_40_lstm_121_strided_slice_1c
_sequential_40_lstm_121_while_sequential_40_lstm_121_while_cond_2949695___redundant_placeholder0c
_sequential_40_lstm_121_while_sequential_40_lstm_121_while_cond_2949695___redundant_placeholder1c
_sequential_40_lstm_121_while_sequential_40_lstm_121_while_cond_2949695___redundant_placeholder2c
_sequential_40_lstm_121_while_sequential_40_lstm_121_while_cond_2949695___redundant_placeholder3)
%sequential_40_lstm_121_while_identity
?
!sequential_40/lstm_121/while/LessLess(sequential_40_lstm_121_while_placeholderHsequential_40_lstm_121_while_less_sequential_40_lstm_121_strided_slice_1*
T0*
_output_shapes
: y
%sequential_40/lstm_121/while/IdentityIdentity%sequential_40/lstm_121/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_40_lstm_121_while_identity.sequential_40/lstm_121/while/Identity:output:0*(
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
while_body_2951340
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_488_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_488_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_488_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_488_matmul_readvariableop_resource:2(F
4while_lstm_cell_488_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_488_biasadd_readvariableop_resource:(??*while/lstm_cell_488/BiasAdd/ReadVariableOp?)while/lstm_cell_488/MatMul/ReadVariableOp?+while/lstm_cell_488/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_488/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_488_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_488/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_488/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_488/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_488_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_488/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_488/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_488/addAddV2$while/lstm_cell_488/MatMul:product:0&while/lstm_cell_488/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_488/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_488_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_488/BiasAddBiasAddwhile/lstm_cell_488/add:z:02while/lstm_cell_488/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_488/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_488/splitSplit,while/lstm_cell_488/split/split_dim:output:0$while/lstm_cell_488/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_488/SigmoidSigmoid"while/lstm_cell_488/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_488/Sigmoid_1Sigmoid"while/lstm_cell_488/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_488/mulMul!while/lstm_cell_488/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_488/ReluRelu"while/lstm_cell_488/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_488/mul_1Mulwhile/lstm_cell_488/Sigmoid:y:0&while/lstm_cell_488/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_488/add_1AddV2while/lstm_cell_488/mul:z:0while/lstm_cell_488/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_488/Sigmoid_2Sigmoid"while/lstm_cell_488/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_488/Relu_1Reluwhile/lstm_cell_488/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_488/mul_2Mul!while/lstm_cell_488/Sigmoid_2:y:0(while/lstm_cell_488/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_488/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_488/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_488/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_488/BiasAdd/ReadVariableOp*^while/lstm_cell_488/MatMul/ReadVariableOp,^while/lstm_cell_488/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_488_biasadd_readvariableop_resource5while_lstm_cell_488_biasadd_readvariableop_resource_0"n
4while_lstm_cell_488_matmul_1_readvariableop_resource6while_lstm_cell_488_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_488_matmul_readvariableop_resource4while_lstm_cell_488_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_488/BiasAdd/ReadVariableOp*while/lstm_cell_488/BiasAdd/ReadVariableOp2V
)while/lstm_cell_488/MatMul/ReadVariableOp)while/lstm_cell_488/MatMul/ReadVariableOp2Z
+while/lstm_cell_488/MatMul_1/ReadVariableOp+while/lstm_cell_488/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_40_lstm_120_while_body_2949557J
Fsequential_40_lstm_120_while_sequential_40_lstm_120_while_loop_counterP
Lsequential_40_lstm_120_while_sequential_40_lstm_120_while_maximum_iterations,
(sequential_40_lstm_120_while_placeholder.
*sequential_40_lstm_120_while_placeholder_1.
*sequential_40_lstm_120_while_placeholder_2.
*sequential_40_lstm_120_while_placeholder_3I
Esequential_40_lstm_120_while_sequential_40_lstm_120_strided_slice_1_0?
?sequential_40_lstm_120_while_tensorarrayv2read_tensorlistgetitem_sequential_40_lstm_120_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_40_lstm_120_while_lstm_cell_486_matmul_readvariableop_resource_0:	?`
Msequential_40_lstm_120_while_lstm_cell_486_matmul_1_readvariableop_resource_0:	d?[
Lsequential_40_lstm_120_while_lstm_cell_486_biasadd_readvariableop_resource_0:	?)
%sequential_40_lstm_120_while_identity+
'sequential_40_lstm_120_while_identity_1+
'sequential_40_lstm_120_while_identity_2+
'sequential_40_lstm_120_while_identity_3+
'sequential_40_lstm_120_while_identity_4+
'sequential_40_lstm_120_while_identity_5G
Csequential_40_lstm_120_while_sequential_40_lstm_120_strided_slice_1?
sequential_40_lstm_120_while_tensorarrayv2read_tensorlistgetitem_sequential_40_lstm_120_tensorarrayunstack_tensorlistfromtensor\
Isequential_40_lstm_120_while_lstm_cell_486_matmul_readvariableop_resource:	?^
Ksequential_40_lstm_120_while_lstm_cell_486_matmul_1_readvariableop_resource:	d?Y
Jsequential_40_lstm_120_while_lstm_cell_486_biasadd_readvariableop_resource:	???Asequential_40/lstm_120/while/lstm_cell_486/BiasAdd/ReadVariableOp?@sequential_40/lstm_120/while/lstm_cell_486/MatMul/ReadVariableOp?Bsequential_40/lstm_120/while/lstm_cell_486/MatMul_1/ReadVariableOp?
Nsequential_40/lstm_120/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_40/lstm_120/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_40_lstm_120_while_tensorarrayv2read_tensorlistgetitem_sequential_40_lstm_120_tensorarrayunstack_tensorlistfromtensor_0(sequential_40_lstm_120_while_placeholderWsequential_40/lstm_120/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_40/lstm_120/while/lstm_cell_486/MatMul/ReadVariableOpReadVariableOpKsequential_40_lstm_120_while_lstm_cell_486_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_40/lstm_120/while/lstm_cell_486/MatMulMatMulGsequential_40/lstm_120/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_40/lstm_120/while/lstm_cell_486/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_40/lstm_120/while/lstm_cell_486/MatMul_1/ReadVariableOpReadVariableOpMsequential_40_lstm_120_while_lstm_cell_486_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_40/lstm_120/while/lstm_cell_486/MatMul_1MatMul*sequential_40_lstm_120_while_placeholder_2Jsequential_40/lstm_120/while/lstm_cell_486/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_40/lstm_120/while/lstm_cell_486/addAddV2;sequential_40/lstm_120/while/lstm_cell_486/MatMul:product:0=sequential_40/lstm_120/while/lstm_cell_486/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_40/lstm_120/while/lstm_cell_486/BiasAdd/ReadVariableOpReadVariableOpLsequential_40_lstm_120_while_lstm_cell_486_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_40/lstm_120/while/lstm_cell_486/BiasAddBiasAdd2sequential_40/lstm_120/while/lstm_cell_486/add:z:0Isequential_40/lstm_120/while/lstm_cell_486/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_40/lstm_120/while/lstm_cell_486/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_40/lstm_120/while/lstm_cell_486/splitSplitCsequential_40/lstm_120/while/lstm_cell_486/split/split_dim:output:0;sequential_40/lstm_120/while/lstm_cell_486/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_40/lstm_120/while/lstm_cell_486/SigmoidSigmoid9sequential_40/lstm_120/while/lstm_cell_486/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_40/lstm_120/while/lstm_cell_486/Sigmoid_1Sigmoid9sequential_40/lstm_120/while/lstm_cell_486/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_40/lstm_120/while/lstm_cell_486/mulMul8sequential_40/lstm_120/while/lstm_cell_486/Sigmoid_1:y:0*sequential_40_lstm_120_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_40/lstm_120/while/lstm_cell_486/ReluRelu9sequential_40/lstm_120/while/lstm_cell_486/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_40/lstm_120/while/lstm_cell_486/mul_1Mul6sequential_40/lstm_120/while/lstm_cell_486/Sigmoid:y:0=sequential_40/lstm_120/while/lstm_cell_486/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_40/lstm_120/while/lstm_cell_486/add_1AddV22sequential_40/lstm_120/while/lstm_cell_486/mul:z:04sequential_40/lstm_120/while/lstm_cell_486/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_40/lstm_120/while/lstm_cell_486/Sigmoid_2Sigmoid9sequential_40/lstm_120/while/lstm_cell_486/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_40/lstm_120/while/lstm_cell_486/Relu_1Relu4sequential_40/lstm_120/while/lstm_cell_486/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_40/lstm_120/while/lstm_cell_486/mul_2Mul8sequential_40/lstm_120/while/lstm_cell_486/Sigmoid_2:y:0?sequential_40/lstm_120/while/lstm_cell_486/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_40/lstm_120/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_40_lstm_120_while_placeholder_1(sequential_40_lstm_120_while_placeholder4sequential_40/lstm_120/while/lstm_cell_486/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_40/lstm_120/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_40/lstm_120/while/addAddV2(sequential_40_lstm_120_while_placeholder+sequential_40/lstm_120/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_40/lstm_120/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_40/lstm_120/while/add_1AddV2Fsequential_40_lstm_120_while_sequential_40_lstm_120_while_loop_counter-sequential_40/lstm_120/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_40/lstm_120/while/IdentityIdentity&sequential_40/lstm_120/while/add_1:z:0"^sequential_40/lstm_120/while/NoOp*
T0*
_output_shapes
: ?
'sequential_40/lstm_120/while/Identity_1IdentityLsequential_40_lstm_120_while_sequential_40_lstm_120_while_maximum_iterations"^sequential_40/lstm_120/while/NoOp*
T0*
_output_shapes
: ?
'sequential_40/lstm_120/while/Identity_2Identity$sequential_40/lstm_120/while/add:z:0"^sequential_40/lstm_120/while/NoOp*
T0*
_output_shapes
: ?
'sequential_40/lstm_120/while/Identity_3IdentityQsequential_40/lstm_120/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_40/lstm_120/while/NoOp*
T0*
_output_shapes
: ?
'sequential_40/lstm_120/while/Identity_4Identity4sequential_40/lstm_120/while/lstm_cell_486/mul_2:z:0"^sequential_40/lstm_120/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_40/lstm_120/while/Identity_5Identity4sequential_40/lstm_120/while/lstm_cell_486/add_1:z:0"^sequential_40/lstm_120/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_40/lstm_120/while/NoOpNoOpB^sequential_40/lstm_120/while/lstm_cell_486/BiasAdd/ReadVariableOpA^sequential_40/lstm_120/while/lstm_cell_486/MatMul/ReadVariableOpC^sequential_40/lstm_120/while/lstm_cell_486/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_40_lstm_120_while_identity.sequential_40/lstm_120/while/Identity:output:0"[
'sequential_40_lstm_120_while_identity_10sequential_40/lstm_120/while/Identity_1:output:0"[
'sequential_40_lstm_120_while_identity_20sequential_40/lstm_120/while/Identity_2:output:0"[
'sequential_40_lstm_120_while_identity_30sequential_40/lstm_120/while/Identity_3:output:0"[
'sequential_40_lstm_120_while_identity_40sequential_40/lstm_120/while/Identity_4:output:0"[
'sequential_40_lstm_120_while_identity_50sequential_40/lstm_120/while/Identity_5:output:0"?
Jsequential_40_lstm_120_while_lstm_cell_486_biasadd_readvariableop_resourceLsequential_40_lstm_120_while_lstm_cell_486_biasadd_readvariableop_resource_0"?
Ksequential_40_lstm_120_while_lstm_cell_486_matmul_1_readvariableop_resourceMsequential_40_lstm_120_while_lstm_cell_486_matmul_1_readvariableop_resource_0"?
Isequential_40_lstm_120_while_lstm_cell_486_matmul_readvariableop_resourceKsequential_40_lstm_120_while_lstm_cell_486_matmul_readvariableop_resource_0"?
Csequential_40_lstm_120_while_sequential_40_lstm_120_strided_slice_1Esequential_40_lstm_120_while_sequential_40_lstm_120_strided_slice_1_0"?
sequential_40_lstm_120_while_tensorarrayv2read_tensorlistgetitem_sequential_40_lstm_120_tensorarrayunstack_tensorlistfromtensor?sequential_40_lstm_120_while_tensorarrayv2read_tensorlistgetitem_sequential_40_lstm_120_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_40/lstm_120/while/lstm_cell_486/BiasAdd/ReadVariableOpAsequential_40/lstm_120/while/lstm_cell_486/BiasAdd/ReadVariableOp2?
@sequential_40/lstm_120/while/lstm_cell_486/MatMul/ReadVariableOp@sequential_40/lstm_120/while/lstm_cell_486/MatMul/ReadVariableOp2?
Bsequential_40/lstm_120/while/lstm_cell_486/MatMul_1/ReadVariableOpBsequential_40/lstm_120/while/lstm_cell_486/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2950897
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_488_2950921_0:2(/
while_lstm_cell_488_2950923_0:
(+
while_lstm_cell_488_2950925_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_488_2950921:2(-
while_lstm_cell_488_2950923:
()
while_lstm_cell_488_2950925:(??+while/lstm_cell_488/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_488/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_488_2950921_0while_lstm_cell_488_2950923_0while_lstm_cell_488_2950925_0*
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
J__inference_lstm_cell_488_layer_call_and_return_conditional_losses_2950838?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_488/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_488/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_488/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_488/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_488_2950921while_lstm_cell_488_2950921_0"<
while_lstm_cell_488_2950923while_lstm_cell_488_2950923_0"<
while_lstm_cell_488_2950925while_lstm_cell_488_2950925_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_488/StatefulPartitionedCall+while/lstm_cell_488/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_121_layer_call_and_return_conditional_losses_2950616

inputs(
lstm_cell_487_2950534:	d?(
lstm_cell_487_2950536:	2?$
lstm_cell_487_2950538:	?
identity??%lstm_cell_487/StatefulPartitionedCall?while;
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
%lstm_cell_487/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_487_2950534lstm_cell_487_2950536lstm_cell_487_2950538*
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
J__inference_lstm_cell_487_layer_call_and_return_conditional_losses_2950488n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_487_2950534lstm_cell_487_2950536lstm_cell_487_2950538*
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
while_body_2950547*
condR
while_cond_2950546*K
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
NoOpNoOp&^lstm_cell_487/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_487/StatefulPartitionedCall%lstm_cell_487/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?#
?
while_body_2950547
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_487_2950571_0:	d?0
while_lstm_cell_487_2950573_0:	2?,
while_lstm_cell_487_2950575_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_487_2950571:	d?.
while_lstm_cell_487_2950573:	2?*
while_lstm_cell_487_2950575:	???+while/lstm_cell_487/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_487/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_487_2950571_0while_lstm_cell_487_2950573_0while_lstm_cell_487_2950575_0*
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
J__inference_lstm_cell_487_layer_call_and_return_conditional_losses_2950488?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_487/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_487/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_487/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_487/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_487_2950571while_lstm_cell_487_2950571_0"<
while_lstm_cell_487_2950573while_lstm_cell_487_2950573_0"<
while_lstm_cell_487_2950575while_lstm_cell_487_2950575_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_487/StatefulPartitionedCall+while/lstm_cell_487/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_121_while_body_2952864.
*lstm_121_while_lstm_121_while_loop_counter4
0lstm_121_while_lstm_121_while_maximum_iterations
lstm_121_while_placeholder 
lstm_121_while_placeholder_1 
lstm_121_while_placeholder_2 
lstm_121_while_placeholder_3-
)lstm_121_while_lstm_121_strided_slice_1_0i
elstm_121_while_tensorarrayv2read_tensorlistgetitem_lstm_121_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_121_while_lstm_cell_487_matmul_readvariableop_resource_0:	d?R
?lstm_121_while_lstm_cell_487_matmul_1_readvariableop_resource_0:	2?M
>lstm_121_while_lstm_cell_487_biasadd_readvariableop_resource_0:	?
lstm_121_while_identity
lstm_121_while_identity_1
lstm_121_while_identity_2
lstm_121_while_identity_3
lstm_121_while_identity_4
lstm_121_while_identity_5+
'lstm_121_while_lstm_121_strided_slice_1g
clstm_121_while_tensorarrayv2read_tensorlistgetitem_lstm_121_tensorarrayunstack_tensorlistfromtensorN
;lstm_121_while_lstm_cell_487_matmul_readvariableop_resource:	d?P
=lstm_121_while_lstm_cell_487_matmul_1_readvariableop_resource:	2?K
<lstm_121_while_lstm_cell_487_biasadd_readvariableop_resource:	???3lstm_121/while/lstm_cell_487/BiasAdd/ReadVariableOp?2lstm_121/while/lstm_cell_487/MatMul/ReadVariableOp?4lstm_121/while/lstm_cell_487/MatMul_1/ReadVariableOp?
@lstm_121/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_121/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_121_while_tensorarrayv2read_tensorlistgetitem_lstm_121_tensorarrayunstack_tensorlistfromtensor_0lstm_121_while_placeholderIlstm_121/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_121/while/lstm_cell_487/MatMul/ReadVariableOpReadVariableOp=lstm_121_while_lstm_cell_487_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_121/while/lstm_cell_487/MatMulMatMul9lstm_121/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_121/while/lstm_cell_487/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_121/while/lstm_cell_487/MatMul_1/ReadVariableOpReadVariableOp?lstm_121_while_lstm_cell_487_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_121/while/lstm_cell_487/MatMul_1MatMullstm_121_while_placeholder_2<lstm_121/while/lstm_cell_487/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_121/while/lstm_cell_487/addAddV2-lstm_121/while/lstm_cell_487/MatMul:product:0/lstm_121/while/lstm_cell_487/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_121/while/lstm_cell_487/BiasAdd/ReadVariableOpReadVariableOp>lstm_121_while_lstm_cell_487_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_121/while/lstm_cell_487/BiasAddBiasAdd$lstm_121/while/lstm_cell_487/add:z:0;lstm_121/while/lstm_cell_487/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_121/while/lstm_cell_487/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_121/while/lstm_cell_487/splitSplit5lstm_121/while/lstm_cell_487/split/split_dim:output:0-lstm_121/while/lstm_cell_487/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_121/while/lstm_cell_487/SigmoidSigmoid+lstm_121/while/lstm_cell_487/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_121/while/lstm_cell_487/Sigmoid_1Sigmoid+lstm_121/while/lstm_cell_487/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_121/while/lstm_cell_487/mulMul*lstm_121/while/lstm_cell_487/Sigmoid_1:y:0lstm_121_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_121/while/lstm_cell_487/ReluRelu+lstm_121/while/lstm_cell_487/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_121/while/lstm_cell_487/mul_1Mul(lstm_121/while/lstm_cell_487/Sigmoid:y:0/lstm_121/while/lstm_cell_487/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_121/while/lstm_cell_487/add_1AddV2$lstm_121/while/lstm_cell_487/mul:z:0&lstm_121/while/lstm_cell_487/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_121/while/lstm_cell_487/Sigmoid_2Sigmoid+lstm_121/while/lstm_cell_487/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_121/while/lstm_cell_487/Relu_1Relu&lstm_121/while/lstm_cell_487/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_121/while/lstm_cell_487/mul_2Mul*lstm_121/while/lstm_cell_487/Sigmoid_2:y:01lstm_121/while/lstm_cell_487/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_121/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_121_while_placeholder_1lstm_121_while_placeholder&lstm_121/while/lstm_cell_487/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_121/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_121/while/addAddV2lstm_121_while_placeholderlstm_121/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_121/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_121/while/add_1AddV2*lstm_121_while_lstm_121_while_loop_counterlstm_121/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_121/while/IdentityIdentitylstm_121/while/add_1:z:0^lstm_121/while/NoOp*
T0*
_output_shapes
: ?
lstm_121/while/Identity_1Identity0lstm_121_while_lstm_121_while_maximum_iterations^lstm_121/while/NoOp*
T0*
_output_shapes
: t
lstm_121/while/Identity_2Identitylstm_121/while/add:z:0^lstm_121/while/NoOp*
T0*
_output_shapes
: ?
lstm_121/while/Identity_3IdentityClstm_121/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_121/while/NoOp*
T0*
_output_shapes
: ?
lstm_121/while/Identity_4Identity&lstm_121/while/lstm_cell_487/mul_2:z:0^lstm_121/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_121/while/Identity_5Identity&lstm_121/while/lstm_cell_487/add_1:z:0^lstm_121/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_121/while/NoOpNoOp4^lstm_121/while/lstm_cell_487/BiasAdd/ReadVariableOp3^lstm_121/while/lstm_cell_487/MatMul/ReadVariableOp5^lstm_121/while/lstm_cell_487/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_121_while_identity lstm_121/while/Identity:output:0"?
lstm_121_while_identity_1"lstm_121/while/Identity_1:output:0"?
lstm_121_while_identity_2"lstm_121/while/Identity_2:output:0"?
lstm_121_while_identity_3"lstm_121/while/Identity_3:output:0"?
lstm_121_while_identity_4"lstm_121/while/Identity_4:output:0"?
lstm_121_while_identity_5"lstm_121/while/Identity_5:output:0"T
'lstm_121_while_lstm_121_strided_slice_1)lstm_121_while_lstm_121_strided_slice_1_0"~
<lstm_121_while_lstm_cell_487_biasadd_readvariableop_resource>lstm_121_while_lstm_cell_487_biasadd_readvariableop_resource_0"?
=lstm_121_while_lstm_cell_487_matmul_1_readvariableop_resource?lstm_121_while_lstm_cell_487_matmul_1_readvariableop_resource_0"|
;lstm_121_while_lstm_cell_487_matmul_readvariableop_resource=lstm_121_while_lstm_cell_487_matmul_readvariableop_resource_0"?
clstm_121_while_tensorarrayv2read_tensorlistgetitem_lstm_121_tensorarrayunstack_tensorlistfromtensorelstm_121_while_tensorarrayv2read_tensorlistgetitem_lstm_121_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_121/while/lstm_cell_487/BiasAdd/ReadVariableOp3lstm_121/while/lstm_cell_487/BiasAdd/ReadVariableOp2h
2lstm_121/while/lstm_cell_487/MatMul/ReadVariableOp2lstm_121/while/lstm_cell_487/MatMul/ReadVariableOp2l
4lstm_121/while/lstm_cell_487/MatMul_1/ReadVariableOp4lstm_121/while/lstm_cell_487/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2951190
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_487_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_487_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_487_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_487_matmul_readvariableop_resource:	d?G
4while_lstm_cell_487_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_487_biasadd_readvariableop_resource:	???*while/lstm_cell_487/BiasAdd/ReadVariableOp?)while/lstm_cell_487/MatMul/ReadVariableOp?+while/lstm_cell_487/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_487/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_487_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_487/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_487/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_487/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_487_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_487/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_487/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_487/addAddV2$while/lstm_cell_487/MatMul:product:0&while/lstm_cell_487/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_487/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_487_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_487/BiasAddBiasAddwhile/lstm_cell_487/add:z:02while/lstm_cell_487/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_487/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_487/splitSplit,while/lstm_cell_487/split/split_dim:output:0$while/lstm_cell_487/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_487/SigmoidSigmoid"while/lstm_cell_487/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_487/Sigmoid_1Sigmoid"while/lstm_cell_487/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_487/mulMul!while/lstm_cell_487/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_487/ReluRelu"while/lstm_cell_487/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_487/mul_1Mulwhile/lstm_cell_487/Sigmoid:y:0&while/lstm_cell_487/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_487/add_1AddV2while/lstm_cell_487/mul:z:0while/lstm_cell_487/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_487/Sigmoid_2Sigmoid"while/lstm_cell_487/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_487/Relu_1Reluwhile/lstm_cell_487/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_487/mul_2Mul!while/lstm_cell_487/Sigmoid_2:y:0(while/lstm_cell_487/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_487/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_487/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_487/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_487/BiasAdd/ReadVariableOp*^while/lstm_cell_487/MatMul/ReadVariableOp,^while/lstm_cell_487/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_487_biasadd_readvariableop_resource5while_lstm_cell_487_biasadd_readvariableop_resource_0"n
4while_lstm_cell_487_matmul_1_readvariableop_resource6while_lstm_cell_487_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_487_matmul_readvariableop_resource4while_lstm_cell_487_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_487/BiasAdd/ReadVariableOp*while/lstm_cell_487/BiasAdd/ReadVariableOp2V
)while/lstm_cell_487/MatMul/ReadVariableOp)while/lstm_cell_487/MatMul/ReadVariableOp2Z
+while/lstm_cell_487/MatMul_1/ReadVariableOp+while/lstm_cell_487/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_40_lstm_122_while_body_2949835J
Fsequential_40_lstm_122_while_sequential_40_lstm_122_while_loop_counterP
Lsequential_40_lstm_122_while_sequential_40_lstm_122_while_maximum_iterations,
(sequential_40_lstm_122_while_placeholder.
*sequential_40_lstm_122_while_placeholder_1.
*sequential_40_lstm_122_while_placeholder_2.
*sequential_40_lstm_122_while_placeholder_3I
Esequential_40_lstm_122_while_sequential_40_lstm_122_strided_slice_1_0?
?sequential_40_lstm_122_while_tensorarrayv2read_tensorlistgetitem_sequential_40_lstm_122_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_40_lstm_122_while_lstm_cell_488_matmul_readvariableop_resource_0:2(_
Msequential_40_lstm_122_while_lstm_cell_488_matmul_1_readvariableop_resource_0:
(Z
Lsequential_40_lstm_122_while_lstm_cell_488_biasadd_readvariableop_resource_0:()
%sequential_40_lstm_122_while_identity+
'sequential_40_lstm_122_while_identity_1+
'sequential_40_lstm_122_while_identity_2+
'sequential_40_lstm_122_while_identity_3+
'sequential_40_lstm_122_while_identity_4+
'sequential_40_lstm_122_while_identity_5G
Csequential_40_lstm_122_while_sequential_40_lstm_122_strided_slice_1?
sequential_40_lstm_122_while_tensorarrayv2read_tensorlistgetitem_sequential_40_lstm_122_tensorarrayunstack_tensorlistfromtensor[
Isequential_40_lstm_122_while_lstm_cell_488_matmul_readvariableop_resource:2(]
Ksequential_40_lstm_122_while_lstm_cell_488_matmul_1_readvariableop_resource:
(X
Jsequential_40_lstm_122_while_lstm_cell_488_biasadd_readvariableop_resource:(??Asequential_40/lstm_122/while/lstm_cell_488/BiasAdd/ReadVariableOp?@sequential_40/lstm_122/while/lstm_cell_488/MatMul/ReadVariableOp?Bsequential_40/lstm_122/while/lstm_cell_488/MatMul_1/ReadVariableOp?
Nsequential_40/lstm_122/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_40/lstm_122/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_40_lstm_122_while_tensorarrayv2read_tensorlistgetitem_sequential_40_lstm_122_tensorarrayunstack_tensorlistfromtensor_0(sequential_40_lstm_122_while_placeholderWsequential_40/lstm_122/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_40/lstm_122/while/lstm_cell_488/MatMul/ReadVariableOpReadVariableOpKsequential_40_lstm_122_while_lstm_cell_488_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_40/lstm_122/while/lstm_cell_488/MatMulMatMulGsequential_40/lstm_122/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_40/lstm_122/while/lstm_cell_488/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_40/lstm_122/while/lstm_cell_488/MatMul_1/ReadVariableOpReadVariableOpMsequential_40_lstm_122_while_lstm_cell_488_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_40/lstm_122/while/lstm_cell_488/MatMul_1MatMul*sequential_40_lstm_122_while_placeholder_2Jsequential_40/lstm_122/while/lstm_cell_488/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_40/lstm_122/while/lstm_cell_488/addAddV2;sequential_40/lstm_122/while/lstm_cell_488/MatMul:product:0=sequential_40/lstm_122/while/lstm_cell_488/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_40/lstm_122/while/lstm_cell_488/BiasAdd/ReadVariableOpReadVariableOpLsequential_40_lstm_122_while_lstm_cell_488_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_40/lstm_122/while/lstm_cell_488/BiasAddBiasAdd2sequential_40/lstm_122/while/lstm_cell_488/add:z:0Isequential_40/lstm_122/while/lstm_cell_488/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_40/lstm_122/while/lstm_cell_488/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_40/lstm_122/while/lstm_cell_488/splitSplitCsequential_40/lstm_122/while/lstm_cell_488/split/split_dim:output:0;sequential_40/lstm_122/while/lstm_cell_488/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_40/lstm_122/while/lstm_cell_488/SigmoidSigmoid9sequential_40/lstm_122/while/lstm_cell_488/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_40/lstm_122/while/lstm_cell_488/Sigmoid_1Sigmoid9sequential_40/lstm_122/while/lstm_cell_488/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_40/lstm_122/while/lstm_cell_488/mulMul8sequential_40/lstm_122/while/lstm_cell_488/Sigmoid_1:y:0*sequential_40_lstm_122_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_40/lstm_122/while/lstm_cell_488/ReluRelu9sequential_40/lstm_122/while/lstm_cell_488/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_40/lstm_122/while/lstm_cell_488/mul_1Mul6sequential_40/lstm_122/while/lstm_cell_488/Sigmoid:y:0=sequential_40/lstm_122/while/lstm_cell_488/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_40/lstm_122/while/lstm_cell_488/add_1AddV22sequential_40/lstm_122/while/lstm_cell_488/mul:z:04sequential_40/lstm_122/while/lstm_cell_488/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_40/lstm_122/while/lstm_cell_488/Sigmoid_2Sigmoid9sequential_40/lstm_122/while/lstm_cell_488/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_40/lstm_122/while/lstm_cell_488/Relu_1Relu4sequential_40/lstm_122/while/lstm_cell_488/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_40/lstm_122/while/lstm_cell_488/mul_2Mul8sequential_40/lstm_122/while/lstm_cell_488/Sigmoid_2:y:0?sequential_40/lstm_122/while/lstm_cell_488/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_40/lstm_122/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_40_lstm_122_while_placeholder_1(sequential_40_lstm_122_while_placeholder4sequential_40/lstm_122/while/lstm_cell_488/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_40/lstm_122/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_40/lstm_122/while/addAddV2(sequential_40_lstm_122_while_placeholder+sequential_40/lstm_122/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_40/lstm_122/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_40/lstm_122/while/add_1AddV2Fsequential_40_lstm_122_while_sequential_40_lstm_122_while_loop_counter-sequential_40/lstm_122/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_40/lstm_122/while/IdentityIdentity&sequential_40/lstm_122/while/add_1:z:0"^sequential_40/lstm_122/while/NoOp*
T0*
_output_shapes
: ?
'sequential_40/lstm_122/while/Identity_1IdentityLsequential_40_lstm_122_while_sequential_40_lstm_122_while_maximum_iterations"^sequential_40/lstm_122/while/NoOp*
T0*
_output_shapes
: ?
'sequential_40/lstm_122/while/Identity_2Identity$sequential_40/lstm_122/while/add:z:0"^sequential_40/lstm_122/while/NoOp*
T0*
_output_shapes
: ?
'sequential_40/lstm_122/while/Identity_3IdentityQsequential_40/lstm_122/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_40/lstm_122/while/NoOp*
T0*
_output_shapes
: ?
'sequential_40/lstm_122/while/Identity_4Identity4sequential_40/lstm_122/while/lstm_cell_488/mul_2:z:0"^sequential_40/lstm_122/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_40/lstm_122/while/Identity_5Identity4sequential_40/lstm_122/while/lstm_cell_488/add_1:z:0"^sequential_40/lstm_122/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_40/lstm_122/while/NoOpNoOpB^sequential_40/lstm_122/while/lstm_cell_488/BiasAdd/ReadVariableOpA^sequential_40/lstm_122/while/lstm_cell_488/MatMul/ReadVariableOpC^sequential_40/lstm_122/while/lstm_cell_488/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_40_lstm_122_while_identity.sequential_40/lstm_122/while/Identity:output:0"[
'sequential_40_lstm_122_while_identity_10sequential_40/lstm_122/while/Identity_1:output:0"[
'sequential_40_lstm_122_while_identity_20sequential_40/lstm_122/while/Identity_2:output:0"[
'sequential_40_lstm_122_while_identity_30sequential_40/lstm_122/while/Identity_3:output:0"[
'sequential_40_lstm_122_while_identity_40sequential_40/lstm_122/while/Identity_4:output:0"[
'sequential_40_lstm_122_while_identity_50sequential_40/lstm_122/while/Identity_5:output:0"?
Jsequential_40_lstm_122_while_lstm_cell_488_biasadd_readvariableop_resourceLsequential_40_lstm_122_while_lstm_cell_488_biasadd_readvariableop_resource_0"?
Ksequential_40_lstm_122_while_lstm_cell_488_matmul_1_readvariableop_resourceMsequential_40_lstm_122_while_lstm_cell_488_matmul_1_readvariableop_resource_0"?
Isequential_40_lstm_122_while_lstm_cell_488_matmul_readvariableop_resourceKsequential_40_lstm_122_while_lstm_cell_488_matmul_readvariableop_resource_0"?
Csequential_40_lstm_122_while_sequential_40_lstm_122_strided_slice_1Esequential_40_lstm_122_while_sequential_40_lstm_122_strided_slice_1_0"?
sequential_40_lstm_122_while_tensorarrayv2read_tensorlistgetitem_sequential_40_lstm_122_tensorarrayunstack_tensorlistfromtensor?sequential_40_lstm_122_while_tensorarrayv2read_tensorlistgetitem_sequential_40_lstm_122_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_40/lstm_122/while/lstm_cell_488/BiasAdd/ReadVariableOpAsequential_40/lstm_122/while/lstm_cell_488/BiasAdd/ReadVariableOp2?
@sequential_40/lstm_122/while/lstm_cell_488/MatMul/ReadVariableOp@sequential_40/lstm_122/while/lstm_cell_488/MatMul/ReadVariableOp2?
Bsequential_40/lstm_122/while/lstm_cell_488/MatMul_1/ReadVariableOpBsequential_40/lstm_122/while/lstm_cell_488/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_122_layer_call_and_return_conditional_losses_2951640

inputs>
,lstm_cell_488_matmul_readvariableop_resource:2(@
.lstm_cell_488_matmul_1_readvariableop_resource:
(;
-lstm_cell_488_biasadd_readvariableop_resource:(
identity??$lstm_cell_488/BiasAdd/ReadVariableOp?#lstm_cell_488/MatMul/ReadVariableOp?%lstm_cell_488/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_488/MatMul/ReadVariableOpReadVariableOp,lstm_cell_488_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_488/MatMulMatMulstrided_slice_2:output:0+lstm_cell_488/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_488/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_488_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_488/MatMul_1MatMulzeros:output:0-lstm_cell_488/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_488/addAddV2lstm_cell_488/MatMul:product:0 lstm_cell_488/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_488/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_488_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_488/BiasAddBiasAddlstm_cell_488/add:z:0,lstm_cell_488/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_488/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_488/splitSplit&lstm_cell_488/split/split_dim:output:0lstm_cell_488/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_488/SigmoidSigmoidlstm_cell_488/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_488/Sigmoid_1Sigmoidlstm_cell_488/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_488/mulMullstm_cell_488/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_488/ReluRelulstm_cell_488/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_488/mul_1Mullstm_cell_488/Sigmoid:y:0 lstm_cell_488/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_488/add_1AddV2lstm_cell_488/mul:z:0lstm_cell_488/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_488/Sigmoid_2Sigmoidlstm_cell_488/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_488/Relu_1Relulstm_cell_488/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_488/mul_2Mullstm_cell_488/Sigmoid_2:y:0"lstm_cell_488/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_488_matmul_readvariableop_resource.lstm_cell_488_matmul_1_readvariableop_resource-lstm_cell_488_biasadd_readvariableop_resource*
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
while_body_2951556*
condR
while_cond_2951555*K
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
NoOpNoOp%^lstm_cell_488/BiasAdd/ReadVariableOp$^lstm_cell_488/MatMul/ReadVariableOp&^lstm_cell_488/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_488/BiasAdd/ReadVariableOp$lstm_cell_488/BiasAdd/ReadVariableOp2J
#lstm_cell_488/MatMul/ReadVariableOp#lstm_cell_488/MatMul/ReadVariableOp2N
%lstm_cell_488/MatMul_1/ReadVariableOp%lstm_cell_488/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_2950546
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2950546___redundant_placeholder05
1while_while_cond_2950546___redundant_placeholder15
1while_while_cond_2950546___redundant_placeholder25
1while_while_cond_2950546___redundant_placeholder3
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
while_cond_2954427
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2954427___redundant_placeholder05
1while_while_cond_2954427___redundant_placeholder15
1while_while_cond_2954427___redundant_placeholder25
1while_while_cond_2954427___redundant_placeholder3
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
/__inference_sequential_40_layer_call_fn_2951474
lstm_120_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_120_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_40_layer_call_and_return_conditional_losses_2951449o
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
_user_specified_namelstm_120_input
?
?
J__inference_sequential_40_layer_call_and_return_conditional_losses_2951449

inputs#
lstm_120_2951125:	?#
lstm_120_2951127:	d?
lstm_120_2951129:	?#
lstm_121_2951275:	d?#
lstm_121_2951277:	2?
lstm_121_2951279:	?"
lstm_122_2951425:2("
lstm_122_2951427:
(
lstm_122_2951429:("
dense_40_2951443:

dense_40_2951445:
identity?? dense_40/StatefulPartitionedCall? lstm_120/StatefulPartitionedCall? lstm_121/StatefulPartitionedCall? lstm_122/StatefulPartitionedCall?
 lstm_120/StatefulPartitionedCallStatefulPartitionedCallinputslstm_120_2951125lstm_120_2951127lstm_120_2951129*
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
E__inference_lstm_120_layer_call_and_return_conditional_losses_2951124?
 lstm_121/StatefulPartitionedCallStatefulPartitionedCall)lstm_120/StatefulPartitionedCall:output:0lstm_121_2951275lstm_121_2951277lstm_121_2951279*
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
E__inference_lstm_121_layer_call_and_return_conditional_losses_2951274?
 lstm_122/StatefulPartitionedCallStatefulPartitionedCall)lstm_121/StatefulPartitionedCall:output:0lstm_122_2951425lstm_122_2951427lstm_122_2951429*
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
E__inference_lstm_122_layer_call_and_return_conditional_losses_2951424?
 dense_40/StatefulPartitionedCallStatefulPartitionedCall)lstm_122/StatefulPartitionedCall:output:0dense_40_2951443dense_40_2951445*
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
E__inference_dense_40_layer_call_and_return_conditional_losses_2951442x
IdentityIdentity)dense_40/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_40/StatefulPartitionedCall!^lstm_120/StatefulPartitionedCall!^lstm_121/StatefulPartitionedCall!^lstm_122/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2D
 lstm_120/StatefulPartitionedCall lstm_120/StatefulPartitionedCall2D
 lstm_121/StatefulPartitionedCall lstm_121/StatefulPartitionedCall2D
 lstm_122/StatefulPartitionedCall lstm_122/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2951886
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_486_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_486_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_486_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_486_matmul_readvariableop_resource:	?G
4while_lstm_cell_486_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_486_biasadd_readvariableop_resource:	???*while/lstm_cell_486/BiasAdd/ReadVariableOp?)while/lstm_cell_486/MatMul/ReadVariableOp?+while/lstm_cell_486/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_486/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_486_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_486/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_486/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_486/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_486_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_486/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_486/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_486/addAddV2$while/lstm_cell_486/MatMul:product:0&while/lstm_cell_486/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_486/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_486_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_486/BiasAddBiasAddwhile/lstm_cell_486/add:z:02while/lstm_cell_486/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_486/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_486/splitSplit,while/lstm_cell_486/split/split_dim:output:0$while/lstm_cell_486/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_486/SigmoidSigmoid"while/lstm_cell_486/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_486/Sigmoid_1Sigmoid"while/lstm_cell_486/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_486/mulMul!while/lstm_cell_486/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_486/ReluRelu"while/lstm_cell_486/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_486/mul_1Mulwhile/lstm_cell_486/Sigmoid:y:0&while/lstm_cell_486/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_486/add_1AddV2while/lstm_cell_486/mul:z:0while/lstm_cell_486/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_486/Sigmoid_2Sigmoid"while/lstm_cell_486/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_486/Relu_1Reluwhile/lstm_cell_486/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_486/mul_2Mul!while/lstm_cell_486/Sigmoid_2:y:0(while/lstm_cell_486/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_486/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_486/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_486/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_486/BiasAdd/ReadVariableOp*^while/lstm_cell_486/MatMul/ReadVariableOp,^while/lstm_cell_486/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_486_biasadd_readvariableop_resource5while_lstm_cell_486_biasadd_readvariableop_resource_0"n
4while_lstm_cell_486_matmul_1_readvariableop_resource6while_lstm_cell_486_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_486_matmul_readvariableop_resource4while_lstm_cell_486_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_486/BiasAdd/ReadVariableOp*while/lstm_cell_486/BiasAdd/ReadVariableOp2V
)while/lstm_cell_486/MatMul/ReadVariableOp)while/lstm_cell_486/MatMul/ReadVariableOp2Z
+while/lstm_cell_486/MatMul_1/ReadVariableOp+while/lstm_cell_486/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
#__inference__traced_restore_2955527
file_prefix2
 assignvariableop_dense_40_kernel:
.
 assignvariableop_1_dense_40_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_120_lstm_cell_120_kernel:	?M
:assignvariableop_8_lstm_120_lstm_cell_120_recurrent_kernel:	d?=
.assignvariableop_9_lstm_120_lstm_cell_120_bias:	?D
1assignvariableop_10_lstm_121_lstm_cell_121_kernel:	d?N
;assignvariableop_11_lstm_121_lstm_cell_121_recurrent_kernel:	2?>
/assignvariableop_12_lstm_121_lstm_cell_121_bias:	?C
1assignvariableop_13_lstm_122_lstm_cell_122_kernel:2(M
;assignvariableop_14_lstm_122_lstm_cell_122_recurrent_kernel:
(=
/assignvariableop_15_lstm_122_lstm_cell_122_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_40_kernel_m:
6
(assignvariableop_19_adam_dense_40_bias_m:K
8assignvariableop_20_adam_lstm_120_lstm_cell_120_kernel_m:	?U
Bassignvariableop_21_adam_lstm_120_lstm_cell_120_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_120_lstm_cell_120_bias_m:	?K
8assignvariableop_23_adam_lstm_121_lstm_cell_121_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_121_lstm_cell_121_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_121_lstm_cell_121_bias_m:	?J
8assignvariableop_26_adam_lstm_122_lstm_cell_122_kernel_m:2(T
Bassignvariableop_27_adam_lstm_122_lstm_cell_122_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_122_lstm_cell_122_bias_m:(<
*assignvariableop_29_adam_dense_40_kernel_v:
6
(assignvariableop_30_adam_dense_40_bias_v:K
8assignvariableop_31_adam_lstm_120_lstm_cell_120_kernel_v:	?U
Bassignvariableop_32_adam_lstm_120_lstm_cell_120_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_120_lstm_cell_120_bias_v:	?K
8assignvariableop_34_adam_lstm_121_lstm_cell_121_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_121_lstm_cell_121_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_121_lstm_cell_121_bias_v:	?J
8assignvariableop_37_adam_lstm_122_lstm_cell_122_kernel_v:2(T
Bassignvariableop_38_adam_lstm_122_lstm_cell_122_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_122_lstm_cell_122_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_40_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_40_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_120_lstm_cell_120_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_120_lstm_cell_120_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_120_lstm_cell_120_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_121_lstm_cell_121_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_121_lstm_cell_121_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_121_lstm_cell_121_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_122_lstm_cell_122_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_122_lstm_cell_122_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_122_lstm_cell_122_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_40_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_40_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_120_lstm_cell_120_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_120_lstm_cell_120_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_120_lstm_cell_120_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_121_lstm_cell_121_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_121_lstm_cell_121_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_121_lstm_cell_121_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_122_lstm_cell_122_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_122_lstm_cell_122_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_122_lstm_cell_122_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_40_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_40_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_120_lstm_cell_120_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_120_lstm_cell_120_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_120_lstm_cell_120_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_121_lstm_cell_121_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_121_lstm_cell_121_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_121_lstm_cell_121_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_122_lstm_cell_122_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_122_lstm_cell_122_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_122_lstm_cell_122_bias_vIdentity_39:output:0"/device:CPU:0*
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
?8
?
while_body_2954571
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_488_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_488_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_488_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_488_matmul_readvariableop_resource:2(F
4while_lstm_cell_488_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_488_biasadd_readvariableop_resource:(??*while/lstm_cell_488/BiasAdd/ReadVariableOp?)while/lstm_cell_488/MatMul/ReadVariableOp?+while/lstm_cell_488/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_488/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_488_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_488/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_488/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_488/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_488_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_488/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_488/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_488/addAddV2$while/lstm_cell_488/MatMul:product:0&while/lstm_cell_488/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_488/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_488_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_488/BiasAddBiasAddwhile/lstm_cell_488/add:z:02while/lstm_cell_488/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_488/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_488/splitSplit,while/lstm_cell_488/split/split_dim:output:0$while/lstm_cell_488/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_488/SigmoidSigmoid"while/lstm_cell_488/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_488/Sigmoid_1Sigmoid"while/lstm_cell_488/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_488/mulMul!while/lstm_cell_488/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_488/ReluRelu"while/lstm_cell_488/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_488/mul_1Mulwhile/lstm_cell_488/Sigmoid:y:0&while/lstm_cell_488/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_488/add_1AddV2while/lstm_cell_488/mul:z:0while/lstm_cell_488/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_488/Sigmoid_2Sigmoid"while/lstm_cell_488/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_488/Relu_1Reluwhile/lstm_cell_488/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_488/mul_2Mul!while/lstm_cell_488/Sigmoid_2:y:0(while/lstm_cell_488/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_488/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_488/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_488/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_488/BiasAdd/ReadVariableOp*^while/lstm_cell_488/MatMul/ReadVariableOp,^while/lstm_cell_488/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_488_biasadd_readvariableop_resource5while_lstm_cell_488_biasadd_readvariableop_resource_0"n
4while_lstm_cell_488_matmul_1_readvariableop_resource6while_lstm_cell_488_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_488_matmul_readvariableop_resource4while_lstm_cell_488_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_488/BiasAdd/ReadVariableOp*while/lstm_cell_488/BiasAdd/ReadVariableOp2V
)while/lstm_cell_488/MatMul/ReadVariableOp)while/lstm_cell_488/MatMul/ReadVariableOp2Z
+while/lstm_cell_488/MatMul_1/ReadVariableOp+while/lstm_cell_488/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2950005
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2950005___redundant_placeholder05
1while_while_cond_2950005___redundant_placeholder15
1while_while_cond_2950005___redundant_placeholder25
1while_while_cond_2950005___redundant_placeholder3
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
while_cond_2950705
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2950705___redundant_placeholder05
1while_while_cond_2950705___redundant_placeholder15
1while_while_cond_2950705___redundant_placeholder25
1while_while_cond_2950705___redundant_placeholder3
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

lstm_120_while_body_2952298.
*lstm_120_while_lstm_120_while_loop_counter4
0lstm_120_while_lstm_120_while_maximum_iterations
lstm_120_while_placeholder 
lstm_120_while_placeholder_1 
lstm_120_while_placeholder_2 
lstm_120_while_placeholder_3-
)lstm_120_while_lstm_120_strided_slice_1_0i
elstm_120_while_tensorarrayv2read_tensorlistgetitem_lstm_120_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_120_while_lstm_cell_486_matmul_readvariableop_resource_0:	?R
?lstm_120_while_lstm_cell_486_matmul_1_readvariableop_resource_0:	d?M
>lstm_120_while_lstm_cell_486_biasadd_readvariableop_resource_0:	?
lstm_120_while_identity
lstm_120_while_identity_1
lstm_120_while_identity_2
lstm_120_while_identity_3
lstm_120_while_identity_4
lstm_120_while_identity_5+
'lstm_120_while_lstm_120_strided_slice_1g
clstm_120_while_tensorarrayv2read_tensorlistgetitem_lstm_120_tensorarrayunstack_tensorlistfromtensorN
;lstm_120_while_lstm_cell_486_matmul_readvariableop_resource:	?P
=lstm_120_while_lstm_cell_486_matmul_1_readvariableop_resource:	d?K
<lstm_120_while_lstm_cell_486_biasadd_readvariableop_resource:	???3lstm_120/while/lstm_cell_486/BiasAdd/ReadVariableOp?2lstm_120/while/lstm_cell_486/MatMul/ReadVariableOp?4lstm_120/while/lstm_cell_486/MatMul_1/ReadVariableOp?
@lstm_120/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_120/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_120_while_tensorarrayv2read_tensorlistgetitem_lstm_120_tensorarrayunstack_tensorlistfromtensor_0lstm_120_while_placeholderIlstm_120/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_120/while/lstm_cell_486/MatMul/ReadVariableOpReadVariableOp=lstm_120_while_lstm_cell_486_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_120/while/lstm_cell_486/MatMulMatMul9lstm_120/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_120/while/lstm_cell_486/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_120/while/lstm_cell_486/MatMul_1/ReadVariableOpReadVariableOp?lstm_120_while_lstm_cell_486_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_120/while/lstm_cell_486/MatMul_1MatMullstm_120_while_placeholder_2<lstm_120/while/lstm_cell_486/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_120/while/lstm_cell_486/addAddV2-lstm_120/while/lstm_cell_486/MatMul:product:0/lstm_120/while/lstm_cell_486/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_120/while/lstm_cell_486/BiasAdd/ReadVariableOpReadVariableOp>lstm_120_while_lstm_cell_486_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_120/while/lstm_cell_486/BiasAddBiasAdd$lstm_120/while/lstm_cell_486/add:z:0;lstm_120/while/lstm_cell_486/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_120/while/lstm_cell_486/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_120/while/lstm_cell_486/splitSplit5lstm_120/while/lstm_cell_486/split/split_dim:output:0-lstm_120/while/lstm_cell_486/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_120/while/lstm_cell_486/SigmoidSigmoid+lstm_120/while/lstm_cell_486/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_120/while/lstm_cell_486/Sigmoid_1Sigmoid+lstm_120/while/lstm_cell_486/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_120/while/lstm_cell_486/mulMul*lstm_120/while/lstm_cell_486/Sigmoid_1:y:0lstm_120_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_120/while/lstm_cell_486/ReluRelu+lstm_120/while/lstm_cell_486/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_120/while/lstm_cell_486/mul_1Mul(lstm_120/while/lstm_cell_486/Sigmoid:y:0/lstm_120/while/lstm_cell_486/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_120/while/lstm_cell_486/add_1AddV2$lstm_120/while/lstm_cell_486/mul:z:0&lstm_120/while/lstm_cell_486/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_120/while/lstm_cell_486/Sigmoid_2Sigmoid+lstm_120/while/lstm_cell_486/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_120/while/lstm_cell_486/Relu_1Relu&lstm_120/while/lstm_cell_486/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_120/while/lstm_cell_486/mul_2Mul*lstm_120/while/lstm_cell_486/Sigmoid_2:y:01lstm_120/while/lstm_cell_486/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_120/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_120_while_placeholder_1lstm_120_while_placeholder&lstm_120/while/lstm_cell_486/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_120/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_120/while/addAddV2lstm_120_while_placeholderlstm_120/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_120/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_120/while/add_1AddV2*lstm_120_while_lstm_120_while_loop_counterlstm_120/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_120/while/IdentityIdentitylstm_120/while/add_1:z:0^lstm_120/while/NoOp*
T0*
_output_shapes
: ?
lstm_120/while/Identity_1Identity0lstm_120_while_lstm_120_while_maximum_iterations^lstm_120/while/NoOp*
T0*
_output_shapes
: t
lstm_120/while/Identity_2Identitylstm_120/while/add:z:0^lstm_120/while/NoOp*
T0*
_output_shapes
: ?
lstm_120/while/Identity_3IdentityClstm_120/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_120/while/NoOp*
T0*
_output_shapes
: ?
lstm_120/while/Identity_4Identity&lstm_120/while/lstm_cell_486/mul_2:z:0^lstm_120/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_120/while/Identity_5Identity&lstm_120/while/lstm_cell_486/add_1:z:0^lstm_120/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_120/while/NoOpNoOp4^lstm_120/while/lstm_cell_486/BiasAdd/ReadVariableOp3^lstm_120/while/lstm_cell_486/MatMul/ReadVariableOp5^lstm_120/while/lstm_cell_486/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_120_while_identity lstm_120/while/Identity:output:0"?
lstm_120_while_identity_1"lstm_120/while/Identity_1:output:0"?
lstm_120_while_identity_2"lstm_120/while/Identity_2:output:0"?
lstm_120_while_identity_3"lstm_120/while/Identity_3:output:0"?
lstm_120_while_identity_4"lstm_120/while/Identity_4:output:0"?
lstm_120_while_identity_5"lstm_120/while/Identity_5:output:0"T
'lstm_120_while_lstm_120_strided_slice_1)lstm_120_while_lstm_120_strided_slice_1_0"~
<lstm_120_while_lstm_cell_486_biasadd_readvariableop_resource>lstm_120_while_lstm_cell_486_biasadd_readvariableop_resource_0"?
=lstm_120_while_lstm_cell_486_matmul_1_readvariableop_resource?lstm_120_while_lstm_cell_486_matmul_1_readvariableop_resource_0"|
;lstm_120_while_lstm_cell_486_matmul_readvariableop_resource=lstm_120_while_lstm_cell_486_matmul_readvariableop_resource_0"?
clstm_120_while_tensorarrayv2read_tensorlistgetitem_lstm_120_tensorarrayunstack_tensorlistfromtensorelstm_120_while_tensorarrayv2read_tensorlistgetitem_lstm_120_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_120/while/lstm_cell_486/BiasAdd/ReadVariableOp3lstm_120/while/lstm_cell_486/BiasAdd/ReadVariableOp2h
2lstm_120/while/lstm_cell_486/MatMul/ReadVariableOp2lstm_120/while/lstm_cell_486/MatMul/ReadVariableOp2l
4lstm_120/while/lstm_cell_486/MatMul_1/ReadVariableOp4lstm_120/while/lstm_cell_486/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_122_while_cond_2952575.
*lstm_122_while_lstm_122_while_loop_counter4
0lstm_122_while_lstm_122_while_maximum_iterations
lstm_122_while_placeholder 
lstm_122_while_placeholder_1 
lstm_122_while_placeholder_2 
lstm_122_while_placeholder_30
,lstm_122_while_less_lstm_122_strided_slice_1G
Clstm_122_while_lstm_122_while_cond_2952575___redundant_placeholder0G
Clstm_122_while_lstm_122_while_cond_2952575___redundant_placeholder1G
Clstm_122_while_lstm_122_while_cond_2952575___redundant_placeholder2G
Clstm_122_while_lstm_122_while_cond_2952575___redundant_placeholder3
lstm_122_while_identity
?
lstm_122/while/LessLesslstm_122_while_placeholder,lstm_122_while_less_lstm_122_strided_slice_1*
T0*
_output_shapes
: ]
lstm_122/while/IdentityIdentitylstm_122/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_122_while_identity lstm_122/while/Identity:output:0*(
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
while_body_2954098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_487_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_487_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_487_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_487_matmul_readvariableop_resource:	d?G
4while_lstm_cell_487_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_487_biasadd_readvariableop_resource:	???*while/lstm_cell_487/BiasAdd/ReadVariableOp?)while/lstm_cell_487/MatMul/ReadVariableOp?+while/lstm_cell_487/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_487/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_487_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_487/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_487/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_487/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_487_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_487/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_487/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_487/addAddV2$while/lstm_cell_487/MatMul:product:0&while/lstm_cell_487/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_487/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_487_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_487/BiasAddBiasAddwhile/lstm_cell_487/add:z:02while/lstm_cell_487/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_487/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_487/splitSplit,while/lstm_cell_487/split/split_dim:output:0$while/lstm_cell_487/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_487/SigmoidSigmoid"while/lstm_cell_487/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_487/Sigmoid_1Sigmoid"while/lstm_cell_487/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_487/mulMul!while/lstm_cell_487/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_487/ReluRelu"while/lstm_cell_487/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_487/mul_1Mulwhile/lstm_cell_487/Sigmoid:y:0&while/lstm_cell_487/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_487/add_1AddV2while/lstm_cell_487/mul:z:0while/lstm_cell_487/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_487/Sigmoid_2Sigmoid"while/lstm_cell_487/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_487/Relu_1Reluwhile/lstm_cell_487/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_487/mul_2Mul!while/lstm_cell_487/Sigmoid_2:y:0(while/lstm_cell_487/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_487/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_487/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_487/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_487/BiasAdd/ReadVariableOp*^while/lstm_cell_487/MatMul/ReadVariableOp,^while/lstm_cell_487/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_487_biasadd_readvariableop_resource5while_lstm_cell_487_biasadd_readvariableop_resource_0"n
4while_lstm_cell_487_matmul_1_readvariableop_resource6while_lstm_cell_487_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_487_matmul_readvariableop_resource4while_lstm_cell_487_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_487/BiasAdd/ReadVariableOp*while/lstm_cell_487/BiasAdd/ReadVariableOp2V
)while/lstm_cell_487/MatMul/ReadVariableOp)while/lstm_cell_487/MatMul/ReadVariableOp2Z
+while/lstm_cell_487/MatMul_1/ReadVariableOp+while/lstm_cell_487/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_121_layer_call_fn_2953742

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
E__inference_lstm_121_layer_call_and_return_conditional_losses_2951274s
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
*__inference_lstm_120_layer_call_fn_2953126

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
E__inference_lstm_120_layer_call_and_return_conditional_losses_2951124s
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
)sequential_40_lstm_122_while_cond_2949834J
Fsequential_40_lstm_122_while_sequential_40_lstm_122_while_loop_counterP
Lsequential_40_lstm_122_while_sequential_40_lstm_122_while_maximum_iterations,
(sequential_40_lstm_122_while_placeholder.
*sequential_40_lstm_122_while_placeholder_1.
*sequential_40_lstm_122_while_placeholder_2.
*sequential_40_lstm_122_while_placeholder_3L
Hsequential_40_lstm_122_while_less_sequential_40_lstm_122_strided_slice_1c
_sequential_40_lstm_122_while_sequential_40_lstm_122_while_cond_2949834___redundant_placeholder0c
_sequential_40_lstm_122_while_sequential_40_lstm_122_while_cond_2949834___redundant_placeholder1c
_sequential_40_lstm_122_while_sequential_40_lstm_122_while_cond_2949834___redundant_placeholder2c
_sequential_40_lstm_122_while_sequential_40_lstm_122_while_cond_2949834___redundant_placeholder3)
%sequential_40_lstm_122_while_identity
?
!sequential_40/lstm_122/while/LessLess(sequential_40_lstm_122_while_placeholderHsequential_40_lstm_122_while_less_sequential_40_lstm_122_strided_slice_1*
T0*
_output_shapes
: y
%sequential_40/lstm_122/while/IdentityIdentity%sequential_40/lstm_122/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_40_lstm_122_while_identity.sequential_40/lstm_122/while/Identity:output:0*(
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
J__inference_lstm_cell_486_layer_call_and_return_conditional_losses_2949992

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
J__inference_sequential_40_layer_call_and_return_conditional_losses_2953093

inputsH
5lstm_120_lstm_cell_486_matmul_readvariableop_resource:	?J
7lstm_120_lstm_cell_486_matmul_1_readvariableop_resource:	d?E
6lstm_120_lstm_cell_486_biasadd_readvariableop_resource:	?H
5lstm_121_lstm_cell_487_matmul_readvariableop_resource:	d?J
7lstm_121_lstm_cell_487_matmul_1_readvariableop_resource:	2?E
6lstm_121_lstm_cell_487_biasadd_readvariableop_resource:	?G
5lstm_122_lstm_cell_488_matmul_readvariableop_resource:2(I
7lstm_122_lstm_cell_488_matmul_1_readvariableop_resource:
(D
6lstm_122_lstm_cell_488_biasadd_readvariableop_resource:(9
'dense_40_matmul_readvariableop_resource:
6
(dense_40_biasadd_readvariableop_resource:
identity??dense_40/BiasAdd/ReadVariableOp?dense_40/MatMul/ReadVariableOp?-lstm_120/lstm_cell_486/BiasAdd/ReadVariableOp?,lstm_120/lstm_cell_486/MatMul/ReadVariableOp?.lstm_120/lstm_cell_486/MatMul_1/ReadVariableOp?lstm_120/while?-lstm_121/lstm_cell_487/BiasAdd/ReadVariableOp?,lstm_121/lstm_cell_487/MatMul/ReadVariableOp?.lstm_121/lstm_cell_487/MatMul_1/ReadVariableOp?lstm_121/while?-lstm_122/lstm_cell_488/BiasAdd/ReadVariableOp?,lstm_122/lstm_cell_488/MatMul/ReadVariableOp?.lstm_122/lstm_cell_488/MatMul_1/ReadVariableOp?lstm_122/whileD
lstm_120/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_120/strided_sliceStridedSlicelstm_120/Shape:output:0%lstm_120/strided_slice/stack:output:0'lstm_120/strided_slice/stack_1:output:0'lstm_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_120/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_120/zeros/packedPacklstm_120/strided_slice:output:0 lstm_120/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_120/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_120/zerosFilllstm_120/zeros/packed:output:0lstm_120/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_120/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_120/zeros_1/packedPacklstm_120/strided_slice:output:0"lstm_120/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_120/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_120/zeros_1Fill lstm_120/zeros_1/packed:output:0lstm_120/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_120/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_120/transpose	Transposeinputs lstm_120/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_120/Shape_1Shapelstm_120/transpose:y:0*
T0*
_output_shapes
:h
lstm_120/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_120/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_120/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_120/strided_slice_1StridedSlicelstm_120/Shape_1:output:0'lstm_120/strided_slice_1/stack:output:0)lstm_120/strided_slice_1/stack_1:output:0)lstm_120/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_120/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_120/TensorArrayV2TensorListReserve-lstm_120/TensorArrayV2/element_shape:output:0!lstm_120/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_120/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_120/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_120/transpose:y:0Glstm_120/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_120/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_120/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_120/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_120/strided_slice_2StridedSlicelstm_120/transpose:y:0'lstm_120/strided_slice_2/stack:output:0)lstm_120/strided_slice_2/stack_1:output:0)lstm_120/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_120/lstm_cell_486/MatMul/ReadVariableOpReadVariableOp5lstm_120_lstm_cell_486_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_120/lstm_cell_486/MatMulMatMul!lstm_120/strided_slice_2:output:04lstm_120/lstm_cell_486/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_120/lstm_cell_486/MatMul_1/ReadVariableOpReadVariableOp7lstm_120_lstm_cell_486_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_120/lstm_cell_486/MatMul_1MatMullstm_120/zeros:output:06lstm_120/lstm_cell_486/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_120/lstm_cell_486/addAddV2'lstm_120/lstm_cell_486/MatMul:product:0)lstm_120/lstm_cell_486/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_120/lstm_cell_486/BiasAdd/ReadVariableOpReadVariableOp6lstm_120_lstm_cell_486_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_120/lstm_cell_486/BiasAddBiasAddlstm_120/lstm_cell_486/add:z:05lstm_120/lstm_cell_486/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_120/lstm_cell_486/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_120/lstm_cell_486/splitSplit/lstm_120/lstm_cell_486/split/split_dim:output:0'lstm_120/lstm_cell_486/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_120/lstm_cell_486/SigmoidSigmoid%lstm_120/lstm_cell_486/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_120/lstm_cell_486/Sigmoid_1Sigmoid%lstm_120/lstm_cell_486/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_120/lstm_cell_486/mulMul$lstm_120/lstm_cell_486/Sigmoid_1:y:0lstm_120/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_120/lstm_cell_486/ReluRelu%lstm_120/lstm_cell_486/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_120/lstm_cell_486/mul_1Mul"lstm_120/lstm_cell_486/Sigmoid:y:0)lstm_120/lstm_cell_486/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_120/lstm_cell_486/add_1AddV2lstm_120/lstm_cell_486/mul:z:0 lstm_120/lstm_cell_486/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_120/lstm_cell_486/Sigmoid_2Sigmoid%lstm_120/lstm_cell_486/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_120/lstm_cell_486/Relu_1Relu lstm_120/lstm_cell_486/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_120/lstm_cell_486/mul_2Mul$lstm_120/lstm_cell_486/Sigmoid_2:y:0+lstm_120/lstm_cell_486/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_120/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_120/TensorArrayV2_1TensorListReserve/lstm_120/TensorArrayV2_1/element_shape:output:0!lstm_120/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_120/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_120/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_120/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_120/whileWhile$lstm_120/while/loop_counter:output:0*lstm_120/while/maximum_iterations:output:0lstm_120/time:output:0!lstm_120/TensorArrayV2_1:handle:0lstm_120/zeros:output:0lstm_120/zeros_1:output:0!lstm_120/strided_slice_1:output:0@lstm_120/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_120_lstm_cell_486_matmul_readvariableop_resource7lstm_120_lstm_cell_486_matmul_1_readvariableop_resource6lstm_120_lstm_cell_486_biasadd_readvariableop_resource*
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
lstm_120_while_body_2952725*'
condR
lstm_120_while_cond_2952724*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_120/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_120/TensorArrayV2Stack/TensorListStackTensorListStacklstm_120/while:output:3Blstm_120/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_120/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_120/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_120/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_120/strided_slice_3StridedSlice4lstm_120/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_120/strided_slice_3/stack:output:0)lstm_120/strided_slice_3/stack_1:output:0)lstm_120/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_120/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_120/transpose_1	Transpose4lstm_120/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_120/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_120/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_121/ShapeShapelstm_120/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_121/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_121/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_121/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_121/strided_sliceStridedSlicelstm_121/Shape:output:0%lstm_121/strided_slice/stack:output:0'lstm_121/strided_slice/stack_1:output:0'lstm_121/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_121/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_121/zeros/packedPacklstm_121/strided_slice:output:0 lstm_121/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_121/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_121/zerosFilllstm_121/zeros/packed:output:0lstm_121/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_121/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_121/zeros_1/packedPacklstm_121/strided_slice:output:0"lstm_121/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_121/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_121/zeros_1Fill lstm_121/zeros_1/packed:output:0lstm_121/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_121/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_121/transpose	Transposelstm_120/transpose_1:y:0 lstm_121/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_121/Shape_1Shapelstm_121/transpose:y:0*
T0*
_output_shapes
:h
lstm_121/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_121/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_121/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_121/strided_slice_1StridedSlicelstm_121/Shape_1:output:0'lstm_121/strided_slice_1/stack:output:0)lstm_121/strided_slice_1/stack_1:output:0)lstm_121/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_121/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_121/TensorArrayV2TensorListReserve-lstm_121/TensorArrayV2/element_shape:output:0!lstm_121/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_121/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_121/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_121/transpose:y:0Glstm_121/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_121/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_121/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_121/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_121/strided_slice_2StridedSlicelstm_121/transpose:y:0'lstm_121/strided_slice_2/stack:output:0)lstm_121/strided_slice_2/stack_1:output:0)lstm_121/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_121/lstm_cell_487/MatMul/ReadVariableOpReadVariableOp5lstm_121_lstm_cell_487_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_121/lstm_cell_487/MatMulMatMul!lstm_121/strided_slice_2:output:04lstm_121/lstm_cell_487/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_121/lstm_cell_487/MatMul_1/ReadVariableOpReadVariableOp7lstm_121_lstm_cell_487_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_121/lstm_cell_487/MatMul_1MatMullstm_121/zeros:output:06lstm_121/lstm_cell_487/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_121/lstm_cell_487/addAddV2'lstm_121/lstm_cell_487/MatMul:product:0)lstm_121/lstm_cell_487/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_121/lstm_cell_487/BiasAdd/ReadVariableOpReadVariableOp6lstm_121_lstm_cell_487_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_121/lstm_cell_487/BiasAddBiasAddlstm_121/lstm_cell_487/add:z:05lstm_121/lstm_cell_487/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_121/lstm_cell_487/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_121/lstm_cell_487/splitSplit/lstm_121/lstm_cell_487/split/split_dim:output:0'lstm_121/lstm_cell_487/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_121/lstm_cell_487/SigmoidSigmoid%lstm_121/lstm_cell_487/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_121/lstm_cell_487/Sigmoid_1Sigmoid%lstm_121/lstm_cell_487/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_121/lstm_cell_487/mulMul$lstm_121/lstm_cell_487/Sigmoid_1:y:0lstm_121/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_121/lstm_cell_487/ReluRelu%lstm_121/lstm_cell_487/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_121/lstm_cell_487/mul_1Mul"lstm_121/lstm_cell_487/Sigmoid:y:0)lstm_121/lstm_cell_487/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_121/lstm_cell_487/add_1AddV2lstm_121/lstm_cell_487/mul:z:0 lstm_121/lstm_cell_487/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_121/lstm_cell_487/Sigmoid_2Sigmoid%lstm_121/lstm_cell_487/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_121/lstm_cell_487/Relu_1Relu lstm_121/lstm_cell_487/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_121/lstm_cell_487/mul_2Mul$lstm_121/lstm_cell_487/Sigmoid_2:y:0+lstm_121/lstm_cell_487/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_121/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_121/TensorArrayV2_1TensorListReserve/lstm_121/TensorArrayV2_1/element_shape:output:0!lstm_121/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_121/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_121/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_121/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_121/whileWhile$lstm_121/while/loop_counter:output:0*lstm_121/while/maximum_iterations:output:0lstm_121/time:output:0!lstm_121/TensorArrayV2_1:handle:0lstm_121/zeros:output:0lstm_121/zeros_1:output:0!lstm_121/strided_slice_1:output:0@lstm_121/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_121_lstm_cell_487_matmul_readvariableop_resource7lstm_121_lstm_cell_487_matmul_1_readvariableop_resource6lstm_121_lstm_cell_487_biasadd_readvariableop_resource*
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
lstm_121_while_body_2952864*'
condR
lstm_121_while_cond_2952863*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_121/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_121/TensorArrayV2Stack/TensorListStackTensorListStacklstm_121/while:output:3Blstm_121/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_121/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_121/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_121/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_121/strided_slice_3StridedSlice4lstm_121/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_121/strided_slice_3/stack:output:0)lstm_121/strided_slice_3/stack_1:output:0)lstm_121/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_121/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_121/transpose_1	Transpose4lstm_121/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_121/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_121/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_122/ShapeShapelstm_121/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_122/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_122/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_122/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_122/strided_sliceStridedSlicelstm_122/Shape:output:0%lstm_122/strided_slice/stack:output:0'lstm_122/strided_slice/stack_1:output:0'lstm_122/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_122/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_122/zeros/packedPacklstm_122/strided_slice:output:0 lstm_122/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_122/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_122/zerosFilllstm_122/zeros/packed:output:0lstm_122/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_122/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_122/zeros_1/packedPacklstm_122/strided_slice:output:0"lstm_122/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_122/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_122/zeros_1Fill lstm_122/zeros_1/packed:output:0lstm_122/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_122/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_122/transpose	Transposelstm_121/transpose_1:y:0 lstm_122/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_122/Shape_1Shapelstm_122/transpose:y:0*
T0*
_output_shapes
:h
lstm_122/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_122/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_122/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_122/strided_slice_1StridedSlicelstm_122/Shape_1:output:0'lstm_122/strided_slice_1/stack:output:0)lstm_122/strided_slice_1/stack_1:output:0)lstm_122/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_122/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_122/TensorArrayV2TensorListReserve-lstm_122/TensorArrayV2/element_shape:output:0!lstm_122/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_122/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_122/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_122/transpose:y:0Glstm_122/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_122/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_122/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_122/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_122/strided_slice_2StridedSlicelstm_122/transpose:y:0'lstm_122/strided_slice_2/stack:output:0)lstm_122/strided_slice_2/stack_1:output:0)lstm_122/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_122/lstm_cell_488/MatMul/ReadVariableOpReadVariableOp5lstm_122_lstm_cell_488_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_122/lstm_cell_488/MatMulMatMul!lstm_122/strided_slice_2:output:04lstm_122/lstm_cell_488/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_122/lstm_cell_488/MatMul_1/ReadVariableOpReadVariableOp7lstm_122_lstm_cell_488_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_122/lstm_cell_488/MatMul_1MatMullstm_122/zeros:output:06lstm_122/lstm_cell_488/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_122/lstm_cell_488/addAddV2'lstm_122/lstm_cell_488/MatMul:product:0)lstm_122/lstm_cell_488/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_122/lstm_cell_488/BiasAdd/ReadVariableOpReadVariableOp6lstm_122_lstm_cell_488_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_122/lstm_cell_488/BiasAddBiasAddlstm_122/lstm_cell_488/add:z:05lstm_122/lstm_cell_488/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_122/lstm_cell_488/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_122/lstm_cell_488/splitSplit/lstm_122/lstm_cell_488/split/split_dim:output:0'lstm_122/lstm_cell_488/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_122/lstm_cell_488/SigmoidSigmoid%lstm_122/lstm_cell_488/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_122/lstm_cell_488/Sigmoid_1Sigmoid%lstm_122/lstm_cell_488/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_122/lstm_cell_488/mulMul$lstm_122/lstm_cell_488/Sigmoid_1:y:0lstm_122/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_122/lstm_cell_488/ReluRelu%lstm_122/lstm_cell_488/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_122/lstm_cell_488/mul_1Mul"lstm_122/lstm_cell_488/Sigmoid:y:0)lstm_122/lstm_cell_488/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_122/lstm_cell_488/add_1AddV2lstm_122/lstm_cell_488/mul:z:0 lstm_122/lstm_cell_488/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_122/lstm_cell_488/Sigmoid_2Sigmoid%lstm_122/lstm_cell_488/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_122/lstm_cell_488/Relu_1Relu lstm_122/lstm_cell_488/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_122/lstm_cell_488/mul_2Mul$lstm_122/lstm_cell_488/Sigmoid_2:y:0+lstm_122/lstm_cell_488/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_122/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_122/TensorArrayV2_1TensorListReserve/lstm_122/TensorArrayV2_1/element_shape:output:0!lstm_122/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_122/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_122/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_122/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_122/whileWhile$lstm_122/while/loop_counter:output:0*lstm_122/while/maximum_iterations:output:0lstm_122/time:output:0!lstm_122/TensorArrayV2_1:handle:0lstm_122/zeros:output:0lstm_122/zeros_1:output:0!lstm_122/strided_slice_1:output:0@lstm_122/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_122_lstm_cell_488_matmul_readvariableop_resource7lstm_122_lstm_cell_488_matmul_1_readvariableop_resource6lstm_122_lstm_cell_488_biasadd_readvariableop_resource*
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
lstm_122_while_body_2953003*'
condR
lstm_122_while_cond_2953002*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_122/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_122/TensorArrayV2Stack/TensorListStackTensorListStacklstm_122/while:output:3Blstm_122/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_122/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_122/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_122/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_122/strided_slice_3StridedSlice4lstm_122/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_122/strided_slice_3/stack:output:0)lstm_122/strided_slice_3/stack_1:output:0)lstm_122/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_122/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_122/transpose_1	Transpose4lstm_122/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_122/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_122/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_40/MatMul/ReadVariableOpReadVariableOp'dense_40_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_40/MatMulMatMul!lstm_122/strided_slice_3:output:0&dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_40/BiasAdd/ReadVariableOpReadVariableOp(dense_40_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_40/BiasAddBiasAdddense_40/MatMul:product:0'dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_40/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_40/BiasAdd/ReadVariableOp^dense_40/MatMul/ReadVariableOp.^lstm_120/lstm_cell_486/BiasAdd/ReadVariableOp-^lstm_120/lstm_cell_486/MatMul/ReadVariableOp/^lstm_120/lstm_cell_486/MatMul_1/ReadVariableOp^lstm_120/while.^lstm_121/lstm_cell_487/BiasAdd/ReadVariableOp-^lstm_121/lstm_cell_487/MatMul/ReadVariableOp/^lstm_121/lstm_cell_487/MatMul_1/ReadVariableOp^lstm_121/while.^lstm_122/lstm_cell_488/BiasAdd/ReadVariableOp-^lstm_122/lstm_cell_488/MatMul/ReadVariableOp/^lstm_122/lstm_cell_488/MatMul_1/ReadVariableOp^lstm_122/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_40/BiasAdd/ReadVariableOpdense_40/BiasAdd/ReadVariableOp2@
dense_40/MatMul/ReadVariableOpdense_40/MatMul/ReadVariableOp2^
-lstm_120/lstm_cell_486/BiasAdd/ReadVariableOp-lstm_120/lstm_cell_486/BiasAdd/ReadVariableOp2\
,lstm_120/lstm_cell_486/MatMul/ReadVariableOp,lstm_120/lstm_cell_486/MatMul/ReadVariableOp2`
.lstm_120/lstm_cell_486/MatMul_1/ReadVariableOp.lstm_120/lstm_cell_486/MatMul_1/ReadVariableOp2 
lstm_120/whilelstm_120/while2^
-lstm_121/lstm_cell_487/BiasAdd/ReadVariableOp-lstm_121/lstm_cell_487/BiasAdd/ReadVariableOp2\
,lstm_121/lstm_cell_487/MatMul/ReadVariableOp,lstm_121/lstm_cell_487/MatMul/ReadVariableOp2`
.lstm_121/lstm_cell_487/MatMul_1/ReadVariableOp.lstm_121/lstm_cell_487/MatMul_1/ReadVariableOp2 
lstm_121/whilelstm_121/while2^
-lstm_122/lstm_cell_488/BiasAdd/ReadVariableOp-lstm_122/lstm_cell_488/BiasAdd/ReadVariableOp2\
,lstm_122/lstm_cell_488/MatMul/ReadVariableOp,lstm_122/lstm_cell_488/MatMul/ReadVariableOp2`
.lstm_122/lstm_cell_488/MatMul_1/ReadVariableOp.lstm_122/lstm_cell_488/MatMul_1/ReadVariableOp2 
lstm_122/whilelstm_122/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_120_layer_call_fn_2953115
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
E__inference_lstm_120_layer_call_and_return_conditional_losses_2950266|
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
?
while_cond_2954713
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2954713___redundant_placeholder05
1while_while_cond_2954713___redundant_placeholder15
1while_while_cond_2954713___redundant_placeholder25
1while_while_cond_2954713___redundant_placeholder3
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
while_cond_2953481
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2953481___redundant_placeholder05
1while_while_cond_2953481___redundant_placeholder15
1while_while_cond_2953481___redundant_placeholder25
1while_while_cond_2953481___redundant_placeholder3
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
while_cond_2953338
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2953338___redundant_placeholder05
1while_while_cond_2953338___redundant_placeholder15
1while_while_cond_2953338___redundant_placeholder25
1while_while_cond_2953338___redundant_placeholder3
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
J__inference_sequential_40_layer_call_and_return_conditional_losses_2952038

inputs#
lstm_120_2952011:	?#
lstm_120_2952013:	d?
lstm_120_2952015:	?#
lstm_121_2952018:	d?#
lstm_121_2952020:	2?
lstm_121_2952022:	?"
lstm_122_2952025:2("
lstm_122_2952027:
(
lstm_122_2952029:("
dense_40_2952032:

dense_40_2952034:
identity?? dense_40/StatefulPartitionedCall? lstm_120/StatefulPartitionedCall? lstm_121/StatefulPartitionedCall? lstm_122/StatefulPartitionedCall?
 lstm_120/StatefulPartitionedCallStatefulPartitionedCallinputslstm_120_2952011lstm_120_2952013lstm_120_2952015*
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
E__inference_lstm_120_layer_call_and_return_conditional_losses_2951970?
 lstm_121/StatefulPartitionedCallStatefulPartitionedCall)lstm_120/StatefulPartitionedCall:output:0lstm_121_2952018lstm_121_2952020lstm_121_2952022*
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
E__inference_lstm_121_layer_call_and_return_conditional_losses_2951805?
 lstm_122/StatefulPartitionedCallStatefulPartitionedCall)lstm_121/StatefulPartitionedCall:output:0lstm_122_2952025lstm_122_2952027lstm_122_2952029*
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
E__inference_lstm_122_layer_call_and_return_conditional_losses_2951640?
 dense_40/StatefulPartitionedCallStatefulPartitionedCall)lstm_122/StatefulPartitionedCall:output:0dense_40_2952032dense_40_2952034*
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
E__inference_dense_40_layer_call_and_return_conditional_losses_2951442x
IdentityIdentity)dense_40/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_40/StatefulPartitionedCall!^lstm_120/StatefulPartitionedCall!^lstm_121/StatefulPartitionedCall!^lstm_122/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2D
 lstm_120/StatefulPartitionedCall lstm_120/StatefulPartitionedCall2D
 lstm_121/StatefulPartitionedCall lstm_121/StatefulPartitionedCall2D
 lstm_122/StatefulPartitionedCall lstm_122/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_488_layer_call_and_return_conditional_losses_2955254

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
E__inference_dense_40_layer_call_and_return_conditional_losses_2954960

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
while_body_2954857
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_488_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_488_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_488_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_488_matmul_readvariableop_resource:2(F
4while_lstm_cell_488_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_488_biasadd_readvariableop_resource:(??*while/lstm_cell_488/BiasAdd/ReadVariableOp?)while/lstm_cell_488/MatMul/ReadVariableOp?+while/lstm_cell_488/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_488/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_488_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_488/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_488/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_488/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_488_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_488/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_488/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_488/addAddV2$while/lstm_cell_488/MatMul:product:0&while/lstm_cell_488/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_488/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_488_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_488/BiasAddBiasAddwhile/lstm_cell_488/add:z:02while/lstm_cell_488/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_488/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_488/splitSplit,while/lstm_cell_488/split/split_dim:output:0$while/lstm_cell_488/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_488/SigmoidSigmoid"while/lstm_cell_488/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_488/Sigmoid_1Sigmoid"while/lstm_cell_488/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_488/mulMul!while/lstm_cell_488/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_488/ReluRelu"while/lstm_cell_488/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_488/mul_1Mulwhile/lstm_cell_488/Sigmoid:y:0&while/lstm_cell_488/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_488/add_1AddV2while/lstm_cell_488/mul:z:0while/lstm_cell_488/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_488/Sigmoid_2Sigmoid"while/lstm_cell_488/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_488/Relu_1Reluwhile/lstm_cell_488/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_488/mul_2Mul!while/lstm_cell_488/Sigmoid_2:y:0(while/lstm_cell_488/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_488/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_488/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_488/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_488/BiasAdd/ReadVariableOp*^while/lstm_cell_488/MatMul/ReadVariableOp,^while/lstm_cell_488/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_488_biasadd_readvariableop_resource5while_lstm_cell_488_biasadd_readvariableop_resource_0"n
4while_lstm_cell_488_matmul_1_readvariableop_resource6while_lstm_cell_488_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_488_matmul_readvariableop_resource4while_lstm_cell_488_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_488/BiasAdd/ReadVariableOp*while/lstm_cell_488/BiasAdd/ReadVariableOp2V
)while/lstm_cell_488/MatMul/ReadVariableOp)while/lstm_cell_488/MatMul/ReadVariableOp2Z
+while/lstm_cell_488/MatMul_1/ReadVariableOp+while/lstm_cell_488/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_121_while_cond_2952863.
*lstm_121_while_lstm_121_while_loop_counter4
0lstm_121_while_lstm_121_while_maximum_iterations
lstm_121_while_placeholder 
lstm_121_while_placeholder_1 
lstm_121_while_placeholder_2 
lstm_121_while_placeholder_30
,lstm_121_while_less_lstm_121_strided_slice_1G
Clstm_121_while_lstm_121_while_cond_2952863___redundant_placeholder0G
Clstm_121_while_lstm_121_while_cond_2952863___redundant_placeholder1G
Clstm_121_while_lstm_121_while_cond_2952863___redundant_placeholder2G
Clstm_121_while_lstm_121_while_cond_2952863___redundant_placeholder3
lstm_121_while_identity
?
lstm_121/while/LessLesslstm_121_while_placeholder,lstm_121_while_less_lstm_121_strided_slice_1*
T0*
_output_shapes
: ]
lstm_121/while/IdentityIdentitylstm_121/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_121_while_identity lstm_121/while/Identity:output:0*(
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
/__inference_lstm_cell_487_layer_call_fn_2955075

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
J__inference_lstm_cell_487_layer_call_and_return_conditional_losses_2950342o
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

?
%__inference_signature_wrapper_2952185
lstm_120_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_120_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2949925o
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
_user_specified_namelstm_120_input
?
?
while_cond_2951720
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2951720___redundant_placeholder05
1while_while_cond_2951720___redundant_placeholder15
1while_while_cond_2951720___redundant_placeholder25
1while_while_cond_2951720___redundant_placeholder3
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
while_body_2950356
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_487_2950380_0:	d?0
while_lstm_cell_487_2950382_0:	2?,
while_lstm_cell_487_2950384_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_487_2950380:	d?.
while_lstm_cell_487_2950382:	2?*
while_lstm_cell_487_2950384:	???+while/lstm_cell_487/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_487/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_487_2950380_0while_lstm_cell_487_2950382_0while_lstm_cell_487_2950384_0*
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
J__inference_lstm_cell_487_layer_call_and_return_conditional_losses_2950342?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_487/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_487/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_487/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_487/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_487_2950380while_lstm_cell_487_2950380_0"<
while_lstm_cell_487_2950382while_lstm_cell_487_2950382_0"<
while_lstm_cell_487_2950384while_lstm_cell_487_2950384_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_487/StatefulPartitionedCall+while/lstm_cell_487/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_121_layer_call_fn_2953753

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
E__inference_lstm_121_layer_call_and_return_conditional_losses_2951805s
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
?S
?
)sequential_40_lstm_121_while_body_2949696J
Fsequential_40_lstm_121_while_sequential_40_lstm_121_while_loop_counterP
Lsequential_40_lstm_121_while_sequential_40_lstm_121_while_maximum_iterations,
(sequential_40_lstm_121_while_placeholder.
*sequential_40_lstm_121_while_placeholder_1.
*sequential_40_lstm_121_while_placeholder_2.
*sequential_40_lstm_121_while_placeholder_3I
Esequential_40_lstm_121_while_sequential_40_lstm_121_strided_slice_1_0?
?sequential_40_lstm_121_while_tensorarrayv2read_tensorlistgetitem_sequential_40_lstm_121_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_40_lstm_121_while_lstm_cell_487_matmul_readvariableop_resource_0:	d?`
Msequential_40_lstm_121_while_lstm_cell_487_matmul_1_readvariableop_resource_0:	2?[
Lsequential_40_lstm_121_while_lstm_cell_487_biasadd_readvariableop_resource_0:	?)
%sequential_40_lstm_121_while_identity+
'sequential_40_lstm_121_while_identity_1+
'sequential_40_lstm_121_while_identity_2+
'sequential_40_lstm_121_while_identity_3+
'sequential_40_lstm_121_while_identity_4+
'sequential_40_lstm_121_while_identity_5G
Csequential_40_lstm_121_while_sequential_40_lstm_121_strided_slice_1?
sequential_40_lstm_121_while_tensorarrayv2read_tensorlistgetitem_sequential_40_lstm_121_tensorarrayunstack_tensorlistfromtensor\
Isequential_40_lstm_121_while_lstm_cell_487_matmul_readvariableop_resource:	d?^
Ksequential_40_lstm_121_while_lstm_cell_487_matmul_1_readvariableop_resource:	2?Y
Jsequential_40_lstm_121_while_lstm_cell_487_biasadd_readvariableop_resource:	???Asequential_40/lstm_121/while/lstm_cell_487/BiasAdd/ReadVariableOp?@sequential_40/lstm_121/while/lstm_cell_487/MatMul/ReadVariableOp?Bsequential_40/lstm_121/while/lstm_cell_487/MatMul_1/ReadVariableOp?
Nsequential_40/lstm_121/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_40/lstm_121/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_40_lstm_121_while_tensorarrayv2read_tensorlistgetitem_sequential_40_lstm_121_tensorarrayunstack_tensorlistfromtensor_0(sequential_40_lstm_121_while_placeholderWsequential_40/lstm_121/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_40/lstm_121/while/lstm_cell_487/MatMul/ReadVariableOpReadVariableOpKsequential_40_lstm_121_while_lstm_cell_487_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_40/lstm_121/while/lstm_cell_487/MatMulMatMulGsequential_40/lstm_121/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_40/lstm_121/while/lstm_cell_487/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_40/lstm_121/while/lstm_cell_487/MatMul_1/ReadVariableOpReadVariableOpMsequential_40_lstm_121_while_lstm_cell_487_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_40/lstm_121/while/lstm_cell_487/MatMul_1MatMul*sequential_40_lstm_121_while_placeholder_2Jsequential_40/lstm_121/while/lstm_cell_487/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_40/lstm_121/while/lstm_cell_487/addAddV2;sequential_40/lstm_121/while/lstm_cell_487/MatMul:product:0=sequential_40/lstm_121/while/lstm_cell_487/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_40/lstm_121/while/lstm_cell_487/BiasAdd/ReadVariableOpReadVariableOpLsequential_40_lstm_121_while_lstm_cell_487_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_40/lstm_121/while/lstm_cell_487/BiasAddBiasAdd2sequential_40/lstm_121/while/lstm_cell_487/add:z:0Isequential_40/lstm_121/while/lstm_cell_487/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_40/lstm_121/while/lstm_cell_487/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_40/lstm_121/while/lstm_cell_487/splitSplitCsequential_40/lstm_121/while/lstm_cell_487/split/split_dim:output:0;sequential_40/lstm_121/while/lstm_cell_487/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_40/lstm_121/while/lstm_cell_487/SigmoidSigmoid9sequential_40/lstm_121/while/lstm_cell_487/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_40/lstm_121/while/lstm_cell_487/Sigmoid_1Sigmoid9sequential_40/lstm_121/while/lstm_cell_487/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_40/lstm_121/while/lstm_cell_487/mulMul8sequential_40/lstm_121/while/lstm_cell_487/Sigmoid_1:y:0*sequential_40_lstm_121_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_40/lstm_121/while/lstm_cell_487/ReluRelu9sequential_40/lstm_121/while/lstm_cell_487/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_40/lstm_121/while/lstm_cell_487/mul_1Mul6sequential_40/lstm_121/while/lstm_cell_487/Sigmoid:y:0=sequential_40/lstm_121/while/lstm_cell_487/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_40/lstm_121/while/lstm_cell_487/add_1AddV22sequential_40/lstm_121/while/lstm_cell_487/mul:z:04sequential_40/lstm_121/while/lstm_cell_487/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_40/lstm_121/while/lstm_cell_487/Sigmoid_2Sigmoid9sequential_40/lstm_121/while/lstm_cell_487/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_40/lstm_121/while/lstm_cell_487/Relu_1Relu4sequential_40/lstm_121/while/lstm_cell_487/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_40/lstm_121/while/lstm_cell_487/mul_2Mul8sequential_40/lstm_121/while/lstm_cell_487/Sigmoid_2:y:0?sequential_40/lstm_121/while/lstm_cell_487/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_40/lstm_121/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_40_lstm_121_while_placeholder_1(sequential_40_lstm_121_while_placeholder4sequential_40/lstm_121/while/lstm_cell_487/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_40/lstm_121/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_40/lstm_121/while/addAddV2(sequential_40_lstm_121_while_placeholder+sequential_40/lstm_121/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_40/lstm_121/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_40/lstm_121/while/add_1AddV2Fsequential_40_lstm_121_while_sequential_40_lstm_121_while_loop_counter-sequential_40/lstm_121/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_40/lstm_121/while/IdentityIdentity&sequential_40/lstm_121/while/add_1:z:0"^sequential_40/lstm_121/while/NoOp*
T0*
_output_shapes
: ?
'sequential_40/lstm_121/while/Identity_1IdentityLsequential_40_lstm_121_while_sequential_40_lstm_121_while_maximum_iterations"^sequential_40/lstm_121/while/NoOp*
T0*
_output_shapes
: ?
'sequential_40/lstm_121/while/Identity_2Identity$sequential_40/lstm_121/while/add:z:0"^sequential_40/lstm_121/while/NoOp*
T0*
_output_shapes
: ?
'sequential_40/lstm_121/while/Identity_3IdentityQsequential_40/lstm_121/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_40/lstm_121/while/NoOp*
T0*
_output_shapes
: ?
'sequential_40/lstm_121/while/Identity_4Identity4sequential_40/lstm_121/while/lstm_cell_487/mul_2:z:0"^sequential_40/lstm_121/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_40/lstm_121/while/Identity_5Identity4sequential_40/lstm_121/while/lstm_cell_487/add_1:z:0"^sequential_40/lstm_121/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_40/lstm_121/while/NoOpNoOpB^sequential_40/lstm_121/while/lstm_cell_487/BiasAdd/ReadVariableOpA^sequential_40/lstm_121/while/lstm_cell_487/MatMul/ReadVariableOpC^sequential_40/lstm_121/while/lstm_cell_487/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_40_lstm_121_while_identity.sequential_40/lstm_121/while/Identity:output:0"[
'sequential_40_lstm_121_while_identity_10sequential_40/lstm_121/while/Identity_1:output:0"[
'sequential_40_lstm_121_while_identity_20sequential_40/lstm_121/while/Identity_2:output:0"[
'sequential_40_lstm_121_while_identity_30sequential_40/lstm_121/while/Identity_3:output:0"[
'sequential_40_lstm_121_while_identity_40sequential_40/lstm_121/while/Identity_4:output:0"[
'sequential_40_lstm_121_while_identity_50sequential_40/lstm_121/while/Identity_5:output:0"?
Jsequential_40_lstm_121_while_lstm_cell_487_biasadd_readvariableop_resourceLsequential_40_lstm_121_while_lstm_cell_487_biasadd_readvariableop_resource_0"?
Ksequential_40_lstm_121_while_lstm_cell_487_matmul_1_readvariableop_resourceMsequential_40_lstm_121_while_lstm_cell_487_matmul_1_readvariableop_resource_0"?
Isequential_40_lstm_121_while_lstm_cell_487_matmul_readvariableop_resourceKsequential_40_lstm_121_while_lstm_cell_487_matmul_readvariableop_resource_0"?
Csequential_40_lstm_121_while_sequential_40_lstm_121_strided_slice_1Esequential_40_lstm_121_while_sequential_40_lstm_121_strided_slice_1_0"?
sequential_40_lstm_121_while_tensorarrayv2read_tensorlistgetitem_sequential_40_lstm_121_tensorarrayunstack_tensorlistfromtensor?sequential_40_lstm_121_while_tensorarrayv2read_tensorlistgetitem_sequential_40_lstm_121_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_40/lstm_121/while/lstm_cell_487/BiasAdd/ReadVariableOpAsequential_40/lstm_121/while/lstm_cell_487/BiasAdd/ReadVariableOp2?
@sequential_40/lstm_121/while/lstm_cell_487/MatMul/ReadVariableOp@sequential_40/lstm_121/while/lstm_cell_487/MatMul/ReadVariableOp2?
Bsequential_40/lstm_121/while/lstm_cell_487/MatMul_1/ReadVariableOpBsequential_40/lstm_121/while/lstm_cell_487/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_486_layer_call_and_return_conditional_losses_2955026

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
*__inference_lstm_121_layer_call_fn_2953720
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
E__inference_lstm_121_layer_call_and_return_conditional_losses_2950425|
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
while_cond_2951555
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2951555___redundant_placeholder05
1while_while_cond_2951555___redundant_placeholder15
1while_while_cond_2951555___redundant_placeholder25
1while_while_cond_2951555___redundant_placeholder3
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
)sequential_40_lstm_120_while_cond_2949556J
Fsequential_40_lstm_120_while_sequential_40_lstm_120_while_loop_counterP
Lsequential_40_lstm_120_while_sequential_40_lstm_120_while_maximum_iterations,
(sequential_40_lstm_120_while_placeholder.
*sequential_40_lstm_120_while_placeholder_1.
*sequential_40_lstm_120_while_placeholder_2.
*sequential_40_lstm_120_while_placeholder_3L
Hsequential_40_lstm_120_while_less_sequential_40_lstm_120_strided_slice_1c
_sequential_40_lstm_120_while_sequential_40_lstm_120_while_cond_2949556___redundant_placeholder0c
_sequential_40_lstm_120_while_sequential_40_lstm_120_while_cond_2949556___redundant_placeholder1c
_sequential_40_lstm_120_while_sequential_40_lstm_120_while_cond_2949556___redundant_placeholder2c
_sequential_40_lstm_120_while_sequential_40_lstm_120_while_cond_2949556___redundant_placeholder3)
%sequential_40_lstm_120_while_identity
?
!sequential_40/lstm_120/while/LessLess(sequential_40_lstm_120_while_placeholderHsequential_40_lstm_120_while_less_sequential_40_lstm_120_strided_slice_1*
T0*
_output_shapes
: y
%sequential_40/lstm_120/while/IdentityIdentity%sequential_40/lstm_120/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_40_lstm_120_while_identity.sequential_40/lstm_120/while/Identity:output:0*(
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
J__inference_lstm_cell_486_layer_call_and_return_conditional_losses_2955058

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
lstm_121_while_cond_2952436.
*lstm_121_while_lstm_121_while_loop_counter4
0lstm_121_while_lstm_121_while_maximum_iterations
lstm_121_while_placeholder 
lstm_121_while_placeholder_1 
lstm_121_while_placeholder_2 
lstm_121_while_placeholder_30
,lstm_121_while_less_lstm_121_strided_slice_1G
Clstm_121_while_lstm_121_while_cond_2952436___redundant_placeholder0G
Clstm_121_while_lstm_121_while_cond_2952436___redundant_placeholder1G
Clstm_121_while_lstm_121_while_cond_2952436___redundant_placeholder2G
Clstm_121_while_lstm_121_while_cond_2952436___redundant_placeholder3
lstm_121_while_identity
?
lstm_121/while/LessLesslstm_121_while_placeholder,lstm_121_while_less_lstm_121_strided_slice_1*
T0*
_output_shapes
: ]
lstm_121/while/IdentityIdentitylstm_121/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_121_while_identity lstm_121/while/Identity:output:0*(
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
while_body_2950197
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_486_2950221_0:	?0
while_lstm_cell_486_2950223_0:	d?,
while_lstm_cell_486_2950225_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_486_2950221:	?.
while_lstm_cell_486_2950223:	d?*
while_lstm_cell_486_2950225:	???+while/lstm_cell_486/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_486/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_486_2950221_0while_lstm_cell_486_2950223_0while_lstm_cell_486_2950225_0*
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
J__inference_lstm_cell_486_layer_call_and_return_conditional_losses_2950138?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_486/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_486/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_486/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_486/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_486_2950221while_lstm_cell_486_2950221_0"<
while_lstm_cell_486_2950223while_lstm_cell_486_2950223_0"<
while_lstm_cell_486_2950225while_lstm_cell_486_2950225_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_486/StatefulPartitionedCall+while/lstm_cell_486/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2950355
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2950355___redundant_placeholder05
1while_while_cond_2950355___redundant_placeholder15
1while_while_cond_2950355___redundant_placeholder25
1while_while_cond_2950355___redundant_placeholder3
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
*__inference_lstm_120_layer_call_fn_2953137

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
E__inference_lstm_120_layer_call_and_return_conditional_losses_2951970s
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
?K
?
E__inference_lstm_122_layer_call_and_return_conditional_losses_2954655
inputs_0>
,lstm_cell_488_matmul_readvariableop_resource:2(@
.lstm_cell_488_matmul_1_readvariableop_resource:
(;
-lstm_cell_488_biasadd_readvariableop_resource:(
identity??$lstm_cell_488/BiasAdd/ReadVariableOp?#lstm_cell_488/MatMul/ReadVariableOp?%lstm_cell_488/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_488/MatMul/ReadVariableOpReadVariableOp,lstm_cell_488_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_488/MatMulMatMulstrided_slice_2:output:0+lstm_cell_488/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_488/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_488_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_488/MatMul_1MatMulzeros:output:0-lstm_cell_488/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_488/addAddV2lstm_cell_488/MatMul:product:0 lstm_cell_488/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_488/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_488_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_488/BiasAddBiasAddlstm_cell_488/add:z:0,lstm_cell_488/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_488/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_488/splitSplit&lstm_cell_488/split/split_dim:output:0lstm_cell_488/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_488/SigmoidSigmoidlstm_cell_488/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_488/Sigmoid_1Sigmoidlstm_cell_488/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_488/mulMullstm_cell_488/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_488/ReluRelulstm_cell_488/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_488/mul_1Mullstm_cell_488/Sigmoid:y:0 lstm_cell_488/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_488/add_1AddV2lstm_cell_488/mul:z:0lstm_cell_488/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_488/Sigmoid_2Sigmoidlstm_cell_488/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_488/Relu_1Relulstm_cell_488/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_488/mul_2Mullstm_cell_488/Sigmoid_2:y:0"lstm_cell_488/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_488_matmul_readvariableop_resource.lstm_cell_488_matmul_1_readvariableop_resource-lstm_cell_488_biasadd_readvariableop_resource*
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
while_body_2954571*
condR
while_cond_2954570*K
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
NoOpNoOp%^lstm_cell_488/BiasAdd/ReadVariableOp$^lstm_cell_488/MatMul/ReadVariableOp&^lstm_cell_488/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_488/BiasAdd/ReadVariableOp$lstm_cell_488/BiasAdd/ReadVariableOp2J
#lstm_cell_488/MatMul/ReadVariableOp#lstm_cell_488/MatMul/ReadVariableOp2N
%lstm_cell_488/MatMul_1/ReadVariableOp%lstm_cell_488/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_488_layer_call_and_return_conditional_losses_2950838

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
E__inference_lstm_122_layer_call_and_return_conditional_losses_2954798

inputs>
,lstm_cell_488_matmul_readvariableop_resource:2(@
.lstm_cell_488_matmul_1_readvariableop_resource:
(;
-lstm_cell_488_biasadd_readvariableop_resource:(
identity??$lstm_cell_488/BiasAdd/ReadVariableOp?#lstm_cell_488/MatMul/ReadVariableOp?%lstm_cell_488/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_488/MatMul/ReadVariableOpReadVariableOp,lstm_cell_488_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_488/MatMulMatMulstrided_slice_2:output:0+lstm_cell_488/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_488/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_488_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_488/MatMul_1MatMulzeros:output:0-lstm_cell_488/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_488/addAddV2lstm_cell_488/MatMul:product:0 lstm_cell_488/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_488/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_488_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_488/BiasAddBiasAddlstm_cell_488/add:z:0,lstm_cell_488/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_488/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_488/splitSplit&lstm_cell_488/split/split_dim:output:0lstm_cell_488/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_488/SigmoidSigmoidlstm_cell_488/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_488/Sigmoid_1Sigmoidlstm_cell_488/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_488/mulMullstm_cell_488/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_488/ReluRelulstm_cell_488/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_488/mul_1Mullstm_cell_488/Sigmoid:y:0 lstm_cell_488/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_488/add_1AddV2lstm_cell_488/mul:z:0lstm_cell_488/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_488/Sigmoid_2Sigmoidlstm_cell_488/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_488/Relu_1Relulstm_cell_488/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_488/mul_2Mullstm_cell_488/Sigmoid_2:y:0"lstm_cell_488/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_488_matmul_readvariableop_resource.lstm_cell_488_matmul_1_readvariableop_resource-lstm_cell_488_biasadd_readvariableop_resource*
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
while_body_2954714*
condR
while_cond_2954713*K
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
NoOpNoOp%^lstm_cell_488/BiasAdd/ReadVariableOp$^lstm_cell_488/MatMul/ReadVariableOp&^lstm_cell_488/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_488/BiasAdd/ReadVariableOp$lstm_cell_488/BiasAdd/ReadVariableOp2J
#lstm_cell_488/MatMul/ReadVariableOp#lstm_cell_488/MatMul/ReadVariableOp2N
%lstm_cell_488/MatMul_1/ReadVariableOp%lstm_cell_488/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_2950006
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_486_2950030_0:	?0
while_lstm_cell_486_2950032_0:	d?,
while_lstm_cell_486_2950034_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_486_2950030:	?.
while_lstm_cell_486_2950032:	d?*
while_lstm_cell_486_2950034:	???+while/lstm_cell_486/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_486/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_486_2950030_0while_lstm_cell_486_2950032_0while_lstm_cell_486_2950034_0*
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
J__inference_lstm_cell_486_layer_call_and_return_conditional_losses_2949992?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_486/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_486/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_486/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_486/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_486_2950030while_lstm_cell_486_2950030_0"<
while_lstm_cell_486_2950032while_lstm_cell_486_2950032_0"<
while_lstm_cell_486_2950034while_lstm_cell_486_2950034_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_486/StatefulPartitionedCall+while/lstm_cell_486/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_120_layer_call_and_return_conditional_losses_2953709

inputs?
,lstm_cell_486_matmul_readvariableop_resource:	?A
.lstm_cell_486_matmul_1_readvariableop_resource:	d?<
-lstm_cell_486_biasadd_readvariableop_resource:	?
identity??$lstm_cell_486/BiasAdd/ReadVariableOp?#lstm_cell_486/MatMul/ReadVariableOp?%lstm_cell_486/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_486/MatMul/ReadVariableOpReadVariableOp,lstm_cell_486_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_486/MatMulMatMulstrided_slice_2:output:0+lstm_cell_486/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_486/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_486_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_486/MatMul_1MatMulzeros:output:0-lstm_cell_486/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_486/addAddV2lstm_cell_486/MatMul:product:0 lstm_cell_486/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_486/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_486_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_486/BiasAddBiasAddlstm_cell_486/add:z:0,lstm_cell_486/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_486/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_486/splitSplit&lstm_cell_486/split/split_dim:output:0lstm_cell_486/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_486/SigmoidSigmoidlstm_cell_486/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_486/Sigmoid_1Sigmoidlstm_cell_486/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_486/mulMullstm_cell_486/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_486/ReluRelulstm_cell_486/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_486/mul_1Mullstm_cell_486/Sigmoid:y:0 lstm_cell_486/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_486/add_1AddV2lstm_cell_486/mul:z:0lstm_cell_486/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_486/Sigmoid_2Sigmoidlstm_cell_486/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_486/Relu_1Relulstm_cell_486/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_486/mul_2Mullstm_cell_486/Sigmoid_2:y:0"lstm_cell_486/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_486_matmul_readvariableop_resource.lstm_cell_486_matmul_1_readvariableop_resource-lstm_cell_486_biasadd_readvariableop_resource*
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
while_body_2953625*
condR
while_cond_2953624*K
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
NoOpNoOp%^lstm_cell_486/BiasAdd/ReadVariableOp$^lstm_cell_486/MatMul/ReadVariableOp&^lstm_cell_486/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_486/BiasAdd/ReadVariableOp$lstm_cell_486/BiasAdd/ReadVariableOp2J
#lstm_cell_486/MatMul/ReadVariableOp#lstm_cell_486/MatMul/ReadVariableOp2N
%lstm_cell_486/MatMul_1/ReadVariableOp%lstm_cell_486/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_486_layer_call_and_return_conditional_losses_2950138

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
E__inference_lstm_122_layer_call_and_return_conditional_losses_2951424

inputs>
,lstm_cell_488_matmul_readvariableop_resource:2(@
.lstm_cell_488_matmul_1_readvariableop_resource:
(;
-lstm_cell_488_biasadd_readvariableop_resource:(
identity??$lstm_cell_488/BiasAdd/ReadVariableOp?#lstm_cell_488/MatMul/ReadVariableOp?%lstm_cell_488/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_488/MatMul/ReadVariableOpReadVariableOp,lstm_cell_488_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_488/MatMulMatMulstrided_slice_2:output:0+lstm_cell_488/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_488/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_488_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_488/MatMul_1MatMulzeros:output:0-lstm_cell_488/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_488/addAddV2lstm_cell_488/MatMul:product:0 lstm_cell_488/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_488/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_488_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_488/BiasAddBiasAddlstm_cell_488/add:z:0,lstm_cell_488/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_488/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_488/splitSplit&lstm_cell_488/split/split_dim:output:0lstm_cell_488/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_488/SigmoidSigmoidlstm_cell_488/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_488/Sigmoid_1Sigmoidlstm_cell_488/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_488/mulMullstm_cell_488/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_488/ReluRelulstm_cell_488/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_488/mul_1Mullstm_cell_488/Sigmoid:y:0 lstm_cell_488/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_488/add_1AddV2lstm_cell_488/mul:z:0lstm_cell_488/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_488/Sigmoid_2Sigmoidlstm_cell_488/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_488/Relu_1Relulstm_cell_488/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_488/mul_2Mullstm_cell_488/Sigmoid_2:y:0"lstm_cell_488/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_488_matmul_readvariableop_resource.lstm_cell_488_matmul_1_readvariableop_resource-lstm_cell_488_biasadd_readvariableop_resource*
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
while_body_2951340*
condR
while_cond_2951339*K
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
NoOpNoOp%^lstm_cell_488/BiasAdd/ReadVariableOp$^lstm_cell_488/MatMul/ReadVariableOp&^lstm_cell_488/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_488/BiasAdd/ReadVariableOp$lstm_cell_488/BiasAdd/ReadVariableOp2J
#lstm_cell_488/MatMul/ReadVariableOp#lstm_cell_488/MatMul/ReadVariableOp2N
%lstm_cell_488/MatMul_1/ReadVariableOp%lstm_cell_488/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_120_layer_call_and_return_conditional_losses_2953566

inputs?
,lstm_cell_486_matmul_readvariableop_resource:	?A
.lstm_cell_486_matmul_1_readvariableop_resource:	d?<
-lstm_cell_486_biasadd_readvariableop_resource:	?
identity??$lstm_cell_486/BiasAdd/ReadVariableOp?#lstm_cell_486/MatMul/ReadVariableOp?%lstm_cell_486/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_486/MatMul/ReadVariableOpReadVariableOp,lstm_cell_486_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_486/MatMulMatMulstrided_slice_2:output:0+lstm_cell_486/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_486/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_486_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_486/MatMul_1MatMulzeros:output:0-lstm_cell_486/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_486/addAddV2lstm_cell_486/MatMul:product:0 lstm_cell_486/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_486/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_486_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_486/BiasAddBiasAddlstm_cell_486/add:z:0,lstm_cell_486/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_486/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_486/splitSplit&lstm_cell_486/split/split_dim:output:0lstm_cell_486/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_486/SigmoidSigmoidlstm_cell_486/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_486/Sigmoid_1Sigmoidlstm_cell_486/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_486/mulMullstm_cell_486/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_486/ReluRelulstm_cell_486/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_486/mul_1Mullstm_cell_486/Sigmoid:y:0 lstm_cell_486/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_486/add_1AddV2lstm_cell_486/mul:z:0lstm_cell_486/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_486/Sigmoid_2Sigmoidlstm_cell_486/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_486/Relu_1Relulstm_cell_486/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_486/mul_2Mullstm_cell_486/Sigmoid_2:y:0"lstm_cell_486/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_486_matmul_readvariableop_resource.lstm_cell_486_matmul_1_readvariableop_resource-lstm_cell_486_biasadd_readvariableop_resource*
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
while_body_2953482*
condR
while_cond_2953481*K
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
NoOpNoOp%^lstm_cell_486/BiasAdd/ReadVariableOp$^lstm_cell_486/MatMul/ReadVariableOp&^lstm_cell_486/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_486/BiasAdd/ReadVariableOp$lstm_cell_486/BiasAdd/ReadVariableOp2J
#lstm_cell_486/MatMul/ReadVariableOp#lstm_cell_486/MatMul/ReadVariableOp2N
%lstm_cell_486/MatMul_1/ReadVariableOp%lstm_cell_486/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2951339
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2951339___redundant_placeholder05
1while_while_cond_2951339___redundant_placeholder15
1while_while_cond_2951339___redundant_placeholder25
1while_while_cond_2951339___redundant_placeholder3
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
while_cond_2951039
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2951039___redundant_placeholder05
1while_while_cond_2951039___redundant_placeholder15
1while_while_cond_2951039___redundant_placeholder25
1while_while_cond_2951039___redundant_placeholder3
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
E__inference_lstm_120_layer_call_and_return_conditional_losses_2951970

inputs?
,lstm_cell_486_matmul_readvariableop_resource:	?A
.lstm_cell_486_matmul_1_readvariableop_resource:	d?<
-lstm_cell_486_biasadd_readvariableop_resource:	?
identity??$lstm_cell_486/BiasAdd/ReadVariableOp?#lstm_cell_486/MatMul/ReadVariableOp?%lstm_cell_486/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_486/MatMul/ReadVariableOpReadVariableOp,lstm_cell_486_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_486/MatMulMatMulstrided_slice_2:output:0+lstm_cell_486/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_486/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_486_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_486/MatMul_1MatMulzeros:output:0-lstm_cell_486/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_486/addAddV2lstm_cell_486/MatMul:product:0 lstm_cell_486/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_486/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_486_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_486/BiasAddBiasAddlstm_cell_486/add:z:0,lstm_cell_486/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_486/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_486/splitSplit&lstm_cell_486/split/split_dim:output:0lstm_cell_486/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_486/SigmoidSigmoidlstm_cell_486/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_486/Sigmoid_1Sigmoidlstm_cell_486/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_486/mulMullstm_cell_486/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_486/ReluRelulstm_cell_486/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_486/mul_1Mullstm_cell_486/Sigmoid:y:0 lstm_cell_486/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_486/add_1AddV2lstm_cell_486/mul:z:0lstm_cell_486/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_486/Sigmoid_2Sigmoidlstm_cell_486/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_486/Relu_1Relulstm_cell_486/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_486/mul_2Mullstm_cell_486/Sigmoid_2:y:0"lstm_cell_486/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_486_matmul_readvariableop_resource.lstm_cell_486_matmul_1_readvariableop_resource-lstm_cell_486_biasadd_readvariableop_resource*
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
while_body_2951886*
condR
while_cond_2951885*K
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
NoOpNoOp%^lstm_cell_486/BiasAdd/ReadVariableOp$^lstm_cell_486/MatMul/ReadVariableOp&^lstm_cell_486/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_486/BiasAdd/ReadVariableOp$lstm_cell_486/BiasAdd/ReadVariableOp2J
#lstm_cell_486/MatMul/ReadVariableOp#lstm_cell_486/MatMul/ReadVariableOp2N
%lstm_cell_486/MatMul_1/ReadVariableOp%lstm_cell_486/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_40_layer_call_and_return_conditional_losses_2952150
lstm_120_input#
lstm_120_2952123:	?#
lstm_120_2952125:	d?
lstm_120_2952127:	?#
lstm_121_2952130:	d?#
lstm_121_2952132:	2?
lstm_121_2952134:	?"
lstm_122_2952137:2("
lstm_122_2952139:
(
lstm_122_2952141:("
dense_40_2952144:

dense_40_2952146:
identity?? dense_40/StatefulPartitionedCall? lstm_120/StatefulPartitionedCall? lstm_121/StatefulPartitionedCall? lstm_122/StatefulPartitionedCall?
 lstm_120/StatefulPartitionedCallStatefulPartitionedCalllstm_120_inputlstm_120_2952123lstm_120_2952125lstm_120_2952127*
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
E__inference_lstm_120_layer_call_and_return_conditional_losses_2951970?
 lstm_121/StatefulPartitionedCallStatefulPartitionedCall)lstm_120/StatefulPartitionedCall:output:0lstm_121_2952130lstm_121_2952132lstm_121_2952134*
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
E__inference_lstm_121_layer_call_and_return_conditional_losses_2951805?
 lstm_122/StatefulPartitionedCallStatefulPartitionedCall)lstm_121/StatefulPartitionedCall:output:0lstm_122_2952137lstm_122_2952139lstm_122_2952141*
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
E__inference_lstm_122_layer_call_and_return_conditional_losses_2951640?
 dense_40/StatefulPartitionedCallStatefulPartitionedCall)lstm_122/StatefulPartitionedCall:output:0dense_40_2952144dense_40_2952146*
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
E__inference_dense_40_layer_call_and_return_conditional_losses_2951442x
IdentityIdentity)dense_40/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_40/StatefulPartitionedCall!^lstm_120/StatefulPartitionedCall!^lstm_121/StatefulPartitionedCall!^lstm_122/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2D
 lstm_120/StatefulPartitionedCall lstm_120/StatefulPartitionedCall2D
 lstm_121/StatefulPartitionedCall lstm_121/StatefulPartitionedCall2D
 lstm_122/StatefulPartitionedCall lstm_122/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_120_input
?J
?
E__inference_lstm_121_layer_call_and_return_conditional_losses_2954182

inputs?
,lstm_cell_487_matmul_readvariableop_resource:	d?A
.lstm_cell_487_matmul_1_readvariableop_resource:	2?<
-lstm_cell_487_biasadd_readvariableop_resource:	?
identity??$lstm_cell_487/BiasAdd/ReadVariableOp?#lstm_cell_487/MatMul/ReadVariableOp?%lstm_cell_487/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_487/MatMul/ReadVariableOpReadVariableOp,lstm_cell_487_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_487/MatMulMatMulstrided_slice_2:output:0+lstm_cell_487/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_487/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_487_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_487/MatMul_1MatMulzeros:output:0-lstm_cell_487/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_487/addAddV2lstm_cell_487/MatMul:product:0 lstm_cell_487/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_487/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_487_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_487/BiasAddBiasAddlstm_cell_487/add:z:0,lstm_cell_487/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_487/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_487/splitSplit&lstm_cell_487/split/split_dim:output:0lstm_cell_487/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_487/SigmoidSigmoidlstm_cell_487/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_487/Sigmoid_1Sigmoidlstm_cell_487/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_487/mulMullstm_cell_487/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_487/ReluRelulstm_cell_487/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_487/mul_1Mullstm_cell_487/Sigmoid:y:0 lstm_cell_487/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_487/add_1AddV2lstm_cell_487/mul:z:0lstm_cell_487/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_487/Sigmoid_2Sigmoidlstm_cell_487/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_487/Relu_1Relulstm_cell_487/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_487/mul_2Mullstm_cell_487/Sigmoid_2:y:0"lstm_cell_487/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_487_matmul_readvariableop_resource.lstm_cell_487_matmul_1_readvariableop_resource-lstm_cell_487_biasadd_readvariableop_resource*
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
while_body_2954098*
condR
while_cond_2954097*K
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
NoOpNoOp%^lstm_cell_487/BiasAdd/ReadVariableOp$^lstm_cell_487/MatMul/ReadVariableOp&^lstm_cell_487/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_487/BiasAdd/ReadVariableOp$lstm_cell_487/BiasAdd/ReadVariableOp2J
#lstm_cell_487/MatMul/ReadVariableOp#lstm_cell_487/MatMul/ReadVariableOp2N
%lstm_cell_487/MatMul_1/ReadVariableOp%lstm_cell_487/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?	
?
E__inference_dense_40_layer_call_and_return_conditional_losses_2951442

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
while_cond_2951885
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2951885___redundant_placeholder05
1while_while_cond_2951885___redundant_placeholder15
1while_while_cond_2951885___redundant_placeholder25
1while_while_cond_2951885___redundant_placeholder3
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
while_body_2951040
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_486_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_486_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_486_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_486_matmul_readvariableop_resource:	?G
4while_lstm_cell_486_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_486_biasadd_readvariableop_resource:	???*while/lstm_cell_486/BiasAdd/ReadVariableOp?)while/lstm_cell_486/MatMul/ReadVariableOp?+while/lstm_cell_486/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_486/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_486_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_486/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_486/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_486/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_486_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_486/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_486/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_486/addAddV2$while/lstm_cell_486/MatMul:product:0&while/lstm_cell_486/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_486/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_486_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_486/BiasAddBiasAddwhile/lstm_cell_486/add:z:02while/lstm_cell_486/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_486/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_486/splitSplit,while/lstm_cell_486/split/split_dim:output:0$while/lstm_cell_486/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_486/SigmoidSigmoid"while/lstm_cell_486/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_486/Sigmoid_1Sigmoid"while/lstm_cell_486/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_486/mulMul!while/lstm_cell_486/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_486/ReluRelu"while/lstm_cell_486/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_486/mul_1Mulwhile/lstm_cell_486/Sigmoid:y:0&while/lstm_cell_486/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_486/add_1AddV2while/lstm_cell_486/mul:z:0while/lstm_cell_486/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_486/Sigmoid_2Sigmoid"while/lstm_cell_486/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_486/Relu_1Reluwhile/lstm_cell_486/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_486/mul_2Mul!while/lstm_cell_486/Sigmoid_2:y:0(while/lstm_cell_486/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_486/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_486/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_486/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_486/BiasAdd/ReadVariableOp*^while/lstm_cell_486/MatMul/ReadVariableOp,^while/lstm_cell_486/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_486_biasadd_readvariableop_resource5while_lstm_cell_486_biasadd_readvariableop_resource_0"n
4while_lstm_cell_486_matmul_1_readvariableop_resource6while_lstm_cell_486_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_486_matmul_readvariableop_resource4while_lstm_cell_486_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_486/BiasAdd/ReadVariableOp*while/lstm_cell_486/BiasAdd/ReadVariableOp2V
)while/lstm_cell_486/MatMul/ReadVariableOp)while/lstm_cell_486/MatMul/ReadVariableOp2Z
+while/lstm_cell_486/MatMul_1/ReadVariableOp+while/lstm_cell_486/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2951556
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_488_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_488_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_488_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_488_matmul_readvariableop_resource:2(F
4while_lstm_cell_488_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_488_biasadd_readvariableop_resource:(??*while/lstm_cell_488/BiasAdd/ReadVariableOp?)while/lstm_cell_488/MatMul/ReadVariableOp?+while/lstm_cell_488/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_488/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_488_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_488/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_488/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_488/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_488_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_488/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_488/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_488/addAddV2$while/lstm_cell_488/MatMul:product:0&while/lstm_cell_488/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_488/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_488_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_488/BiasAddBiasAddwhile/lstm_cell_488/add:z:02while/lstm_cell_488/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_488/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_488/splitSplit,while/lstm_cell_488/split/split_dim:output:0$while/lstm_cell_488/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_488/SigmoidSigmoid"while/lstm_cell_488/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_488/Sigmoid_1Sigmoid"while/lstm_cell_488/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_488/mulMul!while/lstm_cell_488/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_488/ReluRelu"while/lstm_cell_488/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_488/mul_1Mulwhile/lstm_cell_488/Sigmoid:y:0&while/lstm_cell_488/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_488/add_1AddV2while/lstm_cell_488/mul:z:0while/lstm_cell_488/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_488/Sigmoid_2Sigmoid"while/lstm_cell_488/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_488/Relu_1Reluwhile/lstm_cell_488/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_488/mul_2Mul!while/lstm_cell_488/Sigmoid_2:y:0(while/lstm_cell_488/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_488/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_488/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_488/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_488/BiasAdd/ReadVariableOp*^while/lstm_cell_488/MatMul/ReadVariableOp,^while/lstm_cell_488/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_488_biasadd_readvariableop_resource5while_lstm_cell_488_biasadd_readvariableop_resource_0"n
4while_lstm_cell_488_matmul_1_readvariableop_resource6while_lstm_cell_488_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_488_matmul_readvariableop_resource4while_lstm_cell_488_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_488/BiasAdd/ReadVariableOp*while/lstm_cell_488/BiasAdd/ReadVariableOp2V
)while/lstm_cell_488/MatMul/ReadVariableOp)while/lstm_cell_488/MatMul/ReadVariableOp2Z
+while/lstm_cell_488/MatMul_1/ReadVariableOp+while/lstm_cell_488/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_122_layer_call_fn_2954358

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
E__inference_lstm_122_layer_call_and_return_conditional_losses_2951424o
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
while_cond_2954240
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2954240___redundant_placeholder05
1while_while_cond_2954240___redundant_placeholder15
1while_while_cond_2954240___redundant_placeholder25
1while_while_cond_2954240___redundant_placeholder3
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
while_cond_2954570
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2954570___redundant_placeholder05
1while_while_cond_2954570___redundant_placeholder15
1while_while_cond_2954570___redundant_placeholder25
1while_while_cond_2954570___redundant_placeholder3
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
while_body_2953196
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_486_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_486_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_486_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_486_matmul_readvariableop_resource:	?G
4while_lstm_cell_486_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_486_biasadd_readvariableop_resource:	???*while/lstm_cell_486/BiasAdd/ReadVariableOp?)while/lstm_cell_486/MatMul/ReadVariableOp?+while/lstm_cell_486/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_486/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_486_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_486/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_486/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_486/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_486_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_486/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_486/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_486/addAddV2$while/lstm_cell_486/MatMul:product:0&while/lstm_cell_486/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_486/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_486_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_486/BiasAddBiasAddwhile/lstm_cell_486/add:z:02while/lstm_cell_486/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_486/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_486/splitSplit,while/lstm_cell_486/split/split_dim:output:0$while/lstm_cell_486/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_486/SigmoidSigmoid"while/lstm_cell_486/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_486/Sigmoid_1Sigmoid"while/lstm_cell_486/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_486/mulMul!while/lstm_cell_486/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_486/ReluRelu"while/lstm_cell_486/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_486/mul_1Mulwhile/lstm_cell_486/Sigmoid:y:0&while/lstm_cell_486/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_486/add_1AddV2while/lstm_cell_486/mul:z:0while/lstm_cell_486/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_486/Sigmoid_2Sigmoid"while/lstm_cell_486/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_486/Relu_1Reluwhile/lstm_cell_486/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_486/mul_2Mul!while/lstm_cell_486/Sigmoid_2:y:0(while/lstm_cell_486/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_486/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_486/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_486/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_486/BiasAdd/ReadVariableOp*^while/lstm_cell_486/MatMul/ReadVariableOp,^while/lstm_cell_486/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_486_biasadd_readvariableop_resource5while_lstm_cell_486_biasadd_readvariableop_resource_0"n
4while_lstm_cell_486_matmul_1_readvariableop_resource6while_lstm_cell_486_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_486_matmul_readvariableop_resource4while_lstm_cell_486_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_486/BiasAdd/ReadVariableOp*while/lstm_cell_486/BiasAdd/ReadVariableOp2V
)while/lstm_cell_486/MatMul/ReadVariableOp)while/lstm_cell_486/MatMul/ReadVariableOp2Z
+while/lstm_cell_486/MatMul_1/ReadVariableOp+while/lstm_cell_486/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_120_layer_call_and_return_conditional_losses_2953280
inputs_0?
,lstm_cell_486_matmul_readvariableop_resource:	?A
.lstm_cell_486_matmul_1_readvariableop_resource:	d?<
-lstm_cell_486_biasadd_readvariableop_resource:	?
identity??$lstm_cell_486/BiasAdd/ReadVariableOp?#lstm_cell_486/MatMul/ReadVariableOp?%lstm_cell_486/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_486/MatMul/ReadVariableOpReadVariableOp,lstm_cell_486_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_486/MatMulMatMulstrided_slice_2:output:0+lstm_cell_486/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_486/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_486_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_486/MatMul_1MatMulzeros:output:0-lstm_cell_486/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_486/addAddV2lstm_cell_486/MatMul:product:0 lstm_cell_486/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_486/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_486_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_486/BiasAddBiasAddlstm_cell_486/add:z:0,lstm_cell_486/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_486/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_486/splitSplit&lstm_cell_486/split/split_dim:output:0lstm_cell_486/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_486/SigmoidSigmoidlstm_cell_486/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_486/Sigmoid_1Sigmoidlstm_cell_486/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_486/mulMullstm_cell_486/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_486/ReluRelulstm_cell_486/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_486/mul_1Mullstm_cell_486/Sigmoid:y:0 lstm_cell_486/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_486/add_1AddV2lstm_cell_486/mul:z:0lstm_cell_486/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_486/Sigmoid_2Sigmoidlstm_cell_486/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_486/Relu_1Relulstm_cell_486/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_486/mul_2Mullstm_cell_486/Sigmoid_2:y:0"lstm_cell_486/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_486_matmul_readvariableop_resource.lstm_cell_486_matmul_1_readvariableop_resource-lstm_cell_486_biasadd_readvariableop_resource*
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
while_body_2953196*
condR
while_cond_2953195*K
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
NoOpNoOp%^lstm_cell_486/BiasAdd/ReadVariableOp$^lstm_cell_486/MatMul/ReadVariableOp&^lstm_cell_486/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_486/BiasAdd/ReadVariableOp$lstm_cell_486/BiasAdd/ReadVariableOp2J
#lstm_cell_486/MatMul/ReadVariableOp#lstm_cell_486/MatMul/ReadVariableOp2N
%lstm_cell_486/MatMul_1/ReadVariableOp%lstm_cell_486/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_486_layer_call_fn_2954977

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
J__inference_lstm_cell_486_layer_call_and_return_conditional_losses_2949992o
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
?
/__inference_lstm_cell_488_layer_call_fn_2955173

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
J__inference_lstm_cell_488_layer_call_and_return_conditional_losses_2950692o
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
while_body_2953625
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_486_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_486_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_486_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_486_matmul_readvariableop_resource:	?G
4while_lstm_cell_486_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_486_biasadd_readvariableop_resource:	???*while/lstm_cell_486/BiasAdd/ReadVariableOp?)while/lstm_cell_486/MatMul/ReadVariableOp?+while/lstm_cell_486/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_486/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_486_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_486/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_486/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_486/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_486_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_486/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_486/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_486/addAddV2$while/lstm_cell_486/MatMul:product:0&while/lstm_cell_486/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_486/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_486_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_486/BiasAddBiasAddwhile/lstm_cell_486/add:z:02while/lstm_cell_486/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_486/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_486/splitSplit,while/lstm_cell_486/split/split_dim:output:0$while/lstm_cell_486/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_486/SigmoidSigmoid"while/lstm_cell_486/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_486/Sigmoid_1Sigmoid"while/lstm_cell_486/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_486/mulMul!while/lstm_cell_486/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_486/ReluRelu"while/lstm_cell_486/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_486/mul_1Mulwhile/lstm_cell_486/Sigmoid:y:0&while/lstm_cell_486/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_486/add_1AddV2while/lstm_cell_486/mul:z:0while/lstm_cell_486/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_486/Sigmoid_2Sigmoid"while/lstm_cell_486/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_486/Relu_1Reluwhile/lstm_cell_486/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_486/mul_2Mul!while/lstm_cell_486/Sigmoid_2:y:0(while/lstm_cell_486/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_486/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_486/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_486/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_486/BiasAdd/ReadVariableOp*^while/lstm_cell_486/MatMul/ReadVariableOp,^while/lstm_cell_486/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_486_biasadd_readvariableop_resource5while_lstm_cell_486_biasadd_readvariableop_resource_0"n
4while_lstm_cell_486_matmul_1_readvariableop_resource6while_lstm_cell_486_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_486_matmul_readvariableop_resource4while_lstm_cell_486_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_486/BiasAdd/ReadVariableOp*while/lstm_cell_486/BiasAdd/ReadVariableOp2V
)while/lstm_cell_486/MatMul/ReadVariableOp)while/lstm_cell_486/MatMul/ReadVariableOp2Z
+while/lstm_cell_486/MatMul_1/ReadVariableOp+while/lstm_cell_486/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2953811
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2953811___redundant_placeholder05
1while_while_cond_2953811___redundant_placeholder15
1while_while_cond_2953811___redundant_placeholder25
1while_while_cond_2953811___redundant_placeholder3
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
/__inference_lstm_cell_488_layer_call_fn_2955190

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
J__inference_lstm_cell_488_layer_call_and_return_conditional_losses_2950838o
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
while_body_2953812
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_487_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_487_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_487_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_487_matmul_readvariableop_resource:	d?G
4while_lstm_cell_487_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_487_biasadd_readvariableop_resource:	???*while/lstm_cell_487/BiasAdd/ReadVariableOp?)while/lstm_cell_487/MatMul/ReadVariableOp?+while/lstm_cell_487/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_487/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_487_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_487/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_487/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_487/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_487_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_487/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_487/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_487/addAddV2$while/lstm_cell_487/MatMul:product:0&while/lstm_cell_487/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_487/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_487_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_487/BiasAddBiasAddwhile/lstm_cell_487/add:z:02while/lstm_cell_487/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_487/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_487/splitSplit,while/lstm_cell_487/split/split_dim:output:0$while/lstm_cell_487/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_487/SigmoidSigmoid"while/lstm_cell_487/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_487/Sigmoid_1Sigmoid"while/lstm_cell_487/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_487/mulMul!while/lstm_cell_487/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_487/ReluRelu"while/lstm_cell_487/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_487/mul_1Mulwhile/lstm_cell_487/Sigmoid:y:0&while/lstm_cell_487/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_487/add_1AddV2while/lstm_cell_487/mul:z:0while/lstm_cell_487/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_487/Sigmoid_2Sigmoid"while/lstm_cell_487/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_487/Relu_1Reluwhile/lstm_cell_487/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_487/mul_2Mul!while/lstm_cell_487/Sigmoid_2:y:0(while/lstm_cell_487/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_487/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_487/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_487/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_487/BiasAdd/ReadVariableOp*^while/lstm_cell_487/MatMul/ReadVariableOp,^while/lstm_cell_487/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_487_biasadd_readvariableop_resource5while_lstm_cell_487_biasadd_readvariableop_resource_0"n
4while_lstm_cell_487_matmul_1_readvariableop_resource6while_lstm_cell_487_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_487_matmul_readvariableop_resource4while_lstm_cell_487_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_487/BiasAdd/ReadVariableOp*while/lstm_cell_487/BiasAdd/ReadVariableOp2V
)while/lstm_cell_487/MatMul/ReadVariableOp)while/lstm_cell_487/MatMul/ReadVariableOp2Z
+while/lstm_cell_487/MatMul_1/ReadVariableOp+while/lstm_cell_487/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_122_layer_call_and_return_conditional_losses_2954941

inputs>
,lstm_cell_488_matmul_readvariableop_resource:2(@
.lstm_cell_488_matmul_1_readvariableop_resource:
(;
-lstm_cell_488_biasadd_readvariableop_resource:(
identity??$lstm_cell_488/BiasAdd/ReadVariableOp?#lstm_cell_488/MatMul/ReadVariableOp?%lstm_cell_488/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_488/MatMul/ReadVariableOpReadVariableOp,lstm_cell_488_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_488/MatMulMatMulstrided_slice_2:output:0+lstm_cell_488/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_488/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_488_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_488/MatMul_1MatMulzeros:output:0-lstm_cell_488/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_488/addAddV2lstm_cell_488/MatMul:product:0 lstm_cell_488/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_488/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_488_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_488/BiasAddBiasAddlstm_cell_488/add:z:0,lstm_cell_488/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_488/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_488/splitSplit&lstm_cell_488/split/split_dim:output:0lstm_cell_488/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_488/SigmoidSigmoidlstm_cell_488/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_488/Sigmoid_1Sigmoidlstm_cell_488/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_488/mulMullstm_cell_488/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_488/ReluRelulstm_cell_488/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_488/mul_1Mullstm_cell_488/Sigmoid:y:0 lstm_cell_488/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_488/add_1AddV2lstm_cell_488/mul:z:0lstm_cell_488/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_488/Sigmoid_2Sigmoidlstm_cell_488/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_488/Relu_1Relulstm_cell_488/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_488/mul_2Mullstm_cell_488/Sigmoid_2:y:0"lstm_cell_488/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_488_matmul_readvariableop_resource.lstm_cell_488_matmul_1_readvariableop_resource-lstm_cell_488_biasadd_readvariableop_resource*
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
while_body_2954857*
condR
while_cond_2954856*K
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
NoOpNoOp%^lstm_cell_488/BiasAdd/ReadVariableOp$^lstm_cell_488/MatMul/ReadVariableOp&^lstm_cell_488/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_488/BiasAdd/ReadVariableOp$lstm_cell_488/BiasAdd/ReadVariableOp2J
#lstm_cell_488/MatMul/ReadVariableOp#lstm_cell_488/MatMul/ReadVariableOp2N
%lstm_cell_488/MatMul_1/ReadVariableOp%lstm_cell_488/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_2949925
lstm_120_inputV
Csequential_40_lstm_120_lstm_cell_486_matmul_readvariableop_resource:	?X
Esequential_40_lstm_120_lstm_cell_486_matmul_1_readvariableop_resource:	d?S
Dsequential_40_lstm_120_lstm_cell_486_biasadd_readvariableop_resource:	?V
Csequential_40_lstm_121_lstm_cell_487_matmul_readvariableop_resource:	d?X
Esequential_40_lstm_121_lstm_cell_487_matmul_1_readvariableop_resource:	2?S
Dsequential_40_lstm_121_lstm_cell_487_biasadd_readvariableop_resource:	?U
Csequential_40_lstm_122_lstm_cell_488_matmul_readvariableop_resource:2(W
Esequential_40_lstm_122_lstm_cell_488_matmul_1_readvariableop_resource:
(R
Dsequential_40_lstm_122_lstm_cell_488_biasadd_readvariableop_resource:(G
5sequential_40_dense_40_matmul_readvariableop_resource:
D
6sequential_40_dense_40_biasadd_readvariableop_resource:
identity??-sequential_40/dense_40/BiasAdd/ReadVariableOp?,sequential_40/dense_40/MatMul/ReadVariableOp?;sequential_40/lstm_120/lstm_cell_486/BiasAdd/ReadVariableOp?:sequential_40/lstm_120/lstm_cell_486/MatMul/ReadVariableOp?<sequential_40/lstm_120/lstm_cell_486/MatMul_1/ReadVariableOp?sequential_40/lstm_120/while?;sequential_40/lstm_121/lstm_cell_487/BiasAdd/ReadVariableOp?:sequential_40/lstm_121/lstm_cell_487/MatMul/ReadVariableOp?<sequential_40/lstm_121/lstm_cell_487/MatMul_1/ReadVariableOp?sequential_40/lstm_121/while?;sequential_40/lstm_122/lstm_cell_488/BiasAdd/ReadVariableOp?:sequential_40/lstm_122/lstm_cell_488/MatMul/ReadVariableOp?<sequential_40/lstm_122/lstm_cell_488/MatMul_1/ReadVariableOp?sequential_40/lstm_122/whileZ
sequential_40/lstm_120/ShapeShapelstm_120_input*
T0*
_output_shapes
:t
*sequential_40/lstm_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_40/lstm_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_40/lstm_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_40/lstm_120/strided_sliceStridedSlice%sequential_40/lstm_120/Shape:output:03sequential_40/lstm_120/strided_slice/stack:output:05sequential_40/lstm_120/strided_slice/stack_1:output:05sequential_40/lstm_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_40/lstm_120/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_40/lstm_120/zeros/packedPack-sequential_40/lstm_120/strided_slice:output:0.sequential_40/lstm_120/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_40/lstm_120/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_40/lstm_120/zerosFill,sequential_40/lstm_120/zeros/packed:output:0+sequential_40/lstm_120/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_40/lstm_120/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_40/lstm_120/zeros_1/packedPack-sequential_40/lstm_120/strided_slice:output:00sequential_40/lstm_120/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_40/lstm_120/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_40/lstm_120/zeros_1Fill.sequential_40/lstm_120/zeros_1/packed:output:0-sequential_40/lstm_120/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_40/lstm_120/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_40/lstm_120/transpose	Transposelstm_120_input.sequential_40/lstm_120/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_40/lstm_120/Shape_1Shape$sequential_40/lstm_120/transpose:y:0*
T0*
_output_shapes
:v
,sequential_40/lstm_120/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_40/lstm_120/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_40/lstm_120/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_40/lstm_120/strided_slice_1StridedSlice'sequential_40/lstm_120/Shape_1:output:05sequential_40/lstm_120/strided_slice_1/stack:output:07sequential_40/lstm_120/strided_slice_1/stack_1:output:07sequential_40/lstm_120/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_40/lstm_120/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_40/lstm_120/TensorArrayV2TensorListReserve;sequential_40/lstm_120/TensorArrayV2/element_shape:output:0/sequential_40/lstm_120/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_40/lstm_120/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_40/lstm_120/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_40/lstm_120/transpose:y:0Usequential_40/lstm_120/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_40/lstm_120/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_40/lstm_120/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_40/lstm_120/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_40/lstm_120/strided_slice_2StridedSlice$sequential_40/lstm_120/transpose:y:05sequential_40/lstm_120/strided_slice_2/stack:output:07sequential_40/lstm_120/strided_slice_2/stack_1:output:07sequential_40/lstm_120/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_40/lstm_120/lstm_cell_486/MatMul/ReadVariableOpReadVariableOpCsequential_40_lstm_120_lstm_cell_486_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_40/lstm_120/lstm_cell_486/MatMulMatMul/sequential_40/lstm_120/strided_slice_2:output:0Bsequential_40/lstm_120/lstm_cell_486/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_40/lstm_120/lstm_cell_486/MatMul_1/ReadVariableOpReadVariableOpEsequential_40_lstm_120_lstm_cell_486_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_40/lstm_120/lstm_cell_486/MatMul_1MatMul%sequential_40/lstm_120/zeros:output:0Dsequential_40/lstm_120/lstm_cell_486/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_40/lstm_120/lstm_cell_486/addAddV25sequential_40/lstm_120/lstm_cell_486/MatMul:product:07sequential_40/lstm_120/lstm_cell_486/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_40/lstm_120/lstm_cell_486/BiasAdd/ReadVariableOpReadVariableOpDsequential_40_lstm_120_lstm_cell_486_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_40/lstm_120/lstm_cell_486/BiasAddBiasAdd,sequential_40/lstm_120/lstm_cell_486/add:z:0Csequential_40/lstm_120/lstm_cell_486/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_40/lstm_120/lstm_cell_486/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_40/lstm_120/lstm_cell_486/splitSplit=sequential_40/lstm_120/lstm_cell_486/split/split_dim:output:05sequential_40/lstm_120/lstm_cell_486/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_40/lstm_120/lstm_cell_486/SigmoidSigmoid3sequential_40/lstm_120/lstm_cell_486/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_40/lstm_120/lstm_cell_486/Sigmoid_1Sigmoid3sequential_40/lstm_120/lstm_cell_486/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_40/lstm_120/lstm_cell_486/mulMul2sequential_40/lstm_120/lstm_cell_486/Sigmoid_1:y:0'sequential_40/lstm_120/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_40/lstm_120/lstm_cell_486/ReluRelu3sequential_40/lstm_120/lstm_cell_486/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_40/lstm_120/lstm_cell_486/mul_1Mul0sequential_40/lstm_120/lstm_cell_486/Sigmoid:y:07sequential_40/lstm_120/lstm_cell_486/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_40/lstm_120/lstm_cell_486/add_1AddV2,sequential_40/lstm_120/lstm_cell_486/mul:z:0.sequential_40/lstm_120/lstm_cell_486/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_40/lstm_120/lstm_cell_486/Sigmoid_2Sigmoid3sequential_40/lstm_120/lstm_cell_486/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_40/lstm_120/lstm_cell_486/Relu_1Relu.sequential_40/lstm_120/lstm_cell_486/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_40/lstm_120/lstm_cell_486/mul_2Mul2sequential_40/lstm_120/lstm_cell_486/Sigmoid_2:y:09sequential_40/lstm_120/lstm_cell_486/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_40/lstm_120/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_40/lstm_120/TensorArrayV2_1TensorListReserve=sequential_40/lstm_120/TensorArrayV2_1/element_shape:output:0/sequential_40/lstm_120/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_40/lstm_120/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_40/lstm_120/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_40/lstm_120/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_40/lstm_120/whileWhile2sequential_40/lstm_120/while/loop_counter:output:08sequential_40/lstm_120/while/maximum_iterations:output:0$sequential_40/lstm_120/time:output:0/sequential_40/lstm_120/TensorArrayV2_1:handle:0%sequential_40/lstm_120/zeros:output:0'sequential_40/lstm_120/zeros_1:output:0/sequential_40/lstm_120/strided_slice_1:output:0Nsequential_40/lstm_120/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_40_lstm_120_lstm_cell_486_matmul_readvariableop_resourceEsequential_40_lstm_120_lstm_cell_486_matmul_1_readvariableop_resourceDsequential_40_lstm_120_lstm_cell_486_biasadd_readvariableop_resource*
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
)sequential_40_lstm_120_while_body_2949557*5
cond-R+
)sequential_40_lstm_120_while_cond_2949556*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_40/lstm_120/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_40/lstm_120/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_40/lstm_120/while:output:3Psequential_40/lstm_120/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_40/lstm_120/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_40/lstm_120/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_40/lstm_120/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_40/lstm_120/strided_slice_3StridedSliceBsequential_40/lstm_120/TensorArrayV2Stack/TensorListStack:tensor:05sequential_40/lstm_120/strided_slice_3/stack:output:07sequential_40/lstm_120/strided_slice_3/stack_1:output:07sequential_40/lstm_120/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_40/lstm_120/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_40/lstm_120/transpose_1	TransposeBsequential_40/lstm_120/TensorArrayV2Stack/TensorListStack:tensor:00sequential_40/lstm_120/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_40/lstm_120/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_40/lstm_121/ShapeShape&sequential_40/lstm_120/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_40/lstm_121/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_40/lstm_121/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_40/lstm_121/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_40/lstm_121/strided_sliceStridedSlice%sequential_40/lstm_121/Shape:output:03sequential_40/lstm_121/strided_slice/stack:output:05sequential_40/lstm_121/strided_slice/stack_1:output:05sequential_40/lstm_121/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_40/lstm_121/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_40/lstm_121/zeros/packedPack-sequential_40/lstm_121/strided_slice:output:0.sequential_40/lstm_121/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_40/lstm_121/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_40/lstm_121/zerosFill,sequential_40/lstm_121/zeros/packed:output:0+sequential_40/lstm_121/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_40/lstm_121/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_40/lstm_121/zeros_1/packedPack-sequential_40/lstm_121/strided_slice:output:00sequential_40/lstm_121/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_40/lstm_121/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_40/lstm_121/zeros_1Fill.sequential_40/lstm_121/zeros_1/packed:output:0-sequential_40/lstm_121/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_40/lstm_121/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_40/lstm_121/transpose	Transpose&sequential_40/lstm_120/transpose_1:y:0.sequential_40/lstm_121/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_40/lstm_121/Shape_1Shape$sequential_40/lstm_121/transpose:y:0*
T0*
_output_shapes
:v
,sequential_40/lstm_121/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_40/lstm_121/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_40/lstm_121/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_40/lstm_121/strided_slice_1StridedSlice'sequential_40/lstm_121/Shape_1:output:05sequential_40/lstm_121/strided_slice_1/stack:output:07sequential_40/lstm_121/strided_slice_1/stack_1:output:07sequential_40/lstm_121/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_40/lstm_121/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_40/lstm_121/TensorArrayV2TensorListReserve;sequential_40/lstm_121/TensorArrayV2/element_shape:output:0/sequential_40/lstm_121/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_40/lstm_121/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_40/lstm_121/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_40/lstm_121/transpose:y:0Usequential_40/lstm_121/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_40/lstm_121/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_40/lstm_121/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_40/lstm_121/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_40/lstm_121/strided_slice_2StridedSlice$sequential_40/lstm_121/transpose:y:05sequential_40/lstm_121/strided_slice_2/stack:output:07sequential_40/lstm_121/strided_slice_2/stack_1:output:07sequential_40/lstm_121/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_40/lstm_121/lstm_cell_487/MatMul/ReadVariableOpReadVariableOpCsequential_40_lstm_121_lstm_cell_487_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_40/lstm_121/lstm_cell_487/MatMulMatMul/sequential_40/lstm_121/strided_slice_2:output:0Bsequential_40/lstm_121/lstm_cell_487/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_40/lstm_121/lstm_cell_487/MatMul_1/ReadVariableOpReadVariableOpEsequential_40_lstm_121_lstm_cell_487_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_40/lstm_121/lstm_cell_487/MatMul_1MatMul%sequential_40/lstm_121/zeros:output:0Dsequential_40/lstm_121/lstm_cell_487/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_40/lstm_121/lstm_cell_487/addAddV25sequential_40/lstm_121/lstm_cell_487/MatMul:product:07sequential_40/lstm_121/lstm_cell_487/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_40/lstm_121/lstm_cell_487/BiasAdd/ReadVariableOpReadVariableOpDsequential_40_lstm_121_lstm_cell_487_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_40/lstm_121/lstm_cell_487/BiasAddBiasAdd,sequential_40/lstm_121/lstm_cell_487/add:z:0Csequential_40/lstm_121/lstm_cell_487/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_40/lstm_121/lstm_cell_487/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_40/lstm_121/lstm_cell_487/splitSplit=sequential_40/lstm_121/lstm_cell_487/split/split_dim:output:05sequential_40/lstm_121/lstm_cell_487/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_40/lstm_121/lstm_cell_487/SigmoidSigmoid3sequential_40/lstm_121/lstm_cell_487/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_40/lstm_121/lstm_cell_487/Sigmoid_1Sigmoid3sequential_40/lstm_121/lstm_cell_487/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_40/lstm_121/lstm_cell_487/mulMul2sequential_40/lstm_121/lstm_cell_487/Sigmoid_1:y:0'sequential_40/lstm_121/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_40/lstm_121/lstm_cell_487/ReluRelu3sequential_40/lstm_121/lstm_cell_487/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_40/lstm_121/lstm_cell_487/mul_1Mul0sequential_40/lstm_121/lstm_cell_487/Sigmoid:y:07sequential_40/lstm_121/lstm_cell_487/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_40/lstm_121/lstm_cell_487/add_1AddV2,sequential_40/lstm_121/lstm_cell_487/mul:z:0.sequential_40/lstm_121/lstm_cell_487/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_40/lstm_121/lstm_cell_487/Sigmoid_2Sigmoid3sequential_40/lstm_121/lstm_cell_487/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_40/lstm_121/lstm_cell_487/Relu_1Relu.sequential_40/lstm_121/lstm_cell_487/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_40/lstm_121/lstm_cell_487/mul_2Mul2sequential_40/lstm_121/lstm_cell_487/Sigmoid_2:y:09sequential_40/lstm_121/lstm_cell_487/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_40/lstm_121/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_40/lstm_121/TensorArrayV2_1TensorListReserve=sequential_40/lstm_121/TensorArrayV2_1/element_shape:output:0/sequential_40/lstm_121/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_40/lstm_121/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_40/lstm_121/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_40/lstm_121/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_40/lstm_121/whileWhile2sequential_40/lstm_121/while/loop_counter:output:08sequential_40/lstm_121/while/maximum_iterations:output:0$sequential_40/lstm_121/time:output:0/sequential_40/lstm_121/TensorArrayV2_1:handle:0%sequential_40/lstm_121/zeros:output:0'sequential_40/lstm_121/zeros_1:output:0/sequential_40/lstm_121/strided_slice_1:output:0Nsequential_40/lstm_121/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_40_lstm_121_lstm_cell_487_matmul_readvariableop_resourceEsequential_40_lstm_121_lstm_cell_487_matmul_1_readvariableop_resourceDsequential_40_lstm_121_lstm_cell_487_biasadd_readvariableop_resource*
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
)sequential_40_lstm_121_while_body_2949696*5
cond-R+
)sequential_40_lstm_121_while_cond_2949695*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_40/lstm_121/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_40/lstm_121/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_40/lstm_121/while:output:3Psequential_40/lstm_121/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_40/lstm_121/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_40/lstm_121/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_40/lstm_121/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_40/lstm_121/strided_slice_3StridedSliceBsequential_40/lstm_121/TensorArrayV2Stack/TensorListStack:tensor:05sequential_40/lstm_121/strided_slice_3/stack:output:07sequential_40/lstm_121/strided_slice_3/stack_1:output:07sequential_40/lstm_121/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_40/lstm_121/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_40/lstm_121/transpose_1	TransposeBsequential_40/lstm_121/TensorArrayV2Stack/TensorListStack:tensor:00sequential_40/lstm_121/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_40/lstm_121/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_40/lstm_122/ShapeShape&sequential_40/lstm_121/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_40/lstm_122/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_40/lstm_122/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_40/lstm_122/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_40/lstm_122/strided_sliceStridedSlice%sequential_40/lstm_122/Shape:output:03sequential_40/lstm_122/strided_slice/stack:output:05sequential_40/lstm_122/strided_slice/stack_1:output:05sequential_40/lstm_122/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_40/lstm_122/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_40/lstm_122/zeros/packedPack-sequential_40/lstm_122/strided_slice:output:0.sequential_40/lstm_122/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_40/lstm_122/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_40/lstm_122/zerosFill,sequential_40/lstm_122/zeros/packed:output:0+sequential_40/lstm_122/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_40/lstm_122/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_40/lstm_122/zeros_1/packedPack-sequential_40/lstm_122/strided_slice:output:00sequential_40/lstm_122/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_40/lstm_122/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_40/lstm_122/zeros_1Fill.sequential_40/lstm_122/zeros_1/packed:output:0-sequential_40/lstm_122/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_40/lstm_122/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_40/lstm_122/transpose	Transpose&sequential_40/lstm_121/transpose_1:y:0.sequential_40/lstm_122/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_40/lstm_122/Shape_1Shape$sequential_40/lstm_122/transpose:y:0*
T0*
_output_shapes
:v
,sequential_40/lstm_122/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_40/lstm_122/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_40/lstm_122/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_40/lstm_122/strided_slice_1StridedSlice'sequential_40/lstm_122/Shape_1:output:05sequential_40/lstm_122/strided_slice_1/stack:output:07sequential_40/lstm_122/strided_slice_1/stack_1:output:07sequential_40/lstm_122/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_40/lstm_122/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_40/lstm_122/TensorArrayV2TensorListReserve;sequential_40/lstm_122/TensorArrayV2/element_shape:output:0/sequential_40/lstm_122/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_40/lstm_122/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_40/lstm_122/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_40/lstm_122/transpose:y:0Usequential_40/lstm_122/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_40/lstm_122/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_40/lstm_122/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_40/lstm_122/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_40/lstm_122/strided_slice_2StridedSlice$sequential_40/lstm_122/transpose:y:05sequential_40/lstm_122/strided_slice_2/stack:output:07sequential_40/lstm_122/strided_slice_2/stack_1:output:07sequential_40/lstm_122/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_40/lstm_122/lstm_cell_488/MatMul/ReadVariableOpReadVariableOpCsequential_40_lstm_122_lstm_cell_488_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_40/lstm_122/lstm_cell_488/MatMulMatMul/sequential_40/lstm_122/strided_slice_2:output:0Bsequential_40/lstm_122/lstm_cell_488/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_40/lstm_122/lstm_cell_488/MatMul_1/ReadVariableOpReadVariableOpEsequential_40_lstm_122_lstm_cell_488_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_40/lstm_122/lstm_cell_488/MatMul_1MatMul%sequential_40/lstm_122/zeros:output:0Dsequential_40/lstm_122/lstm_cell_488/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_40/lstm_122/lstm_cell_488/addAddV25sequential_40/lstm_122/lstm_cell_488/MatMul:product:07sequential_40/lstm_122/lstm_cell_488/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_40/lstm_122/lstm_cell_488/BiasAdd/ReadVariableOpReadVariableOpDsequential_40_lstm_122_lstm_cell_488_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_40/lstm_122/lstm_cell_488/BiasAddBiasAdd,sequential_40/lstm_122/lstm_cell_488/add:z:0Csequential_40/lstm_122/lstm_cell_488/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_40/lstm_122/lstm_cell_488/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_40/lstm_122/lstm_cell_488/splitSplit=sequential_40/lstm_122/lstm_cell_488/split/split_dim:output:05sequential_40/lstm_122/lstm_cell_488/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_40/lstm_122/lstm_cell_488/SigmoidSigmoid3sequential_40/lstm_122/lstm_cell_488/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_40/lstm_122/lstm_cell_488/Sigmoid_1Sigmoid3sequential_40/lstm_122/lstm_cell_488/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_40/lstm_122/lstm_cell_488/mulMul2sequential_40/lstm_122/lstm_cell_488/Sigmoid_1:y:0'sequential_40/lstm_122/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_40/lstm_122/lstm_cell_488/ReluRelu3sequential_40/lstm_122/lstm_cell_488/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_40/lstm_122/lstm_cell_488/mul_1Mul0sequential_40/lstm_122/lstm_cell_488/Sigmoid:y:07sequential_40/lstm_122/lstm_cell_488/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_40/lstm_122/lstm_cell_488/add_1AddV2,sequential_40/lstm_122/lstm_cell_488/mul:z:0.sequential_40/lstm_122/lstm_cell_488/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_40/lstm_122/lstm_cell_488/Sigmoid_2Sigmoid3sequential_40/lstm_122/lstm_cell_488/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_40/lstm_122/lstm_cell_488/Relu_1Relu.sequential_40/lstm_122/lstm_cell_488/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_40/lstm_122/lstm_cell_488/mul_2Mul2sequential_40/lstm_122/lstm_cell_488/Sigmoid_2:y:09sequential_40/lstm_122/lstm_cell_488/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_40/lstm_122/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_40/lstm_122/TensorArrayV2_1TensorListReserve=sequential_40/lstm_122/TensorArrayV2_1/element_shape:output:0/sequential_40/lstm_122/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_40/lstm_122/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_40/lstm_122/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_40/lstm_122/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_40/lstm_122/whileWhile2sequential_40/lstm_122/while/loop_counter:output:08sequential_40/lstm_122/while/maximum_iterations:output:0$sequential_40/lstm_122/time:output:0/sequential_40/lstm_122/TensorArrayV2_1:handle:0%sequential_40/lstm_122/zeros:output:0'sequential_40/lstm_122/zeros_1:output:0/sequential_40/lstm_122/strided_slice_1:output:0Nsequential_40/lstm_122/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_40_lstm_122_lstm_cell_488_matmul_readvariableop_resourceEsequential_40_lstm_122_lstm_cell_488_matmul_1_readvariableop_resourceDsequential_40_lstm_122_lstm_cell_488_biasadd_readvariableop_resource*
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
)sequential_40_lstm_122_while_body_2949835*5
cond-R+
)sequential_40_lstm_122_while_cond_2949834*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_40/lstm_122/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_40/lstm_122/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_40/lstm_122/while:output:3Psequential_40/lstm_122/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_40/lstm_122/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_40/lstm_122/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_40/lstm_122/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_40/lstm_122/strided_slice_3StridedSliceBsequential_40/lstm_122/TensorArrayV2Stack/TensorListStack:tensor:05sequential_40/lstm_122/strided_slice_3/stack:output:07sequential_40/lstm_122/strided_slice_3/stack_1:output:07sequential_40/lstm_122/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_40/lstm_122/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_40/lstm_122/transpose_1	TransposeBsequential_40/lstm_122/TensorArrayV2Stack/TensorListStack:tensor:00sequential_40/lstm_122/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_40/lstm_122/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_40/dense_40/MatMul/ReadVariableOpReadVariableOp5sequential_40_dense_40_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_40/dense_40/MatMulMatMul/sequential_40/lstm_122/strided_slice_3:output:04sequential_40/dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_40/dense_40/BiasAdd/ReadVariableOpReadVariableOp6sequential_40_dense_40_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_40/dense_40/BiasAddBiasAdd'sequential_40/dense_40/MatMul:product:05sequential_40/dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_40/dense_40/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_40/dense_40/BiasAdd/ReadVariableOp-^sequential_40/dense_40/MatMul/ReadVariableOp<^sequential_40/lstm_120/lstm_cell_486/BiasAdd/ReadVariableOp;^sequential_40/lstm_120/lstm_cell_486/MatMul/ReadVariableOp=^sequential_40/lstm_120/lstm_cell_486/MatMul_1/ReadVariableOp^sequential_40/lstm_120/while<^sequential_40/lstm_121/lstm_cell_487/BiasAdd/ReadVariableOp;^sequential_40/lstm_121/lstm_cell_487/MatMul/ReadVariableOp=^sequential_40/lstm_121/lstm_cell_487/MatMul_1/ReadVariableOp^sequential_40/lstm_121/while<^sequential_40/lstm_122/lstm_cell_488/BiasAdd/ReadVariableOp;^sequential_40/lstm_122/lstm_cell_488/MatMul/ReadVariableOp=^sequential_40/lstm_122/lstm_cell_488/MatMul_1/ReadVariableOp^sequential_40/lstm_122/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_40/dense_40/BiasAdd/ReadVariableOp-sequential_40/dense_40/BiasAdd/ReadVariableOp2\
,sequential_40/dense_40/MatMul/ReadVariableOp,sequential_40/dense_40/MatMul/ReadVariableOp2z
;sequential_40/lstm_120/lstm_cell_486/BiasAdd/ReadVariableOp;sequential_40/lstm_120/lstm_cell_486/BiasAdd/ReadVariableOp2x
:sequential_40/lstm_120/lstm_cell_486/MatMul/ReadVariableOp:sequential_40/lstm_120/lstm_cell_486/MatMul/ReadVariableOp2|
<sequential_40/lstm_120/lstm_cell_486/MatMul_1/ReadVariableOp<sequential_40/lstm_120/lstm_cell_486/MatMul_1/ReadVariableOp2<
sequential_40/lstm_120/whilesequential_40/lstm_120/while2z
;sequential_40/lstm_121/lstm_cell_487/BiasAdd/ReadVariableOp;sequential_40/lstm_121/lstm_cell_487/BiasAdd/ReadVariableOp2x
:sequential_40/lstm_121/lstm_cell_487/MatMul/ReadVariableOp:sequential_40/lstm_121/lstm_cell_487/MatMul/ReadVariableOp2|
<sequential_40/lstm_121/lstm_cell_487/MatMul_1/ReadVariableOp<sequential_40/lstm_121/lstm_cell_487/MatMul_1/ReadVariableOp2<
sequential_40/lstm_121/whilesequential_40/lstm_121/while2z
;sequential_40/lstm_122/lstm_cell_488/BiasAdd/ReadVariableOp;sequential_40/lstm_122/lstm_cell_488/BiasAdd/ReadVariableOp2x
:sequential_40/lstm_122/lstm_cell_488/MatMul/ReadVariableOp:sequential_40/lstm_122/lstm_cell_488/MatMul/ReadVariableOp2|
<sequential_40/lstm_122/lstm_cell_488/MatMul_1/ReadVariableOp<sequential_40/lstm_122/lstm_cell_488/MatMul_1/ReadVariableOp2<
sequential_40/lstm_122/whilesequential_40/lstm_122/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_120_input
?
?
J__inference_lstm_cell_488_layer_call_and_return_conditional_losses_2955222

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
?
E__inference_lstm_120_layer_call_and_return_conditional_losses_2950266

inputs(
lstm_cell_486_2950184:	?(
lstm_cell_486_2950186:	d?$
lstm_cell_486_2950188:	?
identity??%lstm_cell_486/StatefulPartitionedCall?while;
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
%lstm_cell_486/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_486_2950184lstm_cell_486_2950186lstm_cell_486_2950188*
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
J__inference_lstm_cell_486_layer_call_and_return_conditional_losses_2950138n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_486_2950184lstm_cell_486_2950186lstm_cell_486_2950188*
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
while_body_2950197*
condR
while_cond_2950196*K
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
NoOpNoOp&^lstm_cell_486/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_486/StatefulPartitionedCall%lstm_cell_486/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_120_layer_call_and_return_conditional_losses_2950075

inputs(
lstm_cell_486_2949993:	?(
lstm_cell_486_2949995:	d?$
lstm_cell_486_2949997:	?
identity??%lstm_cell_486/StatefulPartitionedCall?while;
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
%lstm_cell_486/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_486_2949993lstm_cell_486_2949995lstm_cell_486_2949997*
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
J__inference_lstm_cell_486_layer_call_and_return_conditional_losses_2949992n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_486_2949993lstm_cell_486_2949995lstm_cell_486_2949997*
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
while_body_2950006*
condR
while_cond_2950005*K
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
NoOpNoOp&^lstm_cell_486/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_486/StatefulPartitionedCall%lstm_cell_486/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_2953624
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2953624___redundant_placeholder05
1while_while_cond_2953624___redundant_placeholder15
1while_while_cond_2953624___redundant_placeholder25
1while_while_cond_2953624___redundant_placeholder3
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
/__inference_sequential_40_layer_call_fn_2952212

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
J__inference_sequential_40_layer_call_and_return_conditional_losses_2951449o
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
?K
?
E__inference_lstm_120_layer_call_and_return_conditional_losses_2953423
inputs_0?
,lstm_cell_486_matmul_readvariableop_resource:	?A
.lstm_cell_486_matmul_1_readvariableop_resource:	d?<
-lstm_cell_486_biasadd_readvariableop_resource:	?
identity??$lstm_cell_486/BiasAdd/ReadVariableOp?#lstm_cell_486/MatMul/ReadVariableOp?%lstm_cell_486/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_486/MatMul/ReadVariableOpReadVariableOp,lstm_cell_486_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_486/MatMulMatMulstrided_slice_2:output:0+lstm_cell_486/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_486/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_486_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_486/MatMul_1MatMulzeros:output:0-lstm_cell_486/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_486/addAddV2lstm_cell_486/MatMul:product:0 lstm_cell_486/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_486/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_486_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_486/BiasAddBiasAddlstm_cell_486/add:z:0,lstm_cell_486/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_486/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_486/splitSplit&lstm_cell_486/split/split_dim:output:0lstm_cell_486/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_486/SigmoidSigmoidlstm_cell_486/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_486/Sigmoid_1Sigmoidlstm_cell_486/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_486/mulMullstm_cell_486/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_486/ReluRelulstm_cell_486/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_486/mul_1Mullstm_cell_486/Sigmoid:y:0 lstm_cell_486/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_486/add_1AddV2lstm_cell_486/mul:z:0lstm_cell_486/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_486/Sigmoid_2Sigmoidlstm_cell_486/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_486/Relu_1Relulstm_cell_486/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_486/mul_2Mullstm_cell_486/Sigmoid_2:y:0"lstm_cell_486/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_486_matmul_readvariableop_resource.lstm_cell_486_matmul_1_readvariableop_resource-lstm_cell_486_biasadd_readvariableop_resource*
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
while_body_2953339*
condR
while_cond_2953338*K
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
NoOpNoOp%^lstm_cell_486/BiasAdd/ReadVariableOp$^lstm_cell_486/MatMul/ReadVariableOp&^lstm_cell_486/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_486/BiasAdd/ReadVariableOp$lstm_cell_486/BiasAdd/ReadVariableOp2J
#lstm_cell_486/MatMul/ReadVariableOp#lstm_cell_486/MatMul/ReadVariableOp2N
%lstm_cell_486/MatMul_1/ReadVariableOp%lstm_cell_486/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_sequential_40_layer_call_and_return_conditional_losses_2952120
lstm_120_input#
lstm_120_2952093:	?#
lstm_120_2952095:	d?
lstm_120_2952097:	?#
lstm_121_2952100:	d?#
lstm_121_2952102:	2?
lstm_121_2952104:	?"
lstm_122_2952107:2("
lstm_122_2952109:
(
lstm_122_2952111:("
dense_40_2952114:

dense_40_2952116:
identity?? dense_40/StatefulPartitionedCall? lstm_120/StatefulPartitionedCall? lstm_121/StatefulPartitionedCall? lstm_122/StatefulPartitionedCall?
 lstm_120/StatefulPartitionedCallStatefulPartitionedCalllstm_120_inputlstm_120_2952093lstm_120_2952095lstm_120_2952097*
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
E__inference_lstm_120_layer_call_and_return_conditional_losses_2951124?
 lstm_121/StatefulPartitionedCallStatefulPartitionedCall)lstm_120/StatefulPartitionedCall:output:0lstm_121_2952100lstm_121_2952102lstm_121_2952104*
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
E__inference_lstm_121_layer_call_and_return_conditional_losses_2951274?
 lstm_122/StatefulPartitionedCallStatefulPartitionedCall)lstm_121/StatefulPartitionedCall:output:0lstm_122_2952107lstm_122_2952109lstm_122_2952111*
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
E__inference_lstm_122_layer_call_and_return_conditional_losses_2951424?
 dense_40/StatefulPartitionedCallStatefulPartitionedCall)lstm_122/StatefulPartitionedCall:output:0dense_40_2952114dense_40_2952116*
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
E__inference_dense_40_layer_call_and_return_conditional_losses_2951442x
IdentityIdentity)dense_40/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_40/StatefulPartitionedCall!^lstm_120/StatefulPartitionedCall!^lstm_121/StatefulPartitionedCall!^lstm_122/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2D
 lstm_120/StatefulPartitionedCall lstm_120/StatefulPartitionedCall2D
 lstm_121/StatefulPartitionedCall lstm_121/StatefulPartitionedCall2D
 lstm_122/StatefulPartitionedCall lstm_122/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_120_input
?
?
while_cond_2954856
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2954856___redundant_placeholder05
1while_while_cond_2954856___redundant_placeholder15
1while_while_cond_2954856___redundant_placeholder25
1while_while_cond_2954856___redundant_placeholder3
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
while_cond_2953954
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2953954___redundant_placeholder05
1while_while_cond_2953954___redundant_placeholder15
1while_while_cond_2953954___redundant_placeholder25
1while_while_cond_2953954___redundant_placeholder3
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
while_body_2954714
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_488_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_488_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_488_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_488_matmul_readvariableop_resource:2(F
4while_lstm_cell_488_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_488_biasadd_readvariableop_resource:(??*while/lstm_cell_488/BiasAdd/ReadVariableOp?)while/lstm_cell_488/MatMul/ReadVariableOp?+while/lstm_cell_488/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_488/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_488_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_488/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_488/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_488/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_488_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_488/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_488/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_488/addAddV2$while/lstm_cell_488/MatMul:product:0&while/lstm_cell_488/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_488/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_488_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_488/BiasAddBiasAddwhile/lstm_cell_488/add:z:02while/lstm_cell_488/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_488/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_488/splitSplit,while/lstm_cell_488/split/split_dim:output:0$while/lstm_cell_488/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_488/SigmoidSigmoid"while/lstm_cell_488/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_488/Sigmoid_1Sigmoid"while/lstm_cell_488/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_488/mulMul!while/lstm_cell_488/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_488/ReluRelu"while/lstm_cell_488/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_488/mul_1Mulwhile/lstm_cell_488/Sigmoid:y:0&while/lstm_cell_488/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_488/add_1AddV2while/lstm_cell_488/mul:z:0while/lstm_cell_488/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_488/Sigmoid_2Sigmoid"while/lstm_cell_488/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_488/Relu_1Reluwhile/lstm_cell_488/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_488/mul_2Mul!while/lstm_cell_488/Sigmoid_2:y:0(while/lstm_cell_488/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_488/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_488/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_488/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_488/BiasAdd/ReadVariableOp*^while/lstm_cell_488/MatMul/ReadVariableOp,^while/lstm_cell_488/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_488_biasadd_readvariableop_resource5while_lstm_cell_488_biasadd_readvariableop_resource_0"n
4while_lstm_cell_488_matmul_1_readvariableop_resource6while_lstm_cell_488_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_488_matmul_readvariableop_resource4while_lstm_cell_488_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_488/BiasAdd/ReadVariableOp*while/lstm_cell_488/BiasAdd/ReadVariableOp2V
)while/lstm_cell_488/MatMul/ReadVariableOp)while/lstm_cell_488/MatMul/ReadVariableOp2Z
+while/lstm_cell_488/MatMul_1/ReadVariableOp+while/lstm_cell_488/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_487_layer_call_fn_2955092

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
J__inference_lstm_cell_487_layer_call_and_return_conditional_losses_2950488o
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
?C
?

lstm_121_while_body_2952437.
*lstm_121_while_lstm_121_while_loop_counter4
0lstm_121_while_lstm_121_while_maximum_iterations
lstm_121_while_placeholder 
lstm_121_while_placeholder_1 
lstm_121_while_placeholder_2 
lstm_121_while_placeholder_3-
)lstm_121_while_lstm_121_strided_slice_1_0i
elstm_121_while_tensorarrayv2read_tensorlistgetitem_lstm_121_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_121_while_lstm_cell_487_matmul_readvariableop_resource_0:	d?R
?lstm_121_while_lstm_cell_487_matmul_1_readvariableop_resource_0:	2?M
>lstm_121_while_lstm_cell_487_biasadd_readvariableop_resource_0:	?
lstm_121_while_identity
lstm_121_while_identity_1
lstm_121_while_identity_2
lstm_121_while_identity_3
lstm_121_while_identity_4
lstm_121_while_identity_5+
'lstm_121_while_lstm_121_strided_slice_1g
clstm_121_while_tensorarrayv2read_tensorlistgetitem_lstm_121_tensorarrayunstack_tensorlistfromtensorN
;lstm_121_while_lstm_cell_487_matmul_readvariableop_resource:	d?P
=lstm_121_while_lstm_cell_487_matmul_1_readvariableop_resource:	2?K
<lstm_121_while_lstm_cell_487_biasadd_readvariableop_resource:	???3lstm_121/while/lstm_cell_487/BiasAdd/ReadVariableOp?2lstm_121/while/lstm_cell_487/MatMul/ReadVariableOp?4lstm_121/while/lstm_cell_487/MatMul_1/ReadVariableOp?
@lstm_121/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_121/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_121_while_tensorarrayv2read_tensorlistgetitem_lstm_121_tensorarrayunstack_tensorlistfromtensor_0lstm_121_while_placeholderIlstm_121/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_121/while/lstm_cell_487/MatMul/ReadVariableOpReadVariableOp=lstm_121_while_lstm_cell_487_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_121/while/lstm_cell_487/MatMulMatMul9lstm_121/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_121/while/lstm_cell_487/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_121/while/lstm_cell_487/MatMul_1/ReadVariableOpReadVariableOp?lstm_121_while_lstm_cell_487_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_121/while/lstm_cell_487/MatMul_1MatMullstm_121_while_placeholder_2<lstm_121/while/lstm_cell_487/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_121/while/lstm_cell_487/addAddV2-lstm_121/while/lstm_cell_487/MatMul:product:0/lstm_121/while/lstm_cell_487/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_121/while/lstm_cell_487/BiasAdd/ReadVariableOpReadVariableOp>lstm_121_while_lstm_cell_487_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_121/while/lstm_cell_487/BiasAddBiasAdd$lstm_121/while/lstm_cell_487/add:z:0;lstm_121/while/lstm_cell_487/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_121/while/lstm_cell_487/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_121/while/lstm_cell_487/splitSplit5lstm_121/while/lstm_cell_487/split/split_dim:output:0-lstm_121/while/lstm_cell_487/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_121/while/lstm_cell_487/SigmoidSigmoid+lstm_121/while/lstm_cell_487/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_121/while/lstm_cell_487/Sigmoid_1Sigmoid+lstm_121/while/lstm_cell_487/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_121/while/lstm_cell_487/mulMul*lstm_121/while/lstm_cell_487/Sigmoid_1:y:0lstm_121_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_121/while/lstm_cell_487/ReluRelu+lstm_121/while/lstm_cell_487/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_121/while/lstm_cell_487/mul_1Mul(lstm_121/while/lstm_cell_487/Sigmoid:y:0/lstm_121/while/lstm_cell_487/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_121/while/lstm_cell_487/add_1AddV2$lstm_121/while/lstm_cell_487/mul:z:0&lstm_121/while/lstm_cell_487/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_121/while/lstm_cell_487/Sigmoid_2Sigmoid+lstm_121/while/lstm_cell_487/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_121/while/lstm_cell_487/Relu_1Relu&lstm_121/while/lstm_cell_487/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_121/while/lstm_cell_487/mul_2Mul*lstm_121/while/lstm_cell_487/Sigmoid_2:y:01lstm_121/while/lstm_cell_487/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_121/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_121_while_placeholder_1lstm_121_while_placeholder&lstm_121/while/lstm_cell_487/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_121/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_121/while/addAddV2lstm_121_while_placeholderlstm_121/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_121/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_121/while/add_1AddV2*lstm_121_while_lstm_121_while_loop_counterlstm_121/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_121/while/IdentityIdentitylstm_121/while/add_1:z:0^lstm_121/while/NoOp*
T0*
_output_shapes
: ?
lstm_121/while/Identity_1Identity0lstm_121_while_lstm_121_while_maximum_iterations^lstm_121/while/NoOp*
T0*
_output_shapes
: t
lstm_121/while/Identity_2Identitylstm_121/while/add:z:0^lstm_121/while/NoOp*
T0*
_output_shapes
: ?
lstm_121/while/Identity_3IdentityClstm_121/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_121/while/NoOp*
T0*
_output_shapes
: ?
lstm_121/while/Identity_4Identity&lstm_121/while/lstm_cell_487/mul_2:z:0^lstm_121/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_121/while/Identity_5Identity&lstm_121/while/lstm_cell_487/add_1:z:0^lstm_121/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_121/while/NoOpNoOp4^lstm_121/while/lstm_cell_487/BiasAdd/ReadVariableOp3^lstm_121/while/lstm_cell_487/MatMul/ReadVariableOp5^lstm_121/while/lstm_cell_487/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_121_while_identity lstm_121/while/Identity:output:0"?
lstm_121_while_identity_1"lstm_121/while/Identity_1:output:0"?
lstm_121_while_identity_2"lstm_121/while/Identity_2:output:0"?
lstm_121_while_identity_3"lstm_121/while/Identity_3:output:0"?
lstm_121_while_identity_4"lstm_121/while/Identity_4:output:0"?
lstm_121_while_identity_5"lstm_121/while/Identity_5:output:0"T
'lstm_121_while_lstm_121_strided_slice_1)lstm_121_while_lstm_121_strided_slice_1_0"~
<lstm_121_while_lstm_cell_487_biasadd_readvariableop_resource>lstm_121_while_lstm_cell_487_biasadd_readvariableop_resource_0"?
=lstm_121_while_lstm_cell_487_matmul_1_readvariableop_resource?lstm_121_while_lstm_cell_487_matmul_1_readvariableop_resource_0"|
;lstm_121_while_lstm_cell_487_matmul_readvariableop_resource=lstm_121_while_lstm_cell_487_matmul_readvariableop_resource_0"?
clstm_121_while_tensorarrayv2read_tensorlistgetitem_lstm_121_tensorarrayunstack_tensorlistfromtensorelstm_121_while_tensorarrayv2read_tensorlistgetitem_lstm_121_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_121/while/lstm_cell_487/BiasAdd/ReadVariableOp3lstm_121/while/lstm_cell_487/BiasAdd/ReadVariableOp2h
2lstm_121/while/lstm_cell_487/MatMul/ReadVariableOp2lstm_121/while/lstm_cell_487/MatMul/ReadVariableOp2l
4lstm_121/while/lstm_cell_487/MatMul_1/ReadVariableOp4lstm_121/while/lstm_cell_487/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2950896
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2950896___redundant_placeholder05
1while_while_cond_2950896___redundant_placeholder15
1while_while_cond_2950896___redundant_placeholder25
1while_while_cond_2950896___redundant_placeholder3
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
E__inference_lstm_121_layer_call_and_return_conditional_losses_2954039
inputs_0?
,lstm_cell_487_matmul_readvariableop_resource:	d?A
.lstm_cell_487_matmul_1_readvariableop_resource:	2?<
-lstm_cell_487_biasadd_readvariableop_resource:	?
identity??$lstm_cell_487/BiasAdd/ReadVariableOp?#lstm_cell_487/MatMul/ReadVariableOp?%lstm_cell_487/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_487/MatMul/ReadVariableOpReadVariableOp,lstm_cell_487_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_487/MatMulMatMulstrided_slice_2:output:0+lstm_cell_487/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_487/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_487_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_487/MatMul_1MatMulzeros:output:0-lstm_cell_487/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_487/addAddV2lstm_cell_487/MatMul:product:0 lstm_cell_487/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_487/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_487_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_487/BiasAddBiasAddlstm_cell_487/add:z:0,lstm_cell_487/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_487/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_487/splitSplit&lstm_cell_487/split/split_dim:output:0lstm_cell_487/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_487/SigmoidSigmoidlstm_cell_487/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_487/Sigmoid_1Sigmoidlstm_cell_487/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_487/mulMullstm_cell_487/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_487/ReluRelulstm_cell_487/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_487/mul_1Mullstm_cell_487/Sigmoid:y:0 lstm_cell_487/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_487/add_1AddV2lstm_cell_487/mul:z:0lstm_cell_487/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_487/Sigmoid_2Sigmoidlstm_cell_487/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_487/Relu_1Relulstm_cell_487/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_487/mul_2Mullstm_cell_487/Sigmoid_2:y:0"lstm_cell_487/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_487_matmul_readvariableop_resource.lstm_cell_487_matmul_1_readvariableop_resource-lstm_cell_487_biasadd_readvariableop_resource*
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
while_body_2953955*
condR
while_cond_2953954*K
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
NoOpNoOp%^lstm_cell_487/BiasAdd/ReadVariableOp$^lstm_cell_487/MatMul/ReadVariableOp&^lstm_cell_487/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_487/BiasAdd/ReadVariableOp$lstm_cell_487/BiasAdd/ReadVariableOp2J
#lstm_cell_487/MatMul/ReadVariableOp#lstm_cell_487/MatMul/ReadVariableOp2N
%lstm_cell_487/MatMul_1/ReadVariableOp%lstm_cell_487/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
??
?
J__inference_sequential_40_layer_call_and_return_conditional_losses_2952666

inputsH
5lstm_120_lstm_cell_486_matmul_readvariableop_resource:	?J
7lstm_120_lstm_cell_486_matmul_1_readvariableop_resource:	d?E
6lstm_120_lstm_cell_486_biasadd_readvariableop_resource:	?H
5lstm_121_lstm_cell_487_matmul_readvariableop_resource:	d?J
7lstm_121_lstm_cell_487_matmul_1_readvariableop_resource:	2?E
6lstm_121_lstm_cell_487_biasadd_readvariableop_resource:	?G
5lstm_122_lstm_cell_488_matmul_readvariableop_resource:2(I
7lstm_122_lstm_cell_488_matmul_1_readvariableop_resource:
(D
6lstm_122_lstm_cell_488_biasadd_readvariableop_resource:(9
'dense_40_matmul_readvariableop_resource:
6
(dense_40_biasadd_readvariableop_resource:
identity??dense_40/BiasAdd/ReadVariableOp?dense_40/MatMul/ReadVariableOp?-lstm_120/lstm_cell_486/BiasAdd/ReadVariableOp?,lstm_120/lstm_cell_486/MatMul/ReadVariableOp?.lstm_120/lstm_cell_486/MatMul_1/ReadVariableOp?lstm_120/while?-lstm_121/lstm_cell_487/BiasAdd/ReadVariableOp?,lstm_121/lstm_cell_487/MatMul/ReadVariableOp?.lstm_121/lstm_cell_487/MatMul_1/ReadVariableOp?lstm_121/while?-lstm_122/lstm_cell_488/BiasAdd/ReadVariableOp?,lstm_122/lstm_cell_488/MatMul/ReadVariableOp?.lstm_122/lstm_cell_488/MatMul_1/ReadVariableOp?lstm_122/whileD
lstm_120/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_120/strided_sliceStridedSlicelstm_120/Shape:output:0%lstm_120/strided_slice/stack:output:0'lstm_120/strided_slice/stack_1:output:0'lstm_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_120/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_120/zeros/packedPacklstm_120/strided_slice:output:0 lstm_120/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_120/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_120/zerosFilllstm_120/zeros/packed:output:0lstm_120/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_120/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_120/zeros_1/packedPacklstm_120/strided_slice:output:0"lstm_120/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_120/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_120/zeros_1Fill lstm_120/zeros_1/packed:output:0lstm_120/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_120/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_120/transpose	Transposeinputs lstm_120/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_120/Shape_1Shapelstm_120/transpose:y:0*
T0*
_output_shapes
:h
lstm_120/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_120/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_120/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_120/strided_slice_1StridedSlicelstm_120/Shape_1:output:0'lstm_120/strided_slice_1/stack:output:0)lstm_120/strided_slice_1/stack_1:output:0)lstm_120/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_120/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_120/TensorArrayV2TensorListReserve-lstm_120/TensorArrayV2/element_shape:output:0!lstm_120/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_120/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_120/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_120/transpose:y:0Glstm_120/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_120/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_120/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_120/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_120/strided_slice_2StridedSlicelstm_120/transpose:y:0'lstm_120/strided_slice_2/stack:output:0)lstm_120/strided_slice_2/stack_1:output:0)lstm_120/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_120/lstm_cell_486/MatMul/ReadVariableOpReadVariableOp5lstm_120_lstm_cell_486_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_120/lstm_cell_486/MatMulMatMul!lstm_120/strided_slice_2:output:04lstm_120/lstm_cell_486/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_120/lstm_cell_486/MatMul_1/ReadVariableOpReadVariableOp7lstm_120_lstm_cell_486_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_120/lstm_cell_486/MatMul_1MatMullstm_120/zeros:output:06lstm_120/lstm_cell_486/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_120/lstm_cell_486/addAddV2'lstm_120/lstm_cell_486/MatMul:product:0)lstm_120/lstm_cell_486/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_120/lstm_cell_486/BiasAdd/ReadVariableOpReadVariableOp6lstm_120_lstm_cell_486_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_120/lstm_cell_486/BiasAddBiasAddlstm_120/lstm_cell_486/add:z:05lstm_120/lstm_cell_486/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_120/lstm_cell_486/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_120/lstm_cell_486/splitSplit/lstm_120/lstm_cell_486/split/split_dim:output:0'lstm_120/lstm_cell_486/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_120/lstm_cell_486/SigmoidSigmoid%lstm_120/lstm_cell_486/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_120/lstm_cell_486/Sigmoid_1Sigmoid%lstm_120/lstm_cell_486/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_120/lstm_cell_486/mulMul$lstm_120/lstm_cell_486/Sigmoid_1:y:0lstm_120/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_120/lstm_cell_486/ReluRelu%lstm_120/lstm_cell_486/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_120/lstm_cell_486/mul_1Mul"lstm_120/lstm_cell_486/Sigmoid:y:0)lstm_120/lstm_cell_486/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_120/lstm_cell_486/add_1AddV2lstm_120/lstm_cell_486/mul:z:0 lstm_120/lstm_cell_486/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_120/lstm_cell_486/Sigmoid_2Sigmoid%lstm_120/lstm_cell_486/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_120/lstm_cell_486/Relu_1Relu lstm_120/lstm_cell_486/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_120/lstm_cell_486/mul_2Mul$lstm_120/lstm_cell_486/Sigmoid_2:y:0+lstm_120/lstm_cell_486/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_120/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_120/TensorArrayV2_1TensorListReserve/lstm_120/TensorArrayV2_1/element_shape:output:0!lstm_120/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_120/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_120/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_120/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_120/whileWhile$lstm_120/while/loop_counter:output:0*lstm_120/while/maximum_iterations:output:0lstm_120/time:output:0!lstm_120/TensorArrayV2_1:handle:0lstm_120/zeros:output:0lstm_120/zeros_1:output:0!lstm_120/strided_slice_1:output:0@lstm_120/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_120_lstm_cell_486_matmul_readvariableop_resource7lstm_120_lstm_cell_486_matmul_1_readvariableop_resource6lstm_120_lstm_cell_486_biasadd_readvariableop_resource*
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
lstm_120_while_body_2952298*'
condR
lstm_120_while_cond_2952297*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_120/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_120/TensorArrayV2Stack/TensorListStackTensorListStacklstm_120/while:output:3Blstm_120/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_120/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_120/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_120/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_120/strided_slice_3StridedSlice4lstm_120/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_120/strided_slice_3/stack:output:0)lstm_120/strided_slice_3/stack_1:output:0)lstm_120/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_120/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_120/transpose_1	Transpose4lstm_120/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_120/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_120/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_121/ShapeShapelstm_120/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_121/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_121/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_121/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_121/strided_sliceStridedSlicelstm_121/Shape:output:0%lstm_121/strided_slice/stack:output:0'lstm_121/strided_slice/stack_1:output:0'lstm_121/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_121/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_121/zeros/packedPacklstm_121/strided_slice:output:0 lstm_121/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_121/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_121/zerosFilllstm_121/zeros/packed:output:0lstm_121/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_121/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_121/zeros_1/packedPacklstm_121/strided_slice:output:0"lstm_121/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_121/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_121/zeros_1Fill lstm_121/zeros_1/packed:output:0lstm_121/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_121/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_121/transpose	Transposelstm_120/transpose_1:y:0 lstm_121/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_121/Shape_1Shapelstm_121/transpose:y:0*
T0*
_output_shapes
:h
lstm_121/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_121/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_121/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_121/strided_slice_1StridedSlicelstm_121/Shape_1:output:0'lstm_121/strided_slice_1/stack:output:0)lstm_121/strided_slice_1/stack_1:output:0)lstm_121/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_121/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_121/TensorArrayV2TensorListReserve-lstm_121/TensorArrayV2/element_shape:output:0!lstm_121/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_121/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_121/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_121/transpose:y:0Glstm_121/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_121/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_121/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_121/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_121/strided_slice_2StridedSlicelstm_121/transpose:y:0'lstm_121/strided_slice_2/stack:output:0)lstm_121/strided_slice_2/stack_1:output:0)lstm_121/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_121/lstm_cell_487/MatMul/ReadVariableOpReadVariableOp5lstm_121_lstm_cell_487_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_121/lstm_cell_487/MatMulMatMul!lstm_121/strided_slice_2:output:04lstm_121/lstm_cell_487/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_121/lstm_cell_487/MatMul_1/ReadVariableOpReadVariableOp7lstm_121_lstm_cell_487_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_121/lstm_cell_487/MatMul_1MatMullstm_121/zeros:output:06lstm_121/lstm_cell_487/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_121/lstm_cell_487/addAddV2'lstm_121/lstm_cell_487/MatMul:product:0)lstm_121/lstm_cell_487/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_121/lstm_cell_487/BiasAdd/ReadVariableOpReadVariableOp6lstm_121_lstm_cell_487_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_121/lstm_cell_487/BiasAddBiasAddlstm_121/lstm_cell_487/add:z:05lstm_121/lstm_cell_487/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_121/lstm_cell_487/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_121/lstm_cell_487/splitSplit/lstm_121/lstm_cell_487/split/split_dim:output:0'lstm_121/lstm_cell_487/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_121/lstm_cell_487/SigmoidSigmoid%lstm_121/lstm_cell_487/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_121/lstm_cell_487/Sigmoid_1Sigmoid%lstm_121/lstm_cell_487/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_121/lstm_cell_487/mulMul$lstm_121/lstm_cell_487/Sigmoid_1:y:0lstm_121/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_121/lstm_cell_487/ReluRelu%lstm_121/lstm_cell_487/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_121/lstm_cell_487/mul_1Mul"lstm_121/lstm_cell_487/Sigmoid:y:0)lstm_121/lstm_cell_487/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_121/lstm_cell_487/add_1AddV2lstm_121/lstm_cell_487/mul:z:0 lstm_121/lstm_cell_487/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_121/lstm_cell_487/Sigmoid_2Sigmoid%lstm_121/lstm_cell_487/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_121/lstm_cell_487/Relu_1Relu lstm_121/lstm_cell_487/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_121/lstm_cell_487/mul_2Mul$lstm_121/lstm_cell_487/Sigmoid_2:y:0+lstm_121/lstm_cell_487/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_121/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_121/TensorArrayV2_1TensorListReserve/lstm_121/TensorArrayV2_1/element_shape:output:0!lstm_121/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_121/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_121/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_121/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_121/whileWhile$lstm_121/while/loop_counter:output:0*lstm_121/while/maximum_iterations:output:0lstm_121/time:output:0!lstm_121/TensorArrayV2_1:handle:0lstm_121/zeros:output:0lstm_121/zeros_1:output:0!lstm_121/strided_slice_1:output:0@lstm_121/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_121_lstm_cell_487_matmul_readvariableop_resource7lstm_121_lstm_cell_487_matmul_1_readvariableop_resource6lstm_121_lstm_cell_487_biasadd_readvariableop_resource*
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
lstm_121_while_body_2952437*'
condR
lstm_121_while_cond_2952436*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_121/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_121/TensorArrayV2Stack/TensorListStackTensorListStacklstm_121/while:output:3Blstm_121/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_121/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_121/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_121/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_121/strided_slice_3StridedSlice4lstm_121/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_121/strided_slice_3/stack:output:0)lstm_121/strided_slice_3/stack_1:output:0)lstm_121/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_121/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_121/transpose_1	Transpose4lstm_121/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_121/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_121/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_122/ShapeShapelstm_121/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_122/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_122/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_122/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_122/strided_sliceStridedSlicelstm_122/Shape:output:0%lstm_122/strided_slice/stack:output:0'lstm_122/strided_slice/stack_1:output:0'lstm_122/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_122/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_122/zeros/packedPacklstm_122/strided_slice:output:0 lstm_122/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_122/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_122/zerosFilllstm_122/zeros/packed:output:0lstm_122/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_122/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_122/zeros_1/packedPacklstm_122/strided_slice:output:0"lstm_122/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_122/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_122/zeros_1Fill lstm_122/zeros_1/packed:output:0lstm_122/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_122/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_122/transpose	Transposelstm_121/transpose_1:y:0 lstm_122/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_122/Shape_1Shapelstm_122/transpose:y:0*
T0*
_output_shapes
:h
lstm_122/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_122/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_122/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_122/strided_slice_1StridedSlicelstm_122/Shape_1:output:0'lstm_122/strided_slice_1/stack:output:0)lstm_122/strided_slice_1/stack_1:output:0)lstm_122/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_122/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_122/TensorArrayV2TensorListReserve-lstm_122/TensorArrayV2/element_shape:output:0!lstm_122/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_122/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_122/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_122/transpose:y:0Glstm_122/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_122/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_122/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_122/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_122/strided_slice_2StridedSlicelstm_122/transpose:y:0'lstm_122/strided_slice_2/stack:output:0)lstm_122/strided_slice_2/stack_1:output:0)lstm_122/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_122/lstm_cell_488/MatMul/ReadVariableOpReadVariableOp5lstm_122_lstm_cell_488_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_122/lstm_cell_488/MatMulMatMul!lstm_122/strided_slice_2:output:04lstm_122/lstm_cell_488/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_122/lstm_cell_488/MatMul_1/ReadVariableOpReadVariableOp7lstm_122_lstm_cell_488_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_122/lstm_cell_488/MatMul_1MatMullstm_122/zeros:output:06lstm_122/lstm_cell_488/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_122/lstm_cell_488/addAddV2'lstm_122/lstm_cell_488/MatMul:product:0)lstm_122/lstm_cell_488/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_122/lstm_cell_488/BiasAdd/ReadVariableOpReadVariableOp6lstm_122_lstm_cell_488_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_122/lstm_cell_488/BiasAddBiasAddlstm_122/lstm_cell_488/add:z:05lstm_122/lstm_cell_488/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_122/lstm_cell_488/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_122/lstm_cell_488/splitSplit/lstm_122/lstm_cell_488/split/split_dim:output:0'lstm_122/lstm_cell_488/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_122/lstm_cell_488/SigmoidSigmoid%lstm_122/lstm_cell_488/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_122/lstm_cell_488/Sigmoid_1Sigmoid%lstm_122/lstm_cell_488/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_122/lstm_cell_488/mulMul$lstm_122/lstm_cell_488/Sigmoid_1:y:0lstm_122/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_122/lstm_cell_488/ReluRelu%lstm_122/lstm_cell_488/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_122/lstm_cell_488/mul_1Mul"lstm_122/lstm_cell_488/Sigmoid:y:0)lstm_122/lstm_cell_488/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_122/lstm_cell_488/add_1AddV2lstm_122/lstm_cell_488/mul:z:0 lstm_122/lstm_cell_488/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_122/lstm_cell_488/Sigmoid_2Sigmoid%lstm_122/lstm_cell_488/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_122/lstm_cell_488/Relu_1Relu lstm_122/lstm_cell_488/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_122/lstm_cell_488/mul_2Mul$lstm_122/lstm_cell_488/Sigmoid_2:y:0+lstm_122/lstm_cell_488/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_122/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_122/TensorArrayV2_1TensorListReserve/lstm_122/TensorArrayV2_1/element_shape:output:0!lstm_122/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_122/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_122/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_122/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_122/whileWhile$lstm_122/while/loop_counter:output:0*lstm_122/while/maximum_iterations:output:0lstm_122/time:output:0!lstm_122/TensorArrayV2_1:handle:0lstm_122/zeros:output:0lstm_122/zeros_1:output:0!lstm_122/strided_slice_1:output:0@lstm_122/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_122_lstm_cell_488_matmul_readvariableop_resource7lstm_122_lstm_cell_488_matmul_1_readvariableop_resource6lstm_122_lstm_cell_488_biasadd_readvariableop_resource*
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
lstm_122_while_body_2952576*'
condR
lstm_122_while_cond_2952575*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_122/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_122/TensorArrayV2Stack/TensorListStackTensorListStacklstm_122/while:output:3Blstm_122/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_122/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_122/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_122/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_122/strided_slice_3StridedSlice4lstm_122/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_122/strided_slice_3/stack:output:0)lstm_122/strided_slice_3/stack_1:output:0)lstm_122/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_122/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_122/transpose_1	Transpose4lstm_122/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_122/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_122/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_40/MatMul/ReadVariableOpReadVariableOp'dense_40_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_40/MatMulMatMul!lstm_122/strided_slice_3:output:0&dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_40/BiasAdd/ReadVariableOpReadVariableOp(dense_40_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_40/BiasAddBiasAdddense_40/MatMul:product:0'dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_40/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_40/BiasAdd/ReadVariableOp^dense_40/MatMul/ReadVariableOp.^lstm_120/lstm_cell_486/BiasAdd/ReadVariableOp-^lstm_120/lstm_cell_486/MatMul/ReadVariableOp/^lstm_120/lstm_cell_486/MatMul_1/ReadVariableOp^lstm_120/while.^lstm_121/lstm_cell_487/BiasAdd/ReadVariableOp-^lstm_121/lstm_cell_487/MatMul/ReadVariableOp/^lstm_121/lstm_cell_487/MatMul_1/ReadVariableOp^lstm_121/while.^lstm_122/lstm_cell_488/BiasAdd/ReadVariableOp-^lstm_122/lstm_cell_488/MatMul/ReadVariableOp/^lstm_122/lstm_cell_488/MatMul_1/ReadVariableOp^lstm_122/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_40/BiasAdd/ReadVariableOpdense_40/BiasAdd/ReadVariableOp2@
dense_40/MatMul/ReadVariableOpdense_40/MatMul/ReadVariableOp2^
-lstm_120/lstm_cell_486/BiasAdd/ReadVariableOp-lstm_120/lstm_cell_486/BiasAdd/ReadVariableOp2\
,lstm_120/lstm_cell_486/MatMul/ReadVariableOp,lstm_120/lstm_cell_486/MatMul/ReadVariableOp2`
.lstm_120/lstm_cell_486/MatMul_1/ReadVariableOp.lstm_120/lstm_cell_486/MatMul_1/ReadVariableOp2 
lstm_120/whilelstm_120/while2^
-lstm_121/lstm_cell_487/BiasAdd/ReadVariableOp-lstm_121/lstm_cell_487/BiasAdd/ReadVariableOp2\
,lstm_121/lstm_cell_487/MatMul/ReadVariableOp,lstm_121/lstm_cell_487/MatMul/ReadVariableOp2`
.lstm_121/lstm_cell_487/MatMul_1/ReadVariableOp.lstm_121/lstm_cell_487/MatMul_1/ReadVariableOp2 
lstm_121/whilelstm_121/while2^
-lstm_122/lstm_cell_488/BiasAdd/ReadVariableOp-lstm_122/lstm_cell_488/BiasAdd/ReadVariableOp2\
,lstm_122/lstm_cell_488/MatMul/ReadVariableOp,lstm_122/lstm_cell_488/MatMul/ReadVariableOp2`
.lstm_122/lstm_cell_488/MatMul_1/ReadVariableOp.lstm_122/lstm_cell_488/MatMul_1/ReadVariableOp2 
lstm_122/whilelstm_122/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2951721
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_487_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_487_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_487_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_487_matmul_readvariableop_resource:	d?G
4while_lstm_cell_487_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_487_biasadd_readvariableop_resource:	???*while/lstm_cell_487/BiasAdd/ReadVariableOp?)while/lstm_cell_487/MatMul/ReadVariableOp?+while/lstm_cell_487/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_487/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_487_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_487/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_487/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_487/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_487_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_487/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_487/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_487/addAddV2$while/lstm_cell_487/MatMul:product:0&while/lstm_cell_487/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_487/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_487_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_487/BiasAddBiasAddwhile/lstm_cell_487/add:z:02while/lstm_cell_487/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_487/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_487/splitSplit,while/lstm_cell_487/split/split_dim:output:0$while/lstm_cell_487/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_487/SigmoidSigmoid"while/lstm_cell_487/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_487/Sigmoid_1Sigmoid"while/lstm_cell_487/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_487/mulMul!while/lstm_cell_487/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_487/ReluRelu"while/lstm_cell_487/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_487/mul_1Mulwhile/lstm_cell_487/Sigmoid:y:0&while/lstm_cell_487/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_487/add_1AddV2while/lstm_cell_487/mul:z:0while/lstm_cell_487/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_487/Sigmoid_2Sigmoid"while/lstm_cell_487/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_487/Relu_1Reluwhile/lstm_cell_487/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_487/mul_2Mul!while/lstm_cell_487/Sigmoid_2:y:0(while/lstm_cell_487/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_487/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_487/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_487/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_487/BiasAdd/ReadVariableOp*^while/lstm_cell_487/MatMul/ReadVariableOp,^while/lstm_cell_487/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_487_biasadd_readvariableop_resource5while_lstm_cell_487_biasadd_readvariableop_resource_0"n
4while_lstm_cell_487_matmul_1_readvariableop_resource6while_lstm_cell_487_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_487_matmul_readvariableop_resource4while_lstm_cell_487_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_487/BiasAdd/ReadVariableOp*while/lstm_cell_487/BiasAdd/ReadVariableOp2V
)while/lstm_cell_487/MatMul/ReadVariableOp)while/lstm_cell_487/MatMul/ReadVariableOp2Z
+while/lstm_cell_487/MatMul_1/ReadVariableOp+while/lstm_cell_487/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?W
?
 __inference__traced_save_2955397
file_prefix.
*savev2_dense_40_kernel_read_readvariableop,
(savev2_dense_40_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_120_lstm_cell_120_kernel_read_readvariableopF
Bsavev2_lstm_120_lstm_cell_120_recurrent_kernel_read_readvariableop:
6savev2_lstm_120_lstm_cell_120_bias_read_readvariableop<
8savev2_lstm_121_lstm_cell_121_kernel_read_readvariableopF
Bsavev2_lstm_121_lstm_cell_121_recurrent_kernel_read_readvariableop:
6savev2_lstm_121_lstm_cell_121_bias_read_readvariableop<
8savev2_lstm_122_lstm_cell_122_kernel_read_readvariableopF
Bsavev2_lstm_122_lstm_cell_122_recurrent_kernel_read_readvariableop:
6savev2_lstm_122_lstm_cell_122_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_40_kernel_m_read_readvariableop3
/savev2_adam_dense_40_bias_m_read_readvariableopC
?savev2_adam_lstm_120_lstm_cell_120_kernel_m_read_readvariableopM
Isavev2_adam_lstm_120_lstm_cell_120_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_120_lstm_cell_120_bias_m_read_readvariableopC
?savev2_adam_lstm_121_lstm_cell_121_kernel_m_read_readvariableopM
Isavev2_adam_lstm_121_lstm_cell_121_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_121_lstm_cell_121_bias_m_read_readvariableopC
?savev2_adam_lstm_122_lstm_cell_122_kernel_m_read_readvariableopM
Isavev2_adam_lstm_122_lstm_cell_122_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_122_lstm_cell_122_bias_m_read_readvariableop5
1savev2_adam_dense_40_kernel_v_read_readvariableop3
/savev2_adam_dense_40_bias_v_read_readvariableopC
?savev2_adam_lstm_120_lstm_cell_120_kernel_v_read_readvariableopM
Isavev2_adam_lstm_120_lstm_cell_120_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_120_lstm_cell_120_bias_v_read_readvariableopC
?savev2_adam_lstm_121_lstm_cell_121_kernel_v_read_readvariableopM
Isavev2_adam_lstm_121_lstm_cell_121_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_121_lstm_cell_121_bias_v_read_readvariableopC
?savev2_adam_lstm_122_lstm_cell_122_kernel_v_read_readvariableopM
Isavev2_adam_lstm_122_lstm_cell_122_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_122_lstm_cell_122_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_40_kernel_read_readvariableop(savev2_dense_40_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_120_lstm_cell_120_kernel_read_readvariableopBsavev2_lstm_120_lstm_cell_120_recurrent_kernel_read_readvariableop6savev2_lstm_120_lstm_cell_120_bias_read_readvariableop8savev2_lstm_121_lstm_cell_121_kernel_read_readvariableopBsavev2_lstm_121_lstm_cell_121_recurrent_kernel_read_readvariableop6savev2_lstm_121_lstm_cell_121_bias_read_readvariableop8savev2_lstm_122_lstm_cell_122_kernel_read_readvariableopBsavev2_lstm_122_lstm_cell_122_recurrent_kernel_read_readvariableop6savev2_lstm_122_lstm_cell_122_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_40_kernel_m_read_readvariableop/savev2_adam_dense_40_bias_m_read_readvariableop?savev2_adam_lstm_120_lstm_cell_120_kernel_m_read_readvariableopIsavev2_adam_lstm_120_lstm_cell_120_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_120_lstm_cell_120_bias_m_read_readvariableop?savev2_adam_lstm_121_lstm_cell_121_kernel_m_read_readvariableopIsavev2_adam_lstm_121_lstm_cell_121_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_121_lstm_cell_121_bias_m_read_readvariableop?savev2_adam_lstm_122_lstm_cell_122_kernel_m_read_readvariableopIsavev2_adam_lstm_122_lstm_cell_122_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_122_lstm_cell_122_bias_m_read_readvariableop1savev2_adam_dense_40_kernel_v_read_readvariableop/savev2_adam_dense_40_bias_v_read_readvariableop?savev2_adam_lstm_120_lstm_cell_120_kernel_v_read_readvariableopIsavev2_adam_lstm_120_lstm_cell_120_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_120_lstm_cell_120_bias_v_read_readvariableop?savev2_adam_lstm_121_lstm_cell_121_kernel_v_read_readvariableopIsavev2_adam_lstm_121_lstm_cell_121_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_121_lstm_cell_121_bias_v_read_readvariableop?savev2_adam_lstm_122_lstm_cell_122_kernel_v_read_readvariableopIsavev2_adam_lstm_122_lstm_cell_122_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_122_lstm_cell_122_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
E__inference_lstm_122_layer_call_and_return_conditional_losses_2950966

inputs'
lstm_cell_488_2950884:2('
lstm_cell_488_2950886:
(#
lstm_cell_488_2950888:(
identity??%lstm_cell_488/StatefulPartitionedCall?while;
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
%lstm_cell_488/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_488_2950884lstm_cell_488_2950886lstm_cell_488_2950888*
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
J__inference_lstm_cell_488_layer_call_and_return_conditional_losses_2950838n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_488_2950884lstm_cell_488_2950886lstm_cell_488_2950888*
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
while_body_2950897*
condR
while_cond_2950896*K
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
NoOpNoOp&^lstm_cell_488/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_488/StatefulPartitionedCall%lstm_cell_488/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_121_layer_call_and_return_conditional_losses_2951805

inputs?
,lstm_cell_487_matmul_readvariableop_resource:	d?A
.lstm_cell_487_matmul_1_readvariableop_resource:	2?<
-lstm_cell_487_biasadd_readvariableop_resource:	?
identity??$lstm_cell_487/BiasAdd/ReadVariableOp?#lstm_cell_487/MatMul/ReadVariableOp?%lstm_cell_487/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_487/MatMul/ReadVariableOpReadVariableOp,lstm_cell_487_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_487/MatMulMatMulstrided_slice_2:output:0+lstm_cell_487/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_487/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_487_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_487/MatMul_1MatMulzeros:output:0-lstm_cell_487/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_487/addAddV2lstm_cell_487/MatMul:product:0 lstm_cell_487/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_487/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_487_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_487/BiasAddBiasAddlstm_cell_487/add:z:0,lstm_cell_487/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_487/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_487/splitSplit&lstm_cell_487/split/split_dim:output:0lstm_cell_487/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_487/SigmoidSigmoidlstm_cell_487/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_487/Sigmoid_1Sigmoidlstm_cell_487/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_487/mulMullstm_cell_487/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_487/ReluRelulstm_cell_487/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_487/mul_1Mullstm_cell_487/Sigmoid:y:0 lstm_cell_487/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_487/add_1AddV2lstm_cell_487/mul:z:0lstm_cell_487/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_487/Sigmoid_2Sigmoidlstm_cell_487/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_487/Relu_1Relulstm_cell_487/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_487/mul_2Mullstm_cell_487/Sigmoid_2:y:0"lstm_cell_487/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_487_matmul_readvariableop_resource.lstm_cell_487_matmul_1_readvariableop_resource-lstm_cell_487_biasadd_readvariableop_resource*
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
while_body_2951721*
condR
while_cond_2951720*K
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
NoOpNoOp%^lstm_cell_487/BiasAdd/ReadVariableOp$^lstm_cell_487/MatMul/ReadVariableOp&^lstm_cell_487/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_487/BiasAdd/ReadVariableOp$lstm_cell_487/BiasAdd/ReadVariableOp2J
#lstm_cell_487/MatMul/ReadVariableOp#lstm_cell_487/MatMul/ReadVariableOp2N
%lstm_cell_487/MatMul_1/ReadVariableOp%lstm_cell_487/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_487_layer_call_and_return_conditional_losses_2950488

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
while_cond_2954097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2954097___redundant_placeholder05
1while_while_cond_2954097___redundant_placeholder15
1while_while_cond_2954097___redundant_placeholder25
1while_while_cond_2954097___redundant_placeholder3
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
while_body_2954241
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_487_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_487_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_487_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_487_matmul_readvariableop_resource:	d?G
4while_lstm_cell_487_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_487_biasadd_readvariableop_resource:	???*while/lstm_cell_487/BiasAdd/ReadVariableOp?)while/lstm_cell_487/MatMul/ReadVariableOp?+while/lstm_cell_487/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_487/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_487_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_487/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_487/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_487/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_487_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_487/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_487/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_487/addAddV2$while/lstm_cell_487/MatMul:product:0&while/lstm_cell_487/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_487/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_487_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_487/BiasAddBiasAddwhile/lstm_cell_487/add:z:02while/lstm_cell_487/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_487/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_487/splitSplit,while/lstm_cell_487/split/split_dim:output:0$while/lstm_cell_487/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_487/SigmoidSigmoid"while/lstm_cell_487/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_487/Sigmoid_1Sigmoid"while/lstm_cell_487/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_487/mulMul!while/lstm_cell_487/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_487/ReluRelu"while/lstm_cell_487/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_487/mul_1Mulwhile/lstm_cell_487/Sigmoid:y:0&while/lstm_cell_487/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_487/add_1AddV2while/lstm_cell_487/mul:z:0while/lstm_cell_487/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_487/Sigmoid_2Sigmoid"while/lstm_cell_487/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_487/Relu_1Reluwhile/lstm_cell_487/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_487/mul_2Mul!while/lstm_cell_487/Sigmoid_2:y:0(while/lstm_cell_487/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_487/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_487/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_487/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_487/BiasAdd/ReadVariableOp*^while/lstm_cell_487/MatMul/ReadVariableOp,^while/lstm_cell_487/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_487_biasadd_readvariableop_resource5while_lstm_cell_487_biasadd_readvariableop_resource_0"n
4while_lstm_cell_487_matmul_1_readvariableop_resource6while_lstm_cell_487_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_487_matmul_readvariableop_resource4while_lstm_cell_487_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_487/BiasAdd/ReadVariableOp*while/lstm_cell_487/BiasAdd/ReadVariableOp2V
)while/lstm_cell_487/MatMul/ReadVariableOp)while/lstm_cell_487/MatMul/ReadVariableOp2Z
+while/lstm_cell_487/MatMul_1/ReadVariableOp+while/lstm_cell_487/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_122_layer_call_and_return_conditional_losses_2950775

inputs'
lstm_cell_488_2950693:2('
lstm_cell_488_2950695:
(#
lstm_cell_488_2950697:(
identity??%lstm_cell_488/StatefulPartitionedCall?while;
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
%lstm_cell_488/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_488_2950693lstm_cell_488_2950695lstm_cell_488_2950697*
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
J__inference_lstm_cell_488_layer_call_and_return_conditional_losses_2950692n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_488_2950693lstm_cell_488_2950695lstm_cell_488_2950697*
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
while_body_2950706*
condR
while_cond_2950705*K
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
NoOpNoOp&^lstm_cell_488/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_488/StatefulPartitionedCall%lstm_cell_488/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_121_layer_call_and_return_conditional_losses_2951274

inputs?
,lstm_cell_487_matmul_readvariableop_resource:	d?A
.lstm_cell_487_matmul_1_readvariableop_resource:	2?<
-lstm_cell_487_biasadd_readvariableop_resource:	?
identity??$lstm_cell_487/BiasAdd/ReadVariableOp?#lstm_cell_487/MatMul/ReadVariableOp?%lstm_cell_487/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_487/MatMul/ReadVariableOpReadVariableOp,lstm_cell_487_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_487/MatMulMatMulstrided_slice_2:output:0+lstm_cell_487/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_487/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_487_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_487/MatMul_1MatMulzeros:output:0-lstm_cell_487/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_487/addAddV2lstm_cell_487/MatMul:product:0 lstm_cell_487/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_487/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_487_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_487/BiasAddBiasAddlstm_cell_487/add:z:0,lstm_cell_487/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_487/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_487/splitSplit&lstm_cell_487/split/split_dim:output:0lstm_cell_487/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_487/SigmoidSigmoidlstm_cell_487/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_487/Sigmoid_1Sigmoidlstm_cell_487/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_487/mulMullstm_cell_487/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_487/ReluRelulstm_cell_487/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_487/mul_1Mullstm_cell_487/Sigmoid:y:0 lstm_cell_487/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_487/add_1AddV2lstm_cell_487/mul:z:0lstm_cell_487/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_487/Sigmoid_2Sigmoidlstm_cell_487/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_487/Relu_1Relulstm_cell_487/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_487/mul_2Mullstm_cell_487/Sigmoid_2:y:0"lstm_cell_487/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_487_matmul_readvariableop_resource.lstm_cell_487_matmul_1_readvariableop_resource-lstm_cell_487_biasadd_readvariableop_resource*
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
while_body_2951190*
condR
while_cond_2951189*K
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
NoOpNoOp%^lstm_cell_487/BiasAdd/ReadVariableOp$^lstm_cell_487/MatMul/ReadVariableOp&^lstm_cell_487/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_487/BiasAdd/ReadVariableOp$lstm_cell_487/BiasAdd/ReadVariableOp2J
#lstm_cell_487/MatMul/ReadVariableOp#lstm_cell_487/MatMul/ReadVariableOp2N
%lstm_cell_487/MatMul_1/ReadVariableOp%lstm_cell_487/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_2950196
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2950196___redundant_placeholder05
1while_while_cond_2950196___redundant_placeholder15
1while_while_cond_2950196___redundant_placeholder25
1while_while_cond_2950196___redundant_placeholder3
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

lstm_122_while_body_2953003.
*lstm_122_while_lstm_122_while_loop_counter4
0lstm_122_while_lstm_122_while_maximum_iterations
lstm_122_while_placeholder 
lstm_122_while_placeholder_1 
lstm_122_while_placeholder_2 
lstm_122_while_placeholder_3-
)lstm_122_while_lstm_122_strided_slice_1_0i
elstm_122_while_tensorarrayv2read_tensorlistgetitem_lstm_122_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_122_while_lstm_cell_488_matmul_readvariableop_resource_0:2(Q
?lstm_122_while_lstm_cell_488_matmul_1_readvariableop_resource_0:
(L
>lstm_122_while_lstm_cell_488_biasadd_readvariableop_resource_0:(
lstm_122_while_identity
lstm_122_while_identity_1
lstm_122_while_identity_2
lstm_122_while_identity_3
lstm_122_while_identity_4
lstm_122_while_identity_5+
'lstm_122_while_lstm_122_strided_slice_1g
clstm_122_while_tensorarrayv2read_tensorlistgetitem_lstm_122_tensorarrayunstack_tensorlistfromtensorM
;lstm_122_while_lstm_cell_488_matmul_readvariableop_resource:2(O
=lstm_122_while_lstm_cell_488_matmul_1_readvariableop_resource:
(J
<lstm_122_while_lstm_cell_488_biasadd_readvariableop_resource:(??3lstm_122/while/lstm_cell_488/BiasAdd/ReadVariableOp?2lstm_122/while/lstm_cell_488/MatMul/ReadVariableOp?4lstm_122/while/lstm_cell_488/MatMul_1/ReadVariableOp?
@lstm_122/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_122/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_122_while_tensorarrayv2read_tensorlistgetitem_lstm_122_tensorarrayunstack_tensorlistfromtensor_0lstm_122_while_placeholderIlstm_122/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_122/while/lstm_cell_488/MatMul/ReadVariableOpReadVariableOp=lstm_122_while_lstm_cell_488_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_122/while/lstm_cell_488/MatMulMatMul9lstm_122/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_122/while/lstm_cell_488/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_122/while/lstm_cell_488/MatMul_1/ReadVariableOpReadVariableOp?lstm_122_while_lstm_cell_488_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_122/while/lstm_cell_488/MatMul_1MatMullstm_122_while_placeholder_2<lstm_122/while/lstm_cell_488/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_122/while/lstm_cell_488/addAddV2-lstm_122/while/lstm_cell_488/MatMul:product:0/lstm_122/while/lstm_cell_488/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_122/while/lstm_cell_488/BiasAdd/ReadVariableOpReadVariableOp>lstm_122_while_lstm_cell_488_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_122/while/lstm_cell_488/BiasAddBiasAdd$lstm_122/while/lstm_cell_488/add:z:0;lstm_122/while/lstm_cell_488/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_122/while/lstm_cell_488/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_122/while/lstm_cell_488/splitSplit5lstm_122/while/lstm_cell_488/split/split_dim:output:0-lstm_122/while/lstm_cell_488/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_122/while/lstm_cell_488/SigmoidSigmoid+lstm_122/while/lstm_cell_488/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_122/while/lstm_cell_488/Sigmoid_1Sigmoid+lstm_122/while/lstm_cell_488/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_122/while/lstm_cell_488/mulMul*lstm_122/while/lstm_cell_488/Sigmoid_1:y:0lstm_122_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_122/while/lstm_cell_488/ReluRelu+lstm_122/while/lstm_cell_488/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_122/while/lstm_cell_488/mul_1Mul(lstm_122/while/lstm_cell_488/Sigmoid:y:0/lstm_122/while/lstm_cell_488/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_122/while/lstm_cell_488/add_1AddV2$lstm_122/while/lstm_cell_488/mul:z:0&lstm_122/while/lstm_cell_488/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_122/while/lstm_cell_488/Sigmoid_2Sigmoid+lstm_122/while/lstm_cell_488/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_122/while/lstm_cell_488/Relu_1Relu&lstm_122/while/lstm_cell_488/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_122/while/lstm_cell_488/mul_2Mul*lstm_122/while/lstm_cell_488/Sigmoid_2:y:01lstm_122/while/lstm_cell_488/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_122/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_122_while_placeholder_1lstm_122_while_placeholder&lstm_122/while/lstm_cell_488/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_122/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_122/while/addAddV2lstm_122_while_placeholderlstm_122/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_122/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_122/while/add_1AddV2*lstm_122_while_lstm_122_while_loop_counterlstm_122/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_122/while/IdentityIdentitylstm_122/while/add_1:z:0^lstm_122/while/NoOp*
T0*
_output_shapes
: ?
lstm_122/while/Identity_1Identity0lstm_122_while_lstm_122_while_maximum_iterations^lstm_122/while/NoOp*
T0*
_output_shapes
: t
lstm_122/while/Identity_2Identitylstm_122/while/add:z:0^lstm_122/while/NoOp*
T0*
_output_shapes
: ?
lstm_122/while/Identity_3IdentityClstm_122/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_122/while/NoOp*
T0*
_output_shapes
: ?
lstm_122/while/Identity_4Identity&lstm_122/while/lstm_cell_488/mul_2:z:0^lstm_122/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_122/while/Identity_5Identity&lstm_122/while/lstm_cell_488/add_1:z:0^lstm_122/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_122/while/NoOpNoOp4^lstm_122/while/lstm_cell_488/BiasAdd/ReadVariableOp3^lstm_122/while/lstm_cell_488/MatMul/ReadVariableOp5^lstm_122/while/lstm_cell_488/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_122_while_identity lstm_122/while/Identity:output:0"?
lstm_122_while_identity_1"lstm_122/while/Identity_1:output:0"?
lstm_122_while_identity_2"lstm_122/while/Identity_2:output:0"?
lstm_122_while_identity_3"lstm_122/while/Identity_3:output:0"?
lstm_122_while_identity_4"lstm_122/while/Identity_4:output:0"?
lstm_122_while_identity_5"lstm_122/while/Identity_5:output:0"T
'lstm_122_while_lstm_122_strided_slice_1)lstm_122_while_lstm_122_strided_slice_1_0"~
<lstm_122_while_lstm_cell_488_biasadd_readvariableop_resource>lstm_122_while_lstm_cell_488_biasadd_readvariableop_resource_0"?
=lstm_122_while_lstm_cell_488_matmul_1_readvariableop_resource?lstm_122_while_lstm_cell_488_matmul_1_readvariableop_resource_0"|
;lstm_122_while_lstm_cell_488_matmul_readvariableop_resource=lstm_122_while_lstm_cell_488_matmul_readvariableop_resource_0"?
clstm_122_while_tensorarrayv2read_tensorlistgetitem_lstm_122_tensorarrayunstack_tensorlistfromtensorelstm_122_while_tensorarrayv2read_tensorlistgetitem_lstm_122_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_122/while/lstm_cell_488/BiasAdd/ReadVariableOp3lstm_122/while/lstm_cell_488/BiasAdd/ReadVariableOp2h
2lstm_122/while/lstm_cell_488/MatMul/ReadVariableOp2lstm_122/while/lstm_cell_488/MatMul/ReadVariableOp2l
4lstm_122/while/lstm_cell_488/MatMul_1/ReadVariableOp4lstm_122/while/lstm_cell_488/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_120_while_body_2952725.
*lstm_120_while_lstm_120_while_loop_counter4
0lstm_120_while_lstm_120_while_maximum_iterations
lstm_120_while_placeholder 
lstm_120_while_placeholder_1 
lstm_120_while_placeholder_2 
lstm_120_while_placeholder_3-
)lstm_120_while_lstm_120_strided_slice_1_0i
elstm_120_while_tensorarrayv2read_tensorlistgetitem_lstm_120_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_120_while_lstm_cell_486_matmul_readvariableop_resource_0:	?R
?lstm_120_while_lstm_cell_486_matmul_1_readvariableop_resource_0:	d?M
>lstm_120_while_lstm_cell_486_biasadd_readvariableop_resource_0:	?
lstm_120_while_identity
lstm_120_while_identity_1
lstm_120_while_identity_2
lstm_120_while_identity_3
lstm_120_while_identity_4
lstm_120_while_identity_5+
'lstm_120_while_lstm_120_strided_slice_1g
clstm_120_while_tensorarrayv2read_tensorlistgetitem_lstm_120_tensorarrayunstack_tensorlistfromtensorN
;lstm_120_while_lstm_cell_486_matmul_readvariableop_resource:	?P
=lstm_120_while_lstm_cell_486_matmul_1_readvariableop_resource:	d?K
<lstm_120_while_lstm_cell_486_biasadd_readvariableop_resource:	???3lstm_120/while/lstm_cell_486/BiasAdd/ReadVariableOp?2lstm_120/while/lstm_cell_486/MatMul/ReadVariableOp?4lstm_120/while/lstm_cell_486/MatMul_1/ReadVariableOp?
@lstm_120/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_120/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_120_while_tensorarrayv2read_tensorlistgetitem_lstm_120_tensorarrayunstack_tensorlistfromtensor_0lstm_120_while_placeholderIlstm_120/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_120/while/lstm_cell_486/MatMul/ReadVariableOpReadVariableOp=lstm_120_while_lstm_cell_486_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_120/while/lstm_cell_486/MatMulMatMul9lstm_120/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_120/while/lstm_cell_486/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_120/while/lstm_cell_486/MatMul_1/ReadVariableOpReadVariableOp?lstm_120_while_lstm_cell_486_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_120/while/lstm_cell_486/MatMul_1MatMullstm_120_while_placeholder_2<lstm_120/while/lstm_cell_486/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_120/while/lstm_cell_486/addAddV2-lstm_120/while/lstm_cell_486/MatMul:product:0/lstm_120/while/lstm_cell_486/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_120/while/lstm_cell_486/BiasAdd/ReadVariableOpReadVariableOp>lstm_120_while_lstm_cell_486_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_120/while/lstm_cell_486/BiasAddBiasAdd$lstm_120/while/lstm_cell_486/add:z:0;lstm_120/while/lstm_cell_486/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_120/while/lstm_cell_486/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_120/while/lstm_cell_486/splitSplit5lstm_120/while/lstm_cell_486/split/split_dim:output:0-lstm_120/while/lstm_cell_486/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_120/while/lstm_cell_486/SigmoidSigmoid+lstm_120/while/lstm_cell_486/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_120/while/lstm_cell_486/Sigmoid_1Sigmoid+lstm_120/while/lstm_cell_486/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_120/while/lstm_cell_486/mulMul*lstm_120/while/lstm_cell_486/Sigmoid_1:y:0lstm_120_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_120/while/lstm_cell_486/ReluRelu+lstm_120/while/lstm_cell_486/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_120/while/lstm_cell_486/mul_1Mul(lstm_120/while/lstm_cell_486/Sigmoid:y:0/lstm_120/while/lstm_cell_486/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_120/while/lstm_cell_486/add_1AddV2$lstm_120/while/lstm_cell_486/mul:z:0&lstm_120/while/lstm_cell_486/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_120/while/lstm_cell_486/Sigmoid_2Sigmoid+lstm_120/while/lstm_cell_486/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_120/while/lstm_cell_486/Relu_1Relu&lstm_120/while/lstm_cell_486/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_120/while/lstm_cell_486/mul_2Mul*lstm_120/while/lstm_cell_486/Sigmoid_2:y:01lstm_120/while/lstm_cell_486/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_120/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_120_while_placeholder_1lstm_120_while_placeholder&lstm_120/while/lstm_cell_486/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_120/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_120/while/addAddV2lstm_120_while_placeholderlstm_120/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_120/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_120/while/add_1AddV2*lstm_120_while_lstm_120_while_loop_counterlstm_120/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_120/while/IdentityIdentitylstm_120/while/add_1:z:0^lstm_120/while/NoOp*
T0*
_output_shapes
: ?
lstm_120/while/Identity_1Identity0lstm_120_while_lstm_120_while_maximum_iterations^lstm_120/while/NoOp*
T0*
_output_shapes
: t
lstm_120/while/Identity_2Identitylstm_120/while/add:z:0^lstm_120/while/NoOp*
T0*
_output_shapes
: ?
lstm_120/while/Identity_3IdentityClstm_120/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_120/while/NoOp*
T0*
_output_shapes
: ?
lstm_120/while/Identity_4Identity&lstm_120/while/lstm_cell_486/mul_2:z:0^lstm_120/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_120/while/Identity_5Identity&lstm_120/while/lstm_cell_486/add_1:z:0^lstm_120/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_120/while/NoOpNoOp4^lstm_120/while/lstm_cell_486/BiasAdd/ReadVariableOp3^lstm_120/while/lstm_cell_486/MatMul/ReadVariableOp5^lstm_120/while/lstm_cell_486/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_120_while_identity lstm_120/while/Identity:output:0"?
lstm_120_while_identity_1"lstm_120/while/Identity_1:output:0"?
lstm_120_while_identity_2"lstm_120/while/Identity_2:output:0"?
lstm_120_while_identity_3"lstm_120/while/Identity_3:output:0"?
lstm_120_while_identity_4"lstm_120/while/Identity_4:output:0"?
lstm_120_while_identity_5"lstm_120/while/Identity_5:output:0"T
'lstm_120_while_lstm_120_strided_slice_1)lstm_120_while_lstm_120_strided_slice_1_0"~
<lstm_120_while_lstm_cell_486_biasadd_readvariableop_resource>lstm_120_while_lstm_cell_486_biasadd_readvariableop_resource_0"?
=lstm_120_while_lstm_cell_486_matmul_1_readvariableop_resource?lstm_120_while_lstm_cell_486_matmul_1_readvariableop_resource_0"|
;lstm_120_while_lstm_cell_486_matmul_readvariableop_resource=lstm_120_while_lstm_cell_486_matmul_readvariableop_resource_0"?
clstm_120_while_tensorarrayv2read_tensorlistgetitem_lstm_120_tensorarrayunstack_tensorlistfromtensorelstm_120_while_tensorarrayv2read_tensorlistgetitem_lstm_120_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_120/while/lstm_cell_486/BiasAdd/ReadVariableOp3lstm_120/while/lstm_cell_486/BiasAdd/ReadVariableOp2h
2lstm_120/while/lstm_cell_486/MatMul/ReadVariableOp2lstm_120/while/lstm_cell_486/MatMul/ReadVariableOp2l
4lstm_120/while/lstm_cell_486/MatMul_1/ReadVariableOp4lstm_120/while/lstm_cell_486/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_122_layer_call_fn_2954347
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
E__inference_lstm_122_layer_call_and_return_conditional_losses_2950966o
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
while_cond_2951189
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2951189___redundant_placeholder05
1while_while_cond_2951189___redundant_placeholder15
1while_while_cond_2951189___redundant_placeholder25
1while_while_cond_2951189___redundant_placeholder3
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
lstm_120_while_cond_2952297.
*lstm_120_while_lstm_120_while_loop_counter4
0lstm_120_while_lstm_120_while_maximum_iterations
lstm_120_while_placeholder 
lstm_120_while_placeholder_1 
lstm_120_while_placeholder_2 
lstm_120_while_placeholder_30
,lstm_120_while_less_lstm_120_strided_slice_1G
Clstm_120_while_lstm_120_while_cond_2952297___redundant_placeholder0G
Clstm_120_while_lstm_120_while_cond_2952297___redundant_placeholder1G
Clstm_120_while_lstm_120_while_cond_2952297___redundant_placeholder2G
Clstm_120_while_lstm_120_while_cond_2952297___redundant_placeholder3
lstm_120_while_identity
?
lstm_120/while/LessLesslstm_120_while_placeholder,lstm_120_while_less_lstm_120_strided_slice_1*
T0*
_output_shapes
: ]
lstm_120/while/IdentityIdentitylstm_120/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_120_while_identity lstm_120/while/Identity:output:0*(
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

lstm_122_while_body_2952576.
*lstm_122_while_lstm_122_while_loop_counter4
0lstm_122_while_lstm_122_while_maximum_iterations
lstm_122_while_placeholder 
lstm_122_while_placeholder_1 
lstm_122_while_placeholder_2 
lstm_122_while_placeholder_3-
)lstm_122_while_lstm_122_strided_slice_1_0i
elstm_122_while_tensorarrayv2read_tensorlistgetitem_lstm_122_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_122_while_lstm_cell_488_matmul_readvariableop_resource_0:2(Q
?lstm_122_while_lstm_cell_488_matmul_1_readvariableop_resource_0:
(L
>lstm_122_while_lstm_cell_488_biasadd_readvariableop_resource_0:(
lstm_122_while_identity
lstm_122_while_identity_1
lstm_122_while_identity_2
lstm_122_while_identity_3
lstm_122_while_identity_4
lstm_122_while_identity_5+
'lstm_122_while_lstm_122_strided_slice_1g
clstm_122_while_tensorarrayv2read_tensorlistgetitem_lstm_122_tensorarrayunstack_tensorlistfromtensorM
;lstm_122_while_lstm_cell_488_matmul_readvariableop_resource:2(O
=lstm_122_while_lstm_cell_488_matmul_1_readvariableop_resource:
(J
<lstm_122_while_lstm_cell_488_biasadd_readvariableop_resource:(??3lstm_122/while/lstm_cell_488/BiasAdd/ReadVariableOp?2lstm_122/while/lstm_cell_488/MatMul/ReadVariableOp?4lstm_122/while/lstm_cell_488/MatMul_1/ReadVariableOp?
@lstm_122/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_122/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_122_while_tensorarrayv2read_tensorlistgetitem_lstm_122_tensorarrayunstack_tensorlistfromtensor_0lstm_122_while_placeholderIlstm_122/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_122/while/lstm_cell_488/MatMul/ReadVariableOpReadVariableOp=lstm_122_while_lstm_cell_488_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_122/while/lstm_cell_488/MatMulMatMul9lstm_122/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_122/while/lstm_cell_488/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_122/while/lstm_cell_488/MatMul_1/ReadVariableOpReadVariableOp?lstm_122_while_lstm_cell_488_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_122/while/lstm_cell_488/MatMul_1MatMullstm_122_while_placeholder_2<lstm_122/while/lstm_cell_488/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_122/while/lstm_cell_488/addAddV2-lstm_122/while/lstm_cell_488/MatMul:product:0/lstm_122/while/lstm_cell_488/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_122/while/lstm_cell_488/BiasAdd/ReadVariableOpReadVariableOp>lstm_122_while_lstm_cell_488_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_122/while/lstm_cell_488/BiasAddBiasAdd$lstm_122/while/lstm_cell_488/add:z:0;lstm_122/while/lstm_cell_488/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_122/while/lstm_cell_488/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_122/while/lstm_cell_488/splitSplit5lstm_122/while/lstm_cell_488/split/split_dim:output:0-lstm_122/while/lstm_cell_488/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_122/while/lstm_cell_488/SigmoidSigmoid+lstm_122/while/lstm_cell_488/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_122/while/lstm_cell_488/Sigmoid_1Sigmoid+lstm_122/while/lstm_cell_488/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_122/while/lstm_cell_488/mulMul*lstm_122/while/lstm_cell_488/Sigmoid_1:y:0lstm_122_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_122/while/lstm_cell_488/ReluRelu+lstm_122/while/lstm_cell_488/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_122/while/lstm_cell_488/mul_1Mul(lstm_122/while/lstm_cell_488/Sigmoid:y:0/lstm_122/while/lstm_cell_488/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_122/while/lstm_cell_488/add_1AddV2$lstm_122/while/lstm_cell_488/mul:z:0&lstm_122/while/lstm_cell_488/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_122/while/lstm_cell_488/Sigmoid_2Sigmoid+lstm_122/while/lstm_cell_488/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_122/while/lstm_cell_488/Relu_1Relu&lstm_122/while/lstm_cell_488/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_122/while/lstm_cell_488/mul_2Mul*lstm_122/while/lstm_cell_488/Sigmoid_2:y:01lstm_122/while/lstm_cell_488/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_122/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_122_while_placeholder_1lstm_122_while_placeholder&lstm_122/while/lstm_cell_488/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_122/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_122/while/addAddV2lstm_122_while_placeholderlstm_122/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_122/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_122/while/add_1AddV2*lstm_122_while_lstm_122_while_loop_counterlstm_122/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_122/while/IdentityIdentitylstm_122/while/add_1:z:0^lstm_122/while/NoOp*
T0*
_output_shapes
: ?
lstm_122/while/Identity_1Identity0lstm_122_while_lstm_122_while_maximum_iterations^lstm_122/while/NoOp*
T0*
_output_shapes
: t
lstm_122/while/Identity_2Identitylstm_122/while/add:z:0^lstm_122/while/NoOp*
T0*
_output_shapes
: ?
lstm_122/while/Identity_3IdentityClstm_122/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_122/while/NoOp*
T0*
_output_shapes
: ?
lstm_122/while/Identity_4Identity&lstm_122/while/lstm_cell_488/mul_2:z:0^lstm_122/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_122/while/Identity_5Identity&lstm_122/while/lstm_cell_488/add_1:z:0^lstm_122/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_122/while/NoOpNoOp4^lstm_122/while/lstm_cell_488/BiasAdd/ReadVariableOp3^lstm_122/while/lstm_cell_488/MatMul/ReadVariableOp5^lstm_122/while/lstm_cell_488/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_122_while_identity lstm_122/while/Identity:output:0"?
lstm_122_while_identity_1"lstm_122/while/Identity_1:output:0"?
lstm_122_while_identity_2"lstm_122/while/Identity_2:output:0"?
lstm_122_while_identity_3"lstm_122/while/Identity_3:output:0"?
lstm_122_while_identity_4"lstm_122/while/Identity_4:output:0"?
lstm_122_while_identity_5"lstm_122/while/Identity_5:output:0"T
'lstm_122_while_lstm_122_strided_slice_1)lstm_122_while_lstm_122_strided_slice_1_0"~
<lstm_122_while_lstm_cell_488_biasadd_readvariableop_resource>lstm_122_while_lstm_cell_488_biasadd_readvariableop_resource_0"?
=lstm_122_while_lstm_cell_488_matmul_1_readvariableop_resource?lstm_122_while_lstm_cell_488_matmul_1_readvariableop_resource_0"|
;lstm_122_while_lstm_cell_488_matmul_readvariableop_resource=lstm_122_while_lstm_cell_488_matmul_readvariableop_resource_0"?
clstm_122_while_tensorarrayv2read_tensorlistgetitem_lstm_122_tensorarrayunstack_tensorlistfromtensorelstm_122_while_tensorarrayv2read_tensorlistgetitem_lstm_122_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_122/while/lstm_cell_488/BiasAdd/ReadVariableOp3lstm_122/while/lstm_cell_488/BiasAdd/ReadVariableOp2h
2lstm_122/while/lstm_cell_488/MatMul/ReadVariableOp2lstm_122/while/lstm_cell_488/MatMul/ReadVariableOp2l
4lstm_122/while/lstm_cell_488/MatMul_1/ReadVariableOp4lstm_122/while/lstm_cell_488/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_488_layer_call_and_return_conditional_losses_2950692

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

?
/__inference_sequential_40_layer_call_fn_2952090
lstm_120_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_120_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_40_layer_call_and_return_conditional_losses_2952038o
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
_user_specified_namelstm_120_input
?
?
*__inference_lstm_122_layer_call_fn_2954369

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
E__inference_lstm_122_layer_call_and_return_conditional_losses_2951640o
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
*__inference_lstm_122_layer_call_fn_2954336
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
E__inference_lstm_122_layer_call_and_return_conditional_losses_2950775o
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
while_body_2954428
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_488_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_488_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_488_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_488_matmul_readvariableop_resource:2(F
4while_lstm_cell_488_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_488_biasadd_readvariableop_resource:(??*while/lstm_cell_488/BiasAdd/ReadVariableOp?)while/lstm_cell_488/MatMul/ReadVariableOp?+while/lstm_cell_488/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_488/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_488_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_488/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_488/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_488/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_488_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_488/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_488/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_488/addAddV2$while/lstm_cell_488/MatMul:product:0&while/lstm_cell_488/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_488/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_488_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_488/BiasAddBiasAddwhile/lstm_cell_488/add:z:02while/lstm_cell_488/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_488/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_488/splitSplit,while/lstm_cell_488/split/split_dim:output:0$while/lstm_cell_488/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_488/SigmoidSigmoid"while/lstm_cell_488/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_488/Sigmoid_1Sigmoid"while/lstm_cell_488/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_488/mulMul!while/lstm_cell_488/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_488/ReluRelu"while/lstm_cell_488/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_488/mul_1Mulwhile/lstm_cell_488/Sigmoid:y:0&while/lstm_cell_488/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_488/add_1AddV2while/lstm_cell_488/mul:z:0while/lstm_cell_488/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_488/Sigmoid_2Sigmoid"while/lstm_cell_488/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_488/Relu_1Reluwhile/lstm_cell_488/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_488/mul_2Mul!while/lstm_cell_488/Sigmoid_2:y:0(while/lstm_cell_488/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_488/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_488/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_488/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_488/BiasAdd/ReadVariableOp*^while/lstm_cell_488/MatMul/ReadVariableOp,^while/lstm_cell_488/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_488_biasadd_readvariableop_resource5while_lstm_cell_488_biasadd_readvariableop_resource_0"n
4while_lstm_cell_488_matmul_1_readvariableop_resource6while_lstm_cell_488_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_488_matmul_readvariableop_resource4while_lstm_cell_488_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_488/BiasAdd/ReadVariableOp*while/lstm_cell_488/BiasAdd/ReadVariableOp2V
)while/lstm_cell_488/MatMul/ReadVariableOp)while/lstm_cell_488/MatMul/ReadVariableOp2Z
+while/lstm_cell_488/MatMul_1/ReadVariableOp+while/lstm_cell_488/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_487_layer_call_and_return_conditional_losses_2955156

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
/__inference_sequential_40_layer_call_fn_2952239

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
J__inference_sequential_40_layer_call_and_return_conditional_losses_2952038o
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
?K
?
E__inference_lstm_121_layer_call_and_return_conditional_losses_2953896
inputs_0?
,lstm_cell_487_matmul_readvariableop_resource:	d?A
.lstm_cell_487_matmul_1_readvariableop_resource:	2?<
-lstm_cell_487_biasadd_readvariableop_resource:	?
identity??$lstm_cell_487/BiasAdd/ReadVariableOp?#lstm_cell_487/MatMul/ReadVariableOp?%lstm_cell_487/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_487/MatMul/ReadVariableOpReadVariableOp,lstm_cell_487_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_487/MatMulMatMulstrided_slice_2:output:0+lstm_cell_487/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_487/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_487_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_487/MatMul_1MatMulzeros:output:0-lstm_cell_487/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_487/addAddV2lstm_cell_487/MatMul:product:0 lstm_cell_487/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_487/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_487_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_487/BiasAddBiasAddlstm_cell_487/add:z:0,lstm_cell_487/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_487/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_487/splitSplit&lstm_cell_487/split/split_dim:output:0lstm_cell_487/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_487/SigmoidSigmoidlstm_cell_487/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_487/Sigmoid_1Sigmoidlstm_cell_487/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_487/mulMullstm_cell_487/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_487/ReluRelulstm_cell_487/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_487/mul_1Mullstm_cell_487/Sigmoid:y:0 lstm_cell_487/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_487/add_1AddV2lstm_cell_487/mul:z:0lstm_cell_487/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_487/Sigmoid_2Sigmoidlstm_cell_487/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_487/Relu_1Relulstm_cell_487/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_487/mul_2Mullstm_cell_487/Sigmoid_2:y:0"lstm_cell_487/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_487_matmul_readvariableop_resource.lstm_cell_487_matmul_1_readvariableop_resource-lstm_cell_487_biasadd_readvariableop_resource*
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
while_body_2953812*
condR
while_cond_2953811*K
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
NoOpNoOp%^lstm_cell_487/BiasAdd/ReadVariableOp$^lstm_cell_487/MatMul/ReadVariableOp&^lstm_cell_487/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_487/BiasAdd/ReadVariableOp$lstm_cell_487/BiasAdd/ReadVariableOp2J
#lstm_cell_487/MatMul/ReadVariableOp#lstm_cell_487/MatMul/ReadVariableOp2N
%lstm_cell_487/MatMul_1/ReadVariableOp%lstm_cell_487/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_2953195
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2953195___redundant_placeholder05
1while_while_cond_2953195___redundant_placeholder15
1while_while_cond_2953195___redundant_placeholder25
1while_while_cond_2953195___redundant_placeholder3
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
while_body_2953482
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_486_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_486_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_486_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_486_matmul_readvariableop_resource:	?G
4while_lstm_cell_486_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_486_biasadd_readvariableop_resource:	???*while/lstm_cell_486/BiasAdd/ReadVariableOp?)while/lstm_cell_486/MatMul/ReadVariableOp?+while/lstm_cell_486/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_486/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_486_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_486/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_486/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_486/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_486_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_486/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_486/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_486/addAddV2$while/lstm_cell_486/MatMul:product:0&while/lstm_cell_486/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_486/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_486_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_486/BiasAddBiasAddwhile/lstm_cell_486/add:z:02while/lstm_cell_486/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_486/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_486/splitSplit,while/lstm_cell_486/split/split_dim:output:0$while/lstm_cell_486/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_486/SigmoidSigmoid"while/lstm_cell_486/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_486/Sigmoid_1Sigmoid"while/lstm_cell_486/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_486/mulMul!while/lstm_cell_486/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_486/ReluRelu"while/lstm_cell_486/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_486/mul_1Mulwhile/lstm_cell_486/Sigmoid:y:0&while/lstm_cell_486/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_486/add_1AddV2while/lstm_cell_486/mul:z:0while/lstm_cell_486/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_486/Sigmoid_2Sigmoid"while/lstm_cell_486/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_486/Relu_1Reluwhile/lstm_cell_486/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_486/mul_2Mul!while/lstm_cell_486/Sigmoid_2:y:0(while/lstm_cell_486/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_486/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_486/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_486/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_486/BiasAdd/ReadVariableOp*^while/lstm_cell_486/MatMul/ReadVariableOp,^while/lstm_cell_486/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_486_biasadd_readvariableop_resource5while_lstm_cell_486_biasadd_readvariableop_resource_0"n
4while_lstm_cell_486_matmul_1_readvariableop_resource6while_lstm_cell_486_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_486_matmul_readvariableop_resource4while_lstm_cell_486_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_486/BiasAdd/ReadVariableOp*while/lstm_cell_486/BiasAdd/ReadVariableOp2V
)while/lstm_cell_486/MatMul/ReadVariableOp)while/lstm_cell_486/MatMul/ReadVariableOp2Z
+while/lstm_cell_486/MatMul_1/ReadVariableOp+while/lstm_cell_486/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_121_layer_call_fn_2953731
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
E__inference_lstm_121_layer_call_and_return_conditional_losses_2950616|
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
lstm_120_input;
 serving_default_lstm_120_input:0?????????<
dense_400
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
2dense_40/kernel
:2dense_40/bias
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
0:.	?2lstm_120/lstm_cell_120/kernel
::8	d?2'lstm_120/lstm_cell_120/recurrent_kernel
*:(?2lstm_120/lstm_cell_120/bias
0:.	d?2lstm_121/lstm_cell_121/kernel
::8	2?2'lstm_121/lstm_cell_121/recurrent_kernel
*:(?2lstm_121/lstm_cell_121/bias
/:-2(2lstm_122/lstm_cell_122/kernel
9:7
(2'lstm_122/lstm_cell_122/recurrent_kernel
):'(2lstm_122/lstm_cell_122/bias
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
2Adam/dense_40/kernel/m
 :2Adam/dense_40/bias/m
5:3	?2$Adam/lstm_120/lstm_cell_120/kernel/m
?:=	d?2.Adam/lstm_120/lstm_cell_120/recurrent_kernel/m
/:-?2"Adam/lstm_120/lstm_cell_120/bias/m
5:3	d?2$Adam/lstm_121/lstm_cell_121/kernel/m
?:=	2?2.Adam/lstm_121/lstm_cell_121/recurrent_kernel/m
/:-?2"Adam/lstm_121/lstm_cell_121/bias/m
4:22(2$Adam/lstm_122/lstm_cell_122/kernel/m
>:<
(2.Adam/lstm_122/lstm_cell_122/recurrent_kernel/m
.:,(2"Adam/lstm_122/lstm_cell_122/bias/m
&:$
2Adam/dense_40/kernel/v
 :2Adam/dense_40/bias/v
5:3	?2$Adam/lstm_120/lstm_cell_120/kernel/v
?:=	d?2.Adam/lstm_120/lstm_cell_120/recurrent_kernel/v
/:-?2"Adam/lstm_120/lstm_cell_120/bias/v
5:3	d?2$Adam/lstm_121/lstm_cell_121/kernel/v
?:=	2?2.Adam/lstm_121/lstm_cell_121/recurrent_kernel/v
/:-?2"Adam/lstm_121/lstm_cell_121/bias/v
4:22(2$Adam/lstm_122/lstm_cell_122/kernel/v
>:<
(2.Adam/lstm_122/lstm_cell_122/recurrent_kernel/v
.:,(2"Adam/lstm_122/lstm_cell_122/bias/v
?2?
/__inference_sequential_40_layer_call_fn_2951474
/__inference_sequential_40_layer_call_fn_2952212
/__inference_sequential_40_layer_call_fn_2952239
/__inference_sequential_40_layer_call_fn_2952090?
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
J__inference_sequential_40_layer_call_and_return_conditional_losses_2952666
J__inference_sequential_40_layer_call_and_return_conditional_losses_2953093
J__inference_sequential_40_layer_call_and_return_conditional_losses_2952120
J__inference_sequential_40_layer_call_and_return_conditional_losses_2952150?
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
"__inference__wrapped_model_2949925lstm_120_input"?
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
*__inference_lstm_120_layer_call_fn_2953104
*__inference_lstm_120_layer_call_fn_2953115
*__inference_lstm_120_layer_call_fn_2953126
*__inference_lstm_120_layer_call_fn_2953137?
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
E__inference_lstm_120_layer_call_and_return_conditional_losses_2953280
E__inference_lstm_120_layer_call_and_return_conditional_losses_2953423
E__inference_lstm_120_layer_call_and_return_conditional_losses_2953566
E__inference_lstm_120_layer_call_and_return_conditional_losses_2953709?
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
*__inference_lstm_121_layer_call_fn_2953720
*__inference_lstm_121_layer_call_fn_2953731
*__inference_lstm_121_layer_call_fn_2953742
*__inference_lstm_121_layer_call_fn_2953753?
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
E__inference_lstm_121_layer_call_and_return_conditional_losses_2953896
E__inference_lstm_121_layer_call_and_return_conditional_losses_2954039
E__inference_lstm_121_layer_call_and_return_conditional_losses_2954182
E__inference_lstm_121_layer_call_and_return_conditional_losses_2954325?
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
*__inference_lstm_122_layer_call_fn_2954336
*__inference_lstm_122_layer_call_fn_2954347
*__inference_lstm_122_layer_call_fn_2954358
*__inference_lstm_122_layer_call_fn_2954369?
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
E__inference_lstm_122_layer_call_and_return_conditional_losses_2954512
E__inference_lstm_122_layer_call_and_return_conditional_losses_2954655
E__inference_lstm_122_layer_call_and_return_conditional_losses_2954798
E__inference_lstm_122_layer_call_and_return_conditional_losses_2954941?
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
*__inference_dense_40_layer_call_fn_2954950?
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
E__inference_dense_40_layer_call_and_return_conditional_losses_2954960?
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
%__inference_signature_wrapper_2952185lstm_120_input"?
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
/__inference_lstm_cell_486_layer_call_fn_2954977
/__inference_lstm_cell_486_layer_call_fn_2954994?
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
J__inference_lstm_cell_486_layer_call_and_return_conditional_losses_2955026
J__inference_lstm_cell_486_layer_call_and_return_conditional_losses_2955058?
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
/__inference_lstm_cell_487_layer_call_fn_2955075
/__inference_lstm_cell_487_layer_call_fn_2955092?
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
J__inference_lstm_cell_487_layer_call_and_return_conditional_losses_2955124
J__inference_lstm_cell_487_layer_call_and_return_conditional_losses_2955156?
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
/__inference_lstm_cell_488_layer_call_fn_2955173
/__inference_lstm_cell_488_layer_call_fn_2955190?
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
J__inference_lstm_cell_488_layer_call_and_return_conditional_losses_2955222
J__inference_lstm_cell_488_layer_call_and_return_conditional_losses_2955254?
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
"__inference__wrapped_model_2949925-./012345!";?8
1?.
,?)
lstm_120_input?????????
? "3?0
.
dense_40"?
dense_40??????????
E__inference_dense_40_layer_call_and_return_conditional_losses_2954960\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_40_layer_call_fn_2954950O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_120_layer_call_and_return_conditional_losses_2953280?-./O?L
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
E__inference_lstm_120_layer_call_and_return_conditional_losses_2953423?-./O?L
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
E__inference_lstm_120_layer_call_and_return_conditional_losses_2953566q-./??<
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
E__inference_lstm_120_layer_call_and_return_conditional_losses_2953709q-./??<
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
*__inference_lstm_120_layer_call_fn_2953104}-./O?L
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
*__inference_lstm_120_layer_call_fn_2953115}-./O?L
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
*__inference_lstm_120_layer_call_fn_2953126d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_120_layer_call_fn_2953137d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_121_layer_call_and_return_conditional_losses_2953896?012O?L
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
E__inference_lstm_121_layer_call_and_return_conditional_losses_2954039?012O?L
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
E__inference_lstm_121_layer_call_and_return_conditional_losses_2954182q012??<
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
E__inference_lstm_121_layer_call_and_return_conditional_losses_2954325q012??<
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
*__inference_lstm_121_layer_call_fn_2953720}012O?L
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
*__inference_lstm_121_layer_call_fn_2953731}012O?L
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
*__inference_lstm_121_layer_call_fn_2953742d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_121_layer_call_fn_2953753d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_122_layer_call_and_return_conditional_losses_2954512}345O?L
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
E__inference_lstm_122_layer_call_and_return_conditional_losses_2954655}345O?L
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
E__inference_lstm_122_layer_call_and_return_conditional_losses_2954798m345??<
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
E__inference_lstm_122_layer_call_and_return_conditional_losses_2954941m345??<
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
*__inference_lstm_122_layer_call_fn_2954336p345O?L
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
*__inference_lstm_122_layer_call_fn_2954347p345O?L
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
*__inference_lstm_122_layer_call_fn_2954358`345??<
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
*__inference_lstm_122_layer_call_fn_2954369`345??<
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
J__inference_lstm_cell_486_layer_call_and_return_conditional_losses_2955026?-./??}
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
J__inference_lstm_cell_486_layer_call_and_return_conditional_losses_2955058?-./??}
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
/__inference_lstm_cell_486_layer_call_fn_2954977?-./??}
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
/__inference_lstm_cell_486_layer_call_fn_2954994?-./??}
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
J__inference_lstm_cell_487_layer_call_and_return_conditional_losses_2955124?012??}
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
J__inference_lstm_cell_487_layer_call_and_return_conditional_losses_2955156?012??}
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
/__inference_lstm_cell_487_layer_call_fn_2955075?012??}
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
/__inference_lstm_cell_487_layer_call_fn_2955092?012??}
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
J__inference_lstm_cell_488_layer_call_and_return_conditional_losses_2955222?345??}
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
J__inference_lstm_cell_488_layer_call_and_return_conditional_losses_2955254?345??}
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
/__inference_lstm_cell_488_layer_call_fn_2955173?345??}
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
/__inference_lstm_cell_488_layer_call_fn_2955190?345??}
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
J__inference_sequential_40_layer_call_and_return_conditional_losses_2952120y-./012345!"C?@
9?6
,?)
lstm_120_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_40_layer_call_and_return_conditional_losses_2952150y-./012345!"C?@
9?6
,?)
lstm_120_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_40_layer_call_and_return_conditional_losses_2952666q-./012345!";?8
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
J__inference_sequential_40_layer_call_and_return_conditional_losses_2953093q-./012345!";?8
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
/__inference_sequential_40_layer_call_fn_2951474l-./012345!"C?@
9?6
,?)
lstm_120_input?????????
p 

 
? "???????????
/__inference_sequential_40_layer_call_fn_2952090l-./012345!"C?@
9?6
,?)
lstm_120_input?????????
p

 
? "???????????
/__inference_sequential_40_layer_call_fn_2952212d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_40_layer_call_fn_2952239d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2952185?-./012345!"M?J
? 
C?@
>
lstm_120_input,?)
lstm_120_input?????????"3?0
.
dense_40"?
dense_40?????????